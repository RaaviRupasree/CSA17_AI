disease(diabetes).
disease(high_bp).
disease(anemia).
disease(obesity).
disease(fever).

diet(diabetes, 'Low sugar and high fiber diet').
diet(high_bp, 'Low salt and low fat diet').
diet(anemia, 'Iron rich food like spinach and beetroot').
diet(obesity, 'Low calorie and high protein diet').
diet(fever, 'Light food, fruits and plenty of fluids').

suggest_diet(Disease, Diet) :-
    disease(Disease),
    diet(Disease, Diet).
