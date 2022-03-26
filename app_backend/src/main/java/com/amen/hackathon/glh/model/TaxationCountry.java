package com.amen.hackathon.glh.model;

import lombok.*;

import javax.persistence.*;
import java.util.Set;

@Data
@Builder
@Entity
@AllArgsConstructor
@NoArgsConstructor
public class TaxationCountry {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private String name;

    /**
     * One country can have multiple attributes.
     * Attributes are shared, values are not.
     */
    @ManyToMany
    @ToString.Exclude
    @EqualsAndHashCode.Exclude
    private Set<BenchmarkAttributeValue> attributes;

    /**
     * One country can have multiple rules regarding different incomes.
     */
    @OneToMany
    @ToString.Exclude
    @EqualsAndHashCode.Exclude
    private Set<TaxationIncomeType> incomeType;
}
