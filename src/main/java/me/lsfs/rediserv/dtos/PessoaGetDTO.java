package me.lsfs.rediserv.dtos;

import me.lsfs.rediserv.models.Cargo;

public class PessoaGetDTO {
    private Long id;
    private String nome;
    private String email;
    private Cargo cargo;
    private UnidadeGetDTO unidade;


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

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public Cargo getCargo() {
        return cargo;
    }

    public void setCargo(Cargo cargo) {
        this.cargo = cargo;
    }

    public UnidadeGetDTO getUnidade() {
        return unidade;
    }

    public void setUnidade(UnidadeGetDTO unidade) {
        this.unidade = unidade;
    }

}
