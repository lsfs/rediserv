package me.lsfs.rediserv.models;


import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import me.lsfs.rediserv.models.utils.SituacaoPropostaEnum;

import javax.persistence.*;
import java.time.LocalDate;
import java.util.List;
import java.util.Objects;

@Entity
@Table(name="proposta")
public class Proposta {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @ManyToOne
    @JoinColumn(name = "idautor")
    private Pessoa autorProposta;

    @ManyToMany
    @JsonIgnoreProperties("propostas")
    @JoinTable(
            name = "proposta_unidade",
            joinColumns = @JoinColumn(name = "idproposta"),
            inverseJoinColumns = @JoinColumn(name = "idunidade")
    )
    private List<Unidade> unidades;

    private LocalDate dataProposta;

    private SituacaoPropostaEnum situacaoProposta;

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

    public List<Unidade> getUnidades() {
        return unidades;
    }

    public void setUnidades(List<Unidade> unidades) {
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
}
