package me.lsfs.rediserv.models;
import javax.persistence.*;

@Entity
@Table(name="pessoa")
public class Pessoa {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private String nome;

   // private Usuario usuario;

    @ManyToOne
    @JoinColumn(name = "idcargo")
    private Cargo cargo;

    @ManyToOne
    @JoinColumn(name = "idunidade")
    private Unidade unidade;


}
