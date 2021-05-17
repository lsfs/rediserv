package me.lsfs.rediserv.services;

import me.lsfs.rediserv.exceptions.DadosException;
import me.lsfs.rediserv.exceptions.NegocioException;
import me.lsfs.rediserv.models.Cidade;
import me.lsfs.rediserv.models.Estado;
import me.lsfs.rediserv.models.dtos.CidadeSaveDTO;
import me.lsfs.rediserv.repositories.CidadeRepository;
import org.modelmapper.ModelMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CidadeService {

    CidadeRepository cidadeRepository;
    ModelMapper modelMapper;
    EstadoService estadoService;

    @Autowired
    public CidadeService(CidadeRepository cidadeRepository,
                         ModelMapper modelMapper,
                         EstadoService estadoService) {
        this.cidadeRepository = cidadeRepository;
        this.modelMapper = modelMapper;
        this.estadoService = estadoService;
    }

    public List<Cidade> listar() {
        return cidadeRepository.findAll();
    }

    public Cidade inserir(CidadeSaveDTO cidadeSaveDTO) {

        validarDTO(cidadeSaveDTO);

        Cidade cidade = converterDTO(cidadeSaveDTO);
        return cidadeRepository.save(cidade);
    }

    public Cidade buscar(Long id) {

        Cidade cidade = cidadeRepository.findById(id)
                .orElseThrow(() -> new DadosException("Erro: Cidade não localizada"));

        return cidade;

    }

    public Cidade alterar(Long id, CidadeSaveDTO cidadeSaveDTO) {

        validarDTO(cidadeSaveDTO);
        return cidadeRepository.findById(id)
                .map(registro -> {
                    registro = converterDTO(cidadeSaveDTO);
                    registro.setId(id);

                    return cidadeRepository.save(registro);

                }).orElseThrow(
                        () -> new NegocioException("Id de cidade inválido")
                );

    }

    public void apagar(Long id) {
        try {
            cidadeRepository.deleteById(id);
        } catch (EmptyResultDataAccessException e) {
            System.out.println(e.getMessage());
        }

    }

    private void validarDTO(CidadeSaveDTO cidadeSaveDTO) {

        if (cidadeSaveDTO.getNome().isBlank() || cidadeSaveDTO.getNome().isEmpty()) {
            throw new NegocioException("Erro: Nome inválido");
        }
        if (cidadeSaveDTO.getEstado() == null) {
            throw new NegocioException("Erro: Estado inválido");
        }

    }

    private Cidade converterDTO(CidadeSaveDTO cidadeSaveDTO) {

        Cidade cidade = modelMapper.map(cidadeSaveDTO, Cidade.class);

        Estado estado = estadoService.buscar(cidadeSaveDTO.getEstado());
        cidade.setEstado(estado);

        return cidade;
    }


    private Estado buscarEstado(Long id) {

        Estado estado = estadoService.buscar(id);
        return estado;

    }


}
