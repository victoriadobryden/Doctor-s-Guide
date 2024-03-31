package com.example.doctors_guide.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import com.example.doctors_guide.data.InterchangeableMedications;

@Repository
public interface InterchangeableMedicationsRepository extends JpaRepository<InterchangeableMedications, Long> {
    // Custom methods
}
