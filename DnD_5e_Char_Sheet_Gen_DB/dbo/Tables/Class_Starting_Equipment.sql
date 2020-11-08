CREATE TABLE [dbo].[Class_Starting_Equipment] (
    [class_starting_equipment_id] INT           NOT NULL,
    [class_id]                    INT           NOT NULL,
    [item]                        NVARCHAR (50) NOT NULL,
    [item_amount]                 INT           NOT NULL,
    [choice_num]                  INT           NOT NULL,
    CONSTRAINT [PK_Class_Starting_Equipment] PRIMARY KEY CLUSTERED ([class_starting_equipment_id] ASC),
    CONSTRAINT [Class_Starting_Equipment_fk] FOREIGN KEY ([class_id]) REFERENCES [dbo].[Class] ([class_id])
);

