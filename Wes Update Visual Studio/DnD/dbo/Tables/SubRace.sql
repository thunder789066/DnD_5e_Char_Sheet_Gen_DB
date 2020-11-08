CREATE TABLE [dbo].[SubRace] (
    [race_id]       INT           NOT NULL,
    [subrace_id]    INT           NOT NULL,
    [subrace_name]  VARCHAR (50)  NOT NULL,
    [subrace_desc]  VARCHAR (MAX) NOT NULL,
    [hit_pt_inc]    INT           NULL,
    [prof_bonus]    VARCHAR (100) NULL,
    [cantrip_spell] VARCHAR (50)  NULL,
    [cantrip_inc]   INT           NULL,
    [language_inc]  INT           NULL,
    [speed]         VARCHAR (50)  NULL,
    [bonus_feat]    VARCHAR (50)  NULL,
    CONSTRAINT [PK_SubRace] PRIMARY KEY CLUSTERED ([subrace_id] ASC),
    CONSTRAINT [FK_SubRace_Race] FOREIGN KEY ([race_id]) REFERENCES [dbo].[Race] ([race_id])
);

