CREATE TABLE [dbo].[Class_Level_Feature] (
    [class_level_feature_id] INT           NOT NULL,
    [level_number]           INT           NOT NULL,
    [class_id]               INT           NOT NULL,
    [feature_name]           NVARCHAR (50) NOT NULL,
    CONSTRAINT [PK_Class_Level_Feature] PRIMARY KEY CLUSTERED ([class_level_feature_id] ASC),
    CONSTRAINT [Class_Level_Feature_class_fk] FOREIGN KEY ([class_id]) REFERENCES [dbo].[Class] ([class_id]),
    CONSTRAINT [Class_Level_Feature_level_fk] FOREIGN KEY ([level_number]) REFERENCES [dbo].[Class_Levels] ([level_number])
);

