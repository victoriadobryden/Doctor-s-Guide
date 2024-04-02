package com.example.doctors_guide.services;

import com.example.doctors_guide.controllers.DiseaseNotFoundException;
import com.example.doctors_guide.data.DiseaseWithMedicationsDTO;
import com.example.doctors_guide.data.Diseases;
import com.example.doctors_guide.data.Medications;
import com.example.doctors_guide.data.RecommendedMedications;
import com.example.doctors_guide.repositories.DiseasesRepository;
import com.example.doctors_guide.repositories.MedicationsRepository;
import com.example.doctors_guide.repositories.RecommendedMedicationsRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.relational.core.sql.In;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;
import java.util.Set;
import java.util.stream.Collectors;

@Service
public class DiseasesService {
    private final DiseasesRepository diseasesRepository;


    @Autowired
    public DiseasesService(DiseasesRepository diseasesRepository) {
        this.diseasesRepository = diseasesRepository;
    }

    public List<Diseases> getAllDiseases() {
        return diseasesRepository.findAll();
    }

    public List<Diseases> findDiseases(String searchTerm) {
        // This is a simple search logic example
        // The actual implementation will depend on how you want to perform the search
        return diseasesRepository.findAll().stream()
                .filter(disease -> disease.getName().contains(searchTerm) || disease.getSymptoms().contains(searchTerm))
                .collect(Collectors.toList());
    }

    public Diseases getDiseaseById(Integer id) {
        return diseasesRepository.findById(id)
                .orElseThrow(() -> new DiseaseNotFoundException(id));
    }

    public List<Diseases> findDiseaseByNameOrSymptoms(String searchTerm) {
        return diseasesRepository.findByNameContainingIgnoreCaseOrSymptomsContainingIgnoreCase(searchTerm, searchTerm);
    }

    public DiseaseWithMedicationsDTO findDiseaseWithMedications(Integer diseaseId) {
        Diseases disease = diseasesRepository.findById(diseaseId)
                .orElseThrow(() -> new DiseaseNotFoundException(0));

        Set<RecommendedMedications> medications = disease.getRecommendedMedications();
        return new DiseaseWithMedicationsDTO(disease, medications);
    }

}
