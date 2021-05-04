package me.lsfs.rediserv.services;

import me.lsfs.rediserv.exceptions.DadosException;
import me.lsfs.rediserv.exceptions.NegocioException;
import me.lsfs.rediserv.models.Area;
import me.lsfs.rediserv.models.Cargo;
import me.lsfs.rediserv.models.dtos.CargoDTO;
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

    public Cargo inserir(CargoDTO cargoDTO) {
        Cargo cargo = converteDTO(cargoDTO);

        Area areaBuscada = buscarArea(cargoDTO.getArea());

        cargo.setArea(areaBuscada);

        return cargoRepository.save(cargo);
    }

    public Cargo buscar(Long id) {
        Cargo cargo = cargoRepository.findById(id)
                .orElseThrow(() -> new DadosException("Erro: Cargo não localizado"));

        return cargo;
    }

    public Cargo alterar(Long id, CargoDTO cargoDTO) {

        validarDTO(cargoDTO);

        Cargo cargoNovo = modelMapper.map(cargoDTO, Cargo.class);
        Area areaBuscada = buscarArea(cargoDTO.getArea());
        cargoNovo.setId(id);
        cargoNovo.setArea(areaBuscada);

        return cargoRepository.save(cargoNovo);

    }

    public void apagar(Long id) {
        try {
            cargoRepository.deleteById(id);
        }catch (EmptyResultDataAccessException e){

            System.out.println(e.getMessage());
        }

    }

    private void validarDTO(CargoDTO cargoDTO) {
        if (cargoDTO.getNome().isBlank() || cargoDTO.getNome().isBlank()) {
            throw new NegocioException("Erro:Nome de cargo inválido");
        }

        if (cargoDTO.getArea() == null) throw new NegocioException("Erro: Área inválida");
    }


    private Cargo converteDTO(CargoDTO cargoDTO) {

        Cargo cargo = modelMapper.map(cargoDTO, Cargo.class);

        return cargo;
    }

    private Area buscarArea(Long idarea) {
        Area areaBuscada = areaService.buscar(idarea);
        return areaBuscada;
    }


}
