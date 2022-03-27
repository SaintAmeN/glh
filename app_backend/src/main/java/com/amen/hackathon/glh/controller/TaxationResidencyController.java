package com.amen.hackathon.glh.controller;

import com.amen.hackathon.glh.model.dto.ResidencyFormDto;
import com.amen.hackathon.glh.service.TaxationResidencyService;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@Slf4j
@RestController
@RequestMapping("/residency")
@RequiredArgsConstructor
public class TaxationResidencyController {
    private final TaxationResidencyService taxationResidencyService;

    @GetMapping("/{code}/{lang}")
    public ResidencyFormDto getResidencyForm(@PathVariable String code, @PathVariable String lang){
        return taxationResidencyService.getResidencyForm(code, lang);
    }

}
