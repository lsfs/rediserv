package me.lsfs.rediserv.controllers;


import me.lsfs.rediserv.dtos.PessoaDTO;
import me.lsfs.rediserv.dtos.PessoaGetDTO;
import me.lsfs.rediserv.dtos.PessoaSaveDTO;
import me.lsfs.rediserv.dtos.SenhaDTO;
import me.lsfs.rediserv.models.jwtpayload.response.MessageResponse;
import me.lsfs.rediserv.services.PessoaService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.web.PageableDefault;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;


@RestController
@CrossOrigin(origins = "http://localhost:4200")
@RequestMapping("/pessoas")
public class PessoaController {


    @Autowired
    PessoaService pessoaService;

    @GetMapping
    public ResponseEntity<Page<PessoaDTO>> listar(
            @PageableDefault(sort = "id") Pageable pageable
    ) {

        Page<PessoaDTO> pessoas = pessoaService.listar(pageable);

        return ResponseEntity.ok().body(pessoas);

    }

    @GetMapping(value = "/{id}")
    public ResponseEntity<PessoaGetDTO> buscar(
            @PathVariable Long id
    ){
        PessoaGetDTO pessoaGetDTO = pessoaService.buscar(id);
        return ResponseEntity.ok().body(pessoaGetDTO);
    }

    @PutMapping(value = "/{id}")
    public ResponseEntity<MessageResponse> editar(
            @PathVariable Long id,
            @RequestBody PessoaSaveDTO pessoaSaveDTO
            ) {

        MessageResponse retorno = pessoaService.editar(id, pessoaSaveDTO);
        return ResponseEntity.ok().body(retorno);

    }

    @PostMapping("/{id}/senha")
    public ResponseEntity<MessageResponse> verificaSenha(
            @PathVariable Long id,
            @RequestBody SenhaDTO senhaDTO
    ){

        MessageResponse retorno = pessoaService.confereSenha(id, senhaDTO);
        return ResponseEntity.ok().body(retorno);

    }

    @PutMapping("/{id}/senha")
    public ResponseEntity<MessageResponse> trocaSenha(
            @PathVariable Long id,
            @RequestBody SenhaDTO senhaDTO
    ){

        MessageResponse retorno = pessoaService.trocaSenha(id, senhaDTO);
        return ResponseEntity.ok().body(retorno);

    }

    @DeleteMapping("/{id}")
    public ResponseEntity<MessageResponse> apagar(
            @PathVariable Long id
    ){
        MessageResponse retorno = pessoaService.apagar(id);
        return ResponseEntity.ok().body(retorno);
    }






}
