package me.lsfs.rediserv.dtos;


import me.lsfs.rediserv.models.Instituicao;

import java.io.Serializable;

public class UnidadeGetDTO implements Serializable {

    private Long id;
    private String nome;
    private String endereco;
    private Instituicao instituicao;
    private Long idcidade;
    private String nomeCidade;
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

    public Instituicao getInstituicao() {
        return instituicao;
    }

    public void setInstituicao(Instituicao instituicao) {
        this.instituicao = instituicao;
    }

    public Long getIdcidade() {
        return idcidade;
    }

    public void setIdcidade(Long idcidade) {
        this.idcidade = idcidade;
    }

    public String getNomeCidade() {
        return nomeCidade;
    }

    public void setNomeCidade(String nomeCidade) {
        this.nomeCidade = nomeCidade;
    }

    public String getTelefone() {
        return telefone;
    }

    public void setTelefone(String telefone) {
        this.telefone = telefone;
    }
}
