package me.lsfs.rediserv.services;

import me.lsfs.rediserv.models.Pessoa;
import me.lsfs.rediserv.models.utils.TokenConfirmacao;
import me.lsfs.rediserv.repositories.PessoaRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

@Service
public class PessoaService implements UserDetailsService {

    @Autowired
    private PessoaRepository pessoaRepository;

    @Autowired
    private TokenConfirmacaoService tokenConfirmacaoService;


    @Override
    public UserDetails loadUserByUsername(String email) throws UsernameNotFoundException {
        Pessoa pessoa = pessoaRepository.findByEmail(email).orElseThrow(
                () -> new UsernameNotFoundException("Dados invalidos"));

        return pessoa;
    }

    public void cadastrarPessoa(Pessoa pessoa){

        String senha = pessoa.getSenha();
        final String senhaEncriptada = new BCryptPasswordEncoder().encode(senha);

        pessoa.setSenha(senhaEncriptada);

        final Pessoa pessoaCriada = pessoaRepository.save(pessoa);

        final TokenConfirmacao tokenConfirmacao;

        tokenConfirmacao = new TokenConfirmacao(pessoa);
        tokenConfirmacaoService.salvarTokenConfirmacao(tokenConfirmacao);



    }


    public void confirmarUsuario(TokenConfirmacao tokenConfirmacao){

        final Pessoa pessoa = tokenConfirmacao.getPessoa();

        pessoa.setPessoaAtiva(true);

        pessoaRepository.save(pessoa);

        tokenConfirmacaoService.apagarToken(tokenConfirmacao.getId());

    }


    public void enviarEmailConfirmacao(String emailUsuario, String token){

        final SimpleMailMessage mensagem = new SimpleMailMessage();

        mensagem.setTo(emailUsuario);
        mensagem.setSubject("Confime seu cadastro no Rediserv!");
        mensagem.setFrom("<MAIL>");
        mensagem.setText(
                "Obrigado por se registrar no Rediserv.\n" +
                        "Clique no link abaixo para ativar sua conta: \n" +
                        "http://localhost:8080/rediserv_api/auth/confirmar/"
        );


    }


}
