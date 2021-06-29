package me.lsfs.rediserv.repositories;

import me.lsfs.rediserv.models.Cidade;
import me.lsfs.rediserv.models.Unidade;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface UnidadeRepository extends JpaRepository<Unidade, Long> {

    @Query("SELECT u from Unidade u WHERE u.instituicao.id = :id")
    List<Unidade> findByInstituicao(Long id);

    @Query("SELECT DISTINCT u FROM Unidade u")
    Page<Unidade> listar(Pageable pageable);



}
