package com.example.doctors_guide.services;

import com.example.doctors_guide.data.Medications;
import com.example.doctors_guide.repositories.InterchangebleMedicationsRepository;
import com.example.doctors_guide.repositories.MedicationsRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import java.util.Optional;

@Service
public class PharmacyService {

    private final MedicationsRepository medicationsRepository;

    @Autowired
    public PharmacyService(MedicationsRepository medicationsRepository,
                           InterchangebleMedicationsRepository interchangebleMedicationsRepository) {
        this.medicationsRepository = medicationsRepository;
    }

    // Method to check medication availability and decrement stock
    public boolean checkAndDecrementStock(Integer medicationId) {
        Optional<Medications> medicationOpt = medicationsRepository.findById(medicationId);
        if (medicationOpt.isPresent() && medicationOpt.get().getQuantity() > 0) {
            Medications medication = medicationOpt.get();
            medication.setQuantity(medication.getQuantity() - 1);
            medicationsRepository.save(medication);
            return true;
        }
        return false;
    }

    // Method to check and replenish stock
    public void replenishStock() {
        // Logic to replenish stock when it falls below a certain threshold
    }
    // Method to ensure interchangeability
    public void checkAndEnsureInterchangeability(Integer medicationId) {
        // Logic to check and ensure at least one interchangeable medication is in stock
    }
}
