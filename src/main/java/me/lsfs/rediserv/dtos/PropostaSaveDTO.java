package me.lsfs.rediserv.dtos;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;

import java.io.Serializable;
import java.util.List;

public class PropostaSaveDTO implements Serializable {

    private Long id;
    private Long idAutor;
    private List<Long> unidades;
    private String dataProposta;
    private String situacaoProposta;



    public PropostaSaveDTO() {
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public Long getIdAutor() {
        return idAutor;
    }

    public void setIdAutor(Long idAutor) {
        this.idAutor = idAutor;
    }

    public List<Long> getUnidades() {
        return unidades;
    }

    public void setUnidades(List<Long> unidades) {
        this.unidades = unidades;
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
