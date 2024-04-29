USE [master]
GO
/****** Object:  Database [DB_SistemaGastos]    Script Date: 29/04/2024 15:29:54 ******/
CREATE DATABASE [DB_SistemaGastos]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'DB_SistemaGastos_Data', FILENAME = N'c:\dzsqls\DB_SistemaGastos.mdf' , SIZE = 30720KB , MAXSIZE = 30720KB , FILEGROWTH = 22528KB )
 LOG ON 
( NAME = N'DB_SistemaGastos_Logs', FILENAME = N'c:\dzsqls\DB_SistemaGastos.ldf' , SIZE = 8192KB , MAXSIZE = 30720KB , FILEGROWTH = 22528KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [DB_SistemaGastos] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [DB_SistemaGastos].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [DB_SistemaGastos] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [DB_SistemaGastos] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [DB_SistemaGastos] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [DB_SistemaGastos] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [DB_SistemaGastos] SET ARITHABORT OFF 
GO
ALTER DATABASE [DB_SistemaGastos] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [DB_SistemaGastos] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [DB_SistemaGastos] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [DB_SistemaGastos] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [DB_SistemaGastos] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [DB_SistemaGastos] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [DB_SistemaGastos] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [DB_SistemaGastos] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [DB_SistemaGastos] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [DB_SistemaGastos] SET  ENABLE_BROKER 
GO
ALTER DATABASE [DB_SistemaGastos] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [DB_SistemaGastos] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [DB_SistemaGastos] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [DB_SistemaGastos] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [DB_SistemaGastos] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [DB_SistemaGastos] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [DB_SistemaGastos] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [DB_SistemaGastos] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [DB_SistemaGastos] SET  MULTI_USER 
GO
ALTER DATABASE [DB_SistemaGastos] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [DB_SistemaGastos] SET DB_CHAINING OFF 
GO
ALTER DATABASE [DB_SistemaGastos] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [DB_SistemaGastos] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [DB_SistemaGastos] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [DB_SistemaGastos] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [DB_SistemaGastos] SET QUERY_STORE = ON
GO
ALTER DATABASE [DB_SistemaGastos] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [DB_SistemaGastos]
GO
/****** Object:  User [seucedaa_SQLLogin_1]    Script Date: 29/04/2024 15:29:55 ******/
CREATE USER [seucedaa_SQLLogin_1] FOR LOGIN [seucedaa_SQLLogin_1] WITH DEFAULT_SCHEMA=[dbo]
GO
ALTER ROLE [db_owner] ADD MEMBER [seucedaa_SQLLogin_1]
GO
/****** Object:  Schema [Acc]    Script Date: 29/04/2024 15:29:55 ******/
CREATE SCHEMA [Acc]
GO
/****** Object:  Schema [Gas]    Script Date: 29/04/2024 15:29:55 ******/
CREATE SCHEMA [Gas]
GO
/****** Object:  Schema [Grl]    Script Date: 29/04/2024 15:29:55 ******/
CREATE SCHEMA [Grl]
GO
/****** Object:  Schema [seucedaa_SQLLogin_1]    Script Date: 29/04/2024 15:29:55 ******/
CREATE SCHEMA [seucedaa_SQLLogin_1]
GO
/****** Object:  Table [Gas].[tbCategorias]    Script Date: 29/04/2024 15:29:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Gas].[tbCategorias](
	[Cate_Id] [int] IDENTITY(1,1) NOT NULL,
	[Cate_Descripcion] [varchar](50) NULL,
	[Cate_UsuarioCreacion] [int] NULL,
	[Cate_FechaCreacion] [datetime] NULL,
	[Cate_UsuarioModificacion] [int] NULL,
	[Cate_FechaModificacion] [datetime] NULL,
	[Cate_Estado] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[Cate_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [Gas].[tbGastosPorRegistro]    Script Date: 29/04/2024 15:29:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Gas].[tbGastosPorRegistro](
	[GaPr_Id] [int] IDENTITY(1,1) NOT NULL,
	[GaPr_Monto] [numeric](8, 2) NULL,
	[Regi_Id] [int] NULL,
	[SubC_Id] [int] NULL,
	[GaPr_Nota] [varchar](50) NULL,
	[GaPr_Fecha] [datetime] NULL,
	[GaPr_UsuarioCreacion] [int] NULL,
	[GaPr_FechaCreacion] [datetime] NULL,
	[GaPr_UsuarioModificacion] [int] NULL,
	[GaPr_FechaModificacion] [datetime] NULL,
	[GaPr_Estado] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[GaPr_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [Gas].[tbIngresosPorRegistro]    Script Date: 29/04/2024 15:29:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Gas].[tbIngresosPorRegistro](
	[InPr_Id] [int] IDENTITY(1,1) NOT NULL,
	[InPr_Monto] [numeric](8, 2) NULL,
	[Regi_Id] [int] NULL,
	[InPr_Nota] [varchar](50) NULL,
	[InPr_Fecha] [datetime] NULL,
	[InPr_UsuarioCreacion] [int] NULL,
	[InPr_FechaCreacion] [datetime] NULL,
	[InPr_UsuarioModificacion] [int] NULL,
	[InPr_FechaModificacion] [datetime] NULL,
	[InPr_Estado] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[InPr_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [Gas].[tbRegistros]    Script Date: 29/04/2024 15:29:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Gas].[tbRegistros](
	[Regi_Id] [int] IDENTITY(1,1) NOT NULL,
	[Perso_Id] [int] NULL,
	[Regi_MiCredito] [numeric](8, 2) NULL,
	[Regi_UsuarioCreacion] [int] NULL,
	[Regi_FechaCreacion] [datetime] NULL,
	[Regi_UsuarioModificacion] [int] NULL,
	[Regi_FechaModificacion] [datetime] NULL,
	[Regi_Estado] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[Regi_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [Gas].[tbSubCategorias]    Script Date: 29/04/2024 15:29:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Gas].[tbSubCategorias](
	[SubC_Id] [int] IDENTITY(1,1) NOT NULL,
	[SubC_Descripcion] [varchar](50) NULL,
	[Cate_Id] [int] NULL,
	[SubC_UsuarioCreacion] [int] NULL,
	[SubC_FechaCreacion] [datetime] NULL,
	[SubC_UsuarioModificacion] [int] NULL,
	[SubC_FechaModificacion] [datetime] NULL,
	[SubC_Estado] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[SubC_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [Grl].[tbPersonas]    Script Date: 29/04/2024 15:29:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Grl].[tbPersonas](
	[Perso_Id] [int] IDENTITY(1,1) NOT NULL,
	[Perso_DNI] [varchar](50) NULL,
	[Perso_Nombre] [varchar](60) NULL,
	[Perso_Apellido] [varchar](60) NULL,
	[Perso_Correo] [varchar](60) NULL,
	[Perso_FechaNacimiento] [date] NULL,
	[Perso_Sexo] [char](1) NULL,
	[Estc_Id] [int] NULL,
	[Perso_Direccion] [varchar](60) NULL,
	[Ciud_id] [varchar](4) NULL,
	[Perso_UsuarioCreacion] [int] NULL,
	[Perso_FechaCreacion] [datetime] NULL,
	[Perso_UsuarioModificacion] [int] NULL,
	[Perso_FechaModificacion] [datetime] NULL,
	[Perso_Estado] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[Perso_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [Gas].[vwRegistrosConSaldo]    Script Date: 29/04/2024 15:29:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [Gas].[vwRegistrosConSaldo] AS
WITH RegistrosCombinados AS (
    SELECT 
        REGI.Regi_Id AS ID, 
        REGI.Perso_Id AS PERSID, 
        CONCAT(PERSO.Perso_Nombre, ' ', PERSO.Perso_Apellido) AS PERSONA, 
        REGI.Regi_MiCredito AS DINEROACTUAL, 
        'INGRESO' AS TIPO, 
        INPR.InPr_Monto AS CANTIDAD, 
        INPR.InPr_Nota AS NOTA, 
        INPR.InPr_Fecha AS FECHA, 
        NULL AS CATEGORIA, 
        NULL AS SUBCATEGORIA,
        REGI.Regi_FechaCreacion AS FechaInicio,
        REGI.Regi_MiCredito AS SaldoInicial
    FROM Gas.tbRegistros AS REGI 
    LEFT JOIN Gas.tbIngresosPorRegistro AS INPR ON REGI.Regi_Id = INPR.Regi_Id 
    LEFT JOIN Grl.tbPersonas AS PERSO ON PERSO.Perso_Id = REGI.Perso_Id
    WHERE InPr_Estado = 1
    UNION ALL
    SELECT 
        REGI.Regi_Id AS ID, 
        REGI.Perso_Id AS PERSID, 
        CONCAT(PERSO.Perso_Nombre, ' ', PERSO.Perso_Apellido) AS PERSONA, 
        REGI.Regi_MiCredito AS DINEROACTUAL, 
        'GASTO' AS TIPO, 
        GAPR.GaPr_Monto AS CANTIDAD, 
        GAPR.GaPr_Nota AS NOTA, 
        GAPR.GaPr_Fecha AS FECHA, 
        CATE.Cate_Descripcion AS CATEGORIA, 
        SUBC.SubC_Descripcion AS SUBCATEGORIA,
        REGI.Regi_FechaCreacion AS FechaInicio,
        REGI.Regi_MiCredito AS SaldoInicial
    FROM Gas.tbRegistros AS REGI 
    LEFT JOIN Gas.tbGastosPorRegistro AS GAPR ON REGI.Regi_Id = GAPR.Regi_Id 
    LEFT JOIN Gas.tbSubCategorias AS SUBC ON SUBC.SubC_Id = GAPR.SubC_Id 
    LEFT JOIN Gas.tbCategorias AS CATE ON SUBC.Cate_Id = CATE.Cate_Id 
    LEFT JOIN Grl.tbPersonas AS PERSO ON PERSO.Perso_Id = REGI.Perso_Id
    WHERE GaPr_Estado = 1
),
RegistrosConSaldo AS (
    SELECT 
        *,
        SUM(CASE WHEN TIPO = 'INGRESO' THEN CANTIDAD ELSE -CANTIDAD END) OVER (PARTITION BY PERSID ORDER BY FECHA) + SaldoInicial AS SaldoAcumulado
    FROM RegistrosCombinados
)
SELECT * FROM RegistrosConSaldo;
GO
/****** Object:  View [Gas].[VW_Registros_Total]    Script Date: 29/04/2024 15:29:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [Gas].[VW_Registros_Total]
AS
SELECT REGI.Regi_Id AS ID, REGI.Perso_Id AS PERSID, CONCAT(PERSO.Perso_Nombre, ' ', PERSO.Perso_Apellido) AS PERSONA, REGI.Regi_MiCredito AS DINEROACTUAL, 'INGRESO' AS TIPO, INPR.InPr_Monto AS CANTIDAD, INPR.InPr_Nota AS NOTA, INPR.InPr_Fecha AS FECHA, NULL AS CATEGORIA, NULL 
             AS SUBCATEGORIA
FROM   Gas.tbRegistros AS REGI LEFT JOIN
             Gas.tbIngresosPorRegistro AS INPR ON REGI.Regi_Id = INPR.Regi_Id LEFT JOIN
             Grl.tbPersonas AS PERSO ON PERSO.Perso_Id = REGI.Perso_Id
WHERE REGI.Regi_Estado = 1
UNION ALL
SELECT REGI.Regi_Id AS ID, REGI.Perso_Id AS PERSID,CONCAT(PERSO.Perso_Nombre, ' ', PERSO.Perso_Apellido) AS PERSONA, REGI.Regi_MiCredito AS DINEROACTUAL, 'GASTO' AS TIPO, GAPR.GaPr_Monto AS CANTIDAD, GAPR.GaPr_Nota AS NOTA, GAPR.GaPr_Fecha AS FECHA, 
             CATE.Cate_Descripcion AS CATEGORIA, SUBC.SubC_Descripcion AS SUBCATEGORIA
FROM   Gas.tbRegistros AS REGI LEFT JOIN
             Gas.tbGastosPorRegistro AS GAPR ON REGI.Regi_Id = GAPR.Regi_Id LEFT JOIN
             Gas.tbSubCategorias AS SUBC ON SUBC.SubC_Id = GAPR.SubC_Id LEFT JOIN
             Gas.tbCategorias AS CATE ON SUBC.Cate_Id = CATE.Cate_Id LEFT JOIN
             Grl.tbPersonas AS PERSO ON PERSO.Perso_Id = REGI.Perso_Id
WHERE REGI.Regi_Estado = 1
GO
/****** Object:  Table [Acc].[tbPantallas]    Script Date: 29/04/2024 15:29:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Acc].[tbPantallas](
	[Pant_Id] [int] IDENTITY(1,1) NOT NULL,
	[Pant_Descripcion] [varchar](60) NOT NULL,
	[Pant_UsuarioCreacion] [int] NOT NULL,
	[Pant_FechaCreacion] [datetime] NOT NULL,
	[Pant_UsuarioModificacion] [int] NULL,
	[Pant_FechaModificacion] [datetime] NULL,
	[Pant_Estado] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[Pant_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [Acc].[tbPantallasPorRoles]    Script Date: 29/04/2024 15:29:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Acc].[tbPantallasPorRoles](
	[PaPr_Id] [int] IDENTITY(1,1) NOT NULL,
	[Pant_Id] [int] NOT NULL,
	[Role_Id] [int] NOT NULL,
	[PaPr_UsuarioCreacion] [int] NULL,
	[PaPr_FechaCreacion] [datetime] NULL,
	[PaPr_UsuarioModificacion] [int] NULL,
	[PaPr_FechaModificacion] [datetime] NULL,
	[PaPr_Estado] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[PaPr_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [Acc].[tbRoles]    Script Date: 29/04/2024 15:29:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Acc].[tbRoles](
	[Role_Id] [int] IDENTITY(1,1) NOT NULL,
	[Role_Descripcion] [varchar](30) NOT NULL,
	[Role_UsuarioCreacion] [int] NULL,
	[Role_FechaCreacion] [datetime] NULL,
	[Role_UsuarioModificacion] [int] NULL,
	[Role_FechaModificacion] [datetime] NULL,
	[Role_Estado] [bit] NULL,
 CONSTRAINT [PK__tbRoles__D80AB4BB88BBECB0] PRIMARY KEY CLUSTERED 
(
	[Role_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [Acc].[tbUsuarios]    Script Date: 29/04/2024 15:29:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Acc].[tbUsuarios](
	[Usua_Id] [int] IDENTITY(1,1) NOT NULL,
	[Usua_Usuario] [varchar](60) NOT NULL,
	[Usua_Contraseña] [varchar](max) NOT NULL,
	[Usua_EsAdmin] [bit] NULL,
	[Role_Id] [int] NOT NULL,
	[Usua_UsuarioCreacion] [int] NULL,
	[Usua_FechaCreacion] [datetime] NOT NULL,
	[Usua_UsuarioModificacion] [int] NULL,
	[Usua_FechaModificacion] [datetime] NULL,
	[Usua_Estado] [bit] NULL,
	[Perso_Id] [int] NULL,
	[Usua_VerificarCorreo] [varchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[Usua_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [Gas].[tbRegistrosBitacora]    Script Date: 29/04/2024 15:29:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Gas].[tbRegistrosBitacora](
	[Regi_Id] [int] NULL,
	[Perso_Id] [int] NULL,
	[Regi_MiCredito] [numeric](8, 2) NULL,
	[Regi_UsuarioCreacion] [int] NULL,
	[Regi_FechaCreacion] [datetime] NULL,
	[Regi_UsuarioModificacion] [int] NULL,
	[Regi_FechaModificacion] [datetime] NULL,
	[Regi_Estado] [bit] NULL,
	[Regi_Accion] [char](1) NULL,
	[Regi_Fecha] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [Grl].[tbCiudades]    Script Date: 29/04/2024 15:29:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Grl].[tbCiudades](
	[Ciud_Id] [varchar](4) NOT NULL,
	[Ciud_Descripcion] [varchar](40) NOT NULL,
	[Esta_Id] [varchar](2) NOT NULL,
	[Ciud_UsuarioCreacion] [int] NOT NULL,
	[Ciud_FechaCreacion] [datetime] NOT NULL,
	[Ciud_UsuarioModificacion] [int] NULL,
	[Ciud_FechaModificacion] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Ciud_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [Grl].[tbEstados]    Script Date: 29/04/2024 15:29:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Grl].[tbEstados](
	[Esta_Id] [varchar](2) NOT NULL,
	[Esta_Descripcion] [varchar](40) NOT NULL,
	[Pais_Id] [int] NULL,
	[Esta_UsuarioCreacion] [int] NOT NULL,
	[Esta_FechaCreacion] [datetime] NOT NULL,
	[Esta_UsuarioModificacion] [int] NULL,
	[Esta_FechaModificacion] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Esta_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [Grl].[tbEstadosCiviles]    Script Date: 29/04/2024 15:29:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Grl].[tbEstadosCiviles](
	[Estc_Id] [int] IDENTITY(1,1) NOT NULL,
	[Estc_Descripcion] [varchar](30) NOT NULL,
	[Estc_UsuarioCreacion] [int] NOT NULL,
	[Estc_FechaCreacion] [datetime] NOT NULL,
	[Estc_UsuarioModificacion] [int] NULL,
	[Estc_FechaModificacion] [datetime] NULL,
	[Estc_Estado] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[Estc_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [Grl].[tbMonedas]    Script Date: 29/04/2024 15:29:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Grl].[tbMonedas](
	[Mone_Id] [int] IDENTITY(1,1) NOT NULL,
	[Mone_Descripcion] [varchar](50) NULL,
	[Mone_UsuarioCreacion] [int] NULL,
	[Mone_FechaCreacion] [datetime] NULL,
	[Mone_UsuarioModificacion] [int] NULL,
	[Mone_FechaModificacion] [datetime] NULL,
	[Mone_Estado] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[Mone_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [Grl].[tbPaises]    Script Date: 29/04/2024 15:29:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Grl].[tbPaises](
	[Pais_Id] [int] IDENTITY(1,1) NOT NULL,
	[Pais_Descripcion] [varchar](40) NOT NULL,
	[Pais_UsuarioCreacion] [int] NOT NULL,
	[Pais_FechaCreacion] [datetime] NOT NULL,
	[Pais_UsuarioModificacion] [int] NULL,
	[Pais_FechaModificacion] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Pais_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [Acc].[tbPantallas] ON 

INSERT [Acc].[tbPantallas] ([Pant_Id], [Pant_Descripcion], [Pant_UsuarioCreacion], [Pant_FechaCreacion], [Pant_UsuarioModificacion], [Pant_FechaModificacion], [Pant_Estado]) VALUES (1, N'Roles', 1, CAST(N'2024-03-16T00:26:43.053' AS DateTime), NULL, NULL, 1)
INSERT [Acc].[tbPantallas] ([Pant_Id], [Pant_Descripcion], [Pant_UsuarioCreacion], [Pant_FechaCreacion], [Pant_UsuarioModificacion], [Pant_FechaModificacion], [Pant_Estado]) VALUES (2, N'Usuarios', 1, CAST(N'2024-03-16T00:26:43.053' AS DateTime), NULL, NULL, 1)
INSERT [Acc].[tbPantallas] ([Pant_Id], [Pant_Descripcion], [Pant_UsuarioCreacion], [Pant_FechaCreacion], [Pant_UsuarioModificacion], [Pant_FechaModificacion], [Pant_Estado]) VALUES (3, N'Busqueda', 1, CAST(N'2024-03-16T00:26:43.053' AS DateTime), NULL, NULL, 1)
INSERT [Acc].[tbPantallas] ([Pant_Id], [Pant_Descripcion], [Pant_UsuarioCreacion], [Pant_FechaCreacion], [Pant_UsuarioModificacion], [Pant_FechaModificacion], [Pant_Estado]) VALUES (4, N'Reportar Sitios', 1, CAST(N'2024-03-16T00:26:43.053' AS DateTime), NULL, NULL, 1)
INSERT [Acc].[tbPantallas] ([Pant_Id], [Pant_Descripcion], [Pant_UsuarioCreacion], [Pant_FechaCreacion], [Pant_UsuarioModificacion], [Pant_FechaModificacion], [Pant_Estado]) VALUES (5, N'Reportes', 1, CAST(N'2024-03-16T00:26:43.053' AS DateTime), NULL, NULL, 1)
INSERT [Acc].[tbPantallas] ([Pant_Id], [Pant_Descripcion], [Pant_UsuarioCreacion], [Pant_FechaCreacion], [Pant_UsuarioModificacion], [Pant_FechaModificacion], [Pant_Estado]) VALUES (6, N'Cargos', 1, CAST(N'2024-03-16T00:26:43.053' AS DateTime), NULL, NULL, 1)
INSERT [Acc].[tbPantallas] ([Pant_Id], [Pant_Descripcion], [Pant_UsuarioCreacion], [Pant_FechaCreacion], [Pant_UsuarioModificacion], [Pant_FechaModificacion], [Pant_Estado]) VALUES (7, N'Empleados', 1, CAST(N'2024-03-16T00:26:43.053' AS DateTime), NULL, NULL, 1)
INSERT [Acc].[tbPantallas] ([Pant_Id], [Pant_Descripcion], [Pant_UsuarioCreacion], [Pant_FechaCreacion], [Pant_UsuarioModificacion], [Pant_FechaModificacion], [Pant_Estado]) VALUES (8, N'Paises', 1, CAST(N'2024-03-16T00:26:43.053' AS DateTime), NULL, NULL, 1)
INSERT [Acc].[tbPantallas] ([Pant_Id], [Pant_Descripcion], [Pant_UsuarioCreacion], [Pant_FechaCreacion], [Pant_UsuarioModificacion], [Pant_FechaModificacion], [Pant_Estado]) VALUES (9, N'Estados', 1, CAST(N'2024-03-16T00:26:43.053' AS DateTime), NULL, NULL, 1)
INSERT [Acc].[tbPantallas] ([Pant_Id], [Pant_Descripcion], [Pant_UsuarioCreacion], [Pant_FechaCreacion], [Pant_UsuarioModificacion], [Pant_FechaModificacion], [Pant_Estado]) VALUES (10, N'Ciudades', 1, CAST(N'2024-03-16T00:26:43.053' AS DateTime), NULL, NULL, 1)
INSERT [Acc].[tbPantallas] ([Pant_Id], [Pant_Descripcion], [Pant_UsuarioCreacion], [Pant_FechaCreacion], [Pant_UsuarioModificacion], [Pant_FechaModificacion], [Pant_Estado]) VALUES (11, N'Estados Civiles', 1, CAST(N'2024-03-16T00:26:43.053' AS DateTime), NULL, NULL, 1)
INSERT [Acc].[tbPantallas] ([Pant_Id], [Pant_Descripcion], [Pant_UsuarioCreacion], [Pant_FechaCreacion], [Pant_UsuarioModificacion], [Pant_FechaModificacion], [Pant_Estado]) VALUES (12, N'Personas', 1, CAST(N'2024-03-16T00:26:43.053' AS DateTime), NULL, NULL, 1)
SET IDENTITY_INSERT [Acc].[tbPantallas] OFF
GO
SET IDENTITY_INSERT [Acc].[tbRoles] ON 

INSERT [Acc].[tbRoles] ([Role_Id], [Role_Descripcion], [Role_UsuarioCreacion], [Role_FechaCreacion], [Role_UsuarioModificacion], [Role_FechaModificacion], [Role_Estado]) VALUES (1, N'Administrador', 1, CAST(N'2024-03-01T00:00:00.000' AS DateTime), NULL, NULL, 1)
INSERT [Acc].[tbRoles] ([Role_Id], [Role_Descripcion], [Role_UsuarioCreacion], [Role_FechaCreacion], [Role_UsuarioModificacion], [Role_FechaModificacion], [Role_Estado]) VALUES (2, N'Usuario', 1, CAST(N'2023-03-01T00:00:00.000' AS DateTime), NULL, NULL, 1)
SET IDENTITY_INSERT [Acc].[tbRoles] OFF
GO
SET IDENTITY_INSERT [Acc].[tbUsuarios] ON 

INSERT [Acc].[tbUsuarios] ([Usua_Id], [Usua_Usuario], [Usua_Contraseña], [Usua_EsAdmin], [Role_Id], [Usua_UsuarioCreacion], [Usua_FechaCreacion], [Usua_UsuarioModificacion], [Usua_FechaModificacion], [Usua_Estado], [Perso_Id], [Usua_VerificarCorreo]) VALUES (1, N'Administrador', N'111', 1, 1, 1, CAST(N'2024-03-01T00:00:00.000' AS DateTime), 1, CAST(N'2024-04-11T00:10:35.120' AS DateTime), 0, 1, NULL)
INSERT [Acc].[tbUsuarios] ([Usua_Id], [Usua_Usuario], [Usua_Contraseña], [Usua_EsAdmin], [Role_Id], [Usua_UsuarioCreacion], [Usua_FechaCreacion], [Usua_UsuarioModificacion], [Usua_FechaModificacion], [Usua_Estado], [Perso_Id], [Usua_VerificarCorreo]) VALUES (4, N'Invitado01', N'4C5755601BB315D8EE56065C7AB9B3E19120DE5744F3B47A252CBF5B2B33584DEBEB46629D3EDE1456936D4A4FFBFAD8172A59FE1A201BBE4C919F77BFC763B6', 1, 1, 1, CAST(N'2024-11-04T00:00:00.000' AS DateTime), 1, CAST(N'2024-04-20T22:14:32.520' AS DateTime), 1, 1, NULL)
INSERT [Acc].[tbUsuarios] ([Usua_Id], [Usua_Usuario], [Usua_Contraseña], [Usua_EsAdmin], [Role_Id], [Usua_UsuarioCreacion], [Usua_FechaCreacion], [Usua_UsuarioModificacion], [Usua_FechaModificacion], [Usua_Estado], [Perso_Id], [Usua_VerificarCorreo]) VALUES (5, N'Adminn', N'887375DAEC62A9F02D32A63C9E14C7641A9A8A42E4FA8F6590EB928D9744B57BB5057A1D227E4D40EF911AC030590BBCE2BFDB78103FF0B79094CEE8425601F5', 1, 1, 1, CAST(N'2024-11-04T00:00:00.000' AS DateTime), 1, CAST(N'2024-04-18T22:54:57.263' AS DateTime), 0, 1, NULL)
INSERT [Acc].[tbUsuarios] ([Usua_Id], [Usua_Usuario], [Usua_Contraseña], [Usua_EsAdmin], [Role_Id], [Usua_UsuarioCreacion], [Usua_FechaCreacion], [Usua_UsuarioModificacion], [Usua_FechaModificacion], [Usua_Estado], [Perso_Id], [Usua_VerificarCorreo]) VALUES (18, N'sua', N'9C70B581E98829ADBE5D4A0973B716E677731ABB2DE5994192C2ECFD06E27A2F55CCF652580A9914B14A0606A421A81C397712928C905F11010B44626021AB10', 1, 1, 1, CAST(N'2024-04-18T17:00:22.290' AS DateTime), NULL, NULL, 1, 1, NULL)
INSERT [Acc].[tbUsuarios] ([Usua_Id], [Usua_Usuario], [Usua_Contraseña], [Usua_EsAdmin], [Role_Id], [Usua_UsuarioCreacion], [Usua_FechaCreacion], [Usua_UsuarioModificacion], [Usua_FechaModificacion], [Usua_Estado], [Perso_Id], [Usua_VerificarCorreo]) VALUES (22, N'michell', N'E04CF536A06754F6F06DA3602E3A069CD121281C6C803DFD66CE4EC957DD9687EC53317EEDCC35F2930BDFEB85EE72E4CBD6A691699E7E055E1882DABAC15A2A', 0, 1, 1, CAST(N'2024-04-18T17:13:03.687' AS DateTime), NULL, NULL, 1, 1, NULL)
INSERT [Acc].[tbUsuarios] ([Usua_Id], [Usua_Usuario], [Usua_Contraseña], [Usua_EsAdmin], [Role_Id], [Usua_UsuarioCreacion], [Usua_FechaCreacion], [Usua_UsuarioModificacion], [Usua_FechaModificacion], [Usua_Estado], [Perso_Id], [Usua_VerificarCorreo]) VALUES (26, N'suaa', N'854925659D3A1D0FC8E3EBB6557ED00AECCAFE0636BADFEE273FCB51A9A7E90C3F7F755633E1A9D1D73CE654C34AE4FFCE6A457B307023EE941B60CFD6934BAB', 1, 1, 1, CAST(N'2024-04-18T17:23:28.457' AS DateTime), NULL, NULL, 1, 1, NULL)
INSERT [Acc].[tbUsuarios] ([Usua_Id], [Usua_Usuario], [Usua_Contraseña], [Usua_EsAdmin], [Role_Id], [Usua_UsuarioCreacion], [Usua_FechaCreacion], [Usua_UsuarioModificacion], [Usua_FechaModificacion], [Usua_Estado], [Perso_Id], [Usua_VerificarCorreo]) VALUES (27, N'suaaa', N'813D00895B26351A54F3380016887DAD2A8E1FABF18983E2972247DE23A66D97911603DCA3CD2631BE63851EB163792FE52CF787F3FEE01FF8A8F44ECA6DAE4A', 0, 1, 1, CAST(N'2024-04-18T17:23:50.070' AS DateTime), 1, CAST(N'2024-04-25T12:06:47.580' AS DateTime), 0, 2, N'c15662beb4ed5760b2966a06c0254acdf2bdc301bccc2629755bcb47b5d36089')
INSERT [Acc].[tbUsuarios] ([Usua_Id], [Usua_Usuario], [Usua_Contraseña], [Usua_EsAdmin], [Role_Id], [Usua_UsuarioCreacion], [Usua_FechaCreacion], [Usua_UsuarioModificacion], [Usua_FechaModificacion], [Usua_Estado], [Perso_Id], [Usua_VerificarCorreo]) VALUES (32, N'suaaaa', N'0881F8151D400E2E77749FC1829098AAD5A432073620B7A435B601E06FC48D0D0FDF3FCF99B13D960392F93FB55EB620D1EED3C0B79FE3898AFD0B0443B068A4', 1, 1, 1, CAST(N'2024-04-18T17:30:06.470' AS DateTime), NULL, NULL, 0, 1, NULL)
INSERT [Acc].[tbUsuarios] ([Usua_Id], [Usua_Usuario], [Usua_Contraseña], [Usua_EsAdmin], [Role_Id], [Usua_UsuarioCreacion], [Usua_FechaCreacion], [Usua_UsuarioModificacion], [Usua_FechaModificacion], [Usua_Estado], [Perso_Id], [Usua_VerificarCorreo]) VALUES (48, N'yaa', N'65507DBA19E41EFFADAD1012CF11C02D3DE685D1E865C397C47583BE0C1FB8B5D867E476B84D973F49794E10CB480FD9B93BD8D78AC5E09FB1EA8B15F0FD3009', 0, 2, 1, CAST(N'2024-04-18T17:55:09.453' AS DateTime), 1, CAST(N'2024-04-18T22:48:01.467' AS DateTime), 0, 1, NULL)
INSERT [Acc].[tbUsuarios] ([Usua_Id], [Usua_Usuario], [Usua_Contraseña], [Usua_EsAdmin], [Role_Id], [Usua_UsuarioCreacion], [Usua_FechaCreacion], [Usua_UsuarioModificacion], [Usua_FechaModificacion], [Usua_Estado], [Perso_Id], [Usua_VerificarCorreo]) VALUES (49, N'edita', N'B5400D840A2E09FC4E51D33FE44CD346B0D9305F2D9A9E396210F2C7F743DC1D7C44D63BA083CC991B87E68A60CEE15F87FAFB2994A386D70627D6AA632E167F', 0, 2, 1, CAST(N'2024-04-18T22:55:59.853' AS DateTime), 1, CAST(N'2024-04-18T22:56:42.360' AS DateTime), 1, 5, NULL)
INSERT [Acc].[tbUsuarios] ([Usua_Id], [Usua_Usuario], [Usua_Contraseña], [Usua_EsAdmin], [Role_Id], [Usua_UsuarioCreacion], [Usua_FechaCreacion], [Usua_UsuarioModificacion], [Usua_FechaModificacion], [Usua_Estado], [Perso_Id], [Usua_VerificarCorreo]) VALUES (51, N'a', N'1F40FC92DA241694750979EE6CF582F2D5D7D28E18335DE05ABC54D0560E0F5302860C652BF08D560252AA5E74210546F369FBBBCE8C12CFC7957B2652FE9A75', 0, 2, 1, CAST(N'2024-04-18T23:04:52.217' AS DateTime), 1, CAST(N'2024-04-18T23:05:00.980' AS DateTime), 0, 2, NULL)
INSERT [Acc].[tbUsuarios] ([Usua_Id], [Usua_Usuario], [Usua_Contraseña], [Usua_EsAdmin], [Role_Id], [Usua_UsuarioCreacion], [Usua_FechaCreacion], [Usua_UsuarioModificacion], [Usua_FechaModificacion], [Usua_Estado], [Perso_Id], [Usua_VerificarCorreo]) VALUES (52, N'52', N'5267768822EE624D48FCE15EC5CA79CBD602CB7F4C2157A516556991F22EF8C7B5EF7B18D1FF41C59370EFB0858651D44A936C11B7B144C48FE04DF3C6A3E8DA', 0, 2, 18, CAST(N'2024-04-18T23:06:24.290' AS DateTime), 18, CAST(N'2024-04-18T23:06:34.673' AS DateTime), 0, 2, NULL)
INSERT [Acc].[tbUsuarios] ([Usua_Id], [Usua_Usuario], [Usua_Contraseña], [Usua_EsAdmin], [Role_Id], [Usua_UsuarioCreacion], [Usua_FechaCreacion], [Usua_UsuarioModificacion], [Usua_FechaModificacion], [Usua_Estado], [Perso_Id], [Usua_VerificarCorreo]) VALUES (53, N'cc', N'ACC28DB2BEB7B42BAA1CB0243D401CCB4E3FCE44D7B02879A52799AADFF541522D8822598B2FA664F9D5156C00C924805D75C3868BD56C2ACB81D37E98E35ADC', 0, 2, 1, CAST(N'2024-04-18T23:20:03.107' AS DateTime), 1, CAST(N'2024-04-18T23:20:14.563' AS DateTime), 0, 2, NULL)
INSERT [Acc].[tbUsuarios] ([Usua_Id], [Usua_Usuario], [Usua_Contraseña], [Usua_EsAdmin], [Role_Id], [Usua_UsuarioCreacion], [Usua_FechaCreacion], [Usua_UsuarioModificacion], [Usua_FechaModificacion], [Usua_Estado], [Perso_Id], [Usua_VerificarCorreo]) VALUES (54, N'ss', N'2C1EE68372215B1CE064426B5CDBD4EF2581ACE0DD3B21FA2BE27F364827242E83F68B68BE03F5B3E24BE5D1B4315F98A0A96D19713FB3A19DC455FB6ADC3431', 0, 2, 1, CAST(N'2024-04-18T23:36:30.407' AS DateTime), 1, CAST(N'2024-04-18T23:37:45.473' AS DateTime), 0, 2, NULL)
INSERT [Acc].[tbUsuarios] ([Usua_Id], [Usua_Usuario], [Usua_Contraseña], [Usua_EsAdmin], [Role_Id], [Usua_UsuarioCreacion], [Usua_FechaCreacion], [Usua_UsuarioModificacion], [Usua_FechaModificacion], [Usua_Estado], [Perso_Id], [Usua_VerificarCorreo]) VALUES (55, N'ww', N'AA66509891AD28030349BA9581E8C92528FAAB6A34349061A44B6F8FCD8D6877A67B05508983F12F8610302D1783401A07EC41C7E9EBD656DE34EC60D84D9511', 0, 2, 1, CAST(N'2024-04-18T23:48:30.020' AS DateTime), 1, CAST(N'2024-04-20T21:11:29.480' AS DateTime), 0, 1, NULL)
INSERT [Acc].[tbUsuarios] ([Usua_Id], [Usua_Usuario], [Usua_Contraseña], [Usua_EsAdmin], [Role_Id], [Usua_UsuarioCreacion], [Usua_FechaCreacion], [Usua_UsuarioModificacion], [Usua_FechaModificacion], [Usua_Estado], [Perso_Id], [Usua_VerificarCorreo]) VALUES (56, N'vv', N'7B0776DBAC74A9ABB8A0D0119C73AE82EFBB1B95AF009F0669E2B52C9664F7FBB458DDF3ABD7CCF0617AB69362A13ADE046C4F19490710E5D8937BA72EFA90AA', 1, 2, 1, CAST(N'2024-04-18T23:50:29.253' AS DateTime), 1, CAST(N'2024-04-18T23:50:42.103' AS DateTime), 0, 2, NULL)
INSERT [Acc].[tbUsuarios] ([Usua_Id], [Usua_Usuario], [Usua_Contraseña], [Usua_EsAdmin], [Role_Id], [Usua_UsuarioCreacion], [Usua_FechaCreacion], [Usua_UsuarioModificacion], [Usua_FechaModificacion], [Usua_Estado], [Perso_Id], [Usua_VerificarCorreo]) VALUES (57, N'saa', N'30A76625D5FC75E3AB6793B19819935E65E43CF3745832061CB432A5DE7FDC17D66EDE77973D5AED065BC7E3E0536EBCC5129506955574E230B92B71BD2CB1C7', 0, 1, 1, CAST(N'2024-04-19T00:01:44.803' AS DateTime), 1, CAST(N'2024-04-19T00:01:57.377' AS DateTime), 0, 2, NULL)
INSERT [Acc].[tbUsuarios] ([Usua_Id], [Usua_Usuario], [Usua_Contraseña], [Usua_EsAdmin], [Role_Id], [Usua_UsuarioCreacion], [Usua_FechaCreacion], [Usua_UsuarioModificacion], [Usua_FechaModificacion], [Usua_Estado], [Perso_Id], [Usua_VerificarCorreo]) VALUES (58, N'sdd', N'28E2BCFB7724D64C3E166FF8A541A20F4005C4E453FDC657237554DA443BB0E2550304C4E7F143437A72479D30A517D61F290040220E7EEAEDA21AC23CAEDDE9', 1, 2, 1, CAST(N'2024-04-19T09:54:11.167' AS DateTime), 1, CAST(N'2024-04-19T11:02:58.973' AS DateTime), 0, 1, NULL)
INSERT [Acc].[tbUsuarios] ([Usua_Id], [Usua_Usuario], [Usua_Contraseña], [Usua_EsAdmin], [Role_Id], [Usua_UsuarioCreacion], [Usua_FechaCreacion], [Usua_UsuarioModificacion], [Usua_FechaModificacion], [Usua_Estado], [Perso_Id], [Usua_VerificarCorreo]) VALUES (59, N'prueba', N'FB131BC57A477C8C9D068F1EE5622AC304195A77164CCC2D75D82DFE1A727BA8D674ED87F96143B2B416AACEFB555E3045C356FAA23E6D21DE72B85822E39FDD', 0, 1, 1, CAST(N'2024-04-20T17:15:43.353' AS DateTime), NULL, NULL, 1, 1, NULL)
INSERT [Acc].[tbUsuarios] ([Usua_Id], [Usua_Usuario], [Usua_Contraseña], [Usua_EsAdmin], [Role_Id], [Usua_UsuarioCreacion], [Usua_FechaCreacion], [Usua_UsuarioModificacion], [Usua_FechaModificacion], [Usua_Estado], [Perso_Id], [Usua_VerificarCorreo]) VALUES (60, N'prueba2', N'FB131BC57A477C8C9D068F1EE5622AC304195A77164CCC2D75D82DFE1A727BA8D674ED87F96143B2B416AACEFB555E3045C356FAA23E6D21DE72B85822E39FDD', 0, 1, 1, CAST(N'2024-04-20T17:23:02.970' AS DateTime), NULL, NULL, 0, 1, NULL)
INSERT [Acc].[tbUsuarios] ([Usua_Id], [Usua_Usuario], [Usua_Contraseña], [Usua_EsAdmin], [Role_Id], [Usua_UsuarioCreacion], [Usua_FechaCreacion], [Usua_UsuarioModificacion], [Usua_FechaModificacion], [Usua_Estado], [Perso_Id], [Usua_VerificarCorreo]) VALUES (61, N'prueba3', N'FB131BC57A477C8C9D068F1EE5622AC304195A77164CCC2D75D82DFE1A727BA8D674ED87F96143B2B416AACEFB555E3045C356FAA23E6D21DE72B85822E39FDD', 0, 1, 1, CAST(N'2024-04-20T17:23:28.437' AS DateTime), NULL, NULL, 0, 1, NULL)
INSERT [Acc].[tbUsuarios] ([Usua_Id], [Usua_Usuario], [Usua_Contraseña], [Usua_EsAdmin], [Role_Id], [Usua_UsuarioCreacion], [Usua_FechaCreacion], [Usua_UsuarioModificacion], [Usua_FechaModificacion], [Usua_Estado], [Perso_Id], [Usua_VerificarCorreo]) VALUES (73, N'juan24', N'FB131BC57A477C8C9D068F1EE5622AC304195A77164CCC2D75D82DFE1A727BA8D674ED87F96143B2B416AACEFB555E3045C356FAA23E6D21DE72B85822E39FDD', 1, 2, 1, CAST(N'2024-04-20T22:55:34.443' AS DateTime), 1, CAST(N'2024-04-21T00:45:10.703' AS DateTime), 1, 1, NULL)
INSERT [Acc].[tbUsuarios] ([Usua_Id], [Usua_Usuario], [Usua_Contraseña], [Usua_EsAdmin], [Role_Id], [Usua_UsuarioCreacion], [Usua_FechaCreacion], [Usua_UsuarioModificacion], [Usua_FechaModificacion], [Usua_Estado], [Perso_Id], [Usua_VerificarCorreo]) VALUES (75, N'juan2024', N'FB131BC57A477C8C9D068F1EE5622AC304195A77164CCC2D75D82DFE1A727BA8D674ED87F96143B2B416AACEFB555E3045C356FAA23E6D21DE72B85822E39FDD', 1, 1, 1, CAST(N'2024-04-20T23:07:01.940' AS DateTime), NULL, NULL, 1, 1, NULL)
INSERT [Acc].[tbUsuarios] ([Usua_Id], [Usua_Usuario], [Usua_Contraseña], [Usua_EsAdmin], [Role_Id], [Usua_UsuarioCreacion], [Usua_FechaCreacion], [Usua_UsuarioModificacion], [Usua_FechaModificacion], [Usua_Estado], [Perso_Id], [Usua_VerificarCorreo]) VALUES (76, N'prueba2024', N'EF76D932B366EB3687B150948CC2CAC76EFB0F9F9929FFC076F36B275D58B6A5D8A6AEA3DB9FF9A8CD3FF5D0B73F25FB7A0AA577DCCA205D525B38100BE49BAE', 0, 1, 1, CAST(N'2024-04-20T23:08:00.607' AS DateTime), 1, CAST(N'2024-04-21T00:45:24.473' AS DateTime), 1, 5, NULL)
INSERT [Acc].[tbUsuarios] ([Usua_Id], [Usua_Usuario], [Usua_Contraseña], [Usua_EsAdmin], [Role_Id], [Usua_UsuarioCreacion], [Usua_FechaCreacion], [Usua_UsuarioModificacion], [Usua_FechaModificacion], [Usua_Estado], [Perso_Id], [Usua_VerificarCorreo]) VALUES (77, N'test007', N'FB131BC57A477C8C9D068F1EE5622AC304195A77164CCC2D75D82DFE1A727BA8D674ED87F96143B2B416AACEFB555E3045C356FAA23E6D21DE72B85822E39FDD', 0, 1, 1, CAST(N'2024-04-20T23:50:05.917' AS DateTime), NULL, NULL, 1, 1, NULL)
INSERT [Acc].[tbUsuarios] ([Usua_Id], [Usua_Usuario], [Usua_Contraseña], [Usua_EsAdmin], [Role_Id], [Usua_UsuarioCreacion], [Usua_FechaCreacion], [Usua_UsuarioModificacion], [Usua_FechaModificacion], [Usua_Estado], [Perso_Id], [Usua_VerificarCorreo]) VALUES (78, N'ddb', N'1DB779C5B3259B42E63C621B073C10B36C005840B6E71A141F1AF86A780D366F0FA241FA129AA18ABD042BE420EAC02FBA852478B7481EAD6ECFC5B948655A6C', 0, 2, 1, CAST(N'2024-04-21T17:26:22.583' AS DateTime), NULL, NULL, 1, 6, NULL)
INSERT [Acc].[tbUsuarios] ([Usua_Id], [Usua_Usuario], [Usua_Contraseña], [Usua_EsAdmin], [Role_Id], [Usua_UsuarioCreacion], [Usua_FechaCreacion], [Usua_UsuarioModificacion], [Usua_FechaModificacion], [Usua_Estado], [Perso_Id], [Usua_VerificarCorreo]) VALUES (79, N'juan444', N'FB131BC57A477C8C9D068F1EE5622AC304195A77164CCC2D75D82DFE1A727BA8D674ED87F96143B2B416AACEFB555E3045C356FAA23E6D21DE72B85822E39FDD', 0, 2, 1, CAST(N'2024-04-22T17:46:40.553' AS DateTime), NULL, NULL, 1, 5, NULL)
INSERT [Acc].[tbUsuarios] ([Usua_Id], [Usua_Usuario], [Usua_Contraseña], [Usua_EsAdmin], [Role_Id], [Usua_UsuarioCreacion], [Usua_FechaCreacion], [Usua_UsuarioModificacion], [Usua_FechaModificacion], [Usua_Estado], [Perso_Id], [Usua_VerificarCorreo]) VALUES (80, N'ess', N'A01626647AA0C79C4F0CCDE07C1E446E0FDCE6D67ABF746A68F9041F76C752CDE31D1D2D346FCBD58E8D56F5529EACDF624D7D5A1AA641EBEBBBE0B7D8AD04BE', 0, 2, 1, CAST(N'2024-04-24T21:54:10.527' AS DateTime), NULL, NULL, 1, 12, NULL)
INSERT [Acc].[tbUsuarios] ([Usua_Id], [Usua_Usuario], [Usua_Contraseña], [Usua_EsAdmin], [Role_Id], [Usua_UsuarioCreacion], [Usua_FechaCreacion], [Usua_UsuarioModificacion], [Usua_FechaModificacion], [Usua_Estado], [Perso_Id], [Usua_VerificarCorreo]) VALUES (81, N'sess', N'4CF3926C781388137541BD72B553DE13D4723733CF5E9B0D0A3D4F3BB92E778EA92ABAADBD03B6F5AB159A4EF95E24C25147D7C4B51D06834731592D6DFC3FE8', 0, 2, 1, CAST(N'2024-04-24T23:11:09.263' AS DateTime), NULL, NULL, 1, 13, NULL)
INSERT [Acc].[tbUsuarios] ([Usua_Id], [Usua_Usuario], [Usua_Contraseña], [Usua_EsAdmin], [Role_Id], [Usua_UsuarioCreacion], [Usua_FechaCreacion], [Usua_UsuarioModificacion], [Usua_FechaModificacion], [Usua_Estado], [Perso_Id], [Usua_VerificarCorreo]) VALUES (82, N'wwe', N'AFB32A1F04068A7DBD66A6167F4F5D7CF62805E2CCACE4D29A6C916C6497BFB65829B67687E53910DBBC230B73613865FE8DFCEB0A1D79FE912AFEBDA108C33E', 0, 2, 1, CAST(N'2024-04-25T03:18:36.510' AS DateTime), NULL, NULL, 1, 15, NULL)
INSERT [Acc].[tbUsuarios] ([Usua_Id], [Usua_Usuario], [Usua_Contraseña], [Usua_EsAdmin], [Role_Id], [Usua_UsuarioCreacion], [Usua_FechaCreacion], [Usua_UsuarioModificacion], [Usua_FechaModificacion], [Usua_Estado], [Perso_Id], [Usua_VerificarCorreo]) VALUES (83, N'fast', N'FB5B2F7F3010F9C4F8D8BDB528C8A3D402F0413BF9E1E35A4FA0FF857015AE269638FBE6911BAE14B51F555E27748F499CE6B68D593C4DDD059818D42860099A', 0, 2, 1, CAST(N'2024-04-25T11:21:35.287' AS DateTime), 1, CAST(N'2024-04-26T13:02:50.607' AS DateTime), 1, 16, N'23123')
INSERT [Acc].[tbUsuarios] ([Usua_Id], [Usua_Usuario], [Usua_Contraseña], [Usua_EsAdmin], [Role_Id], [Usua_UsuarioCreacion], [Usua_FechaCreacion], [Usua_UsuarioModificacion], [Usua_FechaModificacion], [Usua_Estado], [Perso_Id], [Usua_VerificarCorreo]) VALUES (84, N'aver', N'037202BE4A67DA65EC005F1FECF3E1EDD4A1FE0C6D5136394D736F59C3C9D1C49D9976F3F462633B7765DF4863E5DF4A7A47ADAFBF6E9CBF210C59F6038C7E89', 0, 2, NULL, CAST(N'2024-04-25T11:09:38.207' AS DateTime), NULL, NULL, 1, 17, NULL)
INSERT [Acc].[tbUsuarios] ([Usua_Id], [Usua_Usuario], [Usua_Contraseña], [Usua_EsAdmin], [Role_Id], [Usua_UsuarioCreacion], [Usua_FechaCreacion], [Usua_UsuarioModificacion], [Usua_FechaModificacion], [Usua_Estado], [Perso_Id], [Usua_VerificarCorreo]) VALUES (85, N'ssaa', N'6EF7CF4D35BC405FD032E370BD5A59692D6983AF8AC8F7C342839070EBE3D1903D613C629486A1959D0837636BD3710940074E4B81759ACDDC44576DE6D4D679', 0, 2, NULL, CAST(N'2024-04-25T11:13:37.647' AS DateTime), NULL, NULL, 1, 18, NULL)
INSERT [Acc].[tbUsuarios] ([Usua_Id], [Usua_Usuario], [Usua_Contraseña], [Usua_EsAdmin], [Role_Id], [Usua_UsuarioCreacion], [Usua_FechaCreacion], [Usua_UsuarioModificacion], [Usua_FechaModificacion], [Usua_Estado], [Perso_Id], [Usua_VerificarCorreo]) VALUES (86, N'ssfsfg', N'4D698DDC7E0BF21F98FF98E2E2FB5C201F8E90D38B6E01271CA44D5A49D6413A5700644D1F4108DE01075DA45AD4C336B00D8532EF360FD30ADE8F7C3307429E', 0, 2, NULL, CAST(N'2024-04-25T11:16:04.293' AS DateTime), NULL, NULL, 1, 19, NULL)
INSERT [Acc].[tbUsuarios] ([Usua_Id], [Usua_Usuario], [Usua_Contraseña], [Usua_EsAdmin], [Role_Id], [Usua_UsuarioCreacion], [Usua_FechaCreacion], [Usua_UsuarioModificacion], [Usua_FechaModificacion], [Usua_Estado], [Perso_Id], [Usua_VerificarCorreo]) VALUES (87, N'funcionapls', N'3F7306D2C0F4092C6E9C67CD8B25CC77E0310D271DF9EABA2433BC663041FCB8CB72BE24090D458DE19A5CAA06326058455A599EDE02547719CAA5082A63EB66', 0, 2, NULL, CAST(N'2024-04-25T12:34:31.803' AS DateTime), NULL, NULL, 1, 20, NULL)
INSERT [Acc].[tbUsuarios] ([Usua_Id], [Usua_Usuario], [Usua_Contraseña], [Usua_EsAdmin], [Role_Id], [Usua_UsuarioCreacion], [Usua_FechaCreacion], [Usua_UsuarioModificacion], [Usua_FechaModificacion], [Usua_Estado], [Perso_Id], [Usua_VerificarCorreo]) VALUES (88, N'yordii', N'C135DB9DC81BF4397AA5F16DE68DFEA97207BFF99C5A7BDE1CE01BEC2DC296E6274DADF941B5B2D11CE0F72FF470D9D2E8C3A37C5B7DBFD201003AB73551BD7F', 0, 1, 1, CAST(N'2024-04-26T12:48:18.937' AS DateTime), NULL, NULL, 1, 12, NULL)
SET IDENTITY_INSERT [Acc].[tbUsuarios] OFF
GO
SET IDENTITY_INSERT [Gas].[tbCategorias] ON 

INSERT [Gas].[tbCategorias] ([Cate_Id], [Cate_Descripcion], [Cate_UsuarioCreacion], [Cate_FechaCreacion], [Cate_UsuarioModificacion], [Cate_FechaModificacion], [Cate_Estado]) VALUES (1, N'Comida', 1, CAST(N'2024-03-01T00:00:00.000' AS DateTime), NULL, NULL, 1)
INSERT [Gas].[tbCategorias] ([Cate_Id], [Cate_Descripcion], [Cate_UsuarioCreacion], [Cate_FechaCreacion], [Cate_UsuarioModificacion], [Cate_FechaModificacion], [Cate_Estado]) VALUES (2, N'Transporte', 1, CAST(N'2024-03-01T00:00:00.000' AS DateTime), NULL, NULL, 1)
INSERT [Gas].[tbCategorias] ([Cate_Id], [Cate_Descripcion], [Cate_UsuarioCreacion], [Cate_FechaCreacion], [Cate_UsuarioModificacion], [Cate_FechaModificacion], [Cate_Estado]) VALUES (3, N'Vivienda', 1, CAST(N'2024-03-01T00:00:00.000' AS DateTime), NULL, NULL, 1)
INSERT [Gas].[tbCategorias] ([Cate_Id], [Cate_Descripcion], [Cate_UsuarioCreacion], [Cate_FechaCreacion], [Cate_UsuarioModificacion], [Cate_FechaModificacion], [Cate_Estado]) VALUES (4, N'Otros', 1, CAST(N'2024-03-01T00:00:00.000' AS DateTime), NULL, NULL, 1)
SET IDENTITY_INSERT [Gas].[tbCategorias] OFF
GO
SET IDENTITY_INSERT [Gas].[tbGastosPorRegistro] ON 

INSERT [Gas].[tbGastosPorRegistro] ([GaPr_Id], [GaPr_Monto], [Regi_Id], [SubC_Id], [GaPr_Nota], [GaPr_Fecha], [GaPr_UsuarioCreacion], [GaPr_FechaCreacion], [GaPr_UsuarioModificacion], [GaPr_FechaModificacion], [GaPr_Estado]) VALUES (1, CAST(200.00 AS Numeric(8, 2)), 1, 1, N'no', CAST(N'2024-05-05T00:00:00.000' AS DateTime), 1, CAST(N'2024-05-05T00:00:00.000' AS DateTime), NULL, CAST(N'2024-04-24T01:33:04.930' AS DateTime), 1)
INSERT [Gas].[tbGastosPorRegistro] ([GaPr_Id], [GaPr_Monto], [Regi_Id], [SubC_Id], [GaPr_Nota], [GaPr_Fecha], [GaPr_UsuarioCreacion], [GaPr_FechaCreacion], [GaPr_UsuarioModificacion], [GaPr_FechaModificacion], [GaPr_Estado]) VALUES (2, CAST(200.00 AS Numeric(8, 2)), 1, 3, N'null', CAST(N'2024-05-15T00:00:00.000' AS DateTime), 1, CAST(N'2024-05-05T00:00:00.000' AS DateTime), NULL, CAST(N'2024-04-24T22:39:32.880' AS DateTime), 1)
INSERT [Gas].[tbGastosPorRegistro] ([GaPr_Id], [GaPr_Monto], [Regi_Id], [SubC_Id], [GaPr_Nota], [GaPr_Fecha], [GaPr_UsuarioCreacion], [GaPr_FechaCreacion], [GaPr_UsuarioModificacion], [GaPr_FechaModificacion], [GaPr_Estado]) VALUES (3, CAST(700.00 AS Numeric(8, 2)), 1, 2, N'no', CAST(N'2024-04-15T00:00:00.000' AS DateTime), 1, CAST(N'2024-05-05T00:00:00.000' AS DateTime), NULL, CAST(N'2024-04-24T23:13:38.440' AS DateTime), 1)
INSERT [Gas].[tbGastosPorRegistro] ([GaPr_Id], [GaPr_Monto], [Regi_Id], [SubC_Id], [GaPr_Nota], [GaPr_Fecha], [GaPr_UsuarioCreacion], [GaPr_FechaCreacion], [GaPr_UsuarioModificacion], [GaPr_FechaModificacion], [GaPr_Estado]) VALUES (4, CAST(100.00 AS Numeric(8, 2)), 1, 6, N'null', CAST(N'2024-04-14T00:00:00.000' AS DateTime), 1, CAST(N'2024-05-05T00:00:00.000' AS DateTime), NULL, CAST(N'2024-04-25T18:44:18.220' AS DateTime), 1)
INSERT [Gas].[tbGastosPorRegistro] ([GaPr_Id], [GaPr_Monto], [Regi_Id], [SubC_Id], [GaPr_Nota], [GaPr_Fecha], [GaPr_UsuarioCreacion], [GaPr_FechaCreacion], [GaPr_UsuarioModificacion], [GaPr_FechaModificacion], [GaPr_Estado]) VALUES (5, CAST(100.00 AS Numeric(8, 2)), 2, 5, NULL, CAST(N'2024-04-14T00:00:00.000' AS DateTime), 1, CAST(N'2024-05-05T00:00:00.000' AS DateTime), NULL, NULL, 1)
INSERT [Gas].[tbGastosPorRegistro] ([GaPr_Id], [GaPr_Monto], [Regi_Id], [SubC_Id], [GaPr_Nota], [GaPr_Fecha], [GaPr_UsuarioCreacion], [GaPr_FechaCreacion], [GaPr_UsuarioModificacion], [GaPr_FechaModificacion], [GaPr_Estado]) VALUES (6, CAST(100.00 AS Numeric(8, 2)), 2, 3, N'nada', CAST(N'2024-04-14T00:00:00.000' AS DateTime), 1, CAST(N'2024-05-05T00:00:00.000' AS DateTime), 1, CAST(N'2024-10-11T00:00:00.000' AS DateTime), 0)
INSERT [Gas].[tbGastosPorRegistro] ([GaPr_Id], [GaPr_Monto], [Regi_Id], [SubC_Id], [GaPr_Nota], [GaPr_Fecha], [GaPr_UsuarioCreacion], [GaPr_FechaCreacion], [GaPr_UsuarioModificacion], [GaPr_FechaModificacion], [GaPr_Estado]) VALUES (7, CAST(100.00 AS Numeric(8, 2)), 3, 3, N'nada', CAST(N'2024-10-10T00:00:00.000' AS DateTime), 1, CAST(N'2024-10-10T00:00:00.000' AS DateTime), 1, CAST(N'2024-10-11T00:00:00.000' AS DateTime), 0)
INSERT [Gas].[tbGastosPorRegistro] ([GaPr_Id], [GaPr_Monto], [Regi_Id], [SubC_Id], [GaPr_Nota], [GaPr_Fecha], [GaPr_UsuarioCreacion], [GaPr_FechaCreacion], [GaPr_UsuarioModificacion], [GaPr_FechaModificacion], [GaPr_Estado]) VALUES (8, CAST(100.00 AS Numeric(8, 2)), 1, 2, N'si', CAST(N'2024-04-22T17:22:14.397' AS DateTime), 1, CAST(N'2024-04-22T11:22:40.973' AS DateTime), NULL, NULL, 1)
INSERT [Gas].[tbGastosPorRegistro] ([GaPr_Id], [GaPr_Monto], [Regi_Id], [SubC_Id], [GaPr_Nota], [GaPr_Fecha], [GaPr_UsuarioCreacion], [GaPr_FechaCreacion], [GaPr_UsuarioModificacion], [GaPr_FechaModificacion], [GaPr_Estado]) VALUES (13, CAST(200.00 AS Numeric(8, 2)), 1, 3, N'nada nuevo', CAST(N'2024-04-18T00:00:00.000' AS DateTime), 1, CAST(N'2024-04-24T22:13:29.870' AS DateTime), NULL, NULL, 1)
INSERT [Gas].[tbGastosPorRegistro] ([GaPr_Id], [GaPr_Monto], [Regi_Id], [SubC_Id], [GaPr_Nota], [GaPr_Fecha], [GaPr_UsuarioCreacion], [GaPr_FechaCreacion], [GaPr_UsuarioModificacion], [GaPr_FechaModificacion], [GaPr_Estado]) VALUES (14, CAST(130.00 AS Numeric(8, 2)), 2, 5, N'nada', CAST(N'2024-04-23T00:00:00.000' AS DateTime), 1, CAST(N'2024-04-26T03:28:33.563' AS DateTime), NULL, CAST(N'2024-04-26T03:29:21.623' AS DateTime), 1)
INSERT [Gas].[tbGastosPorRegistro] ([GaPr_Id], [GaPr_Monto], [Regi_Id], [SubC_Id], [GaPr_Nota], [GaPr_Fecha], [GaPr_UsuarioCreacion], [GaPr_FechaCreacion], [GaPr_UsuarioModificacion], [GaPr_FechaModificacion], [GaPr_Estado]) VALUES (15, CAST(200.00 AS Numeric(8, 2)), 4, 4, N'nada nuevoo', CAST(N'2024-04-23T00:00:00.000' AS DateTime), 1, CAST(N'2024-04-26T04:27:18.267' AS DateTime), NULL, CAST(N'2024-04-26T04:27:53.267' AS DateTime), 1)
INSERT [Gas].[tbGastosPorRegistro] ([GaPr_Id], [GaPr_Monto], [Regi_Id], [SubC_Id], [GaPr_Nota], [GaPr_Fecha], [GaPr_UsuarioCreacion], [GaPr_FechaCreacion], [GaPr_UsuarioModificacion], [GaPr_FechaModificacion], [GaPr_Estado]) VALUES (16, CAST(120.00 AS Numeric(8, 2)), 1, 6, N'nuevo gasto', CAST(N'2024-04-01T00:00:00.000' AS DateTime), 1, CAST(N'2024-04-26T12:16:26.457' AS DateTime), NULL, NULL, 1)
INSERT [Gas].[tbGastosPorRegistro] ([GaPr_Id], [GaPr_Monto], [Regi_Id], [SubC_Id], [GaPr_Nota], [GaPr_Fecha], [GaPr_UsuarioCreacion], [GaPr_FechaCreacion], [GaPr_UsuarioModificacion], [GaPr_FechaModificacion], [GaPr_Estado]) VALUES (17, CAST(500.00 AS Numeric(8, 2)), 1, 1, N'fghkk', CAST(N'2024-04-27T00:00:00.000' AS DateTime), 1, CAST(N'2024-04-26T12:53:28.287' AS DateTime), NULL, NULL, 1)
INSERT [Gas].[tbGastosPorRegistro] ([GaPr_Id], [GaPr_Monto], [Regi_Id], [SubC_Id], [GaPr_Nota], [GaPr_Fecha], [GaPr_UsuarioCreacion], [GaPr_FechaCreacion], [GaPr_UsuarioModificacion], [GaPr_FechaModificacion], [GaPr_Estado]) VALUES (18, CAST(12345.00 AS Numeric(8, 2)), 1, 1, N'ghhhgg', CAST(N'2024-04-30T00:00:00.000' AS DateTime), 1, CAST(N'2024-04-26T12:57:48.930' AS DateTime), NULL, NULL, 1)
SET IDENTITY_INSERT [Gas].[tbGastosPorRegistro] OFF
GO
SET IDENTITY_INSERT [Gas].[tbIngresosPorRegistro] ON 

INSERT [Gas].[tbIngresosPorRegistro] ([InPr_Id], [InPr_Monto], [Regi_Id], [InPr_Nota], [InPr_Fecha], [InPr_UsuarioCreacion], [InPr_FechaCreacion], [InPr_UsuarioModificacion], [InPr_FechaModificacion], [InPr_Estado]) VALUES (1, CAST(500.00 AS Numeric(8, 2)), 2, N'notnull', CAST(N'2024-05-05T00:00:00.000' AS DateTime), 1, CAST(N'2024-05-05T00:00:00.000' AS DateTime), NULL, CAST(N'2024-04-24T11:32:42.833' AS DateTime), 1)
INSERT [Gas].[tbIngresosPorRegistro] ([InPr_Id], [InPr_Monto], [Regi_Id], [InPr_Nota], [InPr_Fecha], [InPr_UsuarioCreacion], [InPr_FechaCreacion], [InPr_UsuarioModificacion], [InPr_FechaModificacion], [InPr_Estado]) VALUES (2, CAST(200.00 AS Numeric(8, 2)), 3, N'null', CAST(N'2024-05-05T00:00:00.000' AS DateTime), 1, CAST(N'2024-05-05T00:00:00.000' AS DateTime), NULL, CAST(N'2024-04-23T20:05:26.287' AS DateTime), 1)
INSERT [Gas].[tbIngresosPorRegistro] ([InPr_Id], [InPr_Monto], [Regi_Id], [InPr_Nota], [InPr_Fecha], [InPr_UsuarioCreacion], [InPr_FechaCreacion], [InPr_UsuarioModificacion], [InPr_FechaModificacion], [InPr_Estado]) VALUES (3, CAST(300.00 AS Numeric(8, 2)), 1, N'null', CAST(N'2024-01-05T00:00:00.000' AS DateTime), 1, CAST(N'2024-05-05T00:00:00.000' AS DateTime), NULL, CAST(N'2024-04-24T01:33:08.877' AS DateTime), 1)
INSERT [Gas].[tbIngresosPorRegistro] ([InPr_Id], [InPr_Monto], [Regi_Id], [InPr_Nota], [InPr_Fecha], [InPr_UsuarioCreacion], [InPr_FechaCreacion], [InPr_UsuarioModificacion], [InPr_FechaModificacion], [InPr_Estado]) VALUES (4, CAST(250.00 AS Numeric(8, 2)), 2, N'sii', CAST(N'2024-05-05T00:00:00.000' AS DateTime), 1, CAST(N'2024-05-05T00:00:00.000' AS DateTime), NULL, CAST(N'2024-04-23T11:29:12.710' AS DateTime), 0)
INSERT [Gas].[tbIngresosPorRegistro] ([InPr_Id], [InPr_Monto], [Regi_Id], [InPr_Nota], [InPr_Fecha], [InPr_UsuarioCreacion], [InPr_FechaCreacion], [InPr_UsuarioModificacion], [InPr_FechaModificacion], [InPr_Estado]) VALUES (5, CAST(100.00 AS Numeric(8, 2)), 3, N'nadaa', CAST(N'2024-10-10T00:00:00.000' AS DateTime), 1, CAST(N'2024-10-10T00:00:00.000' AS DateTime), 1, CAST(N'2024-09-10T00:00:00.000' AS DateTime), 0)
INSERT [Gas].[tbIngresosPorRegistro] ([InPr_Id], [InPr_Monto], [Regi_Id], [InPr_Nota], [InPr_Fecha], [InPr_UsuarioCreacion], [InPr_FechaCreacion], [InPr_UsuarioModificacion], [InPr_FechaModificacion], [InPr_Estado]) VALUES (6, CAST(50.00 AS Numeric(8, 2)), 1, N'si', CAST(N'2024-04-22T17:41:54.993' AS DateTime), 1, CAST(N'2024-04-22T11:42:15.720' AS DateTime), NULL, NULL, 0)
INSERT [Gas].[tbIngresosPorRegistro] ([InPr_Id], [InPr_Monto], [Regi_Id], [InPr_Nota], [InPr_Fecha], [InPr_UsuarioCreacion], [InPr_FechaCreacion], [InPr_UsuarioModificacion], [InPr_FechaModificacion], [InPr_Estado]) VALUES (7, CAST(200.00 AS Numeric(8, 2)), 1, N'nada', CAST(N'2024-10-10T00:00:00.000' AS DateTime), 1, CAST(N'2024-04-22T20:09:17.180' AS DateTime), NULL, NULL, 0)
INSERT [Gas].[tbIngresosPorRegistro] ([InPr_Id], [InPr_Monto], [Regi_Id], [InPr_Nota], [InPr_Fecha], [InPr_UsuarioCreacion], [InPr_FechaCreacion], [InPr_UsuarioModificacion], [InPr_FechaModificacion], [InPr_Estado]) VALUES (8, CAST(250.00 AS Numeric(8, 2)), 2, N'sii', CAST(N'2024-05-05T00:00:00.000' AS DateTime), 1, CAST(N'2024-04-23T11:00:32.960' AS DateTime), NULL, CAST(N'2024-04-24T10:33:42.583' AS DateTime), 1)
INSERT [Gas].[tbIngresosPorRegistro] ([InPr_Id], [InPr_Monto], [Regi_Id], [InPr_Nota], [InPr_Fecha], [InPr_UsuarioCreacion], [InPr_FechaCreacion], [InPr_UsuarioModificacion], [InPr_FechaModificacion], [InPr_Estado]) VALUES (9, CAST(250.00 AS Numeric(8, 2)), 2, N'null', CAST(N'2024-05-05T00:00:00.000' AS DateTime), 1, CAST(N'2024-04-23T11:00:42.820' AS DateTime), NULL, NULL, 1)
INSERT [Gas].[tbIngresosPorRegistro] ([InPr_Id], [InPr_Monto], [Regi_Id], [InPr_Nota], [InPr_Fecha], [InPr_UsuarioCreacion], [InPr_FechaCreacion], [InPr_UsuarioModificacion], [InPr_FechaModificacion], [InPr_Estado]) VALUES (10, CAST(250.00 AS Numeric(8, 2)), 2, N'null', CAST(N'2024-05-05T00:00:00.000' AS DateTime), 1, CAST(N'2024-04-23T11:00:42.853' AS DateTime), NULL, NULL, 1)
INSERT [Gas].[tbIngresosPorRegistro] ([InPr_Id], [InPr_Monto], [Regi_Id], [InPr_Nota], [InPr_Fecha], [InPr_UsuarioCreacion], [InPr_FechaCreacion], [InPr_UsuarioModificacion], [InPr_FechaModificacion], [InPr_Estado]) VALUES (11, CAST(120.00 AS Numeric(8, 2)), 4, N'new', CAST(N'2024-04-30T00:00:00.000' AS DateTime), 1, CAST(N'2024-04-26T04:26:29.033' AS DateTime), NULL, CAST(N'2024-04-26T04:28:16.857' AS DateTime), 1)
INSERT [Gas].[tbIngresosPorRegistro] ([InPr_Id], [InPr_Monto], [Regi_Id], [InPr_Nota], [InPr_Fecha], [InPr_UsuarioCreacion], [InPr_FechaCreacion], [InPr_UsuarioModificacion], [InPr_FechaModificacion], [InPr_Estado]) VALUES (12, CAST(500.00 AS Numeric(8, 2)), 1, N'ggg', CAST(N'2024-04-27T00:00:00.000' AS DateTime), 1, CAST(N'2024-04-26T12:52:08.500' AS DateTime), NULL, CAST(N'2024-04-26T12:52:21.593' AS DateTime), 1)
SET IDENTITY_INSERT [Gas].[tbIngresosPorRegistro] OFF
GO
SET IDENTITY_INSERT [Gas].[tbRegistros] ON 

INSERT [Gas].[tbRegistros] ([Regi_Id], [Perso_Id], [Regi_MiCredito], [Regi_UsuarioCreacion], [Regi_FechaCreacion], [Regi_UsuarioModificacion], [Regi_FechaModificacion], [Regi_Estado]) VALUES (1, 1, CAST(-8465.00 AS Numeric(8, 2)), 4, CAST(N'2024-05-05T00:00:00.000' AS DateTime), NULL, NULL, 1)
INSERT [Gas].[tbRegistros] ([Regi_Id], [Perso_Id], [Regi_MiCredito], [Regi_UsuarioCreacion], [Regi_FechaCreacion], [Regi_UsuarioModificacion], [Regi_FechaModificacion], [Regi_Estado]) VALUES (2, 5, CAST(8570.00 AS Numeric(8, 2)), 5, CAST(N'2024-05-05T00:00:00.000' AS DateTime), NULL, NULL, 1)
INSERT [Gas].[tbRegistros] ([Regi_Id], [Perso_Id], [Regi_MiCredito], [Regi_UsuarioCreacion], [Regi_FechaCreacion], [Regi_UsuarioModificacion], [Regi_FechaModificacion], [Regi_Estado]) VALUES (3, 2, CAST(5600.00 AS Numeric(8, 2)), 5, CAST(N'2024-05-05T00:00:00.000' AS DateTime), NULL, NULL, 1)
INSERT [Gas].[tbRegistros] ([Regi_Id], [Perso_Id], [Regi_MiCredito], [Regi_UsuarioCreacion], [Regi_FechaCreacion], [Regi_UsuarioModificacion], [Regi_FechaModificacion], [Regi_Estado]) VALUES (4, 16, CAST(15920.00 AS Numeric(8, 2)), 83, CAST(N'2023-10-10T00:00:00.000' AS DateTime), NULL, NULL, 1)
INSERT [Gas].[tbRegistros] ([Regi_Id], [Perso_Id], [Regi_MiCredito], [Regi_UsuarioCreacion], [Regi_FechaCreacion], [Regi_UsuarioModificacion], [Regi_FechaModificacion], [Regi_Estado]) VALUES (5, 17, CAST(0.00 AS Numeric(8, 2)), 84, CAST(N'2024-04-25T11:09:38.297' AS DateTime), NULL, NULL, 1)
INSERT [Gas].[tbRegistros] ([Regi_Id], [Perso_Id], [Regi_MiCredito], [Regi_UsuarioCreacion], [Regi_FechaCreacion], [Regi_UsuarioModificacion], [Regi_FechaModificacion], [Regi_Estado]) VALUES (6, 18, CAST(0.00 AS Numeric(8, 2)), 85, CAST(N'2024-04-25T11:15:45.083' AS DateTime), NULL, NULL, 1)
INSERT [Gas].[tbRegistros] ([Regi_Id], [Perso_Id], [Regi_MiCredito], [Regi_UsuarioCreacion], [Regi_FechaCreacion], [Regi_UsuarioModificacion], [Regi_FechaModificacion], [Regi_Estado]) VALUES (7, 19, CAST(5210.00 AS Numeric(8, 2)), 86, CAST(N'2024-04-25T11:16:11.423' AS DateTime), NULL, NULL, 1)
SET IDENTITY_INSERT [Gas].[tbRegistros] OFF
GO
INSERT [Gas].[tbRegistrosBitacora] ([Regi_Id], [Perso_Id], [Regi_MiCredito], [Regi_UsuarioCreacion], [Regi_FechaCreacion], [Regi_UsuarioModificacion], [Regi_FechaModificacion], [Regi_Estado], [Regi_Accion], [Regi_Fecha]) VALUES (3, 2, CAST(6200.00 AS Numeric(8, 2)), 5, CAST(N'2024-05-05T00:00:00.000' AS DateTime), NULL, NULL, 1, N'U', CAST(N'2024-04-21T15:43:58.510' AS DateTime))
INSERT [Gas].[tbRegistrosBitacora] ([Regi_Id], [Perso_Id], [Regi_MiCredito], [Regi_UsuarioCreacion], [Regi_FechaCreacion], [Regi_UsuarioModificacion], [Regi_FechaModificacion], [Regi_Estado], [Regi_Accion], [Regi_Fecha]) VALUES (3, 2, CAST(6100.00 AS Numeric(8, 2)), 5, CAST(N'2024-05-05T00:00:00.000' AS DateTime), NULL, NULL, 1, N'U', CAST(N'2024-04-21T15:46:14.313' AS DateTime))
INSERT [Gas].[tbRegistrosBitacora] ([Regi_Id], [Perso_Id], [Regi_MiCredito], [Regi_UsuarioCreacion], [Regi_FechaCreacion], [Regi_UsuarioModificacion], [Regi_FechaModificacion], [Regi_Estado], [Regi_Accion], [Regi_Fecha]) VALUES (3, 2, CAST(6000.00 AS Numeric(8, 2)), 5, CAST(N'2024-05-05T00:00:00.000' AS DateTime), NULL, NULL, 1, N'U', CAST(N'2024-04-21T15:46:38.997' AS DateTime))
INSERT [Gas].[tbRegistrosBitacora] ([Regi_Id], [Perso_Id], [Regi_MiCredito], [Regi_UsuarioCreacion], [Regi_FechaCreacion], [Regi_UsuarioModificacion], [Regi_FechaModificacion], [Regi_Estado], [Regi_Accion], [Regi_Fecha]) VALUES (3, 2, CAST(5800.00 AS Numeric(8, 2)), 5, CAST(N'2024-05-05T00:00:00.000' AS DateTime), NULL, NULL, 1, N'U', CAST(N'2024-04-21T15:47:46.280' AS DateTime))
INSERT [Gas].[tbRegistrosBitacora] ([Regi_Id], [Perso_Id], [Regi_MiCredito], [Regi_UsuarioCreacion], [Regi_FechaCreacion], [Regi_UsuarioModificacion], [Regi_FechaModificacion], [Regi_Estado], [Regi_Accion], [Regi_Fecha]) VALUES (3, 2, CAST(5600.00 AS Numeric(8, 2)), 5, CAST(N'2024-05-05T00:00:00.000' AS DateTime), NULL, NULL, 1, N'U', CAST(N'2024-04-21T15:49:07.737' AS DateTime))
INSERT [Gas].[tbRegistrosBitacora] ([Regi_Id], [Perso_Id], [Regi_MiCredito], [Regi_UsuarioCreacion], [Regi_FechaCreacion], [Regi_UsuarioModificacion], [Regi_FechaModificacion], [Regi_Estado], [Regi_Accion], [Regi_Fecha]) VALUES (2, 5, CAST(8350.00 AS Numeric(8, 2)), 5, CAST(N'2024-05-05T00:00:00.000' AS DateTime), NULL, NULL, 1, N'U', CAST(N'2024-04-21T15:52:15.530' AS DateTime))
INSERT [Gas].[tbRegistrosBitacora] ([Regi_Id], [Perso_Id], [Regi_MiCredito], [Regi_UsuarioCreacion], [Regi_FechaCreacion], [Regi_UsuarioModificacion], [Regi_FechaModificacion], [Regi_Estado], [Regi_Accion], [Regi_Fecha]) VALUES (3, 2, CAST(5500.00 AS Numeric(8, 2)), 5, CAST(N'2024-05-05T00:00:00.000' AS DateTime), NULL, NULL, 1, N'U', CAST(N'2024-04-21T15:52:50.283' AS DateTime))
INSERT [Gas].[tbRegistrosBitacora] ([Regi_Id], [Perso_Id], [Regi_MiCredito], [Regi_UsuarioCreacion], [Regi_FechaCreacion], [Regi_UsuarioModificacion], [Regi_FechaModificacion], [Regi_Estado], [Regi_Accion], [Regi_Fecha]) VALUES (1, 1, CAST(4200.00 AS Numeric(8, 2)), 4, CAST(N'2024-05-05T00:00:00.000' AS DateTime), NULL, NULL, 1, N'U', CAST(N'2024-04-22T12:22:42.490' AS DateTime))
INSERT [Gas].[tbRegistrosBitacora] ([Regi_Id], [Perso_Id], [Regi_MiCredito], [Regi_UsuarioCreacion], [Regi_FechaCreacion], [Regi_UsuarioModificacion], [Regi_FechaModificacion], [Regi_Estado], [Regi_Accion], [Regi_Fecha]) VALUES (1, 1, NULL, 4, CAST(N'2024-05-05T00:00:00.000' AS DateTime), NULL, NULL, 1, N'U', CAST(N'2024-04-22T12:24:13.417' AS DateTime))
INSERT [Gas].[tbRegistrosBitacora] ([Regi_Id], [Perso_Id], [Regi_MiCredito], [Regi_UsuarioCreacion], [Regi_FechaCreacion], [Regi_UsuarioModificacion], [Regi_FechaModificacion], [Regi_Estado], [Regi_Accion], [Regi_Fecha]) VALUES (1, 1, CAST(4200.00 AS Numeric(8, 2)), 4, CAST(N'2024-05-05T00:00:00.000' AS DateTime), NULL, NULL, 1, N'U', CAST(N'2024-04-22T12:35:36.627' AS DateTime))
INSERT [Gas].[tbRegistrosBitacora] ([Regi_Id], [Perso_Id], [Regi_MiCredito], [Regi_UsuarioCreacion], [Regi_FechaCreacion], [Regi_UsuarioModificacion], [Regi_FechaModificacion], [Regi_Estado], [Regi_Accion], [Regi_Fecha]) VALUES (1, 1, NULL, 4, CAST(N'2024-05-05T00:00:00.000' AS DateTime), NULL, NULL, 1, N'U', CAST(N'2024-04-22T12:35:45.900' AS DateTime))
INSERT [Gas].[tbRegistrosBitacora] ([Regi_Id], [Perso_Id], [Regi_MiCredito], [Regi_UsuarioCreacion], [Regi_FechaCreacion], [Regi_UsuarioModificacion], [Regi_FechaModificacion], [Regi_Estado], [Regi_Accion], [Regi_Fecha]) VALUES (1, 1, CAST(4300.00 AS Numeric(8, 2)), 4, CAST(N'2024-05-05T00:00:00.000' AS DateTime), NULL, NULL, 1, N'U', CAST(N'2024-04-22T12:36:56.003' AS DateTime))
INSERT [Gas].[tbRegistrosBitacora] ([Regi_Id], [Perso_Id], [Regi_MiCredito], [Regi_UsuarioCreacion], [Regi_FechaCreacion], [Regi_UsuarioModificacion], [Regi_FechaModificacion], [Regi_Estado], [Regi_Accion], [Regi_Fecha]) VALUES (1, 1, CAST(4300.00 AS Numeric(8, 2)), 4, CAST(N'2024-05-05T00:00:00.000' AS DateTime), NULL, NULL, 1, N'U', CAST(N'2024-04-22T20:50:13.900' AS DateTime))
INSERT [Gas].[tbRegistrosBitacora] ([Regi_Id], [Perso_Id], [Regi_MiCredito], [Regi_UsuarioCreacion], [Regi_FechaCreacion], [Regi_UsuarioModificacion], [Regi_FechaModificacion], [Regi_Estado], [Regi_Accion], [Regi_Fecha]) VALUES (1, 1, CAST(4200.00 AS Numeric(8, 2)), 4, CAST(N'2024-05-05T00:00:00.000' AS DateTime), NULL, NULL, 1, N'U', CAST(N'2024-04-22T21:03:50.520' AS DateTime))
INSERT [Gas].[tbRegistrosBitacora] ([Regi_Id], [Perso_Id], [Regi_MiCredito], [Regi_UsuarioCreacion], [Regi_FechaCreacion], [Regi_UsuarioModificacion], [Regi_FechaModificacion], [Regi_Estado], [Regi_Accion], [Regi_Fecha]) VALUES (1, 1, CAST(4400.00 AS Numeric(8, 2)), 4, CAST(N'2024-05-05T00:00:00.000' AS DateTime), NULL, NULL, 1, N'U', CAST(N'2024-04-22T21:09:16.167' AS DateTime))
INSERT [Gas].[tbRegistrosBitacora] ([Regi_Id], [Perso_Id], [Regi_MiCredito], [Regi_UsuarioCreacion], [Regi_FechaCreacion], [Regi_UsuarioModificacion], [Regi_FechaModificacion], [Regi_Estado], [Regi_Accion], [Regi_Fecha]) VALUES (2, 5, CAST(8600.00 AS Numeric(8, 2)), 5, CAST(N'2024-05-05T00:00:00.000' AS DateTime), NULL, NULL, 1, N'U', CAST(N'2024-04-23T11:00:32.977' AS DateTime))
INSERT [Gas].[tbRegistrosBitacora] ([Regi_Id], [Perso_Id], [Regi_MiCredito], [Regi_UsuarioCreacion], [Regi_FechaCreacion], [Regi_UsuarioModificacion], [Regi_FechaModificacion], [Regi_Estado], [Regi_Accion], [Regi_Fecha]) VALUES (2, 5, CAST(8850.00 AS Numeric(8, 2)), 5, CAST(N'2024-05-05T00:00:00.000' AS DateTime), NULL, NULL, 1, N'U', CAST(N'2024-04-23T11:00:42.817' AS DateTime))
INSERT [Gas].[tbRegistrosBitacora] ([Regi_Id], [Perso_Id], [Regi_MiCredito], [Regi_UsuarioCreacion], [Regi_FechaCreacion], [Regi_UsuarioModificacion], [Regi_FechaModificacion], [Regi_Estado], [Regi_Accion], [Regi_Fecha]) VALUES (2, 5, CAST(9100.00 AS Numeric(8, 2)), 5, CAST(N'2024-05-05T00:00:00.000' AS DateTime), NULL, NULL, 1, N'U', CAST(N'2024-04-23T11:00:42.850' AS DateTime))
INSERT [Gas].[tbRegistrosBitacora] ([Regi_Id], [Perso_Id], [Regi_MiCredito], [Regi_UsuarioCreacion], [Regi_FechaCreacion], [Regi_UsuarioModificacion], [Regi_FechaModificacion], [Regi_Estado], [Regi_Accion], [Regi_Fecha]) VALUES (2, 5, CAST(9100.00 AS Numeric(8, 2)), 5, CAST(N'2024-05-05T00:00:00.000' AS DateTime), NULL, NULL, 1, N'U', CAST(N'2024-04-23T11:27:45.330' AS DateTime))
INSERT [Gas].[tbRegistrosBitacora] ([Regi_Id], [Perso_Id], [Regi_MiCredito], [Regi_UsuarioCreacion], [Regi_FechaCreacion], [Regi_UsuarioModificacion], [Regi_FechaModificacion], [Regi_Estado], [Regi_Accion], [Regi_Fecha]) VALUES (2, 5, CAST(9100.00 AS Numeric(8, 2)), 5, CAST(N'2024-05-05T00:00:00.000' AS DateTime), NULL, NULL, 1, N'U', CAST(N'2024-04-23T11:29:12.687' AS DateTime))
INSERT [Gas].[tbRegistrosBitacora] ([Regi_Id], [Perso_Id], [Regi_MiCredito], [Regi_UsuarioCreacion], [Regi_FechaCreacion], [Regi_UsuarioModificacion], [Regi_FechaModificacion], [Regi_Estado], [Regi_Accion], [Regi_Fecha]) VALUES (1, 1, CAST(4400.00 AS Numeric(8, 2)), 4, CAST(N'2024-05-05T00:00:00.000' AS DateTime), NULL, NULL, 1, N'U', CAST(N'2024-04-23T19:55:14.130' AS DateTime))
INSERT [Gas].[tbRegistrosBitacora] ([Regi_Id], [Perso_Id], [Regi_MiCredito], [Regi_UsuarioCreacion], [Regi_FechaCreacion], [Regi_UsuarioModificacion], [Regi_FechaModificacion], [Regi_Estado], [Regi_Accion], [Regi_Fecha]) VALUES (1, 1, CAST(4400.00 AS Numeric(8, 2)), 4, CAST(N'2024-05-05T00:00:00.000' AS DateTime), NULL, NULL, 1, N'U', CAST(N'2024-04-23T19:55:26.530' AS DateTime))
INSERT [Gas].[tbRegistrosBitacora] ([Regi_Id], [Perso_Id], [Regi_MiCredito], [Regi_UsuarioCreacion], [Regi_FechaCreacion], [Regi_UsuarioModificacion], [Regi_FechaModificacion], [Regi_Estado], [Regi_Accion], [Regi_Fecha]) VALUES (1, 1, CAST(4400.00 AS Numeric(8, 2)), 4, CAST(N'2024-05-05T00:00:00.000' AS DateTime), NULL, NULL, 1, N'U', CAST(N'2024-04-23T20:03:33.233' AS DateTime))
INSERT [Gas].[tbRegistrosBitacora] ([Regi_Id], [Perso_Id], [Regi_MiCredito], [Regi_UsuarioCreacion], [Regi_FechaCreacion], [Regi_UsuarioModificacion], [Regi_FechaModificacion], [Regi_Estado], [Regi_Accion], [Regi_Fecha]) VALUES (1, 1, CAST(4400.00 AS Numeric(8, 2)), 4, CAST(N'2024-05-05T00:00:00.000' AS DateTime), NULL, NULL, 1, N'U', CAST(N'2024-04-23T20:04:00.640' AS DateTime))
INSERT [Gas].[tbRegistrosBitacora] ([Regi_Id], [Perso_Id], [Regi_MiCredito], [Regi_UsuarioCreacion], [Regi_FechaCreacion], [Regi_UsuarioModificacion], [Regi_FechaModificacion], [Regi_Estado], [Regi_Accion], [Regi_Fecha]) VALUES (3, 2, CAST(5600.00 AS Numeric(8, 2)), 5, CAST(N'2024-05-05T00:00:00.000' AS DateTime), NULL, NULL, 1, N'U', CAST(N'2024-04-23T20:05:26.263' AS DateTime))
INSERT [Gas].[tbRegistrosBitacora] ([Regi_Id], [Perso_Id], [Regi_MiCredito], [Regi_UsuarioCreacion], [Regi_FechaCreacion], [Regi_UsuarioModificacion], [Regi_FechaModificacion], [Regi_Estado], [Regi_Accion], [Regi_Fecha]) VALUES (1, 1, CAST(4400.00 AS Numeric(8, 2)), 4, CAST(N'2024-05-05T00:00:00.000' AS DateTime), NULL, NULL, 1, N'U', CAST(N'2024-04-23T20:05:30.797' AS DateTime))
INSERT [Gas].[tbRegistrosBitacora] ([Regi_Id], [Perso_Id], [Regi_MiCredito], [Regi_UsuarioCreacion], [Regi_FechaCreacion], [Regi_UsuarioModificacion], [Regi_FechaModificacion], [Regi_Estado], [Regi_Accion], [Regi_Fecha]) VALUES (1, 1, CAST(4400.00 AS Numeric(8, 2)), 4, CAST(N'2024-05-05T00:00:00.000' AS DateTime), NULL, NULL, 1, N'U', CAST(N'2024-04-23T20:09:13.873' AS DateTime))
INSERT [Gas].[tbRegistrosBitacora] ([Regi_Id], [Perso_Id], [Regi_MiCredito], [Regi_UsuarioCreacion], [Regi_FechaCreacion], [Regi_UsuarioModificacion], [Regi_FechaModificacion], [Regi_Estado], [Regi_Accion], [Regi_Fecha]) VALUES (1, 1, CAST(4400.00 AS Numeric(8, 2)), 4, CAST(N'2024-05-05T00:00:00.000' AS DateTime), NULL, NULL, 1, N'U', CAST(N'2024-04-23T20:11:55.850' AS DateTime))
INSERT [Gas].[tbRegistrosBitacora] ([Regi_Id], [Perso_Id], [Regi_MiCredito], [Regi_UsuarioCreacion], [Regi_FechaCreacion], [Regi_UsuarioModificacion], [Regi_FechaModificacion], [Regi_Estado], [Regi_Accion], [Regi_Fecha]) VALUES (1, 1, CAST(4400.00 AS Numeric(8, 2)), 4, CAST(N'2024-05-05T00:00:00.000' AS DateTime), NULL, NULL, 1, N'U', CAST(N'2024-04-23T20:12:07.103' AS DateTime))
INSERT [Gas].[tbRegistrosBitacora] ([Regi_Id], [Perso_Id], [Regi_MiCredito], [Regi_UsuarioCreacion], [Regi_FechaCreacion], [Regi_UsuarioModificacion], [Regi_FechaModificacion], [Regi_Estado], [Regi_Accion], [Regi_Fecha]) VALUES (1, 1, CAST(4280.00 AS Numeric(8, 2)), 4, CAST(N'2024-05-05T00:00:00.000' AS DateTime), NULL, NULL, 1, N'U', CAST(N'2024-04-24T01:28:24.250' AS DateTime))
INSERT [Gas].[tbRegistrosBitacora] ([Regi_Id], [Perso_Id], [Regi_MiCredito], [Regi_UsuarioCreacion], [Regi_FechaCreacion], [Regi_UsuarioModificacion], [Regi_FechaModificacion], [Regi_Estado], [Regi_Accion], [Regi_Fecha]) VALUES (1, 1, CAST(4280.00 AS Numeric(8, 2)), 4, CAST(N'2024-05-05T00:00:00.000' AS DateTime), NULL, NULL, 1, N'U', CAST(N'2024-04-24T01:32:43.093' AS DateTime))
INSERT [Gas].[tbRegistrosBitacora] ([Regi_Id], [Perso_Id], [Regi_MiCredito], [Regi_UsuarioCreacion], [Regi_FechaCreacion], [Regi_UsuarioModificacion], [Regi_FechaModificacion], [Regi_Estado], [Regi_Accion], [Regi_Fecha]) VALUES (1, 1, CAST(4280.00 AS Numeric(8, 2)), 4, CAST(N'2024-05-05T00:00:00.000' AS DateTime), NULL, NULL, 1, N'U', CAST(N'2024-04-24T01:32:51.520' AS DateTime))
INSERT [Gas].[tbRegistrosBitacora] ([Regi_Id], [Perso_Id], [Regi_MiCredito], [Regi_UsuarioCreacion], [Regi_FechaCreacion], [Regi_UsuarioModificacion], [Regi_FechaModificacion], [Regi_Estado], [Regi_Accion], [Regi_Fecha]) VALUES (1, 1, CAST(4280.00 AS Numeric(8, 2)), 4, CAST(N'2024-05-05T00:00:00.000' AS DateTime), NULL, NULL, 1, N'U', CAST(N'2024-04-24T01:33:04.943' AS DateTime))
INSERT [Gas].[tbRegistrosBitacora] ([Regi_Id], [Perso_Id], [Regi_MiCredito], [Regi_UsuarioCreacion], [Regi_FechaCreacion], [Regi_UsuarioModificacion], [Regi_FechaModificacion], [Regi_Estado], [Regi_Accion], [Regi_Fecha]) VALUES (1, 1, CAST(4280.00 AS Numeric(8, 2)), 4, CAST(N'2024-05-05T00:00:00.000' AS DateTime), NULL, NULL, 1, N'U', CAST(N'2024-04-24T01:33:08.897' AS DateTime))
INSERT [Gas].[tbRegistrosBitacora] ([Regi_Id], [Perso_Id], [Regi_MiCredito], [Regi_UsuarioCreacion], [Regi_FechaCreacion], [Regi_UsuarioModificacion], [Regi_FechaModificacion], [Regi_Estado], [Regi_Accion], [Regi_Fecha]) VALUES (2, 5, CAST(8850.00 AS Numeric(8, 2)), 5, CAST(N'2024-05-05T00:00:00.000' AS DateTime), NULL, NULL, 1, N'U', CAST(N'2024-04-24T10:22:30.437' AS DateTime))
INSERT [Gas].[tbRegistrosBitacora] ([Regi_Id], [Perso_Id], [Regi_MiCredito], [Regi_UsuarioCreacion], [Regi_FechaCreacion], [Regi_UsuarioModificacion], [Regi_FechaModificacion], [Regi_Estado], [Regi_Accion], [Regi_Fecha]) VALUES (2, 5, CAST(8600.00 AS Numeric(8, 2)), 5, CAST(N'2024-05-05T00:00:00.000' AS DateTime), NULL, NULL, 1, N'U', CAST(N'2024-04-24T10:22:59.660' AS DateTime))
INSERT [Gas].[tbRegistrosBitacora] ([Regi_Id], [Perso_Id], [Regi_MiCredito], [Regi_UsuarioCreacion], [Regi_FechaCreacion], [Regi_UsuarioModificacion], [Regi_FechaModificacion], [Regi_Estado], [Regi_Accion], [Regi_Fecha]) VALUES (1, 1, CAST(4230.00 AS Numeric(8, 2)), 4, CAST(N'2024-05-05T00:00:00.000' AS DateTime), NULL, NULL, 1, N'U', CAST(N'2024-04-24T10:24:47.373' AS DateTime))
INSERT [Gas].[tbRegistrosBitacora] ([Regi_Id], [Perso_Id], [Regi_MiCredito], [Regi_UsuarioCreacion], [Regi_FechaCreacion], [Regi_UsuarioModificacion], [Regi_FechaModificacion], [Regi_Estado], [Regi_Accion], [Regi_Fecha]) VALUES (1, 1, CAST(4030.00 AS Numeric(8, 2)), 4, CAST(N'2024-05-05T00:00:00.000' AS DateTime), NULL, NULL, 1, N'U', CAST(N'2024-04-24T10:25:35.880' AS DateTime))
INSERT [Gas].[tbRegistrosBitacora] ([Regi_Id], [Perso_Id], [Regi_MiCredito], [Regi_UsuarioCreacion], [Regi_FechaCreacion], [Regi_UsuarioModificacion], [Regi_FechaModificacion], [Regi_Estado], [Regi_Accion], [Regi_Fecha]) VALUES (2, 5, CAST(8700.00 AS Numeric(8, 2)), 5, CAST(N'2024-05-05T00:00:00.000' AS DateTime), NULL, NULL, 1, N'U', CAST(N'2024-04-24T10:27:08.970' AS DateTime))
INSERT [Gas].[tbRegistrosBitacora] ([Regi_Id], [Perso_Id], [Regi_MiCredito], [Regi_UsuarioCreacion], [Regi_FechaCreacion], [Regi_UsuarioModificacion], [Regi_FechaModificacion], [Regi_Estado], [Regi_Accion], [Regi_Fecha]) VALUES (1, 1, CAST(3830.00 AS Numeric(8, 2)), 4, CAST(N'2024-05-05T00:00:00.000' AS DateTime), NULL, NULL, 1, N'U', CAST(N'2024-04-24T22:13:29.950' AS DateTime))
INSERT [Gas].[tbRegistrosBitacora] ([Regi_Id], [Perso_Id], [Regi_MiCredito], [Regi_UsuarioCreacion], [Regi_FechaCreacion], [Regi_UsuarioModificacion], [Regi_FechaModificacion], [Regi_Estado], [Regi_Accion], [Regi_Fecha]) VALUES (1, 1, CAST(3830.00 AS Numeric(8, 2)), 4, CAST(N'2024-05-05T00:00:00.000' AS DateTime), NULL, NULL, 1, N'U', CAST(N'2024-04-24T22:34:18.160' AS DateTime))
INSERT [Gas].[tbRegistrosBitacora] ([Regi_Id], [Perso_Id], [Regi_MiCredito], [Regi_UsuarioCreacion], [Regi_FechaCreacion], [Regi_UsuarioModificacion], [Regi_FechaModificacion], [Regi_Estado], [Regi_Accion], [Regi_Fecha]) VALUES (1, 1, CAST(3830.00 AS Numeric(8, 2)), 4, CAST(N'2024-05-05T00:00:00.000' AS DateTime), NULL, NULL, 1, N'U', CAST(N'2024-04-24T22:36:34.960' AS DateTime))
INSERT [Gas].[tbRegistrosBitacora] ([Regi_Id], [Perso_Id], [Regi_MiCredito], [Regi_UsuarioCreacion], [Regi_FechaCreacion], [Regi_UsuarioModificacion], [Regi_FechaModificacion], [Regi_Estado], [Regi_Accion], [Regi_Fecha]) VALUES (1, 1, CAST(3830.00 AS Numeric(8, 2)), 4, CAST(N'2024-05-05T00:00:00.000' AS DateTime), NULL, NULL, 1, N'U', CAST(N'2024-04-24T22:39:32.883' AS DateTime))
INSERT [Gas].[tbRegistrosBitacora] ([Regi_Id], [Perso_Id], [Regi_MiCredito], [Regi_UsuarioCreacion], [Regi_FechaCreacion], [Regi_UsuarioModificacion], [Regi_FechaModificacion], [Regi_Estado], [Regi_Accion], [Regi_Fecha]) VALUES (1, 1, CAST(3950.00 AS Numeric(8, 2)), 4, CAST(N'2024-05-05T00:00:00.000' AS DateTime), NULL, NULL, 1, N'U', CAST(N'2024-04-24T22:42:03.917' AS DateTime))
INSERT [Gas].[tbRegistrosBitacora] ([Regi_Id], [Perso_Id], [Regi_MiCredito], [Regi_UsuarioCreacion], [Regi_FechaCreacion], [Regi_UsuarioModificacion], [Regi_FechaModificacion], [Regi_Estado], [Regi_Accion], [Regi_Fecha]) VALUES (1, 1, CAST(4000.00 AS Numeric(8, 2)), 4, CAST(N'2024-05-05T00:00:00.000' AS DateTime), NULL, NULL, 1, N'U', CAST(N'2024-04-24T22:42:47.540' AS DateTime))
INSERT [Gas].[tbRegistrosBitacora] ([Regi_Id], [Perso_Id], [Regi_MiCredito], [Regi_UsuarioCreacion], [Regi_FechaCreacion], [Regi_UsuarioModificacion], [Regi_FechaModificacion], [Regi_Estado], [Regi_Accion], [Regi_Fecha]) VALUES (4, 16, CAST(16000.00 AS Numeric(8, 2)), 83, CAST(N'2023-10-10T00:00:00.000' AS DateTime), NULL, NULL, 1, N'I', CAST(N'2024-04-25T11:31:37.173' AS DateTime))
INSERT [Gas].[tbRegistrosBitacora] ([Regi_Id], [Perso_Id], [Regi_MiCredito], [Regi_UsuarioCreacion], [Regi_FechaCreacion], [Regi_UsuarioModificacion], [Regi_FechaModificacion], [Regi_Estado], [Regi_Accion], [Regi_Fecha]) VALUES (5, 17, CAST(0.00 AS Numeric(8, 2)), 84, CAST(N'2024-04-25T11:09:38.297' AS DateTime), NULL, NULL, 1, N'I', CAST(N'2024-04-25T12:09:33.357' AS DateTime))
INSERT [Gas].[tbRegistrosBitacora] ([Regi_Id], [Perso_Id], [Regi_MiCredito], [Regi_UsuarioCreacion], [Regi_FechaCreacion], [Regi_UsuarioModificacion], [Regi_FechaModificacion], [Regi_Estado], [Regi_Accion], [Regi_Fecha]) VALUES (6, 18, CAST(0.00 AS Numeric(8, 2)), 85, CAST(N'2024-04-25T11:15:45.083' AS DateTime), NULL, NULL, 1, N'I', CAST(N'2024-04-25T12:15:40.147' AS DateTime))
INSERT [Gas].[tbRegistrosBitacora] ([Regi_Id], [Perso_Id], [Regi_MiCredito], [Regi_UsuarioCreacion], [Regi_FechaCreacion], [Regi_UsuarioModificacion], [Regi_FechaModificacion], [Regi_Estado], [Regi_Accion], [Regi_Fecha]) VALUES (1, 1, CAST(4000.00 AS Numeric(8, 2)), 4, CAST(N'2024-05-05T00:00:00.000' AS DateTime), NULL, NULL, 1, N'U', CAST(N'2024-04-25T18:44:18.233' AS DateTime))
INSERT [Gas].[tbRegistrosBitacora] ([Regi_Id], [Perso_Id], [Regi_MiCredito], [Regi_UsuarioCreacion], [Regi_FechaCreacion], [Regi_UsuarioModificacion], [Regi_FechaModificacion], [Regi_Estado], [Regi_Accion], [Regi_Fecha]) VALUES (2, 5, CAST(8570.00 AS Numeric(8, 2)), 5, CAST(N'2024-05-05T00:00:00.000' AS DateTime), NULL, NULL, 1, N'U', CAST(N'2024-04-26T03:28:33.583' AS DateTime))
INSERT [Gas].[tbRegistrosBitacora] ([Regi_Id], [Perso_Id], [Regi_MiCredito], [Regi_UsuarioCreacion], [Regi_FechaCreacion], [Regi_UsuarioModificacion], [Regi_FechaModificacion], [Regi_Estado], [Regi_Accion], [Regi_Fecha]) VALUES (2, 5, CAST(8570.00 AS Numeric(8, 2)), 5, CAST(N'2024-05-05T00:00:00.000' AS DateTime), NULL, NULL, 1, N'U', CAST(N'2024-04-26T03:29:21.630' AS DateTime))
INSERT [Gas].[tbRegistrosBitacora] ([Regi_Id], [Perso_Id], [Regi_MiCredito], [Regi_UsuarioCreacion], [Regi_FechaCreacion], [Regi_UsuarioModificacion], [Regi_FechaModificacion], [Regi_Estado], [Regi_Accion], [Regi_Fecha]) VALUES (4, 16, CAST(16120.00 AS Numeric(8, 2)), 83, CAST(N'2023-10-10T00:00:00.000' AS DateTime), NULL, NULL, 1, N'U', CAST(N'2024-04-26T04:26:29.027' AS DateTime))
INSERT [Gas].[tbRegistrosBitacora] ([Regi_Id], [Perso_Id], [Regi_MiCredito], [Regi_UsuarioCreacion], [Regi_FechaCreacion], [Regi_UsuarioModificacion], [Regi_FechaModificacion], [Regi_Estado], [Regi_Accion], [Regi_Fecha]) VALUES (4, 16, CAST(15920.00 AS Numeric(8, 2)), 83, CAST(N'2023-10-10T00:00:00.000' AS DateTime), NULL, NULL, 1, N'U', CAST(N'2024-04-26T04:27:18.270' AS DateTime))
INSERT [Gas].[tbRegistrosBitacora] ([Regi_Id], [Perso_Id], [Regi_MiCredito], [Regi_UsuarioCreacion], [Regi_FechaCreacion], [Regi_UsuarioModificacion], [Regi_FechaModificacion], [Regi_Estado], [Regi_Accion], [Regi_Fecha]) VALUES (1, 1, CAST(3880.00 AS Numeric(8, 2)), 4, CAST(N'2024-05-05T00:00:00.000' AS DateTime), NULL, NULL, 1, N'U', CAST(N'2024-04-26T12:16:26.463' AS DateTime))
INSERT [Gas].[tbRegistrosBitacora] ([Regi_Id], [Perso_Id], [Regi_MiCredito], [Regi_UsuarioCreacion], [Regi_FechaCreacion], [Regi_UsuarioModificacion], [Regi_FechaModificacion], [Regi_Estado], [Regi_Accion], [Regi_Fecha]) VALUES (1, 1, CAST(4380.00 AS Numeric(8, 2)), 4, CAST(N'2024-05-05T00:00:00.000' AS DateTime), NULL, NULL, 1, N'U', CAST(N'2024-04-26T12:52:08.517' AS DateTime))
INSERT [Gas].[tbRegistrosBitacora] ([Regi_Id], [Perso_Id], [Regi_MiCredito], [Regi_UsuarioCreacion], [Regi_FechaCreacion], [Regi_UsuarioModificacion], [Regi_FechaModificacion], [Regi_Estado], [Regi_Accion], [Regi_Fecha]) VALUES (1, 1, CAST(4380.00 AS Numeric(8, 2)), 4, CAST(N'2024-05-05T00:00:00.000' AS DateTime), NULL, NULL, 1, N'U', CAST(N'2024-04-26T12:52:21.603' AS DateTime))
INSERT [Gas].[tbRegistrosBitacora] ([Regi_Id], [Perso_Id], [Regi_MiCredito], [Regi_UsuarioCreacion], [Regi_FechaCreacion], [Regi_UsuarioModificacion], [Regi_FechaModificacion], [Regi_Estado], [Regi_Accion], [Regi_Fecha]) VALUES (1, 1, CAST(3880.00 AS Numeric(8, 2)), 4, CAST(N'2024-05-05T00:00:00.000' AS DateTime), NULL, NULL, 1, N'U', CAST(N'2024-04-26T12:53:28.290' AS DateTime))
INSERT [Gas].[tbRegistrosBitacora] ([Regi_Id], [Perso_Id], [Regi_MiCredito], [Regi_UsuarioCreacion], [Regi_FechaCreacion], [Regi_UsuarioModificacion], [Regi_FechaModificacion], [Regi_Estado], [Regi_Accion], [Regi_Fecha]) VALUES (1, 1, CAST(-8465.00 AS Numeric(8, 2)), 4, CAST(N'2024-05-05T00:00:00.000' AS DateTime), NULL, NULL, 1, N'U', CAST(N'2024-04-26T12:57:48.937' AS DateTime))
INSERT [Gas].[tbRegistrosBitacora] ([Regi_Id], [Perso_Id], [Regi_MiCredito], [Regi_UsuarioCreacion], [Regi_FechaCreacion], [Regi_UsuarioModificacion], [Regi_FechaModificacion], [Regi_Estado], [Regi_Accion], [Regi_Fecha]) VALUES (3, 2, CAST(5600.00 AS Numeric(8, 2)), 5, CAST(N'2024-05-05T00:00:00.000' AS DateTime), NULL, NULL, 1, N'U', CAST(N'2024-04-21T15:53:47.043' AS DateTime))
INSERT [Gas].[tbRegistrosBitacora] ([Regi_Id], [Perso_Id], [Regi_MiCredito], [Regi_UsuarioCreacion], [Regi_FechaCreacion], [Regi_UsuarioModificacion], [Regi_FechaModificacion], [Regi_Estado], [Regi_Accion], [Regi_Fecha]) VALUES (1, 1, CAST(4300.00 AS Numeric(8, 2)), 4, CAST(N'2024-05-05T00:00:00.000' AS DateTime), NULL, NULL, 1, N'U', CAST(N'2024-04-22T12:35:02.733' AS DateTime))
INSERT [Gas].[tbRegistrosBitacora] ([Regi_Id], [Perso_Id], [Regi_MiCredito], [Regi_UsuarioCreacion], [Regi_FechaCreacion], [Regi_UsuarioModificacion], [Regi_FechaModificacion], [Regi_Estado], [Regi_Accion], [Regi_Fecha]) VALUES (2, 5, CAST(8700.00 AS Numeric(8, 2)), 5, CAST(N'2024-05-05T00:00:00.000' AS DateTime), NULL, NULL, 1, N'U', CAST(N'2024-04-24T11:32:42.850' AS DateTime))
INSERT [Gas].[tbRegistrosBitacora] ([Regi_Id], [Perso_Id], [Regi_MiCredito], [Regi_UsuarioCreacion], [Regi_FechaCreacion], [Regi_UsuarioModificacion], [Regi_FechaModificacion], [Regi_Estado], [Regi_Accion], [Regi_Fecha]) VALUES (1, 1, CAST(4000.00 AS Numeric(8, 2)), 4, CAST(N'2024-05-05T00:00:00.000' AS DateTime), NULL, NULL, 1, N'U', CAST(N'2024-04-24T23:13:38.450' AS DateTime))
INSERT [Gas].[tbRegistrosBitacora] ([Regi_Id], [Perso_Id], [Regi_MiCredito], [Regi_UsuarioCreacion], [Regi_FechaCreacion], [Regi_UsuarioModificacion], [Regi_FechaModificacion], [Regi_Estado], [Regi_Accion], [Regi_Fecha]) VALUES (1, 1, CAST(4350.00 AS Numeric(8, 2)), 4, CAST(N'2024-05-05T00:00:00.000' AS DateTime), NULL, NULL, 1, N'U', CAST(N'2024-04-22T12:40:56.813' AS DateTime))
INSERT [Gas].[tbRegistrosBitacora] ([Regi_Id], [Perso_Id], [Regi_MiCredito], [Regi_UsuarioCreacion], [Regi_FechaCreacion], [Regi_UsuarioModificacion], [Regi_FechaModificacion], [Regi_Estado], [Regi_Accion], [Regi_Fecha]) VALUES (1, 1, CAST(4400.00 AS Numeric(8, 2)), 4, CAST(N'2024-05-05T00:00:00.000' AS DateTime), NULL, NULL, 1, N'U', CAST(N'2024-04-22T12:42:15.687' AS DateTime))
INSERT [Gas].[tbRegistrosBitacora] ([Regi_Id], [Perso_Id], [Regi_MiCredito], [Regi_UsuarioCreacion], [Regi_FechaCreacion], [Regi_UsuarioModificacion], [Regi_FechaModificacion], [Regi_Estado], [Regi_Accion], [Regi_Fecha]) VALUES (2, 5, CAST(9100.00 AS Numeric(8, 2)), 5, CAST(N'2024-05-05T00:00:00.000' AS DateTime), NULL, NULL, 1, N'U', CAST(N'2024-04-23T12:53:54.457' AS DateTime))
INSERT [Gas].[tbRegistrosBitacora] ([Regi_Id], [Perso_Id], [Regi_MiCredito], [Regi_UsuarioCreacion], [Regi_FechaCreacion], [Regi_UsuarioModificacion], [Regi_FechaModificacion], [Regi_Estado], [Regi_Accion], [Regi_Fecha]) VALUES (1, 1, CAST(4400.00 AS Numeric(8, 2)), 4, CAST(N'2024-05-05T00:00:00.000' AS DateTime), NULL, NULL, 1, N'U', CAST(N'2024-04-23T13:05:46.353' AS DateTime))
INSERT [Gas].[tbRegistrosBitacora] ([Regi_Id], [Perso_Id], [Regi_MiCredito], [Regi_UsuarioCreacion], [Regi_FechaCreacion], [Regi_UsuarioModificacion], [Regi_FechaModificacion], [Regi_Estado], [Regi_Accion], [Regi_Fecha]) VALUES (1, 1, CAST(4400.00 AS Numeric(8, 2)), 4, CAST(N'2024-05-05T00:00:00.000' AS DateTime), NULL, NULL, 1, N'U', CAST(N'2024-04-23T13:06:16.020' AS DateTime))
INSERT [Gas].[tbRegistrosBitacora] ([Regi_Id], [Perso_Id], [Regi_MiCredito], [Regi_UsuarioCreacion], [Regi_FechaCreacion], [Regi_UsuarioModificacion], [Regi_FechaModificacion], [Regi_Estado], [Regi_Accion], [Regi_Fecha]) VALUES (2, 5, CAST(8700.00 AS Numeric(8, 2)), 5, CAST(N'2024-05-05T00:00:00.000' AS DateTime), NULL, NULL, 1, N'U', CAST(N'2024-04-24T10:33:42.610' AS DateTime))
INSERT [Gas].[tbRegistrosBitacora] ([Regi_Id], [Perso_Id], [Regi_MiCredito], [Regi_UsuarioCreacion], [Regi_FechaCreacion], [Regi_UsuarioModificacion], [Regi_FechaModificacion], [Regi_Estado], [Regi_Accion], [Regi_Fecha]) VALUES (7, 19, CAST(5210.00 AS Numeric(8, 2)), 86, CAST(N'2024-04-25T11:16:11.423' AS DateTime), NULL, NULL, 1, N'I', CAST(N'2024-04-25T12:16:06.463' AS DateTime))
INSERT [Gas].[tbRegistrosBitacora] ([Regi_Id], [Perso_Id], [Regi_MiCredito], [Regi_UsuarioCreacion], [Regi_FechaCreacion], [Regi_UsuarioModificacion], [Regi_FechaModificacion], [Regi_Estado], [Regi_Accion], [Regi_Fecha]) VALUES (4, 16, CAST(15920.00 AS Numeric(8, 2)), 83, CAST(N'2023-10-10T00:00:00.000' AS DateTime), NULL, NULL, 1, N'U', CAST(N'2024-04-26T04:27:41.057' AS DateTime))
INSERT [Gas].[tbRegistrosBitacora] ([Regi_Id], [Perso_Id], [Regi_MiCredito], [Regi_UsuarioCreacion], [Regi_FechaCreacion], [Regi_UsuarioModificacion], [Regi_FechaModificacion], [Regi_Estado], [Regi_Accion], [Regi_Fecha]) VALUES (4, 16, CAST(15920.00 AS Numeric(8, 2)), 83, CAST(N'2023-10-10T00:00:00.000' AS DateTime), NULL, NULL, 1, N'U', CAST(N'2024-04-26T04:27:53.257' AS DateTime))
INSERT [Gas].[tbRegistrosBitacora] ([Regi_Id], [Perso_Id], [Regi_MiCredito], [Regi_UsuarioCreacion], [Regi_FechaCreacion], [Regi_UsuarioModificacion], [Regi_FechaModificacion], [Regi_Estado], [Regi_Accion], [Regi_Fecha]) VALUES (4, 16, CAST(15920.00 AS Numeric(8, 2)), 83, CAST(N'2023-10-10T00:00:00.000' AS DateTime), NULL, NULL, 1, N'U', CAST(N'2024-04-26T04:28:10.280' AS DateTime))
INSERT [Gas].[tbRegistrosBitacora] ([Regi_Id], [Perso_Id], [Regi_MiCredito], [Regi_UsuarioCreacion], [Regi_FechaCreacion], [Regi_UsuarioModificacion], [Regi_FechaModificacion], [Regi_Estado], [Regi_Accion], [Regi_Fecha]) VALUES (4, 16, CAST(15920.00 AS Numeric(8, 2)), 83, CAST(N'2023-10-10T00:00:00.000' AS DateTime), NULL, NULL, 1, N'U', CAST(N'2024-04-26T04:28:16.853' AS DateTime))
GO
SET IDENTITY_INSERT [Gas].[tbSubCategorias] ON 

INSERT [Gas].[tbSubCategorias] ([SubC_Id], [SubC_Descripcion], [Cate_Id], [SubC_UsuarioCreacion], [SubC_FechaCreacion], [SubC_UsuarioModificacion], [SubC_FechaModificacion], [SubC_Estado]) VALUES (1, N'Restaurante', 1, 1, CAST(N'2024-03-01T00:00:00.000' AS DateTime), NULL, NULL, 1)
INSERT [Gas].[tbSubCategorias] ([SubC_Id], [SubC_Descripcion], [Cate_Id], [SubC_UsuarioCreacion], [SubC_FechaCreacion], [SubC_UsuarioModificacion], [SubC_FechaModificacion], [SubC_Estado]) VALUES (2, N'Supermercado', 1, 1, CAST(N'2024-03-01T00:00:00.000' AS DateTime), NULL, NULL, 1)
INSERT [Gas].[tbSubCategorias] ([SubC_Id], [SubC_Descripcion], [Cate_Id], [SubC_UsuarioCreacion], [SubC_FechaCreacion], [SubC_UsuarioModificacion], [SubC_FechaModificacion], [SubC_Estado]) VALUES (3, N'Transporte Público', 2, 1, CAST(N'2024-03-01T00:00:00.000' AS DateTime), NULL, NULL, 1)
INSERT [Gas].[tbSubCategorias] ([SubC_Id], [SubC_Descripcion], [Cate_Id], [SubC_UsuarioCreacion], [SubC_FechaCreacion], [SubC_UsuarioModificacion], [SubC_FechaModificacion], [SubC_Estado]) VALUES (4, N'Taxi', 2, 1, CAST(N'2024-03-01T00:00:00.000' AS DateTime), NULL, NULL, 1)
INSERT [Gas].[tbSubCategorias] ([SubC_Id], [SubC_Descripcion], [Cate_Id], [SubC_UsuarioCreacion], [SubC_FechaCreacion], [SubC_UsuarioModificacion], [SubC_FechaModificacion], [SubC_Estado]) VALUES (5, N'Hipoteca', 3, 1, CAST(N'2024-03-01T00:00:00.000' AS DateTime), NULL, NULL, 1)
INSERT [Gas].[tbSubCategorias] ([SubC_Id], [SubC_Descripcion], [Cate_Id], [SubC_UsuarioCreacion], [SubC_FechaCreacion], [SubC_UsuarioModificacion], [SubC_FechaModificacion], [SubC_Estado]) VALUES (6, N'Renta', 3, 1, CAST(N'2024-03-01T00:00:00.000' AS DateTime), NULL, NULL, 1)
INSERT [Gas].[tbSubCategorias] ([SubC_Id], [SubC_Descripcion], [Cate_Id], [SubC_UsuarioCreacion], [SubC_FechaCreacion], [SubC_UsuarioModificacion], [SubC_FechaModificacion], [SubC_Estado]) VALUES (7, N'Otros', 4, 1, CAST(N'2024-03-01T00:00:00.000' AS DateTime), NULL, NULL, 1)
SET IDENTITY_INSERT [Gas].[tbSubCategorias] OFF
GO
INSERT [Grl].[tbCiudades] ([Ciud_Id], [Ciud_Descripcion], [Esta_Id], [Ciud_UsuarioCreacion], [Ciud_FechaCreacion], [Ciud_UsuarioModificacion], [Ciud_FechaModificacion]) VALUES (N'001', N'La Ceiba', N'01', 1, CAST(N'2024-04-01T22:54:38.500' AS DateTime), NULL, NULL)
INSERT [Grl].[tbCiudades] ([Ciud_Id], [Ciud_Descripcion], [Esta_Id], [Ciud_UsuarioCreacion], [Ciud_FechaCreacion], [Ciud_UsuarioModificacion], [Ciud_FechaModificacion]) VALUES (N'002', N'Jutiapa', N'01', 1, CAST(N'2024-04-01T22:54:38.500' AS DateTime), NULL, NULL)
INSERT [Grl].[tbCiudades] ([Ciud_Id], [Ciud_Descripcion], [Esta_Id], [Ciud_UsuarioCreacion], [Ciud_FechaCreacion], [Ciud_UsuarioModificacion], [Ciud_FechaModificacion]) VALUES (N'004', N'Trujillo', N'02', 1, CAST(N'2024-04-01T22:54:38.500' AS DateTime), NULL, NULL)
INSERT [Grl].[tbCiudades] ([Ciud_Id], [Ciud_Descripcion], [Esta_Id], [Ciud_UsuarioCreacion], [Ciud_FechaCreacion], [Ciud_UsuarioModificacion], [Ciud_FechaModificacion]) VALUES (N'005', N'Tocoa', N'02', 1, CAST(N'2024-04-01T22:54:38.500' AS DateTime), NULL, NULL)
INSERT [Grl].[tbCiudades] ([Ciud_Id], [Ciud_Descripcion], [Esta_Id], [Ciud_UsuarioCreacion], [Ciud_FechaCreacion], [Ciud_UsuarioModificacion], [Ciud_FechaModificacion]) VALUES (N'006', N'Sonaguera', N'02', 1, CAST(N'2024-04-01T22:54:38.500' AS DateTime), NULL, NULL)
INSERT [Grl].[tbCiudades] ([Ciud_Id], [Ciud_Descripcion], [Esta_Id], [Ciud_UsuarioCreacion], [Ciud_FechaCreacion], [Ciud_UsuarioModificacion], [Ciud_FechaModificacion]) VALUES (N'007', N'Comayagua', N'03', 1, CAST(N'2024-04-01T22:54:38.500' AS DateTime), NULL, NULL)
INSERT [Grl].[tbCiudades] ([Ciud_Id], [Ciud_Descripcion], [Esta_Id], [Ciud_UsuarioCreacion], [Ciud_FechaCreacion], [Ciud_UsuarioModificacion], [Ciud_FechaModificacion]) VALUES (N'008', N'Siguatepeque', N'03', 1, CAST(N'2024-04-01T22:54:38.500' AS DateTime), NULL, NULL)
INSERT [Grl].[tbCiudades] ([Ciud_Id], [Ciud_Descripcion], [Esta_Id], [Ciud_UsuarioCreacion], [Ciud_FechaCreacion], [Ciud_UsuarioModificacion], [Ciud_FechaModificacion]) VALUES (N'009', N'La Libertad', N'03', 1, CAST(N'2024-04-01T22:54:38.500' AS DateTime), NULL, NULL)
INSERT [Grl].[tbCiudades] ([Ciud_Id], [Ciud_Descripcion], [Esta_Id], [Ciud_UsuarioCreacion], [Ciud_FechaCreacion], [Ciud_UsuarioModificacion], [Ciud_FechaModificacion]) VALUES (N'010', N'Santa Rosa de Copán', N'04', 1, CAST(N'2024-04-01T22:54:38.500' AS DateTime), NULL, NULL)
INSERT [Grl].[tbCiudades] ([Ciud_Id], [Ciud_Descripcion], [Esta_Id], [Ciud_UsuarioCreacion], [Ciud_FechaCreacion], [Ciud_UsuarioModificacion], [Ciud_FechaModificacion]) VALUES (N'011', N'La Entrada', N'04', 1, CAST(N'2024-04-01T22:54:38.500' AS DateTime), NULL, NULL)
INSERT [Grl].[tbCiudades] ([Ciud_Id], [Ciud_Descripcion], [Esta_Id], [Ciud_UsuarioCreacion], [Ciud_FechaCreacion], [Ciud_UsuarioModificacion], [Ciud_FechaModificacion]) VALUES (N'012', N'Copán Ruinas', N'04', 1, CAST(N'2024-04-01T22:54:38.500' AS DateTime), NULL, NULL)
INSERT [Grl].[tbCiudades] ([Ciud_Id], [Ciud_Descripcion], [Esta_Id], [Ciud_UsuarioCreacion], [Ciud_FechaCreacion], [Ciud_UsuarioModificacion], [Ciud_FechaModificacion]) VALUES (N'013', N'San Pedro Sula', N'05', 1, CAST(N'2024-04-01T22:54:38.500' AS DateTime), NULL, NULL)
INSERT [Grl].[tbCiudades] ([Ciud_Id], [Ciud_Descripcion], [Esta_Id], [Ciud_UsuarioCreacion], [Ciud_FechaCreacion], [Ciud_UsuarioModificacion], [Ciud_FechaModificacion]) VALUES (N'014', N'Villanueva', N'05', 1, CAST(N'2024-04-01T22:54:38.500' AS DateTime), NULL, NULL)
INSERT [Grl].[tbCiudades] ([Ciud_Id], [Ciud_Descripcion], [Esta_Id], [Ciud_UsuarioCreacion], [Ciud_FechaCreacion], [Ciud_UsuarioModificacion], [Ciud_FechaModificacion]) VALUES (N'015', N'Choloma', N'05', 1, CAST(N'2024-04-01T22:54:38.500' AS DateTime), NULL, NULL)
INSERT [Grl].[tbCiudades] ([Ciud_Id], [Ciud_Descripcion], [Esta_Id], [Ciud_UsuarioCreacion], [Ciud_FechaCreacion], [Ciud_UsuarioModificacion], [Ciud_FechaModificacion]) VALUES (N'016', N'Adelaida', N'14', 1, CAST(N'2024-04-01T22:57:45.450' AS DateTime), NULL, NULL)
INSERT [Grl].[tbCiudades] ([Ciud_Id], [Ciud_Descripcion], [Esta_Id], [Ciud_UsuarioCreacion], [Ciud_FechaCreacion], [Ciud_UsuarioModificacion], [Ciud_FechaModificacion]) VALUES (N'017', N'Mount Gambier', N'14', 1, CAST(N'2024-04-01T22:57:45.450' AS DateTime), NULL, NULL)
INSERT [Grl].[tbCiudades] ([Ciud_Id], [Ciud_Descripcion], [Esta_Id], [Ciud_UsuarioCreacion], [Ciud_FechaCreacion], [Ciud_UsuarioModificacion], [Ciud_FechaModificacion]) VALUES (N'018', N'El Progreso', N'14', 1, CAST(N'2024-04-01T22:57:45.450' AS DateTime), NULL, NULL)
INSERT [Grl].[tbCiudades] ([Ciud_Id], [Ciud_Descripcion], [Esta_Id], [Ciud_UsuarioCreacion], [Ciud_FechaCreacion], [Ciud_UsuarioModificacion], [Ciud_FechaModificacion]) VALUES (N'019', N'Buenos Aires', N'06', 1, CAST(N'2024-04-01T22:57:45.450' AS DateTime), NULL, NULL)
INSERT [Grl].[tbCiudades] ([Ciud_Id], [Ciud_Descripcion], [Esta_Id], [Ciud_UsuarioCreacion], [Ciud_FechaCreacion], [Ciud_UsuarioModificacion], [Ciud_FechaModificacion]) VALUES (N'021', N'Mar del Plata', N'06', 1, CAST(N'2024-04-01T22:57:45.450' AS DateTime), NULL, NULL)
INSERT [Grl].[tbCiudades] ([Ciud_Id], [Ciud_Descripcion], [Esta_Id], [Ciud_UsuarioCreacion], [Ciud_FechaCreacion], [Ciud_UsuarioModificacion], [Ciud_FechaModificacion]) VALUES (N'4543', N'NBVNB', N'03', 1, CAST(N'2024-04-12T12:30:45.787' AS DateTime), NULL, NULL)
GO
INSERT [Grl].[tbEstados] ([Esta_Id], [Esta_Descripcion], [Pais_Id], [Esta_UsuarioCreacion], [Esta_FechaCreacion], [Esta_UsuarioModificacion], [Esta_FechaModificacion]) VALUES (N'01', N'Atlántida', 3, 1, CAST(N'2024-04-01T22:47:11.870' AS DateTime), 1, CAST(N'2024-04-04T11:02:31.347' AS DateTime))
INSERT [Grl].[tbEstados] ([Esta_Id], [Esta_Descripcion], [Pais_Id], [Esta_UsuarioCreacion], [Esta_FechaCreacion], [Esta_UsuarioModificacion], [Esta_FechaModificacion]) VALUES (N'02', N'Colón', 3, 1, CAST(N'2024-04-01T22:47:11.870' AS DateTime), NULL, NULL)
INSERT [Grl].[tbEstados] ([Esta_Id], [Esta_Descripcion], [Pais_Id], [Esta_UsuarioCreacion], [Esta_FechaCreacion], [Esta_UsuarioModificacion], [Esta_FechaModificacion]) VALUES (N'03', N'Comayagua', 3, 1, CAST(N'2024-04-01T22:47:11.870' AS DateTime), NULL, NULL)
INSERT [Grl].[tbEstados] ([Esta_Id], [Esta_Descripcion], [Pais_Id], [Esta_UsuarioCreacion], [Esta_FechaCreacion], [Esta_UsuarioModificacion], [Esta_FechaModificacion]) VALUES (N'04', N'Copán', 3, 1, CAST(N'2024-04-01T22:47:11.870' AS DateTime), NULL, NULL)
INSERT [Grl].[tbEstados] ([Esta_Id], [Esta_Descripcion], [Pais_Id], [Esta_UsuarioCreacion], [Esta_FechaCreacion], [Esta_UsuarioModificacion], [Esta_FechaModificacion]) VALUES (N'05', N'Cortés', 3, 1, CAST(N'2024-04-01T22:47:11.870' AS DateTime), NULL, NULL)
INSERT [Grl].[tbEstados] ([Esta_Id], [Esta_Descripcion], [Pais_Id], [Esta_UsuarioCreacion], [Esta_FechaCreacion], [Esta_UsuarioModificacion], [Esta_FechaModificacion]) VALUES (N'06', N'Buenos Aires', 1, 1, CAST(N'2024-04-01T22:47:48.100' AS DateTime), NULL, NULL)
INSERT [Grl].[tbEstados] ([Esta_Id], [Esta_Descripcion], [Pais_Id], [Esta_UsuarioCreacion], [Esta_FechaCreacion], [Esta_UsuarioModificacion], [Esta_FechaModificacion]) VALUES (N'07', N'Córdoba', 1, 1, CAST(N'2024-04-01T22:47:48.100' AS DateTime), NULL, NULL)
INSERT [Grl].[tbEstados] ([Esta_Id], [Esta_Descripcion], [Pais_Id], [Esta_UsuarioCreacion], [Esta_FechaCreacion], [Esta_UsuarioModificacion], [Esta_FechaModificacion]) VALUES (N'08', N'Santa Fe', 1, 1, CAST(N'2024-04-01T22:47:48.100' AS DateTime), NULL, NULL)
INSERT [Grl].[tbEstados] ([Esta_Id], [Esta_Descripcion], [Pais_Id], [Esta_UsuarioCreacion], [Esta_FechaCreacion], [Esta_UsuarioModificacion], [Esta_FechaModificacion]) VALUES (N'09', N'Mendoza', 1, 1, CAST(N'2024-04-01T22:47:48.100' AS DateTime), NULL, NULL)
INSERT [Grl].[tbEstados] ([Esta_Id], [Esta_Descripcion], [Pais_Id], [Esta_UsuarioCreacion], [Esta_FechaCreacion], [Esta_UsuarioModificacion], [Esta_FechaModificacion]) VALUES (N'10', N'Tucumán', 1, 1, CAST(N'2024-04-01T22:47:48.100' AS DateTime), NULL, NULL)
INSERT [Grl].[tbEstados] ([Esta_Id], [Esta_Descripcion], [Pais_Id], [Esta_UsuarioCreacion], [Esta_FechaCreacion], [Esta_UsuarioModificacion], [Esta_FechaModificacion]) VALUES (N'11', N'Nueva Gales del Sur', 2, 1, CAST(N'2024-04-01T22:49:24.880' AS DateTime), NULL, NULL)
INSERT [Grl].[tbEstados] ([Esta_Id], [Esta_Descripcion], [Pais_Id], [Esta_UsuarioCreacion], [Esta_FechaCreacion], [Esta_UsuarioModificacion], [Esta_FechaModificacion]) VALUES (N'12', N'Victoria', 2, 1, CAST(N'2024-04-01T22:49:24.880' AS DateTime), NULL, NULL)
INSERT [Grl].[tbEstados] ([Esta_Id], [Esta_Descripcion], [Pais_Id], [Esta_UsuarioCreacion], [Esta_FechaCreacion], [Esta_UsuarioModificacion], [Esta_FechaModificacion]) VALUES (N'13', N'Queensland', 2, 1, CAST(N'2024-04-01T22:49:24.880' AS DateTime), NULL, NULL)
INSERT [Grl].[tbEstados] ([Esta_Id], [Esta_Descripcion], [Pais_Id], [Esta_UsuarioCreacion], [Esta_FechaCreacion], [Esta_UsuarioModificacion], [Esta_FechaModificacion]) VALUES (N'14', N'Australia Meridional', 2, 1, CAST(N'2024-04-01T22:49:24.880' AS DateTime), NULL, NULL)
INSERT [Grl].[tbEstados] ([Esta_Id], [Esta_Descripcion], [Pais_Id], [Esta_UsuarioCreacion], [Esta_FechaCreacion], [Esta_UsuarioModificacion], [Esta_FechaModificacion]) VALUES (N'15', N'Australia Occidental', 2, 1, CAST(N'2024-04-01T22:49:24.880' AS DateTime), NULL, NULL)
INSERT [Grl].[tbEstados] ([Esta_Id], [Esta_Descripcion], [Pais_Id], [Esta_UsuarioCreacion], [Esta_FechaCreacion], [Esta_UsuarioModificacion], [Esta_FechaModificacion]) VALUES (N'32', N'New', 3, 1, CAST(N'2024-04-12T12:27:25.180' AS DateTime), NULL, NULL)
INSERT [Grl].[tbEstados] ([Esta_Id], [Esta_Descripcion], [Pais_Id], [Esta_UsuarioCreacion], [Esta_FechaCreacion], [Esta_UsuarioModificacion], [Esta_FechaModificacion]) VALUES (N'43', N'SEKYHTFGF', 1, 1, CAST(N'2024-04-12T12:30:12.970' AS DateTime), NULL, NULL)
INSERT [Grl].[tbEstados] ([Esta_Id], [Esta_Descripcion], [Pais_Id], [Esta_UsuarioCreacion], [Esta_FechaCreacion], [Esta_UsuarioModificacion], [Esta_FechaModificacion]) VALUES (N'95', N'NewActu', 1, 1, CAST(N'2024-04-03T19:26:07.567' AS DateTime), 1, CAST(N'2024-04-03T20:02:34.163' AS DateTime))
GO
SET IDENTITY_INSERT [Grl].[tbEstadosCiviles] ON 

INSERT [Grl].[tbEstadosCiviles] ([Estc_Id], [Estc_Descripcion], [Estc_UsuarioCreacion], [Estc_FechaCreacion], [Estc_UsuarioModificacion], [Estc_FechaModificacion], [Estc_Estado]) VALUES (1, N'Soltero', 1, CAST(N'2023-10-11T00:00:00.000' AS DateTime), 1, CAST(N'2024-04-10T17:35:12.660' AS DateTime), 1)
INSERT [Grl].[tbEstadosCiviles] ([Estc_Id], [Estc_Descripcion], [Estc_UsuarioCreacion], [Estc_FechaCreacion], [Estc_UsuarioModificacion], [Estc_FechaModificacion], [Estc_Estado]) VALUES (2, N'Casado', 1, CAST(N'2024-04-10T17:18:47.473' AS DateTime), NULL, NULL, 1)
INSERT [Grl].[tbEstadosCiviles] ([Estc_Id], [Estc_Descripcion], [Estc_UsuarioCreacion], [Estc_FechaCreacion], [Estc_UsuarioModificacion], [Estc_FechaModificacion], [Estc_Estado]) VALUES (3, N'FDSFFGFDGFDFF', 1, CAST(N'2024-04-12T12:32:16.527' AS DateTime), NULL, NULL, 0)
SET IDENTITY_INSERT [Grl].[tbEstadosCiviles] OFF
GO
SET IDENTITY_INSERT [Grl].[tbPaises] ON 

INSERT [Grl].[tbPaises] ([Pais_Id], [Pais_Descripcion], [Pais_UsuarioCreacion], [Pais_FechaCreacion], [Pais_UsuarioModificacion], [Pais_FechaModificacion]) VALUES (1, N'Argentinad', 1, CAST(N'2024-04-01T22:39:30.830' AS DateTime), 1, CAST(N'2024-04-12T12:26:58.337' AS DateTime))
INSERT [Grl].[tbPaises] ([Pais_Id], [Pais_Descripcion], [Pais_UsuarioCreacion], [Pais_FechaCreacion], [Pais_UsuarioModificacion], [Pais_FechaModificacion]) VALUES (2, N'Australia', 1, CAST(N'2024-04-01T22:39:30.830' AS DateTime), NULL, NULL)
INSERT [Grl].[tbPaises] ([Pais_Id], [Pais_Descripcion], [Pais_UsuarioCreacion], [Pais_FechaCreacion], [Pais_UsuarioModificacion], [Pais_FechaModificacion]) VALUES (3, N'Honduras', 1, CAST(N'2024-04-01T22:39:30.830' AS DateTime), NULL, NULL)
INSERT [Grl].[tbPaises] ([Pais_Id], [Pais_Descripcion], [Pais_UsuarioCreacion], [Pais_FechaCreacion], [Pais_UsuarioModificacion], [Pais_FechaModificacion]) VALUES (4, N'España', 1, CAST(N'2024-04-01T22:39:30.830' AS DateTime), NULL, NULL)
INSERT [Grl].[tbPaises] ([Pais_Id], [Pais_Descripcion], [Pais_UsuarioCreacion], [Pais_FechaCreacion], [Pais_UsuarioModificacion], [Pais_FechaModificacion]) VALUES (5, N'Canada', 1, CAST(N'2024-04-01T22:39:30.830' AS DateTime), NULL, NULL)
INSERT [Grl].[tbPaises] ([Pais_Id], [Pais_Descripcion], [Pais_UsuarioCreacion], [Pais_FechaCreacion], [Pais_UsuarioModificacion], [Pais_FechaModificacion]) VALUES (15, N'Vacio', 1, CAST(N'1900-01-01T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [Grl].[tbPaises] ([Pais_Id], [Pais_Descripcion], [Pais_UsuarioCreacion], [Pais_FechaCreacion], [Pais_UsuarioModificacion], [Pais_FechaModificacion]) VALUES (16, N'NuevoPais', 1, CAST(N'2024-04-10T18:07:47.647' AS DateTime), 1, CAST(N'2024-04-10T18:13:52.580' AS DateTime))
SET IDENTITY_INSERT [Grl].[tbPaises] OFF
GO
SET IDENTITY_INSERT [Grl].[tbPersonas] ON 

INSERT [Grl].[tbPersonas] ([Perso_Id], [Perso_DNI], [Perso_Nombre], [Perso_Apellido], [Perso_Correo], [Perso_FechaNacimiento], [Perso_Sexo], [Estc_Id], [Perso_Direccion], [Ciud_id], [Perso_UsuarioCreacion], [Perso_FechaCreacion], [Perso_UsuarioModificacion], [Perso_FechaModificacion], [Perso_Estado]) VALUES (1, N'0501', N'Fernando', N'Matute', N'fernanmc15@gmail.com', CAST(N'1999-10-10' AS Date), N'M', 1, N'ave 13, Col. San Carlos', N'010', 1, CAST(N'2024-10-04T00:00:00.000' AS DateTime), NULL, NULL, 1)
INSERT [Grl].[tbPersonas] ([Perso_Id], [Perso_DNI], [Perso_Nombre], [Perso_Apellido], [Perso_Correo], [Perso_FechaNacimiento], [Perso_Sexo], [Estc_Id], [Perso_Direccion], [Ciud_id], [Perso_UsuarioCreacion], [Perso_FechaCreacion], [Perso_UsuarioModificacion], [Perso_FechaModificacion], [Perso_Estado]) VALUES (2, N'1804200502571', N'Sua Abigail', N'Rubio Euceda', N'suarubio@hotmail.com', CAST(N'2024-05-05' AS Date), N'f', 2, N'Tela', N'002', 1, CAST(N'2024-05-05T00:00:00.000' AS DateTime), NULL, NULL, 1)
INSERT [Grl].[tbPersonas] ([Perso_Id], [Perso_DNI], [Perso_Nombre], [Perso_Apellido], [Perso_Correo], [Perso_FechaNacimiento], [Perso_Sexo], [Estc_Id], [Perso_Direccion], [Ciud_id], [Perso_UsuarioCreacion], [Perso_FechaCreacion], [Perso_UsuarioModificacion], [Perso_FechaModificacion], [Perso_Estado]) VALUES (5, N'1804200502572', N'Adamarys', N'Carabantes', N'adamarys@hotmail.com', CAST(N'2000-05-05' AS Date), N'f', 3, N'El Progreso', N'004', 1, CAST(N'2024-05-05T00:00:00.000' AS DateTime), NULL, NULL, 1)
INSERT [Grl].[tbPersonas] ([Perso_Id], [Perso_DNI], [Perso_Nombre], [Perso_Apellido], [Perso_Correo], [Perso_FechaNacimiento], [Perso_Sexo], [Estc_Id], [Perso_Direccion], [Ciud_id], [Perso_UsuarioCreacion], [Perso_FechaCreacion], [Perso_UsuarioModificacion], [Perso_FechaModificacion], [Perso_Estado]) VALUES (6, N'1804200501515', N'Andrea Michell', N'Guevara', N'michell13@gmail.com', CAST(N'2005-05-05' AS Date), N'f', 2, N'El Progreso', N'018', NULL, CAST(N'2024-04-16T21:12:26.073' AS DateTime), NULL, NULL, 1)
INSERT [Grl].[tbPersonas] ([Perso_Id], [Perso_DNI], [Perso_Nombre], [Perso_Apellido], [Perso_Correo], [Perso_FechaNacimiento], [Perso_Sexo], [Estc_Id], [Perso_Direccion], [Ciud_id], [Perso_UsuarioCreacion], [Perso_FechaCreacion], [Perso_UsuarioModificacion], [Perso_FechaModificacion], [Perso_Estado]) VALUES (12, N'1231', N'ess', N'ess', N'ess', CAST(N'2024-04-25' AS Date), N'f', 1, N'ess', N'001', NULL, CAST(N'2024-04-24T21:53:12.977' AS DateTime), NULL, NULL, 1)
INSERT [Grl].[tbPersonas] ([Perso_Id], [Perso_DNI], [Perso_Nombre], [Perso_Apellido], [Perso_Correo], [Perso_FechaNacimiento], [Perso_Sexo], [Estc_Id], [Perso_Direccion], [Ciud_id], [Perso_UsuarioCreacion], [Perso_FechaCreacion], [Perso_UsuarioModificacion], [Perso_FechaModificacion], [Perso_Estado]) VALUES (13, N'3211', N'sess', N'sess', N'sess', CAST(N'2024-04-25' AS Date), N'm', 2, N'sess', N'002', NULL, CAST(N'2024-04-24T23:11:09.090' AS DateTime), NULL, NULL, 1)
INSERT [Grl].[tbPersonas] ([Perso_Id], [Perso_DNI], [Perso_Nombre], [Perso_Apellido], [Perso_Correo], [Perso_FechaNacimiento], [Perso_Sexo], [Estc_Id], [Perso_Direccion], [Ciud_id], [Perso_UsuarioCreacion], [Perso_FechaCreacion], [Perso_UsuarioModificacion], [Perso_FechaModificacion], [Perso_Estado]) VALUES (15, N'wwe', N'wwe', N'wwe', N'wwe@gmail.com', NULL, NULL, 1, N'wwe', N'019', NULL, CAST(N'2024-04-25T03:18:36.503' AS DateTime), NULL, NULL, 1)
INSERT [Grl].[tbPersonas] ([Perso_Id], [Perso_DNI], [Perso_Nombre], [Perso_Apellido], [Perso_Correo], [Perso_FechaNacimiento], [Perso_Sexo], [Estc_Id], [Perso_Direccion], [Ciud_id], [Perso_UsuarioCreacion], [Perso_FechaCreacion], [Perso_UsuarioModificacion], [Perso_FechaModificacion], [Perso_Estado]) VALUES (16, N'0501-2000', N'Karolina', N'Herrera', N'kh@gmail.com', NULL, NULL, 1, N'nueva direccion', N'021', NULL, CAST(N'2024-04-25T11:21:35.260' AS DateTime), NULL, NULL, 1)
INSERT [Grl].[tbPersonas] ([Perso_Id], [Perso_DNI], [Perso_Nombre], [Perso_Apellido], [Perso_Correo], [Perso_FechaNacimiento], [Perso_Sexo], [Estc_Id], [Perso_Direccion], [Ciud_id], [Perso_UsuarioCreacion], [Perso_FechaCreacion], [Perso_UsuarioModificacion], [Perso_FechaModificacion], [Perso_Estado]) VALUES (17, N'3212', N'aver', N'aver', N'aver@gmail.com', CAST(N'2024-04-25' AS Date), N'f', 1, N'sps', N'001', NULL, CAST(N'2024-04-25T11:09:37.423' AS DateTime), NULL, NULL, 1)
INSERT [Grl].[tbPersonas] ([Perso_Id], [Perso_DNI], [Perso_Nombre], [Perso_Apellido], [Perso_Correo], [Perso_FechaNacimiento], [Perso_Sexo], [Estc_Id], [Perso_Direccion], [Ciud_id], [Perso_UsuarioCreacion], [Perso_FechaCreacion], [Perso_UsuarioModificacion], [Perso_FechaModificacion], [Perso_Estado]) VALUES (18, N'4234', N'ssaa', N'ssaa', N'ssaa', CAST(N'2024-04-25' AS Date), N'f', 2, N'ssaa', N'002', NULL, CAST(N'2024-04-25T11:13:37.050' AS DateTime), NULL, NULL, 1)
INSERT [Grl].[tbPersonas] ([Perso_Id], [Perso_DNI], [Perso_Nombre], [Perso_Apellido], [Perso_Correo], [Perso_FechaNacimiento], [Perso_Sexo], [Estc_Id], [Perso_Direccion], [Ciud_id], [Perso_UsuarioCreacion], [Perso_FechaCreacion], [Perso_UsuarioModificacion], [Perso_FechaModificacion], [Perso_Estado]) VALUES (19, N'5234', N'ssfsfg', N'ssfsfg', N'ssfsfg', CAST(N'2024-04-25' AS Date), N'f', 2, N'ssfsfg', N'002', NULL, CAST(N'2024-04-25T11:16:04.210' AS DateTime), NULL, NULL, 1)
INSERT [Grl].[tbPersonas] ([Perso_Id], [Perso_DNI], [Perso_Nombre], [Perso_Apellido], [Perso_Correo], [Perso_FechaNacimiento], [Perso_Sexo], [Estc_Id], [Perso_Direccion], [Ciud_id], [Perso_UsuarioCreacion], [Perso_FechaCreacion], [Perso_UsuarioModificacion], [Perso_FechaModificacion], [Perso_Estado]) VALUES (20, N'434234', N'funcionapls', N'funcionapls', N'sggg@ggg.com', NULL, NULL, 1, N'funcionapls', N'019', NULL, CAST(N'2024-04-25T12:34:31.783' AS DateTime), NULL, NULL, 1)
SET IDENTITY_INSERT [Grl].[tbPersonas] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UK_tbPantallas_Pant_Descripcion]    Script Date: 29/04/2024 15:30:00 ******/
ALTER TABLE [Acc].[tbPantallas] ADD  CONSTRAINT [UK_tbPantallas_Pant_Descripcion] UNIQUE NONCLUSTERED 
(
	[Pant_Descripcion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UK_tbRoles_Role_Descripcion]    Script Date: 29/04/2024 15:30:00 ******/
ALTER TABLE [Acc].[tbRoles] ADD  CONSTRAINT [UK_tbRoles_Role_Descripcion] UNIQUE NONCLUSTERED 
(
	[Role_Descripcion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UK_tbUsuarios_Usua_Usuario]    Script Date: 29/04/2024 15:30:00 ******/
ALTER TABLE [Acc].[tbUsuarios] ADD  CONSTRAINT [UK_tbUsuarios_Usua_Usuario] UNIQUE NONCLUSTERED 
(
	[Usua_Usuario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UK_tbCategorias_Carg_Descripcion]    Script Date: 29/04/2024 15:30:00 ******/
ALTER TABLE [Gas].[tbCategorias] ADD  CONSTRAINT [UK_tbCategorias_Carg_Descripcion] UNIQUE NONCLUSTERED 
(
	[Cate_Descripcion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UK_tbSubCategorias_Carg_Descripcion]    Script Date: 29/04/2024 15:30:00 ******/
ALTER TABLE [Gas].[tbSubCategorias] ADD  CONSTRAINT [UK_tbSubCategorias_Carg_Descripcion] UNIQUE NONCLUSTERED 
(
	[SubC_Descripcion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UK_tbCiudades_Ciud_Descripcion]    Script Date: 29/04/2024 15:30:00 ******/
ALTER TABLE [Grl].[tbCiudades] ADD  CONSTRAINT [UK_tbCiudades_Ciud_Descripcion] UNIQUE NONCLUSTERED 
(
	[Ciud_Descripcion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UK_tbEstados_Esta_Descripcion]    Script Date: 29/04/2024 15:30:00 ******/
ALTER TABLE [Grl].[tbEstados] ADD  CONSTRAINT [UK_tbEstados_Esta_Descripcion] UNIQUE NONCLUSTERED 
(
	[Esta_Descripcion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UK_tbEstadosCiviles_Estc_Descripcion]    Script Date: 29/04/2024 15:30:00 ******/
ALTER TABLE [Grl].[tbEstadosCiviles] ADD  CONSTRAINT [UK_tbEstadosCiviles_Estc_Descripcion] UNIQUE NONCLUSTERED 
(
	[Estc_Descripcion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UK_tbMonedas_Carg_Descripcion]    Script Date: 29/04/2024 15:30:00 ******/
ALTER TABLE [Grl].[tbMonedas] ADD  CONSTRAINT [UK_tbMonedas_Carg_Descripcion] UNIQUE NONCLUSTERED 
(
	[Mone_Descripcion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UK_tPaises_Pais_Descripcion]    Script Date: 29/04/2024 15:30:00 ******/
ALTER TABLE [Grl].[tbPaises] ADD  CONSTRAINT [UK_tPaises_Pais_Descripcion] UNIQUE NONCLUSTERED 
(
	[Pais_Descripcion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [Acc].[tbPantallas] ADD  DEFAULT ((1)) FOR [Pant_Estado]
GO
ALTER TABLE [Acc].[tbPantallasPorRoles] ADD  DEFAULT ((1)) FOR [PaPr_Estado]
GO
ALTER TABLE [Acc].[tbRoles] ADD  CONSTRAINT [DF__tbRoles__Role_Es__48CFD27E]  DEFAULT ((1)) FOR [Role_Estado]
GO
ALTER TABLE [Acc].[tbUsuarios] ADD  DEFAULT ((1)) FOR [Usua_Estado]
GO
ALTER TABLE [Gas].[tbCategorias] ADD  DEFAULT ((1)) FOR [Cate_Estado]
GO
ALTER TABLE [Gas].[tbGastosPorRegistro] ADD  DEFAULT ((1)) FOR [GaPr_Estado]
GO
ALTER TABLE [Gas].[tbIngresosPorRegistro] ADD  DEFAULT ((1)) FOR [InPr_Estado]
GO
ALTER TABLE [Gas].[tbRegistros] ADD  DEFAULT ((1)) FOR [Regi_Estado]
GO
ALTER TABLE [Gas].[tbSubCategorias] ADD  DEFAULT ((1)) FOR [SubC_Estado]
GO
ALTER TABLE [Grl].[tbEstadosCiviles] ADD  DEFAULT ((1)) FOR [Estc_Estado]
GO
ALTER TABLE [Grl].[tbMonedas] ADD  DEFAULT ((1)) FOR [Mone_Estado]
GO
ALTER TABLE [Grl].[tbPersonas] ADD  DEFAULT ((1)) FOR [Perso_Estado]
GO
ALTER TABLE [Acc].[tbPantallas]  WITH CHECK ADD  CONSTRAINT [FK_tbPantallas_tbUsuarios_UsuarioCreacion] FOREIGN KEY([Pant_UsuarioCreacion])
REFERENCES [Acc].[tbUsuarios] ([Usua_Id])
GO
ALTER TABLE [Acc].[tbPantallas] CHECK CONSTRAINT [FK_tbPantallas_tbUsuarios_UsuarioCreacion]
GO
ALTER TABLE [Acc].[tbPantallas]  WITH CHECK ADD  CONSTRAINT [FK_tbPantallas_tbUsuarios_UsuarioModificacion] FOREIGN KEY([Pant_UsuarioModificacion])
REFERENCES [Acc].[tbUsuarios] ([Usua_Id])
GO
ALTER TABLE [Acc].[tbPantallas] CHECK CONSTRAINT [FK_tbPantallas_tbUsuarios_UsuarioModificacion]
GO
ALTER TABLE [Acc].[tbPantallasPorRoles]  WITH CHECK ADD  CONSTRAINT [FK_tbPantallasPorRoles_tbUsuarios_UsuarioCreacion] FOREIGN KEY([PaPr_UsuarioCreacion])
REFERENCES [Acc].[tbUsuarios] ([Usua_Id])
GO
ALTER TABLE [Acc].[tbPantallasPorRoles] CHECK CONSTRAINT [FK_tbPantallasPorRoles_tbUsuarios_UsuarioCreacion]
GO
ALTER TABLE [Acc].[tbPantallasPorRoles]  WITH CHECK ADD  CONSTRAINT [FK_tbPantallasPorRoles_tbUsuarios_UsuarioModificacion] FOREIGN KEY([PaPr_UsuarioModificacion])
REFERENCES [Acc].[tbUsuarios] ([Usua_Id])
GO
ALTER TABLE [Acc].[tbPantallasPorRoles] CHECK CONSTRAINT [FK_tbPantallasPorRoles_tbUsuarios_UsuarioModificacion]
GO
ALTER TABLE [Acc].[tbPantallasPorRoles]  WITH CHECK ADD  CONSTRAINT [FK_tbPantallasxRol_tbPantallas_Pant_Id] FOREIGN KEY([Pant_Id])
REFERENCES [Acc].[tbPantallas] ([Pant_Id])
GO
ALTER TABLE [Acc].[tbPantallasPorRoles] CHECK CONSTRAINT [FK_tbPantallasxRol_tbPantallas_Pant_Id]
GO
ALTER TABLE [Acc].[tbPantallasPorRoles]  WITH CHECK ADD  CONSTRAINT [FK_tbPantallasxRol_tbRoles_Role_Id] FOREIGN KEY([Role_Id])
REFERENCES [Acc].[tbRoles] ([Role_Id])
GO
ALTER TABLE [Acc].[tbPantallasPorRoles] CHECK CONSTRAINT [FK_tbPantallasxRol_tbRoles_Role_Id]
GO
ALTER TABLE [Acc].[tbRoles]  WITH CHECK ADD  CONSTRAINT [FK_tbRoles_tbUsuarios_UsuarioCreacion] FOREIGN KEY([Role_UsuarioCreacion])
REFERENCES [Acc].[tbUsuarios] ([Usua_Id])
GO
ALTER TABLE [Acc].[tbRoles] CHECK CONSTRAINT [FK_tbRoles_tbUsuarios_UsuarioCreacion]
GO
ALTER TABLE [Acc].[tbRoles]  WITH CHECK ADD  CONSTRAINT [FK_tbRoles_tbUsuarios_UsuarioModificacion] FOREIGN KEY([Role_UsuarioModificacion])
REFERENCES [Acc].[tbUsuarios] ([Usua_Id])
GO
ALTER TABLE [Acc].[tbRoles] CHECK CONSTRAINT [FK_tbRoles_tbUsuarios_UsuarioModificacion]
GO
ALTER TABLE [Acc].[tbUsuarios]  WITH CHECK ADD  CONSTRAINT [FK_tbUsuarios_tbPersonas_Perso_Id] FOREIGN KEY([Perso_Id])
REFERENCES [Grl].[tbPersonas] ([Perso_Id])
GO
ALTER TABLE [Acc].[tbUsuarios] CHECK CONSTRAINT [FK_tbUsuarios_tbPersonas_Perso_Id]
GO
ALTER TABLE [Acc].[tbUsuarios]  WITH CHECK ADD  CONSTRAINT [FK_tbUsuarios_tbRoles_Role_Id] FOREIGN KEY([Role_Id])
REFERENCES [Acc].[tbRoles] ([Role_Id])
GO
ALTER TABLE [Acc].[tbUsuarios] CHECK CONSTRAINT [FK_tbUsuarios_tbRoles_Role_Id]
GO
ALTER TABLE [Acc].[tbUsuarios]  WITH CHECK ADD  CONSTRAINT [FK_tbUsuarios_tbUsuarios_UsuarioCreacion] FOREIGN KEY([Usua_UsuarioCreacion])
REFERENCES [Acc].[tbUsuarios] ([Usua_Id])
GO
ALTER TABLE [Acc].[tbUsuarios] CHECK CONSTRAINT [FK_tbUsuarios_tbUsuarios_UsuarioCreacion]
GO
ALTER TABLE [Acc].[tbUsuarios]  WITH CHECK ADD  CONSTRAINT [FK_tbUsuarios_tbUsuarios_UsuarioModificacion] FOREIGN KEY([Usua_UsuarioModificacion])
REFERENCES [Acc].[tbUsuarios] ([Usua_Id])
GO
ALTER TABLE [Acc].[tbUsuarios] CHECK CONSTRAINT [FK_tbUsuarios_tbUsuarios_UsuarioModificacion]
GO
ALTER TABLE [Gas].[tbCategorias]  WITH CHECK ADD  CONSTRAINT [FK_tbCategorias_tbUsuarios_UsuarioCreacion] FOREIGN KEY([Cate_UsuarioCreacion])
REFERENCES [Acc].[tbUsuarios] ([Usua_Id])
GO
ALTER TABLE [Gas].[tbCategorias] CHECK CONSTRAINT [FK_tbCategorias_tbUsuarios_UsuarioCreacion]
GO
ALTER TABLE [Gas].[tbCategorias]  WITH CHECK ADD  CONSTRAINT [FK_tbCategorias_tbUsuarios_UsuarioModificacion] FOREIGN KEY([Cate_UsuarioModificacion])
REFERENCES [Acc].[tbUsuarios] ([Usua_Id])
GO
ALTER TABLE [Gas].[tbCategorias] CHECK CONSTRAINT [FK_tbCategorias_tbUsuarios_UsuarioModificacion]
GO
ALTER TABLE [Gas].[tbGastosPorRegistro]  WITH CHECK ADD  CONSTRAINT [FK_tbGastosPorRegistro_tbRegistros_Regi_Id] FOREIGN KEY([Regi_Id])
REFERENCES [Gas].[tbRegistros] ([Regi_Id])
GO
ALTER TABLE [Gas].[tbGastosPorRegistro] CHECK CONSTRAINT [FK_tbGastosPorRegistro_tbRegistros_Regi_Id]
GO
ALTER TABLE [Gas].[tbGastosPorRegistro]  WITH CHECK ADD  CONSTRAINT [FK_tbGastosPorRegistro_tbSubCategorias_SubC_Id] FOREIGN KEY([SubC_Id])
REFERENCES [Gas].[tbSubCategorias] ([SubC_Id])
GO
ALTER TABLE [Gas].[tbGastosPorRegistro] CHECK CONSTRAINT [FK_tbGastosPorRegistro_tbSubCategorias_SubC_Id]
GO
ALTER TABLE [Gas].[tbGastosPorRegistro]  WITH CHECK ADD  CONSTRAINT [FK_tbGastosPorRegistro_tbUsuarios_UsuarioCreacion] FOREIGN KEY([GaPr_UsuarioCreacion])
REFERENCES [Acc].[tbUsuarios] ([Usua_Id])
GO
ALTER TABLE [Gas].[tbGastosPorRegistro] CHECK CONSTRAINT [FK_tbGastosPorRegistro_tbUsuarios_UsuarioCreacion]
GO
ALTER TABLE [Gas].[tbGastosPorRegistro]  WITH CHECK ADD  CONSTRAINT [FK_tbGastosPorRegistro_tbUsuarios_UsuarioModificacion] FOREIGN KEY([GaPr_UsuarioModificacion])
REFERENCES [Acc].[tbUsuarios] ([Usua_Id])
GO
ALTER TABLE [Gas].[tbGastosPorRegistro] CHECK CONSTRAINT [FK_tbGastosPorRegistro_tbUsuarios_UsuarioModificacion]
GO
ALTER TABLE [Gas].[tbIngresosPorRegistro]  WITH CHECK ADD  CONSTRAINT [FK_tbIngresosPorRegistro_tbRegistros_Regi_Id] FOREIGN KEY([Regi_Id])
REFERENCES [Gas].[tbRegistros] ([Regi_Id])
GO
ALTER TABLE [Gas].[tbIngresosPorRegistro] CHECK CONSTRAINT [FK_tbIngresosPorRegistro_tbRegistros_Regi_Id]
GO
ALTER TABLE [Gas].[tbIngresosPorRegistro]  WITH CHECK ADD  CONSTRAINT [FK_tbIngresosPorRegistro_tbUsuarios_UsuarioCreacion] FOREIGN KEY([InPr_UsuarioCreacion])
REFERENCES [Acc].[tbUsuarios] ([Usua_Id])
GO
ALTER TABLE [Gas].[tbIngresosPorRegistro] CHECK CONSTRAINT [FK_tbIngresosPorRegistro_tbUsuarios_UsuarioCreacion]
GO
ALTER TABLE [Gas].[tbIngresosPorRegistro]  WITH CHECK ADD  CONSTRAINT [FK_tbIngresosPorRegistro_tbUsuarios_UsuarioModificacion] FOREIGN KEY([InPr_UsuarioModificacion])
REFERENCES [Acc].[tbUsuarios] ([Usua_Id])
GO
ALTER TABLE [Gas].[tbIngresosPorRegistro] CHECK CONSTRAINT [FK_tbIngresosPorRegistro_tbUsuarios_UsuarioModificacion]
GO
ALTER TABLE [Gas].[tbRegistros]  WITH CHECK ADD  CONSTRAINT [FK_tbRegistros_tbPersonas_Perso_Id] FOREIGN KEY([Perso_Id])
REFERENCES [Grl].[tbPersonas] ([Perso_Id])
GO
ALTER TABLE [Gas].[tbRegistros] CHECK CONSTRAINT [FK_tbRegistros_tbPersonas_Perso_Id]
GO
ALTER TABLE [Gas].[tbRegistros]  WITH CHECK ADD  CONSTRAINT [FK_tbRegistros_tbUsuarios_UsuarioCreacion] FOREIGN KEY([Regi_UsuarioCreacion])
REFERENCES [Acc].[tbUsuarios] ([Usua_Id])
GO
ALTER TABLE [Gas].[tbRegistros] CHECK CONSTRAINT [FK_tbRegistros_tbUsuarios_UsuarioCreacion]
GO
ALTER TABLE [Gas].[tbRegistros]  WITH CHECK ADD  CONSTRAINT [FK_tbRegistros_tbUsuarios_UsuarioModificacion] FOREIGN KEY([Regi_UsuarioModificacion])
REFERENCES [Acc].[tbUsuarios] ([Usua_Id])
GO
ALTER TABLE [Gas].[tbRegistros] CHECK CONSTRAINT [FK_tbRegistros_tbUsuarios_UsuarioModificacion]
GO
ALTER TABLE [Gas].[tbSubCategorias]  WITH CHECK ADD  CONSTRAINT [FK_tbSubCategorias_tbCategorias_Cate_Id] FOREIGN KEY([Cate_Id])
REFERENCES [Gas].[tbCategorias] ([Cate_Id])
GO
ALTER TABLE [Gas].[tbSubCategorias] CHECK CONSTRAINT [FK_tbSubCategorias_tbCategorias_Cate_Id]
GO
ALTER TABLE [Gas].[tbSubCategorias]  WITH CHECK ADD  CONSTRAINT [FK_tbSubCategorias_tbUsuarios_UsuarioCreacion] FOREIGN KEY([SubC_UsuarioCreacion])
REFERENCES [Acc].[tbUsuarios] ([Usua_Id])
GO
ALTER TABLE [Gas].[tbSubCategorias] CHECK CONSTRAINT [FK_tbSubCategorias_tbUsuarios_UsuarioCreacion]
GO
ALTER TABLE [Gas].[tbSubCategorias]  WITH CHECK ADD  CONSTRAINT [FK_tbSubCategorias_tbUsuarios_UsuarioModificacion] FOREIGN KEY([SubC_UsuarioModificacion])
REFERENCES [Acc].[tbUsuarios] ([Usua_Id])
GO
ALTER TABLE [Gas].[tbSubCategorias] CHECK CONSTRAINT [FK_tbSubCategorias_tbUsuarios_UsuarioModificacion]
GO
ALTER TABLE [Grl].[tbCiudades]  WITH CHECK ADD  CONSTRAINT [FK_tbCiudades_tbEstartamentos_Esta_Id] FOREIGN KEY([Esta_Id])
REFERENCES [Grl].[tbEstados] ([Esta_Id])
GO
ALTER TABLE [Grl].[tbCiudades] CHECK CONSTRAINT [FK_tbCiudades_tbEstartamentos_Esta_Id]
GO
ALTER TABLE [Grl].[tbCiudades]  WITH CHECK ADD  CONSTRAINT [FK_tbCiudades_tbUsuarios_UsuarioCreacion] FOREIGN KEY([Ciud_UsuarioCreacion])
REFERENCES [Acc].[tbUsuarios] ([Usua_Id])
GO
ALTER TABLE [Grl].[tbCiudades] CHECK CONSTRAINT [FK_tbCiudades_tbUsuarios_UsuarioCreacion]
GO
ALTER TABLE [Grl].[tbCiudades]  WITH CHECK ADD  CONSTRAINT [FK_tbCiudades_tbUsuarios_UsuarioModificacion] FOREIGN KEY([Ciud_UsuarioModificacion])
REFERENCES [Acc].[tbUsuarios] ([Usua_Id])
GO
ALTER TABLE [Grl].[tbCiudades] CHECK CONSTRAINT [FK_tbCiudades_tbUsuarios_UsuarioModificacion]
GO
ALTER TABLE [Grl].[tbEstados]  WITH CHECK ADD  CONSTRAINT [FK_tbEstados_tbPaises_Pais_Id] FOREIGN KEY([Pais_Id])
REFERENCES [Grl].[tbPaises] ([Pais_Id])
GO
ALTER TABLE [Grl].[tbEstados] CHECK CONSTRAINT [FK_tbEstados_tbPaises_Pais_Id]
GO
ALTER TABLE [Grl].[tbEstados]  WITH CHECK ADD  CONSTRAINT [FK_tbEstados_tbUsuarios_UsuarioCreacion] FOREIGN KEY([Esta_UsuarioCreacion])
REFERENCES [Acc].[tbUsuarios] ([Usua_Id])
GO
ALTER TABLE [Grl].[tbEstados] CHECK CONSTRAINT [FK_tbEstados_tbUsuarios_UsuarioCreacion]
GO
ALTER TABLE [Grl].[tbEstados]  WITH CHECK ADD  CONSTRAINT [FK_tbEstados_tbUsuarios_UsuarioModificacion] FOREIGN KEY([Esta_UsuarioModificacion])
REFERENCES [Acc].[tbUsuarios] ([Usua_Id])
GO
ALTER TABLE [Grl].[tbEstados] CHECK CONSTRAINT [FK_tbEstados_tbUsuarios_UsuarioModificacion]
GO
ALTER TABLE [Grl].[tbEstadosCiviles]  WITH CHECK ADD  CONSTRAINT [FK_tbEstadosCiviles_tbUsuarios_UsuarioCreacion] FOREIGN KEY([Estc_UsuarioCreacion])
REFERENCES [Acc].[tbUsuarios] ([Usua_Id])
GO
ALTER TABLE [Grl].[tbEstadosCiviles] CHECK CONSTRAINT [FK_tbEstadosCiviles_tbUsuarios_UsuarioCreacion]
GO
ALTER TABLE [Grl].[tbEstadosCiviles]  WITH CHECK ADD  CONSTRAINT [FK_tbEstadosCiviles_tbUsuarios_UsuarioModificacion] FOREIGN KEY([Estc_UsuarioModificacion])
REFERENCES [Acc].[tbUsuarios] ([Usua_Id])
GO
ALTER TABLE [Grl].[tbEstadosCiviles] CHECK CONSTRAINT [FK_tbEstadosCiviles_tbUsuarios_UsuarioModificacion]
GO
ALTER TABLE [Grl].[tbMonedas]  WITH CHECK ADD  CONSTRAINT [FK_tbMonedas_tbUsuarios_UsuarioCreacion] FOREIGN KEY([Mone_UsuarioCreacion])
REFERENCES [Acc].[tbUsuarios] ([Usua_Id])
GO
ALTER TABLE [Grl].[tbMonedas] CHECK CONSTRAINT [FK_tbMonedas_tbUsuarios_UsuarioCreacion]
GO
ALTER TABLE [Grl].[tbMonedas]  WITH CHECK ADD  CONSTRAINT [FK_tbMonedas_tbUsuarios_UsuarioModificacion] FOREIGN KEY([Mone_UsuarioModificacion])
REFERENCES [Acc].[tbUsuarios] ([Usua_Id])
GO
ALTER TABLE [Grl].[tbMonedas] CHECK CONSTRAINT [FK_tbMonedas_tbUsuarios_UsuarioModificacion]
GO
ALTER TABLE [Grl].[tbPaises]  WITH CHECK ADD  CONSTRAINT [FK_tPaises_tbUsuarios_UsuarioCreacion] FOREIGN KEY([Pais_UsuarioCreacion])
REFERENCES [Acc].[tbUsuarios] ([Usua_Id])
GO
ALTER TABLE [Grl].[tbPaises] CHECK CONSTRAINT [FK_tPaises_tbUsuarios_UsuarioCreacion]
GO
ALTER TABLE [Grl].[tbPaises]  WITH CHECK ADD  CONSTRAINT [FK_tPaises_tbUsuarios_UsuarioModificacion] FOREIGN KEY([Pais_UsuarioModificacion])
REFERENCES [Acc].[tbUsuarios] ([Usua_Id])
GO
ALTER TABLE [Grl].[tbPaises] CHECK CONSTRAINT [FK_tPaises_tbUsuarios_UsuarioModificacion]
GO
ALTER TABLE [Grl].[tbPersonas]  WITH CHECK ADD  CONSTRAINT [FK_tbPersonas_tbCiudades_Ciud_Id] FOREIGN KEY([Ciud_id])
REFERENCES [Grl].[tbCiudades] ([Ciud_Id])
GO
ALTER TABLE [Grl].[tbPersonas] CHECK CONSTRAINT [FK_tbPersonas_tbCiudades_Ciud_Id]
GO
ALTER TABLE [Grl].[tbPersonas]  WITH CHECK ADD  CONSTRAINT [FK_tbPersonas_tbEstadosCiviles_Estc_Id] FOREIGN KEY([Estc_Id])
REFERENCES [Grl].[tbEstadosCiviles] ([Estc_Id])
GO
ALTER TABLE [Grl].[tbPersonas] CHECK CONSTRAINT [FK_tbPersonas_tbEstadosCiviles_Estc_Id]
GO
ALTER TABLE [Grl].[tbPersonas]  WITH CHECK ADD  CONSTRAINT [FK_tbPersonas_tbUsuarios_UsuarioCreacion] FOREIGN KEY([Perso_UsuarioCreacion])
REFERENCES [Acc].[tbUsuarios] ([Usua_Id])
GO
ALTER TABLE [Grl].[tbPersonas] CHECK CONSTRAINT [FK_tbPersonas_tbUsuarios_UsuarioCreacion]
GO
ALTER TABLE [Grl].[tbPersonas]  WITH CHECK ADD  CONSTRAINT [FK_tbPersonas_tbUsuarios_UsuarioModificacion] FOREIGN KEY([Perso_UsuarioModificacion])
REFERENCES [Acc].[tbUsuarios] ([Usua_Id])
GO
ALTER TABLE [Grl].[tbPersonas] CHECK CONSTRAINT [FK_tbPersonas_tbUsuarios_UsuarioModificacion]
GO
/****** Object:  StoredProcedure [Acc].[SP_Pantallas_Actualizar]    Script Date: 29/04/2024 15:30:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [Acc].[SP_Pantallas_Actualizar]
    @Pant_Id INT,
    @Pant_Descripcion VARCHAR(60),
    @Pant_UsuarioModificacion INT,
    @Pant_FechaModificacion DATETIME
AS
BEGIN
    BEGIN TRY
        UPDATE Acc.tbPantallas
        SET Pant_Descripcion = @Pant_Descripcion,
            Pant_UsuarioModificacion = @Pant_UsuarioModificacion,
            Pant_FechaModificacion = @Pant_FechaModificacion
        WHERE Pant_Id = @Pant_Id;
        SELECT 1;
    END TRY
    BEGIN CATCH
        SELECT 0;
    END CATCH
END;


GO
/****** Object:  StoredProcedure [Acc].[SP_Pantallas_Eliminar]    Script Date: 29/04/2024 15:30:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [Acc].[SP_Pantallas_Eliminar]
    @Pant_Id INT
AS
BEGIN
    BEGIN TRY
        UPDATE Acc.tbPantallas
        SET Pant_Estado = 0
        WHERE Pant_Id = @Pant_Id;
        SELECT 1;
    END TRY
    BEGIN CATCH
        SELECT 0;
    END CATCH
END;


GO
/****** Object:  StoredProcedure [Acc].[SP_Pantallas_Insertar]    Script Date: 29/04/2024 15:30:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [Acc].[SP_Pantallas_Insertar]
    @Pant_Descripcion VARCHAR(60),
    @Pant_UsuarioCreacion INT,
    @Pant_FechaCreacion DATETIME
AS
BEGIN
    BEGIN TRY
        INSERT INTO Acc.tbPantallas (
            Pant_Descripcion,
            Pant_UsuarioCreacion,
            Pant_FechaCreacion
        )
        VALUES (
            @Pant_Descripcion,
            @Pant_UsuarioCreacion,
            @Pant_FechaCreacion
        );
        SELECT 1;
    END TRY
    BEGIN CATCH
        SELECT 0;
    END CATCH
END;

GO
/****** Object:  StoredProcedure [Acc].[SP_Pantallas_LlenarEditar]    Script Date: 29/04/2024 15:30:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [Acc].[SP_Pantallas_LlenarEditar]
	@Pant_Id INT
AS
BEGIN
    SELECT *
    FROM Acc.tbPantallas
    WHERE Pant_Id = @Pant_Id
END;

GO
/****** Object:  StoredProcedure [Acc].[SP_Pantallas_Seleccionar]    Script Date: 29/04/2024 15:30:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [Acc].[SP_Pantallas_Seleccionar]
    @RoleId INT
AS
BEGIN
    SELECT Pan.Pant_Id, Pan.Pant_Descripcion
    FROM Acc.tbPantallas AS Pan
    WHERE Pan.Pant_Estado = 1
      AND NOT EXISTS (
          SELECT 1
          FROM Acc.tbPantallasPorRoles AS PxR
          WHERE PxR.Role_Id = @RoleId AND PxR.Pant_Id = Pan.Pant_Id
      )
END

GO
/****** Object:  StoredProcedure [Acc].[SP_PantallasPorRoles_Actualizar]    Script Date: 29/04/2024 15:30:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [Acc].[SP_PantallasPorRoles_Actualizar]
    @PaPr_Id INT,
    @Pant_Id INT,
    @Role_Id INT,
    @PaPr_UsuarioModificacion INT,
    @PaPr_FechaModificacion DATETIME
AS
BEGIN
    BEGIN TRY
        UPDATE Acc.tbPantallasPorRoles
        SET Pant_Id = @Pant_Id,
            Role_Id = @Role_Id,
            PaPr_UsuarioModificacion = @PaPr_UsuarioModificacion,
            PaPr_FechaModificacion = @PaPr_FechaModificacion
        WHERE PaPr_Id = @PaPr_Id;
        SELECT 1;
    END TRY
    BEGIN CATCH
        SELECT 0;
    END CATCH
END;

GO
/****** Object:  StoredProcedure [Acc].[SP_PantallasPorRoles_Eliminar]    Script Date: 29/04/2024 15:30:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [Acc].[SP_PantallasPorRoles_Eliminar]
   	@PaPr_Id INT
AS
BEGIN
    BEGIN TRY
        DELETE FROM acc.tbPantallasPorRoles
	WHERE  PaPr_Id = @PaPr_Id
        SELECT 1;
    END TRY
    BEGIN CATCH
        SELECT 0;
    END CATCH
END;
GO
/****** Object:  StoredProcedure [Acc].[SP_PantallasPorRoles_Insertar]    Script Date: 29/04/2024 15:30:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [Acc].[SP_PantallasPorRoles_Insertar]
    @Pant_Id INT,
    @Role_Id INT,
    @PaPr_UsuarioCreacion INT,
    @PaPr_FechaCreacion DATETIME
AS
BEGIN
    BEGIN TRY
        INSERT INTO Acc.tbPantallasPorRoles (
            Pant_Id,
            Role_Id,
            PaPr_UsuarioCreacion,
            PaPr_FechaCreacion
        )
        VALUES (
            @Pant_Id,
            @Role_Id,
            @PaPr_UsuarioCreacion,
            @PaPr_FechaCreacion
        );
        SELECT 1;
    END TRY
    BEGIN CATCH
        SELECT 0;
    END CATCH
END;

GO
/****** Object:  StoredProcedure [Acc].[SP_PantallasPorRoles_LlenarEditar]    Script Date: 29/04/2024 15:30:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [Acc].[SP_PantallasPorRoles_LlenarEditar]
	@PaPr_Id INT
AS
BEGIN
    SELECT *
    FROM Acc.tbPantallasPorRoles
    WHERE PaPr_Id = @PaPr_Id
END;

GO
/****** Object:  StoredProcedure [Acc].[SP_PantallasPorRoles_Mostrar]    Script Date: 29/04/2024 15:30:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE[Acc].[SP_PantallasPorRoles_Mostrar]
@Role_Id INT
AS
BEGIN
	SELECT  PaPr_Id, PanRo.Pant_Id, Pant_Descripcion
	FROM Acc.tbPantallasPorRoles AS PanRo 
	INNER JOIN Acc.tbPantallas AS PAN ON PAN.Pant_Id = PanRo.Pant_Id
	WHERE Role_Id = @Role_Id and Pan.Pant_Estado = 1
END
GO
/****** Object:  StoredProcedure [Acc].[SP_PantallasPorRoles_Seleccionar]    Script Date: 29/04/2024 15:30:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [Acc].[SP_PantallasPorRoles_Seleccionar]
@Role_Id INT
AS
BEGIN
	SELECT	PanRo.Role_Id,
	PAN.Pant_Id,
			Pant_Descripcion
	FROM Acc.tbPantallasPorRoles AS PanRo 
	INNER JOIN Acc.tbPantallas AS PAN ON PAN.Pant_Id = PanRo.Pant_Id
	WHERE  Pan.Pant_Estado = 1 AND PanRo.Role_Id = @Role_Id
END

GO
/****** Object:  StoredProcedure [Acc].[SP_Roles_Actualizar]    Script Date: 29/04/2024 15:30:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [Acc].[SP_Roles_Actualizar]
    @Role_Id INT,
    @Role_Descripcion VARCHAR(30),
    @Role_UsuarioModificacion INT,
    @Role_FechaModificacion DATETIME
AS
BEGIN
    BEGIN TRY
        UPDATE Acc.tbRoles
        SET Role_Descripcion = @Role_Descripcion,
            Role_UsuarioModificacion = @Role_UsuarioModificacion,
            Role_FechaModificacion = @Role_FechaModificacion
        WHERE Role_Id = @Role_Id;
        SELECT 1;
    END TRY
    BEGIN CATCH
        SELECT 0;
    END CATCH
END;

GO
/****** Object:  StoredProcedure [Acc].[SP_Roles_Eliminar]    Script Date: 29/04/2024 15:30:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [Acc].[SP_Roles_Eliminar]
    @Role_Id INT
AS
BEGIN
    BEGIN TRY
        UPDATE Acc.tbRoles
        SET Role_Estado = 0
        WHERE Role_Id = @Role_Id;
        SELECT 1;
    END TRY
    BEGIN CATCH
        SELECT 0;
    END CATCH
END;

GO
/****** Object:  StoredProcedure [Acc].[SP_Roles_Insertar]    Script Date: 29/04/2024 15:30:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [Acc].[SP_Roles_Insertar]
    @Role_Descripcion VARCHAR(30),
    @Role_UsuarioCreacion INT,
    @Role_FechaCreacion DATETIME,
	@role_id int OUTPUT
AS
BEGIN
  DECLARE @estadoActual INT;

   SELECT @estadoActual = Role_estado FROM Acc.tbRoles WHERE Role_Descripcion = @Role_Descripcion;
   BEGIN TRY 
      IF @estadoActual IS NOT NULL
	     BEGIN
       
            IF @estadoActual = 0
            BEGIN
                -- El estado es 0, actualiza el estado a 1
                UPDATE Acc.tbRoles SET Role_Estado = 1 WHERE Role_Descripcion = @Role_Descripcion;
                SELECT 1
            END
            ELSE
            BEGIN
      
                SELECT 0;
            END
        END
		 ELSE
        BEGIN
	INSERT INTO Acc.tbRoles (Role_Descripcion,Role_UsuarioCreacion,Role_FechaCreacion)
	VALUES( @Role_Descripcion, @Role_UsuarioCreacion, @Role_FechaCreacion)
	SET @role_id = SCOPE_IDENTITY();
	SELECT 1
	END
	END TRY
	BEGIN CATCH
		SELECT 0
	END CATCH
END;

GO
/****** Object:  StoredProcedure [Acc].[SP_Roles_LLenar]    Script Date: 29/04/2024 15:30:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create PROCEDURE [Acc].[SP_Roles_LLenar]
@Rol_Id INT
AS
BEGIN
	SELECT	Role_Id,
				Role_Descripcion,
				Role_UsuarioCreacion,
				Role_UsuarioModificacion,
				Role_FechaCreacion,
				Role_FechaModificacion
	FROM Acc.tbRoles AS Rol
	WHERE Rol.Role_Estado = 1 AND Role_Id = @Rol_Id
END

GO
/****** Object:  StoredProcedure [Acc].[SP_Roles_LlenarEditar]    Script Date: 29/04/2024 15:30:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [Acc].[SP_Roles_LlenarEditar]
	@Role_Id INT
AS
BEGIN
    SELECT *
    FROM Acc.tbRoles
    WHERE Role_Id = @Role_Id
END;
GO
/****** Object:  StoredProcedure [Acc].[SP_Roles_Seleccionar]    Script Date: 29/04/2024 15:30:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [Acc].[SP_Roles_Seleccionar]
AS
BEGIN
    SELECT Role_Id, Role_Descripcion, Role_UsuarioCreacion, Role_FechaCreacion, Role_UsuarioModificacion, Role_FechaModificacion, Role_Estado
    FROM Acc.tbRoles
    WHERE Role_Estado = 1;
END;

GO
/****** Object:  StoredProcedure [Acc].[SP_Usuarios_Actualizar]    Script Date: 29/04/2024 15:30:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [Acc].[SP_Usuarios_Actualizar]
    @Usua_Id INT,
    @Usua_Usuario VARCHAR(60),
    @Usua_EsAdmin BIT,
    @Perso_Id INT,
    @Role_Id INT,
    @Usua_UsuarioModificacion INT,
    @Usua_FechaModificacion DATETIME
AS
BEGIN
    BEGIN TRY
        UPDATE Acc.tbUsuarios
        SET Usua_Usuario = @Usua_Usuario,
            Usua_EsAdmin = @Usua_EsAdmin,
            Perso_Id = @Perso_Id,
            Role_Id = @Role_Id,
            Usua_UsuarioModificacion = @Usua_UsuarioModificacion,
            Usua_FechaModificacion = @Usua_FechaModificacion
        WHERE Usua_Id = @Usua_Id;
        SELECT 1;
    END TRY
    BEGIN CATCH
        SELECT 0;
    END CATCH
END;
GO
/****** Object:  StoredProcedure [Acc].[SP_Usuarios_Detalles]    Script Date: 29/04/2024 15:30:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [Acc].[SP_Usuarios_Detalles] 
 @Usua_Id INT
 AS
 BEGIN
 SELECT 
 USUA.Usua_Id, USUA.Usua_Usuario, USUA.Usua_FechaCreacion, USUA.Usua_FechaModificacion,USUA.Usua_EsAdmin, 
 CASE WHEN USUA.Usua_UsuarioCreacion = USUA.Usua_Id THEN USUA.Usua_Usuario ELSE USUA.Usua_Usuario END AS Usua_UsuarioCreacion,
 CASE WHEN USU.Usua_UsuarioModificacion = USU.Usua_Id THEN USU.Usua_Usuario ELSE 'No se ha modificado' END AS Usua_UsuarioModificacion,
 PERS.Perso_Id, Perso_DNI, Perso_Nombre, Perso_Apellido, 
 ROL.Role_Id, Role_Descripcion 
 FROM Acc.tbUsuarios AS USUA 
      INNER JOIN Grl.tbPersonas AS PERS ON USUA.Perso_Id = PERS.Perso_Id
	  INNER JOIN Acc.tbRoles AS ROL ON USUA.Role_Id = ROL.Role_Id
	  	   	  LEFT JOIN Acc.tbUsuarios AS USU ON USUA.Usua_UsuarioModificacion = USU.Usua_Id	  

	  WHERE USUA.Usua_Id = @Usua_Id
END
GO
/****** Object:  StoredProcedure [Acc].[SP_Usuarios_Eliminar]    Script Date: 29/04/2024 15:30:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [Acc].[SP_Usuarios_Eliminar]
    @Usua_Id INT
AS
BEGIN
    BEGIN TRY
        UPDATE Acc.tbUsuarios
        SET Usua_Estado = 0
        WHERE Usua_Id = @Usua_Id;
        SELECT 1;
    END TRY
    BEGIN CATCH
        SELECT 0;
    END CATCH
END;

GO
/****** Object:  StoredProcedure [Acc].[SP_Usuarios_Insertar]    Script Date: 29/04/2024 15:30:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE PROCEDURE [Acc].[SP_Usuarios_Insertar]
    @Usua_Usuario VARCHAR(60),
    @Usua_Contraseña VARCHAR(MAX),
    @Usua_EsAdmin BIT,
	@Perso_Id INT,
	@Role_Id INT,
    @Usua_UsuarioCreacion INT,
    @Usua_FechaCreacion DATETIME
AS
BEGIN
    BEGIN TRY
        INSERT INTO Acc.tbUsuarios (
            Usua_Usuario,
            Usua_Contraseña,
            Usua_EsAdmin,
            Perso_Id,
			Role_Id,
            Usua_UsuarioCreacion,
            Usua_FechaCreacion
        )
        VALUES (
            @Usua_Usuario,
			CONVERT (VARCHAR (MAX), HASHBYTES ('SHA2_512', @Usua_Contraseña), 2),
            @Usua_EsAdmin,
			@Perso_Id,
			@Role_Id,
            @Usua_UsuarioCreacion,
            @Usua_FechaCreacion
        );
        SELECT 1;
    END TRY
    BEGIN CATCH
        SELECT 0;
    END CATCH
END;

GO
/****** Object:  StoredProcedure [Acc].[SP_Usuarios_InsertarValidar]    Script Date: 29/04/2024 15:30:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [Acc].[SP_Usuarios_InsertarValidar]
    @Usua_Usuario VARCHAR(60),
    @Usua_ValidarCorreo VARCHAR(MAX)

AS
BEGIN
    BEGIN TRY
        UPDATE Acc.tbUsuarios
        SET Usua_VerificarCorreo = @Usua_ValidarCorreo
        WHERE Usua_Usuario = @Usua_Usuario;
        SELECT 1;
    END TRY
    BEGIN CATCH
        SELECT 0;
    END CATCH
END;
GO
/****** Object:  StoredProcedure [Acc].[SP_Usuarios_LlenarEditar]    Script Date: 29/04/2024 15:30:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [Acc].[SP_Usuarios_LlenarEditar]
	@Usua_Id INT
AS
BEGIN
    SELECT *
    FROM Acc.tbUsuarios USU inner join Acc.tbRoles ROL on USU.Role_Id = ROL.Role_Id
	inner join Grl.tbPersonas PERS on USU.Perso_Id = PERS.Perso_Id

    WHERE Usua_Id = @Usua_Id
END;
GO
/****** Object:  StoredProcedure [Acc].[SP_Usuarios_ObtenerCorreo]    Script Date: 29/04/2024 15:30:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [Acc].[SP_Usuarios_ObtenerCorreo]
	@Usua_Usuario VARCHAR(60)
AS
BEGIN
    SELECT Usua_Usuario, Perso_Nombre, Perso_Correo
    FROM Acc.tbUsuarios USU	inner join Grl.tbPersonas PERS on USU.Perso_Id = PERS.Perso_Id

    WHERE Usua_Usuario = @Usua_Usuario
END;
GO
/****** Object:  StoredProcedure [Acc].[SP_Usuarios_Reestablecer]    Script Date: 29/04/2024 15:30:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [Acc].[SP_Usuarios_Reestablecer]
(
    @Usua_VerificarCorreo VARCHAR(MAX),

    @Usua_Contraseña VARCHAR(MAX),
    @Usua_UsuarioModificacion INT, 
    @Usua_FechaModificacion DATETIME
)
AS
BEGIN
    BEGIN TRY
	UPDATE Acc.tbUsuarios
			SET Usua_Contraseña = CONVERT (VARCHAR (MAX), HASHBYTES ('SHA2_512', @Usua_Contraseña), 2),
			
				Usua_UsuarioModificacion = @Usua_UsuarioModificacion,
				Usua_FechaModificacion = @Usua_FechaModificacion
			WHERE Usua_VerificarCorreo = @Usua_VerificarCorreo

        SELECT 1;
    END TRY
    BEGIN CATCH
        SELECT 0;
    END CATCH
END;

GO
/****** Object:  StoredProcedure [Acc].[SP_Usuarios_ReestablecerContraseña]    Script Date: 29/04/2024 15:30:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   PROCEDURE [Acc].[SP_Usuarios_ReestablecerContraseña]
(
    @Usua_id INT,
	@CodigoVerificacion VARCHAR(MAX),
    @Usua_Contraseña VARCHAR(MAX),
    @Usua_UsuarioModificacion INT, 
    @Usua_FechaModificacion DATETIME
)
AS
BEGIN
    BEGIN TRY
	-- FASE BETA --
		IF(@CodigoVerificacion = 123)
		BEGIN
			UPDATE Acc.tbUsuarios
			SET Usua_Contraseña = CONVERT (VARCHAR (MAX), HASHBYTES ('SHA2_512', @Usua_Contraseña), 2),
			
				Usua_UsuarioModificacion = @Usua_UsuarioModificacion,
				Usua_FechaModificacion = @Usua_FechaModificacion
			WHERE Usua_id = @Usua_id
		END

        SELECT 1;
    END TRY
    BEGIN CATCH
        SELECT 0;
    END CATCH
END;
GO
/****** Object:  StoredProcedure [Acc].[SP_Usuarios_Seleccionar]    Script Date: 29/04/2024 15:30:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [Acc].[SP_Usuarios_Seleccionar] 
AS
BEGIN
    SELECT Usua_Id, Usua_Usuario, Usua_Contraseña, Usua_EsAdmin, Usua_VerificarCorreo, CASE Usua_EsAdmin WHEN 1 THEN 'Si' WHEN 0 THEN 'No' END Usua_Admin1, Role_Descripcion, CONCAT(Perso_Nombre, ' ', Perso_Apellido) Perso_Nombre, Perso_Correo, Usua_UsuarioCreacion, Usua_FechaCreacion, Usua_UsuarioModificacion, Usua_FechaModificacion, Usua_Estado
    FROM Acc.tbUsuarios USU
	inner join Acc.tbRoles ROL on USU.Role_Id = ROL.Role_Id
	inner join Grl.tbPersonas PERS on USU.Perso_Id = PERS.Perso_Id


    WHERE Usua_Estado = 1;
END;
GO
/****** Object:  StoredProcedure [Acc].[SP_UsuariosValidarInicioSesion]    Script Date: 29/04/2024 15:30:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [Acc].[SP_UsuariosValidarInicioSesion] 
	@Usuario VARCHAR(30),
	@Contraseña VARCHAR(max)
AS
BEGIN 
	SELECT	usu.Usua_id,
			usu.usua_Usuario,
			usu.usua_Contraseña,
			PR.Role_Id,
			p.Pant_Descripcion,
			usu.Usua_EsAdmin,
			PE.Perso_Id,
			PE.Perso_Correo,
			Concat(PE.Perso_Nombre, ' ', PE.Perso_Apellido) Perso_Nombre,
			RE.Regi_Id
	FROM Acc.tbUsuarios AS usu left JOIN Acc.tbPantallasPorRoles AS PR ON PR.role_id = usu.role_id left JOIN Acc.tbPantallas AS P ON P.Pant_Id = PR.Pant_Id
		inner join Grl.tbPersonas PE ON PE.Perso_Id = usu.Perso_Id Inner join Gas.tbRegistros RE ON RE.Perso_Id = PE.Perso_Id
		
	WHERE usu.Usua_Usuario = @Usuario AND usu.Usua_Contraseña = CONVERT (VARCHAR (MAX), HASHBYTES ('SHA2_512', @Contraseña), 2);
END
GO
/****** Object:  StoredProcedure [Gas].[SP_Categorias_Actualizar]    Script Date: 29/04/2024 15:30:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [Gas].[SP_Categorias_Actualizar]
    @Cate_Id int,
    @Cate_Descripcion varchar(50),
    @Cate_UsuarioModificacion int,
    @Cate_FechaModificacion datetime
AS
BEGIN
    BEGIN TRY
        UPDATE Gas.tbCategorias
        SET
            Cate_Descripcion = @Cate_Descripcion,
            Cate_UsuarioModificacion = @Cate_UsuarioModificacion,
            Cate_FechaModificacion = @Cate_FechaModificacion
        WHERE
            Cate_Id = @Cate_Id;
        SELECT 1;
    END TRY
    BEGIN CATCH
        SELECT 0;
    END CATCH
END;

GO
/****** Object:  StoredProcedure [Gas].[SP_Categorias_Eliminar]    Script Date: 29/04/2024 15:30:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [Gas].[SP_Categorias_Eliminar]
    @Cate_Id int
AS
BEGIN
    BEGIN TRY
        UPDATE Gas.tbCategorias
        SET
            Cate_Estado = 0
        WHERE
            Cate_Id = @Cate_Id;
        SELECT 1;
    END TRY
    BEGIN CATCH
        SELECT 0;
    END CATCH
END;

GO
/****** Object:  StoredProcedure [Gas].[SP_Categorias_Insertar]    Script Date: 29/04/2024 15:30:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [Gas].[SP_Categorias_Insertar]
    @Cate_Descripcion varchar(50),
    @Cate_UsuarioCreacion int,
    @Cate_FechaCreacion datetime
AS
BEGIN
    BEGIN TRY
        INSERT INTO Gas.tbCategorias (
            Cate_Descripcion,
            Cate_UsuarioCreacion,
            Cate_FechaCreacion
        )
        VALUES (
            @Cate_Descripcion,
            @Cate_UsuarioCreacion,
            @Cate_FechaCreacion
        );
        SELECT 1;
    END TRY
    BEGIN CATCH
        SELECT 0;
    END CATCH
END;

GO
/****** Object:  StoredProcedure [Gas].[SP_Categorias_LlenarEditar]    Script Date: 29/04/2024 15:30:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [Gas].[SP_Categorias_LlenarEditar]
	@Cate_Id INT
AS
BEGIN
    SELECT *
    FROM
        Gas.tbCategorias
		WHERE Cate_Id = @Cate_Id
END;
GO
/****** Object:  StoredProcedure [Gas].[SP_Categorias_Seleccionar]    Script Date: 29/04/2024 15:30:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [Gas].[SP_Categorias_Seleccionar]
AS
BEGIN
    SELECT
        Cate_Id,
        Cate_Descripcion,
        Cate_UsuarioCreacion,
        Cate_FechaCreacion,
        Cate_UsuarioModificacion,
        Cate_FechaModificacion,
        Cate_Estado
    FROM
        Gas.tbCategorias
		WHERE Cate_Estado = 1
END;
GO
/****** Object:  StoredProcedure [Gas].[SP_Credito_Total]    Script Date: 29/04/2024 15:30:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [Gas].[SP_Credito_Total]
@Pers_Id INT
AS BEGIN
SELECT 
    Regi_MiCredito
FROM 
   Gas.tbRegistros
WHERE Perso_Id = @Pers_Id
END
GO
/****** Object:  StoredProcedure [Gas].[SP_Gastos_Categorias]    Script Date: 29/04/2024 15:30:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [Gas].[SP_Gastos_Categorias]
@Pers_Id INT
AS 
BEGIN
SELECT 
    CATEGORIA, 
    SUM(CANTIDAD) AS DINEROGASTADO, 
    COUNT(*) AS CANTIDAD
FROM 
    Gas.VW_Registros_Total
WHERE 
    TIPO = 'GASTO' AND PERSID = @Pers_Id
GROUP BY 
    CATEGORIA
ORDER BY 
    DINEROGASTADO DESC, CANTIDAD DESC;
END
GO
/****** Object:  StoredProcedure [Gas].[SP_Gastos_GastoMayor]    Script Date: 29/04/2024 15:30:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [Gas].[SP_Gastos_GastoMayor]
@Pers_Id INT
AS
BEGIN
WITH categoriamayor AS (
    SELECT TOP 1
        CATEGORIA,
        SUM(CANTIDAD) AS DINEROGASTADO,
        COUNT(*) AS CANTIDAD
    FROM 
        Gas.VW_Registros_Total
    WHERE 
        TIPO = 'GASTO' AND PERSID = @Pers_Id
    GROUP BY 
        CATEGORIA
    ORDER BY 
        DINEROGASTADO DESC, CANTIDAD DESC
),
Subcategoriamayor AS (
    SELECT TOP 1
        SUBCATEGORIA,
        SUM(CANTIDAD) AS DINEROGASTADO,
        COUNT(*) AS CANTIDAD
    FROM 
        Gas.VW_Registros_Total
    WHERE 
        TIPO = 'GASTO' AND PERSID=@Pers_Id
        AND CATEGORIA IN (SELECT CATEGORIA FROM categoriamayor)
    GROUP BY 
        SUBCATEGORIA
    ORDER BY 
        DINEROGASTADO DESC, CANTIDAD DESC
)
SELECT 
    CC.CATEGORIA,
    CC.DINEROGASTADO AS DINEROCATEGORIA,
    CC.CANTIDAD AS CANTIDADCATEGORIA,
    SC.SUBCATEGORIA,
    SC.DINEROGASTADO AS DINEROSUBCATEGORIA,
    SC.CANTIDAD AS CANTIDADSUBCATEGORIA
FROM 
    categoriamayor CC, Subcategoriamayor SC;
END
GO
/****** Object:  StoredProcedure [Gas].[Sp_Gastos_SubCategorias]    Script Date: 29/04/2024 15:30:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [Gas].[Sp_Gastos_SubCategorias] 
@Pers_Id INT
AS
BEGIN
SELECT 
    SUBCATEGORIA, 
    SUM(CANTIDAD) AS DINEROGASTADO, 
    COUNT(*) AS CANTIDAD
FROM 
    Gas.VW_Registros_Total
WHERE 
    TIPO = 'GASTO' AND PERSID=@Pers_Id
GROUP BY 
    SUBCATEGORIA
ORDER BY 
    DINEROGASTADO DESC, CANTIDAD DESC
END
GO
/****** Object:  StoredProcedure [Gas].[SP_Gastos_Total]    Script Date: 29/04/2024 15:30:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [Gas].[SP_Gastos_Total]
@Pers_Id INT
AS BEGIN
SELECT 
    PERSID,
    SUM(CASE WHEN TIPO = 'GASTO' THEN CANTIDAD ELSE 0 END) AS GASTOS
FROM 
    Gas.VW_Registros_Total
WHERE PERSID = @Pers_Id
GROUP BY 
    PERSID
END
GO
/****** Object:  StoredProcedure [Gas].[SP_GastosPorRegistro_Actualizar]    Script Date: 29/04/2024 15:30:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [Gas].[SP_GastosPorRegistro_Actualizar]
    @GaPr_Id int,
    @GaPr_Monto numeric(8, 2),
    @Regi_Id int,
    @SubC_Id int,
    @GaPr_Nota varchar(50),
    @GaPr_UsuarioModificacion int,
    @GaPr_FechaModificacion datetime
AS
BEGIN
    BEGIN TRY
        BEGIN TRANSACTION;

        DECLARE @MontoAnterior numeric(8, 2);
        SELECT @MontoAnterior = GaPr_Monto
        FROM Gas.tbGastosPorRegistro
        WHERE GaPr_Id = @GaPr_Id;

        UPDATE Gas.tbGastosPorRegistro
        SET
            GaPr_Monto = @GaPr_Monto,
            Regi_Id = @Regi_Id,
            SubC_Id = @SubC_Id,
            GaPr_Nota = @GaPr_Nota,
            GaPr_UsuarioModificacion = @GaPr_UsuarioModificacion,
            GaPr_FechaModificacion = @GaPr_FechaModificacion
        WHERE
            GaPr_Id = @GaPr_Id;

        DECLARE @Diferencia numeric(8, 2);
		IF (@MontoAnterior < @GaPr_Monto)
		BEGIN
        SET @Diferencia = @GaPr_Monto - @MontoAnterior;
		END
		ELSE
		BEGIN
        SET @Diferencia = @MontoAnterior - @GaPr_Monto;
		END


        UPDATE Gas.tbRegistros
        SET Regi_MiCredito = Regi_MiCredito + @Diferencia
        WHERE Regi_Id = @Regi_Id;

        COMMIT TRANSACTION;

        SELECT 1;

    END TRY
    BEGIN CATCH
        ROLLBACK TRANSACTION;
        SELECT 0;
    END CATCH
END;
GO
/****** Object:  StoredProcedure [Gas].[SP_GastosPorRegistro_Eliminar]    Script Date: 29/04/2024 15:30:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [Gas].[SP_GastosPorRegistro_Eliminar]
    @GaPr_Id int
AS
BEGIN
    BEGIN TRY
        BEGIN TRANSACTION;

        UPDATE Gas.tbGastosPorRegistro
        SET
            GaPr_Estado = 0
        WHERE
            GaPr_Id = @GaPr_Id;

        DECLARE @Monto numeric(8, 2);
        SELECT @Monto = GaPr_Monto
        FROM Gas.tbGastosPorRegistro
        WHERE GaPr_Id = @GaPr_Id;

        DECLARE @Regi_Id int;
        SELECT @Regi_Id = Regi_Id
        FROM Gas.tbGastosPorRegistro
        WHERE GaPr_Id = @GaPr_Id;

        UPDATE Gas.tbRegistros
        SET Regi_MiCredito = Regi_MiCredito + @Monto
        WHERE Regi_Id = @Regi_Id;

        COMMIT TRANSACTION;

        SELECT 1;

    END TRY
    BEGIN CATCH
        ROLLBACK TRANSACTION;
        SELECT 0;
    END CATCH
END;
GO
/****** Object:  StoredProcedure [Gas].[SP_GastosPorRegistro_Insertar]    Script Date: 29/04/2024 15:30:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [Gas].[SP_GastosPorRegistro_Insertar]
    @GaPr_Monto numeric(8, 2),
    @Regi_Id int,
    @SubC_Id int,
    @GaPr_Nota varchar(50),
    @GaPr_Fecha datetime,
    @GaPr_UsuarioCreacion int,
    @GaPr_FechaCreacion datetime
AS
BEGIN
    BEGIN TRY
        BEGIN TRANSACTION;

        INSERT INTO Gas.tbGastosPorRegistro (
            GaPr_Monto,
            Regi_Id,
            SubC_Id,
            GaPr_Nota,
            GaPr_Fecha,
            GaPr_UsuarioCreacion,
            GaPr_FechaCreacion
        )
        VALUES (
            @GaPr_Monto,
            @Regi_Id,
            @SubC_Id,
            @GaPr_Nota,
            @GaPr_Fecha,
            @GaPr_UsuarioCreacion,
            @GaPr_FechaCreacion
        );

        UPDATE Gas.tbRegistros
        SET Regi_MiCredito = Regi_MiCredito - @GaPr_Monto
        WHERE Regi_Id = @Regi_Id;

        COMMIT TRANSACTION;

        SELECT 1;

    END TRY
    BEGIN CATCH
        ROLLBACK TRANSACTION;
        SELECT 0;
    END CATCH
END;

GO
/****** Object:  StoredProcedure [Gas].[SP_GastosPorRegistro_Listar]    Script Date: 29/04/2024 15:30:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [Gas].[SP_GastosPorRegistro_Listar]
	@Regi_Id INT
AS
BEGIN
    SELECT
        GaPr_Id,
        GaPr_Monto,
        Regi_Id,
        GR.SubC_Id,
        GaPr_Nota,
        GaPr_Fecha,
        GaPr_UsuarioCreacion,
        GaPr_FechaCreacion,
        GaPr_UsuarioModificacion,
        GaPr_FechaModificacion,
        GaPr_Estado,
		USU.Usua_Usuario
    FROM
        Gas.tbGastosPorRegistro GR inner join Acc.tbUsuarios USU ON USU.Usua_Id = GR.GaPr_UsuarioCreacion
		inner join Gas.tbSubCategorias SB ON SB.SubC_Id = GR.SubC_Id
		Where GaPr_Estado = 1 AND Regi_Id = @Regi_Id
END;
GO
/****** Object:  StoredProcedure [Gas].[SP_GastosPorRegistro_LlenarEditar]    Script Date: 29/04/2024 15:30:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [Gas].[SP_GastosPorRegistro_LlenarEditar]
	@GaPr_Id INT
AS
BEGIN
    SELECT *
    FROM
        Gas.tbGastosPorRegistro GR inner join Acc.tbUsuarios USU ON USU.Usua_Id = GR.GaPr_UsuarioCreacion
		inner join Gas.tbSubCategorias SB ON SB.SubC_Id = GR.SubC_Id
		Where GaPr_Id = @GaPr_Id
END;
GO
/****** Object:  StoredProcedure [Gas].[SP_GastosPorRegistro_Seleccionar]    Script Date: 29/04/2024 15:30:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [Gas].[SP_GastosPorRegistro_Seleccionar]
AS
BEGIN
    SELECT
        GaPr_Id,
        GaPr_Monto,
        Regi_Id,
        SubC_Id,
        GaPr_Nota,
        GaPr_Fecha,
        GaPr_UsuarioCreacion,
        GaPr_FechaCreacion,
        GaPr_UsuarioModificacion,
        GaPr_FechaModificacion,
        GaPr_Estado
    FROM
        Gas.tbGastosPorRegistro
		Where GaPr_Estado = 1
END;
GO
/****** Object:  StoredProcedure [Gas].[SP_Ingresos_Total]    Script Date: 29/04/2024 15:30:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [Gas].[SP_Ingresos_Total]
@Pers_Id INT
AS BEGIN
SELECT 
    PERSID,
    SUM(CASE WHEN TIPO = 'INGRESO' THEN CANTIDAD ELSE 0 END) AS INGRESOS
FROM 
    Gas.VW_Registros_Total
WHERE PERSID = @Pers_Id
GROUP BY 
    PERSID
END
GO
/****** Object:  StoredProcedure [Gas].[SP_IngresosPorRegistro_Actualizar]    Script Date: 29/04/2024 15:30:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [Gas].[SP_IngresosPorRegistro_Actualizar]
    @InPr_Id int,
    @InPr_Monto numeric(8, 2),
    @Regi_Id int,
    @InPr_Nota varchar(50),
    @InPr_UsuarioModificacion int,
    @InPr_FechaModificacion datetime
AS
BEGIN
    BEGIN TRY
        BEGIN TRANSACTION;

        DECLARE @MontoAnterior numeric(8, 2);
        SELECT @MontoAnterior = InPr_Monto
        FROM Gas.tbIngresosPorRegistro
        WHERE InPr_Id = @InPr_Id;


        UPDATE Gas.tbIngresosPorRegistro
        SET
            InPr_Monto = @InPr_Monto,
            Regi_Id = @Regi_Id,
            InPr_Nota = @InPr_Nota,
            InPr_UsuarioModificacion = @InPr_UsuarioModificacion,
            InPr_FechaModificacion = @InPr_FechaModificacion
        WHERE
            InPr_Id = @InPr_Id;


        DECLARE @Diferencia numeric(8, 2);
        SET @Diferencia = @InPr_Monto - @MontoAnterior;


        UPDATE Gas.tbRegistros
        SET Regi_MiCredito = Regi_MiCredito + @Diferencia
        WHERE Regi_Id = @Regi_Id;

        COMMIT TRANSACTION;

        SELECT 1;

    END TRY
    BEGIN CATCH
        ROLLBACK TRANSACTION;
        SELECT 0;
    END CATCH
END;
GO
/****** Object:  StoredProcedure [Gas].[SP_IngresosPorRegistro_Eliminar]    Script Date: 29/04/2024 15:30:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [Gas].[SP_IngresosPorRegistro_Eliminar]
    @InPr_Id int
AS
BEGIN
    BEGIN TRY
        BEGIN TRANSACTION;

        UPDATE Gas.tbIngresosPorRegistro
        SET
            InPr_Estado = 0
        WHERE
            InPr_Id = @InPr_Id;

			--DELETE FROM Gas.tbIngresosPorRegistro
   --     WHERE InPr_Id = @InPr_Id;

        DECLARE @Monto numeric(8, 2);
        SELECT @Monto = InPr_Monto
        FROM Gas.tbIngresosPorRegistro
        WHERE InPr_Id = @InPr_Id;

        DECLARE @Regi_Id int;
        SELECT @Regi_Id = Regi_Id
        FROM Gas.tbIngresosPorRegistro
        WHERE InPr_Id = @InPr_Id;

        UPDATE Gas.tbRegistros
        SET Regi_MiCredito = Regi_MiCredito - @Monto
        WHERE Regi_Id = @Regi_Id;

        COMMIT TRANSACTION;

        SELECT 1;

    END TRY
    BEGIN CATCH
        ROLLBACK TRANSACTION;
        SELECT 0;
    END CATCH
END;
GO
/****** Object:  StoredProcedure [Gas].[SP_IngresosPorRegistro_Insertar]    Script Date: 29/04/2024 15:30:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [Gas].[SP_IngresosPorRegistro_Insertar]
    @InPr_Monto numeric(8, 2),
    @Regi_Id int,
    @InPr_Nota varchar(50),
    @InPr_Fecha datetime,
    @InPr_UsuarioCreacion int,
    @InPr_FechaCreacion datetime
AS
BEGIN
    BEGIN TRY
        BEGIN TRANSACTION;

        INSERT INTO Gas.tbIngresosPorRegistro (
            InPr_Monto,
            Regi_Id,
            InPr_Nota,
            InPr_Fecha,
            InPr_UsuarioCreacion,
            InPr_FechaCreacion
        )
        VALUES (
            @InPr_Monto,
            @Regi_Id,
            @InPr_Nota,
            @InPr_Fecha,
            @InPr_UsuarioCreacion,
            @InPr_FechaCreacion
        );

        UPDATE Gas.tbRegistros
        SET Regi_MiCredito = Regi_MiCredito + @InPr_Monto
        WHERE Regi_Id = @Regi_Id;

        COMMIT TRANSACTION;

        SELECT 1;

    END TRY
    BEGIN CATCH
        ROLLBACK TRANSACTION;
        SELECT 0;
    END CATCH
END;
GO
/****** Object:  StoredProcedure [Gas].[SP_IngresosPorRegistro_Listar]    Script Date: 29/04/2024 15:30:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [Gas].[SP_IngresosPorRegistro_Listar] 
	@Regi_Id INT
AS
BEGIN
    SELECT
        InPr_Id,
        InPr_Monto,
        Regi_Id,
        InPr_Nota,
        InPr_Fecha,
        InPr_UsuarioCreacion,
        InPr_FechaCreacion,
        InPr_UsuarioModificacion,
        InPr_FechaModificacion,
        InPr_Estado,
		USU.Usua_Usuario
    FROM
        Gas.tbIngresosPorRegistro IR inner join Acc.tbUsuarios USU ON USU.Usua_Id = IR.InPr_UsuarioCreacion
		WHERE InPr_Estado = 1 AND Regi_Id = @Regi_Id
END;
GO
/****** Object:  StoredProcedure [Gas].[SP_IngresosPorRegistro_LlenarEditar]    Script Date: 29/04/2024 15:30:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [Gas].[SP_IngresosPorRegistro_LlenarEditar] 
	@InPr_Id INT
AS
BEGIN
    SELECT *
    FROM
        Gas.tbIngresosPorRegistro IR inner join Acc.tbUsuarios USU ON USU.Usua_Id = IR.InPr_UsuarioCreacion
		WHERE InPr_Id = @InPr_Id
END;
GO
/****** Object:  StoredProcedure [Gas].[SP_IngresosPorRegistro_Seleccionar]    Script Date: 29/04/2024 15:30:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [Gas].[SP_IngresosPorRegistro_Seleccionar]
AS
BEGIN
    SELECT
        InPr_Id,
        InPr_Monto,
        Regi_Id,
        InPr_Nota,
        InPr_Fecha,
        InPr_UsuarioCreacion,
        InPr_FechaCreacion,
        InPr_UsuarioModificacion,
        InPr_FechaModificacion,
        InPr_Estado
    FROM
        Gas.tbIngresosPorRegistro
		WHERE InPr_Estado = 1
END;
GO
/****** Object:  StoredProcedure [Gas].[SP_Registros_Actualizar]    Script Date: 29/04/2024 15:30:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [Gas].[SP_Registros_Actualizar]
    @Regi_Id int,
    @Perso_Id int,
    @Regi_MiCredito numeric(8, 2),
    @Regi_UsuarioModificacion int,
    @Regi_FechaModificacion datetime
AS
BEGIN
    BEGIN TRY
        UPDATE Gas.tbRegistros
        SET
            Perso_Id = @Perso_Id,
            Regi_MiCredito = @Regi_MiCredito,
            Regi_UsuarioModificacion = @Regi_UsuarioModificacion,
            Regi_FechaModificacion = @Regi_FechaModificacion
        WHERE
            Regi_Id = @Regi_Id;
        SELECT 1;
    END TRY
    BEGIN CATCH
        SELECT 0;
    END CATCH
END;

GO
/****** Object:  StoredProcedure [Gas].[SP_Registros_Eliminar]    Script Date: 29/04/2024 15:30:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [Gas].[SP_Registros_Eliminar]
    @Regi_Id int
AS
BEGIN
    BEGIN TRY
        UPDATE Gas.tbRegistros
        SET
            Regi_Estado = 0
        WHERE
            Regi_Id = @Regi_Id;
        SELECT 1;
    END TRY
    BEGIN CATCH
        SELECT 0;
    END CATCH
END;

GO
/****** Object:  StoredProcedure [Gas].[SP_Registros_Insertar]    Script Date: 29/04/2024 15:30:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [Gas].[SP_Registros_Insertar]
    @Perso_Id int,
    @Regi_MiCredito numeric(8, 2),
    @Regi_UsuarioCreacion int,
    @Regi_FechaCreacion datetime
AS
BEGIN
    BEGIN TRY
        INSERT INTO Gas.tbRegistros (
            Perso_Id,
            Regi_MiCredito,
            Regi_UsuarioCreacion,
            Regi_FechaCreacion
        )
        VALUES (
            @Perso_Id,
            @Regi_MiCredito,
            @Regi_UsuarioCreacion,
            @Regi_FechaCreacion
        );
        SELECT 1;
    END TRY
    BEGIN CATCH
        SELECT 0;
    END CATCH
END;

GO
/****** Object:  StoredProcedure [Gas].[SP_Registros_LlenarEditar]    Script Date: 29/04/2024 15:30:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [Gas].[SP_Registros_LlenarEditar]
	@Regi_Id INT
AS
BEGIN
    SELECT *
    FROM
        Gas.tbRegistros
		WHERE Regi_Id = @Regi_Id
END;
GO
/****** Object:  StoredProcedure [Gas].[SP_Registros_Seleccionar]    Script Date: 29/04/2024 15:30:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [Gas].[SP_Registros_Seleccionar]
AS
BEGIN
    SELECT
        Regi_Id,
        Perso_Id,
        Regi_MiCredito,
        Regi_UsuarioCreacion,
        Regi_FechaCreacion,
        Regi_UsuarioModificacion,
        Regi_FechaModificacion,
        Regi_Estado
    FROM
        Gas.tbRegistros
		WHERE Regi_Estado = 1
END;
GO
/****** Object:  StoredProcedure [Gas].[SP_Registros_Total]    Script Date: 29/04/2024 15:30:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [Gas].[SP_Registros_Total] 
@Pers_Id INT
AS BEGIN
    SELECT 
        FechaInicio,
        SaldoInicial,
        SaldoAcumulado,
        FECHA AS FechaRegistro
    FROM Gas.vwRegistrosConSaldo
    WHERE PERSID = @Pers_Id
    ORDER BY FECHA;
END
GO
/****** Object:  StoredProcedure [Gas].[SP_Registros_Ultimos]    Script Date: 29/04/2024 15:30:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [Gas].[SP_Registros_Ultimos] 
@Pers_Id INT
AS
BEGIN
SELECT TOP 5 TIPO, CANTIDAD AS CANTIDADD, FECHA, SUBCATEGORIA, CATEGORIA FROM
[Gas].[VW_Registros_Total]
WHERE PERSID = @Pers_Id
ORDER BY ID DESC
END
GO
/****** Object:  StoredProcedure [Gas].[SP_SubCategorias_Actualizar]    Script Date: 29/04/2024 15:30:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [Gas].[SP_SubCategorias_Actualizar]
    @SubC_Id int,
    @SubC_Descripcion varchar(50),
    @Cate_Id int,
    @SubC_UsuarioModificacion int,
    @SubC_FechaModificacion datetime
AS
BEGIN
    BEGIN TRY
        UPDATE Gas.tbSubCategorias
        SET
            SubC_Descripcion = @SubC_Descripcion,
            Cate_Id = @Cate_Id,
            SubC_UsuarioModificacion = @SubC_UsuarioModificacion,
            SubC_FechaModificacion = @SubC_FechaModificacion
        WHERE
            SubC_Id = @SubC_Id;
        SELECT 1;
    END TRY
    BEGIN CATCH
        SELECT 0;
    END CATCH
END;

GO
/****** Object:  StoredProcedure [Gas].[SP_SubCategorias_Eliminar]    Script Date: 29/04/2024 15:30:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [Gas].[SP_SubCategorias_Eliminar]
    @SubC_Id int
AS
BEGIN
    BEGIN TRY
        UPDATE Gas.tbSubCategorias
        SET
            SubC_Estado = 0
        WHERE
            SubC_Id = @SubC_Id;
        SELECT 1;
    END TRY
    BEGIN CATCH
        SELECT 0;
    END CATCH
END;

GO
/****** Object:  StoredProcedure [Gas].[SP_SubCategorias_Insertar]    Script Date: 29/04/2024 15:30:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [Gas].[SP_SubCategorias_Insertar]
    @SubC_Descripcion varchar(50),
    @Cate_Id int,
    @SubC_UsuarioCreacion int,
    @SubC_FechaCreacion datetime
AS
BEGIN
    BEGIN TRY
        INSERT INTO Gas.tbSubCategorias (
            SubC_Descripcion,
            Cate_Id,
            SubC_UsuarioCreacion,
            SubC_FechaCreacion
        )
        VALUES (
            @SubC_Descripcion,
            @Cate_Id,
            @SubC_UsuarioCreacion,
            @SubC_FechaCreacion
        );
        SELECT 1;
    END TRY
    BEGIN CATCH
        SELECT 0;
    END CATCH
END;

GO
/****** Object:  StoredProcedure [Gas].[SP_SubCategorias_LlenarEditar]    Script Date: 29/04/2024 15:30:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [Gas].[SP_SubCategorias_LlenarEditar]
	@SubC_Id INT
AS
BEGIN
    SELECT *
    FROM
        Gas.tbSubCategorias
		WHERE SubC_Id = @SubC_Id
END;
GO
/****** Object:  StoredProcedure [Gas].[SP_SubCategorias_Seleccionar]    Script Date: 29/04/2024 15:30:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [Gas].[SP_SubCategorias_Seleccionar]
AS
BEGIN
    SELECT
        SubC_Id,
        SubC_Descripcion,
        Cate_Id,
        SubC_UsuarioCreacion,
        SubC_FechaCreacion,
        SubC_UsuarioModificacion,
        SubC_FechaModificacion,
        SubC_Estado
    FROM
        Gas.tbSubCategorias
		WHERE SubC_Estado = 1
END;
GO
/****** Object:  StoredProcedure [Gas].[SP_SubCategoriasPorCategoria_Seleccionar]    Script Date: 29/04/2024 15:30:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [Gas].[SP_SubCategoriasPorCategoria_Seleccionar]
 @Cate_Id INT
AS
BEGIN
    SELECT
        SubC_Id,
        SubC_Descripcion,
        Cate_Id,
        SubC_UsuarioCreacion,
        SubC_FechaCreacion,
        SubC_UsuarioModificacion,
        SubC_FechaModificacion,
        SubC_Estado
    FROM
        Gas.tbSubCategorias
		WHERE SubC_Estado = 1 AND Cate_Id = @Cate_Id
END;
GO
/****** Object:  StoredProcedure [Grl].[SP_Ciudades_Actualizar]    Script Date: 29/04/2024 15:30:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO












----//


CREATE PROCEDURE [Grl].[SP_Ciudades_Actualizar]
    @Ciud_Id VARCHAR(4),
    @Ciud_Descripcion VARCHAR(40),
    @Esta_Id VARCHAR(2),
    @Ciud_UsuarioModificacion INT,
    @Ciud_FechaModificacion DATETIME
AS
BEGIN
    BEGIN TRY
        UPDATE Grl.tbCiudades
        SET Ciud_Descripcion = @Ciud_Descripcion,
            Esta_Id = @Esta_Id,
            Ciud_UsuarioModificacion = @Ciud_UsuarioModificacion,
            Ciud_FechaModificacion = @Ciud_FechaModificacion
        WHERE Ciud_Id = @Ciud_Id;
        SELECT 1;
    END TRY
    BEGIN CATCH
        SELECT 0;
    END CATCH
END;

GO
/****** Object:  StoredProcedure [Grl].[SP_Ciudades_Eliminar]    Script Date: 29/04/2024 15:30:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [Grl].[SP_Ciudades_Eliminar]
    @Ciud_Id VARCHAR(4)
AS
BEGIN
    BEGIN TRY
        DELETE FROM Grl.tbCiudades
        WHERE Ciud_Id = @Ciud_Id;
        SELECT 1;
    END TRY
    BEGIN CATCH
        SELECT 0;
    END CATCH
END;

GO
/****** Object:  StoredProcedure [Grl].[SP_Ciudades_Insertar]    Script Date: 29/04/2024 15:30:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [Grl].[SP_Ciudades_Insertar]
    @Ciud_Id VARCHAR(4),
    @Ciud_Descripcion VARCHAR(40),
    @Esta_Id VARCHAR(2),
    @Ciud_UsuarioCreacion INT,
    @Ciud_FechaCreacion DATETIME
AS
BEGIN
    BEGIN TRY
        INSERT INTO Grl.tbCiudades (
            Ciud_Id,
            Ciud_Descripcion,
            Esta_Id,
            Ciud_UsuarioCreacion,
            Ciud_FechaCreacion
        )
        VALUES (
            @Ciud_Id,
            @Ciud_Descripcion,
            @Esta_Id,
            @Ciud_UsuarioCreacion,
            @Ciud_FechaCreacion
        );
        SELECT 1;
    END TRY
    BEGIN CATCH
        SELECT 0;
    END CATCH
END;

GO
/****** Object:  StoredProcedure [Grl].[SP_Ciudades_LlenarEditar]    Script Date: 29/04/2024 15:30:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [Grl].[SP_Ciudades_LlenarEditar]
	@Ciud_Id INT
AS
BEGIN
    SELECT *
    FROM Grl.tbCiudades inner join grl.tbEstados on grl.tbCiudades.Esta_Id = grl.tbEstados.Esta_Id
    WHERE Ciud_Id = @Ciud_Id
END;
GO
/****** Object:  StoredProcedure [Grl].[SP_Ciudades_Seleccionar]    Script Date: 29/04/2024 15:30:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [Grl].[SP_Ciudades_Seleccionar]
AS
BEGIN
    SELECT Ciud_Id, Ciud_Descripcion, Esta_Descripcion, Ciud_UsuarioCreacion, Ciud_FechaCreacion, Ciud_UsuarioModificacion, Ciud_FechaModificacion
    FROM Grl.tbCiudades inner join grl.tbEstados on grl.tbCiudades.Esta_Id = grl.tbEstados.Esta_Id
END;

GO
/****** Object:  StoredProcedure [Grl].[SP_CiudadesPorEstados]    Script Date: 29/04/2024 15:30:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [Grl].[SP_CiudadesPorEstados]
@Esta_id VARCHAR(2)
AS
BEGIN
	SELECT * FROM Grl.tbCiudades 
	WHERE Esta_Id = @Esta_id
END
GO
/****** Object:  StoredProcedure [Grl].[SP_CiudadesPorEstados_Seleccionar]    Script Date: 29/04/2024 15:30:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [Grl].[SP_CiudadesPorEstados_Seleccionar]
(
 @Esta_Id VARCHAR(2)
)
AS
BEGIN
    SELECT [Ciud_Id] ,[Ciud_Descripcion], MUN.Esta_Id
	FROM [Grl].[tbCiudades] MUN INNER JOIN [Grl].tbEstados EST ON EST.Esta_Id = MUN.Esta_Id
	WHERE MUN.Esta_Id = @Esta_Id;
END;
GO
/****** Object:  StoredProcedure [Grl].[SP_Estados_Actualizar]    Script Date: 29/04/2024 15:30:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [Grl].[SP_Estados_Actualizar]
    @Esta_Id VARCHAR(2),
    @Esta_Descripcion VARCHAR(40),
    @Pais_Id INT,
    @Esta_UsuarioModificacion INT,
    @Esta_FechaModificacion DATETIME
AS
BEGIN
    BEGIN TRY
        UPDATE Grl.tbEstados
        SET Esta_Descripcion = @Esta_Descripcion,
            Pais_Id = @Pais_Id,
            Esta_UsuarioModificacion = @Esta_UsuarioModificacion,
            Esta_FechaModificacion = @Esta_FechaModificacion
        WHERE Esta_Id = @Esta_Id;
        SELECT 1;
    END TRY
    BEGIN CATCH
        SELECT 0;
    END CATCH
END;
GO
/****** Object:  StoredProcedure [Grl].[SP_Estados_Eliminar]    Script Date: 29/04/2024 15:30:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [Grl].[SP_Estados_Eliminar]
    @Esta_Id VARCHAR(2)
AS
BEGIN
    BEGIN TRY
        DELETE FROM Grl.tbEstados
        WHERE Esta_Id = @Esta_Id;
        SELECT 1;
    END TRY
    BEGIN CATCH
        SELECT 0;
    END CATCH
END;
GO
/****** Object:  StoredProcedure [Grl].[SP_Estados_Insertar]    Script Date: 29/04/2024 15:30:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-----
CREATE PROCEDURE [Grl].[SP_Estados_Insertar]
    @Esta_Id VARCHAR(2),
    @Esta_Descripcion VARCHAR(40),
    @Pais_Id INT,
    @Esta_UsuarioCreacion INT,
    @Esta_FechaCreacion DATETIME
AS
BEGIN
    BEGIN TRY
        INSERT INTO Grl.tbEstados (
            Esta_Id,
            Esta_Descripcion,
            Pais_Id,
            Esta_UsuarioCreacion,
            Esta_FechaCreacion
        )
        VALUES (
            @Esta_Id,
            @Esta_Descripcion,
            @Pais_Id,
            @Esta_UsuarioCreacion,
            @Esta_FechaCreacion
        );
        SELECT 1 AS DATO;
    END TRY
    BEGIN CATCH
        SELECT 0 AS DATO;
    END CATCH
END;


--EXEC [Grl].[SP_Estados_Insertar] '55', 'FFF', 1,1,'01-01-2024'
GO
/****** Object:  StoredProcedure [Grl].[SP_Estados_LlenarEditar]    Script Date: 29/04/2024 15:30:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [Grl].[SP_Estados_LlenarEditar]
    @Esta_Id VARCHAR(2)
AS
BEGIN
    SELECT *
    FROM Grl.tbEstados ES INNER JOIN Grl.tbPaises PA ON PA.Pais_Id = ES.Pais_Id
    WHERE Esta_Id = @Esta_Id
END;
GO
/****** Object:  StoredProcedure [Grl].[SP_Estados_Seleccionar]    Script Date: 29/04/2024 15:30:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [Grl].[SP_Estados_Seleccionar]
@Pais_Id INT
AS
BEGIN
    SELECT Esta_Id, Esta_Descripcion, ES.Pais_Id, Esta_UsuarioCreacion, Esta_FechaCreacion, Esta_UsuarioModificacion, Esta_FechaModificacion, Pais_Descripcion
    FROM Grl.tbEstados ES INNER JOIN Grl.tbPaises PA ON PA.Pais_Id = ES.Pais_Id
	AND ES.Pais_Id = @Pais_Id
END;
GO
/****** Object:  StoredProcedure [Grl].[SP_EstadosCiviles_Actualizar]    Script Date: 29/04/2024 15:30:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

--------

CREATE PROCEDURE [Grl].[SP_EstadosCiviles_Actualizar]
    @Estc_Id INT,
    @Estc_Descripcion VARCHAR(30),
    @Estc_UsuarioModificacion INT,
    @Estc_FechaModificacion DATETIME
AS
BEGIN
    BEGIN TRY
        UPDATE Grl.tbEstadosCiviles
        SET Estc_Descripcion = @Estc_Descripcion,
            Estc_UsuarioModificacion = @Estc_UsuarioModificacion,
            Estc_FechaModificacion = @Estc_FechaModificacion
        WHERE Estc_Id = @Estc_Id;
        SELECT 1;
    END TRY
    BEGIN CATCH
        SELECT 0;
    END CATCH
END;

GO
/****** Object:  StoredProcedure [Grl].[SP_EstadosCiviles_Eliminar]    Script Date: 29/04/2024 15:30:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [Grl].[SP_EstadosCiviles_Eliminar]
    @Estc_Id INT
AS
BEGIN
    BEGIN TRY
        UPDATE Grl.tbEstadosCiviles
        SET Estc_Estado = 0
        WHERE Estc_Id = @Estc_Id;
        SELECT 1;
    END TRY
    BEGIN CATCH
        SELECT 0;
    END CATCH
END;

GO
/****** Object:  StoredProcedure [Grl].[SP_EstadosCiviles_Insertar]    Script Date: 29/04/2024 15:30:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [Grl].[SP_EstadosCiviles_Insertar]
    @Estc_Descripcion VARCHAR(30),
    @Estc_UsuarioCreacion INT,
    @Estc_FechaCreacion DATETIME
AS
BEGIN
    BEGIN TRY
        INSERT INTO Grl.tbEstadosCiviles (
            Estc_Descripcion,
            Estc_UsuarioCreacion,
            Estc_FechaCreacion
        )
        VALUES (
            @Estc_Descripcion,
            @Estc_UsuarioCreacion,
            @Estc_FechaCreacion
        );
        SELECT 1;
    END TRY
    BEGIN CATCH
        SELECT 0;
    END CATCH
END;

GO
/****** Object:  StoredProcedure [Grl].[SP_EstadosCiviles_LlenarEditar]    Script Date: 29/04/2024 15:30:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [Grl].[SP_EstadosCiviles_LlenarEditar]
	@Estc_Id INT
AS
BEGIN
    SELECT *
    FROM Grl.tbEstadosCiviles
    WHERE Estc_Id = @Estc_Id
END;

GO
/****** Object:  StoredProcedure [Grl].[SP_EstadosCiviles_Seleccionar]    Script Date: 29/04/2024 15:30:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [Grl].[SP_EstadosCiviles_Seleccionar]
AS
BEGIN
    SELECT Estc_Id, Estc_Descripcion, Estc_UsuarioCreacion, Estc_FechaCreacion, Estc_UsuarioModificacion, Estc_FechaModificacion, Estc_Estado
    FROM Grl.tbEstadosCiviles
    WHERE Estc_Estado = 1;
END;

GO
/****** Object:  StoredProcedure [Grl].[SP_Monedas_Actualizar]    Script Date: 29/04/2024 15:30:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [Grl].[SP_Monedas_Actualizar]
    @Mone_Id int,
    @Mone_Descripcion varchar(50),
    @Mone_UsuarioModificacion int,
    @Mone_FechaModificacion datetime
AS
BEGIN
    BEGIN TRY
        UPDATE Grl.tbMonedas
        SET
            Mone_Descripcion = @Mone_Descripcion,
            Mone_UsuarioModificacion = @Mone_UsuarioModificacion,
            Mone_FechaModificacion = @Mone_FechaModificacion
        WHERE
            Mone_Id = @Mone_Id;
        SELECT 1;
    END TRY
    BEGIN CATCH
        SELECT 0;
    END CATCH
END;

GO
/****** Object:  StoredProcedure [Grl].[SP_Monedas_Eliminar]    Script Date: 29/04/2024 15:30:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [Grl].[SP_Monedas_Eliminar]
    @Mone_Id int
AS
BEGIN
    BEGIN TRY
        UPDATE Grl.tbMonedas
        SET
            Mone_Estado = 0
        WHERE
            Mone_Id = @Mone_Id;
        SELECT 1;
    END TRY
    BEGIN CATCH
        SELECT 0;
    END CATCH
END;

GO
/****** Object:  StoredProcedure [Grl].[SP_Monedas_Insertar]    Script Date: 29/04/2024 15:30:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [Grl].[SP_Monedas_Insertar]
    @Mone_Descripcion varchar(50),
    @Mone_UsuarioCreacion int,
    @Mone_FechaCreacion datetime
AS
BEGIN
    BEGIN TRY
        INSERT INTO Grl.tbMonedas (
            Mone_Descripcion,
            Mone_UsuarioCreacion,
            Mone_FechaCreacion
        )
        VALUES (
            @Mone_Descripcion,
            @Mone_UsuarioCreacion,
            @Mone_FechaCreacion
        );
        SELECT 1;
    END TRY
    BEGIN CATCH
        SELECT 0;
    END CATCH
END;
GO
/****** Object:  StoredProcedure [Grl].[SP_Monedas_LlenarEditar]    Script Date: 29/04/2024 15:30:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [Grl].[SP_Monedas_LlenarEditar]
	@Mone_Id INT
AS
BEGIN
    SELECT *
    FROM
        Grl.tbMonedas
		WHERE Mone_Id = @Mone_Id
END;
GO
/****** Object:  StoredProcedure [Grl].[SP_Monedas_Seleccionar]    Script Date: 29/04/2024 15:30:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [Grl].[SP_Monedas_Seleccionar]
AS
BEGIN
    SELECT
        Mone_Id,
        Mone_Descripcion,
        Mone_UsuarioCreacion,
        Mone_FechaCreacion,
        Mone_UsuarioModificacion,
        Mone_FechaModificacion,
        Mone_Estado
    FROM
        Grl.tbMonedas
		WHERE Mone_Estado = 1

END;

GO
/****** Object:  StoredProcedure [Grl].[SP_ObtenerPersona_Seleccionar]    Script Date: 29/04/2024 15:30:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [Grl].[SP_ObtenerPersona_Seleccionar]
    @Perso_DNI VARCHAR(50)
AS
BEGIN
    SELECT CONCAT(Perso_Nombre, ' ', Perso_Apellido) Perso_Nombre, Perso_DNI, Perso_Id
    FROM Grl.tbPersonas
    WHERE Perso_DNI = @Perso_DNI
END;
GO
/****** Object:  StoredProcedure [Grl].[SP_Paises_Actualizar]    Script Date: 29/04/2024 15:30:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [Grl].[SP_Paises_Actualizar]
    @Pais_Id INT,
    @Pais_Descripcion VARCHAR(40),
    @Pais_UsuarioModificacion INT,
    @Pais_FechaModificacion DATETIME
AS
BEGIN
    BEGIN TRY
        UPDATE Grl.tbPaises
        SET Pais_Descripcion = @Pais_Descripcion,
            Pais_UsuarioModificacion = @Pais_UsuarioModificacion,
            Pais_FechaModificacion = @Pais_FechaModificacion
        WHERE Pais_Id = @Pais_Id;
        SELECT 1;
    END TRY
    BEGIN CATCH
        SELECT 0;
    END CATCH
END;
GO
/****** Object:  StoredProcedure [Grl].[SP_Paises_Eliminar]    Script Date: 29/04/2024 15:30:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [Grl].[SP_Paises_Eliminar]
    @Pais_Id INT
AS
BEGIN
    BEGIN TRY
        DELETE FROM Grl.tbPaises
        WHERE Pais_Id = @Pais_Id;
        SELECT 1;
    END TRY
    BEGIN CATCH
        SELECT 0;
    END CATCH
END;
GO
/****** Object:  StoredProcedure [Grl].[SP_Paises_Insertar]    Script Date: 29/04/2024 15:30:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


----//

CREATE PROCEDURE [Grl].[SP_Paises_Insertar]
    @Pais_Descripcion VARCHAR(40),
    @Pais_UsuarioCreacion INT,
    @Pais_FechaCreacion DATETIME
AS
BEGIN
    BEGIN TRY
        INSERT INTO Grl.tbPaises (
            Pais_Descripcion,
            Pais_UsuarioCreacion,
            Pais_FechaCreacion
        )
        VALUES (
            @Pais_Descripcion,
            @Pais_UsuarioCreacion,
            @Pais_FechaCreacion
        );
        SELECT 1;
    END TRY
    BEGIN CATCH
        SELECT 0;
    END CATCH
END;
GO
/****** Object:  StoredProcedure [Grl].[SP_Paises_LlenarEditar]    Script Date: 29/04/2024 15:30:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [Grl].[SP_Paises_LlenarEditar]
    @Pais_Id INT
AS
BEGIN
    SELECT *
    FROM Grl.tbPaises
    WHERE Pais_Id = @Pais_Id
END;
GO
/****** Object:  StoredProcedure [Grl].[SP_Paises_Seleccionar]    Script Date: 29/04/2024 15:30:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [Grl].[SP_Paises_Seleccionar]
AS
BEGIN
    SELECT Pais_Id, Pais_Descripcion, Pais_UsuarioCreacion, Pais_FechaCreacion, Pais_UsuarioModificacion, Pais_FechaModificacion
    FROM Grl.tbPaises
END;

GO
/****** Object:  StoredProcedure [Grl].[SP_Personas_Actualizar]    Script Date: 29/04/2024 15:30:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

----------------------------------

CREATE PROCEDURE [Grl].[SP_Personas_Actualizar]
    @Perso_Id INT,
    @Perso_DNI VARCHAR(50),
    @Perso_Nombre VARCHAR(60),
    @Perso_Apellido VARCHAR(60),
	@Perso_Correo varchar(60),
    @Perso_FechaNacimiento DATE,
    @Perso_Sexo CHAR(1),
    @Estc_Id INT,
    @Perso_Direccion VARCHAR(60),
    @Ciud_Id VARCHAR(4),
    @Perso_UsuarioModificacion INT,
    @Perso_FechaModificacion DATETIME
AS
BEGIN
    BEGIN TRY
        UPDATE Grl.tbPersonas
        SET Perso_DNI = @Perso_DNI,
            Perso_Nombre = @Perso_Nombre,
            Perso_Apellido = @Perso_Apellido,
			Perso_Correo = @Perso_Correo,
            Perso_FechaNacimiento = @Perso_FechaNacimiento,
            Perso_Sexo = @Perso_Sexo,
            Estc_Id = @Estc_Id,
            Perso_Direccion = @Perso_Direccion,
            Ciud_Id = @Ciud_Id,
            Perso_UsuarioModificacion = @Perso_UsuarioModificacion,
            Perso_FechaModificacion = @Perso_FechaModificacion
        WHERE Perso_Id = @Perso_Id;
        SELECT 1;
    END TRY
    BEGIN CATCH
        SELECT 0;
    END CATCH
END;
GO
/****** Object:  StoredProcedure [Grl].[SP_Personas_Eliminar]    Script Date: 29/04/2024 15:30:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [Grl].[SP_Personas_Eliminar]
    @Perso_Id INT
AS
BEGIN
    BEGIN TRY
        UPDATE Grl.tbPersonas
        SET Perso_Estado = 0
        WHERE Perso_Id = @Perso_Id;
        SELECT 1;
    END TRY
    BEGIN CATCH
        SELECT 0;
    END CATCH
END;
GO
/****** Object:  StoredProcedure [Grl].[SP_Personas_Insertar]    Script Date: 29/04/2024 15:30:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [Grl].[SP_Personas_Insertar]
    @Perso_DNI VARCHAR(50),
    @Perso_Nombre VARCHAR(60),
    @Perso_Apellido VARCHAR(60),
	@Perso_Correo varchar(60),
    @Perso_FechaNacimiento DATE,
    @Perso_Sexo CHAR(1),
    @Estc_Id INT,
    @Perso_Direccion VARCHAR(60),
    @Ciud_Id VARCHAR(4),
    @Perso_FechaCreacion DATETIME
AS
BEGIN
    BEGIN TRY
        INSERT INTO Grl.tbPersonas (
            Perso_DNI,
            Perso_Nombre,
            Perso_Apellido,
			Perso_Correo,
            Perso_FechaNacimiento,
            Perso_Sexo,
            Estc_Id,
            Perso_Direccion,
            Ciud_Id,
            Perso_FechaCreacion
        )
        VALUES (
            @Perso_DNI,
            @Perso_Nombre,
            @Perso_Apellido,
			@Perso_Correo,
            @Perso_FechaNacimiento,
            @Perso_Sexo,
            @Estc_Id,
            @Perso_Direccion,
            @Ciud_Id,
            @Perso_FechaCreacion
        );
        SELECT 1;
    END TRY
    BEGIN CATCH
        SELECT 0;
    END CATCH
END;
GO
/****** Object:  StoredProcedure [Grl].[SP_Personas_LlenarEditar]    Script Date: 29/04/2024 15:30:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [Grl].[SP_Personas_LlenarEditar]
    @Perso_Id INT
AS
BEGIN
    SELECT *
    FROM Grl.tbPersonas PE inner join grl.tbEstadosCiviles EC on PE.Estc_Id = EC.Estc_Id
	inner join grl.tbCiudades MU on PE.Ciud_id = MU.Ciud_Id
    WHERE Perso_Id = @Perso_Id
END;
GO
/****** Object:  StoredProcedure [Grl].[SP_Personas_Seleccionar]    Script Date: 29/04/2024 15:30:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [Grl].[SP_Personas_Seleccionar]
AS
BEGIN
    SELECT Perso_Id, Perso_DNI, Perso_Nombre, Perso_Apellido, Perso_Correo, Perso_FechaNacimiento, CASE Perso_Sexo WHEN 'F' THEN 'FEMENINO' WHEN 'M' THEN 'MASCULINO' END Perso_Sexo, PE.Estc_Id, Perso_Direccion, PE.Ciud_Id, Perso_UsuarioCreacion, Perso_FechaCreacion, Perso_UsuarioModificacion, Perso_FechaModificacion, Perso_Estado, EC.Estc_Descripcion, MU.Ciud_Descripcion
    FROM Grl.tbPersonas PE inner join grl.tbEstadosCiviles EC on PE.Estc_Id = EC.Estc_Id
	inner join grl.tbCiudades MU on PE.Ciud_id = MU.Ciud_Id
    WHERE Perso_Estado = 1 AND Perso_Id != 2;
END;
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = -4896
         Left = -2016
      End
      Begin Tables = 
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'Gas', @level1type=N'VIEW',@level1name=N'VW_Registros_Total'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'Gas', @level1type=N'VIEW',@level1name=N'VW_Registros_Total'
GO
USE [master]
GO
ALTER DATABASE [DB_SistemaGastos] SET  READ_WRITE 
GO
