package com.example.doctors_guide;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.mockito.Mockito.when;

import com.example.doctors_guide.data.Medications;
import com.example.doctors_guide.data.RecommendedMedications;
import com.example.doctors_guide.repositories.RecommendedMedicationsRepository;
import com.example.doctors_guide.services.RecommendedMedicationsService;
import org.junit.jupiter.api.Test;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.junit.jupiter.MockitoExtension;
import org.junit.jupiter.api.extension.ExtendWith;

import java.util.Arrays;
import java.util.List;
import java.util.stream.Collectors;

// Other necessary imports

@ExtendWith(MockitoExtension.class)
public class RecommendedMedicationsServiceTest {

    @Mock
    private RecommendedMedicationsRepository recommendedMedicationsRepository;

    @InjectMocks
    private RecommendedMedicationsService recommendedMedicationsService;

    @Test
    public void whenFindMedicationsForDisease_thenCorrectMedicationsReturned() {
        Integer diseaseId = 1; // Example disease ID
        Medications med1 = new Medications(1,"Chlordiazepoxide",500,5); // Assume these constructors
        Medications med2 = new Medications(2,"Diazepam",100,3);

        Integer rd1 = 5;
        Integer rd2 = 10;

        RecommendedMedications recommendedMed1 = new RecommendedMedications(diseaseId, med1.getId(), rd1);
        RecommendedMedications recommendedMed2 = new RecommendedMedications(diseaseId, med2.getId(), rd2);

        when(recommendedMedicationsRepository.findByDiseaseId(diseaseId))
                .thenReturn(Arrays.asList(recommendedMed1, recommendedMed2));

        List<Medications> medications = recommendedMedicationsService.findMedicationsForDisease(diseaseId);

        assertEquals(2, medications.size()); // Expecting two medications
        assertEquals("Medication1", medications.get(0).getName());
        assertEquals("Medication2", medications.get(1).getName());
    }
}