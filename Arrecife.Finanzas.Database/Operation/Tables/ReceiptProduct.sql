CREATE TABLE [dbo].[ReceiptProduct]
(
    [IdProduct] INT NOT NULL, 
    [IdReceipt] INT NOT NULL, 
    [Quantity] INT NOT NULL
)

GO

CREATE INDEX [ReceiptProduct_IdProduct] ON [dbo].[ReceiptProduct] ([IdProduct])

GO

CREATE INDEX [ReceiptProduct_IdReceipt] ON [dbo].[ReceiptProduct] ([IdReceipt])

GO

CREATE INDEX [ReceiptProduct_Quantity] ON [dbo].[ReceiptProduct] ([Quantity])
