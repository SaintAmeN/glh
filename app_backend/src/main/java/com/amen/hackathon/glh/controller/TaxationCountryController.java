package com.amen.hackathon.glh.controller;

import com.amen.hackathon.glh.model.dto.TaxationCountryDto;
import com.amen.hackathon.glh.service.TaxationCountryService;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Slf4j
@RestController
@RequestMapping("/countries")
@RequiredArgsConstructor
public class TaxationCountryController {
    private final TaxationCountryService taxationCountryService;

    @GetMapping()
    public List<TaxationCountryDto> get(){
        return taxationCountryService.getCountries();
    }

    @PostMapping()
    public void post(@RequestBody TaxationCountryDto dto){
        taxationCountryService.saveCountry(dto);
    }
}
