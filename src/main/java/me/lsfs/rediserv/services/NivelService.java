package me.lsfs.rediserv.services;

import me.lsfs.rediserv.exceptions.DadosException;
import me.lsfs.rediserv.exceptions.NegocioException;
import me.lsfs.rediserv.models.Nivel;
import me.lsfs.rediserv.repositories.NivelRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class NivelService {


    private NivelRepository nivelRepository;

    @Autowired
    public NivelService(NivelRepository nivelRepository) {
        this.nivelRepository = nivelRepository;
    }

    public Nivel buscar(Long id) {

        return nivelRepository.findById(id)
                .orElseThrow(
                        () -> new DadosException("ID inválido")
                );
    }

    public List<Nivel> listar() {
        return nivelRepository.findAll();
    }

    public Nivel criar(Nivel novoNivel) {
        validar(novoNivel);

        return nivelRepository.save(novoNivel);
    }

    public Nivel alterar(Nivel nivelAlterar, Long id) {
        validar(nivelAlterar);

        return nivelRepository.findById(id)
                .map(
                        registro -> {
                            registro.setDescricao(nivelAlterar.getDescricao());
                            return nivelRepository.save(registro);
                        }
                ).orElseThrow(
                () -> new NegocioException("Id inválido")
        );
    }

    public void apagar(Long id){
        this.nivelRepository.deleteById(id);
    }


    private void validar(Nivel nivel) {

        if (nivel.getDescricao().isBlank() || nivel.getDescricao().isBlank()) {
            throw new NegocioException("Descrição de nivel invalida");
        }

    }
}
