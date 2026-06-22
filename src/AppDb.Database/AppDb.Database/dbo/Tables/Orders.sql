CREATE TABLE [dbo].[Orders] (
    [OrderId]     INT             IDENTITY (1, 1) NOT NULL,
    [CustomerId]  INT             NOT NULL,
    [OrderDate]   DATETIME2 (7)   DEFAULT (sysutcdatetime()) NOT NULL,
    [TotalAmount] DECIMAL (18, 2) NOT NULL,
    PRIMARY KEY CLUSTERED ([OrderId] ASC),
    FOREIGN KEY ([CustomerId]) REFERENCES [dbo].[Customers] ([CustomerId])
);

