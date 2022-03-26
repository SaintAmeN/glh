package com.amen.hackathon.glh.controller;

import com.amen.hackathon.glh.model.dto.TaxationAttributeDto;
import com.amen.hackathon.glh.model.dto.TaxationCountryDto;
import com.amen.hackathon.glh.service.TaxationAttributesService;
import com.amen.hackathon.glh.service.TaxationCountryService;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Slf4j
@RestController
@RequestMapping("/attributes")
@RequiredArgsConstructor
public class TaxationAttributesController {
    private final TaxationAttributesService taxationAttributesService;

    @GetMapping()
    public List<TaxationAttributeDto> get(){
        return taxationAttributesService.getAllAttributes();
    }

    @PostMapping()
    public void post(@RequestBody TaxationAttributeDto dto){
        taxationAttributesService.saveAttributes(dto);
    }
}
