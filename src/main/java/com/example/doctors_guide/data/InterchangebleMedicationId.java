package com.example.doctors_guide.data;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;

import java.io.Serializable;
import java.util.Objects;

@Getter
@AllArgsConstructor
@NoArgsConstructor
public class InterchangebleMedicationId implements Serializable {
    private Integer medication_id;
    private Integer interchangeble_with_id;

    public void setMedication_id(Integer medication_id) {
        this.medication_id = medication_id;
    }

    public void setInterchangeble_with_id(Integer interchangeble_with_id) {
        this.interchangeble_with_id = interchangeble_with_id;
    }

    // Equals and HashCode
    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (!(o instanceof InterchangebleMedicationId)) return false;
        InterchangebleMedicationId that = (InterchangebleMedicationId) o;
        return Objects.equals(getMedication_id(), that.getMedication_id()) &&
                Objects.equals(getInterchangeble_with_id(), that.getInterchangeble_with_id());
    }

    @Override
    public int hashCode() {
        return Objects.hash(getMedication_id(), getInterchangeble_with_id());
    }

}
