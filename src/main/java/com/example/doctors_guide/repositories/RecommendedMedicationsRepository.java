package com.example.doctors_guide.repositories;

import com.example.doctors_guide.data.RecommendedMedications;
import org.springframework.data.jpa.repository.JpaRepository;

public interface RecommendedMedicationsRepository extends JpaRepository<RecommendedMedications,Long> {

}
