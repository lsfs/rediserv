package me.lsfs.rediserv.models.utils;

import me.lsfs.rediserv.models.Pessoa;
import org.apache.tomcat.jni.Local;

import javax.persistence.*;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.util.Objects;
import java.util.UUID;

@Entity
@Table(name = "token_confirmacao")
public class TokenConfirmacao {


    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private String conteudoToken;

    private LocalDateTime dataCriacaoToken;


    private LocalDateTime dataConfirmacaoToken;

    private LocalDateTime dataExpiracaoToken;

    @ManyToOne
    @JoinColumn(nullable = false, name = "pessoa_id")
    private Pessoa pessoa;

    public TokenConfirmacao() {

    }

    public TokenConfirmacao(Pessoa pessoa,
                            String conteudoToken,
                            LocalDateTime dataCriacaoToken,
                            LocalDateTime dataExpiracaoToken
    ) {
        this.pessoa = pessoa;
        this.dataCriacaoToken = dataCriacaoToken;
        this.dataExpiracaoToken = dataExpiracaoToken;
        this.conteudoToken = conteudoToken;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getConteudoToken() {
        return conteudoToken;
    }

    public void setConteudoToken(String conteudoToken) {
        this.conteudoToken = conteudoToken;
    }

    public LocalDateTime getDataCriacaoToken() {
        return dataCriacaoToken;
    }

    public void setDataCriacaoToken(LocalDateTime dataCriacaoToken) {
        this.dataCriacaoToken = dataCriacaoToken;
    }

    public LocalDateTime getDataExpiracaoToken() {
        return dataExpiracaoToken;
    }

    public void setDataExpiracaoToken(LocalDateTime dataExpiracaoToken) {
        this.dataExpiracaoToken = dataExpiracaoToken;
    }

    public LocalDateTime getDataConfirmacaoToken() {
        return dataConfirmacaoToken;
    }

    public void setDataConfirmacaoToken(LocalDateTime dataConfirmacaoToken) {
        this.dataConfirmacaoToken = dataConfirmacaoToken;
    }

    public Pessoa getPessoa() {
        return pessoa;
    }

    public void setPessoa(Pessoa pessoa) {
        this.pessoa = pessoa;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        TokenConfirmacao that = (TokenConfirmacao) o;
        return id.equals(that.id);
    }

    @Override
    public int hashCode() {
        return Objects.hash(id);
    }
}
