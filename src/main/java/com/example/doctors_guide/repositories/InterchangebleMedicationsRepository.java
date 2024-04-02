package com.example.doctors_guide.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import com.example.doctors_guide.data.InterchangebleMedications;

import java.util.List;

@Repository
public interface InterchangeableMedicationsRepository extends JpaRepository<InterchangebleMedications, Integer> {
    List<InterchangebleMedications> findByMedicationIdOrInterchangebleWithId(Integer medicationId, Integer interchangeableWithId);
}

