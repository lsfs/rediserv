package me.lsfs.rediserv.controllers;

import me.lsfs.rediserv.models.Nivel;
import me.lsfs.rediserv.models.Professor;
import me.lsfs.rediserv.services.NivelService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.util.UriComponentsBuilder;

import java.net.URI;
import java.util.List;

@RestController
@RequestMapping("/niveis")
@CrossOrigin(origins = "http://localhost:4200")
public class NivelController {

    private NivelService nivelService;

    @Autowired
    public NivelController(NivelService nivelService) {
        this.nivelService = nivelService;
    }

    @GetMapping
    public ResponseEntity<List<Nivel>> listar() {
        List<Nivel> niveis = nivelService.listar();
        return ResponseEntity.ok().body(niveis);
    }

    @GetMapping("/{id}")
    public ResponseEntity<Nivel> buscar(
            @PathVariable Long id){

        Nivel nivel = nivelService.buscar(id);
        return ResponseEntity.ok().body(nivel);

    }

    @PostMapping
    public ResponseEntity<Nivel> criar(
            @RequestBody Nivel novoNivel,
            UriComponentsBuilder uriComponentsBuilder
    ){
        Nivel nivel = nivelService.criar(novoNivel);

        URI uri = uriComponentsBuilder.path("/niveis/{id}")
                .buildAndExpand(nivel.getId()).toUri();

        return ResponseEntity.created(uri).body(nivel);
    }

    @PutMapping("/{id}")
    public ResponseEntity<Nivel> alterar(
            @RequestBody Nivel nivelAlterar,
            @PathVariable Long id
    ){
        Nivel nivel = nivelService.alterar(nivelAlterar, id);

        return ResponseEntity.ok().body(nivel);
    }

    @DeleteMapping("/{id}")
    public void apagar(
            @PathVariable Long id){
        nivelService.apagar(id);
    }


}
