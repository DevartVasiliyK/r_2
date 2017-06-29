CREATE TABLE [dbo].[payment] (
  [payment_id] [int] IDENTITY,
  [customer_id] [int] NOT NULL,
  [staff_id] [tinyint] NOT NULL,
  [rental_id] [int] NULL DEFAULT (NULL),
  [amount] [decimal](5, 2) NOT NULL,
  [payment_date] [datetime] NOT NULL,
  [last_update] [datetime] NOT NULL,
  PRIMARY KEY CLUSTERED ([payment_id])
)
ON [PRIMARY]
GO

ALTER TABLE [dbo].[payment]
  ADD CONSTRAINT [fk_payment_rental] FOREIGN KEY ([rental_id]) REFERENCES [dbo].[rental] ([rental_id]) ON DELETE SET NULL ON UPDATE CASCADE
GO