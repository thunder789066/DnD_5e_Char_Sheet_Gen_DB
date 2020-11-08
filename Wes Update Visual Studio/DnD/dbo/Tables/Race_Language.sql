CREATE TABLE [dbo].[Race_Language] (
    [race_id]     INT NOT NULL,
    [language_id] INT NOT NULL,
    CONSTRAINT [FK_Race_Language_Language] FOREIGN KEY ([language_id]) REFERENCES [dbo].[Language] ([language_id]),
    CONSTRAINT [FK_Race_Language_Race] FOREIGN KEY ([race_id]) REFERENCES [dbo].[Race] ([race_id])
);

