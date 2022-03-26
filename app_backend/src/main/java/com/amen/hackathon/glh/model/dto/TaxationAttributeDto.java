package com.amen.hackathon.glh.model.dto;


import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@Builder
@AllArgsConstructor
@NoArgsConstructor
public class TaxationAttributeDto {
    private Long benchmarkAttributeId;
    private String name_english;
    private String name_polish;
    private String name_ukrainian;
}
