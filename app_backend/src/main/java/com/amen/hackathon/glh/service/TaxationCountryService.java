package com.amen.hackathon.glh.service;

import com.amen.hackathon.glh.model.TaxationCountry;
import com.amen.hackathon.glh.model.dto.TaxationCountryDto;
import com.amen.hackathon.glh.model.mapper.TaxationCountryMapper;
import com.amen.hackathon.glh.repository.TaxationCountryRepository;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.stream.Collectors;

@Slf4j
@Service
@RequiredArgsConstructor
public class TaxationCountryService {
    private final TaxationCountryRepository taxationCountryRepository;
    private final TaxationCountryMapper taxationCountryMapper;

    public List<TaxationCountryDto> getCountries() {
        return taxationCountryRepository.findAll()
                .stream()
                .map(taxationCountryMapper::taxationCountryToDto)
                .collect(Collectors.toList());
    }

    public void saveCountry(TaxationCountryDto dto) {
        taxationCountryRepository.save(taxationCountryMapper.taxationCountryDtoToEntity(dto));
    }
}
