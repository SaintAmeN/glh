package com.amen.hackathon.glh.model;

import lombok.*;

import javax.persistence.*;
import java.util.Set;

@Data
@Builder
@Entity
@AllArgsConstructor
@NoArgsConstructor
public class ResidencyQuestionAnswer {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private String answer;
    private Boolean residencyResult;

    @ManyToOne
    @EqualsAndHashCode.Exclude
    @ToString.Exclude
    private ResidencyQuestion question;

    @OneToMany(mappedBy = "answer", fetch = FetchType.EAGER)
    @EqualsAndHashCode.Exclude
    @ToString.Exclude
    private Set<ResidencyQuestionAnswerTranslation> translations;

}
