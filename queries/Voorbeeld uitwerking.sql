GO
DECLARE @HashDiff VARCHAR(255) = '549D654CEBCD351CA009053343026121', @tryHash VARCHAR(255)

SET @tryHash =  CONVERT(NVARCHAR(32),HashBytes('MD5', CONCAT('Jesse','Lesnussa','Traviatastraat 31')),2)
PRINT @tryHash
PRINT @HashDiff
PRINT '============='
IF (@tryHash = @HashDiff)
	BEGIN
		PRINT CONCAT('Match! :', @HashDiff)
	END
ELSE
	BEGIN
		PRINT CONCAT('No match! :', @HashDiff, ' - ', @tryHash)
	END


