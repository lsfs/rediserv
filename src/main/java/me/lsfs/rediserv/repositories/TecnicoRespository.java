package me.lsfs.rediserv.repositories;

import me.lsfs.rediserv.models.Tecnico;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface TecnicoRespository extends JpaRepository<Tecnico, Long> {

    @Query("SELECT DISTINCT t from Tecnico t order by t.id ASC")
    Page<Tecnico> listar(Pageable pageable);

    @Query("SELECT DISTINCT t from Tecnico t WHERE t.nivel.id = :id " +
            "order by t.funcao ASC")
    List<Tecnico> listarPorNivel(@Param("id") Long idNivel);




}
