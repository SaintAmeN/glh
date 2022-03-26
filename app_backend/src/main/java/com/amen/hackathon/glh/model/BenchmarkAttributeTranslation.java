package com.amen.hackathon.glh.model;

import lombok.*;

import javax.persistence.*;
import java.util.Set;

@Data
@Builder
@Entity
@AllArgsConstructor
@NoArgsConstructor
public class BenchmarkAttributeTranslation {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private String countryCode;
    private String translation;

    @ManyToOne()
    @EqualsAndHashCode.Exclude
    @ToString.Exclude
    private BenchmarkAttribute attribute;


}
