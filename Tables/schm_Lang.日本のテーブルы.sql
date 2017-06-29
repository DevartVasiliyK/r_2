CREATE TABLE [schm_Lang].[日本のテーブルы] (
  [整数の日本列] [int] NOT NULL,
  [行の日本列] [nvarchar](255) COLLATE Japanese_Unicode_CI_AS NULL,
  CONSTRAINT [PK__日本のテーブル__21E11EE0231EB0B3] PRIMARY KEY CLUSTERED ([整数の日本列]),
  CONSTRAINT [日本語限定] CHECK ([整数の日本列]>(0))
)
ON [PRIMARY]
GO

CREATE INDEX [日本のインデックス]
  ON [schm_Lang].[日本のテーブルы] ([行の日本列])
  ON [PRIMARY]
GO

SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
CREATE TRIGGER [日本のトリガー]
  ON [schm_Lang].[日本のテーブルы] AFTER DELETE
AS
SET NOCOUNT ON;
GO