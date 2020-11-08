CREATE TABLE [dbo].[Class_Saving_Throw_Profs] (
    [class_saving_throw_prof_id] INT           NOT NULL,
    [class_id]                   INT           NOT NULL,
    [saving_throw]               NVARCHAR (50) NOT NULL,
    CONSTRAINT [PK_Class_Saving_Throw_Profs] PRIMARY KEY CLUSTERED ([class_saving_throw_prof_id] ASC),
    CONSTRAINT [Class_Saving_Throw_Profs_fk] FOREIGN KEY ([class_id]) REFERENCES [dbo].[Class] ([class_id])
);

