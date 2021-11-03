package me.lsfs.rediserv.controllers;

import me.lsfs.rediserv.dtos.ProfessorSaveDTO;
import me.lsfs.rediserv.models.Professor;
import me.lsfs.rediserv.services.ProfessorService;
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
@RequestMapping("/professores")
@CrossOrigin(origins = "http://localhost:4200")
public class ProfessorController {

    private ProfessorService professorService;

    @Autowired
    public ProfessorController(ProfessorService professorService) {
        this.professorService = professorService;
    }

    @GetMapping
    public ResponseEntity<List<Professor>> listar() {

        List<Professor> professores = professorService.listar();

        return ResponseEntity.ok().body(professores);
    }

    @GetMapping("/listarPaginada")
    public ResponseEntity<Page<Professor>> listar(
            @PageableDefault(sort = "id") Pageable pageable
    ) {

        Page<Professor> professores = professorService.listar(pageable);

        return ResponseEntity.ok().body(professores);
    }

    @GetMapping("/{id}")
    public ResponseEntity<Professor> buscar(
            @PathVariable Long id
    ){
        Professor professor = professorService.buscar(id);
        return ResponseEntity.ok().body(professor);
    }

    @PostMapping
    public ResponseEntity<Professor> criar(
            @RequestBody ProfessorSaveDTO professorSaveDTO,
            UriComponentsBuilder uriComponentsBuilder) {

        Professor professor = professorService.criar(professorSaveDTO);

        URI uri = uriComponentsBuilder.path("/professores/{id}")
                .buildAndExpand(professor.getId()).toUri();

        return ResponseEntity.created(uri).body(professor);


    }

    @PutMapping("/{id}")
    public ResponseEntity<Professor> alterar(
            @RequestBody ProfessorSaveDTO professorSaveDTO,
            @PathVariable Long id
    ){
        Professor professor = professorService.alterar(professorSaveDTO, id);
        return ResponseEntity.ok().body(professor);
    }

    @DeleteMapping("/{id}")
    public void apagar(
            @PathVariable Long id
    ){
        professorService.apagar(id);
    }

}
