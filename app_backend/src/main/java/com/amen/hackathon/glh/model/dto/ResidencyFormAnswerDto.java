package com.amen.hackathon.glh.model.dto;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@Builder
@AllArgsConstructor
@NoArgsConstructor
public class ResidencyFormAnswerDto {
    private String content;
    private Boolean resultResidency;
}
