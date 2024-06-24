--Lab 14)Create Insert,Update and Delete  stored procedures for all tables.

--Procedure for inserting new record in Country Table
CREATE PROCEDURE [dbo].[PR_Country_Insert]
@CountryName varchar(50),
@CountryCode varchar(50)
AS
BEGIN
INSERT INTO [dbo].[LOC_Country]
(
	[dbo].[LOC_Country].[CountryName],
	[dbo].[LOC_Country].[CountryCode],
	[dbo].[LOC_Country].[Created],
	[dbo].[LOC_Country].[Modified]
)
VALUES
(
	@CountryName,
	@CountryCode,
	GETDATE(),
	GETDATE()
)
END

--Procedure for inserting new record new record in State Table
CREATE PROCEDURE [dbo].[PR_State_Insert]
	@StateName varchar(100),
	@CountryID int,
	@StateCode varchar(50)
AS
BEGIN
INSERT INTO [dbo].[LOC_State]
(
	[dbo].[LOC_State].[StateName],
	[dbo].[LOC_State].[CountryID],
	[dbo].[LOC_State].[StateCode],
	[dbo].[LOC_State].[Created],
	[dbo].[LOC_State].[Modified]
)
VALUES
(
	@StateName,
	@CountryID,
	@StateCode,
	GETDATE(),
	GETDATE()

)
END

--Procedure for inserting record in City Table
CREATE PROCEDURE [dbo].[PR_City_Insert] 
	@CityName varchar(50),
	@StateID int,
	@CountryID int,
	@CityCode varchar(50)
AS
INSERT INTO [dbo].[LOC_City]
(
	[dbo].[LOC_City].[CityName],
	[dbo].[LOC_City].[StateID],
	[dbo].[LOC_City].[CountryID],
	[dbo].[LOC_City].[Citycode],
	[dbo].[LOC_City].[Created],
	[dbo].[LOC_City].[Modified]
)
VALUES
(
	@CityName,
	@StateID, 
	@CountryID,
	@Citycode,
	GETDATE(),
	GETDATE()
)

--Procedure for deleting record from Country table based on CountryID
CREATE PROCEDURE [dbo].[PR_Country_DeleteByPK]
	@CountryID int
AS
BEGIN
	DELETE
	FROM 
		[dbo].[LOC_Country]
	WHERE 
		[dbo].[LOC_Country].[CountryID] = @CountryID
END

--Procedure for deleting record from State table based on StateID
CREATE PROCEDURE [dbo].[PR_State_DeleteByPK]
	@StateID int
AS
BEGIN
	DELETE 
	FROM 
		[dbo].[LOC_State]
	WHERE 
		[dbo].[LOC_State].[StateID] = @StateID
END

--Procedure for deleting record from City table based on CityID
CREATE Procedure [dbo].[PR_City_DeleteByPK]
	@CityID int
AS
BEGIN
	DELETE
	FROM 
		[dbo].[LOC_City]
	WHERE 
		[dbo].[LOC_City].[CityID] = @CityID
END

--Procedure for updating record of Country table based on CountryID
CREATE PROCEDURE [dbo].[PR_Country_UpdateByPK]
	@CountryID int,
	@CountryName varchar(100),
	@CountryCode varchar(50)
	
AS
BEGIN
	UPDATE 
		[dbo].[LOC_Country]
	SET
		[dbo].[LOC_Country].[CountryName] = @CountryName,
		[dbo].[LOC_Country].[CountryCode] = @CountryCode,
		[dbo].[LOC_Country].[Modified] = GETDATE()
	WHERE
		[dbo].[LOC_Country].[CountryID] = @CountryID
END

--Procedure for updating record of State table based on StateID
CREATE PROCEDURE [dbo].[PR_State_UpdateByPK]
	@StateID int,
	@StateName varchar(100),
	@CountryID int,
	@StateCode varchar(50)

AS
BEGIN
	UPDATE 
		[dbo].[LOC_State]
	SET
		[dbo].[LOC_State].[StateName] = @StateName,
		[dbo].[LOC_State].[CountryID] = @CountryID,
		[dbo].[LOC_State].[StateCode] = @StateCode,
		[dbo].[LOC_State].[Modified] = GETDATE()
	WHERE
		[dbo].[LOC_State].[StateID] = @StateID
END

--Procedure for Updating record of City table based on CityID
CREATE PROCEDURE [dbo].[PR_City_UpdateByPK]
	@CityID int,
	@CityName varchar(100),
	@StateID int,
	@CountryID int,
	@CityCode varchar(50)

AS
BEGIN
	UPDATE 
		[dbo].[LOC_City]
	SET 
		[dbo].[LOC_City].[CityName] = @CityName,
		[dbo].[LOC_City].[StateID] = @StateID,
		[dbo].[LOC_City].[CountryID] = @CountryID,
		[dbo].[LOC_City].[Citycode] = @CityCode,
		[dbo].[LOC_City].[Modified] = GETDATE()
	WHERE
		[dbo].[LOC_City].[CityID] = @cityid
END