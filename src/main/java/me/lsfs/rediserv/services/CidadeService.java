package me.lsfs.rediserv.services;

import me.lsfs.rediserv.exceptions.DadosException;
import me.lsfs.rediserv.exceptions.NegocioException;
import me.lsfs.rediserv.models.Area;
import me.lsfs.rediserv.models.Cargo;
import me.lsfs.rediserv.models.Cidade;
import me.lsfs.rediserv.models.Estado;
import me.lsfs.rediserv.models.dtos.CidadeDTO;
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

    public Cidade inserir(CidadeDTO cidadeDTO) {

        validarDTO(cidadeDTO);

        Cidade cidade = converterDTO(cidadeDTO);
        Estado estado = estadoService.buscar(cidadeDTO.getEstado());

        cidade.setEstado(estado);

        return cidadeRepository.save(cidade);
    }

    public Cidade buscar(Long id) {

        Cidade cidade = cidadeRepository.findById(id)
                .orElseThrow(() -> new DadosException("Erro: Cidade não localizada"));

        return cidade;

    }

    public Cidade alterar(Long id, CidadeDTO cidadeDTO) {

        validarDTO(cidadeDTO);

        Cidade cidade = modelMapper.map(cidadeDTO, Cidade.class);
        Estado estadoBuscado = buscarEstado(cidadeDTO.getEstado());
        cidade.setId(id);
        cidade.setEstado(estadoBuscado);

        return cidade;
    }

    public void apagar(Long id) {
        try {
            cidadeRepository.deleteById(id);
        }catch (EmptyResultDataAccessException e){
            System.out.println(e.getMessage());
        }

    }

    private void validarDTO(CidadeDTO cidadeDTO){

        if (cidadeDTO.getNome().isBlank() || cidadeDTO.getNome().isEmpty()){
            throw new NegocioException("Erro: Nome inválido");
        }
        if (cidadeDTO.getEstado() == null){
            throw new NegocioException("Erro: Estado inválido");
        }

    }

    private Cidade converterDTO(CidadeDTO cidadeDTO){

        Cidade cidade = modelMapper.map(cidadeDTO, Cidade.class);

        return cidade;
    }


    private Estado buscarEstado(Long id){

        Estado estado = estadoService.buscar(id);
        return estado;

    }



}
