package me.lsfs.rediserv.services;

import me.lsfs.rediserv.exceptions.DadosException;
import me.lsfs.rediserv.exceptions.NegocioException;
import me.lsfs.rediserv.models.Area;
import me.lsfs.rediserv.models.Cargo;
import me.lsfs.rediserv.models.dtos.CargoSaveDTO;
import me.lsfs.rediserv.repositories.CargoRepository;
import org.modelmapper.ModelMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CargoService {

    CargoRepository cargoRepository;
    ModelMapper modelMapper;
    AreaService areaService;

    @Autowired
    public CargoService(CargoRepository cargoRepository,
                        ModelMapper modelMapper,
                        AreaService areaService) {

        this.modelMapper = modelMapper;
        this.cargoRepository = cargoRepository;
        this.areaService = areaService;
    }


    public List<Cargo> listar() {
        return cargoRepository.findAll();
    }

    public Cargo inserir(CargoSaveDTO cargoSaveDTO) {
        Cargo cargo = converterDTO(cargoSaveDTO);

        return cargoRepository.save(cargo);
    }

    public Cargo buscar(Long id) {
        Cargo cargo = cargoRepository.findById(id)
                .orElseThrow(() -> new DadosException("Erro: Cargo não localizado"));

        return cargo;
    }

    public Cargo alterar(Long id, CargoSaveDTO cargoSaveDTO) {

        validarDTO(cargoSaveDTO);
        return cargoRepository.findById(id)
                .map(registro -> {
                    registro = converterDTO(cargoSaveDTO);
                    registro.setId(id);

                    return cargoRepository.save(registro);

                }).orElseThrow(
                        () -> new NegocioException("Id de cargo inválido")
                );

    }

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


    private Cargo converterDTO(CargoSaveDTO cargoSaveDTO) {

        Cargo cargo = modelMapper.map(cargoSaveDTO, Cargo.class);
        Area areaBuscada = buscarArea(cargoSaveDTO.getArea());
        cargo.setArea(areaBuscada);

        return cargo;
    }

    private Area buscarArea(Long idarea) {
        Area areaBuscada = areaService.buscar(idarea);
        return areaBuscada;
    }


}
