CREATE TABLE [dbo].[Alignment] (
    [alignment_id] INT          NOT NULL,
    [alignment]    VARCHAR (50) NOT NULL,
    [alignment_cd] VARCHAR (50) NOT NULL,
    CONSTRAINT [PK_Alignment] PRIMARY KEY CLUSTERED ([alignment_id] ASC)
);

