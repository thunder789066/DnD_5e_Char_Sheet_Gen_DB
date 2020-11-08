CREATE TABLE [dbo].[Background_tool_profs] (
    [background_tool_prof_id] INT           NOT NULL,
    [background_id]           INT           NOT NULL,
    [tool]                    NVARCHAR (50) NOT NULL,
    CONSTRAINT [PK_Background_tool_profs] PRIMARY KEY CLUSTERED ([background_tool_prof_id] ASC),
    CONSTRAINT [background_tool_profs_fk] FOREIGN KEY ([background_id]) REFERENCES [dbo].[Background] ([background_id])
);

