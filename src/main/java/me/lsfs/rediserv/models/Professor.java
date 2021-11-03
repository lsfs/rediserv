package me.lsfs.rediserv.models;

import me.lsfs.rediserv.models.utils.ClasseProfessorEnum;

import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

@Entity
public class Professor extends Cargo{

    private ClasseProfessorEnum classe;


    private String area;

    public Professor() {
    }

    public ClasseProfessorEnum getClasse() {
        return classe;
    }

    public void setClasse(ClasseProfessorEnum classe) {
        this.classe = classe;
    }

    public String getArea() {
        return area;
    }

    public void setArea(String area) {
        this.area = area;
    }
}
