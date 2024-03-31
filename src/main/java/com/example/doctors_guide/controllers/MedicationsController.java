package com.example.doctors_guide.controllers;

import com.example.doctors_guide.data.Medications;
import com.example.doctors_guide.services.MedicationsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/api/medications")
public class MedicationsController {

    private final MedicationsService medicationsService;

    @Autowired
    public MedicationsController(MedicationsService medicationsService) {
        this.medicationsService = medicationsService;
    }

    @GetMapping
    public ResponseEntity<List<Medications>> getAllMedications() {
        List<Medications> medications = medicationsService.getAllMedications();
        return ResponseEntity.ok(medications);
    }

    // Additional endpoints...
}
