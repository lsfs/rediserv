package me.lsfs.rediserv.repositories;

import me.lsfs.rediserv.models.utils.TokenConfirmacao;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import java.time.LocalDateTime;
import java.util.Optional;

@Repository
public interface TokenConfirmacaoRepository extends JpaRepository<TokenConfirmacao, Long> {

    @Query("SELECT t from TokenConfirmacao t WHERE t.conteudoToken = :token")
    Optional<TokenConfirmacao> findByConteudoToken(String token);



    @Transactional
    @Modifying
    @Query("UPDATE TokenConfirmacao t SET t.dataConfirmacaoToken = :dataConfirmacao WHERE t.conteudoToken = :token")
    int updateDataConfirmacao(String token,
                          LocalDateTime dataConfirmacao);
}

