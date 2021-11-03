package me.lsfs.rediserv.models;



import javax.persistence.Entity;
import javax.persistence.ManyToOne;


@Entity
public class Tecnico extends Cargo{

    private String funcao;

    @ManyToOne
    private Nivel nivel;

    private String escolaridade;


    public Tecnico() {
    }

    public String getFuncao() {
        return funcao;
    }

    public void setFuncao(String funcao) {
        this.funcao = funcao;
    }

    public Nivel getNivel() {
        return nivel;
    }

    public void setNivel(Nivel nivelTecnico) {
        this.nivel = nivelTecnico;
    }

    public String getEscolaridade() {
        return escolaridade;
    }

    public void setEscolaridade(String escolaridade) {
        this.escolaridade = escolaridade;
    }
}
