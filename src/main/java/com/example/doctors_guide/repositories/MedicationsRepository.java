package com.example.doctors_guide.repositories;

import com.example.doctors_guide.data.Medications;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface MedicationsRepository extends JpaRepository<Medications, Integer> {
    
}

