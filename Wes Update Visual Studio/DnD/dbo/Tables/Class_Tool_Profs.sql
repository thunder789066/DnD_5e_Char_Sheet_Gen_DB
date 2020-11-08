CREATE TABLE [dbo].[Class_Tool_Profs] (
    [class_tool_prof_id] INT            NOT NULL,
    [class_id]           INT            NOT NULL,
    [tool]               NVARCHAR (100) NOT NULL,
    CONSTRAINT [PK_Class_Tool_Profs] PRIMARY KEY CLUSTERED ([class_tool_prof_id] ASC),
    CONSTRAINT [class_tool_profs_fk] FOREIGN KEY ([class_id]) REFERENCES [dbo].[Class] ([class_id])
);

