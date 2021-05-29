package me.lsfs.rediserv.repositories;

import me.lsfs.rediserv.models.Instituicao;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Optional;

@Repository
public interface InstituicaoRepository extends JpaRepository<Instituicao, Long> {

    @Query("SELECT DISTINCT i FROM Instituicao i"
            + " WHERE i.estado.id = :idEstado ORDER BY i.id")
    List<Instituicao> findInstituicaoByEstado (Long idEstado);


    @Query("SELECT i FROM Instituicao i WHERE UPPER(i.estado.regiao) " +
            "LIKE UPPER(:regiao) order by i.estado.id")
    List<Instituicao> findInstituicaoByRegiao(String regiao);
}
