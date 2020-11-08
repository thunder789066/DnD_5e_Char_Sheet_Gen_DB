--- Query 1
SELECT DISTINCT R.race_name, SR.subrace_name, R.age_range,
	L.language, L.script
FROM Race AS R
JOIN Subrace AS SR
	ON R.race_id = SR.race_id
JOIN Race_Language AS RL
	ON R.race_id = RL.race_id
JOIN LANGUAGE AS L
	ON RL.language_id = RL.language_id
ORDER BY R.race_name, SR.subrace_name, L.language

--- Query 2
SELECT C.class_name, CF.feature_name, CF.feature_description
FROM CLASS AS C
JOIN CLASS_FEATURES AS CF
	ON C.class_id = CF.class_id
ORDER BY C.class_name, CF.feature_name

--- Query 3
SELECT DISTINCT C.class_name, 'Tool' AS proficiency_type, CTP.tool AS proficiency
FROM CLASS AS C
JOIN CLASS_TOOL_PROFS AS CTP
	ON C.class_id = CTP.class_id
UNION
SELECT DISTINCT C.class_name, 'Armor' AS proficiency_type, CAP.armor AS proficiency 
FROM CLASS AS C
JOIN CLASS_ARMOR_PROFS AS CAP
	ON C.class_id = CAP.class_id
UNION
SELECT DISTINCT C.class_name, 'Weapon' AS proficiency_type, CWP.weapon AS proficiency
FROM CLASS AS C
JOIN CLASS_WEAPON_PROFS AS CWP
	ON C.class_id = CWP.class_id
ORDER BY class_name, proficiency_type, proficiency
/*
JOIN CLASS_SAVING_THROW_PROFS AS CSTP
	ON C.class_id = CSTP.class_id
	*/