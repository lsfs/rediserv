package me.lsfs.rediserv.repositories;

import me.lsfs.rediserv.models.Pessoa;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.Optional;

@Repository

public interface PessoaRepository extends JpaRepository<Pessoa, Long> {

    Optional<Pessoa> findByEmail(String email);
}
