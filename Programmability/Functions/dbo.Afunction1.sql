SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date, ,>
-- Description:	<Description, ,>
-- =============================================
CREATE FUNCTION [dbo].[Afunction1] ()
RETURNS int
WITH EXECUTE AS CALLER  
AS  
BEGIN  
     RETURN(11);
END;  
GO