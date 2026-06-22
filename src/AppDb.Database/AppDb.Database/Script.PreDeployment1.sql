/*
 Pre-Deployment Script Template							
--------------------------------------------------------------------------------------
 This file contains SQL statements that will be executed before the build script.	
 Use SQLCMD syntax to include a file in the pre-deployment script.			
 Example:      :r .\myfile.sql								
 Use SQLCMD syntax to reference a variable in the pre-deployment script.		
 Example:      :setvar TableName MyTable							
               SELECT * FROM [$(TableName)]					
--------------------------------------------------------------------------------------
*/
-- Example: renaming a column safely.-- Without this script, SSDT would see 'FullName' missing and 'CustomerName' new,-- and generate DROP COLUMN FullName + ADD COLUMN CustomerName -> DATA LOSS.
IF COL_LENGTH('dbo.Customers', 'FullName') IS NOT NULL
   AND COL_LENGTH('dbo.Customers', 'CustomerName') IS NULL
BEGIN
    EXEC sp_rename 'dbo.Customers.FullName', 'CustomerName', 'COLUMN';
END
