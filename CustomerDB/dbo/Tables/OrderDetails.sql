CREATE TABLE [dbo].[OrderDetails] (
    [Id]        INT      IDENTITY (1, 1) NOT NULL,
    [OrderId]   INT      NOT NULL,
    [ProductId] INT      NOT NULL,
    [Qty]       SMALLINT NOT NULL,
    [TotalPrice] MONEY NOT NULL, 
    CONSTRAINT [PK_OrderDetail] PRIMARY KEY CLUSTERED ([Id] ASC), 
    CONSTRAINT [FK_OrderDetails_Products] FOREIGN KEY ([ProductId]) REFERENCES [Products]([Id]),
    CONSTRAINT [FK_OrderDetails_Orders] FOREIGN KEY ([OrderId]) REFERENCES [Orders]([Id])

);

