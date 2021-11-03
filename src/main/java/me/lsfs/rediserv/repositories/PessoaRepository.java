package me.lsfs.rediserv.repositories;

import me.lsfs.rediserv.models.Pessoa;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import java.util.Optional;

@Repository
public interface PessoaRepository extends JpaRepository<Pessoa, Long> {

    Optional<Pessoa> findByEmail(String email);

    Boolean existsByEmail(String email);

    Optional<Pessoa> findById(Long id);

    @Query("SELECT DISTINCT p FROM Pessoa p")
    Page<Pessoa> listar(Pageable pageable);


    @Transactional
    @Modifying
    @Query("UPDATE Pessoa p SET p.enabled = TRUE WHERE p.email = :email")
    int ativarUsuario(String email);

}
