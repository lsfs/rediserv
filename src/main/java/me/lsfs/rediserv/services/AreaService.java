package me.lsfs.rediserv.services;

import me.lsfs.rediserv.exceptions.DadosException;
import me.lsfs.rediserv.models.Area;
import me.lsfs.rediserv.repositories.AreaRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class AreaService {

    @Autowired
    AreaRepository areaRepository;

    public List<Area> listar() {
        return areaRepository.findAll();
    }

    public Area inserir(Area area) throws Exception {
        validar(area);
        return areaRepository.save(area);
    }

    public Area buscar(Long id) {

       Area area = areaRepository.findById(id)
                .orElseThrow(() -> new DadosException("${erro.registroNaoEncontrado}"));

        return area;
    }

    private void validar(Area area) throws Exception {
        if (area.getNome().isBlank() || area.getNome().isEmpty()){
            throw new Exception("aaaa");
        }
    }




}
