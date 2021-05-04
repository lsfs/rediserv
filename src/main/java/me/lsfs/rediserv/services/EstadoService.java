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
        String nomeEstado = estado.getNome();
        String sigla = estado.getSigla();
        Estado estadoNovo = new Estado(id, nomeEstado, sigla);

        return estadoRepository.save(estadoNovo);

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
    }

    private void validarID(Long id) {
        if (!estadoRepository.existsById(id)) {
            throw new DadosException("ID inválido.");
        }
    }


}
