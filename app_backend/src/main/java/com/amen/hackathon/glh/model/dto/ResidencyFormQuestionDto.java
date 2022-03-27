package com.amen.hackathon.glh.model.dto;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.List;

@Data
@Builder
@AllArgsConstructor
@NoArgsConstructor
public class ResidencyFormQuestionDto {
    private Long order;
    private String question;
    private List<ResidencyFormAnswerDto> answers;
}
