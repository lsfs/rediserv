package me.lsfs.rediserv.services;

import me.lsfs.rediserv.configurations.security.JwtUtils;
import me.lsfs.rediserv.configurations.security.UserDetailsImpl;
import me.lsfs.rediserv.exceptions.NegocioException;
import me.lsfs.rediserv.models.Cargo;
import me.lsfs.rediserv.models.Pessoa;
import me.lsfs.rediserv.models.Role;
import me.lsfs.rediserv.models.Unidade;
import me.lsfs.rediserv.models.jwtpayload.request.CadastroRequest;
import me.lsfs.rediserv.models.jwtpayload.request.LoginRequest;
import me.lsfs.rediserv.models.jwtpayload.response.JwtResponse;
import me.lsfs.rediserv.models.jwtpayload.response.MessageResponse;
import me.lsfs.rediserv.models.utils.*;
import me.lsfs.rediserv.repositories.PessoaRepository;
import me.lsfs.rediserv.repositories.RoleRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import java.time.LocalDateTime;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import java.util.stream.Collectors;

@Service
public class AutenticacaoService {

    @Autowired
    AuthenticationManager authenticationManager;

    @Autowired
    JwtUtils jwtUtils;

    @Autowired
    PasswordEncoder encoder;

    @Autowired
    RoleRepository roleRepository;

    @Autowired
    PessoaService pessoaService;

    @Autowired
    PessoaRepository pessoaRepository;

    @Autowired
    CargoService cargoService;

    @Autowired
    UnidadeService unidadeService;

    @Autowired
    TokenConfirmacaoService tokenConfirmacaoService;

    @Autowired
    EmailService emailService;

    public JwtResponse realizaLogin(LoginRequest loginRequest) {

        Authentication authentication = authenticationManager.authenticate(
                new UsernamePasswordAuthenticationToken(loginRequest.getEmail(), loginRequest.getSenha()));

        SecurityContextHolder.getContext().setAuthentication(authentication);
        String jwt = jwtUtils.generateJwtToken(authentication);

        UserDetailsImpl userDetails = (UserDetailsImpl) authentication.getPrincipal();

        List<String> roles = userDetails.getAuthorities().stream()
                .map(item -> item.getAuthority())
                .collect(Collectors.toList());


        return new JwtResponse(jwt);


    }

    public MessageResponse cadastraUsuario(CadastroRequest cadastroRequest) {

        if (pessoaRepository.existsByEmail(cadastroRequest.getEmail())) {
            throw new RuntimeException("Erro: E-mail já está cadastrado!");
        }

        Unidade unidade = obterUnidadePessoa(cadastroRequest.getUnidade());
        Cargo cargo = obterCargoPessoa(cadastroRequest.getCargo());

        Pessoa pessoa = new Pessoa(cadastroRequest.getNome(),
                cadastroRequest.getEmail(),
                encoder.encode(cadastroRequest.getSenha()),
                unidade,
                cargo
        );

        Set<String> strRoles = cadastroRequest.getRole();
        Set<Role> roles = new HashSet<>();

        if (strRoles == null) {
            Role userRole = roleRepository.findByNome(RoleEnum.ROLE_USER)
                    .orElseThrow(() -> new RuntimeException("Erro: Role não foi encontrada"));
            roles.add(userRole);
        } else {
            strRoles.forEach(role -> {
                switch (role) {
                    case "admin":
                        Role adminRole = roleRepository.findByNome(RoleEnum.ROLE_ADMIN)
                                .orElseThrow(() -> new RuntimeException("Erro: Role não foi encontrada"));
                        roles.add(adminRole);

                        break;
                    default:
                        Role userRole = roleRepository.findByNome(RoleEnum.ROLE_USER)
                                .orElseThrow(() -> new RuntimeException("Erro: Role não foi encontrada"));
                        roles.add(userRole);
                }
            });
        }


        pessoa.setRoles(roles);
        pessoaRepository.save(pessoa);

        enviaTokenEmail(pessoa, AssuntoEmailEnum.VALIDACAO, 120);


        return new MessageResponse("Usuário cadastrado com sucesso!", false);
    }

    private void enviaTokenEmail(Pessoa pessoa, AssuntoEmailEnum assuntoEmailEnum, int tempo_exp) {

        TokenConfirmacao tokenConfirmacao = solicitaToken(pessoa, tempo_exp);

        tokenConfirmacaoService.salvarTokenConfirmacao(tokenConfirmacao);
        tokenConfirmacaoService.enviarTokenEmail(tokenConfirmacao.getConteudoToken(), pessoa, assuntoEmailEnum);
    }


    public MessageResponse confirmarConta(String token) {

        tokenConfirmacaoService.confirmarToken(token);

        TokenConfirmacao tokenObj = tokenConfirmacaoService.getToken(token);

        pessoaService.ativarUsuario(
                tokenObj.getPessoa().getEmail()
        );


        return new MessageResponse("Usuario confirmado", false);

    }


    public MessageResponse solicitaNovaSenha(UsuarioSenhaReset usuarioSenhaReset) {

        Pessoa pessoa = pessoaService.buscarPorEmail(usuarioSenhaReset.getEmail());

        enviaTokenEmail(pessoa, AssuntoEmailEnum.SENHA, 10);

        return new MessageResponse("E-mail enviado.", false);

    }

    public MessageResponse salvaNovaSenha(NovaSenhaRequest novaSenhaRequest, String token) {

        String senha = novaSenhaRequest.getSenhaNova();
        String senhaConfirmacao = novaSenhaRequest.getSenhaNovaConfirmacao();

        boolean senhasIguais = verificaSenhasIguais(senha, senhaConfirmacao);

        if (!senhasIguais) {
           throw new NegocioException("As senhas não são iguais");
        }


        TokenConfirmacao tokenConfirmacao = tokenConfirmacaoService.getToken(token);

        Pessoa pessoa = tokenConfirmacao.getPessoa();

        pessoaService.atualizarSenha(pessoa,senha);
        tokenConfirmacaoService.confirmarToken(token);

        return new MessageResponse("Senha alterada", false);


    }


    private boolean verificaSenhasIguais(String senha, String senhaConfirmacao) {

        return !senha.isEmpty() && senha.equalsIgnoreCase(senhaConfirmacao);
    }

    private TokenConfirmacao solicitaToken(Pessoa pessoa, int tempo_exp) {

        TokenConfirmacao tokenConfirmacao = tokenConfirmacaoService.geraToken(pessoa,
                LocalDateTime.now(),
                LocalDateTime.now().plusMinutes(tempo_exp));

        return tokenConfirmacao;
    }


    private Cargo obterCargoPessoa(Long idcargo) {
        return cargoService.buscar(idcargo);
    }

    private Unidade obterUnidadePessoa(Long idunidade) {
        return unidadeService.buscarUnidadeObj(idunidade);
    }


}
