CREATE TABLE [dbo].[country] (
  [country_id] [smallint] NOT NULL,
  [country] [varchar](50) NOT NULL,
  [last_update] [datetime] NULL CONSTRAINT [DF_country_last_update] DEFAULT (getdate()),
  PRIMARY KEY CLUSTERED ([country_id])
)
ON [PRIMARY]
GO