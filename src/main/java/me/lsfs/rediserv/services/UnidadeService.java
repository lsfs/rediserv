package me.lsfs.rediserv.services;

import me.lsfs.rediserv.exceptions.DadosException;
import me.lsfs.rediserv.exceptions.NegocioException;
import me.lsfs.rediserv.repositories.UnidadeRepository;
import me.lsfs.rediserv.models.Cidade;
import me.lsfs.rediserv.models.Instituicao;
import me.lsfs.rediserv.models.Unidade;
import me.lsfs.rediserv.dtos.UnidadeGetDTO;
import me.lsfs.rediserv.dtos.UnidadeSaveDTO;
import org.modelmapper.ModelMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.stream.Collectors;

@Service
public class UnidadeService {

    private UnidadeRepository unidadeRepository;
    private CidadeService cidadeService;
    private InstituicaoService instituicaoService;
    private ModelMapper modelMapper;

    @Autowired
    public UnidadeService(UnidadeRepository unidadeRepository, CidadeService cidadeService, InstituicaoService instituicaoService, ModelMapper modelMapper) {
        this.unidadeRepository = unidadeRepository;
        this.cidadeService = cidadeService;
        this.instituicaoService = instituicaoService;
        this.modelMapper = modelMapper;
    }

    public List<UnidadeGetDTO> listar() {

        List<UnidadeGetDTO> unidades = unidadeRepository.findAll()
                .stream().map(unidade -> converterModel(unidade)).collect(Collectors.toList());

        return unidades;

    }

    public Page<UnidadeGetDTO> listar(Pageable pageable) {

        Page<UnidadeGetDTO> unidades = unidadeRepository.listar(pageable)
                .map( unidade -> converterModel(unidade));

        return unidades;

    }



    public Unidade inserir(UnidadeSaveDTO unidadeSaveDTO) {

        validarDTO(unidadeSaveDTO);
        Unidade unidade = converterDTO(unidadeSaveDTO);

        return unidadeRepository.save(unidade);
    }


    public UnidadeGetDTO buscar(Long id) {
        Unidade unidade = unidadeRepository.findById(id)
                .orElseThrow(() -> new DadosException("Erro: Unidade não localizada"));

        UnidadeGetDTO unidadeGetDTO = converterModel(unidade);

        return unidadeGetDTO;
    }

    public Unidade buscarUnidadeObj(Long id){
        Unidade unidade = unidadeRepository.findById(id)
                .orElseThrow(() -> new DadosException("Erro: Unidade não localizada"));

        return unidade;
    }

    public List<UnidadeGetDTO> buscarPorInstituicao(Long id) {

        List<UnidadeGetDTO> unidades = unidadeRepository.findByInstituicao(id)
                .stream().map( unidade -> converterModel(unidade)).collect(Collectors.toList());


        return unidades;
    }

    public Unidade alterar(Long id, UnidadeSaveDTO unidadeSaveDTO) {

        validarDTO(unidadeSaveDTO);

        return unidadeRepository.findById(id)
                .map(registro -> {
                    registro  = converterDTO(unidadeSaveDTO);
                    registro.setId(id);

                    return unidadeRepository.save(registro);

                }).orElseThrow(
                        () -> new NegocioException("Id de unidade inválido")
                );

    }

    public void apagar(Long id) {
        try {
            unidadeRepository.deleteById(id);
        }catch (EmptyResultDataAccessException e){
            System.out.println(e.getMessage());
        }

    }


    private void validarDTO(UnidadeSaveDTO unidadeSaveDTO) {

        if (unidadeSaveDTO.getNome().isEmpty() || unidadeSaveDTO.getNome().isBlank()) {
            throw new NegocioException("Erro: Nome da unidade inválido");
        }

        if (unidadeSaveDTO.getEndereco().isEmpty() || unidadeSaveDTO.getEndereco().isBlank()) {
            throw new NegocioException("Erro: Endereço da unidade inválido");
        }

        if (unidadeSaveDTO.getInstituicao() == null) {
            throw new NegocioException("Erro: Instituição da unidade inválida");
        }

        if (unidadeSaveDTO.getCidade() == null) {
            throw new NegocioException("Erro: Cidade da unidade inválida");
        }

        if (unidadeSaveDTO.getTelefone().isEmpty() || unidadeSaveDTO.getTelefone().isBlank()) {
            throw new NegocioException("Erro: Telefone da unidade inválido");
        }


    }

    private Unidade converterDTO(UnidadeSaveDTO unidadeSaveDTO) {

        Unidade unidade = modelMapper.map(unidadeSaveDTO, Unidade.class);

        Instituicao instituicaoBuscada = instituicaoService.buscar(unidadeSaveDTO.getInstituicao());
        Cidade cidadeBuscada = cidadeService.buscar(unidadeSaveDTO.getCidade());

        unidade.setInstituicao(instituicaoBuscada);
        unidade.setCidade(cidadeBuscada);

        return unidade;
    }

    private UnidadeGetDTO converterModel(Unidade unidade) {

        UnidadeGetDTO unidadeGetDTO = modelMapper.map(unidade, UnidadeGetDTO.class);
        unidadeGetDTO.setIdcidade(unidade.getCidade().getId());
        unidadeGetDTO.setNomeCidade(unidade.getCidade().getNome());

        return unidadeGetDTO;

    }

}
