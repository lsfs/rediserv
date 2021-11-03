package me.lsfs.rediserv.models.jwtpayload.request;

import java.util.Set;

import javax.validation.constraints.*;

public class CadastroRequest {
    @NotBlank
    @Size(min = 3, max = 20)
    private String nome;

    @NotBlank
    @Size(max = 50)
    @Email
    private String email;

    private Long cargo;

    private Long unidade;

    private Set<String> role;

    @NotBlank
    @Size(min = 6, max = 40)
    private String senha;

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

    public String getSenha() {
        return senha;
    }

    public void setSenha(String senha) {
        this.senha = senha;
    }

    public Set<String> getRole() {
        return this.role;
    }

    public void setRole(Set<String> role) {
        this.role = role;
    }

    public Long getCargo() {
        return cargo;
    }

    public void setCargo(Long cargo) {
        this.cargo = cargo;
    }

    public Long getUnidade() {
        return unidade;
    }

    public void setUnidade(Long unidade) {
        this.unidade = unidade;
    }
}