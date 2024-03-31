package com.example.doctors_guide.services;

import com.example.doctors_guide.controllers.DiseaseNotFoundException;
import com.example.doctors_guide.data.Diseases;
import com.example.doctors_guide.repositories.DiseasesRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
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

    public Diseases getDiseaseById(Long id) {
        return diseasesRepository.findById(id)
                .orElseThrow(() -> new DiseaseNotFoundException(id));
    }
}
