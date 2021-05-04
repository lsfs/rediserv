package me.lsfs.rediserv.services;

import me.lsfs.rediserv.exceptions.NegocioException;
import me.lsfs.rediserv.models.Estado;
import me.lsfs.rediserv.models.Instituicao;
import me.lsfs.rediserv.models.dtos.InstituicaoDTO;
import me.lsfs.rediserv.repositories.InstituicaoRepository;
import org.modelmapper.ModelMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


import java.util.List;

@Service
public class InstituicaoService {

    InstituicaoRepository instituicaoRepository;
    ModelMapper modelMapper;
    EstadoService estadoService;

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

    public Instituicao inserir(InstituicaoDTO instituicaoDTO) {

        validarDTO(instituicaoDTO);
        Instituicao instituicao = converterDTO(instituicaoDTO);

        Long idEstado = instituicaoDTO.getEstado();
        Estado estado = buscarEstado(idEstado);

        instituicao.setEstado(estado);

        return instituicaoRepository.save(instituicao);

    }

    private void validarDTO(InstituicaoDTO instituicaoDTO) {

        if (instituicaoDTO.getNome().isEmpty() || instituicaoDTO.getNome().isBlank()) {
            throw new NegocioException("Erro: Nome da instituição inválido");
        }

        if (instituicaoDTO.getSigla().isEmpty() || instituicaoDTO.getSigla().isBlank()) {
            throw new NegocioException("Erro: Sigla da instituição inválida");
        }

        if (instituicaoDTO.getEstado() == null) {
            throw new NegocioException("Erro: Estado da instituição inválido");
        }

    }

    private Instituicao converterDTO(InstituicaoDTO instituicaoDTO) {
        Instituicao instituicao = modelMapper.map(instituicaoDTO, Instituicao.class);
        return instituicao;
    }

    private Estado buscarEstado(Long id){
        Estado estado = estadoService.buscar(id);
        return estado;
    }


}
