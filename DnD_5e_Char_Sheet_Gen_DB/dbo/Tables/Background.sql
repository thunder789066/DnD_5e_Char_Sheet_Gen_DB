CREATE TABLE [dbo].[Background] (
    [background_id]           INT             NOT NULL,
    [Background_Name]         NVARCHAR (50)   NOT NULL,
    [Variant_Background]      NVARCHAR (50)   NULL,
    [Variant_Background_Desc] NVARCHAR (850)  NULL,
    [Background_Desc]         NVARCHAR (1950) NOT NULL,
    [Equipment]               NVARCHAR (300)  NOT NULL,
    [Variant_Equipment]       NVARCHAR (200)  NULL,
    [Variant_Feature]         NVARCHAR (50)   NULL,
    [Variant_Feature_Desc]    NVARCHAR (700)  NULL,
    [Feature_Name]            NVARCHAR (50)   NOT NULL,
    [Feature_Description]     NVARCHAR (950)  NOT NULL,
    [number_of_langauges]     INT             NOT NULL,
    [Variant_Proficiencies]   NVARCHAR (100)  NULL,
    CONSTRAINT [PK_Background] PRIMARY KEY CLUSTERED ([background_id] ASC)
);

