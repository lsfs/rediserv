package me.lsfs.rediserv.dtos;

public class CargoSaveDTO {

    private Long id;
    private String nome;
    private Long area;

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

    public Long getArea() {
        return area;
    }

    public void setArea(Long idarea) {
        this.area = idarea;
    }
}
