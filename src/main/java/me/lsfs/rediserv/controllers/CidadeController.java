package me.lsfs.rediserv.controllers;

import me.lsfs.rediserv.models.Cidade;
import me.lsfs.rediserv.models.dtos.CidadeSaveDTO;
import me.lsfs.rediserv.services.CidadeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.util.UriComponentsBuilder;

import java.net.URI;
import java.util.List;

@RestController
@RequestMapping("/cidades")
public class CidadeController {


    CidadeService cidadeService;

    @Autowired
    public CidadeController(CidadeService cidadeService) {
        this.cidadeService = cidadeService;
    }

    @GetMapping("/listar")
    public ResponseEntity<List<Cidade>> listar(){

        List<Cidade> cidades = cidadeService.listar();

        return ResponseEntity.ok().body(cidades);
    }

    @PostMapping
    public ResponseEntity<Cidade> inserir(
            @RequestBody CidadeSaveDTO cidadeSaveDTO,
            UriComponentsBuilder uriComponentsBuilder
    ){

        Cidade cidadeSalva = cidadeService.inserir(cidadeSaveDTO);
        URI uri = uriComponentsBuilder.path("/cidades/{id}")
                .buildAndExpand(cidadeSalva.getId()).toUri();

        return ResponseEntity.created(uri).body(cidadeSalva);

    }

    @GetMapping("/{id}")
    public ResponseEntity<Cidade> buscar(@PathVariable Long id){

        Cidade cidade = cidadeService.buscar(id);

        return ResponseEntity.ok().body(cidade);
    }

    @PutMapping("/{id}")
    public Cidade alterar(
            @PathVariable Long id,
            @RequestBody CidadeSaveDTO cidadeSaveDTO
    ) {

        return cidadeService.alterar(id, cidadeSaveDTO);
    }

    @DeleteMapping("/{id}")
    public void apagar(@PathVariable Long id){

        cidadeService.apagar(id);
    }

}
