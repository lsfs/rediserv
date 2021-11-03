package me.lsfs.rediserv.services;

import me.lsfs.rediserv.dtos.TecnicoSaveDTO;
import me.lsfs.rediserv.exceptions.DadosException;
import me.lsfs.rediserv.exceptions.NegocioException;
import me.lsfs.rediserv.models.Nivel;
import me.lsfs.rediserv.models.Tecnico;
import me.lsfs.rediserv.repositories.TecnicoRespository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class TecnicoService {

    private TecnicoRespository tecnicoRespository;
    private NivelService nivelService;

    @Autowired
    public TecnicoService(TecnicoRespository tecnicoRespository, NivelService nivelService) {
        this.tecnicoRespository = tecnicoRespository;
        this.nivelService = nivelService;
    }

    public List<Tecnico> listar() {
        return this.tecnicoRespository.findAll();
    }

    public Page<Tecnico> listar(Pageable pageable) {
        return this.tecnicoRespository.listar(pageable);
    }


    public Tecnico buscar(Long id) {

        return this.tecnicoRespository.findById(id)
                .orElseThrow(
                        () -> new DadosException("Id inválido")
                );

    }

    public Tecnico criar(TecnicoSaveDTO tecnicoSaveDTO) {

        validar(tecnicoSaveDTO);


        Long idNivel = tecnicoSaveDTO.getNivel();
        Nivel nivel = nivelService.buscar(idNivel);

        Tecnico tecnico = new Tecnico();
        tecnico.setDescricao("Técnico");

        tecnico.setNivel(nivel);
        tecnico.setFuncao(tecnicoSaveDTO.getFuncao());

        return tecnicoRespository.save(tecnico);


    }

    private void validar(TecnicoSaveDTO tecnico) {
        if (tecnico.getFuncao().isEmpty() || tecnico.getFuncao().isBlank()) {
            throw new DadosException("Função vazia");
        }

        if (tecnico.getNivel() == null) {
            throw new DadosException(("Nivel vazio"));
        }
    }

    public Tecnico alterar(TecnicoSaveDTO tecnicoSaveDTO, Long id) {

        return tecnicoRespository.findById(id)
                .map(
                        registro -> {
                            Nivel nivel = this.nivelService.buscar(tecnicoSaveDTO.getId());

                            registro.setFuncao(tecnicoSaveDTO.getFuncao());
                            registro.setNivel(nivel);

                            return tecnicoRespository.save(registro);
                        }
                ).orElseThrow(
                        () -> new NegocioException("ID Inválido")
                );

    }

    public void apagar(Long id) {
        this.tecnicoRespository.deleteById(id);
    }

    public List<Tecnico> listarTecnicosNivel(Long idNivel) {

        return tecnicoRespository.listarPorNivel(idNivel);

    }
}
