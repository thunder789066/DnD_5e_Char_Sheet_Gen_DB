CREATE TABLE [dbo].[Names] (
    [name_id] INT          NOT NULL,
    [race_id] INT          NOT NULL,
    [name]    VARCHAR (50) NOT NULL,
    [sex_id]  INT          NOT NULL,
    CONSTRAINT [PK_Names] PRIMARY KEY CLUSTERED ([name_id] ASC),
    CONSTRAINT [FK_Names_Race1] FOREIGN KEY ([race_id]) REFERENCES [dbo].[Race] ([race_id]),
    CONSTRAINT [FK_Names_Sex_Age_Grp] FOREIGN KEY ([sex_id]) REFERENCES [dbo].[Sex_Age_Grp] ([sex_id])
);

