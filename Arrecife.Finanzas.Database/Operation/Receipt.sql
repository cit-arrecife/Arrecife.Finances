CREATE TABLE [Operation].[Receipt]
(
	[IdReceipt] INT NOT NULL PRIMARY KEY, 
    [IdClient] INT NOT NULL, 
    [Total] DECIMAL NOT NULL, 
    [Products] VARCHAR(MAX) NOT NULL
)
