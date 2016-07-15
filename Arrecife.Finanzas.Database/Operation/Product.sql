CREATE TABLE [Operation].[Product]
(
	[IdProduct] INT NOT NULL PRIMARY KEY, 
    [Name] VARCHAR(50) NOT NULL, 
    [Stock] INT NOT NULL, 
    [MinimalAmountStock] INT NOT NULL, 
    [Price] DECIMAL NOT NULL, 
    [Description] VARCHAR(150) NOT NULL, 
    [InputSystemDate] DATETIME NOT NULL, 
    [ModificationDate] DATETIME NOT NULL, 
    [UserId] INT NOT NULL
)

GO

CREATE INDEX [Product_IdProduct] ON [Operation].[Product] ([IdProduct])

GO


CREATE INDEX [Product_Name] ON [Operation].[Product] ([Name])
