package com.example.doctors_guide.controllers;

import com.example.doctors_guide.data.DiseaseWithMedicationsDTO;
import com.example.doctors_guide.data.Medications;
import com.example.doctors_guide.services.RecommendedMedicationsService;
import com.fasterxml.jackson.databind.deser.UnresolvedId;
import org.springframework.data.relational.core.sql.In;
import org.springframework.ui.Model;
import com.example.doctors_guide.data.Diseases;
import com.example.doctors_guide.services.DiseasesService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import java.util.List;
import java.util.Optional;

@Controller
public class WebController {

    @Autowired
    private DiseasesService diseasesService; // Replace with your actual service class
    @Autowired
    private RecommendedMedicationsService recommendedMedicationsService;
    //@Autowired
    //private Diseases disease;
    @GetMapping("/")
    public String showForm(Model model) {
        List<Diseases> allDiseases = diseasesService.getAllDiseases();
        model.addAttribute("allDiseases", allDiseases);
        return "index";
    }

    @GetMapping("/search")
    public String searchDiseases(@RequestParam String query, Model model) {
        List<Diseases> diseases = diseasesService.findDiseases(query); // Replace with your actual search method
        model.addAttribute("diseases", diseases);
        return "index";
    }

    @GetMapping("/recipe")
    public String getRecipe(@RequestParam Integer diseaseId, Model model) {
        DiseaseWithMedicationsDTO diseaseWithMedications = diseasesService.findDiseaseWithMedications(diseaseId);

        model.addAttribute("disease", diseaseWithMedications.getDisease());
        model.addAttribute("medications", diseaseWithMedications.getRecommendedMedications());

        return "recipeFragment"; // Assumes you have a recipeFragment.html Thymeleaf template
    }


    private String createRecipeFormat(String diseaseName, String procedures, List<Medications> medications) {
        StringBuilder recipeBuilder = new StringBuilder();
        recipeBuilder.append("Recipe\n\n");
        recipeBuilder.append("Diagnosis: ").append(diseaseName).append("\n\n");
        recipeBuilder.append("Appointed Procedures:\n").append(procedures).append("\n\n");
        recipeBuilder.append("Appointed Medications:\n");

        for (Medications medication : medications) {
            recipeBuilder.append("- ").append(medication.getName()).append("\n");
        }

        return recipeBuilder.toString();
    }
}
