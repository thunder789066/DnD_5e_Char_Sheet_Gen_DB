
ALTER TABLE Class_Tool_Profs
ADD CONSTRAINT class_tool_profs_fk 
FOREIGN KEY (class_id) 
REFERENCES CLASS(class_id)

ALTER TABLE Class_Skill_Profs
ADD CONSTRAINT class_Skill_profs_fk 
FOREIGN KEY (class_id) 
REFERENCES CLASS(class_id)

ALTER TABLE Class_Armor_Profs
ADD CONSTRAINT class_Armor_profs_fk 
FOREIGN KEY (class_id) 
REFERENCES CLASS(class_id)

ALTER TABLE Class_Saving_Throw_Profs
ADD CONSTRAINT Class_Saving_Throw_Profs_fk 
FOREIGN KEY (class_id) 
REFERENCES CLASS(class_id)

ALTER TABLE class_weapon_prof
ADD CONSTRAINT class_weapon_prof_fk 
FOREIGN KEY (class_id) 
REFERENCES CLASS(class_id)

ALTER TABLE Class_Starting_Equipment
ADD CONSTRAINT Class_Starting_Equipment_fk 
FOREIGN KEY (class_id) 
REFERENCES CLASS(class_id)

ALTER TABLE Class_Features
ADD CONSTRAINT Class_Features_fk 
FOREIGN KEY (class_id) 
REFERENCES CLASS(class_id)

ALTER TABLE Class_Level_Feature
ADD CONSTRAINT Class_Level_Feature_class_fk 
FOREIGN KEY (class_id) 
REFERENCES CLASS(class_id)

ALTER TABLE Class_Level_Feature
ADD CONSTRAINT Class_Level_Feature_level_fk 
FOREIGN KEY (level_number) 
REFERENCES Class_Levels(level_number)

ALTER TABLE Class_Level_Spells
ADD CONSTRAINT Class_Level_Spells_class_fk 
FOREIGN KEY (class_id) 
REFERENCES CLASS(class_id)

ALTER TABLE Class_Level_Spells
ADD CONSTRAINT Class_Level_Spells_level_fk 
FOREIGN KEY (level_number) 
REFERENCES Class_Levels(level_number)

ALTER TABLE Class_Level_Unique
ADD CONSTRAINT Class_Level_Unique_class_fk 
FOREIGN KEY (class_id) 
REFERENCES CLASS(class_id)

ALTER TABLE Class_Level_Unique
ADD CONSTRAINT Class_Level_Unique_level_fk 
FOREIGN KEY (level_number) 
REFERENCES Class_Levels(level_number)