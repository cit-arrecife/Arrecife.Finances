CREATE TABLE [Operation].[Payment]
(
	[IdPayment] INT NOT NULL PRIMARY KEY IDENTITY, 
    [IdReceipt] INT NOT NULL, 
    [PaymentValue] DECIMAL(10) NOT NULL, 
    [Notes] VARCHAR(4000) NOT NULL, 
    [InputSystemDate] DATETIME NOT NULL, 
    [UserId] INT NOT NULL
)

GO

CREATE INDEX [Payment_CitizenshipCard] ON [Operation].[Payment] ([CitizenshipCard])

GO

CREATE INDEX [Payment_Id] ON [Operation].[Payment] ([IdPayment])

GO

CREATE INDEX [Payment_Receipt] ON [Operation].[Payment] ([IdReceipt])

GO

CREATE INDEX [Payment_UserId] ON [Operation].[Payment] ([UserId])

GO

CREATE INDEX [Payment_InputSystemDate] ON [Operation].[Payment] ([InputSystemDate])

GO

CREATE INDEX [Payment_ModifiedDate] ON [Operation].[Payment] ([ModifiedDate])
