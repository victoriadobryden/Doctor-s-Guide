package com.example.doctors_guide.services;

import com.example.doctors_guide.data.Medications;
import com.example.doctors_guide.repositories.MedicationsRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class MedicationsService {

    private final MedicationsRepository medicationsRepository;

    @Autowired
    public MedicationsService(MedicationsRepository medicationsRepository) {
        this.medicationsRepository = medicationsRepository;
    }

    public List<Medications> getAllMedications() {
        return medicationsRepository.findAll();
    }

}
