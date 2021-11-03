package me.lsfs.rediserv.repositories;

import me.lsfs.rediserv.models.Professor;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

@Repository
public interface ProfessorRepository extends JpaRepository<Professor, Long> {


    @Query("SELECT DISTINCT p FROM Professor p")
    Page<Professor> listar(Pageable pageable);

}
