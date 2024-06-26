USE [master]
GO
/****** Object:  Database [DBSistema_GestionReportes]    Script Date: 15/4/2024 09:11:51 ******/
CREATE DATABASE [DBSistema_GestionReportes]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'DBSistema_GestionReportes_Data', FILENAME = N'c:\dzsqls\DBSistema_GestionReportes.mdf' , SIZE = 8192KB , MAXSIZE = 30720KB , FILEGROWTH = 22528KB )
 LOG ON 
( NAME = N'DBSistema_GestionReportes_Logs', FILENAME = N'c:\dzsqls\DBSistema_GestionReportes.ldf' , SIZE = 8192KB , MAXSIZE = 30720KB , FILEGROWTH = 22528KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [DBSistema_GestionReportes] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [DBSistema_GestionReportes].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [DBSistema_GestionReportes] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [DBSistema_GestionReportes] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [DBSistema_GestionReportes] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [DBSistema_GestionReportes] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [DBSistema_GestionReportes] SET ARITHABORT OFF 
GO
ALTER DATABASE [DBSistema_GestionReportes] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [DBSistema_GestionReportes] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [DBSistema_GestionReportes] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [DBSistema_GestionReportes] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [DBSistema_GestionReportes] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [DBSistema_GestionReportes] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [DBSistema_GestionReportes] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [DBSistema_GestionReportes] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [DBSistema_GestionReportes] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [DBSistema_GestionReportes] SET  ENABLE_BROKER 
GO
ALTER DATABASE [DBSistema_GestionReportes] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [DBSistema_GestionReportes] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [DBSistema_GestionReportes] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [DBSistema_GestionReportes] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [DBSistema_GestionReportes] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [DBSistema_GestionReportes] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [DBSistema_GestionReportes] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [DBSistema_GestionReportes] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [DBSistema_GestionReportes] SET  MULTI_USER 
GO
ALTER DATABASE [DBSistema_GestionReportes] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [DBSistema_GestionReportes] SET DB_CHAINING OFF 
GO
ALTER DATABASE [DBSistema_GestionReportes] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [DBSistema_GestionReportes] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [DBSistema_GestionReportes] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [DBSistema_GestionReportes] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [DBSistema_GestionReportes] SET QUERY_STORE = OFF
GO
USE [DBSistema_GestionReportes]
GO
/****** Object:  User [seucedaa_SQLLogin_1]    Script Date: 15/4/2024 09:11:52 ******/
CREATE USER [seucedaa_SQLLogin_1] FOR LOGIN [seucedaa_SQLLogin_1] WITH DEFAULT_SCHEMA=[dbo]
GO
ALTER ROLE [db_owner] ADD MEMBER [seucedaa_SQLLogin_1]
GO
/****** Object:  Schema [Accs]    Script Date: 15/4/2024 09:11:52 ******/
CREATE SCHEMA [Accs]
GO
/****** Object:  Schema [Gral]    Script Date: 15/4/2024 09:11:52 ******/
CREATE SCHEMA [Gral]
GO
/****** Object:  Schema [Rpts]    Script Date: 15/4/2024 09:11:52 ******/
CREATE SCHEMA [Rpts]
GO
/****** Object:  Schema [seucedaa_SQLLogin_1]    Script Date: 15/4/2024 09:11:52 ******/
CREATE SCHEMA [seucedaa_SQLLogin_1]
GO
/****** Object:  Table [Gral].[tbColonias]    Script Date: 15/4/2024 09:11:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Gral].[tbColonias](
	[Colo_Id] [int] IDENTITY(1,1) NOT NULL,
	[Colo_Colonia] [varchar](50) NULL,
	[Muni_Id] [varchar](4) NULL,
	[Colo_UsuarioCreacion] [int] NULL,
	[Colo_FechaCreacion] [datetime] NULL,
	[Colo_UsuarioModificacion] [int] NULL,
	[Colo_FechaModificacion] [datetime] NULL,
	[Colo_Estado] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[Colo_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [Rpts].[tbAccidentes]    Script Date: 15/4/2024 09:11:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Rpts].[tbAccidentes](
	[Acci_Id] [int] IDENTITY(1,1) NOT NULL,
	[Acci_Accidente] [varchar](50) NULL,
	[Acci_UsuarioCreacion] [int] NULL,
	[Acci_FechaCreacion] [datetime] NULL,
	[Acci_UsuarioModificacion] [int] NULL,
	[Acci_FechaModificacion] [datetime] NULL,
	[Acci_Estado] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[Acci_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [Rpts].[tbDesastres]    Script Date: 15/4/2024 09:11:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Rpts].[tbDesastres](
	[Desa_Id] [int] IDENTITY(1,1) NOT NULL,
	[Desa_Desastre] [varchar](50) NULL,
	[Desa_UsuarioCreacion] [int] NULL,
	[Desa_FechaCreacion] [datetime] NULL,
	[Desa_UsuarioModificacion] [int] NULL,
	[Desa_FechaModificacion] [datetime] NULL,
	[Desa_Estado] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[Desa_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [Rpts].[tbEmergencias]    Script Date: 15/4/2024 09:11:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Rpts].[tbEmergencias](
	[Emer_Id] [int] IDENTITY(1,1) NOT NULL,
	[Emer_Emergencia] [varchar](50) NULL,
	[Emer_UsuarioCreacion] [int] NULL,
	[Emer_FechaCreacion] [datetime] NULL,
	[Emer_UsuarioModificacion] [int] NULL,
	[Emer_FechaModificacion] [datetime] NULL,
	[Emer_Estado] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[Emer_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [Rpts].[tbReportesPorDesastres]    Script Date: 15/4/2024 09:11:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Rpts].[tbReportesPorDesastres](
	[ReDe_Id] [int] IDENTITY(1,1) NOT NULL,
	[ReDe_DNI] [varchar](15) NULL,
	[ReDe_Descripcion] [varchar](max) NULL,
	[ReDe_Fecha] [datetime] NULL,
	[ReDe_EstadoReporte] [bit] NULL,
	[Desa_Id] [int] NULL,
	[ReDe_UsuarioCreacion] [int] NULL,
	[ReDe_FechaCreacion] [datetime] NULL,
	[ReDe_UsuarioModificacion] [int] NULL,
	[ReDe_FechaModificacion] [datetime] NULL,
	[ReDe_Estado] [bit] NULL,
	[Repo_Difo_Id] [int] NULL,
	[Repo_Otros] [varchar](60) NULL,
PRIMARY KEY CLUSTERED 
(
	[ReDe_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [Rpts].[tbReportes]    Script Date: 15/4/2024 09:11:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Rpts].[tbReportes](
	[Repo_Id] [int] IDENTITY(1,1) NOT NULL,
	[Repo_DNI] [varchar](15) NULL,
	[Repo_Descripcion] [varchar](max) NULL,
	[Repo_Fecha] [datetime] NULL,
	[Repo_EstadoReporte] [bit] NULL,
	[AcEm_Id] [int] NULL,
	[Colo_Id] [int] NULL,
	[Repo_UsuarioCreacion] [int] NULL,
	[Repo_FechaCreacion] [datetime] NULL,
	[Repo_UsuarioModificacion] [int] NULL,
	[Repo_FechaModificacion] [datetime] NULL,
	[Repo_Estado] [bit] NULL,
	[Repo_Difo_Id] [int] NULL,
	[Repo_Otros] [varchar](60) NULL,
PRIMARY KEY CLUSTERED 
(
	[Repo_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  View [Rpts].[VW_Reportes_Mostrar]    Script Date: 15/4/2024 09:11:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE VIEW [Rpts].[VW_Reportes_Mostrar]
AS

    SELECT

        ROW_NUMBER() OVER(
       ORDER BY r.Repo_Id) AS Repo_Id, 
        COALESCE(r.Repo_DNI,rd.ReDe_DNI) AS Repo_DNI ,
		COALESCE(r.Repo_Descripcion,rd.ReDe_Descripcion) AS Repo_Descripcion,
		COALESCE(r.Repo_Fecha,rd.ReDe_Fecha) AS Repo_Fecha,
		COALESCE(r.Repo_Difo_Id,rd.Repo_Difo_Id) AS Repo_Difo_Id,
		COALESCE(ac.Acci_Accidente, em.Emer_Emergencia, des.Desa_Desastre) AS Evento,
        COALESCE(r.Repo_EstadoReporte,rd.ReDe_EstadoReporte) AS Repo_EstadoReporte,
		COALESCE(co.Colo_Id, Null) AS Colo_Id,
		COALESCE(co.Colo_Colonia, Null) AS Colo_Id_O_Desastre,
		COALESCE(r.Repo_UsuarioCreacion,rd.ReDe_UsuarioCreacion) AS Repo_UsuarioCreacion,
		COALESCE(r.Repo_FechaCreacion,rd.ReDe_FechaCreacion) AS Repo_FechaCreacion,
		COALESCE(r.Repo_UsuarioModificacion,rd.ReDe_UsuarioModificacion) AS Repo_UsuarioModificacion,
        COALESCE(r.Repo_FechaModificacion,rd.ReDe_FechaModificacion) AS Repo_FechaModificacion,
		COALESCE(r.Repo_Estado,rd.ReDe_Estado) AS Repo_Estado
      
       
    FROM
        [Rpts].[tbReportes] r
        FULL OUTER JOIN [Rpts].[tbReportesPorDesastres] rd ON r.Repo_Difo_Id = rd.Repo_Difo_Id
        LEFT JOIN [Rpts].[tbAccidentes] ac ON r.Repo_Difo_Id = 1 AND r.AcEm_Id = ac.Acci_Id
        LEFT JOIN [Rpts].[tbEmergencias] em ON r.Repo_Difo_Id = 2 AND r.AcEm_Id = em.Emer_Id
        LEFT JOIN [Rpts].[tbDesastres] des ON rd.Desa_Id = des.Desa_Id
		LEFT JOIN [Gral].[tbColonias] co on r.Colo_Id = co.Colo_Id
    WHERE
        r.Repo_Difo_Id = 1 OR r.Repo_Difo_Id = 2 OR rd.Desa_Id IS NOT NULL

GO
/****** Object:  View [Rpts].[VW_Reportes_MostrarS]    Script Date: 15/4/2024 09:11:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [Rpts].[VW_Reportes_MostrarS]
AS

    SELECT

        ROW_NUMBER() OVER(
       ORDER BY r.Repo_Id) AS Repo_Id, 
        COALESCE(r.Repo_DNI,rd.ReDe_DNI) AS Repo_DNI ,
		COALESCE(r.Repo_Descripcion,rd.ReDe_Descripcion) AS Repo_Descripcion,
		COALESCE(r.Repo_Fecha,rd.ReDe_Fecha) AS Repo_Fecha,
		COALESCE(r.Repo_Difo_Id,rd.Repo_Difo_Id) AS tipo_id,
		COALESCE(ac.Acci_Id, em.Emer_Id, des.Desa_Id) AS Evento,
        COALESCE(r.Repo_EstadoReporte,rd.ReDe_EstadoReporte) AS Repo_EstadoReporte,
		COALESCE(co.Colo_Id, Null) AS Colo_Id,
		COALESCE(co.Colo_Colonia, Null) AS Colo_Id_O_Desastre,
		COALESCE(r.Repo_UsuarioCreacion,rd.ReDe_UsuarioCreacion) AS Repo_UsuarioCreacion,
		COALESCE(r.Repo_FechaCreacion,rd.ReDe_FechaCreacion) AS Repo_FechaCreacion,
		COALESCE(r.Repo_UsuarioModificacion,rd.ReDe_UsuarioModificacion) AS Repo_UsuarioModificacion,
        COALESCE(r.Repo_FechaModificacion,rd.ReDe_FechaModificacion) AS Repo_FechaModificacion,
		COALESCE(r.Repo_Estado,rd.ReDe_Estado) AS Repo_Estado
      
       
    FROM
        [Rpts].[tbReportes] r
        FULL OUTER JOIN [Rpts].[tbReportesPorDesastres] rd ON r.Repo_Difo_Id = rd.Repo_Difo_Id
        LEFT JOIN [Rpts].[tbAccidentes] ac ON r.Repo_Difo_Id = 1 AND r.AcEm_Id = ac.Acci_Id
        LEFT JOIN [Rpts].[tbEmergencias] em ON r.Repo_Difo_Id = 2 AND r.AcEm_Id = em.Emer_Id
        LEFT JOIN [Rpts].[tbDesastres] des ON rd.Desa_Id = des.Desa_Id
		LEFT JOIN [Gral].[tbColonias] co on r.Colo_Id = co.Colo_Id
    WHERE
        r.Repo_Difo_Id = 1 OR r.Repo_Difo_Id = 2 OR rd.Desa_Id IS NOT NULL

GO
/****** Object:  Table [Gral].[tbDepartamentos]    Script Date: 15/4/2024 09:11:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Gral].[tbDepartamentos](
	[Dept_Id] [varchar](2) NOT NULL,
	[Dept_Departamento] [varchar](50) NULL,
	[Dept_UsuarioCreacion] [int] NULL,
	[Dept_FechaCreacion] [datetime] NULL,
	[Dept_UsuarioModificacion] [int] NULL,
	[Dept_FechaModificacion] [datetime] NULL,
	[Dept_Estado] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[Dept_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [Gral].[tbMunicipios]    Script Date: 15/4/2024 09:11:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Gral].[tbMunicipios](
	[Muni_Id] [varchar](4) NOT NULL,
	[Muni_Municipio] [varchar](50) NULL,
	[Dept_Id] [varchar](2) NULL,
	[Muni_UsuarioCreacion] [int] NULL,
	[Muni_FechaCreacion] [datetime] NULL,
	[Muni_UsuarioModificacion] [int] NULL,
	[Muni_FechaModificacion] [datetime] NULL,
	[Muni_Estado] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[Muni_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [Gral].[tbPersonas]    Script Date: 15/4/2024 09:11:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Gral].[tbPersonas](
	[Pers_Id] [int] IDENTITY(1,1) NOT NULL,
	[Pers_DNI] [varchar](15) NULL,
	[Pers_Nombres] [varchar](50) NULL,
	[Pers_Apellidos] [varchar](50) NULL,
	[Pers_Sexo] [char](1) NULL,
	[Pers_DireccionExacta] [varchar](100) NULL,
	[Esta_Id] [int] NULL,
	[Colo_Id] [int] NULL,
	[Pers_UsuarioCreacion] [int] NULL,
	[Pers_FechaCreacion] [datetime] NULL,
	[Pers_UsuarioModificacion] [int] NULL,
	[Pers_FechaModificacion] [datetime] NULL,
	[Pers_Estado] [bit] NULL,
	[Pers_FechaNacimiento] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[Pers_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [Accs].[tbUsuarios]    Script Date: 15/4/2024 09:11:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Accs].[tbUsuarios](
	[Usua_Id] [int] IDENTITY(1,1) NOT NULL,
	[Usua_Usuario] [varchar](15) NULL,
	[Usua_Contrasena] [varchar](max) NULL,
	[Rol_Id] [int] NULL,
	[Usua_UsuarioCreacion] [int] NULL,
	[Usua_FechaCreacion] [datetime] NULL,
	[Usua_UsuarioModificacion] [int] NULL,
	[Usua_FechaModificacion] [datetime] NULL,
	[Usua_Estado] [bit] NULL,
	[Pers_Id] [int] NULL,
	[Usua_Administrador] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Usua_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  View [Rpts].[VW_Reportes_MostrarID]    Script Date: 15/4/2024 09:11:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [Rpts].[VW_Reportes_MostrarID]
AS
SELECT        
ROW_NUMBER() OVER (ORDER BY r.Repo_Fecha DESC) AS Repo_Id, COALESCE (r.Repo_Id, rd.ReDe_Id) AS id, COALESCE (r.Repo_DNI, rd.ReDe_DNI) AS Repo_DNI, COALESCE (r.Repo_Descripcion, rd.ReDe_Descripcion) 
AS Repo_Descripcion, COALESCE (r.Repo_Fecha, rd.ReDe_Fecha) AS Repo_Fecha,COALESCE(pe.Pers_Nombres,pd.Pers_Nombres) AS Pers_Nombres, COALESCE (r.Repo_Otros, rd.Repo_Otros) AS Repo_Otros, COALESCE (r.Repo_Difo_Id, rd.Repo_Difo_Id) AS tipo_id,COALESCE(r.Repo_Difo_Id,rd.Repo_Difo_Id) AS Repo_Difo_Id,
		   CASE 
            WHEN r.Repo_Difo_Id = 1 THEN 'Accidente'
            WHEN r.Repo_Difo_Id = 2 THEN 'Emergencia'
            ELSE 'Desastre' 
        END AS TipoEvento, COALESCE (ac.Acci_Id, em.Emer_Id, 
des.Desa_Id) AS tipo, COALESCE (r.Repo_EstadoReporte, rd.ReDe_EstadoReporte) AS Repo_EstadoReporte, CASE 
            WHEN r.Repo_EstadoReporte = 1 THEN 'Activo'
            WHEN r.Repo_EstadoReporte = 0 THEN 'Finalizado'
			WHEN rd.ReDe_EstadoReporte= 1 THEN 'Activo'
			WHEN rd.ReDe_EstadoReporte = 0 THEN 'Finalizado'
        END AS ReporteFinalizado, COALESCE (co.Colo_Id, NULL) AS Colo_Id, COALESCE (co.Colo_Colonia, NULL) AS Colo_Id_O_Desastre, 
COALESCE (ReUsuarioCreacion.Usua_Usuario, RdUsuarioCreacion.Usua_Usuario) AS UsuarioCreacion, COALESCE (r.Repo_FechaCreacion, rd.ReDe_FechaCreacion) AS Repo_FechaCreacion,
COALESCE (CASE WHEN ReUsuarioModificacion.Usua_Id = r.Repo_UsuarioModificacion THEN  ReUsuarioModificacion.Usua_Usuario ELSE 'No se ha modificado' END ,
CASE WHEN RdUsuarioModificacion.Usua_Id = rd.ReDe_UsuarioModificacion THEN  RdUsuarioModificacion.Usua_Usuario ELSE 'No se ha modificado' END ) AS UsuarioModificacion, COALESCE (r.Repo_FechaModificacion, rd.ReDe_FechaModificacion) AS Repo_FechaModificacion, COALESCE (r.Repo_Estado, rd.ReDe_Estado) AS Repo_Estado, 
de.Dept_Id AS Dept_Id, mu.Muni_Id AS muni_id
FROM            [Rpts].[tbReportes] r FULL OUTER JOIN
                         [Rpts].[tbReportesPorDesastres] rd ON r.Repo_Difo_Id = rd.Repo_Difo_Id LEFT JOIN
                         [Rpts].[tbAccidentes] ac ON r.Repo_Difo_Id = 1 AND r.AcEm_Id = ac.Acci_Id LEFT JOIN
                         [Rpts].[tbEmergencias] em ON r.Repo_Difo_Id = 2 AND r.AcEm_Id = em.Emer_Id LEFT JOIN
                         [Rpts].[tbDesastres] des ON rd.Desa_Id = des.Desa_Id LEFT JOIN
                         [Gral].[tbColonias] co ON r.Colo_Id = co.Colo_Id LEFT JOIN
                         [Gral].[tbMunicipios] mu ON co.Muni_Id = mu.Muni_Id LEFT JOIN
                         [Gral].[tbDepartamentos] de ON mu.Dept_Id = de.Dept_Id
						 LEFT JOIN Gral.tbPersonas pe on pe.Pers_DNI = r.Repo_DNI
						 LEFT JOIN Gral.tbPersonas pd on pd.Pers_DNI = rd.ReDe_DNI
						 LEFT JOIN Accs.tbUsuarios ReUsuarioCreacion on ReUsuarioCreacion.Usua_Id = r.Repo_UsuarioCreacion
						 LEFT JOIN Accs.tbUsuarios RdUsuarioCreacion on RdUsuarioCreacion.Usua_Id = rd.ReDe_UsuarioCreacion
						 LEFT JOIN Accs.tbUsuarios ReUsuarioModificacion on ReUsuarioModificacion.Usua_Id = r.Repo_UsuarioModificacion
						 LEFT JOIN Accs.tbUsuarios RdUsuarioModificacion on RdUsuarioModificacion.Usua_Id = rd.ReDe_UsuarioModificacion
WHERE        r.Repo_Difo_Id = 1 OR
                         r.Repo_Difo_Id = 2 OR
                         rd.Desa_Id IS NOT NULL
GO
/****** Object:  Table [Accs].[tbPantallas]    Script Date: 15/4/2024 09:11:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Accs].[tbPantallas](
	[Pant_Id] [int] IDENTITY(1,1) NOT NULL,
	[Pant_Descripcion] [varchar](40) NULL,
	[Pant_UsuarioCreacion] [int] NULL,
	[Pant_FechaCreacion] [datetime] NULL,
	[Pant_UsuarioModificacion] [int] NULL,
	[Pant_FechaModificacion] [datetime] NULL,
	[Pant_Estado] [bit] NULL,
	[Pant_Esquema] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Pant_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [Accs].[tbPantallasPorRoles]    Script Date: 15/4/2024 09:11:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Accs].[tbPantallasPorRoles](
	[PaRo_Id] [int] IDENTITY(1,1) NOT NULL,
	[Pant_Id] [int] NULL,
	[Rol_Id] [int] NULL,
	[PaRo_UsuarioCreacion] [int] NULL,
	[PaRo_FechaCreacion] [datetime] NULL,
	[PaRo_UsuarioModificacion] [int] NULL,
	[PaRo_FechaModificacion] [datetime] NULL,
	[PaRo_Estado] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[PaRo_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [Accs].[tbRoles]    Script Date: 15/4/2024 09:11:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Accs].[tbRoles](
	[Rol_Id] [int] IDENTITY(1,1) NOT NULL,
	[Rol_Rol] [varchar](50) NOT NULL,
	[Rol_UsuarioCreacion] [int] NULL,
	[Rol_FechaCreacion] [datetime] NULL,
	[Rol_UsuarioModificacion] [int] NULL,
	[Rol_FechaModificacion] [datetime] NULL,
	[Rol_Estado] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[Rol_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [Gral].[tbEstadosCiviles]    Script Date: 15/4/2024 09:11:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Gral].[tbEstadosCiviles](
	[Esta_Id] [int] IDENTITY(1,1) NOT NULL,
	[Esta_EstadoCivil] [varchar](20) NULL,
	[Esta_UsuarioCreacion] [int] NULL,
	[Esta_FechaCreacion] [datetime] NULL,
	[Esta_UsuarioModificacion] [int] NULL,
	[Esta_FechaModificacion] [datetime] NULL,
	[Esta_Estado] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[Esta_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [Rpts].[tbImagenesPorReportes]    Script Date: 15/4/2024 09:11:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Rpts].[tbImagenesPorReportes](
	[ImRe_Id] [int] IDENTITY(1,1) NOT NULL,
	[Repo_Id] [int] NULL,
	[ImRe_Imagen] [varchar](max) NULL,
	[ImRe_Difo] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[ImRe_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [Rpts].[tbImagenesPorReportesDesastres]    Script Date: 15/4/2024 09:11:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Rpts].[tbImagenesPorReportesDesastres](
	[ImRD_Id] [int] IDENTITY(1,1) NOT NULL,
	[ReDe_Id] [int] NULL,
	[ImRD_Imagen] [varchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[ImRD_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [Rpts].[tbMunicipiosPorReportes]    Script Date: 15/4/2024 09:11:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Rpts].[tbMunicipiosPorReportes](
	[MuRe_Id] [int] IDENTITY(1,1) NOT NULL,
	[Muni_Id] [varchar](4) NULL,
	[ReDe_Id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[MuRe_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [Rpts].[tbPersonasPorReportes]    Script Date: 15/4/2024 09:11:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Rpts].[tbPersonasPorReportes](
	[PeRe_Id] [int] IDENTITY(1,1) NOT NULL,
	[Pers_Id] [int] NULL,
	[Repo_Id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[PeRe_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [Accs].[tbPantallas] ON 

INSERT [Accs].[tbPantallas] ([Pant_Id], [Pant_Descripcion], [Pant_UsuarioCreacion], [Pant_FechaCreacion], [Pant_UsuarioModificacion], [Pant_FechaModificacion], [Pant_Estado], [Pant_Esquema]) VALUES (1, N'Usuarios', NULL, NULL, NULL, NULL, 1, 1)
INSERT [Accs].[tbPantallas] ([Pant_Id], [Pant_Descripcion], [Pant_UsuarioCreacion], [Pant_FechaCreacion], [Pant_UsuarioModificacion], [Pant_FechaModificacion], [Pant_Estado], [Pant_Esquema]) VALUES (2, N'Roles', NULL, NULL, NULL, NULL, 1, 1)
INSERT [Accs].[tbPantallas] ([Pant_Id], [Pant_Descripcion], [Pant_UsuarioCreacion], [Pant_FechaCreacion], [Pant_UsuarioModificacion], [Pant_FechaModificacion], [Pant_Estado], [Pant_Esquema]) VALUES (3, N'Colonias', NULL, NULL, NULL, NULL, 1, 2)
INSERT [Accs].[tbPantallas] ([Pant_Id], [Pant_Descripcion], [Pant_UsuarioCreacion], [Pant_FechaCreacion], [Pant_UsuarioModificacion], [Pant_FechaModificacion], [Pant_Estado], [Pant_Esquema]) VALUES (4, N'Departamentos', NULL, NULL, NULL, NULL, 1, 2)
INSERT [Accs].[tbPantallas] ([Pant_Id], [Pant_Descripcion], [Pant_UsuarioCreacion], [Pant_FechaCreacion], [Pant_UsuarioModificacion], [Pant_FechaModificacion], [Pant_Estado], [Pant_Esquema]) VALUES (5, N'Estados Civiles', NULL, NULL, NULL, NULL, 1, 2)
INSERT [Accs].[tbPantallas] ([Pant_Id], [Pant_Descripcion], [Pant_UsuarioCreacion], [Pant_FechaCreacion], [Pant_UsuarioModificacion], [Pant_FechaModificacion], [Pant_Estado], [Pant_Esquema]) VALUES (6, N'Municipios', NULL, NULL, NULL, NULL, 1, 2)
INSERT [Accs].[tbPantallas] ([Pant_Id], [Pant_Descripcion], [Pant_UsuarioCreacion], [Pant_FechaCreacion], [Pant_UsuarioModificacion], [Pant_FechaModificacion], [Pant_Estado], [Pant_Esquema]) VALUES (7, N'Personas', NULL, NULL, NULL, NULL, 1, 2)
INSERT [Accs].[tbPantallas] ([Pant_Id], [Pant_Descripcion], [Pant_UsuarioCreacion], [Pant_FechaCreacion], [Pant_UsuarioModificacion], [Pant_FechaModificacion], [Pant_Estado], [Pant_Esquema]) VALUES (8, N'Accidentes', NULL, NULL, NULL, NULL, 1, 3)
INSERT [Accs].[tbPantallas] ([Pant_Id], [Pant_Descripcion], [Pant_UsuarioCreacion], [Pant_FechaCreacion], [Pant_UsuarioModificacion], [Pant_FechaModificacion], [Pant_Estado], [Pant_Esquema]) VALUES (9, N'Desastres', NULL, NULL, NULL, NULL, 1, 3)
INSERT [Accs].[tbPantallas] ([Pant_Id], [Pant_Descripcion], [Pant_UsuarioCreacion], [Pant_FechaCreacion], [Pant_UsuarioModificacion], [Pant_FechaModificacion], [Pant_Estado], [Pant_Esquema]) VALUES (10, N'Emergencias', NULL, NULL, NULL, NULL, 1, 3)
INSERT [Accs].[tbPantallas] ([Pant_Id], [Pant_Descripcion], [Pant_UsuarioCreacion], [Pant_FechaCreacion], [Pant_UsuarioModificacion], [Pant_FechaModificacion], [Pant_Estado], [Pant_Esquema]) VALUES (11, N'Reportes', NULL, NULL, NULL, NULL, 1, 3)
SET IDENTITY_INSERT [Accs].[tbPantallas] OFF
GO
SET IDENTITY_INSERT [Accs].[tbPantallasPorRoles] ON 

INSERT [Accs].[tbPantallasPorRoles] ([PaRo_Id], [Pant_Id], [Rol_Id], [PaRo_UsuarioCreacion], [PaRo_FechaCreacion], [PaRo_UsuarioModificacion], [PaRo_FechaModificacion], [PaRo_Estado]) VALUES (1, 2, 2, NULL, NULL, NULL, NULL, 1)
INSERT [Accs].[tbPantallasPorRoles] ([PaRo_Id], [Pant_Id], [Rol_Id], [PaRo_UsuarioCreacion], [PaRo_FechaCreacion], [PaRo_UsuarioModificacion], [PaRo_FechaModificacion], [PaRo_Estado]) VALUES (7, 5, 1, 1, CAST(N'2024-04-09T22:21:55.210' AS DateTime), NULL, NULL, 1)
INSERT [Accs].[tbPantallasPorRoles] ([PaRo_Id], [Pant_Id], [Rol_Id], [PaRo_UsuarioCreacion], [PaRo_FechaCreacion], [PaRo_UsuarioModificacion], [PaRo_FechaModificacion], [PaRo_Estado]) VALUES (8, 4, 3, 1, CAST(N'2024-04-09T22:51:11.777' AS DateTime), NULL, NULL, 1)
INSERT [Accs].[tbPantallasPorRoles] ([PaRo_Id], [Pant_Id], [Rol_Id], [PaRo_UsuarioCreacion], [PaRo_FechaCreacion], [PaRo_UsuarioModificacion], [PaRo_FechaModificacion], [PaRo_Estado]) VALUES (9, 1, 4, 1, CAST(N'2024-04-09T22:52:41.480' AS DateTime), NULL, NULL, 1)
INSERT [Accs].[tbPantallasPorRoles] ([PaRo_Id], [Pant_Id], [Rol_Id], [PaRo_UsuarioCreacion], [PaRo_FechaCreacion], [PaRo_UsuarioModificacion], [PaRo_FechaModificacion], [PaRo_Estado]) VALUES (225, 1, 5, 1, CAST(N'2024-04-12T01:14:44.920' AS DateTime), NULL, NULL, 1)
INSERT [Accs].[tbPantallasPorRoles] ([PaRo_Id], [Pant_Id], [Rol_Id], [PaRo_UsuarioCreacion], [PaRo_FechaCreacion], [PaRo_UsuarioModificacion], [PaRo_FechaModificacion], [PaRo_Estado]) VALUES (226, 3, 1, 1, CAST(N'2024-04-12T01:15:05.327' AS DateTime), NULL, NULL, 1)
INSERT [Accs].[tbPantallasPorRoles] ([PaRo_Id], [Pant_Id], [Rol_Id], [PaRo_UsuarioCreacion], [PaRo_FechaCreacion], [PaRo_UsuarioModificacion], [PaRo_FechaModificacion], [PaRo_Estado]) VALUES (227, 1, 2, 1, CAST(N'2024-04-12T01:15:54.657' AS DateTime), NULL, NULL, 1)
INSERT [Accs].[tbPantallasPorRoles] ([PaRo_Id], [Pant_Id], [Rol_Id], [PaRo_UsuarioCreacion], [PaRo_FechaCreacion], [PaRo_UsuarioModificacion], [PaRo_FechaModificacion], [PaRo_Estado]) VALUES (228, 10, 3, 1, CAST(N'2024-04-12T01:15:54.657' AS DateTime), NULL, NULL, 1)
INSERT [Accs].[tbPantallasPorRoles] ([PaRo_Id], [Pant_Id], [Rol_Id], [PaRo_UsuarioCreacion], [PaRo_FechaCreacion], [PaRo_UsuarioModificacion], [PaRo_FechaModificacion], [PaRo_Estado]) VALUES (229, 11, 4, 1, CAST(N'2024-04-12T01:15:54.657' AS DateTime), NULL, NULL, 1)
INSERT [Accs].[tbPantallasPorRoles] ([PaRo_Id], [Pant_Id], [Rol_Id], [PaRo_UsuarioCreacion], [PaRo_FechaCreacion], [PaRo_UsuarioModificacion], [PaRo_FechaModificacion], [PaRo_Estado]) VALUES (230, 3, 5, 1, CAST(N'2024-04-12T01:15:54.657' AS DateTime), NULL, NULL, 1)
INSERT [Accs].[tbPantallasPorRoles] ([PaRo_Id], [Pant_Id], [Rol_Id], [PaRo_UsuarioCreacion], [PaRo_FechaCreacion], [PaRo_UsuarioModificacion], [PaRo_FechaModificacion], [PaRo_Estado]) VALUES (231, 4, 1, 1, CAST(N'2024-04-12T01:15:54.657' AS DateTime), NULL, NULL, 1)
INSERT [Accs].[tbPantallasPorRoles] ([PaRo_Id], [Pant_Id], [Rol_Id], [PaRo_UsuarioCreacion], [PaRo_FechaCreacion], [PaRo_UsuarioModificacion], [PaRo_FechaModificacion], [PaRo_Estado]) VALUES (232, 5, 2, 1, CAST(N'2024-04-12T01:15:54.657' AS DateTime), NULL, NULL, 1)
INSERT [Accs].[tbPantallasPorRoles] ([PaRo_Id], [Pant_Id], [Rol_Id], [PaRo_UsuarioCreacion], [PaRo_FechaCreacion], [PaRo_UsuarioModificacion], [PaRo_FechaModificacion], [PaRo_Estado]) VALUES (233, 6, 3, 1, CAST(N'2024-04-12T01:15:54.657' AS DateTime), NULL, NULL, 1)
INSERT [Accs].[tbPantallasPorRoles] ([PaRo_Id], [Pant_Id], [Rol_Id], [PaRo_UsuarioCreacion], [PaRo_FechaCreacion], [PaRo_UsuarioModificacion], [PaRo_FechaModificacion], [PaRo_Estado]) VALUES (234, 7, 4, 1, CAST(N'2024-04-12T01:15:54.657' AS DateTime), NULL, NULL, 1)
INSERT [Accs].[tbPantallasPorRoles] ([PaRo_Id], [Pant_Id], [Rol_Id], [PaRo_UsuarioCreacion], [PaRo_FechaCreacion], [PaRo_UsuarioModificacion], [PaRo_FechaModificacion], [PaRo_Estado]) VALUES (235, 8, 5, 1, CAST(N'2024-04-12T01:15:54.657' AS DateTime), NULL, NULL, 1)
INSERT [Accs].[tbPantallasPorRoles] ([PaRo_Id], [Pant_Id], [Rol_Id], [PaRo_UsuarioCreacion], [PaRo_FechaCreacion], [PaRo_UsuarioModificacion], [PaRo_FechaModificacion], [PaRo_Estado]) VALUES (236, 9, 1, 1, CAST(N'2024-04-12T01:15:54.657' AS DateTime), NULL, NULL, 1)
INSERT [Accs].[tbPantallasPorRoles] ([PaRo_Id], [Pant_Id], [Rol_Id], [PaRo_UsuarioCreacion], [PaRo_FechaCreacion], [PaRo_UsuarioModificacion], [PaRo_FechaModificacion], [PaRo_Estado]) VALUES (237, 1, 2, 1, CAST(N'2024-04-12T01:18:10.977' AS DateTime), NULL, NULL, 1)
INSERT [Accs].[tbPantallasPorRoles] ([PaRo_Id], [Pant_Id], [Rol_Id], [PaRo_UsuarioCreacion], [PaRo_FechaCreacion], [PaRo_UsuarioModificacion], [PaRo_FechaModificacion], [PaRo_Estado]) VALUES (238, 2, 3, 1, CAST(N'2024-04-12T01:18:10.977' AS DateTime), NULL, NULL, 1)
INSERT [Accs].[tbPantallasPorRoles] ([PaRo_Id], [Pant_Id], [Rol_Id], [PaRo_UsuarioCreacion], [PaRo_FechaCreacion], [PaRo_UsuarioModificacion], [PaRo_FechaModificacion], [PaRo_Estado]) VALUES (239, 3, 4, 1, CAST(N'2024-04-12T01:18:53.403' AS DateTime), NULL, NULL, 1)
INSERT [Accs].[tbPantallasPorRoles] ([PaRo_Id], [Pant_Id], [Rol_Id], [PaRo_UsuarioCreacion], [PaRo_FechaCreacion], [PaRo_UsuarioModificacion], [PaRo_FechaModificacion], [PaRo_Estado]) VALUES (244, 11, 5, 1, CAST(N'2024-04-12T01:30:37.110' AS DateTime), NULL, NULL, 1)
INSERT [Accs].[tbPantallasPorRoles] ([PaRo_Id], [Pant_Id], [Rol_Id], [PaRo_UsuarioCreacion], [PaRo_FechaCreacion], [PaRo_UsuarioModificacion], [PaRo_FechaModificacion], [PaRo_Estado]) VALUES (245, 1, 1, 1, CAST(N'2024-04-12T01:33:55.487' AS DateTime), NULL, NULL, 1)
INSERT [Accs].[tbPantallasPorRoles] ([PaRo_Id], [Pant_Id], [Rol_Id], [PaRo_UsuarioCreacion], [PaRo_FechaCreacion], [PaRo_UsuarioModificacion], [PaRo_FechaModificacion], [PaRo_Estado]) VALUES (246, 4, 2, 1, CAST(N'2024-04-12T01:33:58.887' AS DateTime), NULL, NULL, 1)
INSERT [Accs].[tbPantallasPorRoles] ([PaRo_Id], [Pant_Id], [Rol_Id], [PaRo_UsuarioCreacion], [PaRo_FechaCreacion], [PaRo_UsuarioModificacion], [PaRo_FechaModificacion], [PaRo_Estado]) VALUES (247, 2, 3, 1, CAST(N'2024-04-12T01:34:01.323' AS DateTime), NULL, NULL, 1)
INSERT [Accs].[tbPantallasPorRoles] ([PaRo_Id], [Pant_Id], [Rol_Id], [PaRo_UsuarioCreacion], [PaRo_FechaCreacion], [PaRo_UsuarioModificacion], [PaRo_FechaModificacion], [PaRo_Estado]) VALUES (248, 11, 4, 1, CAST(N'2024-04-12T01:34:04.157' AS DateTime), NULL, NULL, 1)
INSERT [Accs].[tbPantallasPorRoles] ([PaRo_Id], [Pant_Id], [Rol_Id], [PaRo_UsuarioCreacion], [PaRo_FechaCreacion], [PaRo_UsuarioModificacion], [PaRo_FechaModificacion], [PaRo_Estado]) VALUES (251, 10, 5, 1, CAST(N'2024-04-12T01:39:41.137' AS DateTime), NULL, NULL, 1)
INSERT [Accs].[tbPantallasPorRoles] ([PaRo_Id], [Pant_Id], [Rol_Id], [PaRo_UsuarioCreacion], [PaRo_FechaCreacion], [PaRo_UsuarioModificacion], [PaRo_FechaModificacion], [PaRo_Estado]) VALUES (252, 11, 1, 1, CAST(N'2024-04-12T01:39:41.137' AS DateTime), NULL, NULL, 1)
INSERT [Accs].[tbPantallasPorRoles] ([PaRo_Id], [Pant_Id], [Rol_Id], [PaRo_UsuarioCreacion], [PaRo_FechaCreacion], [PaRo_UsuarioModificacion], [PaRo_FechaModificacion], [PaRo_Estado]) VALUES (253, 3, 2, 1, CAST(N'2024-04-12T01:39:41.137' AS DateTime), NULL, NULL, 1)
INSERT [Accs].[tbPantallasPorRoles] ([PaRo_Id], [Pant_Id], [Rol_Id], [PaRo_UsuarioCreacion], [PaRo_FechaCreacion], [PaRo_UsuarioModificacion], [PaRo_FechaModificacion], [PaRo_Estado]) VALUES (254, 4, 3, 1, CAST(N'2024-04-12T01:39:41.137' AS DateTime), NULL, NULL, 1)
INSERT [Accs].[tbPantallasPorRoles] ([PaRo_Id], [Pant_Id], [Rol_Id], [PaRo_UsuarioCreacion], [PaRo_FechaCreacion], [PaRo_UsuarioModificacion], [PaRo_FechaModificacion], [PaRo_Estado]) VALUES (255, 5, 4, 1, CAST(N'2024-04-12T01:39:41.137' AS DateTime), NULL, NULL, 1)
INSERT [Accs].[tbPantallasPorRoles] ([PaRo_Id], [Pant_Id], [Rol_Id], [PaRo_UsuarioCreacion], [PaRo_FechaCreacion], [PaRo_UsuarioModificacion], [PaRo_FechaModificacion], [PaRo_Estado]) VALUES (256, 6, 5, 1, CAST(N'2024-04-12T01:39:41.137' AS DateTime), NULL, NULL, 1)
INSERT [Accs].[tbPantallasPorRoles] ([PaRo_Id], [Pant_Id], [Rol_Id], [PaRo_UsuarioCreacion], [PaRo_FechaCreacion], [PaRo_UsuarioModificacion], [PaRo_FechaModificacion], [PaRo_Estado]) VALUES (257, 7, 1, 1, CAST(N'2024-04-12T01:39:41.137' AS DateTime), NULL, NULL, 1)
INSERT [Accs].[tbPantallasPorRoles] ([PaRo_Id], [Pant_Id], [Rol_Id], [PaRo_UsuarioCreacion], [PaRo_FechaCreacion], [PaRo_UsuarioModificacion], [PaRo_FechaModificacion], [PaRo_Estado]) VALUES (428, 1, 128, 1, CAST(N'2024-04-12T11:50:13.677' AS DateTime), NULL, NULL, 1)
INSERT [Accs].[tbPantallasPorRoles] ([PaRo_Id], [Pant_Id], [Rol_Id], [PaRo_UsuarioCreacion], [PaRo_FechaCreacion], [PaRo_UsuarioModificacion], [PaRo_FechaModificacion], [PaRo_Estado]) VALUES (429, 2, 128, 1, CAST(N'2024-04-12T11:50:13.677' AS DateTime), NULL, NULL, 1)
INSERT [Accs].[tbPantallasPorRoles] ([PaRo_Id], [Pant_Id], [Rol_Id], [PaRo_UsuarioCreacion], [PaRo_FechaCreacion], [PaRo_UsuarioModificacion], [PaRo_FechaModificacion], [PaRo_Estado]) VALUES (430, 7, 128, 1, CAST(N'2024-04-12T11:50:22.297' AS DateTime), NULL, NULL, 1)
INSERT [Accs].[tbPantallasPorRoles] ([PaRo_Id], [Pant_Id], [Rol_Id], [PaRo_UsuarioCreacion], [PaRo_FechaCreacion], [PaRo_UsuarioModificacion], [PaRo_FechaModificacion], [PaRo_Estado]) VALUES (431, 3, 128, 1, CAST(N'2024-04-12T11:50:23.523' AS DateTime), NULL, NULL, 1)
INSERT [Accs].[tbPantallasPorRoles] ([PaRo_Id], [Pant_Id], [Rol_Id], [PaRo_UsuarioCreacion], [PaRo_FechaCreacion], [PaRo_UsuarioModificacion], [PaRo_FechaModificacion], [PaRo_Estado]) VALUES (432, 10, 128, 1, CAST(N'2024-04-12T11:50:24.507' AS DateTime), NULL, NULL, 1)
INSERT [Accs].[tbPantallasPorRoles] ([PaRo_Id], [Pant_Id], [Rol_Id], [PaRo_UsuarioCreacion], [PaRo_FechaCreacion], [PaRo_UsuarioModificacion], [PaRo_FechaModificacion], [PaRo_Estado]) VALUES (433, 11, 128, 1, CAST(N'2024-04-12T11:50:24.507' AS DateTime), NULL, NULL, 1)
INSERT [Accs].[tbPantallasPorRoles] ([PaRo_Id], [Pant_Id], [Rol_Id], [PaRo_UsuarioCreacion], [PaRo_FechaCreacion], [PaRo_UsuarioModificacion], [PaRo_FechaModificacion], [PaRo_Estado]) VALUES (434, 8, 128, 1, CAST(N'2024-04-12T11:50:24.507' AS DateTime), NULL, NULL, 1)
INSERT [Accs].[tbPantallasPorRoles] ([PaRo_Id], [Pant_Id], [Rol_Id], [PaRo_UsuarioCreacion], [PaRo_FechaCreacion], [PaRo_UsuarioModificacion], [PaRo_FechaModificacion], [PaRo_Estado]) VALUES (435, 9, 128, 1, CAST(N'2024-04-12T11:50:24.507' AS DateTime), NULL, NULL, 1)
INSERT [Accs].[tbPantallasPorRoles] ([PaRo_Id], [Pant_Id], [Rol_Id], [PaRo_UsuarioCreacion], [PaRo_FechaCreacion], [PaRo_UsuarioModificacion], [PaRo_FechaModificacion], [PaRo_Estado]) VALUES (436, 1, 129, 1, CAST(N'2024-04-12T12:03:35.223' AS DateTime), NULL, NULL, 1)
INSERT [Accs].[tbPantallasPorRoles] ([PaRo_Id], [Pant_Id], [Rol_Id], [PaRo_UsuarioCreacion], [PaRo_FechaCreacion], [PaRo_UsuarioModificacion], [PaRo_FechaModificacion], [PaRo_Estado]) VALUES (437, 10, 129, 1, CAST(N'2024-04-12T12:03:35.223' AS DateTime), NULL, NULL, 1)
INSERT [Accs].[tbPantallasPorRoles] ([PaRo_Id], [Pant_Id], [Rol_Id], [PaRo_UsuarioCreacion], [PaRo_FechaCreacion], [PaRo_UsuarioModificacion], [PaRo_FechaModificacion], [PaRo_Estado]) VALUES (438, 11, 129, 1, CAST(N'2024-04-12T12:03:35.223' AS DateTime), NULL, NULL, 1)
INSERT [Accs].[tbPantallasPorRoles] ([PaRo_Id], [Pant_Id], [Rol_Id], [PaRo_UsuarioCreacion], [PaRo_FechaCreacion], [PaRo_UsuarioModificacion], [PaRo_FechaModificacion], [PaRo_Estado]) VALUES (439, 2, 129, 1, CAST(N'2024-04-12T12:03:35.223' AS DateTime), NULL, NULL, 1)
INSERT [Accs].[tbPantallasPorRoles] ([PaRo_Id], [Pant_Id], [Rol_Id], [PaRo_UsuarioCreacion], [PaRo_FechaCreacion], [PaRo_UsuarioModificacion], [PaRo_FechaModificacion], [PaRo_Estado]) VALUES (440, 3, 129, 1, CAST(N'2024-04-12T12:03:35.223' AS DateTime), NULL, NULL, 1)
INSERT [Accs].[tbPantallasPorRoles] ([PaRo_Id], [Pant_Id], [Rol_Id], [PaRo_UsuarioCreacion], [PaRo_FechaCreacion], [PaRo_UsuarioModificacion], [PaRo_FechaModificacion], [PaRo_Estado]) VALUES (441, 4, 129, 1, CAST(N'2024-04-12T12:03:35.223' AS DateTime), NULL, NULL, 1)
INSERT [Accs].[tbPantallasPorRoles] ([PaRo_Id], [Pant_Id], [Rol_Id], [PaRo_UsuarioCreacion], [PaRo_FechaCreacion], [PaRo_UsuarioModificacion], [PaRo_FechaModificacion], [PaRo_Estado]) VALUES (442, 5, 129, 1, CAST(N'2024-04-12T12:03:35.223' AS DateTime), NULL, NULL, 1)
INSERT [Accs].[tbPantallasPorRoles] ([PaRo_Id], [Pant_Id], [Rol_Id], [PaRo_UsuarioCreacion], [PaRo_FechaCreacion], [PaRo_UsuarioModificacion], [PaRo_FechaModificacion], [PaRo_Estado]) VALUES (443, 6, 129, 1, CAST(N'2024-04-12T12:03:35.223' AS DateTime), NULL, NULL, 1)
INSERT [Accs].[tbPantallasPorRoles] ([PaRo_Id], [Pant_Id], [Rol_Id], [PaRo_UsuarioCreacion], [PaRo_FechaCreacion], [PaRo_UsuarioModificacion], [PaRo_FechaModificacion], [PaRo_Estado]) VALUES (444, 7, 129, 1, CAST(N'2024-04-12T12:03:35.223' AS DateTime), NULL, NULL, 1)
INSERT [Accs].[tbPantallasPorRoles] ([PaRo_Id], [Pant_Id], [Rol_Id], [PaRo_UsuarioCreacion], [PaRo_FechaCreacion], [PaRo_UsuarioModificacion], [PaRo_FechaModificacion], [PaRo_Estado]) VALUES (445, 8, 129, 1, CAST(N'2024-04-12T12:03:35.223' AS DateTime), NULL, NULL, 1)
INSERT [Accs].[tbPantallasPorRoles] ([PaRo_Id], [Pant_Id], [Rol_Id], [PaRo_UsuarioCreacion], [PaRo_FechaCreacion], [PaRo_UsuarioModificacion], [PaRo_FechaModificacion], [PaRo_Estado]) VALUES (446, 9, 129, 1, CAST(N'2024-04-12T12:03:35.223' AS DateTime), NULL, NULL, 1)
SET IDENTITY_INSERT [Accs].[tbPantallasPorRoles] OFF
GO
SET IDENTITY_INSERT [Accs].[tbRoles] ON 

INSERT [Accs].[tbRoles] ([Rol_Id], [Rol_Rol], [Rol_UsuarioCreacion], [Rol_FechaCreacion], [Rol_UsuarioModificacion], [Rol_FechaModificacion], [Rol_Estado]) VALUES (1, N'Administrador', 1, CAST(N'2024-04-09T00:01:27.790' AS DateTime), 1, CAST(N'2024-04-11T00:24:20.947' AS DateTime), 1)
INSERT [Accs].[tbRoles] ([Rol_Id], [Rol_Rol], [Rol_UsuarioCreacion], [Rol_FechaCreacion], [Rol_UsuarioModificacion], [Rol_FechaModificacion], [Rol_Estado]) VALUES (2, N'Invitado', 1, CAST(N'2024-04-09T00:01:27.790' AS DateTime), NULL, NULL, 1)
INSERT [Accs].[tbRoles] ([Rol_Id], [Rol_Rol], [Rol_UsuarioCreacion], [Rol_FechaCreacion], [Rol_UsuarioModificacion], [Rol_FechaModificacion], [Rol_Estado]) VALUES (3, N'bfgdfg', 1, CAST(N'2024-04-09T00:01:27.790' AS DateTime), NULL, NULL, 0)
INSERT [Accs].[tbRoles] ([Rol_Id], [Rol_Rol], [Rol_UsuarioCreacion], [Rol_FechaCreacion], [Rol_UsuarioModificacion], [Rol_FechaModificacion], [Rol_Estado]) VALUES (4, N'bfgdfggg', 1, CAST(N'2024-04-09T00:59:02.667' AS DateTime), NULL, NULL, 0)
INSERT [Accs].[tbRoles] ([Rol_Id], [Rol_Rol], [Rol_UsuarioCreacion], [Rol_FechaCreacion], [Rol_UsuarioModificacion], [Rol_FechaModificacion], [Rol_Estado]) VALUES (5, N'httyrtyr', 1, CAST(N'2024-04-09T01:01:01.230' AS DateTime), NULL, NULL, 0)
INSERT [Accs].[tbRoles] ([Rol_Id], [Rol_Rol], [Rol_UsuarioCreacion], [Rol_FechaCreacion], [Rol_UsuarioModificacion], [Rol_FechaModificacion], [Rol_Estado]) VALUES (6, N'ssss', 1, CAST(N'2024-04-09T01:02:01.747' AS DateTime), NULL, NULL, 0)
INSERT [Accs].[tbRoles] ([Rol_Id], [Rol_Rol], [Rol_UsuarioCreacion], [Rol_FechaCreacion], [Rol_UsuarioModificacion], [Rol_FechaModificacion], [Rol_Estado]) VALUES (84, N'holaoglaa', 1, CAST(N'2024-04-11T00:09:07.880' AS DateTime), NULL, NULL, 1)
INSERT [Accs].[tbRoles] ([Rol_Id], [Rol_Rol], [Rol_UsuarioCreacion], [Rol_FechaCreacion], [Rol_UsuarioModificacion], [Rol_FechaModificacion], [Rol_Estado]) VALUES (127, N'Gerente', 1, CAST(N'2024-04-12T09:10:50.830' AS DateTime), 1, CAST(N'2024-04-12T09:18:38.977' AS DateTime), 1)
INSERT [Accs].[tbRoles] ([Rol_Id], [Rol_Rol], [Rol_UsuarioCreacion], [Rol_FechaCreacion], [Rol_UsuarioModificacion], [Rol_FechaModificacion], [Rol_Estado]) VALUES (128, N'Admin', 1, CAST(N'2024-04-12T11:50:13.720' AS DateTime), NULL, NULL, 1)
INSERT [Accs].[tbRoles] ([Rol_Id], [Rol_Rol], [Rol_UsuarioCreacion], [Rol_FechaCreacion], [Rol_UsuarioModificacion], [Rol_FechaModificacion], [Rol_Estado]) VALUES (129, N'sf', 1, CAST(N'2024-04-12T12:03:35.273' AS DateTime), NULL, NULL, 1)
SET IDENTITY_INSERT [Accs].[tbRoles] OFF
GO
SET IDENTITY_INSERT [Accs].[tbUsuarios] ON 

INSERT [Accs].[tbUsuarios] ([Usua_Id], [Usua_Usuario], [Usua_Contrasena], [Rol_Id], [Usua_UsuarioCreacion], [Usua_FechaCreacion], [Usua_UsuarioModificacion], [Usua_FechaModificacion], [Usua_Estado], [Pers_Id], [Usua_Administrador]) VALUES (1, N'sua', N'9C70B581E98829ADBE5D4A0973B716E677731ABB2DE5994192C2ECFD06E27A2F55CCF652580A9914B14A0606A421A81C397712928C905F11010B44626021AB10', 1, 4, CAST(N'2024-04-07T22:53:19.453' AS DateTime), 1, CAST(N'2024-04-11T10:43:14.110' AS DateTime), 1, 1, 1)
INSERT [Accs].[tbUsuarios] ([Usua_Id], [Usua_Usuario], [Usua_Contrasena], [Rol_Id], [Usua_UsuarioCreacion], [Usua_FechaCreacion], [Usua_UsuarioModificacion], [Usua_FechaModificacion], [Usua_Estado], [Pers_Id], [Usua_Administrador]) VALUES (2, N'gdf', N'fdg', 3, 1, CAST(N'2024-04-07T22:53:19.453' AS DateTime), NULL, NULL, 1, NULL, 1)
INSERT [Accs].[tbUsuarios] ([Usua_Id], [Usua_Usuario], [Usua_Contrasena], [Rol_Id], [Usua_UsuarioCreacion], [Usua_FechaCreacion], [Usua_UsuarioModificacion], [Usua_FechaModificacion], [Usua_Estado], [Pers_Id], [Usua_Administrador]) VALUES (3, N'Invitado', N'4C5755601BB315D8EE56065C7AB9B3E19120DE5744F3B47A252CBF5B2B33584DEBEB46629D3EDE1456936D4A4FFBFAD8172A59FE1A201BBE4C919F77BFC763B6', 2, 1, CAST(N'2024-04-08T19:19:53.153' AS DateTime), 1, CAST(N'2024-04-08T19:24:57.613' AS DateTime), 1, 1, 0)
INSERT [Accs].[tbUsuarios] ([Usua_Id], [Usua_Usuario], [Usua_Contrasena], [Rol_Id], [Usua_UsuarioCreacion], [Usua_FechaCreacion], [Usua_UsuarioModificacion], [Usua_FechaModificacion], [Usua_Estado], [Pers_Id], [Usua_Administrador]) VALUES (4, N'Mine', N'B662FBCD16CF13F937E44C42232523BB9EB6C5B93462DF000755715CC1783F52C38E1E75E78C94D9695EDB2D8A9661DF38C3056ABADAD57385ECC73388E492C8', 6, 1, CAST(N'2024-04-09T15:51:51.693' AS DateTime), 4, CAST(N'2024-04-12T11:53:07.180' AS DateTime), 1, 2, 1)
INSERT [Accs].[tbUsuarios] ([Usua_Id], [Usua_Usuario], [Usua_Contrasena], [Rol_Id], [Usua_UsuarioCreacion], [Usua_FechaCreacion], [Usua_UsuarioModificacion], [Usua_FechaModificacion], [Usua_Estado], [Pers_Id], [Usua_Administrador]) VALUES (5, N'suaaa', N'DFEBD7B6AE10F76B2FD99FD72FC22D7468709AAD092E6508B6ADF15D542731404B5B8BB967C1F4451FEB0CAFC9C94B873F8A7711E336C9C1C647793F853CDCB8', 4, 1, CAST(N'2024-04-10T11:33:18.977' AS DateTime), 1, CAST(N'2024-04-10T11:33:42.627' AS DateTime), 1, 1, 1)
INSERT [Accs].[tbUsuarios] ([Usua_Id], [Usua_Usuario], [Usua_Contrasena], [Rol_Id], [Usua_UsuarioCreacion], [Usua_FechaCreacion], [Usua_UsuarioModificacion], [Usua_FechaModificacion], [Usua_Estado], [Pers_Id], [Usua_Administrador]) VALUES (6, N'prueba', N'0439434DAE91C10C3BC073AF1E76ADDF8F57A30CE0A7DE0438B3AAAD34B85200D41D01078F2EE786B3130B4ED4E39E3E26090DA5D9F87420454DFDD182761CCE', 5, 1, CAST(N'2024-04-11T10:49:49.410' AS DateTime), NULL, NULL, 0, 2, 0)
INSERT [Accs].[tbUsuarios] ([Usua_Id], [Usua_Usuario], [Usua_Contrasena], [Rol_Id], [Usua_UsuarioCreacion], [Usua_FechaCreacion], [Usua_UsuarioModificacion], [Usua_FechaModificacion], [Usua_Estado], [Pers_Id], [Usua_Administrador]) VALUES (7, N'jezer', N'DC28CC1F9350E7E364DD605CC44C9773B9006178920E55E00DE39CC27DEBC6BB438A71ECD3B02BF1F1A1C00A005B0E40A775940B447A5A4FA21F894ED11272C5', 3, 1, CAST(N'2024-04-11T23:40:24.453' AS DateTime), NULL, NULL, 1, 3, 1)
INSERT [Accs].[tbUsuarios] ([Usua_Id], [Usua_Usuario], [Usua_Contrasena], [Rol_Id], [Usua_UsuarioCreacion], [Usua_FechaCreacion], [Usua_UsuarioModificacion], [Usua_FechaModificacion], [Usua_Estado], [Pers_Id], [Usua_Administrador]) VALUES (8, N'CARLOS', N'B270BB57A88B48434307D8B245C2734AA333DB584670E8C3D11A92A7CE33AD99EAE71EB2EFDD50ADEBB7CA0EBCFFF7CE4765FD37C6106348ED7A97D8774E3984', 127, 4, CAST(N'2024-04-11T23:51:23.117' AS DateTime), 4, CAST(N'2024-04-12T09:11:25.073' AS DateTime), 1, 4, 0)
SET IDENTITY_INSERT [Accs].[tbUsuarios] OFF
GO
SET IDENTITY_INSERT [Gral].[tbColonias] ON 

INSERT [Gral].[tbColonias] ([Colo_Id], [Colo_Colonia], [Muni_Id], [Colo_UsuarioCreacion], [Colo_FechaCreacion], [Colo_UsuarioModificacion], [Colo_FechaModificacion], [Colo_Estado]) VALUES (1, N'Valle', N'01', 1, CAST(N'2024-02-05T00:00:00.000' AS DateTime), 2, CAST(N'2024-02-05T00:00:00.000' AS DateTime), 1)
INSERT [Gral].[tbColonias] ([Colo_Id], [Colo_Colonia], [Muni_Id], [Colo_UsuarioCreacion], [Colo_FechaCreacion], [Colo_UsuarioModificacion], [Colo_FechaModificacion], [Colo_Estado]) VALUES (2, N'Calan', N'0511', 1, CAST(N'2024-02-05T00:00:00.000' AS DateTime), NULL, NULL, 1)
INSERT [Gral].[tbColonias] ([Colo_Id], [Colo_Colonia], [Muni_Id], [Colo_UsuarioCreacion], [Colo_FechaCreacion], [Colo_UsuarioModificacion], [Colo_FechaModificacion], [Colo_Estado]) VALUES (3, N'Metro', N'0511', 1, CAST(N'2024-02-05T00:00:00.000' AS DateTime), NULL, NULL, 1)
INSERT [Gral].[tbColonias] ([Colo_Id], [Colo_Colonia], [Muni_Id], [Colo_UsuarioCreacion], [Colo_FechaCreacion], [Colo_UsuarioModificacion], [Colo_FechaModificacion], [Colo_Estado]) VALUES (4, N'San Marcos', N'0511', 1, CAST(N'2024-02-05T00:00:00.000' AS DateTime), NULL, NULL, 1)
INSERT [Gral].[tbColonias] ([Colo_Id], [Colo_Colonia], [Muni_Id], [Colo_UsuarioCreacion], [Colo_FechaCreacion], [Colo_UsuarioModificacion], [Colo_FechaModificacion], [Colo_Estado]) VALUES (5, N'Colon', N'01', 1, CAST(N'2024-02-05T00:00:00.000' AS DateTime), 4, CAST(N'2024-04-11T20:40:14.607' AS DateTime), 1)
INSERT [Gral].[tbColonias] ([Colo_Id], [Colo_Colonia], [Muni_Id], [Colo_UsuarioCreacion], [Colo_FechaCreacion], [Colo_UsuarioModificacion], [Colo_FechaModificacion], [Colo_Estado]) VALUES (7, N'Mariscuo', N'3949', 4, CAST(N'2024-04-12T09:34:08.553' AS DateTime), NULL, NULL, 1)
INSERT [Gral].[tbColonias] ([Colo_Id], [Colo_Colonia], [Muni_Id], [Colo_UsuarioCreacion], [Colo_FechaCreacion], [Colo_UsuarioModificacion], [Colo_FechaModificacion], [Colo_Estado]) VALUES (8, N'Medina', N'3949', 4, CAST(N'2024-04-12T09:34:18.653' AS DateTime), NULL, NULL, 1)
SET IDENTITY_INSERT [Gral].[tbColonias] OFF
GO
INSERT [Gral].[tbDepartamentos] ([Dept_Id], [Dept_Departamento], [Dept_UsuarioCreacion], [Dept_FechaCreacion], [Dept_UsuarioModificacion], [Dept_FechaModificacion], [Dept_Estado]) VALUES (N'01', N'Atlantidaa', 1, CAST(N'2024-02-04T00:00:00.000' AS DateTime), 4, CAST(N'2024-04-07T12:41:24.870' AS DateTime), 1)
INSERT [Gral].[tbDepartamentos] ([Dept_Id], [Dept_Departamento], [Dept_UsuarioCreacion], [Dept_FechaCreacion], [Dept_UsuarioModificacion], [Dept_FechaModificacion], [Dept_Estado]) VALUES (N'02', N'Colones', 1, CAST(N'2024-04-06T22:48:16.313' AS DateTime), 4, CAST(N'2024-04-11T22:05:54.100' AS DateTime), 1)
INSERT [Gral].[tbDepartamentos] ([Dept_Id], [Dept_Departamento], [Dept_UsuarioCreacion], [Dept_FechaCreacion], [Dept_UsuarioModificacion], [Dept_FechaModificacion], [Dept_Estado]) VALUES (N'05', N'Cortes', 1, CAST(N'2024-04-02T00:00:00.000' AS DateTime), NULL, NULL, 1)
GO
SET IDENTITY_INSERT [Gral].[tbEstadosCiviles] ON 

INSERT [Gral].[tbEstadosCiviles] ([Esta_Id], [Esta_EstadoCivil], [Esta_UsuarioCreacion], [Esta_FechaCreacion], [Esta_UsuarioModificacion], [Esta_FechaModificacion], [Esta_Estado]) VALUES (1, N'soll', 1, CAST(N'2024-04-07T22:53:19.453' AS DateTime), 4, CAST(N'2024-04-04T00:45:24.137' AS DateTime), 0)
INSERT [Gral].[tbEstadosCiviles] ([Esta_Id], [Esta_EstadoCivil], [Esta_UsuarioCreacion], [Esta_FechaCreacion], [Esta_UsuarioModificacion], [Esta_FechaModificacion], [Esta_Estado]) VALUES (2, N'Casada', 1, CAST(N'2024-12-12T00:00:00.000' AS DateTime), 1, CAST(N'2024-04-08T09:44:52.593' AS DateTime), 0)
INSERT [Gral].[tbEstadosCiviles] ([Esta_Id], [Esta_EstadoCivil], [Esta_UsuarioCreacion], [Esta_FechaCreacion], [Esta_UsuarioModificacion], [Esta_FechaModificacion], [Esta_Estado]) VALUES (3, N'prueba', 1, CAST(N'2024-04-03T02:00:29.040' AS DateTime), 1, CAST(N'2024-04-02T00:00:00.000' AS DateTime), 0)
INSERT [Gral].[tbEstadosCiviles] ([Esta_Id], [Esta_EstadoCivil], [Esta_UsuarioCreacion], [Esta_FechaCreacion], [Esta_UsuarioModificacion], [Esta_FechaModificacion], [Esta_Estado]) VALUES (4, N'sd', 1, CAST(N'2024-04-03T13:33:30.760' AS DateTime), NULL, NULL, 0)
INSERT [Gral].[tbEstadosCiviles] ([Esta_Id], [Esta_EstadoCivil], [Esta_UsuarioCreacion], [Esta_FechaCreacion], [Esta_UsuarioModificacion], [Esta_FechaModificacion], [Esta_Estado]) VALUES (5, N'sdgag', 1, CAST(N'2024-04-03T19:20:06.940' AS DateTime), NULL, NULL, 0)
INSERT [Gral].[tbEstadosCiviles] ([Esta_Id], [Esta_EstadoCivil], [Esta_UsuarioCreacion], [Esta_FechaCreacion], [Esta_UsuarioModificacion], [Esta_FechaModificacion], [Esta_Estado]) VALUES (6, N'prueba2', 1, CAST(N'2024-04-03T19:27:21.070' AS DateTime), 1, CAST(N'2024-04-02T00:00:00.000' AS DateTime), 0)
INSERT [Gral].[tbEstadosCiviles] ([Esta_Id], [Esta_EstadoCivil], [Esta_UsuarioCreacion], [Esta_FechaCreacion], [Esta_UsuarioModificacion], [Esta_FechaModificacion], [Esta_Estado]) VALUES (7, N'Funcionaaa', 1, CAST(N'2024-04-03T19:27:28.967' AS DateTime), NULL, NULL, 0)
INSERT [Gral].[tbEstadosCiviles] ([Esta_Id], [Esta_EstadoCivil], [Esta_UsuarioCreacion], [Esta_FechaCreacion], [Esta_UsuarioModificacion], [Esta_FechaModificacion], [Esta_Estado]) VALUES (8, N'Viudo(a)2', 1, CAST(N'2024-04-03T20:03:46.097' AS DateTime), 1, CAST(N'2024-04-05T11:34:22.077' AS DateTime), 0)
INSERT [Gral].[tbEstadosCiviles] ([Esta_Id], [Esta_EstadoCivil], [Esta_UsuarioCreacion], [Esta_FechaCreacion], [Esta_UsuarioModificacion], [Esta_FechaModificacion], [Esta_Estado]) VALUES (9, NULL, 1, CAST(N'2024-04-03T20:14:10.060' AS DateTime), NULL, NULL, 0)
INSERT [Gral].[tbEstadosCiviles] ([Esta_Id], [Esta_EstadoCivil], [Esta_UsuarioCreacion], [Esta_FechaCreacion], [Esta_UsuarioModificacion], [Esta_FechaModificacion], [Esta_Estado]) VALUES (10, N'Divorciado', 1, CAST(N'2024-04-03T21:36:07.630' AS DateTime), 4, CAST(N'2024-04-11T15:34:53.837' AS DateTime), 1)
INSERT [Gral].[tbEstadosCiviles] ([Esta_Id], [Esta_EstadoCivil], [Esta_UsuarioCreacion], [Esta_FechaCreacion], [Esta_UsuarioModificacion], [Esta_FechaModificacion], [Esta_Estado]) VALUES (11, N'Union Libre', 1, CAST(N'2024-04-04T00:27:41.300' AS DateTime), NULL, NULL, 0)
INSERT [Gral].[tbEstadosCiviles] ([Esta_Id], [Esta_EstadoCivil], [Esta_UsuarioCreacion], [Esta_FechaCreacion], [Esta_UsuarioModificacion], [Esta_FechaModificacion], [Esta_Estado]) VALUES (12, N'Prueb', 1, CAST(N'2024-04-04T00:37:48.410' AS DateTime), 1, CAST(N'2024-04-04T01:05:53.967' AS DateTime), 0)
INSERT [Gral].[tbEstadosCiviles] ([Esta_Id], [Esta_EstadoCivil], [Esta_UsuarioCreacion], [Esta_FechaCreacion], [Esta_UsuarioModificacion], [Esta_FechaModificacion], [Esta_Estado]) VALUES (14, N'stringg', 1, CAST(N'2024-04-04T01:02:32.837' AS DateTime), NULL, NULL, 0)
INSERT [Gral].[tbEstadosCiviles] ([Esta_Id], [Esta_EstadoCivil], [Esta_UsuarioCreacion], [Esta_FechaCreacion], [Esta_UsuarioModificacion], [Esta_FechaModificacion], [Esta_Estado]) VALUES (15, N'editarr', 1, CAST(N'2024-04-04T09:19:20.363' AS DateTime), 1, CAST(N'2024-04-04T09:38:23.750' AS DateTime), 0)
INSERT [Gral].[tbEstadosCiviles] ([Esta_Id], [Esta_EstadoCivil], [Esta_UsuarioCreacion], [Esta_FechaCreacion], [Esta_UsuarioModificacion], [Esta_FechaModificacion], [Esta_Estado]) VALUES (16, N'crearrrred', 1, CAST(N'2024-04-04T09:37:46.003' AS DateTime), 1, CAST(N'2024-04-04T09:38:00.857' AS DateTime), 0)
INSERT [Gral].[tbEstadosCiviles] ([Esta_Id], [Esta_EstadoCivil], [Esta_UsuarioCreacion], [Esta_FechaCreacion], [Esta_UsuarioModificacion], [Esta_FechaModificacion], [Esta_Estado]) VALUES (17, N'pruebrepooo', 1, CAST(N'2024-04-04T11:57:51.027' AS DateTime), 1, CAST(N'2024-04-04T14:20:32.037' AS DateTime), 0)
INSERT [Gral].[tbEstadosCiviles] ([Esta_Id], [Esta_EstadoCivil], [Esta_UsuarioCreacion], [Esta_FechaCreacion], [Esta_UsuarioModificacion], [Esta_FechaModificacion], [Esta_Estado]) VALUES (18, N'holaaasdsf', 1, CAST(N'2024-04-04T14:21:39.597' AS DateTime), 1, CAST(N'2024-04-04T14:21:50.110' AS DateTime), 0)
INSERT [Gral].[tbEstadosCiviles] ([Esta_Id], [Esta_EstadoCivil], [Esta_UsuarioCreacion], [Esta_FechaCreacion], [Esta_UsuarioModificacion], [Esta_FechaModificacion], [Esta_Estado]) VALUES (20, N'Comprometida', 1, CAST(N'2024-04-05T07:58:52.973' AS DateTime), 1, CAST(N'2024-04-05T07:58:58.097' AS DateTime), 0)
INSERT [Gral].[tbEstadosCiviles] ([Esta_Id], [Esta_EstadoCivil], [Esta_UsuarioCreacion], [Esta_FechaCreacion], [Esta_UsuarioModificacion], [Esta_FechaModificacion], [Esta_Estado]) VALUES (21, N'fafafafa', 1, CAST(N'2024-04-05T08:05:54.420' AS DateTime), 1, CAST(N'2024-04-05T08:05:59.923' AS DateTime), 0)
INSERT [Gral].[tbEstadosCiviles] ([Esta_Id], [Esta_EstadoCivil], [Esta_UsuarioCreacion], [Esta_FechaCreacion], [Esta_UsuarioModificacion], [Esta_FechaModificacion], [Esta_Estado]) VALUES (22, N'Comprometida2', 1, CAST(N'2024-04-05T11:33:39.980' AS DateTime), 1, CAST(N'2024-04-05T11:33:57.147' AS DateTime), 0)
INSERT [Gral].[tbEstadosCiviles] ([Esta_Id], [Esta_EstadoCivil], [Esta_UsuarioCreacion], [Esta_FechaCreacion], [Esta_UsuarioModificacion], [Esta_FechaModificacion], [Esta_Estado]) VALUES (23, N'arrelge2', 1, CAST(N'2024-04-06T22:15:12.203' AS DateTime), 1, CAST(N'2024-04-06T22:15:16.413' AS DateTime), 0)
INSERT [Gral].[tbEstadosCiviles] ([Esta_Id], [Esta_EstadoCivil], [Esta_UsuarioCreacion], [Esta_FechaCreacion], [Esta_UsuarioModificacion], [Esta_FechaModificacion], [Esta_Estado]) VALUES (24, N'ssssa', 1, CAST(N'2024-04-06T22:18:06.530' AS DateTime), 1, CAST(N'2024-04-06T22:18:11.073' AS DateTime), 0)
INSERT [Gral].[tbEstadosCiviles] ([Esta_Id], [Esta_EstadoCivil], [Esta_UsuarioCreacion], [Esta_FechaCreacion], [Esta_UsuarioModificacion], [Esta_FechaModificacion], [Esta_Estado]) VALUES (25, N'Viudoos', 1, CAST(N'2024-04-08T09:10:04.553' AS DateTime), 1, CAST(N'2024-04-08T09:10:10.023' AS DateTime), 0)
INSERT [Gral].[tbEstadosCiviles] ([Esta_Id], [Esta_EstadoCivil], [Esta_UsuarioCreacion], [Esta_FechaCreacion], [Esta_UsuarioModificacion], [Esta_FechaModificacion], [Esta_Estado]) VALUES (26, N'Viuda', 1, CAST(N'2024-04-08T09:43:50.723' AS DateTime), 4, CAST(N'2024-04-11T15:34:48.107' AS DateTime), 1)
INSERT [Gral].[tbEstadosCiviles] ([Esta_Id], [Esta_EstadoCivil], [Esta_UsuarioCreacion], [Esta_FechaCreacion], [Esta_UsuarioModificacion], [Esta_FechaModificacion], [Esta_Estado]) VALUES (27, N'xd', 1, CAST(N'2024-04-08T09:50:36.030' AS DateTime), NULL, NULL, 0)
INSERT [Gral].[tbEstadosCiviles] ([Esta_Id], [Esta_EstadoCivil], [Esta_UsuarioCreacion], [Esta_FechaCreacion], [Esta_UsuarioModificacion], [Esta_FechaModificacion], [Esta_Estado]) VALUES (31, N'xdd', 1, CAST(N'2024-04-08T09:51:31.680' AS DateTime), NULL, NULL, 0)
INSERT [Gral].[tbEstadosCiviles] ([Esta_Id], [Esta_EstadoCivil], [Esta_UsuarioCreacion], [Esta_FechaCreacion], [Esta_UsuarioModificacion], [Esta_FechaModificacion], [Esta_Estado]) VALUES (32, N'fgb', 1, CAST(N'2024-04-11T07:59:38.637' AS DateTime), 1, CAST(N'2024-04-11T07:59:44.287' AS DateTime), 0)
INSERT [Gral].[tbEstadosCiviles] ([Esta_Id], [Esta_EstadoCivil], [Esta_UsuarioCreacion], [Esta_FechaCreacion], [Esta_UsuarioModificacion], [Esta_FechaModificacion], [Esta_Estado]) VALUES (33, N'xdsfafaf', 1, CAST(N'2024-04-11T08:50:13.717' AS DateTime), NULL, NULL, 0)
INSERT [Gral].[tbEstadosCiviles] ([Esta_Id], [Esta_EstadoCivil], [Esta_UsuarioCreacion], [Esta_FechaCreacion], [Esta_UsuarioModificacion], [Esta_FechaModificacion], [Esta_Estado]) VALUES (34, N'pruebausua', 4, CAST(N'2024-04-11T10:51:03.523' AS DateTime), NULL, CAST(N'2024-04-11T11:43:47.430' AS DateTime), 0)
INSERT [Gral].[tbEstadosCiviles] ([Esta_Id], [Esta_EstadoCivil], [Esta_UsuarioCreacion], [Esta_FechaCreacion], [Esta_UsuarioModificacion], [Esta_FechaModificacion], [Esta_Estado]) VALUES (35, N'Comidas', 4, CAST(N'2024-04-11T15:07:12.820' AS DateTime), 4, CAST(N'2024-04-11T15:33:14.890' AS DateTime), 0)
INSERT [Gral].[tbEstadosCiviles] ([Esta_Id], [Esta_EstadoCivil], [Esta_UsuarioCreacion], [Esta_FechaCreacion], [Esta_UsuarioModificacion], [Esta_FechaModificacion], [Esta_Estado]) VALUES (46, N'SIUUUUUAX', 4, CAST(N'2024-04-11T15:25:08.823' AS DateTime), 4, CAST(N'2024-04-11T15:31:40.270' AS DateTime), 0)
INSERT [Gral].[tbEstadosCiviles] ([Esta_Id], [Esta_EstadoCivil], [Esta_UsuarioCreacion], [Esta_FechaCreacion], [Esta_UsuarioModificacion], [Esta_FechaModificacion], [Esta_Estado]) VALUES (47, N'Yes', 4, CAST(N'2024-04-11T15:27:41.637' AS DateTime), 4, CAST(N'2024-04-11T15:28:03.477' AS DateTime), 0)
SET IDENTITY_INSERT [Gral].[tbEstadosCiviles] OFF
GO
INSERT [Gral].[tbMunicipios] ([Muni_Id], [Muni_Municipio], [Dept_Id], [Muni_UsuarioCreacion], [Muni_FechaCreacion], [Muni_UsuarioModificacion], [Muni_FechaModificacion], [Muni_Estado]) VALUES (N'01', N'San Pedro Sulaaaa', N'02', 1, CAST(N'2024-04-10T12:01:55.837' AS DateTime), 4, CAST(N'2024-04-12T12:03:08.017' AS DateTime), 1)
INSERT [Gral].[tbMunicipios] ([Muni_Id], [Muni_Municipio], [Dept_Id], [Muni_UsuarioCreacion], [Muni_FechaCreacion], [Muni_UsuarioModificacion], [Muni_FechaModificacion], [Muni_Estado]) VALUES (N'0482', N'Tocoa', N'01', 4, CAST(N'2024-04-11T21:11:40.160' AS DateTime), 4, CAST(N'2024-04-11T21:43:01.170' AS DateTime), 1)
INSERT [Gral].[tbMunicipios] ([Muni_Id], [Muni_Municipio], [Dept_Id], [Muni_UsuarioCreacion], [Muni_FechaCreacion], [Muni_UsuarioModificacion], [Muni_FechaModificacion], [Muni_Estado]) VALUES (N'0511', N'Villanueva', N'01', 1, CAST(N'2024-04-10T12:01:55.837' AS DateTime), NULL, NULL, 1)
INSERT [Gral].[tbMunicipios] ([Muni_Id], [Muni_Municipio], [Dept_Id], [Muni_UsuarioCreacion], [Muni_FechaCreacion], [Muni_UsuarioModificacion], [Muni_FechaModificacion], [Muni_Estado]) VALUES (N'0611', N'Colon', N'01', 1, CAST(N'2024-04-10T12:01:55.837' AS DateTime), NULL, NULL, 1)
INSERT [Gral].[tbMunicipios] ([Muni_Id], [Muni_Municipio], [Dept_Id], [Muni_UsuarioCreacion], [Muni_FechaCreacion], [Muni_UsuarioModificacion], [Muni_FechaModificacion], [Muni_Estado]) VALUES (N'3949', N'Lima', N'02', 4, CAST(N'2024-04-12T09:32:39.150' AS DateTime), NULL, NULL, 1)
GO
SET IDENTITY_INSERT [Gral].[tbPersonas] ON 

INSERT [Gral].[tbPersonas] ([Pers_Id], [Pers_DNI], [Pers_Nombres], [Pers_Apellidos], [Pers_Sexo], [Pers_DireccionExacta], [Esta_Id], [Colo_Id], [Pers_UsuarioCreacion], [Pers_FechaCreacion], [Pers_UsuarioModificacion], [Pers_FechaModificacion], [Pers_Estado], [Pers_FechaNacimiento]) VALUES (1, N'1804200502571', N'Sua Abigail', N'Rubio Euceda', N'F', N'Valle, San Pedro Sula, Cortes', 10, 1, 1, CAST(N'2024-04-10T12:01:55.837' AS DateTime), 4, CAST(N'2024-04-11T19:51:11.107' AS DateTime), 1, CAST(N'2024-04-08' AS Date))
INSERT [Gral].[tbPersonas] ([Pers_Id], [Pers_DNI], [Pers_Nombres], [Pers_Apellidos], [Pers_Sexo], [Pers_DireccionExacta], [Esta_Id], [Colo_Id], [Pers_UsuarioCreacion], [Pers_FechaCreacion], [Pers_UsuarioModificacion], [Pers_FechaModificacion], [Pers_Estado], [Pers_FechaNacimiento]) VALUES (2, N'0511200500732', N'Eduardo', N'Varela', N'M', N'Valle,Honduras', 26, 1, 1, CAST(N'2024-04-10T12:01:55.837' AS DateTime), 4, CAST(N'2024-04-11T19:39:15.427' AS DateTime), 1, CAST(N'2024-04-15' AS Date))
INSERT [Gral].[tbPersonas] ([Pers_Id], [Pers_DNI], [Pers_Nombres], [Pers_Apellidos], [Pers_Sexo], [Pers_DireccionExacta], [Esta_Id], [Colo_Id], [Pers_UsuarioCreacion], [Pers_FechaCreacion], [Pers_UsuarioModificacion], [Pers_FechaModificacion], [Pers_Estado], [Pers_FechaNacimiento]) VALUES (3, N'0611200500732', N'Jezer', N'Salinas', N'M', N'Valle,Honduras', 26, 1, 1, CAST(N'2024-04-10T12:01:55.837' AS DateTime), 4, CAST(N'2024-04-11T19:39:36.003' AS DateTime), 1, CAST(N'2024-04-25' AS Date))
INSERT [Gral].[tbPersonas] ([Pers_Id], [Pers_DNI], [Pers_Nombres], [Pers_Apellidos], [Pers_Sexo], [Pers_DireccionExacta], [Esta_Id], [Colo_Id], [Pers_UsuarioCreacion], [Pers_FechaCreacion], [Pers_UsuarioModificacion], [Pers_FechaModificacion], [Pers_Estado], [Pers_FechaNacimiento]) VALUES (4, N'0511200900824', N'Lizeth', N'Salinas', N'M', N'Valle,Crack', 10, 1, 1, CAST(N'2024-04-10T12:01:55.837' AS DateTime), 4, CAST(N'2024-04-11T19:39:23.237' AS DateTime), 1, CAST(N'2024-04-08' AS Date))
INSERT [Gral].[tbPersonas] ([Pers_Id], [Pers_DNI], [Pers_Nombres], [Pers_Apellidos], [Pers_Sexo], [Pers_DireccionExacta], [Esta_Id], [Colo_Id], [Pers_UsuarioCreacion], [Pers_FechaCreacion], [Pers_UsuarioModificacion], [Pers_FechaModificacion], [Pers_Estado], [Pers_FechaNacimiento]) VALUES (5, N'06112006744453', N'JavierXDDD', N'Muñoz', N'M', N'El Calan', 10, 3, 1, CAST(N'2024-04-08T10:46:14.403' AS DateTime), 4, CAST(N'2024-04-11T19:39:40.983' AS DateTime), 0, CAST(N'2024-04-02' AS Date))
INSERT [Gral].[tbPersonas] ([Pers_Id], [Pers_DNI], [Pers_Nombres], [Pers_Apellidos], [Pers_Sexo], [Pers_DireccionExacta], [Esta_Id], [Colo_Id], [Pers_UsuarioCreacion], [Pers_FechaCreacion], [Pers_UsuarioModificacion], [Pers_FechaModificacion], [Pers_Estado], [Pers_FechaNacimiento]) VALUES (6, N'0', N'Anonimo', N'Anonimo', N'M', N'Anonimo', 10, 2, 1, CAST(N'2024-04-08T19:19:06.617' AS DateTime), NULL, NULL, 1, CAST(N'2024-01-01' AS Date))
INSERT [Gral].[tbPersonas] ([Pers_Id], [Pers_DNI], [Pers_Nombres], [Pers_Apellidos], [Pers_Sexo], [Pers_DireccionExacta], [Esta_Id], [Colo_Id], [Pers_UsuarioCreacion], [Pers_FechaCreacion], [Pers_UsuarioModificacion], [Pers_FechaModificacion], [Pers_Estado], [Pers_FechaNacimiento]) VALUES (7, N'1111111111111', N'Javier', N'xd', N'F', N'El Calan', 10, 3, 4, CAST(N'2024-04-11T16:15:56.153' AS DateTime), 4, CAST(N'2024-04-11T19:35:46.697' AS DateTime), 0, CAST(N'2024-04-13' AS Date))
INSERT [Gral].[tbPersonas] ([Pers_Id], [Pers_DNI], [Pers_Nombres], [Pers_Apellidos], [Pers_Sexo], [Pers_DireccionExacta], [Esta_Id], [Colo_Id], [Pers_UsuarioCreacion], [Pers_FechaCreacion], [Pers_UsuarioModificacion], [Pers_FechaModificacion], [Pers_Estado], [Pers_FechaNacimiento]) VALUES (9, N'0711200500732', N'Carlos', N'Javier', N'F', N'EL calan', 10, 1, 4, CAST(N'2024-04-11T22:55:23.063' AS DateTime), NULL, NULL, 1, CAST(N'2024-04-13' AS Date))
INSERT [Gral].[tbPersonas] ([Pers_Id], [Pers_DNI], [Pers_Nombres], [Pers_Apellidos], [Pers_Sexo], [Pers_DireccionExacta], [Esta_Id], [Colo_Id], [Pers_UsuarioCreacion], [Pers_FechaCreacion], [Pers_UsuarioModificacion], [Pers_FechaModificacion], [Pers_Estado], [Pers_FechaNacimiento]) VALUES (10, N'4145151515145', N'Carlos', N'Jose', N'F', N'Anonimo', 10, 1, 3, CAST(N'2024-04-12T01:37:41.230' AS DateTime), NULL, NULL, 1, CAST(N'2024-04-10' AS Date))
INSERT [Gral].[tbPersonas] ([Pers_Id], [Pers_DNI], [Pers_Nombres], [Pers_Apellidos], [Pers_Sexo], [Pers_DireccionExacta], [Esta_Id], [Colo_Id], [Pers_UsuarioCreacion], [Pers_FechaCreacion], [Pers_UsuarioModificacion], [Pers_FechaModificacion], [Pers_Estado], [Pers_FechaNacimiento]) VALUES (11, N'0512512515252', N'Maria', N'Javier', N'F', N'Anonimo', 26, 1, 3, CAST(N'2024-04-12T01:52:23.470' AS DateTime), NULL, NULL, 1, CAST(N'2024-04-27' AS Date))
INSERT [Gral].[tbPersonas] ([Pers_Id], [Pers_DNI], [Pers_Nombres], [Pers_Apellidos], [Pers_Sexo], [Pers_DireccionExacta], [Esta_Id], [Colo_Id], [Pers_UsuarioCreacion], [Pers_FechaCreacion], [Pers_UsuarioModificacion], [Pers_FechaModificacion], [Pers_Estado], [Pers_FechaNacimiento]) VALUES (12, N'0485038503950', N'Carlos', N'Javier', N'F', N'EL calan', 10, 1, 3, CAST(N'2024-04-12T02:42:42.800' AS DateTime), NULL, NULL, 1, CAST(N'2024-04-19' AS Date))
INSERT [Gral].[tbPersonas] ([Pers_Id], [Pers_DNI], [Pers_Nombres], [Pers_Apellidos], [Pers_Sexo], [Pers_DireccionExacta], [Esta_Id], [Colo_Id], [Pers_UsuarioCreacion], [Pers_FechaCreacion], [Pers_UsuarioModificacion], [Pers_FechaModificacion], [Pers_Estado], [Pers_FechaNacimiento]) VALUES (13, N'2312321', N'sadad', N'sdgf', N'F', N'dfsdf', 10, 1, 1, CAST(N'2024-04-12T08:58:53.690' AS DateTime), NULL, NULL, 1, CAST(N'2024-04-18' AS Date))
SET IDENTITY_INSERT [Gral].[tbPersonas] OFF
GO
SET IDENTITY_INSERT [Rpts].[tbAccidentes] ON 

INSERT [Rpts].[tbAccidentes] ([Acci_Id], [Acci_Accidente], [Acci_UsuarioCreacion], [Acci_FechaCreacion], [Acci_UsuarioModificacion], [Acci_FechaModificacion], [Acci_Estado]) VALUES (1, N'Choque', 1, CAST(N'2024-04-10T12:01:55.837' AS DateTime), 2, CAST(N'2024-04-10T09:51:17.000' AS DateTime), 1)
INSERT [Rpts].[tbAccidentes] ([Acci_Id], [Acci_Accidente], [Acci_UsuarioCreacion], [Acci_FechaCreacion], [Acci_UsuarioModificacion], [Acci_FechaModificacion], [Acci_Estado]) VALUES (2, N'Asalto2', 1, CAST(N'2024-04-10T12:01:55.837' AS DateTime), 4, CAST(N'2024-04-11T22:50:29.473' AS DateTime), 1)
INSERT [Rpts].[tbAccidentes] ([Acci_Id], [Acci_Accidente], [Acci_UsuarioCreacion], [Acci_FechaCreacion], [Acci_UsuarioModificacion], [Acci_FechaModificacion], [Acci_Estado]) VALUES (3, N'Pelea', 1, CAST(N'2024-04-10T12:01:55.837' AS DateTime), NULL, NULL, 1)
INSERT [Rpts].[tbAccidentes] ([Acci_Id], [Acci_Accidente], [Acci_UsuarioCreacion], [Acci_FechaCreacion], [Acci_UsuarioModificacion], [Acci_FechaModificacion], [Acci_Estado]) VALUES (4, N'Caida de vehiculoss', 1, CAST(N'2024-04-07T12:15:04.790' AS DateTime), 1, CAST(N'2024-04-07T12:30:25.587' AS DateTime), 1)
INSERT [Rpts].[tbAccidentes] ([Acci_Id], [Acci_Accidente], [Acci_UsuarioCreacion], [Acci_FechaCreacion], [Acci_UsuarioModificacion], [Acci_FechaModificacion], [Acci_Estado]) VALUES (5, N'Resbaloo', 1, CAST(N'2024-04-10T12:01:04.230' AS DateTime), 1, CAST(N'2024-04-10T12:01:08.983' AS DateTime), 0)
INSERT [Rpts].[tbAccidentes] ([Acci_Id], [Acci_Accidente], [Acci_UsuarioCreacion], [Acci_FechaCreacion], [Acci_UsuarioModificacion], [Acci_FechaModificacion], [Acci_Estado]) VALUES (6, N'Otros', 1, CAST(N'2024-04-10T12:01:55.837' AS DateTime), NULL, NULL, 1)
INSERT [Rpts].[tbAccidentes] ([Acci_Id], [Acci_Accidente], [Acci_UsuarioCreacion], [Acci_FechaCreacion], [Acci_UsuarioModificacion], [Acci_FechaModificacion], [Acci_Estado]) VALUES (7, N'Resbalonnn', 1, CAST(N'2024-04-11T12:21:45.867' AS DateTime), 1, CAST(N'2024-04-11T12:22:23.227' AS DateTime), 0)
SET IDENTITY_INSERT [Rpts].[tbAccidentes] OFF
GO
SET IDENTITY_INSERT [Rpts].[tbDesastres] ON 

INSERT [Rpts].[tbDesastres] ([Desa_Id], [Desa_Desastre], [Desa_UsuarioCreacion], [Desa_FechaCreacion], [Desa_UsuarioModificacion], [Desa_FechaModificacion], [Desa_Estado]) VALUES (1, N'Tsunamixd', 1, CAST(N'2024-04-10T12:01:55.837' AS DateTime), 4, CAST(N'2024-04-11T22:23:48.450' AS DateTime), 1)
INSERT [Rpts].[tbDesastres] ([Desa_Id], [Desa_Desastre], [Desa_UsuarioCreacion], [Desa_FechaCreacion], [Desa_UsuarioModificacion], [Desa_FechaModificacion], [Desa_Estado]) VALUES (2, N'Terremoto', 1, CAST(N'2024-04-10T12:01:55.837' AS DateTime), NULL, NULL, 1)
INSERT [Rpts].[tbDesastres] ([Desa_Id], [Desa_Desastre], [Desa_UsuarioCreacion], [Desa_FechaCreacion], [Desa_UsuarioModificacion], [Desa_FechaModificacion], [Desa_Estado]) VALUES (3, N'Inundacionn', 1, CAST(N'2024-04-07T16:22:17.240' AS DateTime), 1, CAST(N'2024-04-07T16:22:21.473' AS DateTime), 0)
INSERT [Rpts].[tbDesastres] ([Desa_Id], [Desa_Desastre], [Desa_UsuarioCreacion], [Desa_FechaCreacion], [Desa_UsuarioModificacion], [Desa_FechaModificacion], [Desa_Estado]) VALUES (4, N'XD', 1, CAST(N'2024-04-08T11:51:27.050' AS DateTime), NULL, NULL, 0)
INSERT [Rpts].[tbDesastres] ([Desa_Id], [Desa_Desastre], [Desa_UsuarioCreacion], [Desa_FechaCreacion], [Desa_UsuarioModificacion], [Desa_FechaModificacion], [Desa_Estado]) VALUES (5, N'Inundacion', 1, CAST(N'2024-04-10T12:01:55.837' AS DateTime), 1, CAST(N'2024-04-10T12:02:15.343' AS DateTime), 1)
INSERT [Rpts].[tbDesastres] ([Desa_Id], [Desa_Desastre], [Desa_UsuarioCreacion], [Desa_FechaCreacion], [Desa_UsuarioModificacion], [Desa_FechaModificacion], [Desa_Estado]) VALUES (6, N'Otros', 1, CAST(N'2024-04-10T12:01:55.837' AS DateTime), NULL, NULL, 1)
INSERT [Rpts].[tbDesastres] ([Desa_Id], [Desa_Desastre], [Desa_UsuarioCreacion], [Desa_FechaCreacion], [Desa_UsuarioModificacion], [Desa_FechaModificacion], [Desa_Estado]) VALUES (7, N'xsdfs', 4, CAST(N'2024-04-11T22:23:06.940' AS DateTime), 4, CAST(N'2024-04-11T22:25:05.630' AS DateTime), 0)
INSERT [Rpts].[tbDesastres] ([Desa_Id], [Desa_Desastre], [Desa_UsuarioCreacion], [Desa_FechaCreacion], [Desa_UsuarioModificacion], [Desa_FechaModificacion], [Desa_Estado]) VALUES (8, N'Ataque', 4, CAST(N'2024-04-11T22:48:48.740' AS DateTime), NULL, NULL, 1)
SET IDENTITY_INSERT [Rpts].[tbDesastres] OFF
GO
SET IDENTITY_INSERT [Rpts].[tbEmergencias] ON 

INSERT [Rpts].[tbEmergencias] ([Emer_Id], [Emer_Emergencia], [Emer_UsuarioCreacion], [Emer_FechaCreacion], [Emer_UsuarioModificacion], [Emer_FechaModificacion], [Emer_Estado]) VALUES (1, N'Herida', 1, CAST(N'2024-04-10T12:01:55.837' AS DateTime), 2, CAST(N'2024-04-07T16:21:54.570' AS DateTime), 1)
INSERT [Rpts].[tbEmergencias] ([Emer_Id], [Emer_Emergencia], [Emer_UsuarioCreacion], [Emer_FechaCreacion], [Emer_UsuarioModificacion], [Emer_FechaModificacion], [Emer_Estado]) VALUES (2, N'Atropellamientoo', 1, CAST(N'2024-04-10T12:01:55.837' AS DateTime), 1, CAST(N'2024-04-07T16:21:54.570' AS DateTime), 1)
INSERT [Rpts].[tbEmergencias] ([Emer_Id], [Emer_Emergencia], [Emer_UsuarioCreacion], [Emer_FechaCreacion], [Emer_UsuarioModificacion], [Emer_FechaModificacion], [Emer_Estado]) VALUES (3, N'Caidaa', 1, CAST(N'2024-04-07T16:15:05.683' AS DateTime), NULL, NULL, 1)
INSERT [Rpts].[tbEmergencias] ([Emer_Id], [Emer_Emergencia], [Emer_UsuarioCreacion], [Emer_FechaCreacion], [Emer_UsuarioModificacion], [Emer_FechaModificacion], [Emer_Estado]) VALUES (4, N'xd', 1, CAST(N'2024-04-10T12:01:55.837' AS DateTime), NULL, NULL, 0)
INSERT [Rpts].[tbEmergencias] ([Emer_Id], [Emer_Emergencia], [Emer_UsuarioCreacion], [Emer_FechaCreacion], [Emer_UsuarioModificacion], [Emer_FechaModificacion], [Emer_Estado]) VALUES (5, N'Telefono robado', 1, CAST(N'2024-04-10T12:01:55.837' AS DateTime), NULL, NULL, 1)
INSERT [Rpts].[tbEmergencias] ([Emer_Id], [Emer_Emergencia], [Emer_UsuarioCreacion], [Emer_FechaCreacion], [Emer_UsuarioModificacion], [Emer_FechaModificacion], [Emer_Estado]) VALUES (6, N'Otros', 1, CAST(N'2024-04-10T12:01:55.837' AS DateTime), NULL, NULL, 1)
INSERT [Rpts].[tbEmergencias] ([Emer_Id], [Emer_Emergencia], [Emer_UsuarioCreacion], [Emer_FechaCreacion], [Emer_UsuarioModificacion], [Emer_FechaModificacion], [Emer_Estado]) VALUES (7, N'XFDFAF', 1, CAST(N'2024-04-10T12:01:55.837' AS DateTime), NULL, NULL, 0)
INSERT [Rpts].[tbEmergencias] ([Emer_Id], [Emer_Emergencia], [Emer_UsuarioCreacion], [Emer_FechaCreacion], [Emer_UsuarioModificacion], [Emer_FechaModificacion], [Emer_Estado]) VALUES (8, N'asesinatozo', 1, CAST(N'2024-04-10T12:01:31.883' AS DateTime), 4, CAST(N'2024-04-12T12:02:38.027' AS DateTime), 1)
INSERT [Rpts].[tbEmergencias] ([Emer_Id], [Emer_Emergencia], [Emer_UsuarioCreacion], [Emer_FechaCreacion], [Emer_UsuarioModificacion], [Emer_FechaModificacion], [Emer_Estado]) VALUES (9, N'Golpes', 1, CAST(N'2024-04-10T12:01:55.837' AS DateTime), NULL, NULL, 1)
INSERT [Rpts].[tbEmergencias] ([Emer_Id], [Emer_Emergencia], [Emer_UsuarioCreacion], [Emer_FechaCreacion], [Emer_UsuarioModificacion], [Emer_FechaModificacion], [Emer_Estado]) VALUES (10, N'Pelea callejeraa', 1, CAST(N'2024-04-11T12:24:07.653' AS DateTime), 1, CAST(N'2024-04-11T12:24:14.387' AS DateTime), 1)
INSERT [Rpts].[tbEmergencias] ([Emer_Id], [Emer_Emergencia], [Emer_UsuarioCreacion], [Emer_FechaCreacion], [Emer_UsuarioModificacion], [Emer_FechaModificacion], [Emer_Estado]) VALUES (11, N'sdadfafxczcc', 4, CAST(N'2024-04-11T22:41:43.063' AS DateTime), 4, CAST(N'2024-04-11T22:41:50.073' AS DateTime), 0)
INSERT [Rpts].[tbEmergencias] ([Emer_Id], [Emer_Emergencia], [Emer_UsuarioCreacion], [Emer_FechaCreacion], [Emer_UsuarioModificacion], [Emer_FechaModificacion], [Emer_Estado]) VALUES (12, N'Asesinanto', 4, CAST(N'2024-04-11T22:49:10.360' AS DateTime), NULL, NULL, 0)
SET IDENTITY_INSERT [Rpts].[tbEmergencias] OFF
GO
SET IDENTITY_INSERT [Rpts].[tbImagenesPorReportes] ON 

INSERT [Rpts].[tbImagenesPorReportes] ([ImRe_Id], [Repo_Id], [ImRe_Imagen], [ImRe_Difo]) VALUES (188, 155, N'c9df786f-fb5b-4193-bcfe-296f223afc10.jpg', 1)
INSERT [Rpts].[tbImagenesPorReportes] ([ImRe_Id], [Repo_Id], [ImRe_Imagen], [ImRe_Difo]) VALUES (189, 155, N'2d9b61ec-1602-4825-a3d7-e4fadfedac62.webp', 1)
INSERT [Rpts].[tbImagenesPorReportes] ([ImRe_Id], [Repo_Id], [ImRe_Imagen], [ImRe_Difo]) VALUES (190, 155, N'5e4a2c76-7528-4f02-90a9-cc5d0dbc5ff9.png', 1)
INSERT [Rpts].[tbImagenesPorReportes] ([ImRe_Id], [Repo_Id], [ImRe_Imagen], [ImRe_Difo]) VALUES (191, 155, N'a1f3fc5b-599d-444b-b2a6-ab2037496f63.png', 1)
INSERT [Rpts].[tbImagenesPorReportes] ([ImRe_Id], [Repo_Id], [ImRe_Imagen], [ImRe_Difo]) VALUES (192, 155, N'2721d30a-c84e-47a0-886d-f305345a4133.jpg', 1)
INSERT [Rpts].[tbImagenesPorReportes] ([ImRe_Id], [Repo_Id], [ImRe_Imagen], [ImRe_Difo]) VALUES (193, 155, N'c04fd881-c1c6-42cf-9205-f36093099b7a.jpg', 1)
INSERT [Rpts].[tbImagenesPorReportes] ([ImRe_Id], [Repo_Id], [ImRe_Imagen], [ImRe_Difo]) VALUES (194, 155, N'fe6449c6-ee17-4fd8-9533-917178d32f5e.png', 1)
INSERT [Rpts].[tbImagenesPorReportes] ([ImRe_Id], [Repo_Id], [ImRe_Imagen], [ImRe_Difo]) VALUES (196, 157, N'a74c6d1d-3999-4073-b293-d384fa728258.png', 1)
INSERT [Rpts].[tbImagenesPorReportes] ([ImRe_Id], [Repo_Id], [ImRe_Imagen], [ImRe_Difo]) VALUES (197, 158, N'4d796a98-eaf8-4b14-9cb1-72c2936df49a.png', 1)
INSERT [Rpts].[tbImagenesPorReportes] ([ImRe_Id], [Repo_Id], [ImRe_Imagen], [ImRe_Difo]) VALUES (198, 158, N'1dffee76-c5c0-4ae1-be36-a428ebc33a62.jpg', 1)
INSERT [Rpts].[tbImagenesPorReportes] ([ImRe_Id], [Repo_Id], [ImRe_Imagen], [ImRe_Difo]) VALUES (199, 159, N'10a1976a-8b95-4452-be5f-cf80f1c4c225.webp', 1)
INSERT [Rpts].[tbImagenesPorReportes] ([ImRe_Id], [Repo_Id], [ImRe_Imagen], [ImRe_Difo]) VALUES (200, 157, N'4605b2ed-9178-44a1-8a09-952ef83ebae8.jpg', 1)
INSERT [Rpts].[tbImagenesPorReportes] ([ImRe_Id], [Repo_Id], [ImRe_Imagen], [ImRe_Difo]) VALUES (201, 155, N'd38c8245-b492-4909-9edd-273e2c091f10.jpg', 1)
INSERT [Rpts].[tbImagenesPorReportes] ([ImRe_Id], [Repo_Id], [ImRe_Imagen], [ImRe_Difo]) VALUES (202, 157, N'80e66a8d-59ee-4a07-bc39-585ae8790c1c.jpg', 1)
INSERT [Rpts].[tbImagenesPorReportes] ([ImRe_Id], [Repo_Id], [ImRe_Imagen], [ImRe_Difo]) VALUES (203, 162, N'1345e860-43a1-4b38-9443-3a5f841a5daf.jpeg', 1)
INSERT [Rpts].[tbImagenesPorReportes] ([ImRe_Id], [Repo_Id], [ImRe_Imagen], [ImRe_Difo]) VALUES (204, 162, N'0d6ed1a1-09a8-49e3-9221-5733735e67cf.jpg', 1)
INSERT [Rpts].[tbImagenesPorReportes] ([ImRe_Id], [Repo_Id], [ImRe_Imagen], [ImRe_Difo]) VALUES (205, 162, N'8841cbaa-cb0f-4833-8618-63c167db31ac.jpg', 1)
SET IDENTITY_INSERT [Rpts].[tbImagenesPorReportes] OFF
GO
SET IDENTITY_INSERT [Rpts].[tbImagenesPorReportesDesastres] ON 

INSERT [Rpts].[tbImagenesPorReportesDesastres] ([ImRD_Id], [ReDe_Id], [ImRD_Imagen]) VALUES (74, 93, N'e7a03ead-ba2c-4bee-89e6-bc680ab6c4e6.jpg')
INSERT [Rpts].[tbImagenesPorReportesDesastres] ([ImRD_Id], [ReDe_Id], [ImRD_Imagen]) VALUES (75, 94, N'471d218a-764a-40d2-a83e-3ce46a6f7ac1.jpg')
SET IDENTITY_INSERT [Rpts].[tbImagenesPorReportesDesastres] OFF
GO
SET IDENTITY_INSERT [Rpts].[tbMunicipiosPorReportes] ON 

INSERT [Rpts].[tbMunicipiosPorReportes] ([MuRe_Id], [Muni_Id], [ReDe_Id]) VALUES (64, N'01', 93)
INSERT [Rpts].[tbMunicipiosPorReportes] ([MuRe_Id], [Muni_Id], [ReDe_Id]) VALUES (65, N'0482', 93)
INSERT [Rpts].[tbMunicipiosPorReportes] ([MuRe_Id], [Muni_Id], [ReDe_Id]) VALUES (66, N'0511', 93)
INSERT [Rpts].[tbMunicipiosPorReportes] ([MuRe_Id], [Muni_Id], [ReDe_Id]) VALUES (67, N'0611', 93)
INSERT [Rpts].[tbMunicipiosPorReportes] ([MuRe_Id], [Muni_Id], [ReDe_Id]) VALUES (68, N'01', 95)
INSERT [Rpts].[tbMunicipiosPorReportes] ([MuRe_Id], [Muni_Id], [ReDe_Id]) VALUES (69, N'0482', 95)
INSERT [Rpts].[tbMunicipiosPorReportes] ([MuRe_Id], [Muni_Id], [ReDe_Id]) VALUES (70, N'0511', 95)
INSERT [Rpts].[tbMunicipiosPorReportes] ([MuRe_Id], [Muni_Id], [ReDe_Id]) VALUES (71, N'0611', 95)
SET IDENTITY_INSERT [Rpts].[tbMunicipiosPorReportes] OFF
GO
SET IDENTITY_INSERT [Rpts].[tbPersonasPorReportes] ON 

INSERT [Rpts].[tbPersonasPorReportes] ([PeRe_Id], [Pers_Id], [Repo_Id]) VALUES (23, 3, 155)
INSERT [Rpts].[tbPersonasPorReportes] ([PeRe_Id], [Pers_Id], [Repo_Id]) VALUES (24, 12, 155)
INSERT [Rpts].[tbPersonasPorReportes] ([PeRe_Id], [Pers_Id], [Repo_Id]) VALUES (25, 1, 155)
INSERT [Rpts].[tbPersonasPorReportes] ([PeRe_Id], [Pers_Id], [Repo_Id]) VALUES (26, 4, 155)
SET IDENTITY_INSERT [Rpts].[tbPersonasPorReportes] OFF
GO
SET IDENTITY_INSERT [Rpts].[tbReportes] ON 

INSERT [Rpts].[tbReportes] ([Repo_Id], [Repo_DNI], [Repo_Descripcion], [Repo_Fecha], [Repo_EstadoReporte], [AcEm_Id], [Colo_Id], [Repo_UsuarioCreacion], [Repo_FechaCreacion], [Repo_UsuarioModificacion], [Repo_FechaModificacion], [Repo_Estado], [Repo_Difo_Id], [Repo_Otros]) VALUES (155, N'0511200500732', N'425wfagagafg', CAST(N'2024-04-12T02:08:02.840' AS DateTime), 1, 2, 1, 1, CAST(N'2024-04-12T02:08:02.847' AS DateTime), 1, CAST(N'2024-04-12T10:00:28.893' AS DateTime), 1, 1, N'Asalto2')
INSERT [Rpts].[tbReportes] ([Repo_Id], [Repo_DNI], [Repo_Descripcion], [Repo_Fecha], [Repo_EstadoReporte], [AcEm_Id], [Colo_Id], [Repo_UsuarioCreacion], [Repo_FechaCreacion], [Repo_UsuarioModificacion], [Repo_FechaModificacion], [Repo_Estado], [Repo_Difo_Id], [Repo_Otros]) VALUES (156, N'0611200500732', N'425wfagagafg', CAST(N'2024-04-12T02:09:51.237' AS DateTime), 1, 6, 1, 1, CAST(N'2024-04-12T02:09:51.237' AS DateTime), 1, CAST(N'2024-04-12T05:34:22.437' AS DateTime), 1, 1, N'GOLPEEES')
INSERT [Rpts].[tbReportes] ([Repo_Id], [Repo_DNI], [Repo_Descripcion], [Repo_Fecha], [Repo_EstadoReporte], [AcEm_Id], [Colo_Id], [Repo_UsuarioCreacion], [Repo_FechaCreacion], [Repo_UsuarioModificacion], [Repo_FechaModificacion], [Repo_Estado], [Repo_Difo_Id], [Repo_Otros]) VALUES (157, N'1804200502571', N'Choque Gravefagag', CAST(N'2024-04-12T03:11:38.663' AS DateTime), 1, 9, 1, 1, CAST(N'2024-04-12T03:11:38.663' AS DateTime), 1, CAST(N'2024-04-12T07:40:28.827' AS DateTime), 0, 2, N'Golpes')
INSERT [Rpts].[tbReportes] ([Repo_Id], [Repo_DNI], [Repo_Descripcion], [Repo_Fecha], [Repo_EstadoReporte], [AcEm_Id], [Colo_Id], [Repo_UsuarioCreacion], [Repo_FechaCreacion], [Repo_UsuarioModificacion], [Repo_FechaModificacion], [Repo_Estado], [Repo_Difo_Id], [Repo_Otros]) VALUES (158, N'1804200502571', N'Choque Grave', CAST(N'2024-04-12T03:24:24.617' AS DateTime), 0, 2, 4, 1, CAST(N'2024-04-12T03:24:24.617' AS DateTime), NULL, NULL, 0, 2, N'Atropellamientoo')
INSERT [Rpts].[tbReportes] ([Repo_Id], [Repo_DNI], [Repo_Descripcion], [Repo_Fecha], [Repo_EstadoReporte], [AcEm_Id], [Colo_Id], [Repo_UsuarioCreacion], [Repo_FechaCreacion], [Repo_UsuarioModificacion], [Repo_FechaModificacion], [Repo_Estado], [Repo_Difo_Id], [Repo_Otros]) VALUES (159, N'0611200500732', N'425wfagagafg', CAST(N'2024-04-12T03:25:47.430' AS DateTime), 0, 8, 5, 1, CAST(N'2024-04-12T03:25:47.430' AS DateTime), NULL, NULL, 0, 2, N'asesinato')
INSERT [Rpts].[tbReportes] ([Repo_Id], [Repo_DNI], [Repo_Descripcion], [Repo_Fecha], [Repo_EstadoReporte], [AcEm_Id], [Colo_Id], [Repo_UsuarioCreacion], [Repo_FechaCreacion], [Repo_UsuarioModificacion], [Repo_FechaModificacion], [Repo_Estado], [Repo_Difo_Id], [Repo_Otros]) VALUES (160, N'1804200502571', N'Choque en el semaforo 34', CAST(N'2024-04-12T09:14:02.090' AS DateTime), 1, 1, 1, 1, CAST(N'2024-04-12T09:14:02.093' AS DateTime), NULL, NULL, 1, 1, N'Tsunamixd')
INSERT [Rpts].[tbReportes] ([Repo_Id], [Repo_DNI], [Repo_Descripcion], [Repo_Fecha], [Repo_EstadoReporte], [AcEm_Id], [Colo_Id], [Repo_UsuarioCreacion], [Repo_FechaCreacion], [Repo_UsuarioModificacion], [Repo_FechaModificacion], [Repo_Estado], [Repo_Difo_Id], [Repo_Otros]) VALUES (161, N'1804200502571', N'Preuba25', CAST(N'2024-04-12T09:31:40.210' AS DateTime), 1, 2, 3, 1, CAST(N'2024-04-12T09:31:40.213' AS DateTime), NULL, NULL, 1, 1, N'Asalto2')
INSERT [Rpts].[tbReportes] ([Repo_Id], [Repo_DNI], [Repo_Descripcion], [Repo_Fecha], [Repo_EstadoReporte], [AcEm_Id], [Colo_Id], [Repo_UsuarioCreacion], [Repo_FechaCreacion], [Repo_UsuarioModificacion], [Repo_FechaModificacion], [Repo_Estado], [Repo_Difo_Id], [Repo_Otros]) VALUES (162, N'0511200500732', N'Choquexddddd', CAST(N'2024-04-12T11:46:04.887' AS DateTime), 1, 6, 7, 1, CAST(N'2024-04-12T11:46:04.887' AS DateTime), NULL, NULL, 1, 1, N'Caida')
INSERT [Rpts].[tbReportes] ([Repo_Id], [Repo_DNI], [Repo_Descripcion], [Repo_Fecha], [Repo_EstadoReporte], [AcEm_Id], [Colo_Id], [Repo_UsuarioCreacion], [Repo_FechaCreacion], [Repo_UsuarioModificacion], [Repo_FechaModificacion], [Repo_Estado], [Repo_Difo_Id], [Repo_Otros]) VALUES (163, N'0511200500732', N'Asaltooo', CAST(N'2024-04-12T11:48:16.400' AS DateTime), 1, 6, 3, 1, CAST(N'2024-04-12T11:48:16.400' AS DateTime), NULL, NULL, 1, 1, N'Caida')
INSERT [Rpts].[tbReportes] ([Repo_Id], [Repo_DNI], [Repo_Descripcion], [Repo_Fecha], [Repo_EstadoReporte], [AcEm_Id], [Colo_Id], [Repo_UsuarioCreacion], [Repo_FechaCreacion], [Repo_UsuarioModificacion], [Repo_FechaModificacion], [Repo_Estado], [Repo_Difo_Id], [Repo_Otros]) VALUES (164, N'0511200500732', N'Asaltooo', CAST(N'2024-04-12T11:48:53.937' AS DateTime), 0, 8, 2, 1, CAST(N'2024-04-12T11:48:53.937' AS DateTime), NULL, NULL, 1, 2, N'asesinato')
SET IDENTITY_INSERT [Rpts].[tbReportes] OFF
GO
SET IDENTITY_INSERT [Rpts].[tbReportesPorDesastres] ON 

INSERT [Rpts].[tbReportesPorDesastres] ([ReDe_Id], [ReDe_DNI], [ReDe_Descripcion], [ReDe_Fecha], [ReDe_EstadoReporte], [Desa_Id], [ReDe_UsuarioCreacion], [ReDe_FechaCreacion], [ReDe_UsuarioModificacion], [ReDe_FechaModificacion], [ReDe_Estado], [Repo_Difo_Id], [Repo_Otros]) VALUES (88, N'0511200500732', N'MINEFUNCIONANDOOO2', CAST(N'2024-04-12T02:44:25.233' AS DateTime), 1, 6, 1, CAST(N'2024-04-12T02:44:25.233' AS DateTime), NULL, NULL, 0, 3, N'GRAN TSUNAMI')
INSERT [Rpts].[tbReportesPorDesastres] ([ReDe_Id], [ReDe_DNI], [ReDe_Descripcion], [ReDe_Fecha], [ReDe_EstadoReporte], [Desa_Id], [ReDe_UsuarioCreacion], [ReDe_FechaCreacion], [ReDe_UsuarioModificacion], [ReDe_FechaModificacion], [ReDe_Estado], [Repo_Difo_Id], [Repo_Otros]) VALUES (89, N'0611200500732', N'Terremeto', CAST(N'2024-04-12T03:05:06.007' AS DateTime), 1, 8, 1, CAST(N'2024-04-12T03:05:06.007' AS DateTime), NULL, NULL, 1, 3, N'Ataque')
INSERT [Rpts].[tbReportesPorDesastres] ([ReDe_Id], [ReDe_DNI], [ReDe_Descripcion], [ReDe_Fecha], [ReDe_EstadoReporte], [Desa_Id], [ReDe_UsuarioCreacion], [ReDe_FechaCreacion], [ReDe_UsuarioModificacion], [ReDe_FechaModificacion], [ReDe_Estado], [Repo_Difo_Id], [Repo_Otros]) VALUES (90, N'0611200500732', N'MINEFUNCIONANDOOO2', CAST(N'2024-04-12T03:07:05.553' AS DateTime), 1, 2, 1, CAST(N'2024-04-12T03:07:05.553' AS DateTime), NULL, NULL, 1, 3, N'Terremoto')
INSERT [Rpts].[tbReportesPorDesastres] ([ReDe_Id], [ReDe_DNI], [ReDe_Descripcion], [ReDe_Fecha], [ReDe_EstadoReporte], [Desa_Id], [ReDe_UsuarioCreacion], [ReDe_FechaCreacion], [ReDe_UsuarioModificacion], [ReDe_FechaModificacion], [ReDe_Estado], [Repo_Difo_Id], [Repo_Otros]) VALUES (91, N'1804200502571', N'Vi un telefono robado', CAST(N'2024-04-12T03:09:39.653' AS DateTime), 0, 3, 1, CAST(N'2024-04-12T03:09:39.653' AS DateTime), NULL, NULL, 1, 3, N'Inundacionn')
INSERT [Rpts].[tbReportesPorDesastres] ([ReDe_Id], [ReDe_DNI], [ReDe_Descripcion], [ReDe_Fecha], [ReDe_EstadoReporte], [Desa_Id], [ReDe_UsuarioCreacion], [ReDe_FechaCreacion], [ReDe_UsuarioModificacion], [ReDe_FechaModificacion], [ReDe_Estado], [Repo_Difo_Id], [Repo_Otros]) VALUES (92, N'0511200500732', N'Gran Tsunami otra vez', CAST(N'2024-04-12T03:13:32.190' AS DateTime), 1, 1, 1, CAST(N'2024-04-12T03:13:32.190' AS DateTime), NULL, NULL, 0, 3, N'Tsunamixd')
INSERT [Rpts].[tbReportesPorDesastres] ([ReDe_Id], [ReDe_DNI], [ReDe_Descripcion], [ReDe_Fecha], [ReDe_EstadoReporte], [Desa_Id], [ReDe_UsuarioCreacion], [ReDe_FechaCreacion], [ReDe_UsuarioModificacion], [ReDe_FechaModificacion], [ReDe_Estado], [Repo_Difo_Id], [Repo_Otros]) VALUES (93, N'0511200500732', N'MINEFUNCIONANDOOO2', CAST(N'2024-04-12T03:24:56.747' AS DateTime), 1, 4, 1, CAST(N'2024-04-12T03:24:56.747' AS DateTime), NULL, NULL, 0, 3, N'XD')
INSERT [Rpts].[tbReportesPorDesastres] ([ReDe_Id], [ReDe_DNI], [ReDe_Descripcion], [ReDe_Fecha], [ReDe_EstadoReporte], [Desa_Id], [ReDe_UsuarioCreacion], [ReDe_FechaCreacion], [ReDe_UsuarioModificacion], [ReDe_FechaModificacion], [ReDe_Estado], [Repo_Difo_Id], [Repo_Otros]) VALUES (94, N'0611200500732', N'Vi un telefono robado', CAST(N'2024-04-12T03:25:23.107' AS DateTime), 1, 3, 1, CAST(N'2024-04-12T03:25:23.107' AS DateTime), NULL, NULL, 0, 3, N'Inundacionn')
INSERT [Rpts].[tbReportesPorDesastres] ([ReDe_Id], [ReDe_DNI], [ReDe_Descripcion], [ReDe_Fecha], [ReDe_EstadoReporte], [Desa_Id], [ReDe_UsuarioCreacion], [ReDe_FechaCreacion], [ReDe_UsuarioModificacion], [ReDe_FechaModificacion], [ReDe_Estado], [Repo_Difo_Id], [Repo_Otros]) VALUES (95, N'2312321', N'carro', CAST(N'2024-04-12T08:59:08.540' AS DateTime), 0, 8, 1, CAST(N'2024-04-12T08:59:08.540' AS DateTime), NULL, NULL, 1, 3, N'Ataque')
SET IDENTITY_INSERT [Rpts].[tbReportesPorDesastres] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ_Rol_Rol]    Script Date: 15/4/2024 09:11:56 ******/
ALTER TABLE [Accs].[tbRoles] ADD  CONSTRAINT [UQ_Rol_Rol] UNIQUE NONCLUSTERED 
(
	[Rol_Rol] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__tbUsuari__9ED44AB43C858F8F]    Script Date: 15/4/2024 09:11:56 ******/
ALTER TABLE [Accs].[tbUsuarios] ADD UNIQUE NONCLUSTERED 
(
	[Usua_Usuario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__tbDepart__0CCDB8E78E1D14FB]    Script Date: 15/4/2024 09:11:56 ******/
ALTER TABLE [Gral].[tbDepartamentos] ADD UNIQUE NONCLUSTERED 
(
	[Dept_Departamento] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__tbEstado__08176EFB98E90AAA]    Script Date: 15/4/2024 09:11:56 ******/
ALTER TABLE [Gral].[tbEstadosCiviles] ADD UNIQUE NONCLUSTERED 
(
	[Esta_EstadoCivil] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__tbPerson__CC1C0A101615133E]    Script Date: 15/4/2024 09:11:56 ******/
ALTER TABLE [Gral].[tbPersonas] ADD UNIQUE NONCLUSTERED 
(
	[Pers_DNI] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ_Accidente]    Script Date: 15/4/2024 09:11:56 ******/
ALTER TABLE [Rpts].[tbAccidentes] ADD  CONSTRAINT [UQ_Accidente] UNIQUE NONCLUSTERED 
(
	[Acci_Accidente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ_DESASTRE]    Script Date: 15/4/2024 09:11:56 ******/
ALTER TABLE [Rpts].[tbDesastres] ADD  CONSTRAINT [UQ_DESASTRE] UNIQUE NONCLUSTERED 
(
	[Desa_Desastre] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ_Emergencias]    Script Date: 15/4/2024 09:11:56 ******/
ALTER TABLE [Rpts].[tbEmergencias] ADD  CONSTRAINT [UQ_Emergencias] UNIQUE NONCLUSTERED 
(
	[Emer_Emergencia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [Accs].[tbPantallas] ADD  DEFAULT ((1)) FOR [Pant_Estado]
GO
ALTER TABLE [Accs].[tbPantallasPorRoles] ADD  DEFAULT ((1)) FOR [PaRo_Estado]
GO
ALTER TABLE [Accs].[tbRoles] ADD  DEFAULT ((1)) FOR [Rol_Estado]
GO
ALTER TABLE [Accs].[tbUsuarios] ADD  DEFAULT ((1)) FOR [Usua_Estado]
GO
ALTER TABLE [Gral].[tbColonias] ADD  DEFAULT ((1)) FOR [Colo_Estado]
GO
ALTER TABLE [Gral].[tbDepartamentos] ADD  DEFAULT ((1)) FOR [Dept_Estado]
GO
ALTER TABLE [Gral].[tbEstadosCiviles] ADD  DEFAULT ((1)) FOR [Esta_Estado]
GO
ALTER TABLE [Gral].[tbMunicipios] ADD  DEFAULT ((1)) FOR [Muni_Estado]
GO
ALTER TABLE [Gral].[tbPersonas] ADD  DEFAULT ((1)) FOR [Pers_Estado]
GO
ALTER TABLE [Rpts].[tbAccidentes] ADD  DEFAULT ((1)) FOR [Acci_Estado]
GO
ALTER TABLE [Rpts].[tbDesastres] ADD  DEFAULT ((1)) FOR [Desa_Estado]
GO
ALTER TABLE [Rpts].[tbEmergencias] ADD  DEFAULT ((1)) FOR [Emer_Estado]
GO
ALTER TABLE [Rpts].[tbReportes] ADD  DEFAULT ((1)) FOR [Repo_EstadoReporte]
GO
ALTER TABLE [Rpts].[tbReportes] ADD  DEFAULT ((1)) FOR [Repo_Estado]
GO
ALTER TABLE [Rpts].[tbReportesPorDesastres] ADD  DEFAULT ((1)) FOR [ReDe_EstadoReporte]
GO
ALTER TABLE [Rpts].[tbReportesPorDesastres] ADD  DEFAULT ((1)) FOR [ReDe_Estado]
GO
ALTER TABLE [Accs].[tbPantallas]  WITH CHECK ADD  CONSTRAINT [FK_tbPantallas_tbUsuarios_Pant_UsuarioCreacion] FOREIGN KEY([Pant_UsuarioCreacion])
REFERENCES [Accs].[tbUsuarios] ([Usua_Id])
GO
ALTER TABLE [Accs].[tbPantallas] CHECK CONSTRAINT [FK_tbPantallas_tbUsuarios_Pant_UsuarioCreacion]
GO
ALTER TABLE [Accs].[tbPantallas]  WITH CHECK ADD  CONSTRAINT [FK_tbPantallas_tbUsuarios_Pant_UsuarioModificacion] FOREIGN KEY([Pant_UsuarioModificacion])
REFERENCES [Accs].[tbUsuarios] ([Usua_Id])
GO
ALTER TABLE [Accs].[tbPantallas] CHECK CONSTRAINT [FK_tbPantallas_tbUsuarios_Pant_UsuarioModificacion]
GO
ALTER TABLE [Accs].[tbPantallasPorRoles]  WITH CHECK ADD  CONSTRAINT [FK_tbPantallasPorRoles_tbPantallas_Pant_Id] FOREIGN KEY([Pant_Id])
REFERENCES [Accs].[tbPantallas] ([Pant_Id])
GO
ALTER TABLE [Accs].[tbPantallasPorRoles] CHECK CONSTRAINT [FK_tbPantallasPorRoles_tbPantallas_Pant_Id]
GO
ALTER TABLE [Accs].[tbPantallasPorRoles]  WITH CHECK ADD  CONSTRAINT [FK_tbPantallasPorRoles_tbRoles_Rol_Id] FOREIGN KEY([Rol_Id])
REFERENCES [Accs].[tbRoles] ([Rol_Id])
GO
ALTER TABLE [Accs].[tbPantallasPorRoles] CHECK CONSTRAINT [FK_tbPantallasPorRoles_tbRoles_Rol_Id]
GO
ALTER TABLE [Accs].[tbPantallasPorRoles]  WITH CHECK ADD  CONSTRAINT [FK_tbPantallasPorRoles_tbUsuarios_Pant_UsuarioCreacion] FOREIGN KEY([PaRo_UsuarioCreacion])
REFERENCES [Accs].[tbUsuarios] ([Usua_Id])
GO
ALTER TABLE [Accs].[tbPantallasPorRoles] CHECK CONSTRAINT [FK_tbPantallasPorRoles_tbUsuarios_Pant_UsuarioCreacion]
GO
ALTER TABLE [Accs].[tbPantallasPorRoles]  WITH CHECK ADD  CONSTRAINT [FK_tbPantallasPorRoles_tbUsuarios_Pant_UsuarioModificacion] FOREIGN KEY([PaRo_UsuarioModificacion])
REFERENCES [Accs].[tbUsuarios] ([Usua_Id])
GO
ALTER TABLE [Accs].[tbPantallasPorRoles] CHECK CONSTRAINT [FK_tbPantallasPorRoles_tbUsuarios_Pant_UsuarioModificacion]
GO
ALTER TABLE [Accs].[tbRoles]  WITH CHECK ADD  CONSTRAINT [FK_tbRoles_tbUsuarios_Rol_UsuarioCreacion] FOREIGN KEY([Rol_UsuarioCreacion])
REFERENCES [Accs].[tbUsuarios] ([Usua_Id])
GO
ALTER TABLE [Accs].[tbRoles] CHECK CONSTRAINT [FK_tbRoles_tbUsuarios_Rol_UsuarioCreacion]
GO
ALTER TABLE [Accs].[tbRoles]  WITH CHECK ADD  CONSTRAINT [FK_tbRoles_tbUsuarios_Rol_UsuarioModificacion] FOREIGN KEY([Rol_UsuarioModificacion])
REFERENCES [Accs].[tbUsuarios] ([Usua_Id])
GO
ALTER TABLE [Accs].[tbRoles] CHECK CONSTRAINT [FK_tbRoles_tbUsuarios_Rol_UsuarioModificacion]
GO
ALTER TABLE [Accs].[tbUsuarios]  WITH CHECK ADD  CONSTRAINT [FK_tbUsuarios_tbPersonas_Pers_Id] FOREIGN KEY([Pers_Id])
REFERENCES [Gral].[tbPersonas] ([Pers_Id])
GO
ALTER TABLE [Accs].[tbUsuarios] CHECK CONSTRAINT [FK_tbUsuarios_tbPersonas_Pers_Id]
GO
ALTER TABLE [Accs].[tbUsuarios]  WITH CHECK ADD  CONSTRAINT [FK_tbUsuarios_tbRoles_Rol_Id] FOREIGN KEY([Rol_Id])
REFERENCES [Accs].[tbRoles] ([Rol_Id])
GO
ALTER TABLE [Accs].[tbUsuarios] CHECK CONSTRAINT [FK_tbUsuarios_tbRoles_Rol_Id]
GO
ALTER TABLE [Accs].[tbUsuarios]  WITH CHECK ADD  CONSTRAINT [FK_tbUsuarios_Usua_UsuarioCreacion] FOREIGN KEY([Usua_UsuarioCreacion])
REFERENCES [Accs].[tbUsuarios] ([Usua_Id])
GO
ALTER TABLE [Accs].[tbUsuarios] CHECK CONSTRAINT [FK_tbUsuarios_Usua_UsuarioCreacion]
GO
ALTER TABLE [Accs].[tbUsuarios]  WITH CHECK ADD  CONSTRAINT [FK_tbUsuarios_Usua_UsuarioModificacion] FOREIGN KEY([Usua_UsuarioModificacion])
REFERENCES [Accs].[tbUsuarios] ([Usua_Id])
GO
ALTER TABLE [Accs].[tbUsuarios] CHECK CONSTRAINT [FK_tbUsuarios_Usua_UsuarioModificacion]
GO
ALTER TABLE [Gral].[tbColonias]  WITH CHECK ADD  CONSTRAINT [FK_tbColonias_tbMunicipios_Muni_Id] FOREIGN KEY([Muni_Id])
REFERENCES [Gral].[tbMunicipios] ([Muni_Id])
GO
ALTER TABLE [Gral].[tbColonias] CHECK CONSTRAINT [FK_tbColonias_tbMunicipios_Muni_Id]
GO
ALTER TABLE [Gral].[tbColonias]  WITH CHECK ADD  CONSTRAINT [FK_tbColonias_tbUsuarios_Colo_UsuarioCreacion] FOREIGN KEY([Colo_UsuarioCreacion])
REFERENCES [Accs].[tbUsuarios] ([Usua_Id])
GO
ALTER TABLE [Gral].[tbColonias] CHECK CONSTRAINT [FK_tbColonias_tbUsuarios_Colo_UsuarioCreacion]
GO
ALTER TABLE [Gral].[tbColonias]  WITH CHECK ADD  CONSTRAINT [FK_tbColonias_tbUsuarios_Colo_UsuarioModificacion] FOREIGN KEY([Colo_UsuarioModificacion])
REFERENCES [Accs].[tbUsuarios] ([Usua_Id])
GO
ALTER TABLE [Gral].[tbColonias] CHECK CONSTRAINT [FK_tbColonias_tbUsuarios_Colo_UsuarioModificacion]
GO
ALTER TABLE [Gral].[tbDepartamentos]  WITH CHECK ADD  CONSTRAINT [FK_tbDepartamentos_tbUsuarios_Dept_UsuarioCreacion] FOREIGN KEY([Dept_UsuarioCreacion])
REFERENCES [Accs].[tbUsuarios] ([Usua_Id])
GO
ALTER TABLE [Gral].[tbDepartamentos] CHECK CONSTRAINT [FK_tbDepartamentos_tbUsuarios_Dept_UsuarioCreacion]
GO
ALTER TABLE [Gral].[tbDepartamentos]  WITH CHECK ADD  CONSTRAINT [FK_tbDepartamentos_tbUsuarios_Dept_UsuarioModificacion] FOREIGN KEY([Dept_UsuarioModificacion])
REFERENCES [Accs].[tbUsuarios] ([Usua_Id])
GO
ALTER TABLE [Gral].[tbDepartamentos] CHECK CONSTRAINT [FK_tbDepartamentos_tbUsuarios_Dept_UsuarioModificacion]
GO
ALTER TABLE [Gral].[tbEstadosCiviles]  WITH CHECK ADD  CONSTRAINT [FK_tbEstadosCiviles_tbUsuarios_Esta_UsuarioCreacion] FOREIGN KEY([Esta_UsuarioCreacion])
REFERENCES [Accs].[tbUsuarios] ([Usua_Id])
GO
ALTER TABLE [Gral].[tbEstadosCiviles] CHECK CONSTRAINT [FK_tbEstadosCiviles_tbUsuarios_Esta_UsuarioCreacion]
GO
ALTER TABLE [Gral].[tbEstadosCiviles]  WITH CHECK ADD  CONSTRAINT [FK_tbEstadosCiviles_tbUsuarios_Esta_UsuarioModificacion] FOREIGN KEY([Esta_UsuarioModificacion])
REFERENCES [Accs].[tbUsuarios] ([Usua_Id])
GO
ALTER TABLE [Gral].[tbEstadosCiviles] CHECK CONSTRAINT [FK_tbEstadosCiviles_tbUsuarios_Esta_UsuarioModificacion]
GO
ALTER TABLE [Gral].[tbMunicipios]  WITH CHECK ADD  CONSTRAINT [FK_tbMunicipios_tbDepartamentos_Dept_Id] FOREIGN KEY([Dept_Id])
REFERENCES [Gral].[tbDepartamentos] ([Dept_Id])
GO
ALTER TABLE [Gral].[tbMunicipios] CHECK CONSTRAINT [FK_tbMunicipios_tbDepartamentos_Dept_Id]
GO
ALTER TABLE [Gral].[tbMunicipios]  WITH CHECK ADD  CONSTRAINT [FK_tbMunicipios_tbUsuarios_Muni_UsuarioCreacion] FOREIGN KEY([Muni_UsuarioCreacion])
REFERENCES [Accs].[tbUsuarios] ([Usua_Id])
GO
ALTER TABLE [Gral].[tbMunicipios] CHECK CONSTRAINT [FK_tbMunicipios_tbUsuarios_Muni_UsuarioCreacion]
GO
ALTER TABLE [Gral].[tbMunicipios]  WITH CHECK ADD  CONSTRAINT [FK_tbMunicipios_tbUsuarios_Muni_UsuarioModificacion] FOREIGN KEY([Muni_UsuarioModificacion])
REFERENCES [Accs].[tbUsuarios] ([Usua_Id])
GO
ALTER TABLE [Gral].[tbMunicipios] CHECK CONSTRAINT [FK_tbMunicipios_tbUsuarios_Muni_UsuarioModificacion]
GO
ALTER TABLE [Gral].[tbPersonas]  WITH CHECK ADD  CONSTRAINT [FK_tbPersonas_tbColonias_Colo_Id] FOREIGN KEY([Colo_Id])
REFERENCES [Gral].[tbColonias] ([Colo_Id])
GO
ALTER TABLE [Gral].[tbPersonas] CHECK CONSTRAINT [FK_tbPersonas_tbColonias_Colo_Id]
GO
ALTER TABLE [Gral].[tbPersonas]  WITH CHECK ADD  CONSTRAINT [FK_tbPersonas_tbEstadosCiviles_Esta_Id] FOREIGN KEY([Esta_Id])
REFERENCES [Gral].[tbEstadosCiviles] ([Esta_Id])
GO
ALTER TABLE [Gral].[tbPersonas] CHECK CONSTRAINT [FK_tbPersonas_tbEstadosCiviles_Esta_Id]
GO
ALTER TABLE [Gral].[tbPersonas]  WITH CHECK ADD  CONSTRAINT [FK_tbPersonas_tbUsuarios_Pers_UsuarioCreacion] FOREIGN KEY([Pers_UsuarioCreacion])
REFERENCES [Accs].[tbUsuarios] ([Usua_Id])
GO
ALTER TABLE [Gral].[tbPersonas] CHECK CONSTRAINT [FK_tbPersonas_tbUsuarios_Pers_UsuarioCreacion]
GO
ALTER TABLE [Gral].[tbPersonas]  WITH CHECK ADD  CONSTRAINT [FK_tbPersonas_tbUsuarios_Pers_UsuarioModificacion] FOREIGN KEY([Pers_UsuarioModificacion])
REFERENCES [Accs].[tbUsuarios] ([Usua_Id])
GO
ALTER TABLE [Gral].[tbPersonas] CHECK CONSTRAINT [FK_tbPersonas_tbUsuarios_Pers_UsuarioModificacion]
GO
ALTER TABLE [Rpts].[tbAccidentes]  WITH CHECK ADD  CONSTRAINT [FK_tbAccidentes_tbUsuarios_Acci_UsuarioCreacion] FOREIGN KEY([Acci_UsuarioCreacion])
REFERENCES [Accs].[tbUsuarios] ([Usua_Id])
GO
ALTER TABLE [Rpts].[tbAccidentes] CHECK CONSTRAINT [FK_tbAccidentes_tbUsuarios_Acci_UsuarioCreacion]
GO
ALTER TABLE [Rpts].[tbAccidentes]  WITH CHECK ADD  CONSTRAINT [FK_tbAccidentes_tbUsuarios_Acci_UsuarioModificacion] FOREIGN KEY([Acci_UsuarioModificacion])
REFERENCES [Accs].[tbUsuarios] ([Usua_Id])
GO
ALTER TABLE [Rpts].[tbAccidentes] CHECK CONSTRAINT [FK_tbAccidentes_tbUsuarios_Acci_UsuarioModificacion]
GO
ALTER TABLE [Rpts].[tbDesastres]  WITH CHECK ADD  CONSTRAINT [FK_tbDesastres_tbUsuarios_Desa_UsuarioCreacion] FOREIGN KEY([Desa_UsuarioCreacion])
REFERENCES [Accs].[tbUsuarios] ([Usua_Id])
GO
ALTER TABLE [Rpts].[tbDesastres] CHECK CONSTRAINT [FK_tbDesastres_tbUsuarios_Desa_UsuarioCreacion]
GO
ALTER TABLE [Rpts].[tbDesastres]  WITH CHECK ADD  CONSTRAINT [FK_tbDesastres_tbUsuarios_Desa_UsuarioModificacion] FOREIGN KEY([Desa_UsuarioModificacion])
REFERENCES [Accs].[tbUsuarios] ([Usua_Id])
GO
ALTER TABLE [Rpts].[tbDesastres] CHECK CONSTRAINT [FK_tbDesastres_tbUsuarios_Desa_UsuarioModificacion]
GO
ALTER TABLE [Rpts].[tbEmergencias]  WITH CHECK ADD  CONSTRAINT [FK_tbEmergencias_tbUsuarios_Emer_UsuarioCreacion] FOREIGN KEY([Emer_UsuarioCreacion])
REFERENCES [Accs].[tbUsuarios] ([Usua_Id])
GO
ALTER TABLE [Rpts].[tbEmergencias] CHECK CONSTRAINT [FK_tbEmergencias_tbUsuarios_Emer_UsuarioCreacion]
GO
ALTER TABLE [Rpts].[tbEmergencias]  WITH CHECK ADD  CONSTRAINT [FK_tbEmergencias_tbUsuarios_Emer_UsuarioModificacion] FOREIGN KEY([Emer_UsuarioModificacion])
REFERENCES [Accs].[tbUsuarios] ([Usua_Id])
GO
ALTER TABLE [Rpts].[tbEmergencias] CHECK CONSTRAINT [FK_tbEmergencias_tbUsuarios_Emer_UsuarioModificacion]
GO
ALTER TABLE [Rpts].[tbImagenesPorReportes]  WITH CHECK ADD  CONSTRAINT [FK_tbImagenesPorReportes_tbReportes_Repo_Id] FOREIGN KEY([Repo_Id])
REFERENCES [Rpts].[tbReportes] ([Repo_Id])
GO
ALTER TABLE [Rpts].[tbImagenesPorReportes] CHECK CONSTRAINT [FK_tbImagenesPorReportes_tbReportes_Repo_Id]
GO
ALTER TABLE [Rpts].[tbImagenesPorReportesDesastres]  WITH CHECK ADD  CONSTRAINT [FK_tbImagenesPorReportesDesastres_tbReportesPorDesastres_ReDe_Id] FOREIGN KEY([ReDe_Id])
REFERENCES [Rpts].[tbReportesPorDesastres] ([ReDe_Id])
GO
ALTER TABLE [Rpts].[tbImagenesPorReportesDesastres] CHECK CONSTRAINT [FK_tbImagenesPorReportesDesastres_tbReportesPorDesastres_ReDe_Id]
GO
ALTER TABLE [Rpts].[tbMunicipiosPorReportes]  WITH CHECK ADD  CONSTRAINT [FK_tbMunicipiosPorReportes_tbMunicipios_Muni_Id] FOREIGN KEY([Muni_Id])
REFERENCES [Gral].[tbMunicipios] ([Muni_Id])
GO
ALTER TABLE [Rpts].[tbMunicipiosPorReportes] CHECK CONSTRAINT [FK_tbMunicipiosPorReportes_tbMunicipios_Muni_Id]
GO
ALTER TABLE [Rpts].[tbMunicipiosPorReportes]  WITH CHECK ADD  CONSTRAINT [FK_tbMunicipiosPorReportes_tbReportesPorDesastres_Repo_Id] FOREIGN KEY([ReDe_Id])
REFERENCES [Rpts].[tbReportesPorDesastres] ([ReDe_Id])
GO
ALTER TABLE [Rpts].[tbMunicipiosPorReportes] CHECK CONSTRAINT [FK_tbMunicipiosPorReportes_tbReportesPorDesastres_Repo_Id]
GO
ALTER TABLE [Rpts].[tbReportes]  WITH CHECK ADD  CONSTRAINT [FK_tbReportes_tbColonias_Colo_Id] FOREIGN KEY([Colo_Id])
REFERENCES [Gral].[tbColonias] ([Colo_Id])
GO
ALTER TABLE [Rpts].[tbReportes] CHECK CONSTRAINT [FK_tbReportes_tbColonias_Colo_Id]
GO
ALTER TABLE [Rpts].[tbReportes]  WITH CHECK ADD  CONSTRAINT [FK_tbReportes_tbUsuarios_Repo_UsuarioCreacion] FOREIGN KEY([Repo_UsuarioCreacion])
REFERENCES [Accs].[tbUsuarios] ([Usua_Id])
GO
ALTER TABLE [Rpts].[tbReportes] CHECK CONSTRAINT [FK_tbReportes_tbUsuarios_Repo_UsuarioCreacion]
GO
ALTER TABLE [Rpts].[tbReportes]  WITH CHECK ADD  CONSTRAINT [FK_tbReportes_tbUsuarios_Repo_UsuarioModificacion] FOREIGN KEY([Repo_UsuarioModificacion])
REFERENCES [Accs].[tbUsuarios] ([Usua_Id])
GO
ALTER TABLE [Rpts].[tbReportes] CHECK CONSTRAINT [FK_tbReportes_tbUsuarios_Repo_UsuarioModificacion]
GO
ALTER TABLE [Rpts].[tbReportesPorDesastres]  WITH CHECK ADD  CONSTRAINT [FK_tbReportesPorDesastres_tbDesastres_Desa_Id] FOREIGN KEY([Desa_Id])
REFERENCES [Rpts].[tbDesastres] ([Desa_Id])
GO
ALTER TABLE [Rpts].[tbReportesPorDesastres] CHECK CONSTRAINT [FK_tbReportesPorDesastres_tbDesastres_Desa_Id]
GO
ALTER TABLE [Rpts].[tbReportesPorDesastres]  WITH CHECK ADD  CONSTRAINT [FK_tbReportesPorDesastres_tbUsuarios_ReDe_UsuarioCreacion] FOREIGN KEY([ReDe_UsuarioCreacion])
REFERENCES [Accs].[tbUsuarios] ([Usua_Id])
GO
ALTER TABLE [Rpts].[tbReportesPorDesastres] CHECK CONSTRAINT [FK_tbReportesPorDesastres_tbUsuarios_ReDe_UsuarioCreacion]
GO
ALTER TABLE [Rpts].[tbReportesPorDesastres]  WITH CHECK ADD  CONSTRAINT [FK_tbReportesPorDesastres_tbUsuarios_ReDe_UsuarioModificacion] FOREIGN KEY([ReDe_UsuarioModificacion])
REFERENCES [Accs].[tbUsuarios] ([Usua_Id])
GO
ALTER TABLE [Rpts].[tbReportesPorDesastres] CHECK CONSTRAINT [FK_tbReportesPorDesastres_tbUsuarios_ReDe_UsuarioModificacion]
GO
/****** Object:  StoredProcedure [Accs].[SP_Pantallas_Actualizar]    Script Date: 15/4/2024 09:11:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [Accs].[SP_Pantallas_Actualizar]
    @Pant_Id INT,
    @Pant_Descripcion VARCHAR(40),
    @Pant_UsuarioModificacion INT,
    @Pant_FechaModificacion DATETIME
AS
BEGIN
    BEGIN TRY
        UPDATE Accs.tbPantallas
        SET Pant_Descripcion = @Pant_Descripcion,
            Pant_UsuarioModificacion = @Pant_UsuarioModificacion,
            Pant_FechaModificacion = @Pant_FechaModificacion
        WHERE Pant_Id = @Pant_Id;
        SELECT 1 AS Resultado;
    END TRY
    BEGIN CATCH
        SELECT 0 AS Resultado;
    END CATCH
END;
GO
/****** Object:  StoredProcedure [Accs].[SP_Pantallas_Eliminar]    Script Date: 15/4/2024 09:11:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [Accs].[SP_Pantallas_Eliminar]
    @Pant_Id INT
AS
BEGIN
    BEGIN TRY
        UPDATE Accs.tbPantallas
        SET Pant_Estado = 0
        WHERE Pant_Id = @Pant_Id;
        SELECT 1 AS Resultado;
    END TRY
    BEGIN CATCH
        SELECT 0 AS Resultado;
    END CATCH
END;
GO
/****** Object:  StoredProcedure [Accs].[SP_Pantallas_Insertar]    Script Date: 15/4/2024 09:11:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [Accs].[SP_Pantallas_Insertar]
    @Pant_Descripcion VARCHAR(40),
    @Pant_UsuarioCreacion INT,
    @Pant_FechaCreacion DATETIME
AS
BEGIN
    BEGIN TRY
        INSERT INTO Accs.tbPantallas (Pant_Descripcion, Pant_UsuarioCreacion, Pant_FechaCreacion)
        VALUES (@Pant_Descripcion, @Pant_UsuarioCreacion, @Pant_FechaCreacion);
        SELECT 1 AS Resultado;
    END TRY
    BEGIN CATCH
        SELECT 0 AS Resultado;
    END CATCH
END;
GO
/****** Object:  StoredProcedure [Accs].[SP_Pantallas_Mostrar]    Script Date: 15/4/2024 09:11:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [Accs].[SP_Pantallas_Mostrar]
AS
BEGIN
SELECT [Pant_Id]
      ,[Pant_Descripcion]
      ,[Pant_Esquema] FROM Accs.tbPantallas
WHERE Pant_Estado = 1
END
GO
/****** Object:  StoredProcedure [Accs].[SP_PantallasPorRoles_Actualizar]    Script Date: 15/4/2024 09:11:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [Accs].[SP_PantallasPorRoles_Actualizar]
    @PaRo_Id INT,
	@Pant_Id INT,
	@Rol_Id INT,
	@PaRo_UsuarioCreacion INT,
	@PaRo_FechaCreacion DATETIME
AS
BEGIN
    BEGIN TRY
        UPDATE accs.tbPantallasPorRoles
		SET Pant_Id = @pant_Id,
		    rol_id = @rol_id,
			paro_usuariocreacion = @paro_usuariocreacion,
			paro_fechacreacion = @paro_fechacreacion
	    where paro_id = @paro_Id;
        SELECT 1 AS Resultado;
    END TRY
    BEGIN CATCH
        SELECT 0 AS Resultado;
    END CATCH
END;
GO
/****** Object:  StoredProcedure [Accs].[SP_PantallasPorRoles_Eliminar]    Script Date: 15/4/2024 09:11:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [Accs].[SP_PantallasPorRoles_Eliminar]
    @PaRo_Id INT
AS
BEGIN
    BEGIN TRY
        DELETE FROM Accs.tbPantallasPorRoles
		WHERE PaRo_Id = @PaRo_Id;
        SELECT 1 AS Resultado;
    END TRY
    BEGIN CATCH
        SELECT 0 AS Resultado;
    END CATCH
END;
GO
/****** Object:  StoredProcedure [Accs].[SP_PantallasPorRoles_Insertar]    Script Date: 15/4/2024 09:11:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [Accs].[SP_PantallasPorRoles_Insertar]
    @Pant_Id INT,
     @Rol_Id INT,
     @PaRo_UsuarioCreacion INT,
     @PaRo_FechaCreacion DATETIME
AS 
BEGIN
BEGIN TRY

	DECLARE @EXIST INT = (
		SELECT COUNT(PaRo_Id) FROM Accs.tbPantallasPorRoles 
		WHERE Pant_Id = @Pant_Id AND Rol_Id = @Rol_Id
	);

	DECLARE @EXIST_INACTIVE INT = (
		SELECT COUNT(PaRo_Id) FROM Accs.tbPantallasPorRoles 
		WHERE Pant_Id = @Pant_Id AND Rol_Id = @Rol_Id AND PaRo_Estado = 0
	);

   IF (@EXIST = 0)
   BEGIN
		INSERT INTO Accs.tbPantallasPorRoles(
			Pant_Id ,
			Rol_Id ,
			PaRo_UsuarioCreacion ,
			PaRo_FechaCreacion ,
			PaRo_Estado 
		)
		VALUES (
			 @Pant_Id ,
			 @Rol_Id ,
			 @PaRo_UsuarioCreacion ,
			 @PaRo_FechaCreacion ,
			 1
		)
	END
	ELSE IF (@EXIST_INACTIVE >= 1)
	BEGIN
		UPDATE Accs.tbPantallasPorRoles SET PaRo_Estado = 1
		WHERE Pant_Id = @Pant_Id AND Rol_Id = @Rol_Id
	END

	SELECT 1 AS Result,'' as error
    END TRY
    BEGIN CATCH
      
        SELECT 0 AS Result,ERROR_MESSAGE() as error
    END CATCH
END
GO
/****** Object:  StoredProcedure [Accs].[SP_PantallasPorRoles_Mostrar]    Script Date: 15/4/2024 09:11:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [Accs].[SP_PantallasPorRoles_Mostrar]
AS
BEGIN
SELECT * FROM Accs.tbPantallas AS PANT
INNER JOIN Accs.tbPantallasPorRoles AS PARO ON PANT.Pant_Id = PARO.Pant_Id
INNER JOIN Accs.tbRoles AS ROL ON PARO.Rol_Id = ROL.Rol_Id
WHERE PaRo_Estado = 1
END
GO
/****** Object:  StoredProcedure [Accs].[SP_PantallasPorRoles_PorRol]    Script Date: 15/4/2024 09:11:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [Accs].[SP_PantallasPorRoles_PorRol]
@Rol_Id INT
AS
BEGIN
SELECT * FROM Accs.tbPantallas AS PANT
INNER JOIN Accs.tbPantallasPorRoles AS PARO ON PANT.Pant_Id = PARO.Pant_Id
INNER JOIN Accs.tbRoles AS ROL ON PARO.Rol_Id = ROL.Rol_Id
WHERE PARO.Rol_Id = @Rol_Id AND PaRo_Estado = 1
END
GO
/****** Object:  StoredProcedure [Accs].[SP_Roles_Actualizar]    Script Date: 15/4/2024 09:11:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [Accs].[SP_Roles_Actualizar]
    @Rol_Id INT,
    @Rol_Rol VARCHAR(50),
    @Rol_UsuarioModificacion INT,
    @Rol_FechaModificacion DATETIME
AS
BEGIN
    BEGIN TRY
        UPDATE Accs.tbRoles
        SET Rol_Rol = @Rol_Rol,
            Rol_UsuarioModificacion = @Rol_UsuarioModificacion,
            Rol_FechaModificacion = @Rol_FechaModificacion
        WHERE Rol_Id = @Rol_Id;
        SELECT 1 AS Resultado;
    END TRY
    BEGIN CATCH
        SELECT 0 AS Resultado;
    END CATCH
END;
GO
/****** Object:  StoredProcedure [Accs].[SP_Roles_Buscar]    Script Date: 15/4/2024 09:11:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [Accs].[SP_Roles_Buscar]
@Rol_Rol VARCHAR(50)
AS BEGIN
SELECT * FROM Accs.tbRoles WHERE Rol_Rol = @Rol_Rol
END
GO
/****** Object:  StoredProcedure [Accs].[SP_Roles_Detalles]    Script Date: 15/4/2024 09:11:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 CREATE PROCEDURE [Accs].[SP_Roles_Detalles]
 @Rol_Id INT
 AS
 BEGIN
 SELECT ROL.Rol_Id, Rol_Rol, Rol_FechaCreacion, Rol_FechaModificacion,
 CASE WHEN Rol_UsuarioCreacion = USUA.Usua_Id THEN USUA.Usua_Usuario END AS Rol_UsuarioCreacion,
 CASE WHEN Rol_UsuarioModificacion = USU.Usua_Id THEN USU.Usua_Usuario ELSE 'No se ha modificado' END AS Rol_UsuarioModificacion

 FROM Accs.tbRoles AS ROL 
INNER JOIN Accs.tbUsuarios AS USUA ON Rol_UsuarioCreacion = USUA.Usua_Id 
	   	  LEFT JOIN Accs.tbUsuarios AS USU ON Rol_UsuarioModificacion = USU.Usua_Id	  
WHERE ROL.Rol_Id = @Rol_Id
END
GO
/****** Object:  StoredProcedure [Accs].[SP_Roles_Eliminar]    Script Date: 15/4/2024 09:11:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [Accs].[SP_Roles_Eliminar]
    @Rol_Id INT
AS
BEGIN
    BEGIN TRY
        UPDATE Accs.tbRoles
        SET Rol_Estado = 0
        WHERE Rol_Id = @Rol_Id;
        SELECT 1 AS Resultado;
    END TRY
    BEGIN CATCH
        SELECT 0 AS Resultado;
    END CATCH
END;
GO
/****** Object:  StoredProcedure [Accs].[SP_Roles_Insertar]    Script Date: 15/4/2024 09:11:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [Accs].[SP_Roles_Insertar]
    @Rol_Rol VARCHAR(50),
    @Rol_UsuarioCreacion INT,
    @Rol_FechaCreacion DATETIME
AS
BEGIN
    BEGIN TRY
        INSERT INTO Accs.tbRoles (Rol_Rol, Rol_UsuarioCreacion, Rol_FechaCreacion)
        VALUES (@Rol_Rol, @Rol_UsuarioCreacion, @Rol_FechaCreacion);
        SELECT 1 AS Resultado;
    END TRY
    BEGIN CATCH
        SELECT 0 AS Resultado;
    END CATCH
END;
GO
/****** Object:  StoredProcedure [Accs].[SP_Roles_Mostrar]    Script Date: 15/4/2024 09:11:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [Accs].[SP_Roles_Mostrar]
AS
BEGIN
SELECT * FROM Accs.tbRoles
WHERE Rol_Estado = 1
ORDER BY Rol_Id
END
GO
/****** Object:  StoredProcedure [Accs].[SP_Usuarios_Actualizar]    Script Date: 15/4/2024 09:11:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [Accs].[SP_Usuarios_Actualizar]
    @Usua_Id INT,
    @Usua_Usuario VARCHAR(15),
    @Usua_Administrador BIT,
	@Pers_Id INT,
    @Rol_Id INT,
    @Usua_UsuarioModificacion INT,
    @Usua_FechaModificacion DATETIME
AS
BEGIN
    BEGIN TRY
        UPDATE Accs.tbUsuarios
        SET Usua_Usuario = @Usua_Usuario,
            Usua_Administrador = @Usua_Administrador,
			Pers_Id = @Pers_Id,
            Rol_Id = @Rol_Id,
            Usua_UsuarioModificacion = @Usua_UsuarioModificacion,
            Usua_FechaModificacion = @Usua_FechaModificacion
        WHERE Usua_Id = @Usua_Id;
        SELECT 1 AS Resultado;
    END TRY
    BEGIN CATCH
        SELECT 0 AS Resultado;
    END CATCH
END;
GO
/****** Object:  StoredProcedure [Accs].[SP_Usuarios_Detalles]    Script Date: 15/4/2024 09:11:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 CREATE PROCEDURE [Accs].[SP_Usuarios_Detalles] 
 @Usua_Id INT
 AS
 BEGIN
 SELECT USUA.Usua_Id, USUA.Usua_Usuario, USUA.Usua_FechaCreacion, USUA.Usua_FechaModificacion,USUA.Usua_Administrador, 
 CASE WHEN USUA.Usua_UsuarioCreacion = USUA.Usua_Id THEN USUA.Usua_Usuario END AS Usua_UsuarioCreacion,
 CASE WHEN USU.Usua_UsuarioModificacion = USU.Usua_Id THEN USU.Usua_Usuario ELSE 'No se ha modificado' END AS Usua_UsuarioModificacion,
 PERS.Pers_Id, Pers_DNI, Pers_Nombres, Pers_Apellidos, 
 ROL.Rol_Id, Rol_Rol 
 FROM Accs.tbUsuarios AS USUA 
      INNER JOIN Gral.tbPersonas AS PERS ON USUA.Pers_Id = PERS.Pers_Id
	  INNER JOIN Accs.tbRoles AS ROL ON USUA.Rol_Id = ROL.Rol_Id
	  	   	  LEFT JOIN Accs.tbUsuarios AS USU ON USUA.Usua_UsuarioModificacion = USU.Usua_Id	  

	  WHERE USUA.Usua_Id = @Usua_Id
END
GO
/****** Object:  StoredProcedure [Accs].[SP_Usuarios_Eliminar]    Script Date: 15/4/2024 09:11:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [Accs].[SP_Usuarios_Eliminar]
    @Usua_Id INT
AS
BEGIN
    BEGIN TRY
        UPDATE Accs.tbUsuarios
        SET Usua_Estado = 0
        WHERE Usua_Id = @Usua_Id;
        SELECT 1 AS Resultado;
    END TRY
    BEGIN CATCH
        SELECT 0 AS Resultado;
    END CATCH
END;
GO
/****** Object:  StoredProcedure [Accs].[SP_Usuarios_InicioSesion]    Script Date: 15/4/2024 09:11:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [Accs].[SP_Usuarios_InicioSesion] 
	@Usuario VARCHAR (100),
	@Contra	VARCHAR (MAX)
AS
BEGIN

	SELECT usu.Usua_Id,
			usu.Usua_Usuario,
			usu.Usua_Contrasena,
			per.Pers_Nombres + ' ' + per.Pers_Apellidos AS Pers_Nombres,
			per.Pers_Id,
			R.Rol_Id,
			R.PaRo_Estado,
			p.Pant_Descripcion,
			usu.Usua_Administrador
	FROM Accs.tbUsuarios AS usu LEFT JOIN Gral.tbPersonas AS per
	ON usu.Pers_Id = per.Pers_Id LEFT JOIN Accs.tbPantallasPorRoles AS R ON r.Rol_Id = usu.Rol_Id LEFT JOIN Accs.tbPantallas AS p ON p.Pant_id = R.Pant_id
	WHERE usu.usua_Usuario = @Usuario AND usu.usua_Contrasena = CONVERT (VARCHAR (MAX), HASHBYTES ('SHA2_512', @Contra), 2);
END
GO
/****** Object:  StoredProcedure [Accs].[SP_Usuarios_Insertar]    Script Date: 15/4/2024 09:11:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [Accs].[SP_Usuarios_Insertar]
    @Usua_Usuario VARCHAR(15),
    @Usua_Contrasena VARCHAR(MAX),
	@Usua_Administrador BIT,
	@Pers_Id INT,
    @Rol_Id INT,
    @Usua_UsuarioCreacion INT,
    @Usua_FechaCreacion DATETIME
AS
BEGIN
  DECLARE @estadoActual INT;

    SELECT @estadoActual = Usua_Estado FROM Accs.tbUsuarios WHERE Usua_Usuario = @Usua_Usuario;
    BEGIN TRY
	 IF @estadoActual IS NOT NULL
	     BEGIN
       
            IF @estadoActual = 0
            BEGIN
                -- El estado es 0, actualiza el estado a 1
                UPDATE  Accs.tbUsuarios SET Usua_Estado = 1 WHERE Usua_Usuario = @Usua_Usuario;
                SELECT 1
            END
            ELSE
            BEGIN
      
                SELECT 0;
            END
        END
        ELSE
		    BEGIN
        INSERT INTO Accs.tbUsuarios (Usua_Usuario, Usua_Contrasena,Usua_Administrador,Pers_Id, Rol_Id, Usua_UsuarioCreacion, Usua_FechaCreacion)
        VALUES (@Usua_Usuario, CONVERT (VARCHAR (MAX), HASHBYTES ('SHA2_512', @Usua_Contrasena), 2),@Usua_Administrador, @Pers_Id, @Rol_Id, @Usua_UsuarioCreacion, @Usua_FechaCreacion);
        SELECT 1 AS Resultado;
		END
    END TRY
    BEGIN CATCH
        SELECT 0 AS Resultado;
    END CATCH
END;
GO
/****** Object:  StoredProcedure [Accs].[SP_Usuarios_Mostrar]    Script Date: 15/4/2024 09:11:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [Accs].[SP_Usuarios_Mostrar]
AS
BEGIN
SELECT * FROM Accs.tbUsuarios AS USU
INNER JOIN Accs.tbRoles AS ROL ON USU.Rol_Id = ROL.Rol_Id
INNER JOIN Gral.tbPersonas AS PERS ON USU.Pers_Id = PERS.Pers_Id
WHERE Usua_Estado = 1
ORDER BY Usua_Id
END
GO
/****** Object:  StoredProcedure [Accs].[SP_Usuarios_Reestablecer]    Script Date: 15/4/2024 09:11:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [Accs].[SP_Usuarios_Reestablecer]
(
    @Usua_Id INT,
    @Usua_Contrasena VARCHAR(MAX),
    @Usua_UsuarioModificacion INT, 
    @Usua_FechaModificacion DATETIME
)
AS
BEGIN
BEGIN TRY
	UPDATE Accs.tbUsuarios
			SET Usua_Contrasena = CONVERT (VARCHAR (MAX), HASHBYTES ('SHA2_512', @Usua_Contrasena), 2),
			
				Usua_UsuarioModificacion = @Usua_UsuarioModificacion,
				Usua_FechaModificacion = @Usua_FechaModificacion
			WHERE Usua_Id = @Usua_Id
			SELECT 1
			END TRY
			BEGIN CATCH

			SELECT 0
			END CATCH
END
GO
/****** Object:  StoredProcedure [dbo].[Rpts_SP_MostrarTipos]    Script Date: 15/4/2024 09:11:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   PROCEDURE [dbo].[Rpts_SP_MostrarTipos] 
    @tipo int
AS
BEGIN
    IF @tipo = 1
    BEGIN
        SELECT Acci_Id AS tipo_id,Acci_Accidente AS Descripcion FROM [Rpts].[tbAccidentes];
    END
    ELSE IF @tipo = 2
    BEGIN
        SELECT Emer_Id AS tipo_id,Emer_Emergencia AS Descripcion FROM [Rpts].[tbEmergencias];
    END
    ELSE IF @tipo = 3
    BEGIN
        SELECT Desa_Id AS tipo_id,Desa_Desastre AS Descripcion FROM [Rpts].[tbDesastres];
    END
END;
GO
/****** Object:  StoredProcedure [Gral].[SP_Colonias_Actualizar]    Script Date: 15/4/2024 09:11:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [Gral].[SP_Colonias_Actualizar]
    @Colo_Id INT,
    @Colo_Colonia VARCHAR(50),
    @Muni_Id VARCHAR(4),
    @Colo_UsuarioModificacion INT,
    @Colo_FechaModificacion DATETIME
AS
BEGIN
    BEGIN TRY
        UPDATE Gral.tbColonias
        SET Colo_Colonia = @Colo_Colonia,
            Muni_Id = @Muni_Id,
            Colo_UsuarioModificacion = @Colo_UsuarioModificacion,
            Colo_FechaModificacion = @Colo_FechaModificacion
        WHERE Colo_Id = @Colo_Id;
        SELECT 1 AS Resultado;
    END TRY
    BEGIN CATCH
        SELECT 0 AS Resultado;
    END CATCH
END;
GO
/****** Object:  StoredProcedure [Gral].[SP_Colonias_Detalles]    Script Date: 15/4/2024 09:11:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 CREATE PROCEDURE [Gral].[SP_Colonias_Detalles]
 @Colo_Id INT
 AS
 BEGIN
 SELECT Colo_Id, Colo_Colonia, Colo_FechaCreacion, Colo_FechaModificacion,
 MUNI.Muni_Id, Muni_Municipio, 
 DEPA.Dept_Id, Dept_Departamento, 
  CASE WHEN Colo_UsuarioCreacion = USUA.Usua_Id THEN USUA.Usua_Usuario END AS Colo_UsuarioCreacion,
 CASE WHEN Colo_UsuarioModificacion = USU.Usua_Id THEN USU.Usua_Usuario ELSE 'No se ha modificado' END AS Colo_UsuarioModificacion

 FROM Gral.tbColonias AS COLO 
      INNER JOIN Gral.tbMunicipios AS MUNI ON COLO.Muni_Id = MUNI.Muni_Id
	  INNER JOIN Gral.tbDepartamentos AS DEPA ON DEPA.Dept_Id = Muni.Dept_Id
	  INNER JOIN Accs.tbUsuarios AS USUA ON colo_UsuarioCreacion = USUA.Usua_Id 
	   	  LEFT JOIN Accs.tbUsuarios AS USU ON colo_UsuarioModificacion = USU.Usua_Id	
	  WHERE Colo_Id = @Colo_Id
END
GO
/****** Object:  StoredProcedure [Gral].[SP_Colonias_Eliminar]    Script Date: 15/4/2024 09:11:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [Gral].[SP_Colonias_Eliminar]
    @Colo_Id INT
AS
BEGIN
    BEGIN TRY
        DELETE FROM Gral.tbColonias
        WHERE Colo_Id = @Colo_Id;
        SELECT 1 AS Resultado;
    END TRY
    BEGIN CATCH
        SELECT 0 AS Resultado;
    END CATCH
END;
GO
/****** Object:  StoredProcedure [Gral].[SP_Colonias_Insertar]    Script Date: 15/4/2024 09:11:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [Gral].[SP_Colonias_Insertar]
    @Colo_Colonia VARCHAR(50),
    @Muni_Id VARCHAR(4),
    @Colo_UsuarioCreacion INT,
    @Colo_FechaCreacion DATETIME
AS
BEGIN
    BEGIN TRY
        INSERT INTO Gral.tbColonias (Colo_Colonia, Muni_Id, Colo_UsuarioCreacion, Colo_FechaCreacion)
        VALUES (@Colo_Colonia, @Muni_Id, @Colo_UsuarioCreacion, @Colo_FechaCreacion);
        SELECT 1 AS Resultado;
    END TRY
    BEGIN CATCH
        SELECT 0 AS Resultado;
    END CATCH
END;
GO
/****** Object:  StoredProcedure [Gral].[SP_Colonias_Mostrar]    Script Date: 15/4/2024 09:11:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [Gral].[SP_Colonias_Mostrar]
AS
BEGIN
SELECT * FROM Gral.tbColonias AS COLO
INNER JOIN Gral.tbMunicipios AS MUNI ON COLO.Muni_Id = MUNI.Muni_Id
WHERE Colo_Estado = 1
ORDER BY Colo_Id
END
GO
/****** Object:  StoredProcedure [Gral].[SP_ColoniasMostrarID]    Script Date: 15/4/2024 09:11:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [Gral].[SP_ColoniasMostrarID]
@Muni_Id VARCHAR(4)
AS
BEGIN
SELECT Colo_Id,Colo_Colonia,Muni_Id FROM Gral.tbColonias
WHERE Muni_Id = @Muni_Id
END
GO
/****** Object:  StoredProcedure [Gral].[SP_Departamentos_Actualizar]    Script Date: 15/4/2024 09:11:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [Gral].[SP_Departamentos_Actualizar]
    @Dept_Id VARCHAR(2),
    @Dept_Departamento VARCHAR(50),
    @Dept_UsuarioModificacion INT,
    @Dept_FechaModificacion DATETIME
AS
BEGIN
    BEGIN TRY
        UPDATE Gral.tbDepartamentos
        SET Dept_Departamento = @Dept_Departamento,
            Dept_UsuarioModificacion = @Dept_UsuarioModificacion,
            Dept_FechaModificacion = @Dept_FechaModificacion
        WHERE Dept_Id = @Dept_Id;
        SELECT 1 AS Resultado;
    END TRY
    BEGIN CATCH
        SELECT 0 AS Resultado;
    END CATCH
END;
GO
/****** Object:  StoredProcedure [Gral].[SP_Departamentos_Detalles]    Script Date: 15/4/2024 09:11:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 CREATE PROCEDURE [Gral].[SP_Departamentos_Detalles]
 @Dept_Id INT
 AS
 BEGIN
 SELECT Dept_Id, Dept_Departamento, Dept_FechaCreacion, Dept_FechaModificacion, 
  CASE WHEN Dept_UsuarioCreacion = USUA.Usua_Id THEN USUA.Usua_Usuario END AS Dept_UsuarioCreacion,
 CASE WHEN Dept_UsuarioModificacion = USU.Usua_Id THEN USU.Usua_Usuario ELSE 'No se ha modificado' END AS Dept_UsuarioModificacion

 FROM Gral.tbDepartamentos as dept
INNER JOIN Accs.tbUsuarios AS USUA ON Dept_UsuarioCreacion = USUA.Usua_Id 
	   	  LEFT JOIN Accs.tbUsuarios AS USU ON Dept_UsuarioModificacion = USU.Usua_Id	 
	  WHERE Dept_Id = @Dept_Id
END
GO
/****** Object:  StoredProcedure [Gral].[SP_Departamentos_Eliminar]    Script Date: 15/4/2024 09:11:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [Gral].[SP_Departamentos_Eliminar]
    @Dept_Id VARCHAR(2)
AS
BEGIN
    BEGIN TRY
        delete from Gral.tbDepartamentos
        WHERE Dept_Id = @Dept_Id;
        SELECT 1 AS Resultado;
    END TRY
    BEGIN CATCH
        SELECT 0 AS Resultado;
    END CATCH
END;
GO
/****** Object:  StoredProcedure [Gral].[SP_Departamentos_Insertar]    Script Date: 15/4/2024 09:11:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   PROCEDURE [Gral].[SP_Departamentos_Insertar]
@Dept_Id VARCHAR(2),
@Dept_Departamento VARCHAR(30),
	@Dept_UsuarioCreacion INT,
	@Dept_FechaCreacion DATETIME
AS
BEGIN
BEGIN TRY
	INSERT INTO Gral.tbDepartamentos (Dept_Id,Dept_Departamento,Dept_UsuarioCreacion,Dept_FechaCreacion) VALUES (@Dept_Id,@Dept_Departamento,@Dept_UsuarioCreacion,@Dept_FechaCreacion)
    SELECT 1 AS Resultado;
    END TRY
    BEGIN CATCH
        SELECT 0 AS Resultado;
    END CATCH
END
GO
/****** Object:  StoredProcedure [Gral].[SP_Departamentos_Mostrar]    Script Date: 15/4/2024 09:11:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [Gral].[SP_Departamentos_Mostrar]
AS
BEGIN
SELECT * FROM Gral.tbDepartamentos
END
GO
/****** Object:  StoredProcedure [Gral].[SP_DniSugerir]    Script Date: 15/4/2024 09:11:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   PROCEDURE [Gral].[SP_DniSugerir] 
@sugerir VARCHAR(20)
AS
BEGIN
SELECT Pers_DNI FROM Gral.tbPersonas
WHERE Pers_DNI LIKE @sugerir + '%'
END
GO
/****** Object:  StoredProcedure [Gral].[SP_EstadisticaPorSexo]    Script Date: 15/4/2024 09:11:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [Gral].[SP_EstadisticaPorSexo]
AS
BEGIN
SELECT
  COUNT(CASE WHEN p.Pers_Sexo = 'F' THEN 1 ELSE NULL END) AS Mujeres,
  COUNT(CASE WHEN p.Pers_Sexo = 'M' THEN 1 ELSE NULL END) AS Hombres
FROM Rpts.tbReportes r
LEFT JOIN Gral.tbPersonas p ON p.Pers_DNI = r.Repo_DNI
WHERE r.Repo_Estado = 1
END
GO
/****** Object:  StoredProcedure [Gral].[SP_EstadosCiviles_Actualizar]    Script Date: 15/4/2024 09:11:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [Gral].[SP_EstadosCiviles_Actualizar]
    @Esta_Id INT,
    @Esta_EstadoCivil VARCHAR(50),
    @Esta_UsuarioModificacion INT,
    @Esta_FechaModificacion DATETIME
AS
BEGIN
    BEGIN TRY
        UPDATE Gral.tbEstadosCiviles
        SET Esta_EstadoCivil = @Esta_EstadoCivil,
            Esta_UsuarioModificacion = @Esta_UsuarioModificacion,
            Esta_FechaModificacion = @Esta_FechaModificacion
        WHERE Esta_Id = @Esta_Id;
        SELECT 1 AS Resultado;
    END TRY
    BEGIN CATCH
        SELECT 0 AS Resultado;
    END CATCH
END;
GO
/****** Object:  StoredProcedure [Gral].[SP_EstadosCiviles_Detalles]    Script Date: 15/4/2024 09:11:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [Gral].[SP_EstadosCiviles_Detalles]
@Esta_Id INT
AS 
BEGIN
  SELECT Esta_Id, Esta_EstadoCivil, Esta_FechaCreacion, Esta_FechaModificacion,
  CASE WHEN Esta_UsuarioCreacion = USUA.Usua_Id THEN USUA.Usua_Usuario END AS Esta_UsuarioCreacion,
 CASE WHEN Esta_UsuarioModificacion = USU.Usua_Id THEN USU.Usua_Usuario ELSE 'No se ha modificado' END AS Esta_UsuarioModificacion
FROM Gral.tbEstadosCiviles  as esta
  	  INNER JOIN Accs.tbUsuarios AS USUA ON Esta_UsuarioCreacion = USUA.Usua_Id 
	   	  LEFT JOIN Accs.tbUsuarios AS USU ON Esta_UsuarioModificacion = USU.Usua_Id	  
  WHERE Esta_Id = @Esta_Id
END
GO
/****** Object:  StoredProcedure [Gral].[SP_EstadosCiviles_Eliminar]    Script Date: 15/4/2024 09:11:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [Gral].[SP_EstadosCiviles_Eliminar]
    @Esta_Id INT
AS
BEGIN
    BEGIN TRY
        UPDATE Gral.tbEstadosCiviles
        SET Esta_Estado = 0
        WHERE Esta_Id = @Esta_Id;
        SELECT 1 AS Resultado;
    END TRY
    BEGIN CATCH
        SELECT 0 AS Resultado;
    END CATCH
END;
GO
/****** Object:  StoredProcedure [Gral].[SP_EstadosCiviles_Insertar]    Script Date: 15/4/2024 09:11:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [Gral].[SP_EstadosCiviles_Insertar]
    @Esta_EstadoCivil VARCHAR(20),
    @Esta_UsuarioCreacion INT,
    @Esta_FechaCreacion DATETIME
AS
BEGIN
   DECLARE @estadoActual INT;

    SELECT @estadoActual = Esta_Estado FROM Gral.tbEstadosCiviles WHERE Esta_EstadoCivil = @Esta_EstadoCivil;
    BEGIN TRY
	 IF @estadoActual IS NOT NULL
	     BEGIN
       
            IF @estadoActual = 0
            BEGIN

                UPDATE  Gral.tbEstadosCiviles SET Esta_Estado = 1 WHERE Esta_EstadoCivil = @Esta_EstadoCivil;
                SELECT 1
            END
            ELSE
            BEGIN
      
                SELECT 0;
            END
        END
        ELSE
		    BEGIN
        INSERT INTO Gral.tbEstadosCiviles(Esta_EstadoCivil, Esta_UsuarioCreacion, Esta_FechaCreacion)
        VALUES (@Esta_EstadoCivil, @Esta_UsuarioCreacion, @Esta_FechaCreacion);
        SELECT 1 AS Resultado;
			END
    END TRY

    BEGIN CATCH
        SELECT 0 AS Resultado;
    END CATCH
END;
GO
/****** Object:  StoredProcedure [Gral].[SP_EstadosCiviles_Llenar]    Script Date: 15/4/2024 09:11:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [Gral].[SP_EstadosCiviles_Llenar]
@Esta_Id INT
AS 
BEGIN
SELECT * FROM Gral.tbEstadosCiviles
WHERE Esta_Id = @Esta_Id
END
GO
/****** Object:  StoredProcedure [Gral].[SP_EstadosCiviles_Mostrar]    Script Date: 15/4/2024 09:11:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [Gral].[SP_EstadosCiviles_Mostrar]
AS
BEGIN
SELECT * FROM Gral.tbEstadosCiviles
WHERE Esta_Estado = 1
ORDER BY Esta_Id
END
GO
/****** Object:  StoredProcedure [Gral].[SP_Municipios_Actualizar]    Script Date: 15/4/2024 09:11:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [Gral].[SP_Municipios_Actualizar]
    @Muni_Id VARCHAR(4),
    @Muni_Municipio VARCHAR(50),
    @Dept_Id VARCHAR(2),
    @Muni_UsuarioModificacion INT,
    @Muni_FechaModificacion DATETIME
AS
BEGIN
    BEGIN TRY
        UPDATE Gral.tbMunicipios
        SET Muni_Municipio = @Muni_Municipio,
            Dept_Id = @Dept_Id,
            Muni_UsuarioModificacion = @Muni_UsuarioModificacion,
            Muni_FechaModificacion = @Muni_FechaModificacion
        WHERE Muni_Id = @Muni_Id;
        SELECT 1 AS Resultado;
    END TRY
    BEGIN CATCH
        SELECT 0 AS Resultado;
    END CATCH
END;
GO
/****** Object:  StoredProcedure [Gral].[SP_Municipios_Detalles]    Script Date: 15/4/2024 09:11:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 CREATE PROCEDURE [Gral].[SP_Municipios_Detalles] 
 @Muni_Id VARCHAR(4)
 AS
 BEGIN
 SELECT Muni_Id, Muni_Municipio, DEPT.Dept_Id, Muni_FechaCreacion, Muni_FechaModificacion, Dept_Departamento,
  CASE WHEN Muni_UsuarioCreacion = USUA.Usua_Id THEN USUA.Usua_Usuario END AS Muni_UsuarioCreacion,
 CASE WHEN Muni_UsuarioModificacion = USU.Usua_Id THEN USU.Usua_Usuario ELSE 'No se ha modificado' END AS Muni_UsuarioModificacion

 FROM Gral.tbMunicipios AS MUNI
 LEFT JOIN Gral.tbDepartamentos AS DEPT ON MUNI.Dept_Id = DEPT.Dept_Id
 LEFT JOIN Accs.tbUsuarios AS USUA ON Muni_UsuarioCreacion = USUA.Usua_Id 
	   	  LEFT JOIN Accs.tbUsuarios AS USU ON Muni_UsuarioModificacion = USU.Usua_Id	  
	  WHERE MUNI.Muni_Id = @Muni_Id
END
GO
/****** Object:  StoredProcedure [Gral].[SP_Municipios_Eliminar]    Script Date: 15/4/2024 09:11:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [Gral].[SP_Municipios_Eliminar]
    @Muni_Id VARCHAR(4)
AS
BEGIN
    BEGIN TRY
        DELETE FROM Gral.tbMunicipios
        WHERE Muni_Id = @Muni_Id;
        SELECT 1 AS Resultado;
    END TRY
    BEGIN CATCH
        SELECT 0 AS Resultado;
    END CATCH
END;
GO
/****** Object:  StoredProcedure [Gral].[SP_Municipios_Insertar]    Script Date: 15/4/2024 09:11:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [Gral].[SP_Municipios_Insertar]
    @Muni_Id VARCHAR(4),
    @Muni_Municipio VARCHAR(50),
    @Dept_Id VARCHAR(2),
    @Muni_UsuarioCreacion INT,
    @Muni_FechaCreacion DATETIME
AS
BEGIN
    BEGIN TRY
        INSERT INTO Gral.tbMunicipios (Muni_Id, Muni_Municipio, Dept_Id, Muni_UsuarioCreacion, Muni_FechaCreacion)
        VALUES ( @Muni_Id,@Muni_Municipio, @Dept_Id, @Muni_UsuarioCreacion, @Muni_FechaCreacion);
        SELECT 1 AS Resultado;
    END TRY
    BEGIN CATCH
        SELECT 0 AS Resultado;
    END CATCH
END;
GO
/****** Object:  StoredProcedure [Gral].[SP_Municipios_Mostrar]    Script Date: 15/4/2024 09:11:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [Gral].[SP_Municipios_Mostrar]
AS
BEGIN
SELECT * FROM Gral.tbMunicipios AS MUNI
INNER JOIN Gral.tbDepartamentos AS DEPT ON MUNI.Dept_Id = DEPT.Dept_Id
WHERE Muni_Estado = 1
ORDER BY Muni_Id
END
GO
/****** Object:  StoredProcedure [Gral].[SP_MunicipiosMostrarID]    Script Date: 15/4/2024 09:11:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [Gral].[SP_MunicipiosMostrarID]
@Dept_Id VARCHAR(2)
AS
BEGIN
SELECT Muni_Id,Muni_Municipio,Dept_Id FROM Gral.tbMunicipios
WHERE Dept_Id = @Dept_Id
END
GO
/****** Object:  StoredProcedure [Gral].[SP_Personas_Actualizar]    Script Date: 15/4/2024 09:11:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [Gral].[SP_Personas_Actualizar]
    @Pers_Id INT,
    @Pers_DNI VARCHAR(15),
    @Pers_Nombres VARCHAR(50),
    @Pers_Apellidos VARCHAR(50),
    @Pers_Sexo CHAR(1),
    @Pers_DireccionExacta VARCHAR(100),
	@Pers_FechaNacimiento DATETIME,
    @Esta_Id INT,
    @Colo_Id INT,
    @Pers_UsuarioModificacion INT,
    @Pers_FechaModificacion DATETIME
AS
BEGIN
    BEGIN TRY
        UPDATE Gral.tbPersonas
        SET Pers_DNI = @Pers_DNI,
            Pers_Nombres = @Pers_Nombres,
            Pers_Apellidos = @Pers_Apellidos,
            Pers_Sexo = @Pers_Sexo,
            Pers_DireccionExacta = @Pers_DireccionExacta,
			Pers_FechaNacimiento = @Pers_FechaNacimiento,
            Esta_Id = @Esta_Id,
            Colo_Id = @Colo_Id,
            Pers_UsuarioModificacion = @Pers_UsuarioModificacion,
            Pers_FechaModificacion = @Pers_FechaModificacion
        WHERE Pers_Id = @Pers_Id;
        SELECT 1 AS Resultado;
    END TRY
    BEGIN CATCH
        SELECT 0 AS Resultado;
    END CATCH
END;
GO
/****** Object:  StoredProcedure [Gral].[SP_Personas_Detalles]    Script Date: 15/4/2024 09:11:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 CREATE PROCEDURE [Gral].[SP_Personas_Detalles] 
 @PERS_Id INT
 AS
 BEGIN
 SELECT PERS.Pers_Id, Pers_dni, pers_nombres, pers_apellidos, pers_direccionexacta, pers_fechacreacion, pers_fechamodificacion,
 Pers_Sexo,Pers_FechaNacimiento,
 CASE WHEN Pers_UsuarioCreacion = USUA.Usua_Id THEN USUA.Usua_Usuario END AS Pers_UsuarioCreacion,
 CASE WHEN Pers_UsuarioModificacion = USU.Usua_Id THEN USU.Usua_Usuario ELSE 'No se ha modificado' END AS Pers_UsuarioModificacion,
 COLO.colo_id, colo_colonia, ESTA.esta_id, esta_estadocivil, mu.muni_id, muni_municipio, de.dept_id, dept_departamento
 FROM Gral.tbPersonas AS PERS
 INNER JOIN Gral.tbColonias AS COLO ON PERS.Colo_Id = COLO.Colo_Id
 INNER JOIN Gral.tbEstadosCiviles AS ESTA ON PERS.Esta_Id = ESTA.Esta_Id
 INNER JOIN Gral.tbMunicipios mu on mu.Muni_Id = COLO.Muni_Id
 INNER JOIN Gral.tbDepartamentos de on de.Dept_Id = mu.Dept_Id
INNER JOIN Accs.tbUsuarios AS USUA ON Pers_UsuarioCreacion = USUA.Usua_Id 
	   	  LEFT JOIN Accs.tbUsuarios AS USU ON Pers_UsuarioModificacion = USU.Usua_Id	  	  
		  WHERE PERS.PERS_Id = @PERS_Id
END
GO
/****** Object:  StoredProcedure [Gral].[SP_Personas_Eliminar]    Script Date: 15/4/2024 09:11:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [Gral].[SP_Personas_Eliminar]
    @Pers_Id INT
AS
BEGIN
    BEGIN TRY
        UPDATE Gral.tbPersonas
        SET Pers_Estado = 0
        WHERE Pers_Id = @Pers_Id;
        SELECT 1 AS Resultado;
    END TRY
    BEGIN CATCH
        SELECT 0 AS Resultado;
    END CATCH
END;
GO
/****** Object:  StoredProcedure [Gral].[SP_Personas_Insertar]    Script Date: 15/4/2024 09:11:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [Gral].[SP_Personas_Insertar]
    @Pers_DNI VARCHAR(15),
    @Pers_Nombres VARCHAR(50),
    @Pers_Apellidos VARCHAR(50),
    @Pers_Sexo CHAR(1),
    @Pers_DireccionExacta VARCHAR(100),
    @Esta_Id INT,
    @Colo_Id INT,
	@Pers_FechaNacimiento DATE,
    @Pers_UsuarioCreacion INT,
    @Pers_FechaCreacion DATETIME
AS
BEGIN
     DECLARE @estadoActual INT;

    SELECT @estadoActual = Pers_Estado FROM Gral.tbPersonas WHERE Pers_DNI = @Pers_DNI;
    BEGIN TRY
	 IF @estadoActual IS NOT NULL
	     BEGIN
       
            IF @estadoActual = 0
            BEGIN

                UPDATE  Gral.tbPersonas SET Pers_Estado = 1 WHERE Pers_DNI = @Pers_DNI;
                SELECT 1
            END
            ELSE
            BEGIN
      
                SELECT 0;
            END
        END
        ELSE
		    BEGIN
        INSERT INTO Gral.tbPersonas (Pers_DNI, Pers_Nombres, Pers_Apellidos, Pers_Sexo, Pers_DireccionExacta, Esta_Id, Colo_Id, Pers_FechaNacimiento, Pers_UsuarioCreacion, Pers_FechaCreacion)
        VALUES (@Pers_DNI, @Pers_Nombres, @Pers_Apellidos, @Pers_Sexo, @Pers_DireccionExacta, @Esta_Id, @Colo_Id, @Pers_FechaNacimiento,@Pers_UsuarioCreacion, @Pers_FechaCreacion);
        SELECT 1 AS Resultado;
		END
    END TRY
    BEGIN CATCH
        SELECT 0 AS Resultado;
    END CATCH
END;
GO
/****** Object:  StoredProcedure [Gral].[SP_Personas_Mostrar]    Script Date: 15/4/2024 09:11:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [Gral].[SP_Personas_Mostrar]
AS
BEGIN
SELECT ESTA.*,
colo.*,
PERS.Pers_Id, Pers_Nombres, Pers_Apellidos, Pers_DNI,Pers_DireccionExacta, Pers_FechaNacimiento,
CASE WHEN Pers_Sexo = 'F' THEN 'Femenino' ELSE 'Masculino' END AS Pers_Sexo
FROM Gral.tbPersonas AS PERS
INNER JOIN Gral.tbEstadosCiviles AS ESTA ON PERS.Esta_Id = ESTA.Esta_Id
INNER JOIN Gral.tbColonias AS COLO ON PERS.Colo_Id = COLO.Colo_Id
WHERE Pers_Estado = 1
ORDER BY Pers_Id
END
GO
/****** Object:  StoredProcedure [Rpts].[SP_Accidentes_Actualizar]    Script Date: 15/4/2024 09:11:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [Rpts].[SP_Accidentes_Actualizar]
    @Acci_Id INT,
    @Acci_Accidente VARCHAR(50),
    @Acci_UsuarioModificacion INT,
    @Acci_FechaModificacion DATETIME
AS
BEGIN
    BEGIN TRY
        UPDATE Rpts.tbAccidentes
        SET Acci_Accidente = @Acci_Accidente,
            Acci_UsuarioModificacion = @Acci_UsuarioModificacion,
            Acci_FechaModificacion = @Acci_FechaModificacion
        WHERE Acci_Id = @Acci_Id;
        SELECT 1 AS Resultado;
    END TRY
    BEGIN CATCH
        SELECT 0 AS Resultado;
    END CATCH
END;
GO
/****** Object:  StoredProcedure [Rpts].[SP_Accidentes_Detalles]    Script Date: 15/4/2024 09:11:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 CREATE PROCEDURE [Rpts].[SP_Accidentes_Detalles]
 @Acci_Id INT
 AS
 BEGIN
 SELECT Acci_id, acci_accidente, acci_fechacreacion, acci_fechamodificacion,
  CASE WHEN Acci_UsuarioCreacion = USUA.Usua_Id THEN USUA.Usua_Usuario END AS Acci_UsuarioCreacion,
 CASE WHEN Acci_UsuarioModificacion = USU.Usua_Id THEN USU.Usua_Usuario ELSE 'No se ha modificado' END AS Acci_UsuarioModificacion

 FROM Rpts.tbAccidentes acc
INNER JOIN Accs.tbUsuarios AS USUA ON Acci_UsuarioCreacion = USUA.Usua_Id 
	   	  LEFT JOIN Accs.tbUsuarios AS USU ON Acci_UsuarioModificacion = USU.Usua_Id	  
	  WHERE Acci_Id = @Acci_Id
END
GO
/****** Object:  StoredProcedure [Rpts].[SP_Accidentes_Eliminar]    Script Date: 15/4/2024 09:11:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [Rpts].[SP_Accidentes_Eliminar]
    @Acci_Id INT
AS
BEGIN
    BEGIN TRY
        UPDATE Rpts.tbAccidentes
        SET Acci_Estado = 0
        WHERE Acci_Id = @Acci_Id;
        SELECT 1 AS Resultado;
    END TRY
    BEGIN CATCH
        SELECT 0 AS Resultado;
    END CATCH
END;
GO
/****** Object:  StoredProcedure [Rpts].[SP_Accidentes_Insertar]    Script Date: 15/4/2024 09:11:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [Rpts].[SP_Accidentes_Insertar]
    @Acci_Accidente VARCHAR(50),
    @Acci_UsuarioCreacion INT,
    @Acci_FechaCreacion DATETIME
AS
BEGIN
   DECLARE @estadoActual INT;

    SELECT @estadoActual = Acci_Estado FROM Rpts.tbAccidentes WHERE Acci_Accidente = @Acci_Accidente;
    BEGIN TRY
	 IF @estadoActual IS NOT NULL
	     BEGIN
       
            IF @estadoActual = 0
            BEGIN
                -- El estado es 0, actualiza el estado a 1
                UPDATE  Rpts.tbAccidentes SET Acci_Estado = 1 WHERE Acci_Accidente = @Acci_Accidente;
                SELECT 1
            END
            ELSE
            BEGIN
      
                SELECT 0;
            END
        END
        ELSE
		    BEGIN
        INSERT INTO Rpts.tbAccidentes (Acci_Accidente, Acci_UsuarioCreacion, Acci_FechaCreacion)
        VALUES (@Acci_Accidente, @Acci_UsuarioCreacion, @Acci_FechaCreacion);
        SELECT 1 AS Resultado;
	END
    END TRY
    BEGIN CATCH
        SELECT 0 AS Resultado;
    END CATCH
END;
GO
/****** Object:  StoredProcedure [Rpts].[SP_Accidentes_Mostrar]    Script Date: 15/4/2024 09:11:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [Rpts].[SP_Accidentes_Mostrar]
AS
BEGIN
SELECT * FROM Rpts.tbAccidentes
WHERE Acci_Estado = 1 
ORDER BY Acci_Id
END
GO
/****** Object:  StoredProcedure [Rpts].[SP_Desastres_Actualizar]    Script Date: 15/4/2024 09:11:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [Rpts].[SP_Desastres_Actualizar]
    @Desa_Id INT,
    @Desa_Desastre VARCHAR(50),
    @Desa_UsuarioModificacion INT,
    @Desa_FechaModificacion DATETIME
AS
BEGIN
    BEGIN TRY
        UPDATE Rpts.tbDesastres
        SET Desa_Desastre = @Desa_Desastre,
            Desa_UsuarioModificacion = @Desa_UsuarioModificacion,
            Desa_FechaModificacion = @Desa_FechaModificacion
        WHERE Desa_Id = @Desa_Id;
        SELECT 1 AS Resultado;
    END TRY
    BEGIN CATCH
        SELECT 0 AS Resultado;
    END CATCH
END;
GO
/****** Object:  StoredProcedure [Rpts].[SP_Desastres_Detalles]    Script Date: 15/4/2024 09:11:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 CREATE PROCEDURE [Rpts].[SP_Desastres_Detalles]
 @Desa_Id INT
 AS
 BEGIN
 SELECT Desa_Id, Desa_Desastre, Desa_FechaCreacion, Desa_FechaModificacion,
  CASE WHEN Desa_UsuarioCreacion = USUA.Usua_Id THEN USUA.Usua_Usuario END AS Desa_UsuarioCreacion,
 CASE WHEN Desa_UsuarioModificacion = USU.Usua_Id THEN USU.Usua_Usuario ELSE 'No se ha modificado' END AS Desa_UsuarioModificacion

 FROM Rpts.tbDesastres DESA
INNER JOIN Accs.tbUsuarios AS USUA ON Desa_UsuarioCreacion = USUA.Usua_Id 
	   	  LEFT JOIN Accs.tbUsuarios AS USU ON Desa_UsuarioModificacion = USU.Usua_Id	  	  WHERE Desa_Id = @Desa_Id
END
GO
/****** Object:  StoredProcedure [Rpts].[SP_Desastres_Eliminar]    Script Date: 15/4/2024 09:11:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [Rpts].[SP_Desastres_Eliminar]
    @Desa_Id INT
AS
BEGIN
    BEGIN TRY
        UPDATE Rpts.tbDesastres
        SET Desa_Estado = 0
        WHERE Desa_Id = @Desa_Id;
        SELECT 1 AS Resultado;
    END TRY
    BEGIN CATCH
        SELECT 0 AS Resultado;
    END CATCH
END;
GO
/****** Object:  StoredProcedure [Rpts].[SP_Desastres_Insertar]    Script Date: 15/4/2024 09:11:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [Rpts].[SP_Desastres_Insertar]
    @Desa_Desastre VARCHAR(50),
    @Desa_UsuarioCreacion INT,
    @Desa_FechaCreacion DATETIME
AS
BEGIN
   DECLARE @estadoActual INT;

    SELECT @estadoActual = Desa_Estado FROM Rpts.tbDesastres WHERE Desa_Desastre = @Desa_Desastre;
    BEGIN TRY
	 IF @estadoActual IS NOT NULL
	     BEGIN
       
            IF @estadoActual = 0
            BEGIN
                -- El estado es 0, actualiza el estado a 1
                UPDATE  Rpts.tbDesastres SET Desa_Estado = 1 WHERE Desa_Desastre = @Desa_Desastre;
                SELECT 1
            END
            ELSE
            BEGIN
      
                SELECT 0;
            END
        END
        ELSE
		    BEGIN
        INSERT INTO Rpts.tbDesastres (Desa_Desastre, Desa_UsuarioCreacion, Desa_FechaCreacion)
        VALUES (@Desa_Desastre, @Desa_UsuarioCreacion, @Desa_FechaCreacion);
        SELECT 1 AS Resultado;
		END
    END TRY
    BEGIN CATCH
        SELECT 0 AS Resultado;
    END CATCH
END;
GO
/****** Object:  StoredProcedure [Rpts].[SP_Desastres_Mostrar]    Script Date: 15/4/2024 09:11:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [Rpts].[SP_Desastres_Mostrar]
AS
BEGIN
SELECT * FROM Rpts.tbDesastres
WHERE Desa_Estado = 1
ORDER BY Desa_Id
END
GO
/****** Object:  StoredProcedure [Rpts].[SP_Emergencias_Actualizar]    Script Date: 15/4/2024 09:11:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [Rpts].[SP_Emergencias_Actualizar]
    @Emer_Id INT,
    @Emer_Emergencia VARCHAR(50),
    @Emer_UsuarioModificacion INT,
    @Emer_FechaModificacion DATETIME
AS
BEGIN
    BEGIN TRY
        UPDATE Rpts.tbEmergencias
        SET Emer_Emergencia = @Emer_Emergencia,
            Emer_UsuarioModificacion = @Emer_UsuarioModificacion,
            Emer_FechaModificacion = @Emer_FechaModificacion
        WHERE Emer_Id = @Emer_Id;
        SELECT 1 AS Resultado;
    END TRY
    BEGIN CATCH
        SELECT 0 AS Resultado;
    END CATCH
END;
GO
/****** Object:  StoredProcedure [Rpts].[SP_Emergencias_Detalles]    Script Date: 15/4/2024 09:11:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 CREATE PROCEDURE [Rpts].[SP_Emergencias_Detalles]
 @Emer_Id INT
 AS
 BEGIN
 SELECT Emer_Id, Emer_Emergencia, Emer_FechaCreacion, Emer_FechaModificacion, 
 CASE WHEN Emer_UsuarioCreacion = USUA.Usua_Id THEN USUA.Usua_Usuario END AS Emer_UsuarioCreacion,
 CASE WHEN Emer_UsuarioModificacion = USU.Usua_Id THEN USU.Usua_Usuario ELSE 'No se ha modificado' END AS Emer_UsuarioModificacion

 FROM Rpts.tbEmergencias emer
 	  INNER JOIN Accs.tbUsuarios AS USUA ON emer.Emer_UsuarioCreacion = USUA.Usua_Id 
	   	  LEFT JOIN Accs.tbUsuarios AS USU ON emer.Emer_UsuarioModificacion = USU.Usua_Id

	  WHERE Emer_Id = @Emer_Id
END
GO
/****** Object:  StoredProcedure [Rpts].[SP_Emergencias_Eliminar]    Script Date: 15/4/2024 09:11:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [Rpts].[SP_Emergencias_Eliminar]
    @Emer_Id INT
AS
BEGIN
    BEGIN TRY
        UPDATE Rpts.tbEmergencias
        SET Emer_Estado = 0
        WHERE Emer_Id = @Emer_Id;
        SELECT 1 AS Resultado;
    END TRY
    BEGIN CATCH
        SELECT 0 AS Resultado;
    END CATCH
END;
GO
/****** Object:  StoredProcedure [Rpts].[SP_Emergencias_Insertar]    Script Date: 15/4/2024 09:11:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [Rpts].[SP_Emergencias_Insertar]
    @Emer_Emergencia VARCHAR(50),
    @Emer_UsuarioCreacion INT,
    @Emer_FechaCreacion DATETIME
AS
BEGIN
 DECLARE @estadoActual INT;

    SELECT @estadoActual = Emer_Estado FROM Rpts.tbEmergencias WHERE Emer_Emergencia = @Emer_Emergencia;
    BEGIN TRY
	 IF @estadoActual IS NOT NULL
	     BEGIN
       
            IF @estadoActual = 0
            BEGIN
                -- El estado es 0, actualiza el estado a 1
                UPDATE  Rpts.tbEmergencias SET Emer_Estado = 1 WHERE Emer_Emergencia = @Emer_Emergencia;
                SELECT 1
            END
            ELSE
            BEGIN
      
                SELECT 0;
            END
        END
        ELSE
		    BEGIN
        INSERT INTO Rpts.tbEmergencias (Emer_Emergencia, Emer_UsuarioCreacion, Emer_FechaCreacion)
        VALUES (@Emer_Emergencia, @Emer_UsuarioCreacion, @Emer_FechaCreacion);
        SELECT 1 AS Resultado;
		END
    END TRY
    BEGIN CATCH
        SELECT 0 AS Resultado;
    END CATCH
END;
GO
/****** Object:  StoredProcedure [Rpts].[SP_Emergencias_Mostrar]    Script Date: 15/4/2024 09:11:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [Rpts].[SP_Emergencias_Mostrar]
AS
BEGIN
SELECT * FROM Rpts.tbEmergencias
WHERE Emer_Estado = 1
ORDER BY Emer_Id
END
GO
/****** Object:  StoredProcedure [Rpts].[SP_ImagenesPorReporte_EliminarID]    Script Date: 15/4/2024 09:11:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [Rpts].[SP_ImagenesPorReporte_EliminarID]
@ImRe_Imagen VARCHAR(MAX)
AS
BEGIN
	DELETE Rpts.tbImagenesPorReportes 
	WHERE ImRe_Imagen = @ImRe_Imagen
END
GO
/****** Object:  StoredProcedure [Rpts].[SP_ImagenesPorReporte_Mostrar]    Script Date: 15/4/2024 09:11:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [Rpts].[SP_ImagenesPorReporte_Mostrar]
AS
BEGIN
	SELECT * FROM Rpts.tbImagenesPorReportes
END
GO
/****** Object:  StoredProcedure [Rpts].[SP_ImagenesPorReporte_MostrarID]    Script Date: 15/4/2024 09:11:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [Rpts].[SP_ImagenesPorReporte_MostrarID]
@Repo_Id INT
AS
BEGIN
	SELECT * FROM Rpts.tbImagenesPorReportes 
	WHERE Repo_Id = @Repo_Id
END
GO
/****** Object:  StoredProcedure [Rpts].[SP_ImagenesPorReporte_Mostras]    Script Date: 15/4/2024 09:11:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [Rpts].[SP_ImagenesPorReporte_Mostras]
AS
BEGIN
	SELECT * FROM Rpts.tbImagenesPorReportes
END
GO
/****** Object:  StoredProcedure [Rpts].[SP_ImagenesPorReporteDesastre_EliminarID]    Script Date: 15/4/2024 09:11:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [Rpts].[SP_ImagenesPorReporteDesastre_EliminarID]
@ImRe_Imagen VARCHAR(MAX)
AS
BEGIN
	DELETE Rpts.tbImagenesPorReportesDesastres
	WHERE ImRD_Imagen = @ImRe_Imagen
END
GO
/****** Object:  StoredProcedure [Rpts].[SP_ImagenesPorReporteDesastre_MostrarID]    Script Date: 15/4/2024 09:11:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [Rpts].[SP_ImagenesPorReporteDesastre_MostrarID] 
@Repo_Id INT
AS
BEGIN
	SELECT ImRD_Id AS ImRe_Id, ReDe_Id AS Repo_Id, ImRD_Imagen AS ImRe_Imagen FROM Rpts.tbImagenesPorReportesDesastres
	WHERE ReDe_Id = @Repo_Id
END
GO
/****** Object:  StoredProcedure [Rpts].[SP_MunicipioPorReporte_Eliminar]    Script Date: 15/4/2024 09:11:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [Rpts].[SP_MunicipioPorReporte_Eliminar]
@Muni_Id VARCHAR(4),
@Rede_Id INT
AS
BEGIN
	DELETE Rpts.tbMunicipiosPorReportes
	WHERE Muni_Id = @Muni_Id AND ReDe_Id = @Rede_Id
END
GO
/****** Object:  StoredProcedure [Rpts].[SP_MunicipioPorReporte_Insertar]    Script Date: 15/4/2024 09:11:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [Rpts].[SP_MunicipioPorReporte_Insertar]
@Muni_Id VARCHAR(4),
@Rede_Id INT
AS
BEGIN
  BEGIN TRY
	INSERT INTO Rpts.tbMunicipiosPorReportes(Muni_Id,ReDe_Id)
	VALUES (@Muni_Id,@Rede_Id)
		   SELECT 1 AS Resultado;
    END TRY
	    BEGIN CATCH
        SELECT 0 AS Resultado;
    END CATCH
END
GO
/****** Object:  StoredProcedure [Rpts].[SP_MunicipioPorReporte_Mostrar]    Script Date: 15/4/2024 09:11:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [Rpts].[SP_MunicipioPorReporte_Mostrar]
@Rede_Id INT
AS 
BEGIN

	SELECT MuRe_Id,ReDe_Id,mu.Muni_Id,Muni_Municipio FROM  Rpts.tbMunicipiosPorReportes as mr
	LEFT JOIN Gral.tbMunicipios mu on mu.Muni_Id = mr.Muni_Id
	WHERE Rede_Id = @Rede_Id

END
GO
/****** Object:  StoredProcedure [Rpts].[SP_MunicipiosPorReportes_Actualizar]    Script Date: 15/4/2024 09:11:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [Rpts].[SP_MunicipiosPorReportes_Actualizar]
    @MuRe_Id INT,
    @Muni_Id VARCHAR(4),
    @ReDe_Id INT,
    @MuRe_UsuarioModificacion INT,
    @MuRe_FechaModificacion DATETIME
AS
BEGIN
    BEGIN TRY
        UPDATE Rpts.tbMunicipiosPorReportes
        SET Muni_Id = @Muni_Id,
            ReDe_Id = @ReDe_Id,
            MuRe_UsuarioModificacion = @MuRe_UsuarioModificacion,
            MuRe_FechaModificacion = @MuRe_FechaModificacion
        WHERE MuRe_Id = @MuRe_Id;
        SELECT 1 AS Resultado;
    END TRY
    BEGIN CATCH
        SELECT 0 AS Resultado;
    END CATCH
END;
GO
/****** Object:  StoredProcedure [Rpts].[SP_MunicipiosPorReportes_Eliminar]    Script Date: 15/4/2024 09:11:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [Rpts].[SP_MunicipiosPorReportes_Eliminar]
    @MuRe_Id INT
AS
BEGIN
    BEGIN TRY
        UPDATE Rpts.tbMunicipiosPorReportes
        SET MuRe_Estado = 0 
        WHERE MuRe_Id = @MuRe_Id;
        SELECT 1 AS Resultado;
    END TRY
    BEGIN CATCH
        SELECT 0 AS Resultado;
    END CATCH
END;
GO
/****** Object:  StoredProcedure [Rpts].[SP_MunicipiosPorReportes_Insertar]    Script Date: 15/4/2024 09:11:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [Rpts].[SP_MunicipiosPorReportes_Insertar]
    @Muni_Id VARCHAR(4),
    @ReDe_Id INT,
    @MuRe_UsuarioCreacion INT,
    @MuRe_FechaCreacion DATETIME
AS
BEGIN
    BEGIN TRY
        INSERT INTO Rpts.tbMunicipiosPorReportes(Muni_Id,ReDe_Id,MuRe_UsuarioCreacion, MuRe_FechaCreacion)
        VALUES (@Muni_Id,
            @ReDe_Id,
            @MuRe_UsuarioCreacion,
            @MuRe_FechaCreacion)
        SELECT 1 AS Resultado;
    END TRY
    BEGIN CATCH
        SELECT 0 AS Resultado;
    END CATCH
END;
GO
/****** Object:  StoredProcedure [Rpts].[SP_ObtenerReportesID]    Script Date: 15/4/2024 09:11:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [Rpts].[SP_ObtenerReportesID]
@Repo_Id INT
AS
BEGIN
SELECT * FROM [Rpts].[VW_Reportes_MostrarID]
WHERE Repo_Id = @Repo_Id
END
GO
/****** Object:  StoredProcedure [Rpts].[SP_PersonasPorReportes_Actualizar]    Script Date: 15/4/2024 09:11:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [Rpts].[SP_PersonasPorReportes_Actualizar]
    @PeRe_Id INT,
    @Pers_Id INT,
    @Repo_Id INT,
    @Repo_Difo BIT,
    @PeRe_UsuarioModificacion INT,
    @PeRe_FechaModificacion DATETIME
AS
BEGIN
    BEGIN TRY
        UPDATE Rpts.tbPersonasPorReportes
        SET Pers_Id = @Pers_Id,
            Repo_Id = @Repo_Id,
            Repo_Difo = @Repo_Difo,
            PeRe_UsuarioModificacion = @PeRe_UsuarioModificacion,
            PeRe_FechaModificacion = @PeRe_FechaModificacion
        WHERE PeRe_Id = @PeRe_Id;
        SELECT 1 AS Resultado;
    END TRY
    BEGIN CATCH
        SELECT 0 AS Resultado;
    END CATCH
END;
GO
/****** Object:  StoredProcedure [Rpts].[SP_PersonasPorReportes_Eliminar]    Script Date: 15/4/2024 09:11:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [Rpts].[SP_PersonasPorReportes_Eliminar]
    @PeRe_Id INT
AS
BEGIN
    BEGIN TRY
        UPDATE Rpts.tbPersonasPorReportes
        SET PeRe_Estado = 0
        WHERE PeRe_Id = @PeRe_Id;
        SELECT 1 AS Resultado;
    END TRY
    BEGIN CATCH
        SELECT 0 AS Resultado;
    END CATCH
END;
GO
/****** Object:  StoredProcedure [Rpts].[SP_PersonasPorReportes_Insertar]    Script Date: 15/4/2024 09:11:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [Rpts].[SP_PersonasPorReportes_Insertar]
    @Pers_Id INT,
    @Repo_Id INT,
    @Repo_Difo BIT,
    @PeRe_UsuarioCreacion INT,
    @PeRe_FechaCreacion DATETIME
AS
BEGIN
    BEGIN TRY
        INSERT INTO Rpts.tbPersonasPorReportes(Pers_Id,Repo_Id,Repo_Difo,PeRe_UsuarioCreacion,PeRe_FechaCreacion)
		VALUES(@Pers_Id ,
            @Repo_Id,
            @Repo_Difo ,
            @PeRe_UsuarioCreacion,
            @PeRe_FechaCreacion)
        SELECT 1 AS Resultado;
    END TRY
    BEGIN CATCH
        SELECT 0 AS Resultado;
    END CATCH
END;
GO
/****** Object:  StoredProcedure [Rpts].[SP_ReporteDesastrePorImagenes_Insertar]    Script Date: 15/4/2024 09:11:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [Rpts].[SP_ReporteDesastrePorImagenes_Insertar]
@Repo_Id INT,
@ImRe_Imagen VARCHAR(MAX)

AS
BEGIN
	INSERT INTO Rpts.tbImagenesPorReportesDesastres (ReDe_Id,ImRD_Imagen)
	VALUES (@Repo_Id,
			@ImRe_Imagen)
END
GO
/****** Object:  StoredProcedure [Rpts].[SP_ReportePorImagenes_Insertar]    Script Date: 15/4/2024 09:11:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [Rpts].[SP_ReportePorImagenes_Insertar]
@Repo_Id INT,
@ImRe_Imagen VARCHAR(MAX),
@ImRe_Difo bit
AS
BEGIN
	INSERT INTO Rpts.tbImagenesPorReportes (Repo_Id,ImRe_Imagen,ImRe_Difo)
	VALUES (@Repo_Id,
			@ImRe_Imagen,
			@ImRe_Difo)
END
GO
/****** Object:  StoredProcedure [Rpts].[SP_Reportes_Actualizar]    Script Date: 15/4/2024 09:11:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [Rpts].[SP_Reportes_Actualizar]
    @Repo_Id INT,
    @Repo_DNI VARCHAR(15),
    @Repo_Descripcion VARCHAR(MAX),
    @AcEm_Id INT,
    @Colo_Id INT,
	@Repo_Otros VARCHAR(60),
    @Repo_UsuarioModificacion INT,
    @Repo_FechaModificacion DATETIME
AS
BEGIN
    BEGIN TRY
        UPDATE Rpts.tbReportes
        SET Repo_DNI = @Repo_DNI,
            Repo_Descripcion = @Repo_Descripcion,
            AcEm_Id = @AcEm_Id,
            Colo_Id = @Colo_Id,
			Repo_Otros = @Repo_Otros,
            Repo_UsuarioModificacion = @Repo_UsuarioModificacion,
            Repo_FechaModificacion = @Repo_FechaModificacion
        WHERE Repo_Id = @Repo_Id;
        SELECT 1 AS Resultado;
    END TRY
    BEGIN CATCH
        SELECT 0 AS Resultado;
    END CATCH
END;
GO
/****** Object:  StoredProcedure [Rpts].[SP_Reportes_Eliminar]    Script Date: 15/4/2024 09:11:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [Rpts].[SP_Reportes_Eliminar]
    @Repo_Id INT
AS
BEGIN
    BEGIN TRY
        UPDATE Rpts.tbReportes
        SET Repo_Estado = 0
        WHERE Repo_Id = @Repo_Id;
        SELECT 1 AS Resultado;
    END TRY
    BEGIN CATCH
        SELECT 0 AS Resultado;
    END CATCH
END;
GO
/****** Object:  StoredProcedure [Rpts].[SP_Reportes_FinalizarEstado]    Script Date: 15/4/2024 09:11:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [Rpts].[SP_Reportes_FinalizarEstado]
    @Repo_Id INT
AS
BEGIN
    BEGIN TRY
        UPDATE Rpts.tbReportes
        SET Repo_EstadoReporte = 0
        WHERE Repo_Id = @Repo_Id;
        SELECT 1 AS Resultado;
    END TRY
    BEGIN CATCH
        SELECT 0 AS Resultado;
    END CATCH
END;
GO
/****** Object:  StoredProcedure [Rpts].[SP_Reportes_Insertar]    Script Date: 15/4/2024 09:11:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [Rpts].[SP_Reportes_Insertar]
    @Repo_DNI VARCHAR(15),
    @Repo_Descripcion VARCHAR(MAX),
    @Repo_Fecha DATETIME,
	@Repo_Difo_Id INT,
    @AcEm_Id INT,
    @Colo_Id INT,
	@Repo_Otros VARCHAR(60),
    @Repo_UsuarioCreacion INT,
    @Repo_FechaCreacion DATETIME,
	@Repo_Id INT OUTPUT
AS
BEGIN


    DECLARE @PersonaExiste INT;
    DECLARE @ReporteDuplicado INT;
	  DECLARE @Duplicado INT;
    BEGIN TRY
        SELECT @Duplicado = Repo_Id
        FROM Rpts.tbReportes
        WHERE Repo_DNI = @Repo_DNI
          AND Repo_Difo_Id = @Repo_Difo_Id
          AND AcEm_Id = @AcEm_Id
          AND Colo_Id = @Colo_Id
		  AND Repo_Estado = 1
		  AND AcEm_Id != 6;
        IF (@Duplicado IS NOT NULL)
        BEGIN
           
            SET @Repo_Id = @Duplicado; 
            SELECT 0 AS Resultado; 
            RETURN; 
        END


        SELECT @ReporteDuplicado = Repo_Id
        FROM Rpts.tbReportes
        WHERE Repo_DNI != @Repo_DNI
          AND Repo_Difo_Id = @Repo_Difo_Id
          AND AcEm_Id = @AcEm_Id
          AND Colo_Id = @Colo_Id
		  AND Repo_Estado = 1
		  AND AcEm_Id != 6;
        IF (@ReporteDuplicado IS NULL)
        BEGIN
          
            INSERT INTO Rpts.tbReportes (Repo_DNI, Repo_Descripcion, Repo_Fecha, Repo_Difo_Id, AcEm_Id, Colo_Id,Repo_Otros, Repo_UsuarioCreacion, Repo_FechaCreacion)
            VALUES (@Repo_DNI, @Repo_Descripcion, @Repo_Fecha, @Repo_Difo_Id, @AcEm_Id, @Colo_Id,@Repo_Otros, @Repo_UsuarioCreacion, @Repo_FechaCreacion);
            SET @Repo_Id = SCOPE_IDENTITY();
        END
        ELSE
        BEGIN
          
            SELECT @PersonaExiste = Pers_Id
            FROM Gral.tbPersonas
            WHERE Pers_DNI = @Repo_DNI;

            IF (@PersonaExiste IS NOT NULL)
            BEGIN
             
                INSERT INTO Rpts.tbPersonasPorReportes (Pers_Id, Repo_Id)
                VALUES (@PersonaExiste, @ReporteDuplicado);
         
                SET @Repo_Id = @ReporteDuplicado;
            END
            ELSE
            BEGIN
                SET @Repo_Id = 0;
            END
        END

  
        SELECT 1
    END TRY
    BEGIN CATCH
 
        SELECT 0
    END CATCH
END; 
GO
/****** Object:  StoredProcedure [Rpts].[SP_Reportes_Mostrar]    Script Date: 15/4/2024 09:11:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
  CREATE   PROCEDURE [Rpts].[SP_Reportes_Mostrar]
AS
BEGIN
 
    SELECT

        ROW_NUMBER() OVER(
       ORDER BY r.Repo_Fecha DESC) AS Repo_Id, 
	   COALESCE(r.Repo_Id,rd.ReDe_Id) AS id,
        COALESCE(r.Repo_DNI,rd.ReDe_DNI) AS Repo_DNI ,
		COALESCE(pe.Pers_Nombres,pd.Pers_Nombres) AS Pers_Nombres,
		COALESCE(pe.Pers_Id,pd.Pers_Id) AS Pers_Id,
		COALESCE(r.Repo_Descripcion,rd.ReDe_Descripcion) AS Repo_Descripcion,
		COALESCE(r.Repo_Fecha,rd.ReDe_Fecha) AS Repo_Fecha,
		COALESCE(r.Repo_Difo_Id,rd.Repo_Difo_Id) AS Repo_Difo_Id,
		   CASE 
            WHEN r.Repo_Difo_Id = 1 THEN 'Accidente'
            WHEN r.Repo_Difo_Id = 2 THEN 'Emergencia'
            ELSE 'Desastre' 
        END AS TipoEvento,
		COALESCE(ac.Acci_Accidente, em.Emer_Emergencia, des.Desa_Desastre) AS Evento,
        COALESCE(r.Repo_EstadoReporte,rd.ReDe_EstadoReporte) AS Repo_EstadoReporte,
		 CASE 
            WHEN r.Repo_EstadoReporte = 1 THEN 'Activo'
            WHEN r.Repo_EstadoReporte = 0 THEN 'Finalizado'
			WHEN rd.ReDe_EstadoReporte= 1 THEN 'Activo'
			WHEN rd.ReDe_EstadoReporte = 0 THEN 'Finalizado'
        END AS ReporteFinalizado,
		COALESCE(r.Repo_Otros,rd.Repo_Otros) AS Repo_Otros,
		COALESCE(co.Colo_Id, Null) AS Colo_Id,
		COALESCE(co.Colo_Colonia, Null) AS Colo_Id_O_Desastre,
		COALESCE(r.Repo_UsuarioCreacion,rd.ReDe_UsuarioCreacion) AS Repo_UsuarioCreacion,
		COALESCE(r.Repo_FechaCreacion,rd.ReDe_FechaCreacion) AS Repo_FechaCreacion,
		COALESCE(r.Repo_UsuarioModificacion,rd.ReDe_UsuarioModificacion) AS Repo_UsuarioModificacion,
        COALESCE(r.Repo_FechaModificacion,rd.ReDe_FechaModificacion) AS Repo_FechaModificacion,
		COALESCE(r.Repo_Estado,rd.ReDe_Estado) AS Repo_Estado,
		(SELECT STRING_AGG(Muni_Municipio, ' | ')
FROM Rpts.tbMunicipiosPorReportes AS MxR LEFT JOIN Gral.tbMunicipios
AS muni ON muni.Muni_Id = MxR.Muni_Id
WHERE MxR.ReDe_Id = rd.ReDe_Id  ) AS Municipios
      ,
		(SELECT STRING_AGG(pers.Pers_Nombres, ' | ')
FROM Rpts.tbPersonasPorReportes AS PxR LEFT JOIN Gral.tbPersonas
AS pers ON pers.Pers_Id = PxR.Pers_Id 
WHERE PxR.Repo_Id = r.Repo_Id  ) AS Personas
       
    FROM
        [Rpts].[tbReportes] r
        FULL OUTER JOIN [Rpts].[tbReportesPorDesastres] rd ON r.Repo_Difo_Id = rd.Repo_Difo_Id
        LEFT JOIN [Rpts].[tbAccidentes] ac ON r.Repo_Difo_Id = 1 AND r.AcEm_Id = ac.Acci_Id
        LEFT JOIN [Rpts].[tbEmergencias] em ON r.Repo_Difo_Id = 2 AND r.AcEm_Id = em.Emer_Id
        LEFT JOIN [Rpts].[tbDesastres] des ON rd.Desa_Id = des.Desa_Id
		LEFT JOIN [Gral].[tbColonias] co on r.Colo_Id = co.Colo_Id
		LEFT JOIN Gral.tbPersonas pe on pe.Pers_DNI = r.Repo_DNI
		LEFT JOIN Gral.tbPersonas pd on pd.Pers_DNI = rd.ReDe_DNI
    WHERE
        r.Repo_Difo_Id = 1 OR r.Repo_Difo_Id = 2 OR rd.Desa_Id IS NOT NULL
END

GO
/****** Object:  StoredProcedure [Rpts].[SP_Reportes_Total]    Script Date: 15/4/2024 09:11:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [Rpts].[SP_Reportes_Total]
AS
BEGIN
SELECT
  COUNT(CASE WHEN tipo_id =' 1' THEN 1 ELSE NULL END) AS Accidentes,
   COUNT(CASE WHEN tipo_id = 2 THEN 1 ELSE NULL END) AS Emergencias,
    COUNT(CASE WHEN tipo_id = 3 THEN 1 ELSE NULL END) AS Desastres
FROM Rpts.VW_Reportes_MostrarID
WHERE Repo_Estado = 1
END
GO
/****** Object:  StoredProcedure [Rpts].[SP_ReportesDesastres_Actualizar]    Script Date: 15/4/2024 09:11:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [Rpts].[SP_ReportesDesastres_Actualizar]
	@Repo_DNI VARCHAR(15),
    @Repo_Descripcion VARCHAR(MAX),
    @AcEm_Id INT,
	@Repo_Otros VARCHAR(60),
    @Repo_UsuarioModificacion INT,
    @Repo_FechaModificacion DATETIME,
	@ReDe_Id INT
AS
BEGIN
    BEGIN TRY
    UPDATE [Rpts].[tbReportesPorDesastres] SET ReDe_DNI = @Repo_DNI, ReDe_Descripcion = @Repo_Descripcion, Desa_Id = @AcEm_Id,Repo_Otros = @Repo_Otros, ReDe_UsuarioModificacion = @Repo_UsuarioModificacion, ReDe_FechaModificacion = @Repo_FechaModificacion
	WHERE ReDe_Id = @ReDe_Id
	   SELECT 1 AS Resultado;
    END TRY
    BEGIN CATCH
        SELECT 0 AS Resultado;
    END CATCH
	
END
GO
/****** Object:  StoredProcedure [Rpts].[SP_ReportesDesastres_FinalizarEstado]    Script Date: 15/4/2024 09:11:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [Rpts].[SP_ReportesDesastres_FinalizarEstado]
    @Repo_Id INT
AS
BEGIN
    BEGIN TRY
        UPDATE Rpts.tbReportesPorDesastres
        SET ReDe_EstadoReporte = 0
        WHERE ReDe_Id = @Repo_Id;
        SELECT 1 AS Resultado;
    END TRY
    BEGIN CATCH
        SELECT 0 AS Resultado;
    END CATCH
END;
GO
/****** Object:  StoredProcedure [Rpts].[SP_ReportesDesastres_Insertar]    Script Date: 15/4/2024 09:11:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [Rpts].[SP_ReportesDesastres_Insertar]
    @Repo_DNI VARCHAR(15),
    @Repo_Descripcion VARCHAR(MAX),
    @Repo_Fecha DATETIME,
	@Repo_Difo_Id INT,
    @AcEm_Id INT,
	@Repo_Otros VARCHAR(60),
    @Repo_UsuarioCreacion INT,
    @Repo_FechaCreacion DATETIME,
	@ReDe_Id INT OUTPUT
AS
BEGIN
    BEGIN TRY
        INSERT INTO Rpts.tbReportesPorDesastres (ReDe_DNI, ReDe_Descripcion, ReDe_Fecha,Repo_Difo_Id ,Desa_Id,Repo_Otros, ReDe_UsuarioCreacion, ReDe_FechaCreacion)
        VALUES (@Repo_DNI, @Repo_Descripcion, @Repo_Fecha,@Repo_Difo_Id, @AcEm_Id,@Repo_Otros, @Repo_UsuarioCreacion, @Repo_FechaCreacion);
       SET @ReDe_Id = SCOPE_IDENTITY();
	   SELECT 1 AS Resultado;
    END TRY
    BEGIN CATCH
        SELECT 0 AS Resultado;
    END CATCH
END;
GO
/****** Object:  StoredProcedure [Rpts].[SP_ReportesPorDesastres_Actualizar]    Script Date: 15/4/2024 09:11:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [Rpts].[SP_ReportesPorDesastres_Actualizar]
    @ReDe_Id INT,
    @ReDe_DNI VARCHAR(15),
    @ReDe_Descripcion VARCHAR(MAX),
    @ReDe_Fecha DATETIME,
    @ReDe_Imagen VARCHAR(MAX),
    @ReDe_EstadoReporte BIT,
    @Desa_Id INT,
    @ReDe_UsuarioModificacion INT,
    @ReDe_FechaModificacion DATETIME
AS
BEGIN
    BEGIN TRY
        UPDATE Rpts.tbReportesPorDesastres
        SET ReDe_DNI = @ReDe_DNI,
            ReDe_Descripcion = @ReDe_Descripcion,
            ReDe_Fecha = @ReDe_Fecha,
            ReDe_Imagen = @ReDe_Imagen,
            ReDe_EstadoReporte = @ReDe_EstadoReporte,
            Desa_Id = @Desa_Id,
            ReDe_UsuarioModificacion = @ReDe_UsuarioModificacion,
            ReDe_FechaModificacion = @ReDe_FechaModificacion
        WHERE ReDe_Id = @ReDe_Id;
        SELECT 1 AS Resultado;
    END TRY
    BEGIN CATCH
        SELECT 0 AS Resultado;
    END CATCH
END;
GO
/****** Object:  StoredProcedure [Rpts].[SP_ReportesPorDesastres_Eliminar]    Script Date: 15/4/2024 09:11:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [Rpts].[SP_ReportesPorDesastres_Eliminar]
    @Repo_Id INT
AS
BEGIN
    BEGIN TRY
        UPDATE Rpts.tbReportesPorDesastres
        SET ReDe_Estado = 0
        WHERE ReDe_Id = @Repo_Id;
        SELECT 1 AS Resultado;
    END TRY
    BEGIN CATCH
        SELECT 0 AS Resultado;
    END CATCH
END;
GO
/****** Object:  StoredProcedure [Rpts].[SP_ReportesPorDesastres_Insertar]    Script Date: 15/4/2024 09:11:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [Rpts].[SP_ReportesPorDesastres_Insertar]
    @ReDe_DNI VARCHAR(15),
    @ReDe_Descripcion VARCHAR(MAX),
    @ReDe_Fecha DATETIME,
    @ReDe_Imagen VARCHAR(MAX),
    @ReDe_EstadoReporte BIT,
    @Desa_Id INT,
    @ReDe_UsuarioCreacion INT,
    @ReDe_FechaCreacion DATETIME
AS
BEGIN
    BEGIN TRY
        INSERT INTO Rpts.tbReportesPorDesastres (ReDe_DNI, ReDe_Descripcion, ReDe_Fecha, ReDe_Imagen, ReDe_EstadoReporte, Desa_Id, ReDe_UsuarioCreacion, ReDe_FechaCreacion)
        VALUES (@ReDe_DNI, @ReDe_Descripcion, @ReDe_Fecha, @ReDe_Imagen, @ReDe_EstadoReporte, @Desa_Id, @ReDe_UsuarioCreacion, @ReDe_FechaCreacion);
        SELECT 1 AS Resultado;
    END TRY
    BEGIN CATCH
        SELECT 0 AS Resultado;
    END CATCH
END;
GO
USE [master]
GO
ALTER DATABASE [DBSistema_GestionReportes] SET  READ_WRITE 
GO
