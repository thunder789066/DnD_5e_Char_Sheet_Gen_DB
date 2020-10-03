CREATE TABLE [dbo].[Sex_Age_Grp] (
    [sex_id]   INT          NOT NULL,
    [sex_name] VARCHAR (50) NOT NULL,
    [sex_cd]   VARCHAR (50) NOT NULL,
    CONSTRAINT [PK_Sex_Age_Grp] PRIMARY KEY CLUSTERED ([sex_id] ASC)
);

