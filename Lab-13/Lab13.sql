--Lab 13) Create SelectAll and SelectByPK stored procedures for all tables.

--Procedure for getting all records from LOC_Country Table
Create PROCEDURE [dbo].[PR_Country_SelectAll]
AS
BEGIN
	SELECT
		[dbo].[LOC_Country].[CountryID],
		[dbo].[LOC_Country].[CountryName],
		[dbo].[LOC_Country].[CountryCode],
		[dbo].[LOC_Country].[Created],
		[dbo].[LOC_Country].[Modified]
	FROM
		[dbo].[LOC_Country]
End

--Procedure for getting all records from LOC_State Table
CREATE PROCEDURE [dbo].[PR_State_SelectAll]
AS
BEGIN
    SELECT
        [dbo].[LOC_State].[StateID],
        [dbo].[LOC_State].[StateName],
        [dbo].[LOC_State].[StateCode],
        [dbo].[LOC_State].[CountryID],
        [dbo].[LOC_State].[Created],
        [dbo].[LOC_State].[Modified]
    FROM 
        [dbo].[LOC_State]
END

--Procedure for getting all records from LOC_City Table
CREATE PROCEDURE [dbo].[PR_City_SelectAll]
AS
BEGIN
	SELECT 
		[dbo].[LOC_City].[CityID],
		[dbo].[LOC_City].[CityName],
		[dbo].[LOC_City].[Citycode],
		[dbo].[LOC_Country].[CountryID],
		[dbo].[LOC_Country].[CountryName],
		[dbo].[LOC_State].[StateID],
		[dbo].[LOC_State].[StateName],
		[dbo].[LOC_City].[CreationDate],
		[dbo].[LOC_City].[Modified]
	FROM 
		[dbo].[Loc_State] 
		INNER JOIN 
		[dbo].[Loc_City]
	ON 
		[dbo].[Loc_State].[StateID] = [dbo].[Loc_City].[StateID]
		INNER JOIN 
		[dbo].[Loc_Country]
	ON 
		[dbo].[Loc_Country].[CountryID] = [dbo].[Loc_City].[CountryID]
END

--Procedure for getting Country record based on CountryID
Create PROCEDURE [dbo].[PR_Country_SelectByCountryID]
 @CountryID int
AS
BEGIN
	SELECT
		[LOC_Country].[CountryID],
		[LOC_Country].[CountryName],
		[LOC_Country].[CountryCode],
		[LOC_Country].[Created],
		[LOC_Country].[Modified]
	FROM
		[dbo].[LOC_Country]
	WHERE
		[dbo].[LOC_Country].[CountryID] = @CountryID		
End

--Procedure for getting State Record based on StateID
CREATE PROCEDURE [dbo].[PR_State_SelectByStateID]
	@StateID int
AS
BEGIN
    SELECT
        [dbo].[LOC_State].[StateID],
        [dbo].[LOC_State].[StateName],
        [dbo].[LOC_State].[StateCode],
        [dbo].[LOC_State].[CountryID],
        [dbo].[LOC_State].[Created],
        [dbo].[LOC_State].[Modified]
    FROM 
        [dbo].[LOC_State]
	WHERE
		[dbo].[LOC_State].[StateID] = @StateID
END

--Procedure for getting City Record based on CityID
CREATE PROCEDURE [dbo].[PR_City_SelectByCityID]
	@CityID int
AS
BEGIN
	SELECT 
		[dbo].[LOC_City].[CityID],
		[dbo].[LOC_City].[CityName],
		[dbo].[LOC_City].[Citycode],
		[dbo].[LOC_Country].[CountryID],
		[dbo].[LOC_Country].[CountryName],
		[dbo].[LOC_State].[StateID],
		[dbo].[LOC_State].[StateName],
		[dbo].[LOC_City].[CreationDate],
		[dbo].[LOC_City].[Modified]
	FROM 
		[dbo].[Loc_State] 
		INNER JOIN 
		[dbo].[Loc_City]
	ON 
		[dbo].[Loc_State].[StateID] = [dbo].[Loc_City].[StateID]
		INNER JOIN 
		[dbo].[Loc_Country]
	ON 
		[dbo].[Loc_Country].[CountryID] = [dbo].[Loc_City].[CountryID]
	WHERE
		[dbo].[LOC_City].[CityID] = @CityID
END