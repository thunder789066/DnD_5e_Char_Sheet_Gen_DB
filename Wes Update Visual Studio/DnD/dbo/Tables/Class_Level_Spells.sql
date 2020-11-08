CREATE TABLE [dbo].[Class_Level_Spells] (
    [class_level_spell_id] INT NOT NULL,
    [class_id]             INT NOT NULL,
    [level_number]         INT NOT NULL,
    [spell_level]          INT NOT NULL,
    [spell_level_amount]   INT NOT NULL,
    CONSTRAINT [PK_Class_Level_Spells] PRIMARY KEY CLUSTERED ([class_level_spell_id] ASC),
    CONSTRAINT [Class_Level_Spells_class_fk] FOREIGN KEY ([class_id]) REFERENCES [dbo].[Class] ([class_id]),
    CONSTRAINT [Class_Level_Spells_level_fk] FOREIGN KEY ([level_number]) REFERENCES [dbo].[Class_Levels] ([level_number])
);

