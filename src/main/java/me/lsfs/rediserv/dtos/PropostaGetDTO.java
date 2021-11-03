package me.lsfs.rediserv.dtos;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;

import java.io.Serializable;
import java.util.List;
import java.util.Set;

public class PropostaGetDTO implements Serializable {

    private Long id;

    private PessoaDTO autor;
    private List<UnidadePropostaGetDTO> unidadePropostaGetDTOS;
    private String dataProposta;
    private String situacaoProposta;
    private Set<PessoaDTO> candidatos;
    private int numeroCandidatos;

    public PropostaGetDTO() {
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public PessoaDTO getAutor() {
        return autor;
    }

    public void setAutor(PessoaDTO autor) {
        this.autor = autor;
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


    public Set<PessoaDTO> getCandidatos() {
        return candidatos;
    }

    public void setCandidatos(Set<PessoaDTO> candidatos) {
        this.candidatos = candidatos;
    }

    public int getNumeroCandidatos() {
        return numeroCandidatos;
    }

    public void setNumeroCandidatos(int numeroCandidatos) {
        this.numeroCandidatos = numeroCandidatos;
    }

    @Override
    public String toString() {
        return ToStringBuilder.reflectionToString(this, ToStringStyle.JSON_STYLE);
    }
}
