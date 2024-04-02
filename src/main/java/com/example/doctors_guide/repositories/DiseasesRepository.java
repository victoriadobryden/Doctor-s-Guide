package com.example.doctors_guide.repositories;

import com.example.doctors_guide.data.Diseases;
import com.example.doctors_guide.data.Medications;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface DiseasesRepository extends JpaRepository<Diseases, Integer> {
    List<Diseases> findByNameContainingIgnoreCaseOrSymptomsContainingIgnoreCase(String name, String symptoms);
}


