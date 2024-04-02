package com.example.doctors_guide.services;

import com.example.doctors_guide.data.Medications;
import com.example.doctors_guide.data.RecommendedMedications;
import com.example.doctors_guide.repositories.MedicationsRepository;
import com.example.doctors_guide.repositories.RecommendedMedicationsRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;

@Service
public class RecommendedMedicationsService {

    private final RecommendedMedicationsRepository recommendedMedicationsRepository;

    @Autowired
    public RecommendedMedicationsService(RecommendedMedicationsRepository recommendedMedicationsRepository) {
        this.recommendedMedicationsRepository = recommendedMedicationsRepository;
    }

    public List<RecommendedMedications> getAllRecommendedMedications() {
        return recommendedMedicationsRepository.findAll();
    }

    public List<Medications> findMedicationsForDisease(Integer diseaseId) {
        List<RecommendedMedications> recommendedMedications = recommendedMedicationsRepository.findByDiseaseId(diseaseId);
        return recommendedMedications.stream()
                .map(RecommendedMedications::getMedication)
                .collect(Collectors.toList());
    }

}
