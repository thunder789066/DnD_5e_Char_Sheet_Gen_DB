CREATE TABLE [dbo].[class_armor_profs] (
    [class_armor_prof_id] INT           NOT NULL,
    [class_id]            INT           NOT NULL,
    [armor]               NVARCHAR (50) NOT NULL,
    CONSTRAINT [PK_class_armor_profs] PRIMARY KEY CLUSTERED ([class_armor_prof_id] ASC),
    CONSTRAINT [class_Armor_profs_fk] FOREIGN KEY ([class_id]) REFERENCES [dbo].[Class] ([class_id])
);

