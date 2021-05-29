package me.lsfs.rediserv.repositories;

import me.lsfs.rediserv.models.Estado;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import javax.transaction.Transactional;
import java.util.List;
import java.util.Optional;

@Repository
public interface EstadoRepository extends JpaRepository<Estado, Long> {

    @Query("SELECT e FROM Estado e WHERE UPPER(e.sigla) LIKE UPPER(:sigla)")
    Optional<Estado> findEstadoBySigla(String sigla);

}
