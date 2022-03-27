package com.amen.hackathon.glh.repository;

import com.amen.hackathon.glh.model.BenchmarkAttribute;
import com.amen.hackathon.glh.model.BenchmarkAttributeValue;
import org.springframework.data.jpa.repository.JpaRepository;

public interface TaxationAttributesValueRepository extends JpaRepository<BenchmarkAttributeValue, Long> {
}
