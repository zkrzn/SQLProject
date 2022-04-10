ALTER PROCEDURE UPDATE_LEADERS_SCORE
(@in_School_ID INT, @in_Leader_Score INT)
AS
BEGIN
SET NOCOUNT ON
IF @in_Leader_Score < 99 
    UPDATE ChicagoPublicSchools1
    SET Leaders_Score=@in_Leader_Score
    WHERE School_ID = @in_School_ID
IF @in_Leader_Score > 0 AND @in_Leader_Score < 20 
    UPDATE ChicagoPublicSchools1
    SET Leaders_Icon='Very Weak'
    WHERE School_ID = @in_School_ID
IF @in_Leader_Score > 19 AND @in_Leader_Score < 40 
    UPDATE ChicagoPublicSchools1
    SET Leaders_Icon='Weak'
    WHERE School_ID = @in_School_ID

IF @in_Leader_Score > 39 AND @in_Leader_Score < 60 
    UPDATE ChicagoPublicSchools1
    SET Leaders_Icon='Average'
    WHERE School_ID = @in_School_ID

IF @in_Leader_Score > 59 AND @in_Leader_Score < 80 
    UPDATE ChicagoPublicSchools1
    SET Leaders_Icon='Strong'
    WHERE School_ID = @in_School_ID

IF @in_Leader_Score > 79  AND @in_Leader_Score < 100
    UPDATE ChicagoPublicSchools1
    SET Leaders_Icon='Very Strong'
    WHERE School_ID = @in_School_ID
END;

EXEC UPDATE_LEADERS_SCORE 609674, 73;

SELECT School_ID,Leaders_Score, Leaders_Icon FROM ChicagoPublicSchools1
WHERE School_ID = 609674;