package me.lsfs.rediserv.dtos;

import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;

public class DadosLoginDTO {

    private String email;
    private String senha;

    public DadosLoginDTO() {
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public void setSenha(String senha) {
        this.senha = senha;
    }

    public UsernamePasswordAuthenticationToken converter() {
        return new UsernamePasswordAuthenticationToken(email, senha);
    }
}
