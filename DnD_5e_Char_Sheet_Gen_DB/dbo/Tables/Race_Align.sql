CREATE TABLE [dbo].[Race_Align] (
    [race_id]      INT NOT NULL,
    [alignment_id] INT NOT NULL,
    CONSTRAINT [FK_Race_Align_Alignment] FOREIGN KEY ([alignment_id]) REFERENCES [dbo].[Alignment] ([alignment_id]),
    CONSTRAINT [FK_Race_Align_Race] FOREIGN KEY ([race_id]) REFERENCES [dbo].[Race] ([race_id])
);

