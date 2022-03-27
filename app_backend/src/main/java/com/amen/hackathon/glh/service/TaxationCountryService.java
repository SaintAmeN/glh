package com.amen.hackathon.glh.service;

import com.amen.hackathon.glh.model.BenchmarkAttribute;
import com.amen.hackathon.glh.model.BenchmarkAttributeTranslation;
import com.amen.hackathon.glh.model.BenchmarkAttributeValue;
import com.amen.hackathon.glh.model.TaxationCountry;
import com.amen.hackathon.glh.model.dto.TaxationAttributeValueDto;
import com.amen.hackathon.glh.model.dto.TaxationAttributeValueRequestDto;
import com.amen.hackathon.glh.model.dto.TaxationCountryDetailsDto;
import com.amen.hackathon.glh.model.dto.TaxationCountryDto;
import com.amen.hackathon.glh.model.mapper.TaxationAttributesMapper;
import com.amen.hackathon.glh.model.mapper.TaxationCountryMapper;
import com.amen.hackathon.glh.repository.TaxationAttributesRepository;
import com.amen.hackathon.glh.repository.TaxationAttributesValueRepository;
import com.amen.hackathon.glh.repository.TaxationCountryRepository;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;

import java.util.*;
import java.util.stream.Collectors;

@Slf4j
@Service
@RequiredArgsConstructor
public class TaxationCountryService {
    private final TaxationCountryRepository taxationCountryRepository;
    private final TaxationCountryMapper taxationCountryMapper;
    private final TaxationAttributesRepository taxationAttributesRepository;
    private final TaxationAttributesValueRepository taxationAttributesValueRepository;
    private final TaxationAttributesMapper taxationAttributesMapper;

    public List<TaxationCountryDto> getCountries() {
        return taxationCountryRepository.findAll()
                .stream()
                .map(taxationCountryMapper::taxationCountryToDto)
                .collect(Collectors.toList());
    }

    public void saveCountry(TaxationCountryDto dto) {
        taxationCountryRepository.save(taxationCountryMapper.taxationCountryDtoToEntity(dto));
    }

    public TaxationCountryDetailsDto getCountry(Long id) {
        Optional<TaxationCountry> taxationCountryRepositoryOptional = taxationCountryRepository.findById(id);
        if (taxationCountryRepositoryOptional.isPresent()) {
            TaxationCountry country = taxationCountryRepositoryOptional.get();

            TaxationCountryDetailsDto dto = new TaxationCountryDetailsDto();
            dto.setId(country.getId());
            dto.setName(country.getName());
            dto.setCode(country.getCode());

            List<TaxationAttributeValueDto> attributes = country.getAttributes()
                    .stream()
                    .map(benchmarkAttributeValue -> {
                        TaxationAttributeValueDto attributeValueDto = taxationAttributesMapper.attributeValueToDto(benchmarkAttributeValue);
                        for (BenchmarkAttributeTranslation translation : benchmarkAttributeValue.getAttribute().getTranslations()) {
                            if (translation.getCountryCode().equalsIgnoreCase("pl")) {
                                attributeValueDto.setName_polish(translation.getTranslation());
                            }
                            if (translation.getCountryCode().equalsIgnoreCase("ua")) {
                                attributeValueDto.setName_ukrainian(translation.getTranslation());
                            }
                        }

                        return attributeValueDto;
                    }).collect(Collectors.toList());

            dto.setAttributes(attributes);
            return dto;
        }
        log.warn("Country with id: " + id + " not found");
        return null;
    }

    public void saveAttributeValue(TaxationAttributeValueRequestDto dto) {
        Optional<TaxationCountry> taxationCountryRepositoryOptional = taxationCountryRepository.findById(dto.getCountry_id());
        if (taxationCountryRepositoryOptional.isPresent()) {
            TaxationCountry country = taxationCountryRepositoryOptional.get();

            Optional<BenchmarkAttribute> optionalBenchmarkAttribute = taxationAttributesRepository.findById(dto.getAttribute_id());
            if(optionalBenchmarkAttribute.isPresent()){
                BenchmarkAttribute benchmarkAttribute = optionalBenchmarkAttribute.get();

                BenchmarkAttributeValue benchmarkAttributeValue = new BenchmarkAttributeValue();
                benchmarkAttributeValue.setAttribute(benchmarkAttribute);
                benchmarkAttributeValue.setValue(dto.getAttribute_value());
                benchmarkAttributeValue.setCountry(country);

                taxationAttributesValueRepository.save(benchmarkAttributeValue);
                return;
            }
            log.warn("Benchmark Attribute with id: " + dto.getAttribute_id() + " not found");
            return;
        }
        log.warn("Country with id: " + dto.getCountry_id() + " not found");
    }
}
