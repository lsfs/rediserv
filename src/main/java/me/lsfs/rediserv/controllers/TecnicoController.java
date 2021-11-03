package me.lsfs.rediserv.controllers;


import me.lsfs.rediserv.dtos.TecnicoSaveDTO;
import me.lsfs.rediserv.models.Professor;
import me.lsfs.rediserv.models.Tecnico;
import me.lsfs.rediserv.services.TecnicoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.web.PageableDefault;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.util.UriComponentsBuilder;

import java.net.URI;
import java.util.List;

@RestController
@RequestMapping("/tecnicos")
@CrossOrigin(origins = "http://localhost:4200")
public class TecnicoController {

    private TecnicoService tecnicoService;

    @Autowired
    public TecnicoController(TecnicoService tecnicoService) {
        this.tecnicoService = tecnicoService;
    }

    @GetMapping
    public ResponseEntity<List<Tecnico>> listar() {

        List<Tecnico> tecnicos = tecnicoService.listar();

        return ResponseEntity.ok().body(tecnicos);
    }


    @GetMapping("/listarPaginada")
    public ResponseEntity<Page<Tecnico>> listar(
            @PageableDefault(sort = "id") Pageable pageable
    ) {

        Page<Tecnico> tecnicos = tecnicoService.listar(pageable);

        return ResponseEntity.ok().body(tecnicos);
    }

    @GetMapping("/{id}")
    public ResponseEntity<Tecnico> buscar(
            @PathVariable Long id
    ){
        Tecnico tecnico = tecnicoService.buscar(id);
        return ResponseEntity.ok().body(tecnico);
    }

    @PostMapping
    public ResponseEntity<Tecnico> criar(
            @RequestBody TecnicoSaveDTO tecnicoSaveDTO,
            UriComponentsBuilder uriComponentsBuilder) {

        Tecnico tecnico = tecnicoService.criar(tecnicoSaveDTO);

        URI uri = uriComponentsBuilder.path("/tecnicos/{id}")
                .buildAndExpand(tecnico.getId()).toUri();

        return ResponseEntity.created(uri).body(tecnico);


    }

    @PutMapping("/{id}")
    public ResponseEntity<Tecnico> alterar(
            @RequestBody TecnicoSaveDTO tecnicoSaveDTO,
            @PathVariable Long id
    ){
        Tecnico tecnico = tecnicoService.alterar(tecnicoSaveDTO, id);
        return ResponseEntity.ok().body(tecnico);
    }

    @DeleteMapping("/{id}")
    public void apagar(
            @PathVariable Long id
    ){
        tecnicoService.apagar(id);
    }

    @GetMapping("/nivel/{id}")
    public ResponseEntity<List<Tecnico>> listarTecnicosNivel(
            @PathVariable Long id
    ){

        List<Tecnico> tecnicos = tecnicoService.listarTecnicosNivel(id);

        return ResponseEntity.ok().body(tecnicos);

    }


}
