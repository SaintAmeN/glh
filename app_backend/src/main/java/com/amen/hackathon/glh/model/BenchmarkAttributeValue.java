package com.amen.hackathon.glh.model;

import lombok.*;

import javax.persistence.*;

@Data
@Builder
@Entity
@AllArgsConstructor
@NoArgsConstructor
public class BenchmarkAttributeValue {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private BenchmarkPeriod period;

    /**
     * Period means number of that period.
     * For period YEAR, periodNumber = 0, year field indicates period year
     * For period MONTH, periodNumber = number of month 1-12
     * For period QUARTER, periodNumber = year quarter 1-4
     */
    private int periodNumber;
    private int year;

    private String value;

    @ManyToOne(fetch = FetchType.EAGER)
    @EqualsAndHashCode.Exclude
    @ToString.Exclude
    private BenchmarkAttribute attribute;

    @ManyToOne()
    @EqualsAndHashCode.Exclude
    @ToString.Exclude
    private TaxationCountry country;
}
