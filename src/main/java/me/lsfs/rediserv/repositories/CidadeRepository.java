package me.lsfs.rediserv.repositories;

import me.lsfs.rediserv.models.Cidade;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface CidadeRepository extends JpaRepository<Cidade, Long> {

    @Query("SELECT DISTINCT c FROM Cidade c")
    Page<Cidade> listar(Pageable pageable);


    @Query("SELECT DISTINCT c FROM Cidade c"
            + " WHERE c.estado.id = :idEstado ORDER BY c.nome")
    List<Cidade> findCidadeByEstado (Long idEstado);

}
