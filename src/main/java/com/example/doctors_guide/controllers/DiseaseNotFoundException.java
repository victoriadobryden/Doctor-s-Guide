package com.example.doctors_guide.controllers;

public class DiseaseNotFoundException extends RuntimeException {

    public DiseaseNotFoundException(Integer id) {
        super("Could not find disease with id: " + id);
    }
}

