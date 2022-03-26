package com.amen.hackathon.glh.repository;

import com.amen.hackathon.glh.model.ApplicationUserRole;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.Optional;

public interface ApplicationUserRoleRepository extends JpaRepository<ApplicationUserRole, Long> {
    boolean existsByName(String name);
    Optional<ApplicationUserRole> findByName(String name);
}
