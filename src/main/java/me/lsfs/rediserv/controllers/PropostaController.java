package me.lsfs.rediserv.controllers;

import me.lsfs.rediserv.dtos.PropostaGetDTO;
import me.lsfs.rediserv.dtos.PropostaSaveDTO;
import me.lsfs.rediserv.models.utils.SituacaoPropostaEnum;
import me.lsfs.rediserv.services.PropostaService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.web.PageableDefault;
import org.springframework.http.ResponseEntity;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.util.UriComponentsBuilder;

import java.net.URI;
import java.util.List;

@CrossOrigin(origins = "http://localhost:4200")
@RestController
@RequestMapping("/propostas")
public class PropostaController {


    public static final String SITUACAO_PROPOSTA = "situacaoProposta";
    public static final String IDAUTOR = "idautor";
    private final PropostaService propostaService;

    @Autowired
    public PropostaController(PropostaService propostaService) {
        this.propostaService = propostaService;
    }


    @GetMapping
    public ResponseEntity<List<PropostaGetDTO>> listar(
            @RequestParam(name = IDAUTOR, required = false) Long idautor,
            @RequestParam(name = SITUACAO_PROPOSTA, required = false) SituacaoPropostaEnum situacaoProposta
    ) {


        List<PropostaGetDTO> propostas = propostaService.listar(situacaoProposta, idautor);

        return ResponseEntity.ok().body(propostas);
    }

    @GetMapping("/filtro")
    public ResponseEntity<Page<PropostaGetDTO>> listagemFiltrada(
            @PageableDefault(sort = "id") Pageable pageable,
            @RequestParam(name = "cargo", required = false) String cargo,
            @RequestParam(name = "idestado", required = false) Long idestado,
            @RequestParam(name = "idinstituicao", required = false) Long idinstituicao,
            @RequestParam(name = SITUACAO_PROPOSTA, required = false) SituacaoPropostaEnum situacaoPropostaEnum
    ) {
        Page<PropostaGetDTO> propostas = propostaService.listagemFiltrada(pageable, idestado, cargo, idinstituicao,
                situacaoPropostaEnum);

        return ResponseEntity.ok().body(propostas);
    }

    @PostMapping
    public ResponseEntity<PropostaGetDTO> inserir(
            @RequestBody PropostaSaveDTO propostaSaveDTO,
            UriComponentsBuilder uriComponentsBuilder
    ) {

        PropostaGetDTO propostaSalva = propostaService.inserir(propostaSaveDTO);

        URI uri = uriComponentsBuilder.path("/propostas/{id}")
                .buildAndExpand(propostaSalva.getId()).toUri();

        return ResponseEntity.created(uri).body(propostaSalva);

    }

    @PutMapping("/{idproposta}")
    public ResponseEntity<PropostaGetDTO> editarProposta(
            @PathVariable Long idproposta,
            @RequestBody PropostaSaveDTO propostaSaveDTO,
            UriComponentsBuilder uriComponentsBuilder
    ) {

        propostaSaveDTO.setId(idproposta);

        PropostaGetDTO proposta = propostaService.inserir(propostaSaveDTO);
        URI uri = uriComponentsBuilder.path("/propostas/{idproposta}")
                .buildAndExpand(proposta).toUri();

        return ResponseEntity.created(uri).body(proposta);

    }


    @PutMapping("/{idproposta}/publicar")
    public ResponseEntity<PropostaGetDTO> publicar(
            @PathVariable Long idproposta,
            @RequestBody PropostaSaveDTO propostaSave,
            UriComponentsBuilder uriComponentsBuilder

    ) {
        PropostaGetDTO proposta = propostaService.publicar(idproposta, propostaSave);

        URI uri = uriComponentsBuilder.path("/propostas/{idproposta}")
                .buildAndExpand(proposta).toUri();

        return ResponseEntity.created(uri).body(proposta);

    }


    @PostMapping("/{idproposta}/candidatos/{idusuario}")
    public ResponseEntity<PropostaGetDTO> candidatarProposta(
            @PathVariable Long idproposta,
            @PathVariable Long idusuario,
            UriComponentsBuilder uriComponentsBuilder) {

        PropostaGetDTO proposta = propostaService.candidatar(idproposta, idusuario);
        URI uri = uriComponentsBuilder.path("/propostas/{idproposta}")
                .buildAndExpand(proposta).toUri();

        return ResponseEntity.created(uri).body(proposta);

    }

    @DeleteMapping("/{idproposta}/candidatos/{idusuario}")
    public ResponseEntity<PropostaGetDTO> removeCandidato(
            @PathVariable Long idproposta,
            @PathVariable Long idusuario
    ) {

        PropostaGetDTO propostaGetDTO = propostaService.removeCandidatura(idproposta, idusuario);

        return ResponseEntity.ok().body(null);
    }


    @GetMapping("/candidato/{idcandidato}")
    public ResponseEntity<List<PropostaGetDTO>> buscarPorCandidato(
            @PathVariable Long idcandidato
    ) {
        List<PropostaGetDTO> propostas = propostaService.buscarPropostasPorCandidatos(idcandidato);

        return ResponseEntity.ok().body(propostas);
    }


    @GetMapping("/{idproposta}")
    public ResponseEntity<PropostaGetDTO> buscarProposta(
            @PathVariable Long idproposta
    ) {

        PropostaGetDTO proposta = propostaService.buscarProposta(idproposta);
        return ResponseEntity.ok().body(proposta);

    }




    /*

    @GetMapping("/{id}")
    public ResponseEntity<Unidade> buscar(@PathVariable Long id){
        Unidade unidade = unidadeService.buscar(id);

        return ResponseEntity.ok().body(unidade);
    }

    @PutMapping("/{id}")
    public Unidade alterar(@PathVariable Long id,
                           @RequestBody UnidadeSaveDTO unidadeSaveDTO){

        return unidadeService.alterar(id, unidadeSaveDTO);
    }*/

    @DeleteMapping("/{id}")
    @PreAuthorize("hasRole('ROLE_USER')")
    public void apagar(
            @PathVariable Long id) {
        propostaService.apagar(id);
    }


}
