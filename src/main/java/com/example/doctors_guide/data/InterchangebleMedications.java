package com.example.doctors_guide.data;

import jakarta.persistence.*;
import lombok.*;

@Entity
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Builder
@Table(name = "interchangeblemedications")
@IdClass(InterchangebleMedicationId.class) // Composite key class
public class InterchangebleMedications {
    @Id
    private Integer medication_id;

    @Id
    private Integer interchangeble_with_id;

    @ManyToOne
    @JoinColumn(name = "medication_id", insertable = false, updatable = false)
    private Medications medication;

    @ManyToOne
    @JoinColumn(name = "interchangeble_with_id", insertable = false, updatable = false)
    private Medications interchangebleWith;

}