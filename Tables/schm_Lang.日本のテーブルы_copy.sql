CREATE TABLE [schm_Lang].[日本のテーブルы_copy] (
  [整数の日本列] [int] NOT NULL,
  [行の日本列] [nvarchar](255) COLLATE Japanese_Unicode_CI_AS NULL,
  CONSTRAINT [PK__日本のテーブル__21E11EE0231EB0B3_copy] PRIMARY KEY CLUSTERED ([整数の日本列]),
  CONSTRAINT [日本語限定_copy] CHECK ([整数の日本列]>(0))
)
ON [PRIMARY]
GO

CREATE INDEX [日本のインデックス]
  ON [schm_Lang].[日本のテーブルы_copy] ([行の日本列])
  ON [PRIMARY]
GO