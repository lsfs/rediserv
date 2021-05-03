package me.lsfs.rediserv.services;

import me.lsfs.rediserv.exceptions.DadosException;
import me.lsfs.rediserv.exceptions.NegocioException;
import me.lsfs.rediserv.models.Area;
import me.lsfs.rediserv.repositories.AreaRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class AreaService {

    AreaRepository areaRepository;

    @Autowired
    public AreaService(AreaRepository areaRepository) {
        this.areaRepository = areaRepository;
    }

    public List<Area> listar() {
        return areaRepository.findAll();
    }

    public Area inserir(Area area){
        validar(area);
        return areaRepository.save(area);
    }

    public Area buscar(Long id) {

       Area area = areaRepository.findById(id)
                .orElseThrow(() -> new DadosException("Erro: Área não localizada"));

        return area;
    }

    public void apagar(Long id){
        validarID(id);
        areaRepository.deleteById(id);
    }

    public Area alterar(Long id, Area area) {
        validar(area);
        validarID(id);

        Area areaNova = new Area();
        areaNova.setNome(area.getNome());
        areaNova.setId(id);

        return areaRepository.save(areaNova);
    }


    private void validar(Area area) {
        if (area.getNome().isBlank() || area.getNome().isEmpty()){
            throw new NegocioException("Erro: nome inválido");
        }
    }

    private void validarID(Long id){
        if(!areaRepository.existsById(id)){
            throw new DadosException("ID inválido.");
        }
    }




}
