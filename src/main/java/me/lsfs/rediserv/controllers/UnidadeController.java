package me.lsfs.rediserv.controllers;


import me.lsfs.rediserv.models.Unidade;
import me.lsfs.rediserv.models.dtos.UnidadeGetDTO;
import me.lsfs.rediserv.models.dtos.UnidadeSaveDTO;
import me.lsfs.rediserv.services.UnidadeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.util.UriComponentsBuilder;

import java.net.URI;
import java.util.List;

@RestController
@RequestMapping("/unidades")
@CrossOrigin(origins = "http://localhost:4200")
public class UnidadeController {

    private UnidadeService unidadeService;

    @Autowired
    public UnidadeController(UnidadeService unidadeService) {
        this.unidadeService = unidadeService;
    }

    @GetMapping("/listar")
    public ResponseEntity<List<UnidadeGetDTO>> listar() {

        List<UnidadeGetDTO> unidades = unidadeService.listar();

        return ResponseEntity.ok().body(unidades);
    }

    @PostMapping
    public ResponseEntity<Unidade> inserir(
            @RequestBody UnidadeSaveDTO unidadeSaveDTO,
            UriComponentsBuilder uriComponentsBuilder
    ) {

        Unidade unidadeSalva = unidadeService.
                inserir(unidadeSaveDTO);

        URI uri = uriComponentsBuilder.path("/unidades/{id}")
                .buildAndExpand(unidadeSalva.getId()).toUri();

        return ResponseEntity.created(uri).body(unidadeSalva);
    }

    @GetMapping("/{id}")
    public ResponseEntity<Unidade> buscar(@PathVariable Long id){
        Unidade unidade = unidadeService.buscar(id);

        return ResponseEntity.ok().body(unidade);
    }

    @GetMapping("/instituicao/{id}")
    public ResponseEntity<List<Unidade>> buscarUnidades(
            @PathVariable Long id
    ){
        List<Unidade> unidades = unidadeService.buscarPorInstituicao(id);

        return ResponseEntity.ok().body(unidades);
    }

    @PutMapping("/{id}")
    public Unidade alterar(@PathVariable Long id,
                           @RequestBody UnidadeSaveDTO unidadeSaveDTO){

        return unidadeService.alterar(id, unidadeSaveDTO);
    }

    @DeleteMapping("/{id}")
    public void apagar(
            @PathVariable Long id){
        unidadeService.apagar(id);
    }

}
