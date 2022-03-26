package com.amen.hackathon.glh.model;

import lombok.*;

import javax.persistence.*;
import java.util.Set;

@Data
@Builder
@Entity
@AllArgsConstructor
@NoArgsConstructor
public class TaxationIncomeType {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private String name;

    private String description;

    @OneToMany
    @EqualsAndHashCode.Exclude
    @ToString.Exclude
    private Set<IncomeTaxationDeduction> incomeDeductionTypes;

    @OneToMany
    @EqualsAndHashCode.Exclude
    @ToString.Exclude
    private Set<IncomeTaxationRule> incomeDeductionRules;
}
