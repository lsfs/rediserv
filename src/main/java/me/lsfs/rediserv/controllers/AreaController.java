package me.lsfs.rediserv.controllers;

import me.lsfs.rediserv.models.Area;

import me.lsfs.rediserv.services.AreaService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.util.UriComponentsBuilder;

import java.net.URI;
import java.util.List;

@RestController
@RequestMapping("/area")
public class AreaController {

    @Autowired
    AreaService areaService;

    @GetMapping("/listar")
    public ResponseEntity<List<Area>> listar() {
        List<Area> areas = areaService.listar();
        return ResponseEntity.ok().body(areas);

    }

    @PostMapping
    public ResponseEntity<Area> inserir(
            @RequestBody Area area,
            UriComponentsBuilder uriComponentsBuilder) throws Exception {

        Area areaSalva = areaService.inserir(area);
        URI uri = uriComponentsBuilder.path("/areas/{id}")
                .buildAndExpand(areaSalva.getId()).toUri();
        return ResponseEntity.created(uri).body(areaSalva);

    }

    @GetMapping("/{id}")
    public ResponseEntity<Area> buscar(
            @PathVariable Long id) {

        Area area = areaService.buscar(id);

        return ResponseEntity.ok().body(area);
    }

    public Area alterar(Long id, Area area) {
        return null;
    }

    public void apagar(Long id) {

    }

}
