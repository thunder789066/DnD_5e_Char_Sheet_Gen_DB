CREATE TABLE [dbo].[Background_skill_profs] (
    [background_skill_prof_id] INT           NOT NULL,
    [background_id]            INT           NOT NULL,
    [skill]                    NVARCHAR (50) NOT NULL,
    CONSTRAINT [PK_Background_skill_profs] PRIMARY KEY CLUSTERED ([background_skill_prof_id] ASC),
    CONSTRAINT [background_skill_profs_fk] FOREIGN KEY ([background_id]) REFERENCES [dbo].[Background] ([background_id])
);

