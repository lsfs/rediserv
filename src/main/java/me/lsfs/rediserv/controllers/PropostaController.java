package me.lsfs.rediserv.controllers;

import me.lsfs.rediserv.models.Unidade;
import me.lsfs.rediserv.models.dtos.PropostaGetDTO;
import me.lsfs.rediserv.services.PropostaService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.util.UriComponentsBuilder;

import java.net.URI;
import java.util.List;

@RestController
@RequestMapping("/propsotas")
public class PropostaController {


    private PropostaService propostaService;

    @Autowired
    public PropostaController(PropostaService propostaService) {
        this.propostaService = propostaService;
    }

//    @GetMapping("/listar")
//    public ResponseEntity<List<PropostaGetDTO>> listar() {
//
//        List<PropostaGetDTO> propostas = propostaService.listar();
//
//        return ResponseEntity.ok().body(propostas);
//    }

    /*@PostMapping
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
    */




}
