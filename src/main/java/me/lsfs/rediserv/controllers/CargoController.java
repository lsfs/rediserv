package me.lsfs.rediserv.controllers;

import me.lsfs.rediserv.models.Cargo;
import me.lsfs.rediserv.models.dtos.CargoDTO;
import me.lsfs.rediserv.services.CargoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.util.UriComponentsBuilder;

import java.net.URI;
import java.util.List;

@RestController
@RequestMapping("/cargos")
public class CargoController {


    CargoService cargoService;

    @Autowired
    public CargoController(CargoService cargoService) {
        this.cargoService = cargoService;
    }

    @GetMapping("/listar")
    public ResponseEntity<List<Cargo>> listar() {

        List<Cargo> cargos = cargoService.listar();
        return ResponseEntity.ok().body(cargos);
    }

    @PostMapping
    public ResponseEntity<Cargo> inserir(
            @RequestBody CargoDTO cargoDTO,
            UriComponentsBuilder uriComponentsBuilder) {

        Cargo cargoSalvo = cargoService.inserir(cargoDTO);
        URI uri = uriComponentsBuilder.path("/cargos/{id}")
                .buildAndExpand(cargoSalvo.getId()).toUri();
        return ResponseEntity.created(uri).body(cargoSalvo);
    }

    @GetMapping("/{id}")
    public ResponseEntity<Cargo> buscar(
            @PathVariable Long id
    ) {

        Cargo cargo = cargoService.buscar(id);
        return ResponseEntity.ok().body(cargo);

    }

    @PutMapping("/{id}")
    public Cargo alterar(
            @PathVariable Long id,
            @RequestBody CargoDTO cargoDTO
    ){

       return cargoService.alterar(id, cargoDTO);
    }

    @DeleteMapping("/{id}")
    public void apagar(@PathVariable Long id){

        cargoService.apagar(id);
    }


}
