package com.example.doctors_guide.data;

import jakarta.persistence.*;
import lombok.*;

@Entity
@Table(name = "recommendedmedications")
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Builder
@IdClass(RecommendedMedicationId.class)
public class RecommendedMedications {
    @Id
    private Integer disease_id;

    @Getter
    @Id
    private Integer medication_id;

    private Integer recommended_dosing_mg;

    @ManyToOne
    @JoinColumn(name = "disease_id", insertable = false, updatable = false)
    private Diseases disease;

    @ManyToOne
    @JoinColumn(name = "medication_id", insertable = false, updatable = false)
    private Medications medication;

    public RecommendedMedications(Integer disease_id, Integer medication_id, Integer recommended_dosing_mg) {
        this.disease_id = disease_id;
        this.medication_id = medication_id;
        this.recommended_dosing_mg = recommended_dosing_mg;
    }

}