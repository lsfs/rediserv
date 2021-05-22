package me.lsfs.rediserv.services;

import me.lsfs.rediserv.models.Proposta;
import me.lsfs.rediserv.models.dtos.PropostaGetDTO;
import me.lsfs.rediserv.models.dtos.UnidadeGetDTO;
import me.lsfs.rediserv.repositories.PropostaRepository;
import org.modelmapper.ModelMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.stream.Collectors;

@Service
public class PropostaService {

    @Autowired
    private PropostaRepository propostaRepository;

    @Autowired
    private ModelMapper modelMapper;

//    public List<PropostaGetDTO> listar() {
//        List<Proposta> propostas = propostaRepository.findAll();
//
//        List<PropostaGetDTO> propostaGetDTOS = propostas.stream().map(
//                proposta -> converterModel(proposta)).collect(Collectors.toList());
//
//        return propostaGetDTOS;
//
//    }

//    private PropostaGetDTO converterModel(Proposta proposta){
//
//        PropostaGetDTO propostaGetDTO = modelMapper.map(proposta, PropostaGetDTO.class);
//
//
//
//        return unidadeGetDTO;
//
//    }

}
