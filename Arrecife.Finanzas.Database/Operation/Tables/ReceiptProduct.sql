CREATE TABLE [Operation].[ReceiptProduct]
(
    [IdReceipt] INT NOT NULL, 
    [IdProduct] INT NOT NULL, 
    [Quantity] INT NOT NULL, 
    CONSTRAINT [FK_ReceiptProduct_Product] FOREIGN KEY ([IdProduct]) REFERENCES [Operation].[Product]([IdProduct]), 
    CONSTRAINT [FK_ReceiptProduct_Receipt] FOREIGN KEY ([IdReceipt]) REFERENCES [Operation].[Receipt]([IdReceipt])
)

GO

CREATE INDEX [ReceiptProduct_IdProduct] ON [Operation].[ReceiptProduct] ([IdProduct])

GO

CREATE INDEX [ReceiptProduct_IdReceipt] ON [Operation].[ReceiptProduct] ([IdReceipt])

GO

CREATE INDEX [ReceiptProduct_Quantity] ON [Operation].[ReceiptProduct] ([Quantity])
