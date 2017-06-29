CREATE TABLE [dbo].[rental] (
  [rental_id] [int] IDENTITY,
  [rental_date] [datetime] NOT NULL,
  [inventory_id] [int] NOT NULL,
  [customer_id] [int] NOT NULL,
  [return_date] [datetime] NULL DEFAULT (NULL),
  [staff_id] [tinyint] NOT NULL,
  [last_update] [datetime] NOT NULL,
  [rent_child] [int] NULL,
  PRIMARY KEY CLUSTERED ([rental_id])
)
ON [PRIMARY]
GO

ALTER TABLE [dbo].[rental]
  ADD CONSTRAINT [FK_rental_rent_child] FOREIGN KEY ([rent_child]) REFERENCES [dbo].[rent_child] ([id])
GO