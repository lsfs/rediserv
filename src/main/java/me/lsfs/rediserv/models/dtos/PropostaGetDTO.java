package me.lsfs.rediserv.models.dtos;

import java.util.List;

public class PropostaGetDTO {

    private Long id;
    private Long autor;
    private String nomeautor;
    private List<UnidadePropostaGetDTO> unidadePropostaGetDTOS;
    private String dataProposta;
    private String situacaoProposta;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public Long getAutor() {
        return autor;
    }

    public void setAutor(Long autor) {
        this.autor = autor;
    }

    public String getNomeautor() {
        return nomeautor;
    }

    public void setNomeautor(String nomeautor) {
        this.nomeautor = nomeautor;
    }

    public List<UnidadePropostaGetDTO> getUnidadePropostaGetDTOS() {
        return unidadePropostaGetDTOS;
    }

    public void setUnidadePropostaGetDTOS(List<UnidadePropostaGetDTO> unidadePropostaGetDTOS) {
        this.unidadePropostaGetDTOS = unidadePropostaGetDTOS;
    }

    public String getDataProposta() {
        return dataProposta;
    }

    public void setDataProposta(String dataProposta) {
        this.dataProposta = dataProposta;
    }

    public String getSituacaoProposta() {
        return situacaoProposta;
    }

    public void setSituacaoProposta(String situacaoProposta) {
        this.situacaoProposta = situacaoProposta;
    }
}
