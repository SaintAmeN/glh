package com.amen.hackathon.glh.repository;

import com.amen.hackathon.glh.model.BenchmarkAttribute;
import com.amen.hackathon.glh.model.BenchmarkAttributeTranslation;
import org.springframework.data.jpa.repository.JpaRepository;

public interface TaxationAttributesTranslationRepository extends JpaRepository<BenchmarkAttributeTranslation, Long> {
}
