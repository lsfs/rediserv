package me.lsfs.rediserv.dtos;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;

import java.util.Objects;

public class MensagemGetDTO {

    private Long id;
    private PessoaDTO autorMensagem;
    private String dataMensagem;
    private String categoriaMensagem;
    private String conteudo;

    public MensagemGetDTO() {

    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public PessoaDTO getAutorMensagem() {
        return autorMensagem;
    }

    public void setAutorMensagem(PessoaDTO autorMensagem) {
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
        MensagemGetDTO mensagem = (MensagemGetDTO) o;
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
