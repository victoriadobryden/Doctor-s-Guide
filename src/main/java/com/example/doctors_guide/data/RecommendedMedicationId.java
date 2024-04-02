package com.example.doctors_guide.data;

import lombok.AllArgsConstructor;
import lombok.NoArgsConstructor;

import java.io.Serializable;
import java.util.Objects;
@AllArgsConstructor
@NoArgsConstructor
public class RecommendedMedicationId implements Serializable {
    private Integer disease_id; // match the type and name with the entity fields
    private Integer medication_id;
    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        RecommendedMedicationId that = (RecommendedMedicationId) o;
        return Objects.equals(disease_id, that.disease_id) &&
                Objects.equals(medication_id, that.medication_id);
    }

    @Override
    public int hashCode() {
        return Objects.hash(disease_id, medication_id);
    }
}
