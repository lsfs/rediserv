package me.lsfs.rediserv.controllers;

import me.lsfs.rediserv.models.Estado;
import me.lsfs.rediserv.services.EstadoService;
import org.apache.coyote.Response;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.util.UriComponentsBuilder;

import java.net.URI;
import java.util.List;

@RestController
@CrossOrigin(origins = "http://localhost:4200")
@RequestMapping("/estados")
public class EstadoController {

    EstadoService estadoService;

    @Autowired
    public EstadoController(EstadoService estadoService) {
        this.estadoService = estadoService;
    }

    @GetMapping("/listar")
    public ResponseEntity<List<Estado>> listar(){

        List<Estado> estados = estadoService.listar();

        return ResponseEntity.ok().body(estados);
    }

    @PostMapping
    public ResponseEntity<Estado> inserir(
            @RequestBody Estado estado ,
                    UriComponentsBuilder uriComponentsBuilder
            ){

        Estado estadoSalvo = estadoService.inserir(estado);
        URI uri = uriComponentsBuilder.path("/estados/{id}")
                .buildAndExpand(estadoSalvo.getId()).toUri();

        return ResponseEntity.created(uri).body(estadoSalvo);

    }

    @GetMapping("/{id}")
    public ResponseEntity<Estado> buscar(@PathVariable Long id){

        Estado estado = estadoService.buscar(id);

        return ResponseEntity.ok().body(estado);
    }

    @PutMapping("/{id}")
    public Estado alterar(
            @PathVariable Long id,
            @RequestBody Estado estado
    ) {

       return estadoService.alterar(id, estado);
    }

    @DeleteMapping("/{id}")
    public void apagar(@PathVariable Long id){

        estadoService.apagar(id);
    }




}
