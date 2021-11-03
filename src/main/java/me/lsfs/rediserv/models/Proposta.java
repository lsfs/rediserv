package me.lsfs.rediserv.models;


import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import me.lsfs.rediserv.controllers.PropostaController;
import me.lsfs.rediserv.models.utils.SituacaoPropostaEnum;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;

import javax.persistence.*;
import java.time.LocalDate;
import java.util.Objects;
import java.util.Set;

@Entity
@Table(name="proposta")
public class Proposta {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @ManyToOne
    @JoinColumn(name = PropostaController.IDAUTOR)
    private Pessoa autorProposta;

    @ManyToMany
    @JsonIgnoreProperties("propostas")
    @JoinTable(
            name = "proposta_unidade",
            joinColumns = @JoinColumn(name = "idproposta"),
            inverseJoinColumns = @JoinColumn(name = "idunidade")
    )
    private Set<Unidade> unidades;

    private LocalDate dataProposta;

    private SituacaoPropostaEnum situacaoProposta;


    @ManyToMany(fetch = FetchType.LAZY, cascade = CascadeType.MERGE)
    @JsonIgnoreProperties("propostas")
    @JoinTable(
            name = "proposta_candidato",
            joinColumns = @JoinColumn(name = "idproposta"),
            inverseJoinColumns = @JoinColumn(name = "idpessoa")
    )
    private Set<Pessoa> candidatos;

    private String cargoAutor;


    public Proposta() {
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public Pessoa getAutorProposta() {
        return autorProposta;
    }

    public void setAutorProposta(Pessoa autorProposta) {
        this.autorProposta = autorProposta;
    }

    public Set<Unidade> getUnidades() {
        return unidades;
    }

    public void setUnidades(Set<Unidade> unidades) {
        this.unidades = unidades;
    }

    public LocalDate getDataProposta() {
        return dataProposta;
    }

    public void setDataProposta(LocalDate dataProposta) {
        this.dataProposta = dataProposta;
    }

    public SituacaoPropostaEnum getSituacaoProposta() {
        return situacaoProposta;
    }

    public void setSituacaoProposta(SituacaoPropostaEnum situacaoProposta) {
        this.situacaoProposta = situacaoProposta;
    }

    public Set<Pessoa> getCandidato() {
        return candidatos;
    }

    public void setCandidato(Set<Pessoa> candidato) {
        this.candidatos = candidato;
    }


    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        Proposta proposta = (Proposta) o;
        return id.equals(proposta.id);
    }

    @Override
    public int hashCode() {
        return Objects.hash(id);
    }

    @Override
    public String toString() {
        return ToStringBuilder.reflectionToString(this, ToStringStyle.JSON_STYLE);
    }
}
