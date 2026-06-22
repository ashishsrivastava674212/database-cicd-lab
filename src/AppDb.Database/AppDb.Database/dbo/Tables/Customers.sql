CREATE TABLE [dbo].[Customers] (
    [CustomerId] INT            IDENTITY (1, 1) NOT NULL,
    [FullName]   NVARCHAR (200) NOT NULL,
    [Email]      NVARCHAR (256) NOT NULL,
    [CreatedAt]  DATETIME2 (7)  DEFAULT (sysutcdatetime()) NOT NULL,
    [PhoneNumber] NVARCHAR(50) NULL, 
    [PhoneNumber1] NVARCHAR(50) NULL, 
    [PhoneNumber2] NVARCHAR(50) NULL,
    [PhoneNumber3] NVARCHAR(50) NULL,
    PRIMARY KEY CLUSTERED ([CustomerId] ASC)
);

