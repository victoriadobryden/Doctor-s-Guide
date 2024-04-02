package com.example.doctors_guide.data;

import jakarta.persistence.*;
import lombok.*;

import java.util.List;
import java.util.Set;

@Entity
@Table(name = "diseases")
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class Diseases {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;

    private String name;
    private String symptoms;
    private String procedures;

    @OneToMany(mappedBy = "disease")
    private Set<RecommendedMedications> recommendedMedications;
}