package com.amen.hackathon.glh.model.dto;


import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@Builder
@AllArgsConstructor
@NoArgsConstructor
public class TaxationAttributeValueRequestDto {
    private Long attribute_id;
    private Long country_id;
    private String attribute_value;
}
