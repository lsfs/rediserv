package me.lsfs.rediserv.controllers;


import me.lsfs.rediserv.dtos.MensagemGetDTO;
import me.lsfs.rediserv.services.MensagemService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.util.UriComponentsBuilder;
import me.lsfs.rediserv.dtos.MensagemSaveDTO;

import java.net.URI;

@RestController
@CrossOrigin(origins = "http://localhost:4200")
@RequestMapping("/mensagens")
public class MensagemController {

    @Autowired
    MensagemService mensagemService;

//    @GetMapping
//    public ResponseEntity<Page<MensagemSaveDTO>>

    @PostMapping
    public ResponseEntity<MensagemGetDTO> inserir(
            @RequestBody MensagemSaveDTO mensagemSaveDTO,
            UriComponentsBuilder uriComponentsBuilder
    ){
        MensagemGetDTO mensagemGetDTO = mensagemService.inserir(mensagemSaveDTO);

        URI uri = uriComponentsBuilder.path("/mensagens/{id}")
                .buildAndExpand(mensagemGetDTO.getId()).toUri();

        return ResponseEntity.created(uri).body(mensagemGetDTO);

    }




}
