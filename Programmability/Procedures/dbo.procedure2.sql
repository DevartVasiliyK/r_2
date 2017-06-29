SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[procedure2]
AS
IF EXISTS
  (SELECT * FROM dbo.test_update WHERE column1=1)
    UPDATE test_update SET column1=2
GO