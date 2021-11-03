package me.lsfs.rediserv.models;

import me.lsfs.rediserv.models.utils.CategoriaMensagemEnum;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;

import javax.persistence.*;
import java.time.LocalDate;
import java.util.Objects;

@Entity
public class Mensagem {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @ManyToOne
    private Pessoa autorMensagem;

    private LocalDate dataMensagem;

    private String conteudo;

    private CategoriaMensagemEnum categoriaMensagem;

    public Mensagem() {
    }


    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public Pessoa getAutorMensagem() {
        return autorMensagem;
    }

    public void setAutorMensagem(Pessoa autorMensagem) {
        this.autorMensagem = autorMensagem;
    }

    public LocalDate getDataMensagem() {
        return dataMensagem;
    }

    public void setDataMensagem(LocalDate dataMensagem) {
        this.dataMensagem = dataMensagem;
    }

    public String getConteudo() {
        return conteudo;
    }

    public void setConteudo(String conteudo) {
        this.conteudo = conteudo;
    }

    public CategoriaMensagemEnum getCategoriaMensagem() {
        return categoriaMensagem;
    }

    public void setCategoriaMensagem(CategoriaMensagemEnum categoriaMensagem) {
        this.categoriaMensagem = categoriaMensagem;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        Mensagem mensagem = (Mensagem) o;
        return id.equals(mensagem.id);
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
