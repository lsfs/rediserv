package me.lsfs.rediserv.services;

import me.lsfs.rediserv.dtos.*;
import me.lsfs.rediserv.exceptions.NegocioException;
import me.lsfs.rediserv.models.Cargo;
import me.lsfs.rediserv.models.Pessoa;
import me.lsfs.rediserv.models.Unidade;
import me.lsfs.rediserv.models.jwtpayload.response.MessageResponse;
import me.lsfs.rediserv.repositories.PessoaRepository;
import me.lsfs.rediserv.repositories.ProfessorRepository;
import me.lsfs.rediserv.repositories.TecnicoRespository;
import org.modelmapper.ModelMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import javax.persistence.EntityNotFoundException;
import java.util.List;

@Service
public class PessoaService {


    private ModelMapper modelMapper;

    private PessoaRepository pessoaRepository;

    private PasswordEncoder passwordEncoder;

    private CargoService cargoService;

    private UnidadeService unidadeService;

    private AutenticacaoService autenticacaoService;

    private TecnicoRespository tecnicoRespository;

    private ProfessorRepository professorRepository;

    @Autowired
    private PropostaService propostaService;

    @Autowired
    public PessoaService(ModelMapper modelMapper, PessoaRepository pessoaRepository,
                         PasswordEncoder passwordEncoder, CargoService cargoService,
                         UnidadeService unidadeService, AutenticacaoService autenticacaoService, TecnicoRespository tecnicoRespository, ProfessorRepository professorRepository) {
        this.modelMapper = modelMapper;
        this.pessoaRepository = pessoaRepository;
        this.passwordEncoder = passwordEncoder;
        this.cargoService = cargoService;
        this.unidadeService = unidadeService;
        this.autenticacaoService = autenticacaoService;
        this.tecnicoRespository = tecnicoRespository;
        this.professorRepository = professorRepository;
    }

    public Page<PessoaDTO> listar(Pageable pageable) {

        return pessoaRepository.listar(pageable).map(
                pessoa -> {
                    PessoaDTO obj = converterModel(pessoa);
                    return obj;
                }
        );

    }

    public PessoaDTO converterModel(Pessoa pessoa) {

        PessoaDTO pessoaDTO = modelMapper.map(pessoa, PessoaDTO.class);

        pessoaDTO.setLocalizacao(pessoa.getUnidade().getInstituicao().getNome()
                + " - " + pessoa.getUnidade().getNome());

        return pessoaDTO;

    }

    Pessoa buscarPorEmail(String email) {

        return pessoaRepository.findByEmail(email).orElseThrow(() ->
                new EntityNotFoundException("Usuário não localizado"));
    }


    public MessageResponse editar(Long id, PessoaSaveDTO pessoaSaveDTO) {

        Pessoa pessoa = buscarPessoaObj(id);


        Cargo cargoPessoa = buscarCargoPessoa(pessoaSaveDTO.getCargo());
        Unidade unidadePessoa = buscarUnidadePessoa(pessoaSaveDTO.getUnidade());

        pessoa.setCargo(cargoPessoa);
        pessoa.setUnidade(unidadePessoa);

        pessoaRepository.save(pessoa);

        return new MessageResponse("Usuário alterado", false);


    }

    private Pessoa buscarPessoaObj(Long id) {

        return pessoaRepository.findById(id).orElseThrow(
                () -> new EntityNotFoundException("Pessoa não encontrada"));
    }

    public PessoaGetDTO buscar(Long id) {

        Pessoa pessoaObj = buscarPessoaObj(id);
        return converteModel(pessoaObj);

    }

    public MessageResponse trocaSenha(Long id, SenhaDTO senhaDTO) {

        String senhaAtual = senhaDTO.getSenhaAtual();
        String senhaNova = senhaDTO.getSenhaNova();
        String senhaNovaConfirmacao = senhaDTO.getSenhaNovaConfirmacao();


        if (!verificaSenhasIguais(senhaNova, senhaNovaConfirmacao)
                || !checaSenha(id, senhaAtual)) {

            throw new NegocioException("Um erro aconteceu. Verifique seus dados");
        }

        Pessoa pessoa = buscarPessoaObj(id);
        atualizarSenha(pessoa, senhaNova);

        return new MessageResponse("Senha alterada com sucesso", false);

    }

    public void atualizarSenha(Pessoa pessoa, String senha) {

        pessoa.setPassword(passwordEncoder.encode(senha));
        pessoaRepository.save(pessoa);


    }

    private boolean verificaSenhasIguais(String senha, String senhaConfirmacao) {

        return !senha.isEmpty() && senha.equalsIgnoreCase(senhaConfirmacao);
    }

    public MessageResponse confereSenha(Long id, SenhaDTO senhaDTO) {

        if (!checaSenha(id, senhaDTO.getSenhaAtual())) {
            throw new NegocioException("Ocorreu um erro. Verifique os dados");
        }

        return new MessageResponse("Sucesso", false);

    }

    private boolean checaSenha(Long id, String senhaEnviada) {

        Pessoa pessoa = buscarPessoaObj(id);
        return passwordEncoder.matches(senhaEnviada, pessoa.getPassword());

    }


    public MessageResponse apagar(Long id) {


        this.removeCandidaturas(id);
        this.pessoaRepository.deleteById(id);

        return new MessageResponse("Pessoa apagada.", false);
    }

    private void removeCandidaturas(Long id) {

        List<PropostaGetDTO> propostasCandidatadas = this.propostaService.buscarPropostasPorCandidatos(id);

        if (!propostasCandidatadas.isEmpty()) {

            propostasCandidatadas.forEach(
                    propostaGetDTO -> {
                        propostaService.removeCandidatura(propostaGetDTO.getId(), id);
                    }
            );

        }

    }

    private PessoaGetDTO converteModel(Pessoa pessoa) {

        PessoaGetDTO pessoaGetDTO = modelMapper.map(pessoa, PessoaGetDTO.class);

        Long unidadePessoa = pessoa.getUnidade().getId();
        UnidadeGetDTO unidadeGetDTO = buscaUnidadePessoa(unidadePessoa);

        Long idCargo = pessoa.getCargo().getId();


        pessoaGetDTO.setUnidade(unidadeGetDTO);

        return pessoaGetDTO;

    }


    private UnidadeGetDTO buscaUnidadePessoa(Long id) {

        return unidadeService.buscar(id);
    }


    private Cargo buscarCargoPessoa(Long id) {
        return cargoService.buscar(id);
    }

    private Unidade buscarUnidadePessoa(Long id) {
        return unidadeService.buscarUnidadeObj(id);
    }


    public int ativarUsuario(String email) {
        return pessoaRepository.ativarUsuario(email);
    }

}
