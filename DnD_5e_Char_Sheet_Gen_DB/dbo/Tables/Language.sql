CREATE TABLE [dbo].[Language] (
    [language_id] INT          NOT NULL,
    [language]    VARCHAR (50) NOT NULL,
    [script]      VARCHAR (50) NOT NULL,
    CONSTRAINT [PK_Language] PRIMARY KEY CLUSTERED ([language_id] ASC)
);

