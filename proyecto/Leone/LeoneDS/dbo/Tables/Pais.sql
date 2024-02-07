CREATE TABLE [dbo].[Pais]
(
	[IdPais] UNIQUEIDENTIFIER NOT NULL  DEFAULT NewId(), 
    [Nombre] NVARCHAR(MAX) NULL, 
    [Activo] BIT NULL, 
    [Actualiza] DATETIME NULL DEFAULT GetDate(), 
    CONSTRAINT [PK_Pais] PRIMARY KEY ([IdPais])
)
