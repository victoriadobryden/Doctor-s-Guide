package com.example.doctors_guide.repositories;

import com.example.doctors_guide.data.RecommendedMedications;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface RecommendedMedicationsRepository extends JpaRepository<RecommendedMedications,Integer> {

    List<RecommendedMedications> findByDiseaseId(Integer diseaseId);
}
