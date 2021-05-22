package me.lsfs.rediserv.repositories;

import me.lsfs.rediserv.models.Cargo;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Optional;


@Repository
public interface CargoRepository extends JpaRepository<Cargo,Long> {


    @Query("SELECT c FROM Cargo c "
            + " WHERE c.area.id = :idArea ORDER BY c.nome")
    Optional<List<Cargo>> findByArea(Long idArea);

}
