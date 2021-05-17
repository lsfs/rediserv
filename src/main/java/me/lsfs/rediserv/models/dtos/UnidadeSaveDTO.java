package me.lsfs.rediserv.models.dtos;

import java.io.Serializable;

public class UnidadeSaveDTO implements Serializable {

    private Long id;
    private String nome;
    private String endereco;
    private Long instituicao;
    private Long cidade;
    private String telefone;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getEndereco() {
        return endereco;
    }

    public void setEndereco(String endereco) {
        this.endereco = endereco;
    }

    public Long getInstituicao() {
        return instituicao;
    }

    public void setInstituicao(Long instituicao) {
        this.instituicao = instituicao;
    }

    public Long getCidade() {
        return cidade;
    }

    public void setCidade(Long cidade) {
        this.cidade = cidade;
    }

    public String getTelefone() {
        return telefone;
    }

    public void setTelefone(String telefone) {
        this.telefone = telefone;
    }
}
