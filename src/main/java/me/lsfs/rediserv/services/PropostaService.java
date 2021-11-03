package me.lsfs.rediserv.services;

import me.lsfs.rediserv.exceptions.DadosException;
import me.lsfs.rediserv.repositories.PropostaRepository;
import me.lsfs.rediserv.repositories.UnidadeRepository;
import me.lsfs.rediserv.dtos.PessoaDTO;
import me.lsfs.rediserv.dtos.UnidadePropostaGetDTO;
import me.lsfs.rediserv.models.Pessoa;
import me.lsfs.rediserv.models.Proposta;
import me.lsfs.rediserv.dtos.PropostaGetDTO;
import me.lsfs.rediserv.dtos.PropostaSaveDTO;
import me.lsfs.rediserv.models.Unidade;
import me.lsfs.rediserv.models.utils.SituacaoPropostaEnum;
import me.lsfs.rediserv.repositories.PessoaRepository;
import org.modelmapper.ModelMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;


import java.util.HashSet;
import java.util.List;
import java.util.Set;
import java.util.stream.Collectors;

@Service
public class PropostaService {

    @Autowired
    private PropostaRepository propostaRepository;

    @Autowired
    private ModelMapper modelMapper;

    @Autowired
    private PessoaRepository pessoaRepository;

    @Autowired
    private UnidadeRepository unidadeRepository;

    @Autowired
    private PessoaService pessoaService;


    public List<PropostaGetDTO> listar(SituacaoPropostaEnum situacaoProposta, Long idautor) {


        return propostaRepository.listar(situacaoProposta, idautor).stream().map(
                proposta -> converterModel(proposta)

        ).collect(Collectors.toList());
    }


    public Page<PropostaGetDTO> listagemFiltrada(Pageable pageable, Long idestado, String cargo, Long idinstituicao,
                                                 SituacaoPropostaEnum situacaoPropostaEnum) {

        return propostaRepository.listagemFiltrada(pageable, idestado, cargo, idinstituicao, situacaoPropostaEnum)
                .map(
                        proposta -> {
                            var obj = converterModel(proposta);
                            return obj;
                        }

                );

    }

    public List<PropostaGetDTO> buscarPropostasPorCandidatos(Long idcandidato){

        return propostaRepository.filtrarPorCandidato(idcandidato).stream().map(
                proposta -> {
                    return converterModel(proposta);
                }

        ).collect(Collectors.toList());


    }


    public PropostaGetDTO inserir(PropostaSaveDTO propostaSaveDTO) {

        Proposta proposta = converterDTO(propostaSaveDTO);

        propostaRepository.save(proposta);

        Set<Pessoa> candidatos = new HashSet<>();
        proposta.setCandidato(candidatos);

        PropostaGetDTO propostaSalva = converterModel(proposta);

        return propostaSalva;
    }


    private PropostaGetDTO converterModel(Proposta proposta) {

        PropostaGetDTO propostaGetDTO = modelMapper.map(proposta, PropostaGetDTO.class);

        PessoaDTO pessoaDTO = pessoaService.converterModel(proposta.getAutorProposta());

        propostaGetDTO.setAutor(pessoaDTO);

        Set<PessoaDTO> candidatos = new HashSet<>();

        if (!proposta.getCandidato().isEmpty()) {

            candidatos = proposta.getCandidato().stream().map(
                    pessoa -> conveterPessoaModel(pessoa)
            ).collect(Collectors.toSet());
        }


        propostaGetDTO.setCandidatos(candidatos);

        propostaGetDTO.setNumeroCandidatos(candidatos.size());

        List<UnidadePropostaGetDTO> unidades = proposta.getUnidades().stream()
                .map(
                        unidade -> this.converteUnidadeModel(unidade)
                ).collect(Collectors.toList());

        propostaGetDTO.setUnidadePropostaGetDTOS(unidades);

        return propostaGetDTO;

    }


    private Proposta converterDTO(PropostaSaveDTO propostaSaveDTO) {

        Proposta proposta = modelMapper.map(propostaSaveDTO, Proposta.class);

        Long idUsuario = propostaSaveDTO.getIdAutor();

        Pessoa pessoa = getAutorProposta(idUsuario);

        proposta.setAutorProposta(this.getAutorProposta(idUsuario));

        List<Long> listaUnidades = propostaSaveDTO.getUnidades();

        Set<Unidade> unidades = listaUnidades.stream().map(
                idunidade -> getUnidadeProposta(idunidade)
        ).collect(Collectors.toSet());

        proposta.setUnidades(unidades);

        return proposta;

    }

    private Pessoa getAutorProposta(Long idautor) {
        return pessoaRepository.findById(idautor).orElseThrow(
                () -> new DadosException("Pessoa não localizada.")
        );
    }

    private Unidade getUnidadeProposta(Long idunidade) {

        return this.unidadeRepository.findById(idunidade).orElseThrow(
                () -> new DadosException("Uniidade não localizada")
        );

    }

    public PessoaDTO conveterPessoaModel(Pessoa pessoa) {
        return pessoaService.converterModel(pessoa);
    }

    private UnidadePropostaGetDTO converteUnidadeModel(Unidade unidade) {

        UnidadePropostaGetDTO unidadePropostaGetDTO = new UnidadePropostaGetDTO();

        unidadePropostaGetDTO.setId(unidade.getId());
        unidadePropostaGetDTO.setNome(unidade.getNome());
        unidadePropostaGetDTO.setInstituicao(unidade.getInstituicao().getNome());
        unidadePropostaGetDTO.setSigla(unidade.getInstituicao().getSigla());

        return unidadePropostaGetDTO;

    }


    public void apagar(Long id) {
        try {
            propostaRepository.deleteById(id);
        } catch (EmptyResultDataAccessException e) {
            System.out.println(e.getMessage());
        }

    }


    public PropostaGetDTO candidatar(Long idproposta, Long idusuario) {


        Set<Pessoa> candidatos = propostaRepository.buscarCandidatos(idproposta);


        Pessoa pessoa = buscarPessoaPorID(idusuario);

        Proposta proposta = buscaPropostaPorID(idproposta);

        candidatos.add(pessoa);

        proposta.setCandidato(candidatos);


        return converterModel(propostaRepository.save(proposta));

    }


    public PropostaGetDTO publicar(Long idproposta, PropostaSaveDTO propostaSaveDTO) {

        String situacao = propostaSaveDTO.getSituacaoProposta();

        Proposta proposta = buscaPropostaPorID(idproposta);

        proposta.setSituacaoProposta(SituacaoPropostaEnum.valueOf(situacao));

        return converterModel(propostaRepository.save(proposta));

    }


    public PropostaGetDTO buscarProposta(Long idproposta) {

        Proposta proposta = buscaPropostaPorID(idproposta);

        return converterModel(proposta);
    }




    public PropostaGetDTO removeCandidatura(Long idproposta, Long idusuario) {

        Proposta proposta = buscaPropostaPorID(idproposta);

        Set<Pessoa> candidatos = proposta.getCandidato();

        Set<Pessoa> candidatosRestantes = candidatos.stream()
                .filter(pessoa -> {
                    return !pessoa.getId().equals(idusuario);
                })
                .collect(Collectors.toSet());


        proposta.setCandidato(candidatosRestantes);

        return converterModel(propostaRepository.save(proposta));

    }

    private Proposta buscaPropostaPorID(Long idproposta){

        return propostaRepository.findPropostaById(idproposta).
                orElseThrow(
                        () -> new DadosException("Proposta nao localizada")
                );
    }

    private Pessoa buscarPessoaPorID(Long idusuario){

        return pessoaRepository.findById(idusuario).orElseThrow(
                () -> new DadosException("Não foi localizado usuário com esse id.")
        );
    }

}
