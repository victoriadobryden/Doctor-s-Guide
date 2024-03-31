package com.example.doctors_guide.data;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import lombok.*;

@Entity
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class Medications {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id; // Changed to Integer
    private String name;
    private Integer quantity;
    private Integer dosingMg;

    // Constructors, getters, and setters...
}

