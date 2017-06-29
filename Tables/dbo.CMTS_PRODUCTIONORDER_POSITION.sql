CREATE TABLE [dbo].[CMTS_PRODUCTIONORDER_POSITION] (
  [ORDER#] [int] NOT NULL,
  [POSITION] [smallint] NOT NULL,
  [RECIPE] [int] NOT NULL,
  [NOMINALWEIGHT] [int] NOT NULL,
  [FLAGS] [bigint] NOT NULL DEFAULT (0),
  [TRUCKCELL] [tinyint] NULL,
  [CUSTOMERCELL] [nvarchar](65) COLLATE Latin1_General_CI_AS NULL,
  [comment] [nvarchar](256) COLLATE Latin1_General_CI_AS NULL
)
ON [PRIMARY]
GO