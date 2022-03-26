package com.amen.hackathon.glh.repository;

import com.amen.hackathon.glh.model.BenchmarkAttribute;
import com.amen.hackathon.glh.model.TaxationCountry;
import org.springframework.data.jpa.repository.JpaRepository;

public interface TaxationAttributesRepository extends JpaRepository<BenchmarkAttribute, Long> {
}
