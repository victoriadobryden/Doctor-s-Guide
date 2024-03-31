package com.example.doctors_guide.controllers;

import com.example.doctors_guide.data.Diseases;
import com.example.doctors_guide.services.DiseasesService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/api/diseases")
public class DiseasesController {

    private final DiseasesService diseasesService;

    @Autowired
    public DiseasesController(DiseasesService diseasesService) {
        this.diseasesService = diseasesService;
    }

    @GetMapping
    public ResponseEntity<List<Diseases>> getAllDiseases() {
        List<Diseases> diseases = diseasesService.getAllDiseases();
        return ResponseEntity.ok(diseases);
    }

    @GetMapping("/search")
    public ResponseEntity<List<Diseases>> searchDiseases(@RequestParam String searchTerm) {
        List<Diseases> diseases = diseasesService.findDiseases(searchTerm);
        return ResponseEntity.ok(diseases);
    }

    @ExceptionHandler(DiseaseNotFoundException.class)
    public ResponseEntity<String> handleDiseaseNotFound(DiseaseNotFoundException e) {
        return ResponseEntity
                .status(HttpStatus.NOT_FOUND)
                .body(e.getMessage());
    }

    // Add more endpoints as needed
}
