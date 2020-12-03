
-- DDL to create Database

-- Ability Score
CREATE TABLE Ability_Score(
	ability_score_id INT NOT NULL,
	ability_score VARCHAR(50) NULL,
	PRIMARY KEY (ability_score_id)
)

-- Alignment
CREATE TABLE Alignment(
	alignment_id INT NOT NULL,
	alignment VARCHAR(50) NOT NULL,
	alignment_cd VARCHAR(50) NOT NULL,
	PRIMARY KEY (alignment_id)
)

-- Armor
CREATE TABLE Armor(
	armor_id INT NOT NULL,
	armor_name VARCHAR(50) NOT NULL,
	armor_type VARCHAR(50) NOT NULL,
	ac VARCHAR(50) NOT NULL,
	strength INT NOT NULL,
	weight INT NOT NULL,
	PRIMARY KEY (armor_id)
)

-- Background
CREATE TABLE Background(
	background_id INT NOT NULL,
	Background_Name VARCHAR(50) NOT NULL,
	Variant_Background VARCHAR(50) NULL,
	Variant_Background_Desc VARCHAR(850) NULL,
	Background_Desc VARCHAR(1950) NOT NULL,
	Equipment VARCHAR(300) NOT NULL,
	Variant_Equipment VARCHAR(200) NULL,
	Variant_Feature VARCHAR(50) NULL,
	Variant_Feature_Desc VARCHAR(700) NULL,
	Feature_Name VARCHAR(50) NOT NULL,
	Feature_Description VARCHAR(950) NOT NULL,
	number_of_langauges INT NOT NULL,
	Variant_Proficiencies VARCHAR(100) NULL,
	PRIMARY KEY (background_id)
)

-- Background_Characteristics
CREATE TABLE Background_Characteristics(
	background_characteristics_id INT NOT NULL,
	background_id INT NOT NULL,
	dice_roll_number INT NOT NULL,
	bg_trait_name VARCHAR(50) NOT NULL,
	bg_trait_value VARCHAR(150) NOT NULL,
	PRIMARY KEY (background_characteristics_id)
)

ALTER TABLE Background_Characteristics
ADD  CONSTRAINT background_traits_fk 
FOREIGN KEY (background_id)
REFERENCES Background (background_id)

-- Background_Choices
-- Foreign key will reference Character, that will be lower down
CREATE TABLE Background_Choices(
	bg_choice_id INT NOT NULL,
	character_id INT NULL,
	flaw INT NULL,
	ideal INT NULL,
	bond INT NULL,
	personality INT NULL,
	PRIMARY KEY (bg_choice_id)
)

-- Background_skill_profs
CREATE TABLE Background_skill_profs(
	background_skill_prof_id INT NOT NULL,
	background_id INT NOT NULL,
	skill VARCHAR(50) NOT NULL,
	PRIMARY KEY (background_skill_prof_id)
)

ALTER TABLE Background_skill_profs
ADD CONSTRAINT background_skill_profs_fk 
FOREIGN KEY (background_id)
REFERENCES Background (background_id)

-- Background_tool_profs
CREATE TABLE Background_tool_profs(
	background_tool_prof_id INT NOT NULL,
	background_id INT NOT NULL,
	tool VARCHAR(50) NOT NULL,
	PRIMARY KEY (background_tool_prof_id)
)

ALTER TABLE Background_tool_profs
ADD CONSTRAINT Background_tool_profs_fk 
FOREIGN KEY (background_id)
REFERENCES Background (background_id)

-- Base_Stats
-- Foreign key will reference Character, that will be lower down
CREATE TABLE Base_Stats(
	Base_Stat_id INT NOT NULL,
	character_id INT NULL,
	strength INT NULL,
	dexterity INT NULL,
	constitution INT NULL,
	intelligence INT NULL,
	wisdom INT NULL,
	charisma INT NULL,
	PRIMARY KEY (Base_Stat_id)
)

-- Bio

CREATE TABLE Bio(
	bio_id INT NOT NULL,
	character_id INT NOT NULL,
	age INT NULL,
	height VARCHAR(50) NULL,
	character_name VARCHAR(50) NOT NULL,
	alignment VARCHAR(50) NOT NULL,
	hair_color VARCHAR(50) NULL,
	eye_color VARCHAR(50) NULL,
	skin_color VARCHAR(50) NULL,
	weight VARCHAR(50) NULL,
	player_name VARCHAR(50) NOT NULL,
	PRIMARY KEY (bio_id)
)

-- Character
CREATE TABLE Character(
	Character_id INT NOT NULL,
	level INT NULL,
	class_id INT NULL,
	sub_race_id INT NULL,
	background_id INT NULL,
	PRIMARY KEY (Character_id)
)

ALTER TABLE Character
ADD CONSTRAINT Character_background_fk 
FOREIGN KEY (background_id)
REFERENCES Background (background_id)

ALTER TABLE Background_Choices
ADD CONSTRAINT background_choices_fk 
FOREIGN KEY (character_id)
REFERENCES Character (character_id)

ALTER TABLE Base_Stats
ADD CONSTRAINT Base_Stats_fk 
FOREIGN KEY (character_id)
REFERENCES Character (character_id)

-- Character_Armor
CREATE TABLE Character_Armor(
	character_armor_id INT NOT NULL,
	character_id INT NOT NULL,
	armor_id INT NOT NULL,
	PRIMARY KEY (character_armor_id)
)

ALTER TABLE Character_Armor
ADD CONSTRAINT Character_Armor_fk 
FOREIGN KEY (armor_id)
REFERENCES Armor (armor_id)

-- Character_Gear
-- Foreign Key w/ Gear which will be added later
CREATE TABLE Character_Gear(
	Character_Gear_id INT NOT NULL,
	character_id INT NULL,
	gear_id INT NULL,
	PRIMARY KEY (Character_Gear_id)
)

ALTER TABLE Character_Gear
ADD CONSTRAINT Character_Gear_fk 
FOREIGN KEY (character_id)
REFERENCES Character (character_id)

-- Character_Spells
-- Foreign Key will reference Spells, will add later
CREATE TABLE Character_Spells(
	character_spells_id INT NOT NULL,
	character_id INT NOT NULL,
	spell_id INT NOT NULL,
	PRIMARY KEY (character_spells_id)
)

ALTER TABLE Character_Spells
ADD CONSTRAINT Character_Spells_fk 
FOREIGN KEY (character_id)
REFERENCES Character (character_id)

-- Character_Weapon
-- Foreign Key references Weapon later on
CREATE TABLE Character_Weapon(
	character_weapon_id INT NOT NULL,
	character_id INT NOT NULL,
	weapon_id INT NOT NULL,
	PRIMARY KEY (character_weapon_id)
)

ALTER TABLE Character_Weapon
ADD CONSTRAINT Character_Weapon_fk 
FOREIGN KEY (character_id)
REFERENCES Character (character_id)

-- Class
CREATE TABLE Class(
	class_id INT NOT NULL,
	class_name VARCHAR(50) NOT NULL,
	primary_ability VARCHAR(50) NOT NULL,
	hit_dice VARCHAR(50) NOT NULL,
	hp_first_level VARCHAR(50) NOT NULL,
	hp_higher_level VARCHAR(100) NOT NULL,
	PRIMARY KEY (class_id)
)

-- Class_Armor_Profs
CREATE TABLE class_armor_profs(
	class_armor_prof_id INT NOT NULL,
	class_id INT NOT NULL,
	armor VARCHAR(50) NOT NULL,
	PRIMARY KEY (class_armor_prof_id)
)

ALTER TABLE class_armor_profs
ADD CONSTRAINT class_armor_profs_fk 
FOREIGN KEY (class_id)
REFERENCES Class (class_id)

-- Class_Features
CREATE TABLE Class_Features(
	class_feature_id INT NOT NULL,
	class_id INT NOT NULL,
	feature_name VARCHAR(50) NOT NULL,
	feature_description VARCHAR(max) NOT NULL,
	PRIMARY KEY (class_feature_id)
)

ALTER TABLE Class_Features
ADD CONSTRAINT Class_Features_fk 
FOREIGN KEY (class_id)
REFERENCES Class (class_id)

-- Class_Level_Spells
-- References Class_Levels
CREATE TABLE Class_Level_Spells(
	class_level_spell_id INT NOT NULL,
	class_id INT NOT NULL,
	level_number INT NOT NULL,
	spell_level INT NOT NULL,
	spell_level_amount INT NOT NULL,
	PRIMARY KEY (class_level_spell_id)
)

ALTER TABLE Class_Level_Spells
ADD CONSTRAINT Class_Level_Spells_fk 
FOREIGN KEY (class_id)
REFERENCES Class (class_id)

-- Class_Level_Unique
-- Will reference Class_Levels
CREATE TABLE Class_Level_Unique(
	class_level_unique_id INT NOT NULL,
	class_id INT NOT NULL,
	level_number INT NOT NULL,
	unique_name VARCHAR(50) NOT NULL,
	unique_value VARCHAR(50) NOT NULL,
	PRIMARY KEY (class_level_unique_id)
)

ALTER TABLE Class_Level_Unique
ADD CONSTRAINT Class_Level_Unique_fk 
FOREIGN KEY (class_id)
REFERENCES Class (class_id)

-- Class_Levels
CREATE TABLE Class_Levels(
	level_number INT NOT NULL,
	proficiency_bonus INT NOT NULL,
	PRIMARY KEY (level_number)
)

ALTER TABLE Class_Level_Spells
ADD CONSTRAINT Class_Level_Spells_Level_fk 
FOREIGN KEY (level_number)
REFERENCES Class_Levels (level_number)

ALTER TABLE Class_Level_Unique
ADD CONSTRAINT Class_Level_Unique_Level_fk 
FOREIGN KEY (level_number)
REFERENCES Class_Levels (level_number)

-- Class_Saving_Throw_Profs
CREATE TABLE Class_Saving_Throw_Profs(
	class_saving_throw_prof_id INT NOT NULL,
	class_id INT NOT NULL,
	saving_throw VARCHAR(50) NOT NULL,
	PRIMARY KEY (class_saving_throw_prof_id)
)

ALTER TABLE Class_Saving_Throw_Profs
ADD CONSTRAINT Class_Saving_Throw_Profs_fk 
FOREIGN KEY (class_id)
REFERENCES Class (class_id)

-- Class_Skill_Profs
CREATE TABLE class_skill_profs(
	class_skill_prof_id INT NOT NULL,
	class_id INT NOT NULL,
	skill VARCHAR(50) NOT NULL,
	choose_num INT NOT NULL,
	PRIMARY KEY (class_skill_prof_id)
)

ALTER TABLE class_skill_profs
ADD CONSTRAINT class_skill_profs_fk 
FOREIGN KEY (class_id)
REFERENCES Class (class_id)

-- Class_Spells
-- Will reference Spells
CREATE TABLE Class_Spells(
	class_spells_id INT NOT NULL,
	spell_id INT NOT NULL,
	class_id INT NOT NULL,
	PRIMARY KEY (class_spells_id)
)

ALTER TABLE Class_Spells
ADD CONSTRAINT Class_Spells_fk 
FOREIGN KEY (class_id)
REFERENCES Class (class_id)

-- Class_Starting_Equipment
CREATE TABLE Class_Starting_Equipment(
	class_starting_equipment_id INT NOT NULL,
	class_id INT NOT NULL,
	item VARCHAR(50) NOT NULL,
	item_amount INT NOT NULL,
	choice_num INT NOT NULL,
	PRIMARY KEY (class_starting_equipment_id)
)

ALTER TABLE Class_Starting_Equipment
ADD CONSTRAINT Class_Starting_Equipment_fk 
FOREIGN KEY (class_id)
REFERENCES Class (class_id)

-- Class_Tool_Profs
CREATE TABLE Class_Tool_Profs(
	class_tool_prof_id INT NOT NULL,
	class_id INT NOT NULL,
	tool VARCHAR(100) NOT NULL,
	PRIMARY KEY (class_tool_prof_id)
)

ALTER TABLE Class_Tool_Profs
ADD CONSTRAINT Class_Tool_Profs_fk 
FOREIGN KEY (class_id)
REFERENCES Class (class_id)

-- Class_Weapon_Profs
-- TODO: Could change this to reference the weapons table too
CREATE TABLE Class_Weapon_Profs(
	class_weapon_prof_id INT NOT NULL,
	class_id INT NOT NULL,
	weapon VARCHAR(50) NOT NULL,
	PRIMARY KEY (class_weapon_prof_id)
)

ALTER TABLE Class_Weapon_Profs
ADD CONSTRAINT Class_Weapon_Profs_fk 
FOREIGN KEY (class_id)
REFERENCES Class (class_id)

-- Draconic_Ancestry
-- Will reference Race
CREATE TABLE Draconic_Ancestry(
	dragon_type_id INT NOT NULL,
	race_id INT NOT NULL,
	dragon VARCHAR(50) NOT NULL,
	damage_type VARCHAR(50) NOT NULL,
	breath_weapon VARCHAR(50) NOT NULL,
	PRIMARY KEY (dragon_type_id)
)

-- Gear
CREATE TABLE Gear(
	gear_id INT NOT NULL,
	gear_name VARCHAR(50) NOT NULL,
	gear_cost VARCHAR(50) NOT NULL,
	gear_weight VARCHAR(50) NOT NULL,
	gear_description VARCHAR(800) NOT NULL,
	PRIMARY KEY (gear_id)
)

ALTER TABLE Character_Gear
ADD CONSTRAINT Character_Gear_Gear_fk 
FOREIGN KEY (gear_id)
REFERENCES Gear (gear_id)

-- Language
CREATE TABLE Language(
	language_id INT NOT NULL,
	language VARCHAR(50) NOT NULL,
	script VARCHAR(50) NOT NULL,
	PRIMARY KEY (language_id)
)

-- Magic_Schools
CREATE TABLE Magic_Schools(
	school_id INT NOT NULL,
	magic_school VARCHAR(50) NOT NULL,
	school_desc VARCHAR(400) NOT NULL,
	PRIMARY KEY (school_id)
)

-- Names
-- Will reference Race / Sex_Age_Grp
CREATE TABLE Names(
	name_id INT NOT NULL,
	race_id INT NOT NULL,
	name VARCHAR(50) NOT NULL,
	sex_id INT NOT NULL,
	PRIMARY KEY (name_id)
)

CREATE TABLE Proficiencies(
	proficiencies_id INT NOT NULL,
	character_id INT NULL,
	acrobatics INT NULL,
	animal_handling INT NULL,
	arcana INT NULL,
	athletics INT NULL,
	deception INT NULL,
	history INT NULL,
	insight INT NULL,
	intimidation INT NULL,
	investigation INT NULL,
	medicine INT NULL,
	nature INT NULL,
	perception INT NULL,
	performance INT NULL,
	persuasion INT NULL,
	religion INT NULL,
	sleight_of_hand INT NULL,
	stealth INT NULL,
	survival INT NULL,
	strength INT NULL,
	dexterity INT NULL,
	constitution INT NULL,
	intelligence INT NULL,
	wisdom INT NULL,
	charisma INT NULL,
	PRIMARY KEY (proficiencies_id)
)

ALTER TABLE Proficiencies
ADD CONSTRAINT Proficiencies_fk 
FOREIGN KEY (character_id)
REFERENCES Character (character_id)

-- Race
CREATE TABLE Race(
	race_id INT NOT NULL,
	race_name VARCHAR(50) NOT NULL,
	race_desc VARCHAR(max) NOT NULL,
	age_range VARCHAR(50) NOT NULL,
	speed VARCHAR(50) NOT NULL,
	bonus_feat VARCHAR(100) NULL,
	cantrip_spell VARCHAR(50) NULL,
	PRIMARY KEY (race_id)
)

ALTER TABLE Draconic_Ancestry
ADD CONSTRAINT Draconic_Ancestry_fk 
FOREIGN KEY (race_id)
REFERENCES Race (race_id)

ALTER TABLE Names
ADD CONSTRAINT Names_fk 
FOREIGN KEY (race_id)
REFERENCES Race (race_id)

-- Race_Ability_Score
-- Will reference SubRace
-- TODO: Is there no Primary Key on this table?
CREATE TABLE Race_Ability_Score(
	race_id INT NOT NULL,
	subrace_id INT NULL,
	ability_score_id INT NOT NULL,
	ability_score_inc INT NOT NULL
)

ALTER TABLE Race_Ability_Score
ADD CONSTRAINT Race_Ability_Score_fk 
FOREIGN KEY (ability_score_id)
REFERENCES Ability_Score (ability_score_id)

ALTER TABLE Race_Ability_Score
ADD CONSTRAINT Race_Ability_Score_Race_fk 
FOREIGN KEY (race_id)
REFERENCES Race (race_id)

-- Race_Align
-- TODO: Is there no Primary Key?
CREATE TABLE Race_Align(
	race_id INT NOT NULL,
	alignment_id INT NOT NULL
) ON [PRIMARY]
GO

ALTER TABLE Race_Align
ADD CONSTRAINT Race_Align_fk 
FOREIGN KEY (alignment_id)
REFERENCES Alignment (alignment_id)

ALTER TABLE Race_Align
ADD CONSTRAINT Race_Align_Race_fk 
FOREIGN KEY (race_id)
REFERENCES Race (race_id)

-- Race_Langauge
-- TODO: No primary key?
CREATE TABLE Race_Language(
	race_id INT NOT NULL,
	language_id INT NOT NULL
)

ALTER TABLE Race_Language
ADD CONSTRAINT Race_Language_fk 
FOREIGN KEY (language_id)
REFERENCES Language (language_id)

ALTER TABLE Race_Language
ADD CONSTRAINT Race_Language_Race_fk 
FOREIGN KEY (race_id)
REFERENCES Race (race_id)

CREATE TABLE Sex_Age_Grp(
	sex_id INT NOT NULL,
	sex_name VARCHAR(50) NOT NULL,
	sex_cd VARCHAR(50) NOT NULL,
	PRIMARY KEY (sex_id)
)

ALTER TABLE Names
ADD CONSTRAINT Names_Sex_fk 
FOREIGN KEY (sex_id)
REFERENCES Sex_Age_Grp (sex_id)

-- Spells
CREATE TABLE Spells(
	spell_id INT NOT NULL,
	spell_name VARCHAR(50) NOT NULL,
	school_id INT NOT NULL,
	level INT NOT NULL,
	casting_time VARCHAR(150) NOT NULL,
	range VARCHAR(50) NOT NULL,
	duration VARCHAR(50) NOT NULL,
	v INT NOT NULL,
	s INT NOT NULL,
	m INT NOT NULL,
	Component_desc VARCHAR(100) NULL,
	spell_desc VARCHAR(1950) NOT NULL,
	PRIMARY KEY (spell_id)
)

ALTER TABLE Spells
ADD CONSTRAINT Spells_fk 
FOREIGN KEY (school_id)
REFERENCES Magic_Schools (school_id)

ALTER TABLE Character_Spells
ADD CONSTRAINT Character_Spells_Spells_fk 
FOREIGN KEY (spell_id)
REFERENCES Spells (spell_id)

ALTER TABLE Class_Spells
ADD CONSTRAINT Class_Spells_Spells_fk 
FOREIGN KEY (spell_id)
REFERENCES Spells (spell_id)

-- SubRace
CREATE TABLE SubRace(
	subrace_id INT NOT NULL,
	race_id INT NOT NULL,
	subrace_name VARCHAR(50) NOT NULL,
	subrace_desc VARCHAR(max) NOT NULL,
	hit_pt_inc INT NULL,
	prof_bonus VARCHAR(100) NULL,
	cantrip_spell VARCHAR(50) NULL,
	cantrip_inc INT NULL,
	language_inc INT NULL,
	speed VARCHAR(50) NULL,
	bonus_feat VARCHAR(50) NULL,
	PRIMARY KEY (subrace_id)
)

ALTER TABLE SubRace
ADD CONSTRAINT SubRace_fk 
FOREIGN KEY (race_id)
REFERENCES Race (race_id)

ALTER TABLE Race_Ability_Score
ADD CONSTRAINT Race_Ability_Score_SubRace_fk 
FOREIGN KEY (subrace_id)
REFERENCES SubRace (subrace_id)

-- Weapon
CREATE TABLE Weapon(
	weapon_id INT NOT NULL,
	weapon_name VARCHAR(50) NOT NULL,
	cost VARCHAR(50) NOT NULL,
	damage VARCHAR(50) NOT NULL,
	weight VARCHAR(50) NULL,
	type VARCHAR(50) NOT NULL,
	PRIMARY KEY (weapon_id)
)

ALTER TABLE Character_Weapon
ADD CONSTRAINT Character_Weapon_Weapon_fk 
FOREIGN KEY (weapon_id)
REFERENCES Weapon (weapon_id)

-- Weapon_Properties
CREATE TABLE Weapon_Properties(
	weapon_property_id INT NOT NULL,
	property_name VARCHAR(50) NOT NULL,
	property_description VARCHAR(700) NOT NULL,
	PRIMARY KEY (weapon_property_id)
)

-- Weapon_Properties_Relation
CREATE TABLE Weapon_Properties_Relation(
	weapon_property_relation_id INT NOT NULL,
	weapon_id INT NOT NULL,
	property_id INT NOT NULL,
	PRIMARY KEY (weapon_property_relation_id)
)

ALTER TABLE Weapon_Properties_Relation
ADD CONSTRAINT Weapon_Properties_Relation_fk 
FOREIGN KEY (weapon_id)
REFERENCES Weapon (weapon_id)

ALTER TABLE Weapon_Properties_Relation
ADD CONSTRAINT Weapon_Properties_Relation_fk 
FOREIGN KEY (property_id)
REFERENCES Weapon_Properties (weapon_property_id)











