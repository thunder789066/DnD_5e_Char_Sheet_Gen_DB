-- Simple character info
SELECT Bio.player_name,
	Bio.character_name,
	Cl.class_name,
	SR.subrace_name,
	Bg.Background_Name,
	Bio.alignment
FROM Character AS Char
JOIN CLASS AS Cl
	ON Char.class_id = Cl.class_id
JOIN SubRace AS SR
	ON Char.sub_race_id = SR.subrace_id
JOIN Background AS Bg
	ON Char.background_id = Bg.background_id
JOIN Bio
	ON Char.Character_id = Bio.character_id

-- Class Spells
SELECT Cl.class_name,
	Sp.spell_name,
	Sp.spell_desc,
	Sp.level,
	Sp.duration,
	Sp.range,
	Sp.casting_time,
	Sp.Component_desc
FROM Class_Spells AS CS
JOIN Class AS Cl
	ON CS.class_id = Cl.class_id
JOIN Spells AS Sp
	ON CS.spell_id = Sp.spell_id
WHERE Cl.class_name = 'Wizard'
ORDER BY Sp.level, Sp.spell_name

-- Spells by character
SELECT Char.Character_id,
	Sp.spell_name,
	Sp.level
FROM Character as Char
JOIN Character_Spells AS CSp
	ON Char.Character_id = CSp.character_id
JOIN Spells AS Sp
	ON Sp.spell_id = CSp.spell_id
ORDER BY Sp.level, Sp.spell_name