CREATE TABLE [dbo].[Draconic_Ancestry] (
    [race_id]        INT          NOT NULL,
    [dragon_type_id] INT          NOT NULL,
    [dragon]         VARCHAR (50) NOT NULL,
    [damage_type]    VARCHAR (50) NOT NULL,
    [breath_weapon]  VARCHAR (50) NOT NULL,
    CONSTRAINT [PK_Draconic_Ancestry] PRIMARY KEY CLUSTERED ([dragon_type_id] ASC),
    CONSTRAINT [FK_Draconic_Ancestry_Race] FOREIGN KEY ([race_id]) REFERENCES [dbo].[Race] ([race_id])
);

