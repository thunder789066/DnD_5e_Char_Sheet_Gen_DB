CREATE TABLE [dbo].[Race_Ability_Score] (
    [race_id]           INT NOT NULL,
    [subrace_id]        INT NULL,
    [ability_score_id]  INT NOT NULL,
    [ability_score_inc] INT NOT NULL,
    CONSTRAINT [FK_Race_Ability_Score_Ability_Score] FOREIGN KEY ([ability_score_id]) REFERENCES [dbo].[Ability_Score] ([ability_score_id]),
    CONSTRAINT [FK_Race_Ability_Score_Race] FOREIGN KEY ([race_id]) REFERENCES [dbo].[Race] ([race_id]),
    CONSTRAINT [FK_Race_Ability_Score_SubRace] FOREIGN KEY ([subrace_id]) REFERENCES [dbo].[SubRace] ([subrace_id])
);

