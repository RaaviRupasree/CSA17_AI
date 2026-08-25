symptom(fever, flu).

symptom(cough, flu).
symptom(body_pain, flu).

symptom(fever, malaria).
symptom(chills, malaria).
symptom(headache, malaria).

symptom(cough, cold).
symptom(sneezing, cold).
symptom(runny_nose, cold).

symptom(chest_pain, heart_disease).
symptom(breathing_problem, heart_disease).
symptom(fatigue, heart_disease).

diagnose(Disease, Symptom) :-
    symptom(Symptom, Disease).
