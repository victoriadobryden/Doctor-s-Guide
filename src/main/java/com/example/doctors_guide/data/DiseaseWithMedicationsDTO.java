package com.example.doctors_guide.data;

import jakarta.persistence.Table;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.Setter;

import java.util.Set;
@Getter
@AllArgsConstructor

public class DiseaseWithMedicationsDTO {
    private Diseases disease;

    private Set<RecommendedMedications> recommendedMedications;


}