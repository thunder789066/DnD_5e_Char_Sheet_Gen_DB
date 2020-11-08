CREATE TABLE [dbo].[Class_Features] (
    [class_feature_id]    INT            NOT NULL,
    [class_id]            INT            NOT NULL,
    [feature_name]        NVARCHAR (50)  NOT NULL,
    [feature_description] NVARCHAR (MAX) NOT NULL,
    CONSTRAINT [PK_Class_Features] PRIMARY KEY CLUSTERED ([class_feature_id] ASC),
    CONSTRAINT [Class_Features_fk] FOREIGN KEY ([class_id]) REFERENCES [dbo].[Class] ([class_id])
);

