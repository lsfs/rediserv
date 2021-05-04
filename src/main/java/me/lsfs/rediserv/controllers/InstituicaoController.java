package me.lsfs.rediserv.controllers;

import me.lsfs.rediserv.models.Cidade;
import me.lsfs.rediserv.models.Instituicao;
import me.lsfs.rediserv.models.dtos.InstituicaoDTO;
import me.lsfs.rediserv.services.InstituicaoService;
import org.apache.coyote.Response;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.util.UriComponentsBuilder;

import java.net.URI;
import java.util.List;

@Controller
@RequestMapping("/instituicoes")
public class InstituicaoController {

    InstituicaoService instituicaoService;

    @Autowired
    public InstituicaoController(InstituicaoService instituicaoService) {
        this.instituicaoService = instituicaoService;
    }

    @GetMapping("/listar")
    public ResponseEntity<List<Instituicao>> listar() {
        List<Instituicao> instituicoes = instituicaoService.listar();

        return ResponseEntity.ok().body(instituicoes);
    }

    @PostMapping
    public ResponseEntity<Instituicao> inserir(
            @RequestBody InstituicaoDTO instituicaoDTO,
            UriComponentsBuilder uriComponentsBuilder
    ) {

        Instituicao instituicaoSalva = instituicaoService.
                inserir(instituicaoDTO);

        URI uri = uriComponentsBuilder.path("/instituicoes/{id}")
                .buildAndExpand(instituicaoSalva.getId()).toUri();

        return ResponseEntity.created(uri).body(instituicaoSalva);
    }

}
