package com.amen.hackathon.glh.model;

import lombok.*;

import javax.persistence.*;

@Data
@Builder
@Entity
@AllArgsConstructor
@NoArgsConstructor
public class ResidencyQuestionTranslation {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private String countryCode;
    private String translation;

    @ManyToOne()
    @EqualsAndHashCode.Exclude
    @ToString.Exclude
    private ResidencyQuestion question;

}
