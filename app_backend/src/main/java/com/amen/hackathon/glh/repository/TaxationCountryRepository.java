package com.amen.hackathon.glh.repository;

import com.amen.hackathon.glh.model.ApplicationUserRole;
import com.amen.hackathon.glh.model.TaxationCountry;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.Optional;

public interface TaxationCountryRepository extends JpaRepository<TaxationCountry, Long> {
    Optional<TaxationCountry> findByCode(String code);
}
