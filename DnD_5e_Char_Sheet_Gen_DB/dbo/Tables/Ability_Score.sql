CREATE TABLE [dbo].[Ability_Score] (
    [ability_score_id] INT          NOT NULL,
    [ability_score]    VARCHAR (50) NULL,
    CONSTRAINT [PK_Ability_Score] PRIMARY KEY CLUSTERED ([ability_score_id] ASC)
);

