CREATE TABLE [dbo].[Products] (
    [Id]          INT            IDENTITY (1, 1) NOT NULL,
    [Number]      NVARCHAR (10)  NULL,
    [Name]        NVARCHAR (50)  NULL,
    [Description] NVARCHAR (500) NULL,
    [Price]		  MONEY			 NULL,
    [CreatedBy]   NVARCHAR (250) NOT NULL,
    [CreatedOn]   DATETIME       CONSTRAINT [DF_Products_CreatedOn] DEFAULT (getdate()) NOT NULL,
    CONSTRAINT [PK_Products] PRIMARY KEY CLUSTERED ([Id] ASC)
);

