package com.example.doctors_guide.controllers;

import com.example.doctors_guide.data.RecommendedMedications;
import com.example.doctors_guide.repositories.RecommendedMedicationsRepository;
import com.example.doctors_guide.services.RecommendedMedicationsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/api/recommended-medications")
public class RecommendedMedicationsController {

    private final RecommendedMedicationsService recommendedMedicationsService;

    @Autowired
    public RecommendedMedicationsController(RecommendedMedicationsService recommendedMedicationsService) {
        this.recommendedMedicationsService = recommendedMedicationsService;
    }

    @GetMapping
    public ResponseEntity<List<RecommendedMedications>> getAllRecommendedMedications() {
        List<RecommendedMedications> recommendedMedications = recommendedMedicationsService.getAllRecommendedMedications();
        return ResponseEntity.ok(recommendedMedications);
    }

}
