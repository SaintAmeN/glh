package com.amen.hackathon.glh.model.dto;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.List;
import java.util.Map;

@Data
@Builder
@AllArgsConstructor
@NoArgsConstructor
public class TaxationCountryDetailsDto {
    private Long id;
    private String name;
    private String code;

    // Map of language -> attribute, value
    private List<TaxationAttributeValueDto> attributes;
}
