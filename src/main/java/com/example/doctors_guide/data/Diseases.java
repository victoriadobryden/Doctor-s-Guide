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
public class Diseases {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id; // Changed to Integer
    private String name;
    private String symptoms;
    private String procedures;

    // Constructors, getters, and setters...
}