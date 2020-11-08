CREATE TABLE [dbo].[Background_Characteristics] (
    [background_characteristics_id] INT            NOT NULL,
    [background_id]                 INT            NOT NULL,
    [dice_roll_number]              INT            NOT NULL,
    [bg_trait_name]                 NVARCHAR (50)  NOT NULL,
    [bg_trait_value]                NVARCHAR (150) NOT NULL,
    CONSTRAINT [PK_Background_Characteristics] PRIMARY KEY CLUSTERED ([background_characteristics_id] ASC),
    CONSTRAINT [background_traits_fk] FOREIGN KEY ([background_id]) REFERENCES [dbo].[Background] ([background_id])
);

