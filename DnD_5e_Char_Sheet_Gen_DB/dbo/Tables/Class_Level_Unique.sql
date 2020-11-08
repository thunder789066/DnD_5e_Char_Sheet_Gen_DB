CREATE TABLE [dbo].[Class_Level_Unique] (
    [class_level_unique_id] INT           NOT NULL,
    [class_id]              INT           NOT NULL,
    [level_number]          INT           NOT NULL,
    [unique_name]           NVARCHAR (50) NOT NULL,
    [unique_value]          NVARCHAR (50) NOT NULL,
    CONSTRAINT [PK_Class_Level_Unique] PRIMARY KEY CLUSTERED ([class_level_unique_id] ASC),
    CONSTRAINT [Class_Level_Unique_class_fk] FOREIGN KEY ([class_id]) REFERENCES [dbo].[Class] ([class_id]),
    CONSTRAINT [Class_Level_Unique_level_fk] FOREIGN KEY ([level_number]) REFERENCES [dbo].[Class_Levels] ([level_number])
);

