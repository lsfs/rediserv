package me.lsfs.rediserv.repositories;

import me.lsfs.rediserv.models.Role;
import me.lsfs.rediserv.models.utils.RoleEnum;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.Optional;

@Repository
public interface RoleRepository extends JpaRepository<Role, Long> {
    Optional<Role> findByNome(RoleEnum name);
}