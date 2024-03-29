package me.lsfs.rediserv.services;

import me.lsfs.rediserv.exceptions.DadosException;
import me.lsfs.rediserv.exceptions.NegocioException;
import me.lsfs.rediserv.repositories.InstituicaoRepository;
import me.lsfs.rediserv.models.Estado;
import me.lsfs.rediserv.models.Instituicao;
import me.lsfs.rediserv.dtos.InstituicaoSaveDTO;
import org.modelmapper.ModelMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;


import java.util.List;

@Service
public class InstituicaoService {

    private InstituicaoRepository instituicaoRepository;
    private ModelMapper modelMapper;
    private EstadoService estadoService;

    @Autowired
    public InstituicaoService(InstituicaoRepository instituicaoRepository,
                              ModelMapper modelMapper,
                              EstadoService estadoService) {
        this.instituicaoRepository = instituicaoRepository;
        this.modelMapper = modelMapper;
        this.estadoService = estadoService;
    }

    public List<Instituicao> listar() {
        return instituicaoRepository.findAll();
    }


    public Page<Instituicao> listar(Pageable pageable) {
        return instituicaoRepository.listar(pageable);
    }


    public Instituicao inserir(InstituicaoSaveDTO instituicaoSaveDTO) {

        validarDTO(instituicaoSaveDTO);
        Instituicao instituicao = converterDTO(instituicaoSaveDTO);

        return instituicaoRepository.save(instituicao);

    }

    public Instituicao buscar(Long id) {
        Instituicao instituicao = instituicaoRepository.findById(id)
                .orElseThrow(() -> new DadosException("Erro: Instituição não localizada"));

        return instituicao;
    }

    public List<Instituicao> filtrarPorEstado(String sigla) {

        Estado estado = buscarEstadoPorSigla(sigla);
        Long idEstado = estado.getId();


        List<Instituicao> instituicoes =
                instituicaoRepository.findInstituicaoByEstado(idEstado);

        return instituicoes;

    }

    public List<Instituicao> filtrarPorRegiao(String regiao) {

        List<Instituicao> instituicoes = instituicaoRepository.findInstituicaoByRegiao(regiao);

        return instituicoes;
    }


    private Estado buscarEstadoPorSigla(String sigla){
        return
                estadoService.buscaEstadoPorSigla(sigla);
    }


    public Instituicao alterar(Long id, InstituicaoSaveDTO instituicaoSaveDTO) {

        validarDTO(instituicaoSaveDTO);

        return instituicaoRepository.findById(id)
                .map(registro -> {
                    registro = converterDTO(instituicaoSaveDTO);
                    registro.setId(id);

                    return instituicaoRepository.save(registro);

                }).orElseThrow(
                        () -> new NegocioException("Id de instituição inválido")
                );
    }


    public void apagar(Long id) {

        try {
            instituicaoRepository.deleteById(id);
        } catch (EmptyResultDataAccessException e) {

            System.out.println(e.getMessage());
        }
    }


    private void validarDTO(InstituicaoSaveDTO instituicaoSaveDTO) {

        if (instituicaoSaveDTO.getNome().isEmpty() || instituicaoSaveDTO.getNome().isBlank()) {
            throw new NegocioException("Erro: Nome da instituição inválido");
        }

        if (instituicaoSaveDTO.getSigla().isEmpty() || instituicaoSaveDTO.getSigla().isBlank()) {
            throw new NegocioException("Erro: Sigla da instituição inválida");
        }

        if (instituicaoSaveDTO.getEstado() == null) {
            throw new NegocioException("Erro: Estado da instituição inválido");
        }

    }

    private Instituicao converterDTO(InstituicaoSaveDTO instituicaoSaveDTO) {

        Instituicao instituicao = modelMapper.map(instituicaoSaveDTO, Instituicao.class);
        Long idEstado = instituicaoSaveDTO.getEstado();
        Estado estado = buscarEstadoPorSigla(idEstado);

        instituicao.setEstado(estado);

        return instituicao;
    }

    private Estado buscarEstadoPorSigla(Long id) {
        Estado estado = estadoService.buscar(id);
        return estado;
    }



}
