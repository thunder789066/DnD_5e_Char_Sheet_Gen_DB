
ALTER TABLE Background_Characteristics
ADD CONSTRAINT background_traits_fk 
FOREIGN KEY (background_id) 
REFERENCES BACKGROUND(background_id)

ALTER TABLE Background_tool_profs
ADD CONSTRAINT background_tool_profs_fk 
FOREIGN KEY (background_id) 
REFERENCES BACKGROUND(background_id)

ALTER TABLE Background_skill_profs
ADD CONSTRAINT background_skill_profs_fk 
FOREIGN KEY (background_id) 
REFERENCES BACKGROUND(background_id)