package me.lsfs.rediserv.models;


import com.fasterxml.jackson.annotation.JsonIgnore;
import me.lsfs.rediserv.models.utils.TokenConfirmacao;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import org.hibernate.annotations.OnDelete;
import org.hibernate.annotations.OnDeleteAction;

import javax.persistence.*;
import javax.validation.constraints.Email;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.Size;
import java.util.*;

@Entity
@Table(	name = "pessoa",
        uniqueConstraints = {
                @UniqueConstraint(columnNames = "email")
        })
public class Pessoa {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;

    @NotBlank
    @Size(max = 20)
    private String nome;

    @NotBlank
    @Size(max = 50)
    @Email
    private String email;

    @NotBlank
    @Size(max = 120)
    private String password;

    @ManyToOne
    @JoinColumn(name="idunidade")
    private Unidade unidade;

    @ManyToOne
    @JoinColumn(name="idcargo")
    private Cargo cargo;

    @JsonIgnore
    @ManyToMany(mappedBy = "candidatos", cascade = CascadeType.ALL)
    private List<Proposta> propostasCandidatadas;

    @JsonIgnore
    @OneToMany(mappedBy = "autorProposta", cascade = CascadeType.ALL)
    private List<Proposta> propostasCriadas;

    @JsonIgnore
    @OneToMany(mappedBy = "autorMensagem", cascade = CascadeType.ALL)
    private List<Mensagem> mensagens;

    private boolean enabled = false;


    @ManyToMany(fetch = FetchType.LAZY)
    @OnDelete(action = OnDeleteAction.CASCADE)
    @JoinTable(	name = "pessoa_role",
            joinColumns = @JoinColumn(name = "pessoa_id"),
            inverseJoinColumns = @JoinColumn(name = "role_id"))
    private Set<Role> roles = new HashSet<>();

    public Pessoa() {
    }

    @OneToMany(mappedBy = "pessoa", cascade = CascadeType.ALL)
    private List<TokenConfirmacao> tokenConfirmacao;


    public Pessoa(String nome, String email, String password, Unidade unidade, Cargo cargo) {
        this.nome = nome;
        this.email = email;
        this.password = password;
        this.unidade = unidade;
        this.cargo = cargo;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String username) {
        this.nome = username;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public Set<Role> getRoles() {
        return roles;
    }

    public void setRoles(Set<Role> roles) {
        this.roles = roles;
    }

    public Unidade getUnidade() {
        return unidade;
    }

    public void setUnidade(Unidade unidade) {
        this.unidade = unidade;
    }

    public Cargo getCargo() {
        return cargo;
    }

    public void setCargo(Cargo cargo) {
        this.cargo = cargo;
    }


    public boolean isEnabled() {
        return enabled;
    }

    public void setEnabled(boolean enabled) {
        this.enabled = enabled;
    }

    public List<Proposta> getPropostasCandidatadas() {
        return propostasCandidatadas;
    }

    public void setPropostasCandidatadas(List<Proposta> propostas) {
        this.propostasCandidatadas = propostas;
    }

    public List<Proposta> getPropostasCriadas() {
        return propostasCriadas;
    }

    public void setPropostasCriadas(List<Proposta> propostasCriadas) {
        this.propostasCriadas = propostasCriadas;
    }

    @Override
    public String toString() {
        return ToStringBuilder.reflectionToString(this, ToStringStyle.JSON_STYLE);
    }

}
