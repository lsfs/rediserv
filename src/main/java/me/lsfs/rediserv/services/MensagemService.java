package me.lsfs.rediserv.services;

import me.lsfs.rediserv.dtos.MensagemGetDTO;
import me.lsfs.rediserv.dtos.MensagemSaveDTO;
import me.lsfs.rediserv.dtos.PessoaDTO;
import me.lsfs.rediserv.exceptions.DadosException;
import me.lsfs.rediserv.models.Mensagem;
import me.lsfs.rediserv.models.Pessoa;
import me.lsfs.rediserv.repositories.MensagemRepository;
import me.lsfs.rediserv.repositories.PessoaRepository;
import org.modelmapper.ModelMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class MensagemService {

    @Autowired
    MensagemRepository mensagemRepository;


    @Autowired
    PessoaRepository pessoaRepository;

    @Autowired
    private ModelMapper modelMapper;

    @Autowired
    private PessoaService pessoaService;


    public MensagemGetDTO inserir(MensagemSaveDTO mensagemSaveDTO) {

        return converterModel(mensagemRepository.save(converterDTO(mensagemSaveDTO)));


    }


    private Mensagem converterDTO(MensagemSaveDTO mensagemSaveDTO) {
        Mensagem mensagem = modelMapper.map(mensagemSaveDTO, Mensagem.class);
        Long idUsuario = mensagemSaveDTO.getAutorMensagem();
        Pessoa pessoa = getAutorMensagem(idUsuario);
        mensagem.setAutorMensagem(pessoa);

        return mensagem;
    }


    private MensagemGetDTO converterModel(Mensagem mensagem) {

        MensagemGetDTO mensagemGetDTO = modelMapper.map(mensagem, MensagemGetDTO.class);

        PessoaDTO pessoaDTO = pessoaService.converterModel(mensagem.getAutorMensagem());

        mensagemGetDTO.setAutorMensagem(pessoaDTO);

        return mensagemGetDTO;
    }


    private Pessoa getAutorMensagem(Long idautor) {
        return pessoaRepository.findById(idautor).orElseThrow(
                () -> new DadosException("Pessoa não localizada.")
        );
    }

    public PessoaDTO conveterPessoaModel(Pessoa pessoa) {
        return pessoaService.converterModel(pessoa);
    }

}
