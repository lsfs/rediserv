package me.lsfs.rediserv.services;

import me.lsfs.rediserv.exceptions.DadosException;
import me.lsfs.rediserv.exceptions.NegocioException;
import me.lsfs.rediserv.repositories.CargoRepository;
import me.lsfs.rediserv.models.Cargo;
import me.lsfs.rediserv.dtos.CargoSaveDTO;
import org.modelmapper.ModelMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CargoService {

    CargoRepository cargoRepository;
    ModelMapper modelMapper;


    @Autowired
    public CargoService(CargoRepository cargoRepository,
                        ModelMapper modelMapper
                        ) {

        this.modelMapper = modelMapper;
        this.cargoRepository = cargoRepository;

    }


    public List<Cargo> listar() {
        return cargoRepository.findAll();
    }



    public Cargo buscar(Long id) {
        Cargo cargo = cargoRepository.findById(id)
                .orElseThrow(() -> new DadosException("Erro: Cargo não localizado"));

        return cargo;
    }

//    public List<Cargo> buscarPorArea(Long idArea) {
//        List<Cargo> listaCargos = cargoRepository
//                .findByArea(idArea)
//                .orElseThrow(() -> new DadosException("Cargos não encontrados"));
//
//        return listaCargos;
//    }



    public void apagar(Long id) {
        try {
            cargoRepository.deleteById(id);
        } catch (EmptyResultDataAccessException e) {

            System.out.println(e.getMessage());
        }

    }

    private void validarDTO(CargoSaveDTO cargoSaveDTO) {
        if (cargoSaveDTO.getNome().isBlank() || cargoSaveDTO.getNome().isBlank()) {
            throw new NegocioException("Erro:Nome de cargo inválido");
        }

        if (cargoSaveDTO.getArea() == null) throw new NegocioException("Erro: Área inválida");
    }







}
