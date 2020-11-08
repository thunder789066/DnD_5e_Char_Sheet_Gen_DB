CREATE TABLE [dbo].[Class_Weapon_Profs] (
    [class_weapon_prof_id] INT           NOT NULL,
    [class_id]             INT           NOT NULL,
    [weapon]               NVARCHAR (50) NOT NULL,
    CONSTRAINT [PK_class_weapon_prof] PRIMARY KEY CLUSTERED ([class_weapon_prof_id] ASC),
    CONSTRAINT [class_weapon_prof_fk] FOREIGN KEY ([class_id]) REFERENCES [dbo].[Class] ([class_id])
);

