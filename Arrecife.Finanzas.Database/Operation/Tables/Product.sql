CREATE TABLE [Operation].[Product]
(
	[IdProduct] INT NOT NULL , 
    [Code] INT NOT NULL,
    [UserId] INT NOT NULL, 
    [Name] VARCHAR(50) NOT NULL, 
    [Stock] INT NOT NULL, 
    [MinimalAmountStock] INT NOT NULL, 
    [Price] DECIMAL NOT NULL, 
    [Description] VARCHAR(150) NOT NULL, 
    [InputSystemDate] DATETIME NOT NULL, 
    [LastModificationDate] DATETIME NOT NULL, 
    CONSTRAINT [PK_Product] PRIMARY KEY ([IdProduct]), 
    CONSTRAINT [FK_Product_User] FOREIGN KEY ([UserId]) REFERENCES [Customer].[User] ([IdUser]), 
)

GO

CREATE INDEX [Product_IdProduct] ON [Operation].[Product] ([IdProduct])

GO


CREATE INDEX [Product_Name] ON [Operation].[Product] ([Name])

GO

CREATE INDEX [Product_Code] ON [Operation].[Product] ([Code])

GO

CREATE INDEX [Product_Stock] ON [Operation].[Product] ([Stock])

GO

CREATE INDEX [Product_MinimalAmountStock] ON [Operation].[Product] ([MinimalAmountStock])

GO

CREATE INDEX [Product_Price] ON [Operation].[Product] ([Price])

GO

CREATE INDEX [Product_UserId] ON [Operation].[Product] ([UserId])
