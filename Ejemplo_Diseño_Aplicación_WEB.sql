CREATE DATABASE Ejemplo_WEB
GO

USE Ejemplo_WEB
GO

CREATE TABLE Empleados(
Id int primary key NOT NULL,
Cedula nvarchar (16) NOT NULL,
Nombre1 nvarchar (15) NOT NULL,
Nombre2 nvarchar (max) NULL,
Apellido1 nvarchar (15) NOT NULL,
Apellido2 nvarchar (max) NOT NULL,
Celular nvarchar (8) NOT NULL,
Direccion nvarchar (60) NOT NULL,
Usuario nvarchar (16) NOT NULL,
Password nvarchar (16) NOT NULL,
Activo bit NULL
);

CREATE PROCEDURE InsertEmpleado
@Cedula nvarchar(16), @Nombre1 nvarchar(15), 
@Nombre2 nvarchar(max), @Apellido1 nvarchar(15), 
@Apellido2 nvarchar(max),@Celular nvarchar(8), 
@Direccion nvarchar(60), @Usuario nvarchar(16),
@Password nvarchar(16)

AS
	BEGIN

		SET NOCOUNT ON;

		INSERT INTO Empleados (
		Cedula, 
		Nombre1, 
		Nombre2, 
		Apellido1, 
		Apellido2, 
		Celular, 
		Direccion, 
		Usuario, 
		Password, 
		Activo
		) VALUES (
		@Cedula, 
		@Nombre1, 
		@Nombre2, 
		@Apellido1, 
		@Apellido2,
		@Celular, 
		@Direccion, 
		@Usuario, 
		@Password,
		1
		)
	END
GO

CREATE PROCEDURE SelectEmpleado
@Id int, @Cedula nvarchar(16), @Nombre1 nvarchar(15), @Nombre2 nvarchar(max), @Apellido1 nvarchar(15), @Apellido2 nvarchar(max),
@Celular nvarchar(8), @Direccion nvarchar(60), @Usuario nvarchar(16), @Password nvarchar(16)

AS
	BEGIN

		SET NOCOUNT ON;

		SELECT * FROM Empleados WHERE Id = @Id
	END
GO

CREATE PROCEDURE SelectEmpleadoAll
@Cedula nvarchar(16), @Nombre1 nvarchar(15), @Nombre2 nvarchar(max), @Apellido1 nvarchar(15), @Apellido2 nvarchar(max),
@Celular nvarchar(8), @Direccion nvarchar(60), @Usuario nvarchar(16), @Password nvarchar(16)

AS
	BEGIN

		SET NOCOUNT ON;

		SELECT * FROM Empleados
	END
GO

CREATE PROCEDURE UpdateEmpleado
@Cedula nvarchar(16), @Nombre1 nvarchar(15), @Nombre2 nvarchar(max), @Apellido1 nvarchar(15), @Apellido2 nvarchar(max),
@Celular nvarchar(8), @Direccion nvarchar(60), @Usuario nvarchar(16), @Password nvarchar(16)

AS
	BEGIN

		SET NOCOUNT ON;

		UPDATE Empleados SET Cedula=@Cedula, Nombre1=@Nombre1, Nombre2=@Nombre2, Apellido1=@Apellido1, Apellido2=@Apellido2, Celular=@Celular,
		Direccion=@Direccion, Usuario=@Usuario, Password=@Password
	END
GO

CREATE PROCEDURE DeleteEmpleado
@Id int,@Cedula nvarchar(16), 
@Nombre1 nvarchar(15), @Nombre2 nvarchar(max), 
@Apellido1 nvarchar(15), @Apellido2 nvarchar(max),
@Celular nvarchar(8), @Direccion nvarchar(60), 
@Usuario nvarchar(16), @Password nvarchar(16)

AS
	BEGIN

		SET NOCOUNT ON;

		DELETE Empleados WHERE Id = @Id

	END
GO
