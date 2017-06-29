CREATE TABLE [dbo].[city] (
  [city_id] [int] NOT NULL,
  [city] [varchar](50) NOT NULL,
  [country_id] [smallint] NOT NULL,
  [last_update] [datetime] NOT NULL CONSTRAINT [DF_city_last_update] DEFAULT (getdate()),
  [а] [nchar](10) NULL,
  [с_1] [nchar](10) NULL,
  [column1] [xml] NULL,
  PRIMARY KEY CLUSTERED ([city_id])
)
ON [PRIMARY]
TEXTIMAGE_ON [PRIMARY]
GO

ALTER TABLE [dbo].[city] WITH NOCHECK
  ADD CONSTRAINT [CK_city] CHECK ([с_1]='f')
GO

CREATE INDEX [idx_fk_country_id]
  ON [dbo].[city] ([country_id])
  ON [PRIMARY]
GO

EXEC sp_bindefault @defname = N'dbo.default_1', @objname = N'dbo.city.а'
GO

ALTER TABLE [dbo].[city] WITH NOCHECK
  ADD CONSTRAINT [fk_city_country] FOREIGN KEY ([country_id]) REFERENCES [dbo].[country] ([country_id]) ON UPDATE CASCADE
GO

EXEC sys.sp_addextendedproperty N'MS_Description', 'ffffffffffffffff

ffffffffffffffff
ffffffffffffffff
', 'SCHEMA', N'dbo', 'TABLE', N'city'
GO

EXEC sys.sp_addextendedproperty N'MS_Description', 'rr', 'SCHEMA', N'dbo', 'TABLE', N'city', 'COLUMN', N'city_id'
GO