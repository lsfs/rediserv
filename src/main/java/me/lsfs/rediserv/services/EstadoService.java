package me.lsfs.rediserv.services;

import me.lsfs.rediserv.exceptions.DadosException;
import me.lsfs.rediserv.exceptions.NegocioException;
import me.lsfs.rediserv.models.Area;
import me.lsfs.rediserv.models.Estado;
import me.lsfs.rediserv.repositories.EstadoRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class EstadoService {

    EstadoRepository estadoRepository;

    @Autowired
    public EstadoService(EstadoRepository estadoRepository) {
        this.estadoRepository = estadoRepository;
    }

    public List<Estado> listar() {
        return estadoRepository.findAll();
    }

    public Estado inserir(Estado estado) {
        validar(estado);
        return estadoRepository.save(estado);

    }

    public Estado buscar(Long id) {
        Estado estado = estadoRepository.findById(id)
                .orElseThrow(() -> new DadosException("Erro: Estado não localizado"));

        return estado;
    }

    public Estado alterar(Long id, Estado estado) {

        validarID(id);
        return estadoRepository.findById(id)
                .map(registro -> {
                    registro.setNome(estado.getNome());
                    registro.setSigla(estado.getSigla());
                    registro.setRegiao(estado.getRegiao());
                    registro.setId(id);

                    return estadoRepository.save(registro);

                }).orElseThrow(
                        () -> new NegocioException("Id de estado inválido")
                );

    }

    public void apagar(Long id){

        validarID(id);
        estadoRepository.deleteById(id);
    }

    private void validar(Estado estado) {

        if (estado.getNome().isBlank() || estado.getNome().isEmpty()) {
            throw new NegocioException("Erro: Nome do estado inválido");
        }

        if (estado.getSigla().isEmpty() || estado.getSigla().isBlank()) {
            throw new NegocioException("Erro: Sigla inválida");
        }

        if (estado.getRegiao().isBlank() || estado.getRegiao().isEmpty()){
            throw new NegocioException("Erro: Nome da região do estado inválido");
        }
    }

    private void validarID(Long id) {
        if (!estadoRepository.existsById(id)) {
            throw new DadosException("ID inválido.");
        }
    }


}
