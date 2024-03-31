package com.example.doctors_guide.controllers;

public class DiseaseNotFoundException extends RuntimeException {

    public DiseaseNotFoundException(Long id) {
        super("Could not find disease with id: " + id);
    }
}

