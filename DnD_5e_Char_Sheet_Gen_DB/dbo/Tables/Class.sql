CREATE TABLE [dbo].[Class] (
    [class_id]        INT            NOT NULL,
    [class_name]      NVARCHAR (50)  NOT NULL,
    [primary_ability] NVARCHAR (50)  NOT NULL,
    [hit_dice]        NVARCHAR (50)  NOT NULL,
    [hp_first_level]  NVARCHAR (50)  NOT NULL,
    [hp_higher_level] NVARCHAR (100) NOT NULL,
    CONSTRAINT [PK_Class] PRIMARY KEY CLUSTERED ([class_id] ASC)
);

