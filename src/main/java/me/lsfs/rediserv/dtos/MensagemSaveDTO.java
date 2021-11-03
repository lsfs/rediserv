package me.lsfs.rediserv.dtos;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;

import java.util.Objects;

public class MensagemSaveDTO {

    private Long id;
    private Long autorMensagem;
    private String dataMensagem;
    private String categoriaMensagem;
    private String conteudo;


    public MensagemSaveDTO() {
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public Long getAutorMensagem() {
        return autorMensagem;
    }

    public void setAutorMensagem(Long autorMensagem) {
        this.autorMensagem = autorMensagem;
    }

    public String getDataMensagem() {
        return dataMensagem;
    }

    public void setDataMensagem(String dataMensagem) {
        this.dataMensagem = dataMensagem;
    }

    public String getConteudo() {
        return conteudo;
    }

    public void setConteudo(String conteudo) {
        this.conteudo = conteudo;
    }

    public String getCategoriaMensagem() {
        return categoriaMensagem;
    }

    public void setCategoriaMensagem(String categoriaMensagem) {
        this.categoriaMensagem = categoriaMensagem;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        MensagemSaveDTO mensagem = (MensagemSaveDTO) o;
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
