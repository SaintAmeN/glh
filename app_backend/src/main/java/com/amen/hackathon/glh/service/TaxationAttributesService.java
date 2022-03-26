package com.amen.hackathon.glh.service;

import com.amen.hackathon.glh.model.BenchmarkAttribute;
import com.amen.hackathon.glh.model.BenchmarkAttributeTranslation;
import com.amen.hackathon.glh.model.dto.TaxationAttributeDto;
import com.amen.hackathon.glh.model.dto.TaxationCountryDto;
import com.amen.hackathon.glh.model.mapper.TaxationAttributesMapper;
import com.amen.hackathon.glh.model.mapper.TaxationCountryMapper;
import com.amen.hackathon.glh.repository.TaxationAttributesRepository;
import com.amen.hackathon.glh.repository.TaxationAttributesTranslationRepository;
import com.amen.hackathon.glh.repository.TaxationCountryRepository;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.stream.Collectors;

@Slf4j
@Service
@RequiredArgsConstructor
public class TaxationAttributesService {
    private final TaxationAttributesRepository taxationAttributesRepository;
    private final TaxationAttributesTranslationRepository taxationAttributesTranslationRepository;
    private final TaxationAttributesMapper taxationAttributesMapper;


    public List<TaxationAttributeDto> getAllAttributes() {
        List<BenchmarkAttribute> benchmarkAttributes = taxationAttributesRepository.findAll();
        return benchmarkAttributes.stream().map(this::mapToDto).collect(Collectors.toList());
    }

    private TaxationAttributeDto mapToDto(BenchmarkAttribute attribute) {
        TaxationAttributeDto dto = new TaxationAttributeDto();
        dto.setBenchmarkAttributeId(attribute.getId());
        dto.setName_english(attribute.getName());

        for (BenchmarkAttributeTranslation translation : attribute.getTranslations()) {
            if(translation.getCountryCode().equalsIgnoreCase("pl")){
                dto.setName_polish(translation.getTranslation());
            }else if (translation.getCountryCode().equalsIgnoreCase("ua")){
                dto.setName_ukrainian(translation.getTranslation());
            }
        }

        return dto;
    }

    public void saveAttributes(TaxationAttributeDto dto) {
        if(dto.getName_english() != null && !dto.getName_english().isEmpty()) {
            BenchmarkAttribute attribute = taxationAttributesRepository
                    .save(BenchmarkAttribute.builder().name(dto.getName_english()).build());
            if(dto.getName_polish() != null && !dto.getName_polish().isEmpty()) {
                taxationAttributesTranslationRepository.save(
                        BenchmarkAttributeTranslation.builder()
                                .translation(dto.getName_polish())
                                .countryCode("pl")
                                .attribute(attribute)
                                .build());
            }
            if(dto.getName_ukrainian() != null && !dto.getName_ukrainian().isEmpty()) {
                taxationAttributesTranslationRepository.save(
                        BenchmarkAttributeTranslation.builder()
                                .translation(dto.getName_ukrainian())
                                .countryCode("ua")
                                .attribute(attribute)
                                .build());
            }
        }

    }
}
