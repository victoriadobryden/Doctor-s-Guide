package com.example.doctors_guide.services;

import com.example.doctors_guide.data.RecommendedMedications;
import com.example.doctors_guide.repositories.RecommendedMedicationsRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

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

    // Additional service methods can be defined here
}
