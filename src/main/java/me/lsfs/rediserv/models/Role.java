package me.lsfs.rediserv.models;

import me.lsfs.rediserv.models.utils.RoleEnum;

import javax.persistence.*;


@Entity
@Table(name = "roles")
public class Role {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Enumerated(EnumType.STRING)
    @Column(length = 20)
    private RoleEnum nome;

    public Role() {

    }

    public Role(RoleEnum nome) {
        this.nome = nome;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public RoleEnum getNome() {
        return nome;
    }

    public void setNome(RoleEnum nome) {
        this.nome = nome;
    }
}
