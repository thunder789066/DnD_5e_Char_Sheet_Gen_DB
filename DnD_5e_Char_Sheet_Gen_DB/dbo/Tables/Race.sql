CREATE TABLE [dbo].[Race] (
    [race_id]       INT           NOT NULL,
    [race_name]     VARCHAR (50)  NOT NULL,
    [race_desc]     VARCHAR (MAX) NOT NULL,
    [age_range]     VARCHAR (50)  NOT NULL,
    [speed]         VARCHAR (50)  NOT NULL,
    [bonus_feat]    VARCHAR (100) NULL,
    [cantrip_spell] VARCHAR (50)  NULL,
    CONSTRAINT [PK_Race] PRIMARY KEY CLUSTERED ([race_id] ASC)
);

