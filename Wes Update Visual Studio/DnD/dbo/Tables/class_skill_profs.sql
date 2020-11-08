CREATE TABLE [dbo].[class_skill_profs] (
    [class_skill_prof_id] INT           NOT NULL,
    [class_id]            INT           NOT NULL,
    [skill]               NVARCHAR (50) NOT NULL,
    [choose_num]          INT           NOT NULL,
    CONSTRAINT [PK_class_skill_profs] PRIMARY KEY CLUSTERED ([class_skill_prof_id] ASC),
    CONSTRAINT [class_Skill_profs_fk] FOREIGN KEY ([class_id]) REFERENCES [dbo].[Class] ([class_id])
);

