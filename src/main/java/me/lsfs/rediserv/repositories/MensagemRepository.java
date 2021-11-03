package me.lsfs.rediserv.repositories;

import me.lsfs.rediserv.models.Mensagem;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface MensagemRepository extends JpaRepository<Mensagem, Long> {

}
