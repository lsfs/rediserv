package me.lsfs.rediserv.repositories;

import me.lsfs.rediserv.controllers.PropostaController;
import me.lsfs.rediserv.models.Pessoa;
import me.lsfs.rediserv.models.Proposta;
import me.lsfs.rediserv.models.utils.SituacaoPropostaEnum;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import javax.transaction.Transactional;
import java.util.List;
import java.util.Optional;
import java.util.Set;

@Repository
public interface PropostaRepository extends JpaRepository<Proposta, Long> {

    @Query("SELECT DISTINCT p FROM Proposta p"
            + " WHERE (p.situacaoProposta = :situacaoProposta OR :situacaoProposta IS NULL) "
            + " AND (p.autorProposta.id = :idautor OR :idautor IS NULL) "
            + "order by p.dataProposta DESC"
    )
    List<Proposta> listar(
            @Param(PropostaController.SITUACAO_PROPOSTA) SituacaoPropostaEnum situacaoProposta,
            @Param(PropostaController.IDAUTOR) Long idautor
    );


    @Query("SELECT DISTINCT p from Proposta p " +
            " join p.unidades unidade" +
            " join unidade.instituicao instituicao" +
            " join instituicao.estado estado" +
            " join p.autorProposta autor" +
            " join autor.cargo cargo" +
            " where instituicao.id = :idinstituicao OR :idinstituicao IS NULL" +
            " AND (estado.id = :idestado OR :idestado IS NULL) " +
            " AND (cargo.descricao = :cargo OR :cargo IS NULL) " +
            " AND (p.situacaoProposta = :situacaoProposta OR :situacaoProposta IS NULL)" +
            " ORDER BY p.dataProposta DESC")
    Page<Proposta> listagemFiltrada(
            Pageable pageable,
            @Param("idestado") Long idestado,
            @Param("cargo") String cargo,
            @Param("idinstituicao") Long idinstituicao,
            @Param(PropostaController.SITUACAO_PROPOSTA) SituacaoPropostaEnum situacaoProposta
    );


    @Transactional
    @Query("SELECT p.candidatos FROM Proposta p WHERE (p.id) = :idproposta")
    Set<Pessoa> buscarCandidatos(@Param("idproposta") Long idproposta);


    @Query(
            "SELECT DISTINCT p from Pessoa pessoa inner join pessoa.propostasCandidatadas p where pessoa.id = :idcandidato"
    )
    List<Proposta> filtrarPorCandidato(@Param("idcandidato") Long idcandidato);


    Optional<Proposta> findPropostaById(Long id);

}
