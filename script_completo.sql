USE [master]
GO
/****** Object:  Database [mpos_pollo_express_qa]    Script Date: 2021/03/03 11:57:23 AM ******/
CREATE DATABASE [mpos_pollo_express_qa]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'MPOS2', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS2017\MSSQL\DATA\mpos_pollo_express_qa.mdf' , SIZE = 923520KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'MPOS2_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS2017\MSSQL\DATA\mpos_pollo_express_qa_log.ldf' , SIZE = 43264KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [mpos_pollo_express_qa] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [mpos_pollo_express_qa].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [mpos_pollo_express_qa] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [mpos_pollo_express_qa] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [mpos_pollo_express_qa] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [mpos_pollo_express_qa] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [mpos_pollo_express_qa] SET ARITHABORT OFF 
GO
ALTER DATABASE [mpos_pollo_express_qa] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [mpos_pollo_express_qa] SET AUTO_SHRINK ON 
GO
ALTER DATABASE [mpos_pollo_express_qa] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [mpos_pollo_express_qa] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [mpos_pollo_express_qa] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [mpos_pollo_express_qa] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [mpos_pollo_express_qa] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [mpos_pollo_express_qa] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [mpos_pollo_express_qa] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [mpos_pollo_express_qa] SET  DISABLE_BROKER 
GO
ALTER DATABASE [mpos_pollo_express_qa] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [mpos_pollo_express_qa] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [mpos_pollo_express_qa] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [mpos_pollo_express_qa] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [mpos_pollo_express_qa] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [mpos_pollo_express_qa] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [mpos_pollo_express_qa] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [mpos_pollo_express_qa] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [mpos_pollo_express_qa] SET  MULTI_USER 
GO
ALTER DATABASE [mpos_pollo_express_qa] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [mpos_pollo_express_qa] SET DB_CHAINING OFF 
GO
ALTER DATABASE [mpos_pollo_express_qa] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [mpos_pollo_express_qa] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [mpos_pollo_express_qa] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [mpos_pollo_express_qa] SET QUERY_STORE = OFF
GO
USE [mpos_pollo_express_qa]
GO
ALTER DATABASE SCOPED CONFIGURATION SET IDENTITY_CACHE = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET LEGACY_CARDINALITY_ESTIMATION = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET MAXDOP = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET PARAMETER_SNIFFING = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET QUERY_OPTIMIZER_HOTFIXES = PRIMARY;
GO
USE [mpos_pollo_express_qa]
GO
/****** Object:  User [sysadm]    Script Date: 2021/03/03 11:57:28 AM ******/
CREATE USER [sysadm] WITHOUT LOGIN WITH DEFAULT_SCHEMA=[sysadm]
GO
/****** Object:  DatabaseRole [aspnet_Roles_ReportingAccess]    Script Date: 2021/03/03 11:57:28 AM ******/
CREATE ROLE [aspnet_Roles_ReportingAccess]
GO
/****** Object:  DatabaseRole [aspnet_Roles_FullAccess]    Script Date: 2021/03/03 11:57:28 AM ******/
CREATE ROLE [aspnet_Roles_FullAccess]
GO
/****** Object:  DatabaseRole [aspnet_Roles_BasicAccess]    Script Date: 2021/03/03 11:57:29 AM ******/
CREATE ROLE [aspnet_Roles_BasicAccess]
GO
/****** Object:  DatabaseRole [aspnet_Membership_ReportingAccess]    Script Date: 2021/03/03 11:57:29 AM ******/
CREATE ROLE [aspnet_Membership_ReportingAccess]
GO
/****** Object:  DatabaseRole [aspnet_Membership_FullAccess]    Script Date: 2021/03/03 11:57:29 AM ******/
CREATE ROLE [aspnet_Membership_FullAccess]
GO
/****** Object:  DatabaseRole [aspnet_Membership_BasicAccess]    Script Date: 2021/03/03 11:57:29 AM ******/
CREATE ROLE [aspnet_Membership_BasicAccess]
GO
ALTER ROLE [db_owner] ADD MEMBER [sysadm]
GO
ALTER ROLE [db_accessadmin] ADD MEMBER [sysadm]
GO
ALTER ROLE [db_securityadmin] ADD MEMBER [sysadm]
GO
ALTER ROLE [db_ddladmin] ADD MEMBER [sysadm]
GO
ALTER ROLE [db_backupoperator] ADD MEMBER [sysadm]
GO
ALTER ROLE [db_datareader] ADD MEMBER [sysadm]
GO
ALTER ROLE [db_datawriter] ADD MEMBER [sysadm]
GO
ALTER ROLE [db_denydatareader] ADD MEMBER [sysadm]
GO
ALTER ROLE [db_denydatawriter] ADD MEMBER [sysadm]
GO
ALTER ROLE [aspnet_Roles_BasicAccess] ADD MEMBER [aspnet_Roles_FullAccess]
GO
ALTER ROLE [aspnet_Roles_ReportingAccess] ADD MEMBER [aspnet_Roles_FullAccess]
GO
ALTER ROLE [aspnet_Membership_BasicAccess] ADD MEMBER [aspnet_Membership_FullAccess]
GO
ALTER ROLE [aspnet_Membership_ReportingAccess] ADD MEMBER [aspnet_Membership_FullAccess]
GO
/****** Object:  UserDefinedFunction [dbo].[AndrDate]    Script Date: 2021/03/03 11:57:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE FUNCTION [dbo].[AndrDate]
(@ddate AS datetime)

returns bigint

as

begin

DECLARE @rv bigint
DECLARE @vy bigint
DECLARE @vm bigint
DECLARE @vd bigint
DECLARE @vh bigint
DECLARE @vmi bigint

SET @vy = CAST(YEAR(@ddate) AS bigint) -2000
SET @vm = CAST(MONTH(@ddate) AS bigint) 
SET @vd = CAST(DAY(@ddate) AS bigint) 
SET @vh =  CAST(DATEPART(hour, @ddate) AS bigint) 
SET @vmi = CAST(DATEPART(minute, @ddate) AS bigint) 

SET @rv= @vy*10000+@vm*100+@vd
SET @rv= @rv*10000+@vh*100+@vmi

RETURN @rv

end




GO
/****** Object:  UserDefinedFunction [dbo].[AndrDateFin]    Script Date: 2021/03/03 11:57:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE FUNCTION [dbo].[AndrDateFin]
(@ddate AS datetime)

returns bigint

as

begin

DECLARE @rv bigint
DECLARE @vy bigint
DECLARE @vm bigint
DECLARE @vd bigint
DECLARE @vh bigint
DECLARE @vmi bigint

SET @vy = CAST(YEAR(@ddate) AS bigint) -2000
SET @vm = CAST(MONTH(@ddate) AS bigint) 
SET @vd = CAST(DAY(@ddate) AS bigint) 
SET @vh =  CAST(DATEPART(hour, @ddate) AS bigint) 
SET @vmi = CAST(DATEPART(minute, @ddate) AS bigint) 

SET @rv= @vy*10000+@vm*100+@vd
SET @rv= @rv*10000+2400

RETURN @rv

end




GO
/****** Object:  UserDefinedFunction [dbo].[AndrDateIni]    Script Date: 2021/03/03 11:57:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE FUNCTION [dbo].[AndrDateIni]
(@ddate AS datetime)

returns bigint

as

begin

DECLARE @rv bigint
DECLARE @vy bigint
DECLARE @vm bigint
DECLARE @vd bigint
DECLARE @vh bigint
DECLARE @vmi bigint

SET @vy = CAST(YEAR(@ddate) AS bigint) -2000
SET @vm = CAST(MONTH(@ddate) AS bigint) 
SET @vd = CAST(DAY(@ddate) AS bigint) 
SET @vh =  CAST(DATEPART(hour, @ddate) AS bigint) 
SET @vmi = CAST(DATEPART(minute, @ddate) AS bigint) 

SET @rv= @vy*10000+@vm*100+@vd
SET @rv= @rv*10000+0

RETURN @rv

end




GO
/****** Object:  Table [dbo].[P_CAJACIERRE]    Script Date: 2021/03/03 11:57:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[P_CAJACIERRE](
	[EMPRESA] [int] NOT NULL,
	[SUCURSAL] [int] NOT NULL,
	[RUTA] [int] NOT NULL,
	[COREL] [int] NOT NULL,
	[ESTADO] [int] NULL,
	[FECHA] [datetime] NOT NULL,
	[VENDEDOR] [int] NOT NULL,
	[CODPAGO] [int] NOT NULL,
	[FONDOCAJA] [float] NULL,
	[MONTOINI] [float] NULL,
	[MONTOFIN] [float] NULL,
	[MONTODIF] [float] NULL,
	[STATCOM] [nvarchar](1) NULL,
	[CODIGO_CAJACIERRE] [nvarchar](20) NOT NULL,
 CONSTRAINT [PK_P_CAJACIERRE] PRIMARY KEY CLUSTERED 
(
	[CODIGO_CAJACIERRE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[P_RUTA]    Script Date: 2021/03/03 11:57:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[P_RUTA](
	[CODIGO_RUTA] [int] IDENTITY(1,1) NOT NULL,
	[SUCURSAL] [int] NOT NULL,
	[EMPRESA] [int] NOT NULL,
	[CODIGO] [nvarchar](15) NOT NULL,
	[NOMBRE] [nvarchar](50) NOT NULL,
	[ACTIVO] [bit] NULL,
 CONSTRAINT [PK_P_RUTA] PRIMARY KEY CLUSTERED 
(
	[CODIGO_RUTA] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[vWCajas]    Script Date: 2021/03/03 11:57:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vWCajas]
AS
SELECT        TOP (100) PERCENT dbo.P_CAJACIERRE.RUTA, dbo.P_RUTA.NOMBRE, dbo.P_CAJACIERRE.MONTOINI - dbo.P_CAJACIERRE.FONDOCAJA AS MONTO
FROM            dbo.P_CAJACIERRE INNER JOIN
                         dbo.P_RUTA ON dbo.P_CAJACIERRE.RUTA = dbo.P_RUTA.CODIGO_RUTA
WHERE        (dbo.P_CAJACIERRE.FECHA = '20201110') AND (dbo.P_CAJACIERRE.EMPRESA IN (2, 6))
ORDER BY dbo.P_CAJACIERRE.RUTA
GO
/****** Object:  Table [dbo].[D_FACTURA]    Script Date: 2021/03/03 11:57:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[D_FACTURA](
	[EMPRESA] [int] NOT NULL,
	[COREL] [nvarchar](20) NOT NULL,
	[ANULADO] [bit] NOT NULL,
	[FECHA] [datetime] NULL,
	[RUTA] [int] NULL,
	[VENDEDOR] [int] NULL,
	[CLIENTE] [int] NULL,
	[KILOMETRAJE] [float] NULL,
	[FECHAENTR] [datetime] NULL,
	[FACTLINK] [nvarchar](20) NULL,
	[TOTAL] [float] NULL,
	[DESMONTO] [float] NULL,
	[IMPMONTO] [float] NULL,
	[PESO] [float] NULL,
	[BANDERA] [nvarchar](5) NULL,
	[STATCOM] [nvarchar](1) NULL,
	[CALCOBJ] [bit] NOT NULL,
	[SERIE] [nvarchar](15) NULL,
	[CORELATIVO] [int] NULL,
	[IMPRES] [int] NULL,
	[ADD1] [nvarchar](5) NULL,
	[ADD2] [nvarchar](5) NULL,
	[ADD3] [nvarchar](5) NULL,
	[DEPOS] [bit] NOT NULL,
	[PEDCOREL] [nvarchar](50) NULL,
	[REFERENCIA] [nvarchar](16) NOT NULL,
	[ASIGNACION] [nvarchar](18) NOT NULL,
	[SUPERVISOR] [nvarchar](15) NOT NULL,
	[AYUDANTE] [nvarchar](15) NOT NULL,
	[VEHICULO] [nvarchar](15) NOT NULL,
	[CODIGOLIQUIDACION] [int] NOT NULL,
	[RAZON_ANULACION] [nvarchar](15) NULL,
	[FEELSERIE] [nvarchar](50) NULL,
	[FEELNUMERO] [nvarchar](50) NULL,
	[FEELUUID] [nvarchar](50) NULL,
	[FEELFECHAPROCESADO] [datetime] NULL,
	[FEELCONTINGENCIA] [nvarchar](50) NULL,
 CONSTRAINT [PK_D_FACTURA] PRIMARY KEY CLUSTERED 
(
	[COREL] ASC,
	[EMPRESA] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[vWCajaCert]    Script Date: 2021/03/03 11:57:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vWCajaCert]
AS
SELECT        TOP (100) PERCENT RUTA, SUM(TOTAL) AS Expr1
FROM            dbo.D_FACTURA
WHERE        (EMPRESA IN (2, 6)) AND (ANULADO = 0) AND (FECHA = '20201105')
GROUP BY RUTA
ORDER BY RUTA
GO
/****** Object:  Table [dbo].[aspnet_Applications]    Script Date: 2021/03/03 11:57:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[aspnet_Applications](
	[ApplicationName] [nvarchar](256) NOT NULL,
	[LoweredApplicationName] [nvarchar](256) NOT NULL,
	[ApplicationId] [uniqueidentifier] NOT NULL,
	[Description] [nvarchar](256) NULL,
PRIMARY KEY NONCLUSTERED 
(
	[ApplicationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[LoweredApplicationName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[ApplicationName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [aspnet_Applications_Index]    Script Date: 2021/03/03 11:57:33 AM ******/
CREATE CLUSTERED INDEX [aspnet_Applications_Index] ON [dbo].[aspnet_Applications]
(
	[LoweredApplicationName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  View [dbo].[vw_aspnet_Applications]    Script Date: 2021/03/03 11:57:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

  CREATE VIEW [dbo].[vw_aspnet_Applications]
  AS SELECT [ApplicationName], [LoweredApplicationName], [ApplicationId], [Description]
  FROM [dbo].[aspnet_Applications]
  
GO
/****** Object:  Table [dbo].[aspnet_Users]    Script Date: 2021/03/03 11:57:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[aspnet_Users](
	[ApplicationId] [uniqueidentifier] NOT NULL,
	[UserId] [uniqueidentifier] NOT NULL,
	[UserName] [nvarchar](256) NOT NULL,
	[LoweredUserName] [nvarchar](256) NOT NULL,
	[MobileAlias] [nvarchar](16) NULL,
	[IsAnonymous] [bit] NOT NULL,
	[LastActivityDate] [datetime] NOT NULL,
PRIMARY KEY NONCLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [aspnet_Users_Index]    Script Date: 2021/03/03 11:57:33 AM ******/
CREATE UNIQUE CLUSTERED INDEX [aspnet_Users_Index] ON [dbo].[aspnet_Users]
(
	[ApplicationId] ASC,
	[LoweredUserName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  View [dbo].[vw_aspnet_Users]    Script Date: 2021/03/03 11:57:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

  CREATE VIEW [dbo].[vw_aspnet_Users]
  AS SELECT [ApplicationId], [UserId], [UserName], [LoweredUserName], [MobileAlias], [IsAnonymous], [LastActivityDate]
  FROM [dbo].[aspnet_Users]
  
GO
/****** Object:  Table [dbo].[aspnet_Membership]    Script Date: 2021/03/03 11:57:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[aspnet_Membership](
	[ApplicationId] [uniqueidentifier] NOT NULL,
	[UserId] [uniqueidentifier] NOT NULL,
	[Password] [nvarchar](128) NOT NULL,
	[PasswordFormat] [int] NOT NULL,
	[PasswordSalt] [nvarchar](128) NOT NULL,
	[MobilePIN] [nvarchar](16) NULL,
	[Email] [nvarchar](256) NULL,
	[LoweredEmail] [nvarchar](256) NULL,
	[PasswordQuestion] [nvarchar](256) NULL,
	[PasswordAnswer] [nvarchar](128) NULL,
	[IsApproved] [bit] NOT NULL,
	[IsLockedOut] [bit] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[LastLoginDate] [datetime] NOT NULL,
	[LastPasswordChangedDate] [datetime] NOT NULL,
	[LastLockoutDate] [datetime] NOT NULL,
	[FailedPasswordAttemptCount] [int] NOT NULL,
	[FailedPasswordAttemptWindowStart] [datetime] NOT NULL,
	[FailedPasswordAnswerAttemptCount] [int] NOT NULL,
	[FailedPasswordAnswerAttemptWindowStart] [datetime] NOT NULL,
	[Comment] [ntext] NULL,
PRIMARY KEY NONCLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [aspnet_Membership_index]    Script Date: 2021/03/03 11:57:33 AM ******/
CREATE CLUSTERED INDEX [aspnet_Membership_index] ON [dbo].[aspnet_Membership]
(
	[ApplicationId] ASC,
	[LoweredEmail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  View [dbo].[vw_aspnet_MembershipUsers]    Script Date: 2021/03/03 11:57:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

  CREATE VIEW [dbo].[vw_aspnet_MembershipUsers]
  AS SELECT members.[UserId],
            members.[PasswordFormat],
            members.[MobilePIN],
            members.[Email],
            members.[LoweredEmail],
            members.[PasswordQuestion],
            members.[PasswordAnswer],
            members.[IsApproved],
            members.[IsLockedOut],
            members.[CreateDate],
            members.[LastLoginDate],
            members.[LastPasswordChangedDate],
            members.[LastLockoutDate],
            members.[FailedPasswordAttemptCount],
            members.[FailedPasswordAttemptWindowStart],
            members.[FailedPasswordAnswerAttemptCount],
            members.[FailedPasswordAnswerAttemptWindowStart],
            members.[Comment],
            users.[ApplicationId],
            users.[UserName],
            users.[MobileAlias],
            users.[IsAnonymous],
            users.[LastActivityDate]
  FROM [dbo].[aspnet_Membership] members INNER JOIN [dbo].[aspnet_Users] users
      ON members.[UserId] = users.[UserId]
  
GO
/****** Object:  View [dbo].[vWVersion]    Script Date: 2021/03/03 11:57:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vWVersion]
AS
SELECT        TOP (100) PERCENT dbo.P_RUTA.NOMBRE, dbo.D_FACTURA.RUTA, dbo.D_FACTURA.VEHICULO AS VERSION
FROM            dbo.D_FACTURA INNER JOIN
                         dbo.P_RUTA ON dbo.D_FACTURA.RUTA = dbo.P_RUTA.CODIGO_RUTA
WHERE        (dbo.D_FACTURA.COREL IN
                             (SELECT        MAX(COREL) AS Expr1
                               FROM            dbo.D_FACTURA AS D_FACTURA_1
                               GROUP BY RUTA)) AND (dbo.P_RUTA.ACTIVO = 1)
ORDER BY VERSION DESC, dbo.P_RUTA.NOMBRE
GO
/****** Object:  Table [dbo].[P_SUCURSAL]    Script Date: 2021/03/03 11:57:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[P_SUCURSAL](
	[CODIGO_SUCURSAL] [int] IDENTITY(1,1) NOT NULL,
	[CODIGO] [nvarchar](10) NOT NULL,
	[EMPRESA] [int] NOT NULL,
	[CODIGO_NIVEL_PRECIO] [int] NULL,
	[DESCRIPCION] [nvarchar](100) NULL,
	[NOMBRE] [nvarchar](100) NULL,
	[DIRECCION] [nvarchar](100) NULL,
	[TELEFONO] [nvarchar](100) NULL,
	[NIT] [nvarchar](100) NULL,
	[CORREO] [nvarchar](100) NULL,
	[TEXTO] [nvarchar](100) NULL,
	[ACTIVO] [bit] NULL,
	[FEL_CODIGO_ESTABLECIMIENTO] [nvarchar](50) NULL,
	[FEL_USUARIO_FIRMA] [nvarchar](50) NULL,
	[FEL_USUARIO_CERTIFICACION] [nvarchar](50) NULL,
	[FEL_LLAVE_FIRMA] [nvarchar](50) NULL,
	[FEL_LLAVE_CERTIFICACION] [nvarchar](50) NULL,
	[FEL_AFILIACION_IVA] [nvarchar](50) NULL,
	[CODIGO_POSTAL] [nvarchar](50) NULL,
	[CODIGO_ESCENARIO_ISR] [int] NULL,
	[CODIGO_ESCENARIO_IVA] [int] NULL,
	[CODIGO_MUNICIPIO] [nvarchar](15) NULL,
	[CODIGO_PROVEEDOR] [int] NULL,
	[PUNTOGEOGRAFICO] [geography] NULL,
 CONSTRAINT [PK_P_SUCURSAL_1] PRIMARY KEY CLUSTERED 
(
	[CODIGO_SUCURSAL] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[P_EMPRESA]    Script Date: 2021/03/03 11:57:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[P_EMPRESA](
	[EMPRESA] [int] NOT NULL,
	[NOMBRE] [nvarchar](50) NOT NULL,
	[COL_IMP] [smallint] NULL,
	[LOGO] [image] NULL,
	[RAZON_SOCIAL] [nvarchar](25) NULL,
	[IDENTIFICACION_TRIBUTARIA] [nvarchar](25) NULL,
	[TELEFONO] [nvarchar](25) NULL,
	[COD_PAIS] [nvarchar](10) NULL,
	[NOMBRE_CONTACTO] [nvarchar](15) NULL,
	[APELLIDO_CONTACTO] [nvarchar](15) NULL,
	[DIRECCION] [nvarchar](25) NULL,
	[CORREO] [nvarchar](15) NULL,
	[CODIGO_ACTIVACION] [nvarchar](15) NULL,
	[COD_CANT_EMP] [int] NULL,
	[CANTIDAD_PUNTOS_VENTA] [int] NULL,
	[CLAVE] [nvarchar](20) NULL,
 CONSTRAINT [PK_P_EMPRESA] PRIMARY KEY CLUSTERED 
(
	[EMPRESA] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[P_EMPRESA_USUARIO]    Script Date: 2021/03/03 11:57:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[P_EMPRESA_USUARIO](
	[CODIGO_EMPRESA_USUARIO] [int] IDENTITY(1,1) NOT NULL,
	[CODIGO_EMPRESA] [int] NULL,
	[CODIGO_USUARIO] [int] NULL,
 CONSTRAINT [PK_P_EMPRESA_USUARIO] PRIMARY KEY CLUSTERED 
(
	[CODIGO_EMPRESA_USUARIO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[vw_ventas_por_empresa]    Script Date: 2021/03/03 11:57:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[vw_ventas_por_empresa] as
SELECT emp.empresa AS empresa, 
emp.nombre AS nombre, 
emp.identificacion_tributaria AS nit, 
fac.FECHA,
Sum(fac.total)                    AS total 
FROM   d_factura fac 
LEFT JOIN p_ruta rut 
ON rut.codigo_ruta = fac.ruta 
LEFT JOIN p_empresa emp 
ON emp.empresa = fac.empresa 
LEFT JOIN p_sucursal suc 
ON suc.codigo_sucursal = rut.sucursal 
WHERE  fac.empresa IN(SELECT codigo_empresa 
FROM   p_empresa_usuario 
WHERE  codigo_usuario = 5) 
AND fac.anulado = '0' 
GROUP  BY emp.empresa, 
emp.nombre, 
emp.razon_social, 
emp.identificacion_tributaria,
fac.FECHA
GO
/****** Object:  View [dbo].[vw_ventas_por_sucursal]    Script Date: 2021/03/03 11:57:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vw_ventas_por_sucursal] AS
SELECT Sum(fac.total) AS total, 
       suc.nombre AS nombre, 
       suc.nit    AS nit, fac.FECHA 
FROM   d_factura fac 
       LEFT JOIN p_ruta rut 
              ON rut.codigo_ruta = fac.ruta 
       LEFT JOIN p_sucursal suc 
              ON suc.codigo_sucursal = rut.sucursal 
WHERE  fac.empresa IN(SELECT codigo_empresa 
                      FROM   p_empresa_usuario 
                      WHERE  codigo_usuario = 5) 
       AND fac.anulado = '0' 
GROUP  BY suc.nombre, 
          suc.nit,
		  fac.FECHA
GO
/****** Object:  View [dbo].[vw_ventas_por_tienda]    Script Date: 2021/03/03 11:57:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[vw_ventas_por_tienda] as
SELECT Sum(fac.total) AS total, 
       suc.descripcion AS nombre, fac.FECHA 
FROM   d_factura fac 
       LEFT JOIN p_ruta rut 
              ON rut.codigo_ruta = fac.ruta 
       LEFT JOIN p_sucursal suc 
              ON suc.codigo_sucursal = rut.sucursal 
WHERE  fac.empresa IN(SELECT codigo_empresa 
                      FROM   p_empresa_usuario 
                      WHERE  codigo_usuario = 5)       
GROUP  BY suc.descripcion, FAC.FECHA
GO
/****** Object:  Table [dbo].[P_CLIENTE]    Script Date: 2021/03/03 11:57:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[P_CLIENTE](
	[CODIGO_CLIENTE] [int] NOT NULL,
	[CODIGO] [nvarchar](15) NOT NULL,
	[EMPRESA] [int] NOT NULL,
	[NOMBRE] [nvarchar](150) NULL,
	[BLOQUEADO] [bit] NOT NULL,
	[NIVELPRECIO] [int] NULL,
	[MEDIAPAGO] [int] NULL,
	[LIMITECREDITO] [float] NULL,
	[DIACREDITO] [int] NULL,
	[DESCUENTO] [bit] NOT NULL,
	[BONIFICACION] [bit] NOT NULL,
	[ULTVISITA] [int] NULL,
	[IMPSPEC] [float] NULL,
	[NIT] [nvarchar](30) NULL,
	[EMAIL] [nvarchar](50) NULL,
	[ESERVICE] [nvarchar](5) NULL,
	[TELEFONO] [nvarchar](30) NULL,
	[DIRECCION] [nvarchar](254) NULL,
	[COORX] [float] NULL,
	[COORY] [float] NULL,
	[BODEGA] [nvarchar](15) NULL,
	[COD_PAIS] [nvarchar](10) NULL,
	[CODBARRA] [nvarchar](50) NULL,
	[PERCEPCION] [float] NOT NULL,
	[TIPO_CONTRIBUYENTE] [nvarchar](1) NOT NULL,
	[IMAGEN] [image] NULL,
 CONSTRAINT [PK_P_CLIENTE] PRIMARY KEY CLUSTERED 
(
	[CODIGO_CLIENTE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  View [dbo].[vw_top_clientes]    Script Date: 2021/03/03 11:57:35 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vw_top_clientes] AS
SELECT  Count(fac.COREL)  AS ventas, 
          Sum(fac.total)  AS total, 
          cli.nit     AS nit, 
          cli.nombre  AS nombre, 
          fac.empresa AS empresa,
		  fac.fecha 
FROM      d_factura fac 
LEFT JOIN p_cliente cli 
ON        cli.codigo_cliente = fac.cliente 
LEFT JOIN p_ruta rut 
ON        rut.codigo_ruta = fac.ruta 
LEFT JOIN p_sucursal suc 
ON        suc.codigo_sucursal = rut.sucursal 
WHERE     fac.empresa IN 
          ( 
                 SELECT codigo_empresa 
                 FROM   p_empresa_usuario 
                 WHERE  codigo_usuario = 5) 
AND       fac.anulado = '0' 
GROUP BY  cli.nit, 
          cli.nombre, 
          fac.empresa,
		  fac.fecha 
GO
/****** Object:  View [dbo].[vw_ventas_mensuales]    Script Date: 2021/03/03 11:57:35 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[vw_ventas_mensuales] AS
SELECT Count(*)                     AS ventas, 
       Sum(fac.total)               AS total, 
       Format(fac.fecha, 'MM')      AS mes, 
       Datename(month, fac.fecha)   AS nombre, 
       Format(fac.fecha, 'yyyy-MM') AS anio_mes,
	   fac.fecha
FROM   d_factura fac 
       LEFT JOIN p_ruta rut 
              ON rut.codigo_ruta = fac.ruta 
       LEFT JOIN p_sucursal suc 
              ON suc.codigo_sucursal = rut.sucursal 
WHERE  fac.empresa IN(SELECT codigo_empresa 
                      FROM   p_empresa_usuario 
                      WHERE  codigo_usuario = 5)        
       AND fac.anulado = '0' 
GROUP  BY fac.fecha
GO
/****** Object:  View [dbo].[View_2]    Script Date: 2021/03/03 11:57:35 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[View_2]
AS
SELECT        dbo.P_RUTA.CODIGO_RUTA, dbo.P_RUTA.NOMBRE, dbo.P_SUCURSAL.NOMBRE AS Expr1, dbo.P_SUCURSAL.NIT
FROM            dbo.P_RUTA INNER JOIN
                         dbo.P_SUCURSAL ON dbo.P_RUTA.SUCURSAL = dbo.P_SUCURSAL.CODIGO_SUCURSAL
WHERE        (dbo.P_RUTA.EMPRESA = 2) AND (dbo.P_RUTA.CODIGO_RUTA > 14) AND (dbo.P_SUCURSAL.NIT = '9603888-8')
GO
/****** Object:  View [dbo].[View_1]    Script Date: 2021/03/03 11:57:35 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[View_1]
AS
SELECT        TOP (100) PERCENT FECHA, COREL, CLIENTE, FEELUUID, SERIE, CORELATIVO, RUTA, TOTAL
FROM            dbo.D_FACTURA
WHERE        (RUTA IN
                             (SELECT        dbo.P_RUTA.CODIGO_RUTA
                               FROM            dbo.P_RUTA INNER JOIN
                                                         dbo.P_SUCURSAL ON dbo.P_RUTA.SUCURSAL = dbo.P_SUCURSAL.CODIGO_SUCURSAL
                               WHERE        (dbo.P_RUTA.EMPRESA = 2) AND (dbo.P_RUTA.CODIGO_RUTA > 14) AND (dbo.P_SUCURSAL.NIT = '9603888-8')))
ORDER BY RUTA
GO
/****** Object:  View [dbo].[View_3]    Script Date: 2021/03/03 11:57:35 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[View_3]
AS
SELECT        TOP (100) PERCENT FECHA, TOTAL
FROM            dbo.D_FACTURA
WHERE        (RUTA IN
                             (SELECT        dbo.P_RUTA.CODIGO_RUTA
                               FROM            dbo.P_RUTA INNER JOIN
                                                         dbo.P_SUCURSAL ON dbo.P_RUTA.SUCURSAL = dbo.P_SUCURSAL.CODIGO_SUCURSAL
                               WHERE        (dbo.D_FACTURA.ANULADO = 0) AND (dbo.D_FACTURA.FECHA < '20220101') AND (dbo.P_RUTA.EMPRESA = 2) AND (dbo.P_RUTA.CODIGO_RUTA > 14) AND (dbo.P_SUCURSAL.NIT = '9604996-0')))
GO
/****** Object:  Table [dbo].[aspnet_Roles]    Script Date: 2021/03/03 11:57:35 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[aspnet_Roles](
	[ApplicationId] [uniqueidentifier] NOT NULL,
	[RoleId] [uniqueidentifier] NOT NULL,
	[RoleName] [nvarchar](256) NOT NULL,
	[LoweredRoleName] [nvarchar](256) NOT NULL,
	[Description] [nvarchar](256) NULL,
PRIMARY KEY NONCLUSTERED 
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [aspnet_Roles_index1]    Script Date: 2021/03/03 11:57:35 AM ******/
CREATE UNIQUE CLUSTERED INDEX [aspnet_Roles_index1] ON [dbo].[aspnet_Roles]
(
	[ApplicationId] ASC,
	[LoweredRoleName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  View [dbo].[vw_aspnet_Roles]    Script Date: 2021/03/03 11:57:35 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

  CREATE VIEW [dbo].[vw_aspnet_Roles]
  AS SELECT [ApplicationId], [RoleId], [RoleName], [LoweredRoleName], [Description]
  FROM [dbo].[aspnet_Roles]
  
GO
/****** Object:  Table [dbo].[aspnet_UsersInRoles]    Script Date: 2021/03/03 11:57:35 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[aspnet_UsersInRoles](
	[UserId] [uniqueidentifier] NOT NULL,
	[RoleId] [uniqueidentifier] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[vw_aspnet_UsersInRoles]    Script Date: 2021/03/03 11:57:35 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

  CREATE VIEW [dbo].[vw_aspnet_UsersInRoles]
  AS SELECT [UserId], [RoleId]
  FROM [dbo].[aspnet_UsersInRoles]
  
GO
/****** Object:  Table [dbo].[P_PRODUCTO]    Script Date: 2021/03/03 11:57:35 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[P_PRODUCTO](
	[CODIGO_PRODUCTO] [int] IDENTITY(1,1) NOT NULL,
	[CODIGO] [nvarchar](15) NOT NULL,
	[CODIGO_TIPO] [nvarchar](1) NOT NULL,
	[LINEA] [int] NOT NULL,
	[EMPRESA] [int] NOT NULL,
	[MARCA] [nvarchar](15) NOT NULL,
	[CODBARRA] [nvarchar](30) NULL,
	[DESCCORTA] [nvarchar](50) NOT NULL,
	[DESCLARGA] [nvarchar](50) NOT NULL,
	[COSTO] [float] NOT NULL,
	[FACTORCONV] [float] NOT NULL,
	[UNIDBAS] [nvarchar](15) NULL,
	[UNIDMED] [nvarchar](15) NULL,
	[UNIMEDFACT] [float] NOT NULL,
	[UNIGRA] [nvarchar](15) NULL,
	[UNIGRAFACT] [float] NOT NULL,
	[DESCUENTO] [bit] NOT NULL,
	[BONIFICACION] [bit] NOT NULL,
	[IMP1] [int] NOT NULL,
	[IMP2] [int] NOT NULL,
	[IMP3] [int] NOT NULL,
	[VENCOMP] [nvarchar](50) NULL,
	[DEVOL] [bit] NOT NULL,
	[OFRECER] [bit] NOT NULL,
	[RENTAB] [bit] NOT NULL,
	[DESCMAX] [bit] NOT NULL,
	[IVA] [nvarchar](15) NULL,
	[CODBARRA2] [nvarchar](30) NULL,
	[CBCONV] [int] NOT NULL,
	[BODEGA] [nvarchar](15) NULL,
	[SUBBODEGA] [nvarchar](15) NULL,
	[PESO_PROMEDIO] [float] NOT NULL,
	[MODIF_PRECIO] [bit] NOT NULL,
	[VIDEO] [nvarchar](max) NOT NULL,
	[VENTA_POR_PESO] [bit] NOT NULL,
	[ES_PROD_BARRA] [bit] NOT NULL,
	[UNID_INV] [nvarchar](30) NOT NULL,
	[VENTA_POR_PAQUETE] [bit] NOT NULL,
	[VENTA_POR_FACTOR_CONV] [bit] NOT NULL,
	[ES_SERIALIZADO] [bit] NOT NULL,
	[PARAM_CADUCIDAD] [int] NOT NULL,
	[PRODUCTO_PADRE] [int] NOT NULL,
	[FACTOR_PADRE] [float] NOT NULL,
	[TIENE_INV] [bit] NOT NULL,
	[TIENE_VINETA_O_TUBO] [bit] NOT NULL,
	[PRECIO_VINETA_O_TUBO] [float] NOT NULL,
	[ES_VENDIBLE] [bit] NOT NULL,
	[UNIGRASAP] [float] NOT NULL,
	[UM_SALIDA] [nvarchar](25) NOT NULL,
	[IMAGEN] [image] NULL,
	[ACTIVO] [bit] NULL,
	[TIEMPO_PREPARACION] [float] NULL,
 CONSTRAINT [PK_P_PRODUCTO_1] PRIMARY KEY CLUSTERED 
(
	[CODIGO_PRODUCTO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  View [dbo].[vW_Product_Match]    Script Date: 2021/03/03 11:57:35 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vW_Product_Match]
AS
SELECT        'XX' AS Expr2,
                             (SELECT        CODIGO_PRODUCTO
                               FROM            dbo.P_PRODUCTO
                               WHERE        (EMPRESA = 3) AND (DESCCORTA = P_PRODUCTO_1.DESCCORTA)) AS Expr1, 'YY' AS Expr3, CODIGO_PRODUCTO
FROM            dbo.P_PRODUCTO AS P_PRODUCTO_1
WHERE        (EMPRESA = 7)
GO
/****** Object:  Table [dbo].[P_PROVEEDOR]    Script Date: 2021/03/03 11:57:35 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[P_PROVEEDOR](
	[CODIGO_PROVEEDOR] [int] IDENTITY(1,1) NOT NULL,
	[CODIGO] [nvarchar](15) NULL,
	[EMPRESA] [int] NOT NULL,
	[NOMBRE] [nvarchar](50) NULL,
	[ACTIVO] [bit] NULL,
 CONSTRAINT [PK_P_PROVEEDOR_1] PRIMARY KEY CLUSTERED 
(
	[CODIGO_PROVEEDOR] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[D_MOV]    Script Date: 2021/03/03 11:57:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[D_MOV](
	[COREL] [nvarchar](20) NOT NULL,
	[RUTA] [int] NOT NULL,
	[ANULADO] [bit] NOT NULL,
	[FECHA] [datetime] NULL,
	[TIPO] [nvarchar](1) NULL,
	[USUARIO] [int] NOT NULL,
	[REFERENCIA] [nvarchar](15) NULL,
	[STATCOM] [nvarchar](1) NULL,
	[IMPRES] [int] NULL,
	[CODIGOLIQUIDACION] [int] NOT NULL,
	[CODIGO_PROVEEDOR] [int] NOT NULL,
	[TOTAL] [float] NOT NULL,
 CONSTRAINT [PK_D_MOV] PRIMARY KEY CLUSTERED 
(
	[COREL] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[D_MOVD]    Script Date: 2021/03/03 11:57:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[D_MOVD](
	[COREL] [nvarchar](20) NOT NULL,
	[PRODUCTO] [int] NOT NULL,
	[CANT] [float] NULL,
	[CANTM] [float] NULL,
	[PESO] [float] NULL,
	[PESOM] [float] NULL,
	[LOTE] [nvarchar](20) NOT NULL,
	[CODIGOLIQUIDACION] [int] NULL,
	[UNIDADMEDIDA] [nvarchar](10) NOT NULL,
	[CORELDET] [int] IDENTITY(1,1) NOT NULL,
	[PRECIO] [float] NOT NULL,
	[MOTIVO_AJUSTE] [int] NOT NULL,
 CONSTRAINT [PK_D_MOVD] PRIMARY KEY CLUSTERED 
(
	[CORELDET] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[P_LINEA]    Script Date: 2021/03/03 11:57:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[P_LINEA](
	[CODIGO_LINEA] [int] IDENTITY(1,1) NOT NULL,
	[CODIGO] [nvarchar](15) NOT NULL,
	[EMPRESA] [int] NOT NULL,
	[MARCA] [nvarchar](15) NOT NULL,
	[NOMBRE] [nvarchar](50) NULL,
	[ACTIVO] [int] NULL,
	[IMAGEN] [image] NULL,
 CONSTRAINT [PK_P_LINEA_1] PRIMARY KEY CLUSTERED 
(
	[CODIGO_LINEA] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  View [dbo].[vw_Mov]    Script Date: 2021/03/03 11:57:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vw_Mov]
AS
SELECT        dbo.P_EMPRESA.NOMBRE AS Empresa, dbo.P_SUCURSAL.DESCRIPCION AS Sucursal, dbo.D_MOV.CODIGO_PROVEEDOR AS ProvCod, dbo.P_PROVEEDOR.NOMBRE AS ProvNom, dbo.P_LINEA.CODIGO AS FamCod, 
                         dbo.P_LINEA.NOMBRE AS FamNombre, dbo.P_PRODUCTO.DESCCORTA AS ProdNombre, dbo.D_MOVD.PRODUCTO AS ProdCod, SUM(dbo.D_MOVD.CANT) AS Cantidad
FROM            dbo.P_SUCURSAL INNER JOIN
                         dbo.P_RUTA ON dbo.P_SUCURSAL.CODIGO_SUCURSAL = dbo.P_RUTA.SUCURSAL INNER JOIN
                         dbo.P_EMPRESA ON dbo.P_RUTA.EMPRESA = dbo.P_EMPRESA.EMPRESA INNER JOIN
                         dbo.D_MOV INNER JOIN
                         dbo.D_MOVD ON dbo.D_MOV.COREL = dbo.D_MOVD.COREL ON dbo.P_RUTA.CODIGO_RUTA = dbo.D_MOV.RUTA INNER JOIN
                         dbo.P_PRODUCTO ON dbo.P_EMPRESA.EMPRESA = dbo.P_PRODUCTO.EMPRESA AND dbo.D_MOVD.PRODUCTO = dbo.P_PRODUCTO.CODIGO_PRODUCTO INNER JOIN
                         dbo.P_LINEA ON dbo.P_EMPRESA.EMPRESA = dbo.P_LINEA.EMPRESA AND dbo.P_PRODUCTO.LINEA = dbo.P_LINEA.CODIGO_LINEA INNER JOIN
                         dbo.P_PROVEEDOR ON dbo.D_MOV.CODIGO_PROVEEDOR = dbo.P_PROVEEDOR.CODIGO_PROVEEDOR
WHERE        (dbo.D_MOV.ANULADO = 0) AND (dbo.D_MOV.TIPO = 'R') AND (dbo.D_MOV.FECHA > '20210101')
GROUP BY dbo.P_EMPRESA.NOMBRE, dbo.P_SUCURSAL.DESCRIPCION, dbo.D_MOVD.PRODUCTO, dbo.P_PRODUCTO.DESCCORTA, dbo.P_LINEA.CODIGO, dbo.P_LINEA.NOMBRE, dbo.D_MOV.CODIGO_PROVEEDOR, 
                         dbo.P_PROVEEDOR.NOMBRE
GO
/****** Object:  Table [dbo].[VENDEDORES]    Script Date: 2021/03/03 11:57:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VENDEDORES](
	[CODIGO_VENDEDOR] [int] IDENTITY(1,1) NOT NULL,
	[CODIGO] [nvarchar](8) NOT NULL,
	[EMPRESA] [int] NOT NULL,
	[RUTA] [int] NOT NULL,
	[NOMBRE] [nvarchar](50) NULL,
	[CLAVE] [nvarchar](15) NULL,
	[NIVEL] [int] NOT NULL,
	[NIVELPRECIO] [int] NOT NULL,
	[BODEGA] [nvarchar](15) NULL,
	[SUBBODEGA] [nvarchar](15) NULL,
	[IMAGEN] [image] NULL,
	[ACTIVO] [bit] NULL,
	[FECHA_INICIO_LABORES] [date] NULL,
	[FECHA_FIN_LABORES] [date] NULL,
 CONSTRAINT [PK_VENDEDORES] PRIMARY KEY CLUSTERED 
(
	[CODIGO_VENDEDOR] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[P_MEDIAPAGO]    Script Date: 2021/03/03 11:57:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[P_MEDIAPAGO](
	[CODIGO] [int] IDENTITY(1,1) NOT NULL,
	[EMPRESA] [int] NOT NULL,
	[NOMBRE] [nvarchar](25) NULL,
	[ACTIVO] [bit] NULL,
	[NIVEL] [int] NULL,
	[PORCOBRO] [bit] NOT NULL,
 CONSTRAINT [PK_P_MEDIAPAGO] PRIMARY KEY CLUSTERED 
(
	[CODIGO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[vw_CierreDia]    Script Date: 2021/03/03 11:57:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vw_CierreDia]
AS
SELECT        dbo.P_EMPRESA.EMPRESA AS EmpCod, dbo.P_EMPRESA.NOMBRE AS EmpNom, dbo.P_SUCURSAL.CODIGO_SUCURSAL AS SucCod, dbo.P_SUCURSAL.DESCRIPCION AS SucNom, dbo.P_RUTA.CODIGO_RUTA AS CajaCod, 
                         dbo.P_RUTA.NOMBRE AS CajaNom, dbo.P_MEDIAPAGO.CODIGO AS PagoCod, dbo.P_MEDIAPAGO.NOMBRE AS PagoNom, dbo.P_CAJACIERRE.FECHA, dbo.VENDEDORES.CODIGO_VENDEDOR AS VendCod, 
                         dbo.VENDEDORES.NOMBRE AS VendNom, dbo.P_CAJACIERRE.FONDOCAJA AS FondoCaja, dbo.P_CAJACIERRE.MONTOINI AS FondoFinal, dbo.P_CAJACIERRE.MONTOFIN AS MontoIngresado, 
                         dbo.P_CAJACIERRE.MONTODIF AS Diferencia
FROM            dbo.P_CAJACIERRE INNER JOIN
                         dbo.P_EMPRESA ON dbo.P_CAJACIERRE.EMPRESA = dbo.P_EMPRESA.EMPRESA INNER JOIN
                         dbo.P_RUTA ON dbo.P_EMPRESA.EMPRESA = dbo.P_RUTA.EMPRESA AND dbo.P_CAJACIERRE.RUTA = dbo.P_RUTA.CODIGO_RUTA INNER JOIN
                         dbo.P_SUCURSAL ON dbo.P_CAJACIERRE.SUCURSAL = dbo.P_SUCURSAL.CODIGO_SUCURSAL AND dbo.P_RUTA.SUCURSAL = dbo.P_SUCURSAL.CODIGO_SUCURSAL INNER JOIN
                         dbo.P_MEDIAPAGO ON dbo.P_CAJACIERRE.CODPAGO = dbo.P_MEDIAPAGO.CODIGO INNER JOIN
                         dbo.VENDEDORES ON dbo.P_CAJACIERRE.VENDEDOR = dbo.VENDEDORES.CODIGO_VENDEDOR AND dbo.P_EMPRESA.EMPRESA = dbo.VENDEDORES.EMPRESA AND dbo.P_RUTA.CODIGO_RUTA = dbo.VENDEDORES.RUTA
GO
/****** Object:  View [dbo].[vw_InfileAnulacion]    Script Date: 2021/03/03 11:57:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vw_InfileAnulacion]
AS
SELECT        TOP (100) PERCENT dbo.D_FACTURA.FECHA, dbo.P_CLIENTE.NIT, dbo.D_FACTURA.FEELUUID, 'A' + dbo.D_FACTURA.SERIE + CAST(dbo.D_FACTURA.CORELATIVO AS nvarchar(10)) AS Expr1, 
                         dbo.P_SUCURSAL.NIT AS NITEmisor, dbo.P_SUCURSAL.DESCRIPCION AS Sucursal
FROM            dbo.P_SUCURSAL INNER JOIN
                         dbo.P_RUTA ON dbo.P_SUCURSAL.CODIGO_SUCURSAL = dbo.P_RUTA.SUCURSAL INNER JOIN
                         dbo.D_FACTURA INNER JOIN
                         dbo.P_CLIENTE ON dbo.D_FACTURA.CLIENTE = dbo.P_CLIENTE.CODIGO_CLIENTE ON dbo.P_RUTA.CODIGO_RUTA = dbo.D_FACTURA.RUTA
WHERE        (dbo.D_FACTURA.RUTA IN (61, 65, 66, 64, 62, 60)) AND (dbo.D_FACTURA.FECHA >= '20210213') AND (dbo.D_FACTURA.FECHA < '20210219') AND (dbo.D_FACTURA.ANULADO = 0)
ORDER BY dbo.D_FACTURA.SERIE, dbo.D_FACTURA.CORELATIVO
GO
/****** Object:  View [dbo].[vw_InfileAnulacionTotales]    Script Date: 2021/03/03 11:57:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vw_InfileAnulacionTotales]
AS
SELECT        TOP (100) PERCENT dbo.P_RUTA.NOMBRE AS NombreRuta, SUM(dbo.D_FACTURA.TOTAL) AS Expr1
FROM            dbo.P_RUTA INNER JOIN
                         dbo.D_FACTURA ON dbo.P_RUTA.CODIGO_RUTA = dbo.D_FACTURA.RUTA
WHERE        (dbo.D_FACTURA.RUTA IN (61, 65, 66, 64, 62, 60)) AND (dbo.D_FACTURA.FECHA >= '20210213') AND (dbo.D_FACTURA.FECHA < '20210219') AND (dbo.D_FACTURA.ANULADO = 0)
GROUP BY dbo.P_RUTA.NOMBRE
GO
/****** Object:  View [dbo].[vWPendCert2]    Script Date: 2021/03/03 11:57:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vWPendCert2]
AS
SELECT        TOP (100) PERCENT dbo.P_RUTA.NOMBRE, dbo.D_FACTURA.RUTA, dbo.D_FACTURA.COREL, dbo.D_FACTURA.SUPERVISOR AS CANT, dbo.D_FACTURA.VEHICULO AS VERSION
FROM            dbo.D_FACTURA INNER JOIN
                         dbo.P_RUTA ON dbo.D_FACTURA.RUTA = dbo.P_RUTA.CODIGO_RUTA
WHERE        (dbo.D_FACTURA.COREL IN
                             (SELECT        MAX(COREL) AS Expr1
                               FROM            dbo.D_FACTURA AS D_FACTURA_1
                               WHERE        (EMPRESA NOT IN (3, 9)) AND (FECHA = '20210117')
                               GROUP BY RUTA))
ORDER BY CANT DESC
GO
/****** Object:  Table [dbo].[D_FEL_BITACORA]    Script Date: 2021/03/03 11:57:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[D_FEL_BITACORA](
	[CODIGO_BITACORA] [int] IDENTITY(1,1) NOT NULL,
	[EMPRESA] [int] NULL,
	[CODIGO_SUCURSAL] [int] NULL,
	[CODIGO_RUTA] [int] NULL,
	[COREL] [nvarchar](50) NOT NULL,
	[FECHA] [bigint] NULL,
	[TIEMPO_FIRMA] [float] NULL,
	[TIEMPO_CERT] [float] NULL,
	[ESTADO] [int] NULL,
	[CODIGO_VENDEDOR] [int] NULL,
 CONSTRAINT [PK_D_FEL_BITACORA] PRIMARY KEY CLUSTERED 
(
	[CODIGO_BITACORA] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[vWFELTiempo]    Script Date: 2021/03/03 11:57:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vWFELTiempo]
AS
SELECT        TOP (100) PERCENT dbo.P_SUCURSAL.DESCRIPCION AS Sucursal, CAST(AVG(dbo.D_FEL_BITACORA.TIEMPO_FIRMA) AS DECIMAL(10, 2)) AS TiempoFirma, CAST(AVG(dbo.D_FEL_BITACORA.TIEMPO_CERT) AS DECIMAL(10, 2)) 
                         AS TiempoCertif, CAST(AVG(dbo.D_FEL_BITACORA.TIEMPO_FIRMA) + AVG(dbo.D_FEL_BITACORA.TIEMPO_CERT) AS DECIMAL(10, 2)) AS TiempoTotal
FROM            dbo.D_FEL_BITACORA INNER JOIN
                         dbo.P_SUCURSAL ON dbo.D_FEL_BITACORA.CODIGO_SUCURSAL = dbo.P_SUCURSAL.CODIGO_SUCURSAL
WHERE        (dbo.D_FEL_BITACORA.FECHA > '20201001')
GROUP BY dbo.P_SUCURSAL.DESCRIPCION
ORDER BY Sucursal
GO
/****** Object:  View [dbo].[vWFELCertCancel]    Script Date: 2021/03/03 11:57:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vWFELCertCancel]
AS
SELECT        dbo.P_SUCURSAL.DESCRIPCION AS Sucursal, COUNT(dbo.D_FEL_BITACORA.CODIGO_VENDEDOR) AS Cancelados
FROM            dbo.D_FEL_BITACORA INNER JOIN
                         dbo.P_SUCURSAL ON dbo.D_FEL_BITACORA.CODIGO_SUCURSAL = dbo.P_SUCURSAL.CODIGO_SUCURSAL
WHERE        (dbo.D_FEL_BITACORA.ESTADO = 0)
GROUP BY dbo.P_SUCURSAL.DESCRIPCION
GO
/****** Object:  Table [dbo].[Anulaciones]    Script Date: 2021/03/03 11:57:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Anulaciones](
	[Autorizacion] [nvarchar](255) NULL,
	[F2] [nvarchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[aspnet_SchemaVersions]    Script Date: 2021/03/03 11:57:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[aspnet_SchemaVersions](
	[Feature] [nvarchar](128) NOT NULL,
	[CompatibleSchemaVersion] [nvarchar](128) NOT NULL,
	[IsCurrentVersion] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Feature] ASC,
	[CompatibleSchemaVersion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[aspnet_Sessions]    Script Date: 2021/03/03 11:57:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[aspnet_Sessions](
	[SessionId] [nvarchar](80) NOT NULL,
	[ApplicationName] [nvarchar](255) NOT NULL,
	[Created] [datetime] NOT NULL,
	[Expires] [datetime] NOT NULL,
	[LockDate] [datetime] NOT NULL,
	[LockId] [int] NOT NULL,
	[Timeout] [int] NOT NULL,
	[Locked] [bit] NOT NULL,
	[SessionItems] [varbinary](max) NULL,
	[Flags] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[SessionId] ASC,
	[ApplicationName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[D_BONIF]    Script Date: 2021/03/03 11:57:39 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[D_BONIF](
	[EMPRESA] [int] NOT NULL,
	[COREL] [nvarchar](20) NOT NULL,
	[ITEM] [int] NOT NULL,
	[FECHA] [datetime] NULL,
	[ANULADO] [bit] NOT NULL,
	[RUTA] [nvarchar](15) NULL,
	[CLIENTE] [nvarchar](15) NULL,
	[PRODUCTO] [nvarchar](15) NULL,
	[CANT] [float] NULL,
	[VENPED] [nvarchar](1) NULL,
	[TIPO] [nvarchar](3) NULL,
	[PRECIO] [float] NULL,
	[COSTO] [float] NULL,
	[TOTAL] [float] NULL,
	[STATCOM] [nvarchar](1) NOT NULL,
	[UMVENTA] [nvarchar](10) NOT NULL,
	[UMSTOCK] [nvarchar](25) NULL,
	[UMPESO] [nvarchar](25) NULL,
	[FACTOR] [float] NULL,
 CONSTRAINT [PK_D_BONIF] PRIMARY KEY CLUSTERED 
(
	[COREL] ASC,
	[ITEM] ASC,
	[EMPRESA] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[D_DEPOS]    Script Date: 2021/03/03 11:57:39 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[D_DEPOS](
	[COREL] [nvarchar](20) NOT NULL,
	[EMPRESA] [nvarchar](3) NULL,
	[FECHA] [datetime] NULL,
	[RUTA] [nvarchar](15) NULL,
	[BANCO] [nvarchar](15) NULL,
	[CUENTA] [nvarchar](25) NULL,
	[REFERENCIA] [nvarchar](25) NULL,
	[TOTAL] [float] NULL,
	[TOTEFEC] [float] NULL,
	[TOTCHEQ] [float] NULL,
	[NUMCHEQ] [int] NULL,
	[IMPRES] [int] NULL,
	[STATCOM] [nvarchar](1) NULL,
	[ANULADO] [bit] NOT NULL,
	[CODIGOLIQUIDACION] [int] NOT NULL,
 CONSTRAINT [PK_D_DEPOS] PRIMARY KEY CLUSTERED 
(
	[COREL] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[D_DEPOSB]    Script Date: 2021/03/03 11:57:39 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[D_DEPOSB](
	[COREL] [nvarchar](20) NOT NULL,
	[DENOMINACION] [float] NOT NULL,
	[CANTIDAD] [int] NULL,
	[TIPO] [nvarchar](1) NOT NULL,
	[MONEDA] [nvarchar](1) NOT NULL,
 CONSTRAINT [PK_D_DEPOSB] PRIMARY KEY CLUSTERED 
(
	[COREL] ASC,
	[DENOMINACION] ASC,
	[TIPO] ASC,
	[MONEDA] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[D_DEPOSD]    Script Date: 2021/03/03 11:57:39 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[D_DEPOSD](
	[COREL] [nvarchar](20) NOT NULL,
	[DOCCOREL] [nvarchar](20) NOT NULL,
	[ITEM] [int] NOT NULL,
	[TIPODOC] [nvarchar](1) NULL,
	[CODPAGO] [int] NULL,
	[CHEQUE] [bit] NOT NULL,
	[MONTO] [float] NULL,
	[BANCO] [nvarchar](25) NULL,
	[NUMERO] [nvarchar](25) NULL,
 CONSTRAINT [PK_D_DEPOSD] PRIMARY KEY CLUSTERED 
(
	[COREL] ASC,
	[DOCCOREL] ASC,
	[ITEM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[D_FACTURAD]    Script Date: 2021/03/03 11:57:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[D_FACTURAD](
	[COREL_DFACTURAD] [int] IDENTITY(1,1) NOT NULL,
	[EMPRESA] [int] NOT NULL,
	[COREL] [nvarchar](20) NOT NULL,
	[PRODUCTO] [int] NOT NULL,
	[UMPESO] [nvarchar](25) NOT NULL,
	[ANULADO] [bit] NOT NULL,
	[CANT] [float] NULL,
	[PRECIO] [float] NULL,
	[IMP] [float] NULL,
	[DES] [float] NULL,
	[DESMON] [float] NULL,
	[TOTAL] [float] NULL,
	[PRECIODOC] [float] NULL,
	[PESO] [float] NULL,
	[VAL1] [float] NULL,
	[VAL2] [nvarchar](15) NULL,
	[UMVENTA] [nvarchar](25) NULL,
	[FACTOR] [float] NULL,
	[UMSTOCK] [nvarchar](25) NULL,
 CONSTRAINT [PK_D_FACTURAD_1] PRIMARY KEY CLUSTERED 
(
	[COREL_DFACTURAD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[D_FACTURAF]    Script Date: 2021/03/03 11:57:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[D_FACTURAF](
	[COREL] [nvarchar](20) NOT NULL,
	[NOMBRE] [nvarchar](50) NULL,
	[NIT] [nvarchar](30) NULL,
	[DIRECCION] [nvarchar](200) NULL,
 CONSTRAINT [PK_D_FACTURAF] PRIMARY KEY CLUSTERED 
(
	[COREL] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[D_FACTURAP]    Script Date: 2021/03/03 11:57:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[D_FACTURAP](
	[EMPRESA] [int] NULL,
	[COREL] [nvarchar](20) NOT NULL,
	[ITEM] [smallint] NOT NULL,
	[ANULADO] [bit] NOT NULL,
	[CODPAGO] [int] NULL,
	[TIPO] [nvarchar](1) NULL,
	[VALOR] [float] NULL,
	[DESC1] [nvarchar](50) NULL,
	[DESC2] [nvarchar](50) NULL,
	[DESC3] [nvarchar](50) NULL,
	[DEPOS] [bit] NOT NULL,
 CONSTRAINT [PK_D_FACTURAP] PRIMARY KEY CLUSTERED 
(
	[COREL] ASC,
	[ITEM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[D_FACTURAPR]    Script Date: 2021/03/03 11:57:41 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[D_FACTURAPR](
	[EMPRESA] [int] NOT NULL,
	[COREL] [nvarchar](20) NOT NULL,
	[ANULADO] [bit] NULL,
	[FECHA] [datetime] NULL,
	[CODIGO_SUCURSAL] [int] NULL,
	[CODIGO_VENDEDOR] [int] NULL,
	[PROPINA] [float] NULL,
 CONSTRAINT [PK_D_FACTURA_PR] PRIMARY KEY CLUSTERED 
(
	[EMPRESA] ASC,
	[COREL] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[D_ORDEN_BITACORA]    Script Date: 2021/03/03 11:57:41 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[D_ORDEN_BITACORA](
	[CODIGO_BITACORA] [int] IDENTITY(1,1) NOT NULL,
	[EMPRESA] [int] NOT NULL,
	[FECHA] [datetime] NOT NULL,
	[CODIGO_SUCURSAL] [int] NOT NULL,
	[CODIGO_VENDEDOR] [int] NOT NULL,
	[CANT_ORDENES] [int] NOT NULL,
	[CANT_RETRASADOS] [int] NOT NULL,
	[TPPO] [float] NOT NULL,
	[EFICIENCIA] [float] NOT NULL,
 CONSTRAINT [PK_D_PEDIDO_BITACORA] PRIMARY KEY CLUSTERED 
(
	[CODIGO_BITACORA] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[D_PEDIDO]    Script Date: 2021/03/03 11:57:41 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[D_PEDIDO](
	[EMPRESA] [int] NOT NULL,
	[COREL] [nvarchar](50) NOT NULL,
	[FECHA_SISTEMA] [datetime] NULL,
	[FECHA_PEDIDO] [datetime] NULL,
	[FECHA_RECEPCION_SUC] [datetime] NULL,
	[FECHA_SALIDA_SUC] [datetime] NULL,
	[FECHA_ENTREGA] [datetime] NULL,
	[CODIGO_CLIENTE] [int] NULL,
	[FIRMA_CLIENTE] [image] NULL,
	[CODIGO_DIRECCION] [int] NULL,
	[CODIGO_SUCURSAL] [int] NULL,
	[TOTAL] [float] NULL,
	[CODIGO_ESTADO] [int] NULL,
	[CODIGO_USUARIO_CREO] [int] NULL,
	[CODIGO_USUARIO_PROCESO] [int] NULL,
	[CODIGO_USUARIO_ENTREGO] [int] NULL,
	[ANULADO] [bit] NULL,
 CONSTRAINT [PK_D_PEDIDO] PRIMARY KEY CLUSTERED 
(
	[COREL] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[D_PEDIDOCOMBO]    Script Date: 2021/03/03 11:57:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[D_PEDIDOCOMBO](
	[COREL_DET] [int] NOT NULL,
	[COREL_COMBO] [int] NOT NULL,
	[SELECCION] [int] NOT NULL,
	[CODIGO_PRODUCTO] [int] NOT NULL,
	[CANT] [int] NULL,
	[NOTA] [nvarchar](50) NULL,
 CONSTRAINT [PK_D_PEDIDOCOMBO_1] PRIMARY KEY CLUSTERED 
(
	[COREL_COMBO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[D_PEDIDOD]    Script Date: 2021/03/03 11:57:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[D_PEDIDOD](
	[COREL] [nvarchar](50) NOT NULL,
	[COREL_DET] [int] IDENTITY(1,1) NOT NULL,
	[CODIGO_PRODUCTO] [int] NOT NULL,
	[UMVENTA] [nvarchar](25) NULL,
	[CANT] [float] NULL,
	[TOTAL] [float] NULL,
	[NOTA] [nvarchar](50) NULL,
	[CODIGO_TIPO_PRODUCTO] [nvarchar](1) NULL,
 CONSTRAINT [PK_D_PEDIDOD_1] PRIMARY KEY CLUSTERED 
(
	[COREL_DET] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[D_PEDIDOMESA]    Script Date: 2021/03/03 11:57:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[D_PEDIDOMESA](
	[EMPRESA] [int] NOT NULL,
	[COREL] [nvarchar](50) NOT NULL,
	[CODIGO_SUCURSAL] [int] NULL,
	[CODIGO_MESA] [int] NULL,
	[FECHA_SISTEMA] [datetime] NULL,
	[FECHA_PEDIDO] [datetime] NULL,
	[FECHA_RECEPCION_SUC] [datetime] NULL,
	[FECHA_SALIDA_SUC] [datetime] NULL,
	[FECHA_ENTREGA] [datetime] NULL,
	[CODIGO_CLIENTE] [int] NULL,
	[CODIGO_DIRECCION] [int] NULL,
	[TOTAL] [float] NULL,
	[CODIGO_ESTADO] [int] NULL,
	[CODIGO_USUARIO_CREO] [int] NULL,
	[CODIGO_USUARIO_PROCESO] [int] NULL,
	[CODIGO_USUARIO_ENTREGO] [int] NULL,
	[ANULADO] [bit] NULL,
 CONSTRAINT [PK_D_PEDIDOMESA] PRIMARY KEY CLUSTERED 
(
	[COREL] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[D_PEDIDOR]    Script Date: 2021/03/03 11:57:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[D_PEDIDOR](
	[EMPRESA] [int] NOT NULL,
	[COREL] [nvarchar](50) NOT NULL,
	[FECHA_SISTEMA] [datetime] NULL,
	[FECHA_PEDIDO] [datetime] NULL,
	[FECHA_RECEPCION_SUC] [datetime] NULL,
	[FECHA_SALIDA_SUC] [datetime] NULL,
	[FECHA_ENTREGA] [datetime] NULL,
	[CODIGO_CLIENTE] [int] NULL,
	[FIRMA_CLIENTE] [image] NULL,
	[CODIGO_DIRECCION] [int] NULL,
	[CODIGO_SUCURSAL] [int] NULL,
	[CODIGO_MESA] [int] NULL,
	[CODIGO_MESERO] [int] NULL,
	[COREL_PEDIDO] [nvarchar](50) NULL,
	[TOTAL] [float] NULL,
	[CODIGO_ESTADO] [int] NULL,
	[CODIGO_USUARIO_CREO] [int] NULL,
	[CODIGO_USUARIO_PROCESO] [int] NULL,
	[CODIGO_USUARIO_ENTREGO] [int] NULL,
	[ANULADO] [bit] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[D_USUARIO_ASISTENCIA]    Script Date: 2021/03/03 11:57:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[D_USUARIO_ASISTENCIA](
	[CODIGO_ASISTENCIA] [int] IDENTITY(1,1) NOT NULL,
	[EMPRESA] [int] NULL,
	[CODIGO_SUCURSAL] [int] NULL,
	[CODIGO_VENDEDOR] [int] NULL,
	[INICIO] [datetime] NULL,
	[FIN] [datetime] NULL,
	[BANDERA] [int] NULL,
 CONSTRAINT [PK_D_USUARIO_ASISTENCIA] PRIMARY KEY CLUSTERED 
(
	[CODIGO_ASISTENCIA] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FACTURA_SINCERT_CHICACAO_D2]    Script Date: 2021/03/03 11:57:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FACTURA_SINCERT_CHICACAO_D2](
	[CONSECUTIVO] [nvarchar](255) NULL,
	[TIPO] [int] NOT NULL,
	[BIENOSERVICIO] [varchar](1) NOT NULL,
	[NUMEROLINEA] [int] NOT NULL,
	[CANT] [float] NULL,
	[UMVENTA] [nvarchar](255) NULL,
	[DESCRIPCION] [nvarchar](100) NOT NULL,
	[PRECIOUNITARIO] [float] NULL,
	[PRECIO] [float] NULL,
	[DESCUENTO] [varchar](1) NOT NULL,
	[NOMBRECORTO1] [varchar](3) NOT NULL,
	[CODIGOUNIDADGRAVABLE1] [int] NOT NULL,
	[MONTOGRAVABLE1] [float] NULL,
	[CANTIDADUNIDADESGRAVABLES1] [varchar](1) NOT NULL,
	[MONTOIMPUESTO1] [float] NULL,
	[NOMBRECORTO2] [varchar](1) NOT NULL,
	[CODIGOUNIDADGRAVABLE2] [varchar](1) NOT NULL,
	[MONTOGRAVABLE2] [varchar](1) NOT NULL,
	[CANTIDADUNIDADESGRAVABLES2] [varchar](1) NOT NULL,
	[MONTOIMPUESTO2] [varchar](1) NOT NULL,
	[TOTAL] [float] NULL,
	[PRODUCTO] [nvarchar](255) NULL,
	[IDENC] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FACTURA_SINCERT_GUATE_D2]    Script Date: 2021/03/03 11:57:45 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FACTURA_SINCERT_GUATE_D2](
	[CONSECUTIVO] [nvarchar](255) NULL,
	[TIPO] [int] NOT NULL,
	[BIENOSERVICIO] [varchar](1) NOT NULL,
	[NUMEROLINEA] [int] NOT NULL,
	[CANT] [float] NULL,
	[UMVENTA] [nvarchar](255) NULL,
	[DESCRIPCION] [nvarchar](100) NOT NULL,
	[PRECIOUNITARIO] [float] NULL,
	[PRECIO] [float] NULL,
	[DESCUENTO] [varchar](1) NOT NULL,
	[NOMBRECORTO1] [varchar](3) NOT NULL,
	[CODIGOUNIDADGRAVABLE1] [int] NOT NULL,
	[MONTOGRAVABLE1] [float] NULL,
	[CANTIDADUNIDADESGRAVABLES1] [varchar](1) NOT NULL,
	[MONTOIMPUESTO1] [float] NULL,
	[NOMBRECORTO2] [varchar](1) NOT NULL,
	[CODIGOUNIDADGRAVABLE2] [varchar](1) NOT NULL,
	[MONTOGRAVABLE2] [varchar](1) NOT NULL,
	[CANTIDADUNIDADESGRAVABLES2] [varchar](1) NOT NULL,
	[MONTOIMPUESTO2] [varchar](1) NOT NULL,
	[TOTAL] [float] NULL,
	[PRODUCTO] [nvarchar](255) NULL,
	[IDENC] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FACTURA_SINCERT_MAPOSA_D2]    Script Date: 2021/03/03 11:57:45 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FACTURA_SINCERT_MAPOSA_D2](
	[CONSECUTIVO] [nvarchar](255) NULL,
	[TIPO] [int] NOT NULL,
	[BIENOSERVICIO] [varchar](1) NOT NULL,
	[NUMEROLINEA] [int] NOT NULL,
	[CANT] [float] NULL,
	[UMVENTA] [nvarchar](255) NULL,
	[DESCRIPCION] [nvarchar](100) NOT NULL,
	[PRECIOUNITARIO] [float] NULL,
	[PRECIO] [float] NULL,
	[DESCUENTO] [varchar](1) NOT NULL,
	[NOMBRECORTO1] [varchar](3) NOT NULL,
	[CODIGOUNIDADGRAVABLE1] [int] NOT NULL,
	[MONTOGRAVABLE1] [float] NULL,
	[CANTIDADUNIDADESGRAVABLES1] [varchar](1) NOT NULL,
	[MONTOIMPUESTO1] [float] NULL,
	[NOMBRECORTO2] [varchar](1) NOT NULL,
	[CODIGOUNIDADGRAVABLE2] [varchar](1) NOT NULL,
	[MONTOGRAVABLE2] [varchar](1) NOT NULL,
	[CANTIDADUNIDADESGRAVABLES2] [varchar](1) NOT NULL,
	[MONTOIMPUESTO2] [varchar](1) NOT NULL,
	[TOTAL] [float] NULL,
	[PRODUCTO] [nvarchar](255) NULL,
	[IDENC] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FACTURA_SINCERT_SERVIALIM_D2]    Script Date: 2021/03/03 11:57:45 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FACTURA_SINCERT_SERVIALIM_D2](
	[CONSECUTIVO] [nvarchar](255) NULL,
	[TIPO] [int] NOT NULL,
	[BIENOSERVICIO] [varchar](1) NOT NULL,
	[NUMEROLINEA] [int] NOT NULL,
	[CANT] [float] NULL,
	[UMVENTA] [nvarchar](255) NULL,
	[DESCRIPCION] [nvarchar](100) NOT NULL,
	[PRECIOUNITARIO] [float] NULL,
	[PRECIO] [float] NULL,
	[DESCUENTO] [varchar](1) NOT NULL,
	[NOMBRECORTO1] [varchar](3) NOT NULL,
	[CODIGOUNIDADGRAVABLE1] [int] NOT NULL,
	[MONTOGRAVABLE1] [float] NULL,
	[CANTIDADUNIDADESGRAVABLES1] [varchar](1) NOT NULL,
	[MONTOIMPUESTO1] [float] NULL,
	[NOMBRECORTO2] [varchar](1) NOT NULL,
	[CODIGOUNIDADGRAVABLE2] [varchar](1) NOT NULL,
	[MONTOGRAVABLE2] [varchar](1) NOT NULL,
	[CANTIDADUNIDADESGRAVABLES2] [varchar](1) NOT NULL,
	[MONTOIMPUESTO2] [varchar](1) NOT NULL,
	[TOTAL] [float] NULL,
	[PRODUCTO] [nvarchar](255) NULL,
	[IDENC] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[P_ARCHIVOCONF]    Script Date: 2021/03/03 11:57:45 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[P_ARCHIVOCONF](
	[CODIGO_ARCHIVOCONF] [int] IDENTITY(1,1) NOT NULL,
	[EMPRESA] [int] NOT NULL,
	[RUTA] [int] NOT NULL,
	[TIPO_HH] [nvarchar](50) NULL,
	[IDIOMA] [nvarchar](50) NULL,
	[TIPO_IMPRESORA] [nvarchar](50) NULL,
	[SERIAL_HH] [nvarchar](50) NOT NULL,
	[MODIF_PESO] [nvarchar](1) NULL,
	[PUERTO_IMPRESION] [nvarchar](50) NULL,
	[LBS_O_KGS] [nvarchar](3) NOT NULL,
	[NOTA_CREDITO] [bit] NOT NULL,
 CONSTRAINT [PK_P_ARCHIVOCONF_1] PRIMARY KEY CLUSTERED 
(
	[CODIGO_ARCHIVOCONF] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[P_AUSENCIAS_VENDEDOR]    Script Date: 2021/03/03 11:57:46 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[P_AUSENCIAS_VENDEDOR](
	[CODIGO] [int] IDENTITY(1,1) NOT NULL,
	[CODIGO_SUCURSAL] [int] NULL,
	[CODIGO_VENDEDOR] [int] NULL,
	[CODIGO_MOTIVO] [int] NULL,
	[FECHA_DESDE] [datetime] NULL,
	[FECHA_HASTA] [datetime] NULL,
	[OBSERVACION] [nvarchar](50) NULL,
	[CONTABILIZAR] [bit] NULL,
 CONSTRAINT [PK_P_AUSENCIAS_VENDEDOR] PRIMARY KEY CLUSTERED 
(
	[CODIGO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[P_BANCO]    Script Date: 2021/03/03 11:57:46 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[P_BANCO](
	[CODIGO_BANCO] [int] IDENTITY(1,1) NOT NULL,
	[EMPRESA] [int] NOT NULL,
	[CODIGO] [nvarchar](15) NOT NULL,
	[TIPO] [nvarchar](1) NULL,
	[NOMBRE] [nvarchar](30) NULL,
	[CUENTA] [nvarchar](25) NULL,
	[ACTIVO] [int] NULL,
 CONSTRAINT [PK_P_BANCO_1] PRIMARY KEY CLUSTERED 
(
	[CODIGO_BANCO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[P_BONIF]    Script Date: 2021/03/03 11:57:46 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[P_BONIF](
	[CODDESC] [int] IDENTITY(1,1) NOT NULL,
	[CODIGO_CLIENTE] [int] NULL,
	[CTIPO] [int] NOT NULL,
	[CODIGO_PRODUCTO] [int] NOT NULL,
	[PTIPO] [int] NOT NULL,
	[TIPORUTA] [int] NOT NULL,
	[TIPOBON] [nvarchar](1) NOT NULL,
	[RANGOINI] [float] NOT NULL,
	[RANGOFIN] [float] NOT NULL,
	[TIPOLISTA] [int] NOT NULL,
	[TIPOCANT] [nvarchar](1) NOT NULL,
	[VALOR] [float] NOT NULL,
	[LISTA] [nvarchar](15) NOT NULL,
	[CANTEXACT] [nvarchar](1) NOT NULL,
	[GLOBBON] [nvarchar](1) NOT NULL,
	[PORCANT] [nvarchar](1) NOT NULL,
	[FECHAINI] [datetime] NOT NULL,
	[FECHAFIN] [datetime] NOT NULL,
	[NOMBRE] [nvarchar](25) NOT NULL,
	[EMP] [int] NOT NULL,
	[UMPRODUCTO] [nvarchar](10) NOT NULL,
	[UMBONIFICACION] [nvarchar](10) NOT NULL,
 CONSTRAINT [PK_P_BONIF_1] PRIMARY KEY CLUSTERED 
(
	[CODDESC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[P_BONIFICACION_TIPO_CLIENTE]    Script Date: 2021/03/03 11:57:47 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[P_BONIFICACION_TIPO_CLIENTE](
	[CODIGO_TIPO_CLIENTE] [int] IDENTITY(1,1) NOT NULL,
	[CODIGO] [int] NULL,
	[NOMBRE] [nvarchar](50) NULL,
 CONSTRAINT [PK_P_BONIFICACION_TIPO_CLIENTE] PRIMARY KEY CLUSTERED 
(
	[CODIGO_TIPO_CLIENTE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[P_CAJA_IMPRESORA]    Script Date: 2021/03/03 11:57:47 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[P_CAJA_IMPRESORA](
	[CODIGO_CAJA_IMPRESORA] [int] IDENTITY(1,1) NOT NULL,
	[CODIGO_CAJA] [int] NOT NULL,
	[CODIGO_SUCURSAL] [int] NOT NULL,
	[EMPRESA] [int] NOT NULL,
	[CODIGO_IMPRESORA] [int] NOT NULL,
 CONSTRAINT [PK_P_CAJA_IMPRESORA] PRIMARY KEY CLUSTERED 
(
	[CODIGO_CAJA_IMPRESORA] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[P_CAJAPAGOS]    Script Date: 2021/03/03 11:57:47 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[P_CAJAPAGOS](
	[CODIGO_CAJAPAGOS] [nvarchar](20) NOT NULL,
	[EMPRESA] [int] NOT NULL,
	[SUCURSAL] [int] NOT NULL,
	[RUTA] [int] NOT NULL,
	[COREL] [int] NOT NULL,
	[ITEM] [int] NOT NULL,
	[ANULADO] [int] NULL,
	[FECHA] [datetime] NOT NULL,
	[TIPO] [int] NULL,
	[PROVEEDOR] [int] NOT NULL,
	[MONTO] [float] NULL,
	[NODOCUMENTO] [nvarchar](25) NULL,
	[REFERENCIA] [nvarchar](50) NOT NULL,
	[OBSERVACION] [nvarchar](50) NULL,
	[VENDEDOR] [int] NOT NULL,
	[STATCOM] [nvarchar](1) NULL,
 CONSTRAINT [PK_P_CAJAPAGOS] PRIMARY KEY CLUSTERED 
(
	[CODIGO_CAJAPAGOS] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[P_CAJAREPORTE]    Script Date: 2021/03/03 11:57:48 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[P_CAJAREPORTE](
	[EMPRESA] [int] NOT NULL,
	[SUCURSAL] [int] NOT NULL,
	[RUTA] [int] NOT NULL,
	[COREL] [int] NOT NULL,
	[LINEA] [int] NOT NULL,
	[TEXTO] [nvarchar](50) NULL,
	[STATCOM] [nvarchar](1) NULL,
	[CODIGO_CAJAREPORTE] [nvarchar](20) NOT NULL,
 CONSTRAINT [PK_P_CAJAREPORTE] PRIMARY KEY CLUSTERED 
(
	[CODIGO_CAJAREPORTE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[P_CANT_EMPLEADOS]    Script Date: 2021/03/03 11:57:48 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[P_CANT_EMPLEADOS](
	[COD_CANT_EMP] [int] IDENTITY(1,1) NOT NULL,
	[NOMBRE] [nvarchar](25) NULL,
	[DESDE] [int] NULL,
	[HASTA] [int] NULL,
 CONSTRAINT [PK_P_CANT_EMPLEADOS] PRIMARY KEY CLUSTERED 
(
	[COD_CANT_EMP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[P_CLIENTE_DIR]    Script Date: 2021/03/03 11:57:48 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[P_CLIENTE_DIR](
	[CODIGO_DIRECCION] [int] NOT NULL,
	[CODIGO_CLIENTE] [int] NULL,
	[REFERENCIA] [nvarchar](100) NULL,
	[CODIGO_DEPARTAMENTO] [nvarchar](15) NOT NULL,
	[CODIGO_MUNICIPIO] [nvarchar](15) NOT NULL,
	[DIRECCION] [nvarchar](250) NULL,
	[ZONA_ENTREGA] [int] NULL,
	[TELEFONO] [nvarchar](50) NULL,
 CONSTRAINT [PK_P_CLIENTE_DIR] PRIMARY KEY CLUSTERED 
(
	[CODIGO_DIRECCION] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[P_CONCEPTOPAGO]    Script Date: 2021/03/03 11:57:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[P_CONCEPTOPAGO](
	[CODIGO] [int] IDENTITY(1,1) NOT NULL,
	[EMPRESA] [int] NOT NULL,
	[NOMBRE] [nvarchar](100) NOT NULL,
	[ACTIVO] [bit] NOT NULL,
 CONSTRAINT [PK_P_CONCEPTOPAGO] PRIMARY KEY CLUSTERED 
(
	[CODIGO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[P_COREL]    Script Date: 2021/03/03 11:57:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[P_COREL](
	[CODIGO_COREL] [int] IDENTITY(1,1) NOT NULL,
	[EMPRESA] [int] NOT NULL,
	[RESOL] [nvarchar](25) NOT NULL,
	[SERIE] [nvarchar](15) NOT NULL,
	[CORELINI] [bigint] NOT NULL,
	[CORELFIN] [bigint] NULL,
	[CORELULT] [bigint] NULL,
	[FECHARES] [datetime] NULL,
	[RUTA] [int] NULL,
	[ACTIVA] [bit] NOT NULL,
	[HANDHELD] [nvarchar](20) NULL,
	[FECHAVIG] [datetime] NULL,
	[RESGUARDO] [int] NULL,
	[VALOR1] [int] NULL,
 CONSTRAINT [PK_P_COREL] PRIMARY KEY CLUSTERED 
(
	[CODIGO_COREL] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[P_DEPARTAMENTO]    Script Date: 2021/03/03 11:57:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[P_DEPARTAMENTO](
	[CODIGO] [nvarchar](15) NOT NULL,
	[CODIGO_AREA] [nvarchar](15) NOT NULL,
	[NOMBRE] [nvarchar](50) NULL,
 CONSTRAINT [PK_P_DEPAR] PRIMARY KEY CLUSTERED 
(
	[CODIGO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[P_DESCUENTO]    Script Date: 2021/03/03 11:57:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[P_DESCUENTO](
	[CODIGO_DESCUENTO] [int] IDENTITY(1,1) NOT NULL,
	[EMPRESA] [int] NOT NULL,
	[CODIGO_CLIENTE] [int] NOT NULL,
	[CTIPO] [int] NOT NULL,
	[CODIGO_PRODUCTO] [int] NOT NULL,
	[PTIPO] [int] NOT NULL,
	[TIPORUTA] [int] NOT NULL,
	[RANGOINI] [float] NOT NULL,
	[RANGOFIN] [float] NOT NULL,
	[DESCTIPO] [nvarchar](1) NULL,
	[VALOR] [float] NOT NULL,
	[GLOBDESC] [nvarchar](1) NOT NULL,
	[PORCANT] [nvarchar](1) NOT NULL,
	[FECHAINI] [int] NOT NULL,
	[FECHAFIN] [int] NOT NULL,
	[CODDESC] [int] NULL,
	[NOMBRE] [nvarchar](25) NULL,
	[ACTIVO] [int] NULL,
 CONSTRAINT [PK_P_DESCUENTO] PRIMARY KEY CLUSTERED 
(
	[CODIGO_DESCUENTO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[P_DESCUENTO_TIPO_CLIENTE]    Script Date: 2021/03/03 11:57:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[P_DESCUENTO_TIPO_CLIENTE](
	[CODIGO_TIPO_CLIENTE] [int] IDENTITY(1,1) NOT NULL,
	[CODIGO] [int] NULL,
	[NOMBRE] [nvarchar](50) NULL,
 CONSTRAINT [PK_P_DESCUENTO_TIPO_CLIENTE] PRIMARY KEY CLUSTERED 
(
	[CODIGO_TIPO_CLIENTE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[P_EMPRESA_VERSION]    Script Date: 2021/03/03 11:57:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[P_EMPRESA_VERSION](
	[EMPRESA] [int] NOT NULL,
	[VERSION] [nvarchar](50) NULL,
 CONSTRAINT [PK_P_EMPRESA_VERSION] PRIMARY KEY CLUSTERED 
(
	[EMPRESA] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[P_ENCABEZADO_REPORTESHH]    Script Date: 2021/03/03 11:57:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[P_ENCABEZADO_REPORTESHH](
	[CODIGO] [int] IDENTITY(1,1) NOT NULL,
	[EMPRESA] [int] NOT NULL,
	[TEXTO] [nvarchar](80) NOT NULL,
	[SUCURSAL] [int] NOT NULL,
 CONSTRAINT [PK_P_ENCABEZADO_REPORTESHH] PRIMARY KEY CLUSTERED 
(
	[CODIGO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[P_ESTACION]    Script Date: 2021/03/03 11:57:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[P_ESTACION](
	[CODIGO_ESTACION] [int] IDENTITY(1,1) NOT NULL,
	[EMPRESA] [int] NOT NULL,
	[CODIGO_SUCURSAL] [int] NOT NULL,
	[NOMBRE] [nvarchar](50) NOT NULL,
	[CODIGO_IMPRESORA] [int] NOT NULL,
 CONSTRAINT [PK_P_ESTACION] PRIMARY KEY CLUSTERED 
(
	[CODIGO_ESTACION] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[P_ESTADO_PEDIDO]    Script Date: 2021/03/03 11:57:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[P_ESTADO_PEDIDO](
	[CODIGO_ESTADO] [int] IDENTITY(1,1) NOT NULL,
	[EMPRESA] [int] NULL,
	[NOMBRE] [nvarchar](50) NULL,
	[ORDEN] [int] NULL,
	[VERIFICADO] [bit] NULL,
	[COMPLETO] [bit] NULL,
 CONSTRAINT [PK_P_ESTADO_PEDIDO] PRIMARY KEY CLUSTERED 
(
	[CODIGO_ESTADO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[P_FACTORCONV]    Script Date: 2021/03/03 11:57:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[P_FACTORCONV](
	[CODIGO_FACTORCONV] [int] IDENTITY(1,1) NOT NULL,
	[EMPRESA] [int] NOT NULL,
	[PRODUCTO] [int] NOT NULL,
	[UNIDADSUPERIOR] [nvarchar](25) NOT NULL,
	[UNIDADMINIMA] [nvarchar](25) NOT NULL,
	[FACTORCONVERSION] [float] NULL,
 CONSTRAINT [PK_P_FACTORCONV] PRIMARY KEY CLUSTERED 
(
	[CODIGO_FACTORCONV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[P_FAMIMAGEN]    Script Date: 2021/03/03 11:57:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[P_FAMIMAGEN](
	[EMPRESA] [nvarchar](15) NOT NULL,
	[CODIGO] [nvarchar](15) NOT NULL,
	[IMAGEN] [image] NULL,
 CONSTRAINT [PK_P_FAMIMAGEN] PRIMARY KEY CLUSTERED 
(
	[EMPRESA] ASC,
	[CODIGO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[P_FRASE]    Script Date: 2021/03/03 11:57:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[P_FRASE](
	[CODIGO_FRASE] [int] NOT NULL,
	[TEXTO] [nvarchar](150) NULL,
 CONSTRAINT [PK_P_FRASE] PRIMARY KEY CLUSTERED 
(
	[CODIGO_FRASE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[P_GRAFICA]    Script Date: 2021/03/03 11:57:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[P_GRAFICA](
	[idGrafica] [int] IDENTITY(1,1) NOT NULL,
	[descripcion] [nchar](75) NOT NULL,
	[activo] [bit] NOT NULL,
	[idNivelLicencia] [int] NULL,
	[index_data] [nchar](150) NULL,
 CONSTRAINT [PK_P_GRAFICA] PRIMARY KEY CLUSTERED 
(
	[idGrafica] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[P_GRAFICA_ROL]    Script Date: 2021/03/03 11:57:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[P_GRAFICA_ROL](
	[IdGraficaRol] [int] IDENTITY(1,1) NOT NULL,
	[IdGrafica] [int] NOT NULL,
	[IdRol] [int] NOT NULL,
	[activo] [bit] NULL,
 CONSTRAINT [PK_P_GRAFICA_ROL_1] PRIMARY KEY CLUSTERED 
(
	[IdGraficaRol] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[P_IMPRESORA]    Script Date: 2021/03/03 11:57:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[P_IMPRESORA](
	[CODIGO_IMPRESORA] [int] IDENTITY(2,1) NOT NULL,
	[EMPRESA] [int] NOT NULL,
	[CODIGO_SUCURSAL] [int] NOT NULL,
	[NOMBRE] [nvarchar](50) NULL,
	[NUMERO_SERIE] [nvarchar](50) NOT NULL,
	[CODIGO_MARCA] [int] NOT NULL,
	[CODIGO_MODELO] [int] NOT NULL,
	[TIPO_IMPRESORA] [nvarchar](50) NOT NULL,
	[MAC] [nvarchar](50) NOT NULL,
	[IP] [nvarchar](50) NOT NULL,
	[FECHA_AGR] [datetime] NULL,
	[IMPRESIONES] [int] NULL,
	[ACTIVO] [bit] NULL,
 CONSTRAINT [PK_P_IMPRESORA] PRIMARY KEY CLUSTERED 
(
	[CODIGO_IMPRESORA] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[P_IMPRESORA_MARCA]    Script Date: 2021/03/03 11:57:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[P_IMPRESORA_MARCA](
	[CODIGO_IMPRESORA_MARCA] [int] IDENTITY(1,1) NOT NULL,
	[NOMBRE] [nvarchar](50) NULL,
	[ACTIVO] [bit] NULL,
 CONSTRAINT [PK_P_IMPRESORA_MARCA] PRIMARY KEY CLUSTERED 
(
	[CODIGO_IMPRESORA_MARCA] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[P_IMPRESORA_MODELO]    Script Date: 2021/03/03 11:57:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[P_IMPRESORA_MODELO](
	[CODIGO_IMPRESORA_MODELO] [int] IDENTITY(1,1) NOT NULL,
	[CODIGO_IMPRESORA_MARCA] [int] NULL,
	[NOMBRE] [nvarchar](50) NULL,
	[ACTIVO] [bit] NULL,
 CONSTRAINT [PK_P_IMPRESORA_MODELO] PRIMARY KEY CLUSTERED 
(
	[CODIGO_IMPRESORA_MODELO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[P_IMPRESORA_TIPO]    Script Date: 2021/03/03 11:57:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[P_IMPRESORA_TIPO](
	[CODIGO_TIPO] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_P_IMPRESORA_TIPO] PRIMARY KEY CLUSTERED 
(
	[CODIGO_TIPO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[P_IMPUESTO]    Script Date: 2021/03/03 11:57:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[P_IMPUESTO](
	[CODIGO_IMPUESTO] [int] IDENTITY(1,1) NOT NULL,
	[EMPRESA] [int] NOT NULL,
	[CODIGO] [int] NOT NULL,
	[VALOR] [float] NULL,
	[ACTIVO] [bit] NULL,
 CONSTRAINT [PK_P_IMPUESTO_1] PRIMARY KEY CLUSTERED 
(
	[CODIGO_IMPUESTO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[P_LINEA_IMPRESORA]    Script Date: 2021/03/03 11:57:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[P_LINEA_IMPRESORA](
	[CODIGO_LINEA_IMPRESORA] [int] IDENTITY(1,1) NOT NULL,
	[CODIGO_LINEA] [int] NOT NULL,
	[CODIGO_SUCURSAL] [int] NOT NULL,
	[EMPRESA] [int] NOT NULL,
	[CODIGO_IMPRESORA] [int] NOT NULL,
 CONSTRAINT [PK_P_LINEA_ESTACION_1] PRIMARY KEY CLUSTERED 
(
	[CODIGO_LINEA_IMPRESORA] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[P_MARCA]    Script Date: 2021/03/03 11:57:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[P_MARCA](
	[CODIGO] [nvarchar](15) NOT NULL,
	[EMPRESA] [int] NULL,
	[NOMBRE] [nvarchar](50) NULL,
 CONSTRAINT [PK_P_MARCA] PRIMARY KEY CLUSTERED 
(
	[CODIGO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[P_MENUOPCION]    Script Date: 2021/03/03 11:57:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[P_MENUOPCION](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[NOMBRE] [nchar](150) NULL,
	[ENLACE] [nchar](150) NULL,
	[ICONO] [nchar](150) NOT NULL,
	[PADRE] [int] NULL,
	[ACTIVO] [tinyint] NULL,
	[MODULO_ID] [smallint] NULL,
 CONSTRAINT [PK_P_MENUOPCION] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[P_MENUOPCION_ROL]    Script Date: 2021/03/03 11:57:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[P_MENUOPCION_ROL](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[MENUOPCION_ID] [int] NULL,
	[MODULO_ROL_ID] [int] NULL,
	[ACTIVO] [tinyint] NULL,
 CONSTRAINT [PK_P_MENUOPCION_ROL] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[P_MENUROL]    Script Date: 2021/03/03 11:57:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[P_MENUROL](
	[COD_ROL] [int] NOT NULL,
	[COD_SUCURSAL] [nvarchar](10) NOT NULL,
	[IDMENU] [nvarchar](50) NOT NULL,
	[IDMODULO] [smallint] NOT NULL,
	[VISIBLE] [bit] NULL,
 CONSTRAINT [PK_MENUROL] PRIMARY KEY CLUSTERED 
(
	[COD_ROL] ASC,
	[COD_SUCURSAL] ASC,
	[IDMENU] ASC,
	[IDMODULO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[P_MENUSISTEMA]    Script Date: 2021/03/03 11:57:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[P_MENUSISTEMA](
	[IDMENU] [nvarchar](50) NOT NULL,
	[IDMODULO] [smallint] NOT NULL,
	[TITULO] [nvarchar](50) NULL,
	[NOMBRE_LGCO] [nvarchar](50) NULL,
	[NIVEL] [int] NULL,
	[PADRE] [nvarchar](50) NULL,
 CONSTRAINT [PK_P_MENUSISTEMA] PRIMARY KEY CLUSTERED 
(
	[IDMENU] ASC,
	[IDMODULO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[P_MODULOS]    Script Date: 2021/03/03 11:57:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[P_MODULOS](
	[IDMODULO] [smallint] IDENTITY(1,1) NOT NULL,
	[NOMBRE] [nvarchar](50) NOT NULL,
	[ICONO] [nvarchar](50) NULL,
	[ENLACE] [nchar](50) NULL,
 CONSTRAINT [PK_P_MODULOS] PRIMARY KEY CLUSTERED 
(
	[IDMODULO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[P_MODULOS_ROL]    Script Date: 2021/03/03 11:57:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[P_MODULOS_ROL](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[MODULO_ID] [smallint] NULL,
	[ROL_ID] [int] NULL,
	[ACTIVO] [tinyint] NULL,
 CONSTRAINT [PK_P_MODULOS_ROL] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[P_MONEDA]    Script Date: 2021/03/03 11:57:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[P_MONEDA](
	[CODIGO] [int] IDENTITY(1,1) NOT NULL,
	[EMPRESA] [int] NOT NULL,
	[NOMBRE] [nvarchar](50) NULL,
	[ACTIVO] [int] NULL,
	[SYMBOLO] [nvarchar](10) NULL,
	[CAMBIO] [float] NULL,
 CONSTRAINT [PK_P_MONEDA] PRIMARY KEY CLUSTERED 
(
	[CODIGO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[P_MOTIVO_AJUSTE]    Script Date: 2021/03/03 11:57:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[P_MOTIVO_AJUSTE](
	[CODIGO_MOTIVO_AJUSTE] [int] NOT NULL,
	[EMPRESA] [int] NOT NULL,
	[NOMBRE] [nvarchar](50) NULL,
	[ACTIVO] [bit] NOT NULL,
 CONSTRAINT [PK_P_MOTIVO_AJUSTE] PRIMARY KEY CLUSTERED 
(
	[CODIGO_MOTIVO_AJUSTE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[P_MOTIVO_AUSENCIA]    Script Date: 2021/03/03 11:57:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[P_MOTIVO_AUSENCIA](
	[EMPRESA] [int] NULL,
	[CODIGO] [int] IDENTITY(1,1) NOT NULL,
	[NOMBRE] [nvarchar](50) NULL,
 CONSTRAINT [PK_P_MOTIVO_AUSENCIA] PRIMARY KEY CLUSTERED 
(
	[CODIGO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[P_MUNICIPIO]    Script Date: 2021/03/03 11:58:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[P_MUNICIPIO](
	[CODIGO] [nvarchar](15) NOT NULL,
	[CODIGO_DEPARTAMENTO] [nvarchar](15) NOT NULL,
	[NOMBRE] [nvarchar](50) NULL,
 CONSTRAINT [PK_P_MUNI] PRIMARY KEY CLUSTERED 
(
	[CODIGO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[P_NIVELMEDIAPAGO]    Script Date: 2021/03/03 11:58:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[P_NIVELMEDIAPAGO](
	[CODIGO] [int] NOT NULL,
	[DESCRIPCION] [nvarchar](25) NULL,
 CONSTRAINT [PK_P_NIVELMEDIAPAGO] PRIMARY KEY CLUSTERED 
(
	[CODIGO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[P_NIVELPRECIO]    Script Date: 2021/03/03 11:58:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[P_NIVELPRECIO](
	[CODIGO] [int] IDENTITY(1,1) NOT NULL,
	[EMPRESA] [int] NOT NULL,
	[NOMBRE] [nvarchar](50) NULL,
	[ACTIVO] [bit] NULL,
 CONSTRAINT [PK_P_NIVELPRECIO_1] PRIMARY KEY CLUSTERED 
(
	[CODIGO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[P_PAIS]    Script Date: 2021/03/03 11:58:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[P_PAIS](
	[COD_PAIS] [nvarchar](10) NOT NULL,
	[NOMBRE] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_P_PAIS] PRIMARY KEY CLUSTERED 
(
	[COD_PAIS] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[P_PARAMEXT]    Script Date: 2021/03/03 11:58:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[P_PARAMEXT](
	[CODIGO_PARAMEXT] [int] IDENTITY(1,1) NOT NULL,
	[EMPRESA] [int] NULL,
	[ID] [int] NULL,
	[IDRUTA] [nvarchar](15) NOT NULL,
	[NOMBRE] [nvarchar](50) NULL,
	[VALOR] [nvarchar](50) NULL,
 CONSTRAINT [PK_P_PARAMEXT_1] PRIMARY KEY CLUSTERED 
(
	[CODIGO_PARAMEXT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[P_PRODCOMBO]    Script Date: 2021/03/03 11:58:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[P_PRODCOMBO](
	[CODIGO_COMBO] [int] IDENTITY(1,1) NOT NULL,
	[EMPRESA] [int] NULL,
	[PRODUCTO] [int] NOT NULL,
	[CODIGO] [nvarchar](50) NOT NULL,
	[TIPO] [nvarchar](1) NULL,
	[CANTMIN] [float] NULL,
	[CANTTOT] [float] NULL,
 CONSTRAINT [PK_P_PRODCOMBO] PRIMARY KEY CLUSTERED 
(
	[CODIGO_COMBO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[P_PRODIMAGEN]    Script Date: 2021/03/03 11:58:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[P_PRODIMAGEN](
	[EMPRESA] [nvarchar](15) NOT NULL,
	[CODIGO] [nvarchar](15) NOT NULL,
	[IMAGEN] [image] NULL,
 CONSTRAINT [PK_P_PRODIMAGEN] PRIMARY KEY CLUSTERED 
(
	[EMPRESA] ASC,
	[CODIGO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[P_PRODMENU]    Script Date: 2021/03/03 11:58:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[P_PRODMENU](
	[CODIGO_MENU] [int] IDENTITY(1,1) NOT NULL,
	[EMPRESA] [int] NOT NULL,
	[CODIGO_PRODUCTO] [int] NOT NULL,
	[NOMBRE] [nvarchar](50) NOT NULL,
	[NOTA] [nvarchar](50) NULL,
 CONSTRAINT [PK_P_PRODMENU] PRIMARY KEY CLUSTERED 
(
	[CODIGO_MENU] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[P_PRODMENUOPC]    Script Date: 2021/03/03 11:58:05 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[P_PRODMENUOPC](
	[CODIGO_MENU_OPCION] [int] IDENTITY(1,1) NOT NULL,
	[CODIGO_MENU] [int] NULL,
	[NOMBRE] [nvarchar](50) NULL,
	[CANT] [float] NOT NULL,
	[ORDEN] [int] NOT NULL,
 CONSTRAINT [PK_P_PRODMENUOPC1] PRIMARY KEY CLUSTERED 
(
	[CODIGO_MENU_OPCION] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[P_PRODMENUOPC_DET]    Script Date: 2021/03/03 11:58:05 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[P_PRODMENUOPC_DET](
	[CODIGO_MENUOPC_DET] [int] IDENTITY(1,1) NOT NULL,
	[CODIGO_MENU_OPCION] [int] NULL,
	[CODIGO_PRODUCTO] [int] NOT NULL,
 CONSTRAINT [PK_CODIGO_MENU_OPC_DET] PRIMARY KEY CLUSTERED 
(
	[CODIGO_MENUOPC_DET] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[P_PRODOPC]    Script Date: 2021/03/03 11:58:05 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[P_PRODOPC](
	[ID] [int] NOT NULL,
	[EMPRESA] [nvarchar](15) NOT NULL,
	[NOMBRE] [nvarchar](50) NULL,
	[ACTIVO] [int] NULL,
 CONSTRAINT [PK_P_PRODMENUOPC] PRIMARY KEY CLUSTERED 
(
	[ID] ASC,
	[EMPRESA] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[P_PRODOPCLIST]    Script Date: 2021/03/03 11:58:06 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[P_PRODOPCLIST](
	[ID] [int] NOT NULL,
	[EMPRESA] [nvarchar](15) NOT NULL,
	[PRODUCTO] [nvarchar](15) NOT NULL,
	[CANT] [float] NULL,
	[IDRECETA] [int] NULL,
 CONSTRAINT [PK_P_PRODMENUOPCLIST] PRIMARY KEY CLUSTERED 
(
	[ID] ASC,
	[EMPRESA] ASC,
	[PRODUCTO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[P_PRODPRECIO]    Script Date: 2021/03/03 11:58:06 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[P_PRODPRECIO](
	[CODIGO_PRECIO] [int] IDENTITY(1,1) NOT NULL,
	[EMPRESA] [int] NOT NULL,
	[CODIGO_PRODUCTO] [int] NOT NULL,
	[NIVEL] [int] NOT NULL,
	[PRECIO] [float] NOT NULL,
	[UNIDADMEDIDA] [nvarchar](10) NULL,
 CONSTRAINT [PK_P_PRODPRECIO] PRIMARY KEY CLUSTERED 
(
	[CODIGO_PRECIO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[p_producto_con_imagenes]    Script Date: 2021/03/03 11:58:06 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[p_producto_con_imagenes](
	[CODIGO_PRODUCTO] [int] IDENTITY(1,1) NOT NULL,
	[CODIGO] [nvarchar](15) NOT NULL,
	[CODIGO_TIPO] [nvarchar](1) NOT NULL,
	[LINEA] [int] NOT NULL,
	[EMPRESA] [int] NOT NULL,
	[MARCA] [nvarchar](15) NOT NULL,
	[CODBARRA] [nvarchar](30) NULL,
	[DESCCORTA] [nvarchar](50) NOT NULL,
	[DESCLARGA] [nvarchar](50) NOT NULL,
	[COSTO] [float] NOT NULL,
	[FACTORCONV] [float] NOT NULL,
	[UNIDBAS] [nvarchar](15) NULL,
	[UNIDMED] [nvarchar](15) NULL,
	[UNIMEDFACT] [float] NOT NULL,
	[UNIGRA] [nvarchar](15) NULL,
	[UNIGRAFACT] [float] NOT NULL,
	[DESCUENTO] [bit] NOT NULL,
	[BONIFICACION] [bit] NOT NULL,
	[IMP1] [int] NOT NULL,
	[IMP2] [int] NOT NULL,
	[IMP3] [int] NOT NULL,
	[VENCOMP] [nvarchar](50) NULL,
	[DEVOL] [bit] NOT NULL,
	[OFRECER] [bit] NOT NULL,
	[RENTAB] [bit] NOT NULL,
	[DESCMAX] [bit] NOT NULL,
	[IVA] [nvarchar](15) NULL,
	[CODBARRA2] [nvarchar](30) NULL,
	[CBCONV] [int] NOT NULL,
	[BODEGA] [nvarchar](15) NULL,
	[SUBBODEGA] [nvarchar](15) NULL,
	[PESO_PROMEDIO] [float] NOT NULL,
	[MODIF_PRECIO] [bit] NOT NULL,
	[VIDEO] [nvarchar](max) NOT NULL,
	[VENTA_POR_PESO] [bit] NOT NULL,
	[ES_PROD_BARRA] [bit] NOT NULL,
	[UNID_INV] [nvarchar](30) NOT NULL,
	[VENTA_POR_PAQUETE] [bit] NOT NULL,
	[VENTA_POR_FACTOR_CONV] [bit] NOT NULL,
	[ES_SERIALIZADO] [bit] NOT NULL,
	[PARAM_CADUCIDAD] [int] NOT NULL,
	[PRODUCTO_PADRE] [int] NOT NULL,
	[FACTOR_PADRE] [float] NOT NULL,
	[TIENE_INV] [bit] NOT NULL,
	[TIENE_VINETA_O_TUBO] [bit] NOT NULL,
	[PRECIO_VINETA_O_TUBO] [float] NOT NULL,
	[ES_VENDIBLE] [bit] NOT NULL,
	[UNIGRASAP] [float] NOT NULL,
	[UM_SALIDA] [nvarchar](25) NOT NULL,
	[IMAGEN] [image] NULL,
	[ACTIVO] [bit] NULL,
	[TIEMPO_PREPARACION] [float] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[p_producto_sin_imagenes]    Script Date: 2021/03/03 11:58:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[p_producto_sin_imagenes](
	[CODIGO_PRODUCTO] [int] IDENTITY(1,1) NOT NULL,
	[CODIGO] [nvarchar](15) NOT NULL,
	[CODIGO_TIPO] [nvarchar](1) NOT NULL,
	[LINEA] [int] NOT NULL,
	[EMPRESA] [int] NOT NULL,
	[MARCA] [nvarchar](15) NOT NULL,
	[CODBARRA] [nvarchar](30) NULL,
	[DESCCORTA] [nvarchar](50) NOT NULL,
	[DESCLARGA] [nvarchar](50) NOT NULL,
	[COSTO] [float] NOT NULL,
	[FACTORCONV] [float] NOT NULL,
	[UNIDBAS] [nvarchar](15) NULL,
	[UNIDMED] [nvarchar](15) NULL,
	[UNIMEDFACT] [float] NOT NULL,
	[UNIGRA] [nvarchar](15) NULL,
	[UNIGRAFACT] [float] NOT NULL,
	[DESCUENTO] [bit] NOT NULL,
	[BONIFICACION] [bit] NOT NULL,
	[IMP1] [int] NOT NULL,
	[IMP2] [int] NOT NULL,
	[IMP3] [int] NOT NULL,
	[VENCOMP] [nvarchar](50) NULL,
	[DEVOL] [bit] NOT NULL,
	[OFRECER] [bit] NOT NULL,
	[RENTAB] [bit] NOT NULL,
	[DESCMAX] [bit] NOT NULL,
	[IVA] [nvarchar](15) NULL,
	[CODBARRA2] [nvarchar](30) NULL,
	[CBCONV] [int] NOT NULL,
	[BODEGA] [nvarchar](15) NULL,
	[SUBBODEGA] [nvarchar](15) NULL,
	[PESO_PROMEDIO] [float] NOT NULL,
	[MODIF_PRECIO] [bit] NOT NULL,
	[VIDEO] [nvarchar](max) NOT NULL,
	[VENTA_POR_PESO] [bit] NOT NULL,
	[ES_PROD_BARRA] [bit] NOT NULL,
	[UNID_INV] [nvarchar](30) NOT NULL,
	[VENTA_POR_PAQUETE] [bit] NOT NULL,
	[VENTA_POR_FACTOR_CONV] [bit] NOT NULL,
	[ES_SERIALIZADO] [bit] NOT NULL,
	[PARAM_CADUCIDAD] [int] NOT NULL,
	[PRODUCTO_PADRE] [int] NOT NULL,
	[FACTOR_PADRE] [float] NOT NULL,
	[TIENE_INV] [bit] NOT NULL,
	[TIENE_VINETA_O_TUBO] [bit] NOT NULL,
	[PRECIO_VINETA_O_TUBO] [float] NOT NULL,
	[ES_VENDIBLE] [bit] NOT NULL,
	[UNIGRASAP] [float] NOT NULL,
	[UM_SALIDA] [nvarchar](25) NOT NULL,
	[IMAGEN] [image] NULL,
	[ACTIVO] [bit] NULL,
	[TIEMPO_PREPARACION] [float] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[P_PRODUCTO_TIPO]    Script Date: 2021/03/03 11:58:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[P_PRODUCTO_TIPO](
	[CODIGO_TIPO_PRODUCTO] [nvarchar](1) NOT NULL,
	[NOMBRE] [nvarchar](25) NULL,
	[UTILIZA_STOCK] [bit] NULL,
 CONSTRAINT [PK_P_TIPO_PRODUCTO] PRIMARY KEY CLUSTERED 
(
	[CODIGO_TIPO_PRODUCTO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[P_REGION]    Script Date: 2021/03/03 11:58:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[P_REGION](
	[CODIGO] [nvarchar](15) NOT NULL,
	[NOMBRE] [nvarchar](50) NOT NULL,
	[COD_PAIS] [nvarchar](10) NOT NULL,
 CONSTRAINT [PK_P_AREA] PRIMARY KEY CLUSTERED 
(
	[CODIGO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[P_RES_GRUPO]    Script Date: 2021/03/03 11:58:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[P_RES_GRUPO](
	[CODIGO_GRUPO] [int] IDENTITY(1,1) NOT NULL,
	[EMPRESA] [int] NULL,
	[CODIGO_SUCURSAL] [int] NOT NULL,
	[NOMBRE] [nvarchar](50) NULL,
	[TELEFONO] [nvarchar](15) NULL,
 CONSTRAINT [PK_P_RES_GRUPO] PRIMARY KEY CLUSTERED 
(
	[CODIGO_GRUPO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[P_RES_MESA]    Script Date: 2021/03/03 11:58:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[P_RES_MESA](
	[CODIGO_MESA] [int] IDENTITY(1,1) NOT NULL,
	[EMPRESA] [int] NOT NULL,
	[CODIGO_SUCURSAL] [int] NOT NULL,
	[CODIGO_SALA] [int] NOT NULL,
	[CODIGO_GRUPO] [int] NULL,
	[NOMBRE] [nvarchar](5) NOT NULL,
	[LARGO] [float] NOT NULL,
	[ANCHO] [float] NOT NULL,
	[POSX] [float] NOT NULL,
	[POSY] [float] NOT NULL,
	[CODIGO_QR] [nvarchar](max) NULL,
 CONSTRAINT [PK_P_RES_MESA] PRIMARY KEY CLUSTERED 
(
	[CODIGO_MESA] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[P_RES_SALA]    Script Date: 2021/03/03 11:58:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[P_RES_SALA](
	[CODIGO_SALA] [int] IDENTITY(1,1) NOT NULL,
	[EMPRESA] [int] NULL,
	[CODIGO_SUCURSAL] [int] NOT NULL,
	[NOMBRE] [nvarchar](50) NOT NULL,
	[ACTIVO] [bit] NOT NULL,
	[ESCALA] [float] NOT NULL,
	[TAM_LETRA] [float] NOT NULL,
 CONSTRAINT [PK_P_RES_SALA] PRIMARY KEY CLUSTERED 
(
	[CODIGO_SALA] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[P_RES_SESION]    Script Date: 2021/03/03 11:58:09 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[P_RES_SESION](
	[EMPRESA] [int] NOT NULL,
	[ID] [nvarchar](50) NOT NULL,
	[CODIGO_MESA] [int] NULL,
	[VENDEDOR] [int] NULL,
	[ESTADO] [int] NULL,
	[CANTP] [int] NULL,
	[CANTC] [int] NULL,
	[FECHAINI] [bigint] NULL,
	[FECHAFIN] [bigint] NULL,
	[FECHAULT] [bigint] NULL,
 CONSTRAINT [PK_P_RES_SESION] PRIMARY KEY CLUSTERED 
(
	[EMPRESA] ASC,
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[P_ROL]    Script Date: 2021/03/03 11:58:09 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[P_ROL](
	[COD_ROL] [int] NOT NULL,
	[COD_SUCURSAL] [nvarchar](10) NOT NULL,
	[IDMODULO] [smallint] NOT NULL,
	[NOMBRE] [nvarchar](50) NULL,
	[DESCRIPCION] [nvarchar](200) NULL,
 CONSTRAINT [PK_P_ROL] PRIMARY KEY CLUSTERED 
(
	[COD_ROL] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[P_RUTA_IMPRESORA]    Script Date: 2021/03/03 11:58:09 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[P_RUTA_IMPRESORA](
	[CODIGO_RUTA_IMPRESORA] [int] IDENTITY(1,1) NOT NULL,
	[CODIGO_RUTA] [int] NOT NULL,
	[CODIGO_SUCURSAL] [int] NOT NULL,
	[EMPRESA] [int] NOT NULL,
	[CODIGO_IMPRESORA] [int] NOT NULL,
 CONSTRAINT [PK_P_RUTA_IMPRESORA] PRIMARY KEY CLUSTERED 
(
	[CODIGO_RUTA_IMPRESORA] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[P_STOCK]    Script Date: 2021/03/03 11:58:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[P_STOCK](
	[CODIGO_STOCK] [int] IDENTITY(1,1) NOT NULL,
	[EMPRESA] [int] NOT NULL,
	[SUCURSAL] [int] NOT NULL,
	[CODIGO_PRODUCTO] [int] NOT NULL,
	[CANT] [float] NOT NULL,
	[CANTM] [float] NOT NULL,
	[PESO] [float] NOT NULL,
	[PESOM] [float] NOT NULL,
	[LOTE] [nvarchar](20) NOT NULL,
	[FECHA_VENCE] [datetime] NULL,
	[UNIDADMEDIDA] [nvarchar](10) NOT NULL,
	[ANULADO] [bit] NOT NULL,
	[ENVIADO] [bit] NOT NULL,
	[CODIGOLIQUIDACION] [int] NOT NULL,
	[FECHA_SISTEMA] [datetime] NOT NULL,
	[DOCUMENTO] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_P_STOCK] PRIMARY KEY CLUSTERED 
(
	[CODIGO_STOCK] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[P_STOCK_UPDATE]    Script Date: 2021/03/03 11:58:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[P_STOCK_UPDATE](
	[CODIGO_STOCK] [int] IDENTITY(1,1) NOT NULL,
	[EMPRESA] [int] NULL,
	[SUCURSAL] [int] NULL,
	[RUTA] [int] NULL,
	[CODIGO_PRODUCTO] [int] NULL,
	[CANTIDAD] [float] NULL,
	[UNIDAD_MEDIDA] [nvarchar](15) NULL,
	[REFERENCIA] [nvarchar](50) NULL,
	[FECHA_TRANSACCION] [datetime] NULL,
	[FECHA_PROCESADO] [datetime] NULL,
	[PROCESADO] [bit] NULL,
 CONSTRAINT [PK_P_STOCK_UPDATE] PRIMARY KEY CLUSTERED 
(
	[CODIGO_STOCK] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[P_SUCURSAL_COBERTURA]    Script Date: 2021/03/03 11:58:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[P_SUCURSAL_COBERTURA](
	[CODIGO_SUCURSAL_COBERTURA] [int] IDENTITY(1,1) NOT NULL,
	[CODIGO_SUCURSAL] [int] NOT NULL,
	[CODIGO_DEPARTAMENTO] [int] NOT NULL,
	[CODIGO_MUNICIPIO] [int] NOT NULL,
	[ZONA] [int] NULL,
	[ACTIVO] [bit] NULL,
	[FECHA_REGISTRO] [datetime] NULL,
	[TIEMPO_AVG_ENTREGA] [time](7) NULL,
 CONSTRAINT [PK_P_SUCURSAL_COBERTURA] PRIMARY KEY CLUSTERED 
(
	[CODIGO_SUCURSAL_COBERTURA] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[P_SUCURSAL_DETALLE]    Script Date: 2021/03/03 11:58:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[P_SUCURSAL_DETALLE](
	[CODIGO_SUC_DETALLE] [int] IDENTITY(1,1) NOT NULL,
	[CODIGO_SUCURSAL] [int] NOT NULL,
	[HORARIO_ABRE] [nvarchar](50) NOT NULL,
	[HORARIO_CIERRA] [nvarchar](50) NOT NULL,
	[DIA_SEMANA] [int] NULL,
 CONSTRAINT [PK_P_SUCURSAL_DETALLE] PRIMARY KEY CLUSTERED 
(
	[CODIGO_SUC_DETALLE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[P_SUCURSAL_OBJETIVOS]    Script Date: 2021/03/03 11:58:11 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[P_SUCURSAL_OBJETIVOS](
	[CODIGO_OBJETIVO] [int] NOT NULL,
	[CODIGO_SUCURSAL] [int] NULL,
	[AÑO] [int] NULL,
	[MES] [int] NULL,
	[DIA] [int] NULL,
	[META_UNM] [float] NULL,
	[META_UNIDADES] [float] NULL,
	[META_DIARIA] [float] NULL,
	[ACUMULADO_UNM] [float] NULL,
	[ACUMULADO_UNI] [float] NULL,
 CONSTRAINT [PK_P_SUCURSAL_OBJETIVOS] PRIMARY KEY CLUSTERED 
(
	[CODIGO_OBJETIVO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[P_SUCURSAL_PARAMETROS]    Script Date: 2021/03/03 11:58:12 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[P_SUCURSAL_PARAMETROS](
	[CODIGO_PARAMETRO] [int] IDENTITY(1,1) NOT NULL,
	[CODIGO_SUCURSAL] [int] NULL,
	[CANT_EMPLEADOS] [float] NULL,
	[METROS_CUADRADOS] [float] NULL,
	[COSTO_OPERATIVO] [float] NULL,
 CONSTRAINT [PK_P_SUCURSAL_PARAMETROS] PRIMARY KEY CLUSTERED 
(
	[CODIGO_PARAMETRO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[P_USGRUPO]    Script Date: 2021/03/03 11:58:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[P_USGRUPO](
	[CODIGO] [int] NOT NULL,
	[NOMBRE] [nvarchar](50) NULL,
	[CUENTA] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_P_USERGROUP] PRIMARY KEY CLUSTERED 
(
	[CODIGO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[P_USGRUPOOPC]    Script Date: 2021/03/03 11:58:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[P_USGRUPOOPC](
	[GRUPO] [int] NOT NULL,
	[OPCION] [int] NOT NULL,
 CONSTRAINT [PK_P_GRUPOOPC] PRIMARY KEY CLUSTERED 
(
	[GRUPO] ASC,
	[OPCION] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[P_USOPCION]    Script Date: 2021/03/03 11:58:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[P_USOPCION](
	[CODIGO] [int] NOT NULL,
	[MENUGROUP] [nvarchar](25) NOT NULL,
	[NOMBRE] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_P_USEROP] PRIMARY KEY CLUSTERED 
(
	[CODIGO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[P_USUARIO]    Script Date: 2021/03/03 11:58:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[P_USUARIO](
	[CODIGO_USUARIO] [int] IDENTITY(1,1) NOT NULL,
	[COD_GRUPO] [int] NOT NULL,
	[EMPRESA] [nvarchar](3) NULL,
	[CODIGO] [nvarchar](128) NOT NULL,
	[NOMBRE] [nvarchar](50) NOT NULL,
	[SUCURSAL] [nvarchar](10) NULL,
	[CLAVE] [nvarchar](128) NULL,
	[COD_ROL] [int] NOT NULL,
	[ACTIVO] [bit] NULL,
	[FOTO] [image] NULL,
	[CORREO] [nvarchar](25) NULL,
 CONSTRAINT [PK_P_USUARIO] PRIMARY KEY CLUSTERED 
(
	[CODIGO_USUARIO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[P_USUARIO_ROL]    Script Date: 2021/03/03 11:58:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[P_USUARIO_ROL](
	[CODIGO_USUARIO] [int] NOT NULL,
	[COD_ROL] [int] NOT NULL,
 CONSTRAINT [PK_P_USUARIO_ROL] PRIMARY KEY CLUSTERED 
(
	[CODIGO_USUARIO] ASC,
	[COD_ROL] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[P_VERSION_LOG]    Script Date: 2021/03/03 11:58:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[P_VERSION_LOG](
	[CODIGO_VERSION] [nvarchar](10) NOT NULL,
	[FECHA] [datetime] NULL,
	[DESCRIPCION] [nvarchar](max) NULL,
 CONSTRAINT [PK_VERSION] PRIMARY KEY CLUSTERED 
(
	[CODIGO_VERSION] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[P_ZONA]    Script Date: 2021/03/03 11:58:15 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[P_ZONA](
	[CODIGO_ZONA] [int] IDENTITY(1,1) NOT NULL,
	[EMPRESA] [int] NULL,
	[ZONA] [nvarchar](50) NULL,
	[SUCURSAL] [int] NULL,
 CONSTRAINT [PK_ZONA] PRIMARY KEY CLUSTERED 
(
	[CODIGO_ZONA] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Roles]    Script Date: 2021/03/03 11:58:15 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Roles](
	[RoleId] [int] IDENTITY(1,1) NOT NULL,
	[RoleName] [nvarchar](25) NULL,
 CONSTRAINT [PK_Roles] PRIMARY KEY CLUSTERED 
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SiteContent]    Script Date: 2021/03/03 11:58:15 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SiteContent](
	[SiteContentID] [uniqueidentifier] NOT NULL,
	[FileName] [nvarchar](200) NOT NULL,
	[Path] [nvarchar](200) NULL,
	[ContentType] [nvarchar](150) NULL,
	[Length] [int] NULL,
	[Data] [varbinary](max) NULL,
	[Text] [nvarchar](max) NULL,
	[Roles] [nvarchar](200) NULL,
	[RoleExceptions] [nvarchar](200) NULL,
	[Users] [nvarchar](200) NULL,
	[UserExceptions] [nvarchar](200) NULL,
	[Schedule] [nvarchar](200) NULL,
	[ScheduleExceptions] [nvarchar](200) NULL,
	[CacheProfile] [nvarchar](50) NULL,
	[CreatedDate] [datetime] NULL,
	[ModifiedDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[SiteContentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[T_ORDEN]    Script Date: 2021/03/03 11:58:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_ORDEN](
	[ID] [int] NOT NULL,
	[COREL] [nvarchar](50) NOT NULL,
	[PRODUCTO] [nvarchar](50) NULL,
	[EMPRESA] [int] NOT NULL,
	[UM] [nvarchar](50) NULL,
	[CANT] [float] NULL,
	[UMSTOCK] [nvarchar](50) NULL,
	[FACTOR] [float] NULL,
	[PRECIO] [float] NULL,
	[IMP] [float] NULL,
	[DES] [float] NULL,
	[DESMON] [float] NULL,
	[TOTAL] [float] NULL,
	[PRECIODOC] [float] NULL,
	[PESO] [float] NULL,
	[VAL1] [float] NULL,
	[VAL2] [nvarchar](50) NULL,
	[VAL3] [float] NULL,
	[VAL4] [nvarchar](50) NULL,
	[PERCEP] [float] NULL,
	[CUENTA] [int] NULL,
	[ESTADO] [int] NULL,
 CONSTRAINT [PK_T_ORDEN_1] PRIMARY KEY CLUSTERED 
(
	[ID] ASC,
	[COREL] ASC,
	[EMPRESA] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[T_ORDENCUENTA]    Script Date: 2021/03/03 11:58:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_ORDENCUENTA](
	[COREL] [nvarchar](50) NOT NULL,
	[ID] [int] NOT NULL,
	[EMPRESA] [int] NOT NULL,
	[CF] [int] NULL,
	[NOMBRE] [nvarchar](50) NULL,
	[NIT] [nvarchar](30) NULL,
	[DIRECCION] [nvarchar](200) NULL,
	[CORREO] [nvarchar](50) NULL,
 CONSTRAINT [PK_T_ORDENCUENTA] PRIMARY KEY CLUSTERED 
(
	[COREL] ASC,
	[ID] ASC,
	[EMPRESA] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tmp_P_PRODUCTO]    Script Date: 2021/03/03 11:58:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tmp_P_PRODUCTO](
	[CODIGO_PRODUCTO] [int] NOT NULL,
	[CODIGO] [nvarchar](15) NOT NULL,
	[EMPRESA] [nvarchar](15) NOT NULL,
	[MARCA] [nvarchar](15) NOT NULL,
	[LINEA] [nvarchar](15) NOT NULL,
	[SUBLINEA] [nvarchar](15) NULL,
	[TIPO] [nvarchar](1) NOT NULL,
	[CODBARRA] [nvarchar](30) NULL,
	[DESCCORTA] [nvarchar](50) NOT NULL,
	[DESCLARGA] [nvarchar](50) NOT NULL,
	[COSTO] [float] NOT NULL,
	[FACTORCONV] [float] NOT NULL,
	[UNIDBAS] [nvarchar](15) NULL,
	[UNIDMED] [nvarchar](15) NULL,
	[UNIMEDFACT] [float] NOT NULL,
	[UNIGRA] [nvarchar](15) NULL,
	[UNIGRAFACT] [float] NOT NULL,
	[DESCUENTO] [nvarchar](1) NULL,
	[BONIFICACION] [nvarchar](1) NULL,
	[IMP1] [float] NOT NULL,
	[IMP2] [float] NOT NULL,
	[IMP3] [float] NOT NULL,
	[VENCOMP] [nvarchar](50) NULL,
	[DEVOL] [nvarchar](1) NULL,
	[OFRECER] [nvarchar](1) NULL,
	[RENTAB] [nvarchar](1) NULL,
	[DESCMAX] [nvarchar](1) NULL,
	[IVA] [nvarchar](15) NULL,
	[CODBARRA2] [nvarchar](30) NULL,
	[CBCONV] [int] NOT NULL,
	[BODEGA] [nvarchar](15) NULL,
	[SUBBODEGA] [nvarchar](15) NULL,
	[PESO_PROMEDIO] [float] NOT NULL,
	[MODIF_PRECIO] [bit] NOT NULL,
	[IMAGEN] [nvarchar](max) NOT NULL,
	[VIDEO] [nvarchar](max) NOT NULL,
	[VENTA_POR_PESO] [bit] NOT NULL,
	[ES_PROD_BARRA] [bit] NOT NULL,
	[UNID_INV] [nvarchar](30) NOT NULL,
	[VENTA_POR_PAQUETE] [bit] NOT NULL,
	[VENTA_POR_FACTOR_CONV] [bit] NOT NULL,
	[ES_SERIALIZADO] [bit] NOT NULL,
	[PARAM_CADUCIDAD] [int] NOT NULL,
	[PRODUCTO_PADRE] [nvarchar](15) NOT NULL,
	[FACTOR_PADRE] [float] NOT NULL,
	[TIENE_INV] [bit] NOT NULL,
	[TIENE_VINETA_O_TUBO] [bit] NOT NULL,
	[PRECIO_VINETA_O_TUBO] [float] NOT NULL,
	[ES_VENDIBLE] [bit] NOT NULL,
	[UNIGRASAP] [float] NOT NULL,
	[UM_SALIDA] [nvarchar](25) NOT NULL,
	[activo] [int] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_users]    Script Date: 2021/03/03 11:58:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_users](
	[UserId] [int] IDENTITY(1,1) NOT NULL,
	[Empresa] [int] NULL,
	[UserName] [nvarchar](128) NULL,
	[Password] [nvarchar](128) NULL,
	[Email] [nvarchar](128) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_users1]    Script Date: 2021/03/03 11:58:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_users1](
	[UserId] [int] IDENTITY(1,1) NOT NULL,
	[Empresa] [int] NULL,
	[UserName] [nvarchar](128) NULL,
	[Password] [nvarchar](128) NULL,
	[Email] [nvarchar](128) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserRoles]    Script Date: 2021/03/03 11:58:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserRoles](
	[UserId] [int] NOT NULL,
	[RoleId] [int] NOT NULL,
 CONSTRAINT [PK_UserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 2021/03/03 11:58:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[UserId] [int] IDENTITY(1,1) NOT NULL,
	[Empresa] [int] NULL,
	[UserName] [nvarchar](128) NULL,
	[Password] [nvarchar](128) NULL,
	[Email] [nvarchar](128) NULL,
	[Password_reportes] [nvarchar](128) NULL,
	[IdNivelLicencia] [int] NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [aspnet_Users_Index2]    Script Date: 2021/03/03 11:58:18 AM ******/
CREATE NONCLUSTERED INDEX [aspnet_Users_Index2] ON [dbo].[aspnet_Users]
(
	[ApplicationId] ASC,
	[LastActivityDate] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [aspnet_UsersInRoles_index]    Script Date: 2021/03/03 11:58:18 AM ******/
CREATE NONCLUSTERED INDEX [aspnet_UsersInRoles_index] ON [dbo].[aspnet_UsersInRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_D_FACTURA]    Script Date: 2021/03/03 11:58:18 AM ******/
CREATE NONCLUSTERED INDEX [IX_D_FACTURA] ON [dbo].[D_FACTURA]
(
	[EMPRESA] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_D_FACTURA_1]    Script Date: 2021/03/03 11:58:18 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_D_FACTURA_1] ON [dbo].[D_FACTURA]
(
	[EMPRESA] ASC,
	[COREL] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_D_FACTURA_AF_KM20210106]    Script Date: 2021/03/03 11:58:18 AM ******/
CREATE NONCLUSTERED INDEX [IX_D_FACTURA_AF_KM20210106] ON [dbo].[D_FACTURA]
(
	[ANULADO] ASC,
	[FECHA] ASC
)
INCLUDE ( 	[RUTA],
	[TOTAL]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_D_FACTURA_ARF_KM20210106]    Script Date: 2021/03/03 11:58:18 AM ******/
CREATE NONCLUSTERED INDEX [IX_D_FACTURA_ARF_KM20210106] ON [dbo].[D_FACTURA]
(
	[ANULADO] ASC,
	[RUTA] ASC,
	[FECHA] ASC
)
INCLUDE ( 	[TOTAL]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [idx_d_factura_cpc_km_20210106]    Script Date: 2021/03/03 11:58:18 AM ******/
CREATE NONCLUSTERED INDEX [idx_d_factura_cpc_km_20210106] ON [dbo].[D_FACTURAD]
(
	[ANULADO] ASC
)
INCLUDE ( 	[COREL],
	[PRODUCTO],
	[CANT],
	[TOTAL]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [idx_d_factura_d_1]    Script Date: 2021/03/03 11:58:18 AM ******/
CREATE NONCLUSTERED INDEX [idx_d_factura_d_1] ON [dbo].[D_FACTURAD]
(
	[ANULADO] ASC
)
INCLUDE ( 	[COREL],
	[PRODUCTO],
	[CANT],
	[IMP],
	[TOTAL]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [idx_d_facturad_2]    Script Date: 2021/03/03 11:58:18 AM ******/
CREATE NONCLUSTERED INDEX [idx_d_facturad_2] ON [dbo].[D_FACTURAD]
(
	[COREL] ASC,
	[ANULADO] ASC
)
INCLUDE ( 	[PRODUCTO],
	[CANT],
	[IMP],
	[TOTAL]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [NCLI_D_FACTURAP_20210223_EJC]    Script Date: 2021/03/03 11:58:18 AM ******/
CREATE NONCLUSTERED INDEX [NCLI_D_FACTURAP_20210223_EJC] ON [dbo].[D_FACTURAP]
(
	[CODPAGO] ASC
)
INCLUDE ( 	[TIPO],
	[VALOR]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_D_FEL_BITACORA]    Script Date: 2021/03/03 11:58:18 AM ******/
CREATE NONCLUSTERED INDEX [IX_D_FEL_BITACORA] ON [dbo].[D_FEL_BITACORA]
(
	[EMPRESA] ASC,
	[CODIGO_SUCURSAL] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_D_MOVD]    Script Date: 2021/03/03 11:58:18 AM ******/
CREATE NONCLUSTERED INDEX [IX_D_MOVD] ON [dbo].[D_MOVD]
(
	[COREL] ASC,
	[PRODUCTO] ASC,
	[LOTE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_D_ORDEN_BITACORA]    Script Date: 2021/03/03 11:58:18 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_D_ORDEN_BITACORA] ON [dbo].[D_ORDEN_BITACORA]
(
	[EMPRESA] ASC,
	[FECHA] ASC,
	[CODIGO_SUCURSAL] ASC,
	[CODIGO_VENDEDOR] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_D_PEDIDO_BITACORA]    Script Date: 2021/03/03 11:58:18 AM ******/
CREATE NONCLUSTERED INDEX [IX_D_PEDIDO_BITACORA] ON [dbo].[D_ORDEN_BITACORA]
(
	[EMPRESA] ASC,
	[CODIGO_SUCURSAL] ASC,
	[CODIGO_VENDEDOR] ASC,
	[FECHA] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_D_USUARIO_ASISTENCIA]    Script Date: 2021/03/03 11:58:18 AM ******/
CREATE NONCLUSTERED INDEX [IX_D_USUARIO_ASISTENCIA] ON [dbo].[D_USUARIO_ASISTENCIA]
(
	[EMPRESA] ASC,
	[CODIGO_SUCURSAL] ASC,
	[CODIGO_VENDEDOR] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_D_USUARIO_ASISTENCIA_1]    Script Date: 2021/03/03 11:58:18 AM ******/
CREATE NONCLUSTERED INDEX [IX_D_USUARIO_ASISTENCIA_1] ON [dbo].[D_USUARIO_ASISTENCIA]
(
	[BANDERA] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_P_COREL]    Script Date: 2021/03/03 11:58:18 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_P_COREL] ON [dbo].[P_COREL]
(
	[RESOL] ASC,
	[SERIE] ASC,
	[CORELINI] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_P_ESTACION]    Script Date: 2021/03/03 11:58:18 AM ******/
CREATE NONCLUSTERED INDEX [IX_P_ESTACION] ON [dbo].[P_ESTACION]
(
	[CODIGO_SUCURSAL] ASC,
	[EMPRESA] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_P_LINEA_ESTACION]    Script Date: 2021/03/03 11:58:18 AM ******/
CREATE NONCLUSTERED INDEX [IX_P_LINEA_ESTACION] ON [dbo].[P_LINEA_IMPRESORA]
(
	[CODIGO_LINEA] ASC,
	[CODIGO_SUCURSAL] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_P_LINEA_ESTACION_1]    Script Date: 2021/03/03 11:58:18 AM ******/
CREATE NONCLUSTERED INDEX [IX_P_LINEA_ESTACION_1] ON [dbo].[P_LINEA_IMPRESORA]
(
	[EMPRESA] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_P_PRODPRECIO]    Script Date: 2021/03/03 11:58:18 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_P_PRODPRECIO] ON [dbo].[P_PRODPRECIO]
(
	[CODIGO_PRECIO] ASC,
	[EMPRESA] ASC,
	[UNIDADMEDIDA] ASC,
	[NIVEL] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_P_PRODUCTO]    Script Date: 2021/03/03 11:58:18 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_P_PRODUCTO] ON [dbo].[P_PRODUCTO]
(
	[CODIGO] ASC,
	[EMPRESA] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_P_RUTA]    Script Date: 2021/03/03 11:58:18 AM ******/
CREATE NONCLUSTERED INDEX [IX_P_RUTA] ON [dbo].[P_RUTA]
(
	[EMPRESA] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_SiteContent_FileName]    Script Date: 2021/03/03 11:58:18 AM ******/
CREATE NONCLUSTERED INDEX [IX_SiteContent_FileName] ON [dbo].[SiteContent]
(
	[FileName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_SiteContent_ModifiedDate]    Script Date: 2021/03/03 11:58:18 AM ******/
CREATE NONCLUSTERED INDEX [IX_SiteContent_ModifiedDate] ON [dbo].[SiteContent]
(
	[ModifiedDate] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_SiteContent_Path]    Script Date: 2021/03/03 11:58:18 AM ******/
CREATE NONCLUSTERED INDEX [IX_SiteContent_Path] ON [dbo].[SiteContent]
(
	[Path] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[aspnet_Applications] ADD  DEFAULT (newid()) FOR [ApplicationId]
GO
ALTER TABLE [dbo].[aspnet_Membership] ADD  DEFAULT ((0)) FOR [PasswordFormat]
GO
ALTER TABLE [dbo].[aspnet_Roles] ADD  DEFAULT (newid()) FOR [RoleId]
GO
ALTER TABLE [dbo].[aspnet_Users] ADD  DEFAULT (newid()) FOR [UserId]
GO
ALTER TABLE [dbo].[aspnet_Users] ADD  DEFAULT (NULL) FOR [MobileAlias]
GO
ALTER TABLE [dbo].[aspnet_Users] ADD  DEFAULT ((0)) FOR [IsAnonymous]
GO
ALTER TABLE [dbo].[D_BONIF] ADD  CONSTRAINT [DF__D_BONIF__STATCOM__7167D3BD]  DEFAULT ('N') FOR [STATCOM]
GO
ALTER TABLE [dbo].[D_BONIF] ADD  CONSTRAINT [DF__D_BONIF__UMVENTA__725BF7F6]  DEFAULT ('') FOR [UMVENTA]
GO
ALTER TABLE [dbo].[D_BONIF] ADD  CONSTRAINT [DF__D_BONIF__FACTOR__73501C2F]  DEFAULT ((0)) FOR [FACTOR]
GO
ALTER TABLE [dbo].[D_DEPOS] ADD  DEFAULT ((0)) FOR [CODIGOLIQUIDACION]
GO
ALTER TABLE [dbo].[D_FACTURA] ADD  CONSTRAINT [DF__D_FACTURA__REFER__084B3915]  DEFAULT ('') FOR [REFERENCIA]
GO
ALTER TABLE [dbo].[D_FACTURA] ADD  CONSTRAINT [DF__D_FACTURA__ASIGN__093F5D4E]  DEFAULT ('') FOR [ASIGNACION]
GO
ALTER TABLE [dbo].[D_FACTURA] ADD  CONSTRAINT [DF__D_FACTURA__SUPER__0A338187]  DEFAULT ('') FOR [SUPERVISOR]
GO
ALTER TABLE [dbo].[D_FACTURA] ADD  CONSTRAINT [DF__D_FACTURA__AYUDA__0B27A5C0]  DEFAULT ('') FOR [AYUDANTE]
GO
ALTER TABLE [dbo].[D_FACTURA] ADD  CONSTRAINT [DF__D_FACTURA__VEHIC__0C1BC9F9]  DEFAULT ('') FOR [VEHICULO]
GO
ALTER TABLE [dbo].[D_FACTURA] ADD  CONSTRAINT [DF__D_FACTURA__CODIG__0D0FEE32]  DEFAULT ((0)) FOR [CODIGOLIQUIDACION]
GO
ALTER TABLE [dbo].[D_MOV] ADD  DEFAULT ((0)) FOR [CODIGOLIQUIDACION]
GO
ALTER TABLE [dbo].[D_MOVD] ADD  CONSTRAINT [DF_D_MOVD_LOTE]  DEFAULT ('') FOR [LOTE]
GO
ALTER TABLE [dbo].[D_MOVD] ADD  DEFAULT ((0)) FOR [CODIGOLIQUIDACION]
GO
ALTER TABLE [dbo].[D_MOVD] ADD  DEFAULT ('') FOR [UNIDADMEDIDA]
GO
ALTER TABLE [dbo].[D_MOVD] ADD  CONSTRAINT [DF_D_MOVD_MOTIVO_AJUSTE]  DEFAULT ((0)) FOR [MOTIVO_AJUSTE]
GO
ALTER TABLE [dbo].[D_ORDEN_BITACORA] ADD  CONSTRAINT [DF_D_ORDEN_BITACORA_CANT_ORDENES]  DEFAULT ((0)) FOR [CANT_ORDENES]
GO
ALTER TABLE [dbo].[D_ORDEN_BITACORA] ADD  CONSTRAINT [DF_D_ORDEN_BITACORA_CANT_RETRASADOS]  DEFAULT ((0)) FOR [CANT_RETRASADOS]
GO
ALTER TABLE [dbo].[D_ORDEN_BITACORA] ADD  CONSTRAINT [DF_D_ORDEN_BITACORA_TPPO]  DEFAULT ((0)) FOR [TPPO]
GO
ALTER TABLE [dbo].[D_ORDEN_BITACORA] ADD  CONSTRAINT [DF_D_ORDEN_BITACORA_EFICIENCIA]  DEFAULT ((0)) FOR [EFICIENCIA]
GO
ALTER TABLE [dbo].[P_ARCHIVOCONF] ADD  CONSTRAINT [DF__P_ARCHIVO__LBS_O__4EDDB18F]  DEFAULT ('KGS') FOR [LBS_O_KGS]
GO
ALTER TABLE [dbo].[P_ARCHIVOCONF] ADD  CONSTRAINT [DF_P_ARCHIVOCONF_NOTA_CREDITO]  DEFAULT ((0)) FOR [NOTA_CREDITO]
GO
ALTER TABLE [dbo].[P_BANCO] ADD  CONSTRAINT [DF_P_BANCO_EMPRESA]  DEFAULT ('03') FOR [EMPRESA]
GO
ALTER TABLE [dbo].[P_BANCO] ADD  CONSTRAINT [DF_P_BANCO_CUENTA]  DEFAULT ('') FOR [CUENTA]
GO
ALTER TABLE [dbo].[P_BANCO] ADD  CONSTRAINT [DF_P_BANCO_activo]  DEFAULT ((1)) FOR [ACTIVO]
GO
ALTER TABLE [dbo].[P_BONIF] ADD  CONSTRAINT [DF_P_BONIF_PTIPO]  DEFAULT ((0)) FOR [PTIPO]
GO
ALTER TABLE [dbo].[P_BONIF] ADD  CONSTRAINT [DF_P_BONIF_TIPORUTA]  DEFAULT ((2)) FOR [TIPORUTA]
GO
ALTER TABLE [dbo].[P_BONIF] ADD  CONSTRAINT [DF_P_BONIF_TIPOBON]  DEFAULT (N'M') FOR [TIPOBON]
GO
ALTER TABLE [dbo].[P_BONIF] ADD  CONSTRAINT [DF_P_BONIF_TIPOLISTA]  DEFAULT ((0)) FOR [TIPOLISTA]
GO
ALTER TABLE [dbo].[P_BONIF] ADD  CONSTRAINT [DF_P_BONIF_TIPOCANT]  DEFAULT (N'U') FOR [TIPOCANT]
GO
ALTER TABLE [dbo].[P_BONIF] ADD  CONSTRAINT [DF_P_BONIF_CANTEXACT]  DEFAULT (N'S') FOR [CANTEXACT]
GO
ALTER TABLE [dbo].[P_BONIF] ADD  CONSTRAINT [DF_P_BONIF_GLOBBON]  DEFAULT (N'N') FOR [GLOBBON]
GO
ALTER TABLE [dbo].[P_BONIF] ADD  CONSTRAINT [DF_P_BONIF_PORCANT]  DEFAULT (N'S') FOR [PORCANT]
GO
ALTER TABLE [dbo].[P_BONIF] ADD  CONSTRAINT [DF_P_BONIF_NOMBRE]  DEFAULT ('') FOR [NOMBRE]
GO
ALTER TABLE [dbo].[P_BONIF] ADD  CONSTRAINT [DF__P_BONIF__EMP__1447C6FD]  DEFAULT ('03') FOR [EMP]
GO
ALTER TABLE [dbo].[P_BONIF] ADD  CONSTRAINT [DF_P_BONIF_UMPRODUCTO]  DEFAULT ('') FOR [UMPRODUCTO]
GO
ALTER TABLE [dbo].[P_BONIF] ADD  CONSTRAINT [DF_P_BONIF_UMBONIFICACION]  DEFAULT ('') FOR [UMBONIFICACION]
GO
ALTER TABLE [dbo].[P_CLIENTE] ADD  CONSTRAINT [DF_P_CLIENTE_NOMBRE]  DEFAULT ('') FOR [NOMBRE]
GO
ALTER TABLE [dbo].[P_CLIENTE] ADD  CONSTRAINT [DF_P_CLIENTE_ULTVISITA]  DEFAULT (NULL) FOR [ULTVISITA]
GO
ALTER TABLE [dbo].[P_CLIENTE] ADD  CONSTRAINT [DF_P_CLIENTE_IMPSPEC]  DEFAULT ((0)) FOR [IMPSPEC]
GO
ALTER TABLE [dbo].[P_CLIENTE] ADD  CONSTRAINT [DF_P_CLIENTE_NIT]  DEFAULT ('') FOR [NIT]
GO
ALTER TABLE [dbo].[P_CLIENTE] ADD  CONSTRAINT [DF_P_CLIENTE_EMAIL]  DEFAULT ('') FOR [EMAIL]
GO
ALTER TABLE [dbo].[P_CLIENTE] ADD  CONSTRAINT [DF_P_CLIENTE_ESERVICE]  DEFAULT ('N') FOR [ESERVICE]
GO
ALTER TABLE [dbo].[P_CLIENTE] ADD  CONSTRAINT [DF_P_CLIENTE_TELEFONO]  DEFAULT ('') FOR [TELEFONO]
GO
ALTER TABLE [dbo].[P_CLIENTE] ADD  CONSTRAINT [DF_P_CLIENTE_COORX]  DEFAULT ((0)) FOR [COORX]
GO
ALTER TABLE [dbo].[P_CLIENTE] ADD  CONSTRAINT [DF_P_CLIENTE_COORY]  DEFAULT ((0)) FOR [COORY]
GO
ALTER TABLE [dbo].[P_CLIENTE] ADD  CONSTRAINT [DF_P_CLIENTE_BODEGA]  DEFAULT ('') FOR [BODEGA]
GO
ALTER TABLE [dbo].[P_CLIENTE] ADD  CONSTRAINT [DF__P_CLIENTE__PERCE__181857E1]  DEFAULT ((0)) FOR [PERCEPCION]
GO
ALTER TABLE [dbo].[P_CLIENTE] ADD  CONSTRAINT [DF__P_CLIENTE__TIPO___190C7C1A]  DEFAULT ('') FOR [TIPO_CONTRIBUYENTE]
GO
ALTER TABLE [dbo].[P_CONCEPTOPAGO] ADD  DEFAULT ((1)) FOR [ACTIVO]
GO
ALTER TABLE [dbo].[P_DESCUENTO] ADD  CONSTRAINT [DF__P_DESCUENTO__EMP__33F4B129]  DEFAULT ('') FOR [EMPRESA]
GO
ALTER TABLE [dbo].[P_DESCUENTO] ADD  CONSTRAINT [DF_P_DESCUENTO_ACTIVO]  DEFAULT ((1)) FOR [ACTIVO]
GO
ALTER TABLE [dbo].[P_ENCABEZADO_REPORTESHH] ADD  CONSTRAINT [DF_P_ENCABEZADO_REPORTESHH_TEXTO]  DEFAULT ('') FOR [TEXTO]
GO
ALTER TABLE [dbo].[P_ESTACION] ADD  CONSTRAINT [DF_P_ESTACION_CODIGO_IMPRESORA]  DEFAULT ((0)) FOR [CODIGO_IMPRESORA]
GO
ALTER TABLE [dbo].[P_IMPRESORA] ADD  CONSTRAINT [DF_P_IMPRESORA_NOMBRE]  DEFAULT ('') FOR [NOMBRE]
GO
ALTER TABLE [dbo].[P_IMPRESORA] ADD  CONSTRAINT [DF_P_IMPRESORA_MAC]  DEFAULT ('') FOR [MAC]
GO
ALTER TABLE [dbo].[P_IMPRESORA] ADD  CONSTRAINT [DF_P_IMPRESORA_IP]  DEFAULT ('') FOR [IP]
GO
ALTER TABLE [dbo].[P_IMPRESORA] ADD  CONSTRAINT [DF_P_IMPRESORA_FECHA_AGR]  DEFAULT (getdate()) FOR [FECHA_AGR]
GO
ALTER TABLE [dbo].[P_IMPRESORA] ADD  CONSTRAINT [DF_P_IMPRESORA_IMPRESIONES]  DEFAULT ((1)) FOR [IMPRESIONES]
GO
ALTER TABLE [dbo].[P_IMPRESORA] ADD  CONSTRAINT [DF_P_IMPRESORA_ACTIVO]  DEFAULT ((1)) FOR [ACTIVO]
GO
ALTER TABLE [dbo].[P_IMPUESTO] ADD  CONSTRAINT [DF_P_IMPUESTO_activo]  DEFAULT ((1)) FOR [ACTIVO]
GO
ALTER TABLE [dbo].[P_LINEA] ADD  CONSTRAINT [DF_P_LINEA_MARCA]  DEFAULT ('TOLEDANO') FOR [MARCA]
GO
ALTER TABLE [dbo].[P_LINEA] ADD  CONSTRAINT [DF_P_LINEA_Activo]  DEFAULT ((1)) FOR [ACTIVO]
GO
ALTER TABLE [dbo].[P_MENUOPCION_ROL] ADD  CONSTRAINT [DF_P_MENUOPCION_ROL_ACTIVO]  DEFAULT ((1)) FOR [ACTIVO]
GO
ALTER TABLE [dbo].[P_MENUROL] ADD  CONSTRAINT [DF_P_MENUROL_IDMODULO]  DEFAULT ((1)) FOR [IDMODULO]
GO
ALTER TABLE [dbo].[P_MENUSISTEMA] ADD  CONSTRAINT [DF_P_MENUSISTEMA_IDMODULO]  DEFAULT ((1)) FOR [IDMODULO]
GO
ALTER TABLE [dbo].[P_MODULOS_ROL] ADD  CONSTRAINT [DF_P_MODULOS_ROL_ACTIVO]  DEFAULT ((1)) FOR [ACTIVO]
GO
ALTER TABLE [dbo].[P_PARAMEXT] ADD  CONSTRAINT [DF_P_PARAMEXT_IDRUTA]  DEFAULT ('') FOR [IDRUTA]
GO
ALTER TABLE [dbo].[P_PARAMEXT] ADD  CONSTRAINT [DF_P_PARAMEXT_Nombre]  DEFAULT ('') FOR [NOMBRE]
GO
ALTER TABLE [dbo].[P_PARAMEXT] ADD  CONSTRAINT [DF_P_PARAMEXT_Valor]  DEFAULT ('') FOR [VALOR]
GO
ALTER TABLE [dbo].[P_PRODOPCLIST] ADD  CONSTRAINT [DF_P_PRODMENUOPCLIST_CANT]  DEFAULT ((1)) FOR [CANT]
GO
ALTER TABLE [dbo].[P_PRODOPCLIST] ADD  CONSTRAINT [DF_P_PRODMENUOPCLIST_IDRECETA]  DEFAULT ((0)) FOR [IDRECETA]
GO
ALTER TABLE [dbo].[P_PRODPRECIO] ADD  CONSTRAINT [DF__P_PRODPRE__UNIDA__05F8DC4F]  DEFAULT ('') FOR [UNIDADMEDIDA]
GO
ALTER TABLE [dbo].[P_RES_GRUPO] ADD  CONSTRAINT [DF_P_RES_GRUPO_TELEFONO]  DEFAULT ('') FOR [TELEFONO]
GO
ALTER TABLE [dbo].[P_RES_MESA] ADD  CONSTRAINT [DF_P_RES_MESA_LARGO]  DEFAULT ((1)) FOR [LARGO]
GO
ALTER TABLE [dbo].[P_RES_MESA] ADD  CONSTRAINT [DF_P_RES_MESA_ANCHO]  DEFAULT ((1)) FOR [ANCHO]
GO
ALTER TABLE [dbo].[P_RES_MESA] ADD  CONSTRAINT [DF_P_RES_MESA_POSX]  DEFAULT ((0)) FOR [POSX]
GO
ALTER TABLE [dbo].[P_RES_MESA] ADD  CONSTRAINT [DF_P_RES_MESA_POSY]  DEFAULT ((0)) FOR [POSY]
GO
ALTER TABLE [dbo].[P_RES_SALA] ADD  CONSTRAINT [DF_P_RES_SALA_ACTIVO]  DEFAULT ((1)) FOR [ACTIVO]
GO
ALTER TABLE [dbo].[P_RES_SALA] ADD  CONSTRAINT [DF_P_RES_SALA_ESCALA]  DEFAULT ((1)) FOR [ESCALA]
GO
ALTER TABLE [dbo].[P_RES_SALA] ADD  CONSTRAINT [DF_P_RES_SALA_TAM_LETRA]  DEFAULT ((14)) FOR [TAM_LETRA]
GO
ALTER TABLE [dbo].[P_ROL] ADD  CONSTRAINT [DF_P_ROL_IDMODULO]  DEFAULT ((1)) FOR [IDMODULO]
GO
ALTER TABLE [dbo].[P_RUTA] ADD  CONSTRAINT [DF_P_RUTA_SUCURSAL]  DEFAULT ('1') FOR [SUCURSAL]
GO
ALTER TABLE [dbo].[P_STOCK] ADD  CONSTRAINT [DF_P_STOCK_FECHA_SISTEMA]  DEFAULT (getdate()) FOR [FECHA_SISTEMA]
GO
ALTER TABLE [dbo].[P_SUCURSAL] ADD  CONSTRAINT [DF_P_SUCURSAL_ACTIVO]  DEFAULT ((1)) FOR [ACTIVO]
GO
ALTER TABLE [dbo].[P_SUCURSAL] ADD  CONSTRAINT [DF_P_SUCURSAL_PUNTOGEOGRAFICO]  DEFAULT (NULL) FOR [PUNTOGEOGRAFICO]
GO
ALTER TABLE [dbo].[P_SUCURSAL_COBERTURA] ADD  CONSTRAINT [DF_P_SUCURSAL_COBERTURA_FECHA_REGISTRO]  DEFAULT (getdate()) FOR [FECHA_REGISTRO]
GO
ALTER TABLE [dbo].[P_USGRUPO] ADD  CONSTRAINT [DF__P_USGRUPO__CUENT__44B528D7]  DEFAULT ('') FOR [CUENTA]
GO
ALTER TABLE [dbo].[P_USUARIO] ADD  CONSTRAINT [DF_P_USUARIO_COD_GRUPO]  DEFAULT ('adm') FOR [COD_GRUPO]
GO
ALTER TABLE [dbo].[P_USUARIO] ADD  CONSTRAINT [DF__P_USUARIO__COD_R__469D7149]  DEFAULT ((1)) FOR [COD_ROL]
GO
ALTER TABLE [dbo].[P_USUARIO] ADD  CONSTRAINT [DF_P_USUARIO_activo]  DEFAULT ((1)) FOR [ACTIVO]
GO
ALTER TABLE [dbo].[P_VERSION_LOG] ADD  CONSTRAINT [DF_VERSION_FECHA]  DEFAULT (getdate()) FOR [FECHA]
GO
ALTER TABLE [dbo].[P_VERSION_LOG] ADD  CONSTRAINT [DF_VERSION_DESCRIPCION]  DEFAULT ('') FOR [DESCRIPCION]
GO
ALTER TABLE [dbo].[SiteContent] ADD  DEFAULT (newid()) FOR [SiteContentID]
GO
ALTER TABLE [dbo].[SiteContent] ADD  DEFAULT ('text/plain') FOR [ContentType]
GO
ALTER TABLE [dbo].[Tmp_P_PRODUCTO] ADD  CONSTRAINT [DF_P_PRODUCTO_MARCA]  DEFAULT ('1') FOR [MARCA]
GO
ALTER TABLE [dbo].[Tmp_P_PRODUCTO] ADD  CONSTRAINT [DF_P_PRODUCTO_SUBLINEA]  DEFAULT ('1') FOR [SUBLINEA]
GO
ALTER TABLE [dbo].[Tmp_P_PRODUCTO] ADD  CONSTRAINT [DF_P_PRODUCTO_CODBARRA]  DEFAULT ('') FOR [CODBARRA]
GO
ALTER TABLE [dbo].[Tmp_P_PRODUCTO] ADD  CONSTRAINT [DF_P_PRODUCTO_COSTO]  DEFAULT ((0)) FOR [COSTO]
GO
ALTER TABLE [dbo].[Tmp_P_PRODUCTO] ADD  CONSTRAINT [DF_P_PRODUCTO_FACTORCONV]  DEFAULT ((1)) FOR [FACTORCONV]
GO
ALTER TABLE [dbo].[Tmp_P_PRODUCTO] ADD  CONSTRAINT [DF_P_PRODUCTO_UNIDBAS]  DEFAULT ('UNI') FOR [UNIDBAS]
GO
ALTER TABLE [dbo].[Tmp_P_PRODUCTO] ADD  CONSTRAINT [DF_P_PRODUCTO_IMP1]  DEFAULT ((0)) FOR [IMP1]
GO
ALTER TABLE [dbo].[Tmp_P_PRODUCTO] ADD  CONSTRAINT [DF_P_PRODUCTO_IMP2]  DEFAULT ((0)) FOR [IMP2]
GO
ALTER TABLE [dbo].[Tmp_P_PRODUCTO] ADD  CONSTRAINT [DF_P_PRODUCTO_IMP3]  DEFAULT ((0)) FOR [IMP3]
GO
ALTER TABLE [dbo].[Tmp_P_PRODUCTO] ADD  CONSTRAINT [DF_P_PRODUCTO_VENCOMP]  DEFAULT ('') FOR [VENCOMP]
GO
ALTER TABLE [dbo].[Tmp_P_PRODUCTO] ADD  CONSTRAINT [DF_P_PRODUCTO_DEVOL]  DEFAULT ('N') FOR [DEVOL]
GO
ALTER TABLE [dbo].[Tmp_P_PRODUCTO] ADD  CONSTRAINT [DF_P_PRODUCTO_OFRECER]  DEFAULT ('N') FOR [OFRECER]
GO
ALTER TABLE [dbo].[Tmp_P_PRODUCTO] ADD  CONSTRAINT [DF_P_PRODUCTO_RENTAB]  DEFAULT ('N') FOR [RENTAB]
GO
ALTER TABLE [dbo].[Tmp_P_PRODUCTO] ADD  CONSTRAINT [DF_P_PRODUCTO_DESCMAX]  DEFAULT ('N') FOR [DESCMAX]
GO
ALTER TABLE [dbo].[Tmp_P_PRODUCTO] ADD  CONSTRAINT [DF_P_PRODUCTO_IVA]  DEFAULT ('IVA') FOR [IVA]
GO
ALTER TABLE [dbo].[Tmp_P_PRODUCTO] ADD  CONSTRAINT [DF_P_PRODUCTO_CODBARRA2]  DEFAULT ('') FOR [CODBARRA2]
GO
ALTER TABLE [dbo].[Tmp_P_PRODUCTO] ADD  CONSTRAINT [DF_P_PRODUCTO_CBCONV]  DEFAULT ((0)) FOR [CBCONV]
GO
ALTER TABLE [dbo].[Tmp_P_PRODUCTO] ADD  CONSTRAINT [DF_P_PRODUCTO_BODEGA]  DEFAULT ('') FOR [BODEGA]
GO
ALTER TABLE [dbo].[Tmp_P_PRODUCTO] ADD  CONSTRAINT [DF_P_PRODUCTO_SUBBODEGA]  DEFAULT ('') FOR [SUBBODEGA]
GO
ALTER TABLE [dbo].[Tmp_P_PRODUCTO] ADD  CONSTRAINT [DF__P_PRODUCT__PESO___153B1FDF]  DEFAULT ((1)) FOR [PESO_PROMEDIO]
GO
ALTER TABLE [dbo].[Tmp_P_PRODUCTO] ADD  CONSTRAINT [DF__P_PRODUCT__MODIF__162F4418]  DEFAULT ((0)) FOR [MODIF_PRECIO]
GO
ALTER TABLE [dbo].[Tmp_P_PRODUCTO] ADD  CONSTRAINT [DF__P_PRODUCT__IMAGE__17236851]  DEFAULT ('') FOR [IMAGEN]
GO
ALTER TABLE [dbo].[Tmp_P_PRODUCTO] ADD  CONSTRAINT [DF__P_PRODUCT__VIDEO__18178C8A]  DEFAULT ('') FOR [VIDEO]
GO
ALTER TABLE [dbo].[Tmp_P_PRODUCTO] ADD  CONSTRAINT [DF__P_PRODUCT__VENTA__190BB0C3]  DEFAULT ((0)) FOR [VENTA_POR_PESO]
GO
ALTER TABLE [dbo].[Tmp_P_PRODUCTO] ADD  CONSTRAINT [DF__P_PRODUCT__ES_PR__19FFD4FC]  DEFAULT ((0)) FOR [ES_PROD_BARRA]
GO
ALTER TABLE [dbo].[Tmp_P_PRODUCTO] ADD  CONSTRAINT [DF__P_PRODUCT__UNID___1AF3F935]  DEFAULT ('UNI') FOR [UNID_INV]
GO
ALTER TABLE [dbo].[Tmp_P_PRODUCTO] ADD  CONSTRAINT [DF__P_PRODUCT__VENTA__1BE81D6E]  DEFAULT ((0)) FOR [VENTA_POR_PAQUETE]
GO
ALTER TABLE [dbo].[Tmp_P_PRODUCTO] ADD  CONSTRAINT [DF__P_PRODUCT__VENTA__1CDC41A7]  DEFAULT ((0)) FOR [VENTA_POR_FACTOR_CONV]
GO
ALTER TABLE [dbo].[Tmp_P_PRODUCTO] ADD  CONSTRAINT [DF__P_PRODUCT__ES_SE__1DD065E0]  DEFAULT ((0)) FOR [ES_SERIALIZADO]
GO
ALTER TABLE [dbo].[Tmp_P_PRODUCTO] ADD  CONSTRAINT [DF__P_PRODUCT__PARAM__1EC48A19]  DEFAULT ((0)) FOR [PARAM_CADUCIDAD]
GO
ALTER TABLE [dbo].[Tmp_P_PRODUCTO] ADD  CONSTRAINT [DF__P_PRODUCT__PRODU__1FB8AE52]  DEFAULT ('') FOR [PRODUCTO_PADRE]
GO
ALTER TABLE [dbo].[Tmp_P_PRODUCTO] ADD  CONSTRAINT [DF__P_PRODUCT__FACTO__20ACD28B]  DEFAULT ((0)) FOR [FACTOR_PADRE]
GO
ALTER TABLE [dbo].[Tmp_P_PRODUCTO] ADD  CONSTRAINT [DF__P_PRODUCT__TIENE__21A0F6C4]  DEFAULT ((0)) FOR [TIENE_INV]
GO
ALTER TABLE [dbo].[Tmp_P_PRODUCTO] ADD  CONSTRAINT [DF__P_PRODUCT__TIENE__22951AFD]  DEFAULT ((0)) FOR [TIENE_VINETA_O_TUBO]
GO
ALTER TABLE [dbo].[Tmp_P_PRODUCTO] ADD  CONSTRAINT [DF__P_PRODUCT__PRECI__23893F36]  DEFAULT ((0)) FOR [PRECIO_VINETA_O_TUBO]
GO
ALTER TABLE [dbo].[Tmp_P_PRODUCTO] ADD  CONSTRAINT [DF__P_PRODUCT__ES_VE__247D636F]  DEFAULT ((1)) FOR [ES_VENDIBLE]
GO
ALTER TABLE [dbo].[Tmp_P_PRODUCTO] ADD  CONSTRAINT [DF_P_PRODUCTO_UNIGRASAP]  DEFAULT ((0)) FOR [UNIGRASAP]
GO
ALTER TABLE [dbo].[Tmp_P_PRODUCTO] ADD  CONSTRAINT [DF__P_PRODUCT__UM_SA__2665ABE1]  DEFAULT ('UNI') FOR [UM_SALIDA]
GO
ALTER TABLE [dbo].[Tmp_P_PRODUCTO] ADD  CONSTRAINT [DF_P_PRODUCTO_activo]  DEFAULT ((1)) FOR [activo]
GO
ALTER TABLE [dbo].[VENDEDORES] ADD  CONSTRAINT [DF_VENDEDORES_NIVELPRECIO]  DEFAULT ((2)) FOR [NIVELPRECIO]
GO
ALTER TABLE [dbo].[VENDEDORES] ADD  CONSTRAINT [DF_VENDEDORES_BODEGA]  DEFAULT ('0') FOR [BODEGA]
GO
ALTER TABLE [dbo].[VENDEDORES] ADD  CONSTRAINT [DF_VENDEDORES_SUBBODEGA]  DEFAULT ('0') FOR [SUBBODEGA]
GO
ALTER TABLE [dbo].[VENDEDORES] ADD  CONSTRAINT [DF_VENDEDORES_activo]  DEFAULT ((1)) FOR [ACTIVO]
GO
ALTER TABLE [dbo].[aspnet_Membership]  WITH CHECK ADD FOREIGN KEY([ApplicationId])
REFERENCES [dbo].[aspnet_Applications] ([ApplicationId])
GO
ALTER TABLE [dbo].[aspnet_Membership]  WITH CHECK ADD FOREIGN KEY([UserId])
REFERENCES [dbo].[aspnet_Users] ([UserId])
GO
ALTER TABLE [dbo].[aspnet_Roles]  WITH CHECK ADD FOREIGN KEY([ApplicationId])
REFERENCES [dbo].[aspnet_Applications] ([ApplicationId])
GO
ALTER TABLE [dbo].[aspnet_Users]  WITH CHECK ADD FOREIGN KEY([ApplicationId])
REFERENCES [dbo].[aspnet_Applications] ([ApplicationId])
GO
ALTER TABLE [dbo].[aspnet_UsersInRoles]  WITH CHECK ADD FOREIGN KEY([RoleId])
REFERENCES [dbo].[aspnet_Roles] ([RoleId])
GO
ALTER TABLE [dbo].[aspnet_UsersInRoles]  WITH CHECK ADD FOREIGN KEY([UserId])
REFERENCES [dbo].[aspnet_Users] ([UserId])
GO
ALTER TABLE [dbo].[D_BONIF]  WITH CHECK ADD  CONSTRAINT [FK_D_BONIF_D_FACTURA] FOREIGN KEY([COREL], [EMPRESA])
REFERENCES [dbo].[D_FACTURA] ([COREL], [EMPRESA])
GO
ALTER TABLE [dbo].[D_BONIF] CHECK CONSTRAINT [FK_D_BONIF_D_FACTURA]
GO
ALTER TABLE [dbo].[D_DEPOSD]  WITH NOCHECK ADD  CONSTRAINT [FK_D_DEPOSD_D_DEPOS] FOREIGN KEY([COREL])
REFERENCES [dbo].[D_DEPOS] ([COREL])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[D_DEPOSD] CHECK CONSTRAINT [FK_D_DEPOSD_D_DEPOS]
GO
ALTER TABLE [dbo].[D_FACTURA]  WITH CHECK ADD  CONSTRAINT [FK_D_FACTURA_D_FACTURA] FOREIGN KEY([COREL], [EMPRESA])
REFERENCES [dbo].[D_FACTURA] ([COREL], [EMPRESA])
GO
ALTER TABLE [dbo].[D_FACTURA] CHECK CONSTRAINT [FK_D_FACTURA_D_FACTURA]
GO
ALTER TABLE [dbo].[D_FACTURA]  WITH NOCHECK ADD  CONSTRAINT [FK_D_FACTURA_P_EMPRESA] FOREIGN KEY([EMPRESA])
REFERENCES [dbo].[P_EMPRESA] ([EMPRESA])
GO
ALTER TABLE [dbo].[D_FACTURA] CHECK CONSTRAINT [FK_D_FACTURA_P_EMPRESA]
GO
ALTER TABLE [dbo].[D_FACTURA]  WITH CHECK ADD  CONSTRAINT [FK_D_FACTURA_VENDEDORES] FOREIGN KEY([VENDEDOR])
REFERENCES [dbo].[VENDEDORES] ([CODIGO_VENDEDOR])
GO
ALTER TABLE [dbo].[D_FACTURA] CHECK CONSTRAINT [FK_D_FACTURA_VENDEDORES]
GO
ALTER TABLE [dbo].[D_FACTURAD]  WITH CHECK ADD  CONSTRAINT [FK_D_FACTURAD_D_FACTURA1] FOREIGN KEY([COREL], [EMPRESA])
REFERENCES [dbo].[D_FACTURA] ([COREL], [EMPRESA])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[D_FACTURAD] CHECK CONSTRAINT [FK_D_FACTURAD_D_FACTURA1]
GO
ALTER TABLE [dbo].[D_FACTURAD]  WITH CHECK ADD  CONSTRAINT [FK_D_FACTURAD_P_PRODUCTO] FOREIGN KEY([PRODUCTO])
REFERENCES [dbo].[P_PRODUCTO] ([CODIGO_PRODUCTO])
GO
ALTER TABLE [dbo].[D_FACTURAD] CHECK CONSTRAINT [FK_D_FACTURAD_P_PRODUCTO]
GO
ALTER TABLE [dbo].[D_FACTURAPR]  WITH CHECK ADD  CONSTRAINT [FK_D_FACTURAPR_D_FACTURA] FOREIGN KEY([EMPRESA], [COREL])
REFERENCES [dbo].[D_FACTURA] ([EMPRESA], [COREL])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[D_FACTURAPR] CHECK CONSTRAINT [FK_D_FACTURAPR_D_FACTURA]
GO
ALTER TABLE [dbo].[D_FACTURAPR]  WITH CHECK ADD  CONSTRAINT [FK_D_FACTURAPR_P_EMPRESA] FOREIGN KEY([EMPRESA])
REFERENCES [dbo].[P_EMPRESA] ([EMPRESA])
GO
ALTER TABLE [dbo].[D_FACTURAPR] CHECK CONSTRAINT [FK_D_FACTURAPR_P_EMPRESA]
GO
ALTER TABLE [dbo].[D_FACTURAPR]  WITH CHECK ADD  CONSTRAINT [FK_D_FACTURAPR_P_SUCURSAL] FOREIGN KEY([CODIGO_SUCURSAL])
REFERENCES [dbo].[P_SUCURSAL] ([CODIGO_SUCURSAL])
GO
ALTER TABLE [dbo].[D_FACTURAPR] CHECK CONSTRAINT [FK_D_FACTURAPR_P_SUCURSAL]
GO
ALTER TABLE [dbo].[D_FACTURAPR]  WITH CHECK ADD  CONSTRAINT [FK_D_FACTURAPR_VENDEDORES] FOREIGN KEY([CODIGO_VENDEDOR])
REFERENCES [dbo].[VENDEDORES] ([CODIGO_VENDEDOR])
GO
ALTER TABLE [dbo].[D_FACTURAPR] CHECK CONSTRAINT [FK_D_FACTURAPR_VENDEDORES]
GO
ALTER TABLE [dbo].[D_FEL_BITACORA]  WITH CHECK ADD  CONSTRAINT [FK_D_FEL_BITACORA_P_EMPRESA] FOREIGN KEY([EMPRESA])
REFERENCES [dbo].[P_EMPRESA] ([EMPRESA])
GO
ALTER TABLE [dbo].[D_FEL_BITACORA] CHECK CONSTRAINT [FK_D_FEL_BITACORA_P_EMPRESA]
GO
ALTER TABLE [dbo].[D_FEL_BITACORA]  WITH CHECK ADD  CONSTRAINT [FK_D_FEL_BITACORA_P_RUTA] FOREIGN KEY([CODIGO_RUTA])
REFERENCES [dbo].[P_RUTA] ([CODIGO_RUTA])
GO
ALTER TABLE [dbo].[D_FEL_BITACORA] CHECK CONSTRAINT [FK_D_FEL_BITACORA_P_RUTA]
GO
ALTER TABLE [dbo].[D_FEL_BITACORA]  WITH CHECK ADD  CONSTRAINT [FK_D_FEL_BITACORA_P_SUCURSAL] FOREIGN KEY([CODIGO_SUCURSAL])
REFERENCES [dbo].[P_SUCURSAL] ([CODIGO_SUCURSAL])
GO
ALTER TABLE [dbo].[D_FEL_BITACORA] CHECK CONSTRAINT [FK_D_FEL_BITACORA_P_SUCURSAL]
GO
ALTER TABLE [dbo].[D_FEL_BITACORA]  WITH CHECK ADD  CONSTRAINT [FK_D_FEL_BITACORA_VENDEDORES] FOREIGN KEY([CODIGO_VENDEDOR])
REFERENCES [dbo].[VENDEDORES] ([CODIGO_VENDEDOR])
GO
ALTER TABLE [dbo].[D_FEL_BITACORA] CHECK CONSTRAINT [FK_D_FEL_BITACORA_VENDEDORES]
GO
ALTER TABLE [dbo].[D_MOV]  WITH CHECK ADD  CONSTRAINT [FK_D_MOV_P_PROVEEDOR] FOREIGN KEY([CODIGO_PROVEEDOR])
REFERENCES [dbo].[P_PROVEEDOR] ([CODIGO_PROVEEDOR])
GO
ALTER TABLE [dbo].[D_MOV] CHECK CONSTRAINT [FK_D_MOV_P_PROVEEDOR]
GO
ALTER TABLE [dbo].[D_MOV]  WITH CHECK ADD  CONSTRAINT [FK_D_MOV_P_RUTA] FOREIGN KEY([RUTA])
REFERENCES [dbo].[P_RUTA] ([CODIGO_RUTA])
GO
ALTER TABLE [dbo].[D_MOV] CHECK CONSTRAINT [FK_D_MOV_P_RUTA]
GO
ALTER TABLE [dbo].[D_MOV]  WITH CHECK ADD  CONSTRAINT [FK_D_MOV_VENDEDORES] FOREIGN KEY([USUARIO])
REFERENCES [dbo].[VENDEDORES] ([CODIGO_VENDEDOR])
GO
ALTER TABLE [dbo].[D_MOV] CHECK CONSTRAINT [FK_D_MOV_VENDEDORES]
GO
ALTER TABLE [dbo].[D_MOVD]  WITH CHECK ADD  CONSTRAINT [FK_D_MOVD_P_PRODUCTO] FOREIGN KEY([PRODUCTO])
REFERENCES [dbo].[P_PRODUCTO] ([CODIGO_PRODUCTO])
GO
ALTER TABLE [dbo].[D_MOVD] CHECK CONSTRAINT [FK_D_MOVD_P_PRODUCTO]
GO
ALTER TABLE [dbo].[D_ORDEN_BITACORA]  WITH CHECK ADD  CONSTRAINT [FK_D_PEDIDO_BITACORA_P_EMPRESA] FOREIGN KEY([EMPRESA])
REFERENCES [dbo].[P_EMPRESA] ([EMPRESA])
GO
ALTER TABLE [dbo].[D_ORDEN_BITACORA] CHECK CONSTRAINT [FK_D_PEDIDO_BITACORA_P_EMPRESA]
GO
ALTER TABLE [dbo].[D_ORDEN_BITACORA]  WITH CHECK ADD  CONSTRAINT [FK_D_PEDIDO_BITACORA_P_SUCURSAL] FOREIGN KEY([CODIGO_SUCURSAL])
REFERENCES [dbo].[P_SUCURSAL] ([CODIGO_SUCURSAL])
GO
ALTER TABLE [dbo].[D_ORDEN_BITACORA] CHECK CONSTRAINT [FK_D_PEDIDO_BITACORA_P_SUCURSAL]
GO
ALTER TABLE [dbo].[D_ORDEN_BITACORA]  WITH CHECK ADD  CONSTRAINT [FK_D_PEDIDO_BITACORA_VENDEDORES] FOREIGN KEY([CODIGO_VENDEDOR])
REFERENCES [dbo].[VENDEDORES] ([CODIGO_VENDEDOR])
GO
ALTER TABLE [dbo].[D_ORDEN_BITACORA] CHECK CONSTRAINT [FK_D_PEDIDO_BITACORA_VENDEDORES]
GO
ALTER TABLE [dbo].[D_PEDIDO]  WITH CHECK ADD  CONSTRAINT [FK_D_PEDIDO_P_EMPRESA] FOREIGN KEY([EMPRESA])
REFERENCES [dbo].[P_EMPRESA] ([EMPRESA])
GO
ALTER TABLE [dbo].[D_PEDIDO] CHECK CONSTRAINT [FK_D_PEDIDO_P_EMPRESA]
GO
ALTER TABLE [dbo].[D_PEDIDO]  WITH CHECK ADD  CONSTRAINT [FK_D_PEDIDO_P_ESTADO_PEDIDO] FOREIGN KEY([CODIGO_ESTADO])
REFERENCES [dbo].[P_ESTADO_PEDIDO] ([CODIGO_ESTADO])
GO
ALTER TABLE [dbo].[D_PEDIDO] CHECK CONSTRAINT [FK_D_PEDIDO_P_ESTADO_PEDIDO]
GO
ALTER TABLE [dbo].[D_PEDIDO]  WITH CHECK ADD  CONSTRAINT [FK_D_PEDIDO_P_SUCURSAL] FOREIGN KEY([CODIGO_SUCURSAL])
REFERENCES [dbo].[P_SUCURSAL] ([CODIGO_SUCURSAL])
GO
ALTER TABLE [dbo].[D_PEDIDO] CHECK CONSTRAINT [FK_D_PEDIDO_P_SUCURSAL]
GO
ALTER TABLE [dbo].[D_PEDIDOCOMBO]  WITH CHECK ADD  CONSTRAINT [FK_D_PEDIDOCOMBO_D_PEDIDOD] FOREIGN KEY([COREL_DET])
REFERENCES [dbo].[D_PEDIDOD] ([COREL_DET])
GO
ALTER TABLE [dbo].[D_PEDIDOCOMBO] CHECK CONSTRAINT [FK_D_PEDIDOCOMBO_D_PEDIDOD]
GO
ALTER TABLE [dbo].[D_PEDIDOCOMBO]  WITH CHECK ADD  CONSTRAINT [FK_D_PEDIDOCOMBO_P_PRODMENUOPC] FOREIGN KEY([SELECCION])
REFERENCES [dbo].[P_PRODMENUOPC] ([CODIGO_MENU_OPCION])
GO
ALTER TABLE [dbo].[D_PEDIDOCOMBO] CHECK CONSTRAINT [FK_D_PEDIDOCOMBO_P_PRODMENUOPC]
GO
ALTER TABLE [dbo].[D_PEDIDOCOMBO]  WITH CHECK ADD  CONSTRAINT [FK_D_PEDIDOCOMBO_P_PRODUCTO] FOREIGN KEY([CODIGO_PRODUCTO])
REFERENCES [dbo].[P_PRODUCTO] ([CODIGO_PRODUCTO])
GO
ALTER TABLE [dbo].[D_PEDIDOCOMBO] CHECK CONSTRAINT [FK_D_PEDIDOCOMBO_P_PRODUCTO]
GO
ALTER TABLE [dbo].[D_PEDIDOD]  WITH CHECK ADD  CONSTRAINT [FK_D_PEDIDOD_P_PRODUCTO] FOREIGN KEY([CODIGO_PRODUCTO])
REFERENCES [dbo].[P_PRODUCTO] ([CODIGO_PRODUCTO])
GO
ALTER TABLE [dbo].[D_PEDIDOD] CHECK CONSTRAINT [FK_D_PEDIDOD_P_PRODUCTO]
GO
ALTER TABLE [dbo].[D_PEDIDOD]  WITH CHECK ADD  CONSTRAINT [FK_D_PEDIDOD_P_PRODUCTO_TIPO] FOREIGN KEY([CODIGO_TIPO_PRODUCTO])
REFERENCES [dbo].[P_PRODUCTO_TIPO] ([CODIGO_TIPO_PRODUCTO])
GO
ALTER TABLE [dbo].[D_PEDIDOD] CHECK CONSTRAINT [FK_D_PEDIDOD_P_PRODUCTO_TIPO]
GO
ALTER TABLE [dbo].[D_PEDIDOMESA]  WITH CHECK ADD  CONSTRAINT [FK_D_PEDIDOMESA_P_CLIENTE] FOREIGN KEY([CODIGO_CLIENTE])
REFERENCES [dbo].[P_CLIENTE] ([CODIGO_CLIENTE])
GO
ALTER TABLE [dbo].[D_PEDIDOMESA] CHECK CONSTRAINT [FK_D_PEDIDOMESA_P_CLIENTE]
GO
ALTER TABLE [dbo].[D_PEDIDOMESA]  WITH CHECK ADD  CONSTRAINT [FK_D_PEDIDOMESA_P_CLIENTE_DIR] FOREIGN KEY([CODIGO_DIRECCION])
REFERENCES [dbo].[P_CLIENTE_DIR] ([CODIGO_DIRECCION])
GO
ALTER TABLE [dbo].[D_PEDIDOMESA] CHECK CONSTRAINT [FK_D_PEDIDOMESA_P_CLIENTE_DIR]
GO
ALTER TABLE [dbo].[D_PEDIDOMESA]  WITH CHECK ADD  CONSTRAINT [FK_D_PEDIDOMESA_P_EMPRESA] FOREIGN KEY([EMPRESA])
REFERENCES [dbo].[P_EMPRESA] ([EMPRESA])
GO
ALTER TABLE [dbo].[D_PEDIDOMESA] CHECK CONSTRAINT [FK_D_PEDIDOMESA_P_EMPRESA]
GO
ALTER TABLE [dbo].[D_PEDIDOR]  WITH CHECK ADD  CONSTRAINT [FK_D_PEDIDOR_P_EMPRESA] FOREIGN KEY([EMPRESA])
REFERENCES [dbo].[P_EMPRESA] ([EMPRESA])
GO
ALTER TABLE [dbo].[D_PEDIDOR] CHECK CONSTRAINT [FK_D_PEDIDOR_P_EMPRESA]
GO
ALTER TABLE [dbo].[D_PEDIDOR]  WITH CHECK ADD  CONSTRAINT [FK_D_PEDIDOR_P_RES_MESA] FOREIGN KEY([CODIGO_MESA])
REFERENCES [dbo].[P_RES_MESA] ([CODIGO_MESA])
GO
ALTER TABLE [dbo].[D_PEDIDOR] CHECK CONSTRAINT [FK_D_PEDIDOR_P_RES_MESA]
GO
ALTER TABLE [dbo].[D_PEDIDOR]  WITH CHECK ADD  CONSTRAINT [FK_D_PEDIDOR_P_SUCURSAL] FOREIGN KEY([CODIGO_SUCURSAL])
REFERENCES [dbo].[P_SUCURSAL] ([CODIGO_SUCURSAL])
GO
ALTER TABLE [dbo].[D_PEDIDOR] CHECK CONSTRAINT [FK_D_PEDIDOR_P_SUCURSAL]
GO
ALTER TABLE [dbo].[D_USUARIO_ASISTENCIA]  WITH CHECK ADD  CONSTRAINT [FK_D_USUARIO_ASISTENCIA_P_EMPRESA] FOREIGN KEY([EMPRESA])
REFERENCES [dbo].[P_EMPRESA] ([EMPRESA])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[D_USUARIO_ASISTENCIA] CHECK CONSTRAINT [FK_D_USUARIO_ASISTENCIA_P_EMPRESA]
GO
ALTER TABLE [dbo].[D_USUARIO_ASISTENCIA]  WITH CHECK ADD  CONSTRAINT [FK_D_USUARIO_ASISTENCIA_P_SUCURSAL] FOREIGN KEY([CODIGO_SUCURSAL])
REFERENCES [dbo].[P_SUCURSAL] ([CODIGO_SUCURSAL])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[D_USUARIO_ASISTENCIA] CHECK CONSTRAINT [FK_D_USUARIO_ASISTENCIA_P_SUCURSAL]
GO
ALTER TABLE [dbo].[P_ARCHIVOCONF]  WITH CHECK ADD  CONSTRAINT [FK_P_ARCHIVOCONF_P_EMPRESA] FOREIGN KEY([EMPRESA])
REFERENCES [dbo].[P_EMPRESA] ([EMPRESA])
GO
ALTER TABLE [dbo].[P_ARCHIVOCONF] CHECK CONSTRAINT [FK_P_ARCHIVOCONF_P_EMPRESA]
GO
ALTER TABLE [dbo].[P_ARCHIVOCONF]  WITH CHECK ADD  CONSTRAINT [FK_P_ARCHIVOCONF_P_RUTA] FOREIGN KEY([RUTA])
REFERENCES [dbo].[P_RUTA] ([CODIGO_RUTA])
GO
ALTER TABLE [dbo].[P_ARCHIVOCONF] CHECK CONSTRAINT [FK_P_ARCHIVOCONF_P_RUTA]
GO
ALTER TABLE [dbo].[P_AUSENCIAS_VENDEDOR]  WITH CHECK ADD  CONSTRAINT [FK_P_AUSENCIAS_VENDEDOR_P_MOTIVO_AUSENCIA] FOREIGN KEY([CODIGO_MOTIVO])
REFERENCES [dbo].[P_MOTIVO_AUSENCIA] ([CODIGO])
GO
ALTER TABLE [dbo].[P_AUSENCIAS_VENDEDOR] CHECK CONSTRAINT [FK_P_AUSENCIAS_VENDEDOR_P_MOTIVO_AUSENCIA]
GO
ALTER TABLE [dbo].[P_AUSENCIAS_VENDEDOR]  WITH CHECK ADD  CONSTRAINT [FK_P_AUSENCIAS_VENDEDOR_P_SUCURSAL] FOREIGN KEY([CODIGO_SUCURSAL])
REFERENCES [dbo].[P_SUCURSAL] ([CODIGO_SUCURSAL])
GO
ALTER TABLE [dbo].[P_AUSENCIAS_VENDEDOR] CHECK CONSTRAINT [FK_P_AUSENCIAS_VENDEDOR_P_SUCURSAL]
GO
ALTER TABLE [dbo].[P_AUSENCIAS_VENDEDOR]  WITH CHECK ADD  CONSTRAINT [FK_P_AUSENCIAS_VENDEDOR_VENDEDORES] FOREIGN KEY([CODIGO_VENDEDOR])
REFERENCES [dbo].[VENDEDORES] ([CODIGO_VENDEDOR])
GO
ALTER TABLE [dbo].[P_AUSENCIAS_VENDEDOR] CHECK CONSTRAINT [FK_P_AUSENCIAS_VENDEDOR_VENDEDORES]
GO
ALTER TABLE [dbo].[P_BANCO]  WITH CHECK ADD  CONSTRAINT [FK_P_BANCO_P_EMPRESA] FOREIGN KEY([EMPRESA])
REFERENCES [dbo].[P_EMPRESA] ([EMPRESA])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[P_BANCO] CHECK CONSTRAINT [FK_P_BANCO_P_EMPRESA]
GO
ALTER TABLE [dbo].[P_BONIF]  WITH CHECK ADD  CONSTRAINT [FK_P_BONIF_P_EMPRESA] FOREIGN KEY([EMP])
REFERENCES [dbo].[P_EMPRESA] ([EMPRESA])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[P_BONIF] CHECK CONSTRAINT [FK_P_BONIF_P_EMPRESA]
GO
ALTER TABLE [dbo].[P_CAJA_IMPRESORA]  WITH CHECK ADD  CONSTRAINT [FK_P_CAJA_IMPRESORA_P_EMPRESA] FOREIGN KEY([EMPRESA])
REFERENCES [dbo].[P_EMPRESA] ([EMPRESA])
GO
ALTER TABLE [dbo].[P_CAJA_IMPRESORA] CHECK CONSTRAINT [FK_P_CAJA_IMPRESORA_P_EMPRESA]
GO
ALTER TABLE [dbo].[P_CAJA_IMPRESORA]  WITH CHECK ADD  CONSTRAINT [FK_P_CAJA_IMPRESORA_P_IMPRESORA] FOREIGN KEY([CODIGO_IMPRESORA])
REFERENCES [dbo].[P_IMPRESORA] ([CODIGO_IMPRESORA])
GO
ALTER TABLE [dbo].[P_CAJA_IMPRESORA] CHECK CONSTRAINT [FK_P_CAJA_IMPRESORA_P_IMPRESORA]
GO
ALTER TABLE [dbo].[P_CAJA_IMPRESORA]  WITH CHECK ADD  CONSTRAINT [FK_P_CAJA_IMPRESORA_P_RUTA] FOREIGN KEY([CODIGO_CAJA])
REFERENCES [dbo].[P_RUTA] ([CODIGO_RUTA])
GO
ALTER TABLE [dbo].[P_CAJA_IMPRESORA] CHECK CONSTRAINT [FK_P_CAJA_IMPRESORA_P_RUTA]
GO
ALTER TABLE [dbo].[P_CAJA_IMPRESORA]  WITH CHECK ADD  CONSTRAINT [FK_P_CAJA_IMPRESORA_P_SUCURSAL] FOREIGN KEY([CODIGO_SUCURSAL])
REFERENCES [dbo].[P_SUCURSAL] ([CODIGO_SUCURSAL])
GO
ALTER TABLE [dbo].[P_CAJA_IMPRESORA] CHECK CONSTRAINT [FK_P_CAJA_IMPRESORA_P_SUCURSAL]
GO
ALTER TABLE [dbo].[P_CAJACIERRE]  WITH CHECK ADD  CONSTRAINT [FK_P_CAJACIERRE_P_EMPRESA] FOREIGN KEY([EMPRESA])
REFERENCES [dbo].[P_EMPRESA] ([EMPRESA])
GO
ALTER TABLE [dbo].[P_CAJACIERRE] CHECK CONSTRAINT [FK_P_CAJACIERRE_P_EMPRESA]
GO
ALTER TABLE [dbo].[P_CAJACIERRE]  WITH CHECK ADD  CONSTRAINT [FK_P_CAJACIERRE_P_RUTA] FOREIGN KEY([RUTA])
REFERENCES [dbo].[P_RUTA] ([CODIGO_RUTA])
GO
ALTER TABLE [dbo].[P_CAJACIERRE] CHECK CONSTRAINT [FK_P_CAJACIERRE_P_RUTA]
GO
ALTER TABLE [dbo].[P_CAJACIERRE]  WITH CHECK ADD  CONSTRAINT [FK_P_CAJACIERRE_P_SUCURSAL] FOREIGN KEY([SUCURSAL])
REFERENCES [dbo].[P_SUCURSAL] ([CODIGO_SUCURSAL])
GO
ALTER TABLE [dbo].[P_CAJACIERRE] CHECK CONSTRAINT [FK_P_CAJACIERRE_P_SUCURSAL]
GO
ALTER TABLE [dbo].[P_CAJACIERRE]  WITH CHECK ADD  CONSTRAINT [FK_P_CAJACIERRE_VENDEDORES] FOREIGN KEY([VENDEDOR])
REFERENCES [dbo].[VENDEDORES] ([CODIGO_VENDEDOR])
GO
ALTER TABLE [dbo].[P_CAJACIERRE] CHECK CONSTRAINT [FK_P_CAJACIERRE_VENDEDORES]
GO
ALTER TABLE [dbo].[P_CAJAPAGOS]  WITH CHECK ADD  CONSTRAINT [FK_P_CAJAPAGOS_P_EMPRESA] FOREIGN KEY([EMPRESA])
REFERENCES [dbo].[P_EMPRESA] ([EMPRESA])
GO
ALTER TABLE [dbo].[P_CAJAPAGOS] CHECK CONSTRAINT [FK_P_CAJAPAGOS_P_EMPRESA]
GO
ALTER TABLE [dbo].[P_CAJAPAGOS]  WITH CHECK ADD  CONSTRAINT [FK_P_CAJAPAGOS_P_RUTA] FOREIGN KEY([RUTA])
REFERENCES [dbo].[P_RUTA] ([CODIGO_RUTA])
GO
ALTER TABLE [dbo].[P_CAJAPAGOS] CHECK CONSTRAINT [FK_P_CAJAPAGOS_P_RUTA]
GO
ALTER TABLE [dbo].[P_CAJAPAGOS]  WITH CHECK ADD  CONSTRAINT [FK_P_CAJAPAGOS_P_SUCURSAL] FOREIGN KEY([SUCURSAL])
REFERENCES [dbo].[P_SUCURSAL] ([CODIGO_SUCURSAL])
GO
ALTER TABLE [dbo].[P_CAJAPAGOS] CHECK CONSTRAINT [FK_P_CAJAPAGOS_P_SUCURSAL]
GO
ALTER TABLE [dbo].[P_CAJAPAGOS]  WITH CHECK ADD  CONSTRAINT [FK_P_CAJAPAGOS_VENDEDORES] FOREIGN KEY([VENDEDOR])
REFERENCES [dbo].[VENDEDORES] ([CODIGO_VENDEDOR])
GO
ALTER TABLE [dbo].[P_CAJAPAGOS] CHECK CONSTRAINT [FK_P_CAJAPAGOS_VENDEDORES]
GO
ALTER TABLE [dbo].[P_CAJAREPORTE]  WITH CHECK ADD  CONSTRAINT [FK_P_CAJAREPORTE_P_EMPRESA] FOREIGN KEY([EMPRESA])
REFERENCES [dbo].[P_EMPRESA] ([EMPRESA])
GO
ALTER TABLE [dbo].[P_CAJAREPORTE] CHECK CONSTRAINT [FK_P_CAJAREPORTE_P_EMPRESA]
GO
ALTER TABLE [dbo].[P_CAJAREPORTE]  WITH CHECK ADD  CONSTRAINT [FK_P_CAJAREPORTE_P_RUTA] FOREIGN KEY([RUTA])
REFERENCES [dbo].[P_RUTA] ([CODIGO_RUTA])
GO
ALTER TABLE [dbo].[P_CAJAREPORTE] CHECK CONSTRAINT [FK_P_CAJAREPORTE_P_RUTA]
GO
ALTER TABLE [dbo].[P_CAJAREPORTE]  WITH CHECK ADD  CONSTRAINT [FK_P_CAJAREPORTE_P_SUCURSAL] FOREIGN KEY([SUCURSAL])
REFERENCES [dbo].[P_SUCURSAL] ([CODIGO_SUCURSAL])
GO
ALTER TABLE [dbo].[P_CAJAREPORTE] CHECK CONSTRAINT [FK_P_CAJAREPORTE_P_SUCURSAL]
GO
ALTER TABLE [dbo].[P_CLIENTE]  WITH CHECK ADD  CONSTRAINT [FK_P_CLIENTE_P_EMPRESA] FOREIGN KEY([EMPRESA])
REFERENCES [dbo].[P_EMPRESA] ([EMPRESA])
GO
ALTER TABLE [dbo].[P_CLIENTE] CHECK CONSTRAINT [FK_P_CLIENTE_P_EMPRESA]
GO
ALTER TABLE [dbo].[P_CLIENTE]  WITH CHECK ADD  CONSTRAINT [FK_P_CLIENTE_P_MEDIAPAGO] FOREIGN KEY([MEDIAPAGO])
REFERENCES [dbo].[P_MEDIAPAGO] ([CODIGO])
GO
ALTER TABLE [dbo].[P_CLIENTE] CHECK CONSTRAINT [FK_P_CLIENTE_P_MEDIAPAGO]
GO
ALTER TABLE [dbo].[P_CLIENTE]  WITH CHECK ADD  CONSTRAINT [FK_P_CLIENTE_P_NIVELPRECIO] FOREIGN KEY([NIVELPRECIO])
REFERENCES [dbo].[P_NIVELPRECIO] ([CODIGO])
GO
ALTER TABLE [dbo].[P_CLIENTE] CHECK CONSTRAINT [FK_P_CLIENTE_P_NIVELPRECIO]
GO
ALTER TABLE [dbo].[P_CLIENTE_DIR]  WITH CHECK ADD  CONSTRAINT [FK_P_CLIENTE_DIR_CODIGO_DEPARTAMENTO] FOREIGN KEY([CODIGO_DEPARTAMENTO])
REFERENCES [dbo].[P_DEPARTAMENTO] ([CODIGO])
GO
ALTER TABLE [dbo].[P_CLIENTE_DIR] CHECK CONSTRAINT [FK_P_CLIENTE_DIR_CODIGO_DEPARTAMENTO]
GO
ALTER TABLE [dbo].[P_CLIENTE_DIR]  WITH CHECK ADD  CONSTRAINT [FK_P_CLIENTE_DIR_CODIGO_MUNICIPIO] FOREIGN KEY([CODIGO_MUNICIPIO])
REFERENCES [dbo].[P_MUNICIPIO] ([CODIGO])
GO
ALTER TABLE [dbo].[P_CLIENTE_DIR] CHECK CONSTRAINT [FK_P_CLIENTE_DIR_CODIGO_MUNICIPIO]
GO
ALTER TABLE [dbo].[P_CLIENTE_DIR]  WITH CHECK ADD  CONSTRAINT [FK_P_CLIENTE_DIR_P_CLIENTE] FOREIGN KEY([CODIGO_CLIENTE])
REFERENCES [dbo].[P_CLIENTE] ([CODIGO_CLIENTE])
GO
ALTER TABLE [dbo].[P_CLIENTE_DIR] CHECK CONSTRAINT [FK_P_CLIENTE_DIR_P_CLIENTE]
GO
ALTER TABLE [dbo].[P_COREL]  WITH NOCHECK ADD  CONSTRAINT [FK_P_COREL_P_EMPRESA] FOREIGN KEY([EMPRESA])
REFERENCES [dbo].[P_EMPRESA] ([EMPRESA])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[P_COREL] CHECK CONSTRAINT [FK_P_COREL_P_EMPRESA]
GO
ALTER TABLE [dbo].[P_COREL]  WITH CHECK ADD  CONSTRAINT [FK_P_COREL_P_RUTA] FOREIGN KEY([RUTA])
REFERENCES [dbo].[P_RUTA] ([CODIGO_RUTA])
GO
ALTER TABLE [dbo].[P_COREL] CHECK CONSTRAINT [FK_P_COREL_P_RUTA]
GO
ALTER TABLE [dbo].[P_DEPARTAMENTO]  WITH NOCHECK ADD  CONSTRAINT [FK_P_DEPARTAMENTO_P_REGION] FOREIGN KEY([CODIGO_AREA])
REFERENCES [dbo].[P_REGION] ([CODIGO])
GO
ALTER TABLE [dbo].[P_DEPARTAMENTO] CHECK CONSTRAINT [FK_P_DEPARTAMENTO_P_REGION]
GO
ALTER TABLE [dbo].[P_DESCUENTO]  WITH CHECK ADD  CONSTRAINT [FK_P_DESCUENTO_P_DESCUENTO] FOREIGN KEY([EMPRESA])
REFERENCES [dbo].[P_EMPRESA] ([EMPRESA])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[P_DESCUENTO] CHECK CONSTRAINT [FK_P_DESCUENTO_P_DESCUENTO]
GO
ALTER TABLE [dbo].[P_EMPRESA]  WITH CHECK ADD  CONSTRAINT [FK_P_EMPRESA_P_CANT_EMPLEADOS] FOREIGN KEY([COD_CANT_EMP])
REFERENCES [dbo].[P_CANT_EMPLEADOS] ([COD_CANT_EMP])
GO
ALTER TABLE [dbo].[P_EMPRESA] CHECK CONSTRAINT [FK_P_EMPRESA_P_CANT_EMPLEADOS]
GO
ALTER TABLE [dbo].[P_EMPRESA]  WITH CHECK ADD  CONSTRAINT [FK_P_EMPRESA_P_PAIS] FOREIGN KEY([COD_PAIS])
REFERENCES [dbo].[P_PAIS] ([COD_PAIS])
GO
ALTER TABLE [dbo].[P_EMPRESA] CHECK CONSTRAINT [FK_P_EMPRESA_P_PAIS]
GO
ALTER TABLE [dbo].[P_ENCABEZADO_REPORTESHH]  WITH CHECK ADD  CONSTRAINT [FK_P_ENCABEZADO_REPORTESHH_P_EMPRESA] FOREIGN KEY([EMPRESA])
REFERENCES [dbo].[P_EMPRESA] ([EMPRESA])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[P_ENCABEZADO_REPORTESHH] CHECK CONSTRAINT [FK_P_ENCABEZADO_REPORTESHH_P_EMPRESA]
GO
ALTER TABLE [dbo].[P_ENCABEZADO_REPORTESHH]  WITH CHECK ADD  CONSTRAINT [FK_P_ENCABEZADO_REPORTESHH_P_SUCURSAL] FOREIGN KEY([SUCURSAL])
REFERENCES [dbo].[P_SUCURSAL] ([CODIGO_SUCURSAL])
GO
ALTER TABLE [dbo].[P_ENCABEZADO_REPORTESHH] CHECK CONSTRAINT [FK_P_ENCABEZADO_REPORTESHH_P_SUCURSAL]
GO
ALTER TABLE [dbo].[P_ESTACION]  WITH CHECK ADD  CONSTRAINT [FK_P_ESTACION_P_EMPRESA] FOREIGN KEY([EMPRESA])
REFERENCES [dbo].[P_EMPRESA] ([EMPRESA])
GO
ALTER TABLE [dbo].[P_ESTACION] CHECK CONSTRAINT [FK_P_ESTACION_P_EMPRESA]
GO
ALTER TABLE [dbo].[P_ESTACION]  WITH CHECK ADD  CONSTRAINT [FK_P_ESTACION_P_SUCURSAL] FOREIGN KEY([CODIGO_SUCURSAL])
REFERENCES [dbo].[P_SUCURSAL] ([CODIGO_SUCURSAL])
GO
ALTER TABLE [dbo].[P_ESTACION] CHECK CONSTRAINT [FK_P_ESTACION_P_SUCURSAL]
GO
ALTER TABLE [dbo].[P_FACTORCONV]  WITH CHECK ADD  CONSTRAINT [FK_P_FACTORCONV_P_EMPRESA] FOREIGN KEY([EMPRESA])
REFERENCES [dbo].[P_EMPRESA] ([EMPRESA])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[P_FACTORCONV] CHECK CONSTRAINT [FK_P_FACTORCONV_P_EMPRESA]
GO
ALTER TABLE [dbo].[P_FACTORCONV]  WITH CHECK ADD  CONSTRAINT [FK_P_FACTORCONV_P_PRODUCTO] FOREIGN KEY([PRODUCTO])
REFERENCES [dbo].[P_PRODUCTO] ([CODIGO_PRODUCTO])
GO
ALTER TABLE [dbo].[P_FACTORCONV] CHECK CONSTRAINT [FK_P_FACTORCONV_P_PRODUCTO]
GO
ALTER TABLE [dbo].[P_GRAFICA_ROL]  WITH CHECK ADD  CONSTRAINT [FK_P_GRAFICA_ROL_P_GRAFICA] FOREIGN KEY([IdGrafica])
REFERENCES [dbo].[P_GRAFICA] ([idGrafica])
GO
ALTER TABLE [dbo].[P_GRAFICA_ROL] CHECK CONSTRAINT [FK_P_GRAFICA_ROL_P_GRAFICA]
GO
ALTER TABLE [dbo].[P_GRAFICA_ROL]  WITH CHECK ADD  CONSTRAINT [FK_P_GRAFICA_ROL_Roles] FOREIGN KEY([IdRol])
REFERENCES [dbo].[Roles] ([RoleId])
GO
ALTER TABLE [dbo].[P_GRAFICA_ROL] CHECK CONSTRAINT [FK_P_GRAFICA_ROL_Roles]
GO
ALTER TABLE [dbo].[P_IMPRESORA]  WITH CHECK ADD  CONSTRAINT [FK_P_IMPRESORA_P_EMPRESA] FOREIGN KEY([EMPRESA])
REFERENCES [dbo].[P_EMPRESA] ([EMPRESA])
GO
ALTER TABLE [dbo].[P_IMPRESORA] CHECK CONSTRAINT [FK_P_IMPRESORA_P_EMPRESA]
GO
ALTER TABLE [dbo].[P_IMPRESORA]  WITH CHECK ADD  CONSTRAINT [FK_P_IMPRESORA_P_IMPRESORA_MARCA] FOREIGN KEY([CODIGO_MARCA])
REFERENCES [dbo].[P_IMPRESORA_MARCA] ([CODIGO_IMPRESORA_MARCA])
GO
ALTER TABLE [dbo].[P_IMPRESORA] CHECK CONSTRAINT [FK_P_IMPRESORA_P_IMPRESORA_MARCA]
GO
ALTER TABLE [dbo].[P_IMPRESORA]  WITH CHECK ADD  CONSTRAINT [FK_P_IMPRESORA_P_IMPRESORA_MODELO] FOREIGN KEY([CODIGO_MODELO])
REFERENCES [dbo].[P_IMPRESORA_MODELO] ([CODIGO_IMPRESORA_MODELO])
GO
ALTER TABLE [dbo].[P_IMPRESORA] CHECK CONSTRAINT [FK_P_IMPRESORA_P_IMPRESORA_MODELO]
GO
ALTER TABLE [dbo].[P_IMPRESORA]  WITH CHECK ADD  CONSTRAINT [FK_P_IMPRESORA_P_SUCURSAL] FOREIGN KEY([CODIGO_SUCURSAL])
REFERENCES [dbo].[P_SUCURSAL] ([CODIGO_SUCURSAL])
GO
ALTER TABLE [dbo].[P_IMPRESORA] CHECK CONSTRAINT [FK_P_IMPRESORA_P_SUCURSAL]
GO
ALTER TABLE [dbo].[P_IMPRESORA_MODELO]  WITH CHECK ADD  CONSTRAINT [FK_P_IMPRESORA_MODELO_P_IMPRESORA_MARCA] FOREIGN KEY([CODIGO_IMPRESORA_MARCA])
REFERENCES [dbo].[P_IMPRESORA_MARCA] ([CODIGO_IMPRESORA_MARCA])
GO
ALTER TABLE [dbo].[P_IMPRESORA_MODELO] CHECK CONSTRAINT [FK_P_IMPRESORA_MODELO_P_IMPRESORA_MARCA]
GO
ALTER TABLE [dbo].[P_IMPUESTO]  WITH CHECK ADD  CONSTRAINT [FK_P_IMPUESTO_P_EMPRESA] FOREIGN KEY([EMPRESA])
REFERENCES [dbo].[P_EMPRESA] ([EMPRESA])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[P_IMPUESTO] CHECK CONSTRAINT [FK_P_IMPUESTO_P_EMPRESA]
GO
ALTER TABLE [dbo].[P_LINEA]  WITH CHECK ADD  CONSTRAINT [FK_P_LINEA_P_EMPRESA] FOREIGN KEY([EMPRESA])
REFERENCES [dbo].[P_EMPRESA] ([EMPRESA])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[P_LINEA] CHECK CONSTRAINT [FK_P_LINEA_P_EMPRESA]
GO
ALTER TABLE [dbo].[P_LINEA]  WITH CHECK ADD  CONSTRAINT [FK_P_LINEA_P_MARCA] FOREIGN KEY([MARCA])
REFERENCES [dbo].[P_MARCA] ([CODIGO])
GO
ALTER TABLE [dbo].[P_LINEA] CHECK CONSTRAINT [FK_P_LINEA_P_MARCA]
GO
ALTER TABLE [dbo].[P_LINEA_IMPRESORA]  WITH CHECK ADD  CONSTRAINT [FK_P_LINEA_ESTACION_P_EMPRESA] FOREIGN KEY([EMPRESA])
REFERENCES [dbo].[P_EMPRESA] ([EMPRESA])
GO
ALTER TABLE [dbo].[P_LINEA_IMPRESORA] CHECK CONSTRAINT [FK_P_LINEA_ESTACION_P_EMPRESA]
GO
ALTER TABLE [dbo].[P_LINEA_IMPRESORA]  WITH CHECK ADD  CONSTRAINT [FK_P_LINEA_ESTACION_P_LINEA] FOREIGN KEY([CODIGO_LINEA])
REFERENCES [dbo].[P_LINEA] ([CODIGO_LINEA])
GO
ALTER TABLE [dbo].[P_LINEA_IMPRESORA] CHECK CONSTRAINT [FK_P_LINEA_ESTACION_P_LINEA]
GO
ALTER TABLE [dbo].[P_LINEA_IMPRESORA]  WITH CHECK ADD  CONSTRAINT [FK_P_LINEA_ESTACION_P_LINEA_ESTACION] FOREIGN KEY([CODIGO_LINEA_IMPRESORA])
REFERENCES [dbo].[P_LINEA_IMPRESORA] ([CODIGO_LINEA_IMPRESORA])
GO
ALTER TABLE [dbo].[P_LINEA_IMPRESORA] CHECK CONSTRAINT [FK_P_LINEA_ESTACION_P_LINEA_ESTACION]
GO
ALTER TABLE [dbo].[P_LINEA_IMPRESORA]  WITH CHECK ADD  CONSTRAINT [FK_P_LINEA_IMPRESORA_P_IMPRESORA] FOREIGN KEY([CODIGO_IMPRESORA])
REFERENCES [dbo].[P_IMPRESORA] ([CODIGO_IMPRESORA])
GO
ALTER TABLE [dbo].[P_LINEA_IMPRESORA] CHECK CONSTRAINT [FK_P_LINEA_IMPRESORA_P_IMPRESORA]
GO
ALTER TABLE [dbo].[P_MARCA]  WITH NOCHECK ADD  CONSTRAINT [FK_P_MARCA_P_EMPRESA] FOREIGN KEY([EMPRESA])
REFERENCES [dbo].[P_EMPRESA] ([EMPRESA])
GO
ALTER TABLE [dbo].[P_MARCA] CHECK CONSTRAINT [FK_P_MARCA_P_EMPRESA]
GO
ALTER TABLE [dbo].[P_MEDIAPAGO]  WITH CHECK ADD  CONSTRAINT [FK_P_MEDIAPAGO_P_EMPRESA] FOREIGN KEY([EMPRESA])
REFERENCES [dbo].[P_EMPRESA] ([EMPRESA])
GO
ALTER TABLE [dbo].[P_MEDIAPAGO] CHECK CONSTRAINT [FK_P_MEDIAPAGO_P_EMPRESA]
GO
ALTER TABLE [dbo].[P_MENUOPCION]  WITH CHECK ADD  CONSTRAINT [FK_P_MENUOPCION_P_MODULOS] FOREIGN KEY([MODULO_ID])
REFERENCES [dbo].[P_MODULOS] ([IDMODULO])
GO
ALTER TABLE [dbo].[P_MENUOPCION] CHECK CONSTRAINT [FK_P_MENUOPCION_P_MODULOS]
GO
ALTER TABLE [dbo].[P_MENUOPCION_ROL]  WITH CHECK ADD  CONSTRAINT [FK_P_MENUOPCION_ROL_P_MENUOPCION] FOREIGN KEY([MENUOPCION_ID])
REFERENCES [dbo].[P_MENUOPCION] ([ID])
GO
ALTER TABLE [dbo].[P_MENUOPCION_ROL] CHECK CONSTRAINT [FK_P_MENUOPCION_ROL_P_MENUOPCION]
GO
ALTER TABLE [dbo].[P_MENUOPCION_ROL]  WITH CHECK ADD  CONSTRAINT [FK_P_MENUOPCION_ROL_P_MODULOS_ROL] FOREIGN KEY([MODULO_ROL_ID])
REFERENCES [dbo].[P_MODULOS_ROL] ([ID])
GO
ALTER TABLE [dbo].[P_MENUOPCION_ROL] CHECK CONSTRAINT [FK_P_MENUOPCION_ROL_P_MODULOS_ROL]
GO
ALTER TABLE [dbo].[P_MENUROL]  WITH NOCHECK ADD  CONSTRAINT [FK_P_MENUROL_P_MODULOS] FOREIGN KEY([IDMODULO])
REFERENCES [dbo].[P_MODULOS] ([IDMODULO])
GO
ALTER TABLE [dbo].[P_MENUROL] NOCHECK CONSTRAINT [FK_P_MENUROL_P_MODULOS]
GO
ALTER TABLE [dbo].[P_MENUSISTEMA]  WITH NOCHECK ADD  CONSTRAINT [FK_P_MENUSISTEMA_P_MODULOS] FOREIGN KEY([IDMODULO])
REFERENCES [dbo].[P_MODULOS] ([IDMODULO])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[P_MENUSISTEMA] NOCHECK CONSTRAINT [FK_P_MENUSISTEMA_P_MODULOS]
GO
ALTER TABLE [dbo].[P_MODULOS_ROL]  WITH CHECK ADD  CONSTRAINT [FK_P_MODULOS_ROL_P_MODULOS] FOREIGN KEY([MODULO_ID])
REFERENCES [dbo].[P_MODULOS] ([IDMODULO])
GO
ALTER TABLE [dbo].[P_MODULOS_ROL] CHECK CONSTRAINT [FK_P_MODULOS_ROL_P_MODULOS]
GO
ALTER TABLE [dbo].[P_MODULOS_ROL]  WITH CHECK ADD  CONSTRAINT [FK_P_MODULOS_ROL_P_ROL] FOREIGN KEY([ROL_ID])
REFERENCES [dbo].[P_ROL] ([COD_ROL])
GO
ALTER TABLE [dbo].[P_MODULOS_ROL] CHECK CONSTRAINT [FK_P_MODULOS_ROL_P_ROL]
GO
ALTER TABLE [dbo].[P_MONEDA]  WITH CHECK ADD  CONSTRAINT [FK_P_MONEDA_P_EMPRESA] FOREIGN KEY([EMPRESA])
REFERENCES [dbo].[P_EMPRESA] ([EMPRESA])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[P_MONEDA] CHECK CONSTRAINT [FK_P_MONEDA_P_EMPRESA]
GO
ALTER TABLE [dbo].[P_MOTIVO_AJUSTE]  WITH CHECK ADD  CONSTRAINT [FK_P_MOTIVO_AJUSTE_P_EMPRESA] FOREIGN KEY([EMPRESA])
REFERENCES [dbo].[P_EMPRESA] ([EMPRESA])
GO
ALTER TABLE [dbo].[P_MOTIVO_AJUSTE] CHECK CONSTRAINT [FK_P_MOTIVO_AJUSTE_P_EMPRESA]
GO
ALTER TABLE [dbo].[P_MOTIVO_AUSENCIA]  WITH CHECK ADD  CONSTRAINT [FK_P_MOTIVO_AUSENCIA_P_EMPRESA] FOREIGN KEY([EMPRESA])
REFERENCES [dbo].[P_EMPRESA] ([EMPRESA])
GO
ALTER TABLE [dbo].[P_MOTIVO_AUSENCIA] CHECK CONSTRAINT [FK_P_MOTIVO_AUSENCIA_P_EMPRESA]
GO
ALTER TABLE [dbo].[P_MUNICIPIO]  WITH CHECK ADD  CONSTRAINT [FK_P_MUNICIPIO_P_DEPARTAMENTO] FOREIGN KEY([CODIGO_DEPARTAMENTO])
REFERENCES [dbo].[P_DEPARTAMENTO] ([CODIGO])
GO
ALTER TABLE [dbo].[P_MUNICIPIO] CHECK CONSTRAINT [FK_P_MUNICIPIO_P_DEPARTAMENTO]
GO
ALTER TABLE [dbo].[P_NIVELPRECIO]  WITH CHECK ADD  CONSTRAINT [FK_P_NIVELPRECIO_P_EMPRESA1] FOREIGN KEY([EMPRESA])
REFERENCES [dbo].[P_EMPRESA] ([EMPRESA])
GO
ALTER TABLE [dbo].[P_NIVELPRECIO] CHECK CONSTRAINT [FK_P_NIVELPRECIO_P_EMPRESA1]
GO
ALTER TABLE [dbo].[P_PARAMEXT]  WITH CHECK ADD  CONSTRAINT [FK_P_PARAMEXT_P_EMPRESA] FOREIGN KEY([EMPRESA])
REFERENCES [dbo].[P_EMPRESA] ([EMPRESA])
GO
ALTER TABLE [dbo].[P_PARAMEXT] CHECK CONSTRAINT [FK_P_PARAMEXT_P_EMPRESA]
GO
ALTER TABLE [dbo].[P_PRODCOMBO]  WITH CHECK ADD  CONSTRAINT [FK_P_PRODCOMBO_P_EMPRESA1] FOREIGN KEY([EMPRESA])
REFERENCES [dbo].[P_EMPRESA] ([EMPRESA])
GO
ALTER TABLE [dbo].[P_PRODCOMBO] CHECK CONSTRAINT [FK_P_PRODCOMBO_P_EMPRESA1]
GO
ALTER TABLE [dbo].[P_PRODCOMBO]  WITH CHECK ADD  CONSTRAINT [FK_P_PRODCOMBO_P_PRODUCTO] FOREIGN KEY([PRODUCTO])
REFERENCES [dbo].[P_PRODUCTO] ([CODIGO_PRODUCTO])
GO
ALTER TABLE [dbo].[P_PRODCOMBO] CHECK CONSTRAINT [FK_P_PRODCOMBO_P_PRODUCTO]
GO
ALTER TABLE [dbo].[P_PRODMENU]  WITH CHECK ADD  CONSTRAINT [FK__P_PRODMEN__CODIG__2200E977] FOREIGN KEY([CODIGO_PRODUCTO])
REFERENCES [dbo].[P_PRODUCTO] ([CODIGO_PRODUCTO])
GO
ALTER TABLE [dbo].[P_PRODMENU] CHECK CONSTRAINT [FK__P_PRODMEN__CODIG__2200E977]
GO
ALTER TABLE [dbo].[P_PRODMENU]  WITH CHECK ADD FOREIGN KEY([EMPRESA])
REFERENCES [dbo].[P_EMPRESA] ([EMPRESA])
GO
ALTER TABLE [dbo].[P_PRODMENUOPC]  WITH CHECK ADD FOREIGN KEY([CODIGO_MENU])
REFERENCES [dbo].[P_PRODMENU] ([CODIGO_MENU])
GO
ALTER TABLE [dbo].[P_PRODMENUOPC_DET]  WITH CHECK ADD FOREIGN KEY([CODIGO_MENU_OPCION])
REFERENCES [dbo].[P_PRODMENUOPC] ([CODIGO_MENU_OPCION])
GO
ALTER TABLE [dbo].[P_PRODMENUOPC_DET]  WITH CHECK ADD  CONSTRAINT [FK__P_PRODMEN__CODIG__28ADE706] FOREIGN KEY([CODIGO_PRODUCTO])
REFERENCES [dbo].[P_PRODUCTO] ([CODIGO_PRODUCTO])
GO
ALTER TABLE [dbo].[P_PRODMENUOPC_DET] CHECK CONSTRAINT [FK__P_PRODMEN__CODIG__28ADE706]
GO
ALTER TABLE [dbo].[P_PRODPRECIO]  WITH CHECK ADD  CONSTRAINT [FK_P_PRODPRECIO_P_EMPRESA] FOREIGN KEY([EMPRESA])
REFERENCES [dbo].[P_EMPRESA] ([EMPRESA])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[P_PRODPRECIO] CHECK CONSTRAINT [FK_P_PRODPRECIO_P_EMPRESA]
GO
ALTER TABLE [dbo].[P_PRODPRECIO]  WITH CHECK ADD  CONSTRAINT [FK_P_PRODPRECIO_P_NIVELPRECIO] FOREIGN KEY([NIVEL])
REFERENCES [dbo].[P_NIVELPRECIO] ([CODIGO])
GO
ALTER TABLE [dbo].[P_PRODPRECIO] CHECK CONSTRAINT [FK_P_PRODPRECIO_P_NIVELPRECIO]
GO
ALTER TABLE [dbo].[P_PRODPRECIO]  WITH CHECK ADD  CONSTRAINT [FK_P_PRODPRECIO_P_PRODUCTO] FOREIGN KEY([CODIGO_PRODUCTO])
REFERENCES [dbo].[P_PRODUCTO] ([CODIGO_PRODUCTO])
GO
ALTER TABLE [dbo].[P_PRODPRECIO] CHECK CONSTRAINT [FK_P_PRODPRECIO_P_PRODUCTO]
GO
ALTER TABLE [dbo].[P_PRODUCTO]  WITH CHECK ADD  CONSTRAINT [FK_P_PRODUCTO_P_EMPRESA] FOREIGN KEY([EMPRESA])
REFERENCES [dbo].[P_EMPRESA] ([EMPRESA])
GO
ALTER TABLE [dbo].[P_PRODUCTO] CHECK CONSTRAINT [FK_P_PRODUCTO_P_EMPRESA]
GO
ALTER TABLE [dbo].[P_PRODUCTO]  WITH CHECK ADD  CONSTRAINT [FK_P_PRODUCTO_P_LINEA] FOREIGN KEY([LINEA])
REFERENCES [dbo].[P_LINEA] ([CODIGO_LINEA])
GO
ALTER TABLE [dbo].[P_PRODUCTO] CHECK CONSTRAINT [FK_P_PRODUCTO_P_LINEA]
GO
ALTER TABLE [dbo].[P_PRODUCTO]  WITH CHECK ADD  CONSTRAINT [FK_P_PRODUCTO_P_MARCA] FOREIGN KEY([MARCA])
REFERENCES [dbo].[P_MARCA] ([CODIGO])
GO
ALTER TABLE [dbo].[P_PRODUCTO] CHECK CONSTRAINT [FK_P_PRODUCTO_P_MARCA]
GO
ALTER TABLE [dbo].[P_PRODUCTO]  WITH CHECK ADD  CONSTRAINT [FK_P_PRODUCTO_P_PRODUCTO_TIPO] FOREIGN KEY([CODIGO_TIPO])
REFERENCES [dbo].[P_PRODUCTO_TIPO] ([CODIGO_TIPO_PRODUCTO])
GO
ALTER TABLE [dbo].[P_PRODUCTO] CHECK CONSTRAINT [FK_P_PRODUCTO_P_PRODUCTO_TIPO]
GO
ALTER TABLE [dbo].[P_PROVEEDOR]  WITH CHECK ADD  CONSTRAINT [FK_P_PROVEEDOR_P_EMPRESA] FOREIGN KEY([EMPRESA])
REFERENCES [dbo].[P_EMPRESA] ([EMPRESA])
GO
ALTER TABLE [dbo].[P_PROVEEDOR] CHECK CONSTRAINT [FK_P_PROVEEDOR_P_EMPRESA]
GO
ALTER TABLE [dbo].[P_REGION]  WITH NOCHECK ADD  CONSTRAINT [FK_P_REGION_P_PAIS] FOREIGN KEY([COD_PAIS])
REFERENCES [dbo].[P_PAIS] ([COD_PAIS])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[P_REGION] CHECK CONSTRAINT [FK_P_REGION_P_PAIS]
GO
ALTER TABLE [dbo].[P_RES_GRUPO]  WITH CHECK ADD  CONSTRAINT [FK_P_RES_GRUPO_P_EMPRESA] FOREIGN KEY([EMPRESA])
REFERENCES [dbo].[P_EMPRESA] ([EMPRESA])
GO
ALTER TABLE [dbo].[P_RES_GRUPO] CHECK CONSTRAINT [FK_P_RES_GRUPO_P_EMPRESA]
GO
ALTER TABLE [dbo].[P_RES_MESA]  WITH CHECK ADD  CONSTRAINT [FK_P_RES_MESA_P_EMPRESA] FOREIGN KEY([EMPRESA])
REFERENCES [dbo].[P_EMPRESA] ([EMPRESA])
GO
ALTER TABLE [dbo].[P_RES_MESA] CHECK CONSTRAINT [FK_P_RES_MESA_P_EMPRESA]
GO
ALTER TABLE [dbo].[P_RES_MESA]  WITH CHECK ADD  CONSTRAINT [FK_P_RES_MESA_P_RES_GRUPO] FOREIGN KEY([CODIGO_GRUPO])
REFERENCES [dbo].[P_RES_GRUPO] ([CODIGO_GRUPO])
GO
ALTER TABLE [dbo].[P_RES_MESA] CHECK CONSTRAINT [FK_P_RES_MESA_P_RES_GRUPO]
GO
ALTER TABLE [dbo].[P_RES_MESA]  WITH CHECK ADD  CONSTRAINT [FK_P_RES_MESA_P_RES_SALA] FOREIGN KEY([CODIGO_SALA])
REFERENCES [dbo].[P_RES_SALA] ([CODIGO_SALA])
GO
ALTER TABLE [dbo].[P_RES_MESA] CHECK CONSTRAINT [FK_P_RES_MESA_P_RES_SALA]
GO
ALTER TABLE [dbo].[P_RES_MESA]  WITH CHECK ADD  CONSTRAINT [FK_P_RES_MESA_P_SUCURSAL] FOREIGN KEY([CODIGO_SUCURSAL])
REFERENCES [dbo].[P_SUCURSAL] ([CODIGO_SUCURSAL])
GO
ALTER TABLE [dbo].[P_RES_MESA] CHECK CONSTRAINT [FK_P_RES_MESA_P_SUCURSAL]
GO
ALTER TABLE [dbo].[P_RES_SALA]  WITH CHECK ADD  CONSTRAINT [FK_P_RES_SALA_P_EMPRESA] FOREIGN KEY([EMPRESA])
REFERENCES [dbo].[P_EMPRESA] ([EMPRESA])
GO
ALTER TABLE [dbo].[P_RES_SALA] CHECK CONSTRAINT [FK_P_RES_SALA_P_EMPRESA]
GO
ALTER TABLE [dbo].[P_RES_SALA]  WITH CHECK ADD  CONSTRAINT [FK_P_RES_SALA_P_SUCURSAL] FOREIGN KEY([CODIGO_SUCURSAL])
REFERENCES [dbo].[P_SUCURSAL] ([CODIGO_SUCURSAL])
GO
ALTER TABLE [dbo].[P_RES_SALA] CHECK CONSTRAINT [FK_P_RES_SALA_P_SUCURSAL]
GO
ALTER TABLE [dbo].[P_ROL]  WITH NOCHECK ADD  CONSTRAINT [FK_P_ROL_P_MODULOS] FOREIGN KEY([IDMODULO])
REFERENCES [dbo].[P_MODULOS] ([IDMODULO])
GO
ALTER TABLE [dbo].[P_ROL] NOCHECK CONSTRAINT [FK_P_ROL_P_MODULOS]
GO
ALTER TABLE [dbo].[P_RUTA]  WITH CHECK ADD  CONSTRAINT [FK_P_RUTA_P_EMPRESA] FOREIGN KEY([EMPRESA])
REFERENCES [dbo].[P_EMPRESA] ([EMPRESA])
GO
ALTER TABLE [dbo].[P_RUTA] CHECK CONSTRAINT [FK_P_RUTA_P_EMPRESA]
GO
ALTER TABLE [dbo].[P_RUTA]  WITH CHECK ADD  CONSTRAINT [FK_P_RUTA_P_SUCURSAL] FOREIGN KEY([SUCURSAL])
REFERENCES [dbo].[P_SUCURSAL] ([CODIGO_SUCURSAL])
GO
ALTER TABLE [dbo].[P_RUTA] CHECK CONSTRAINT [FK_P_RUTA_P_SUCURSAL]
GO
ALTER TABLE [dbo].[P_RUTA_IMPRESORA]  WITH CHECK ADD  CONSTRAINT [FK_P_RUTA_IMPRESORA_P_EMPRESA] FOREIGN KEY([EMPRESA])
REFERENCES [dbo].[P_EMPRESA] ([EMPRESA])
GO
ALTER TABLE [dbo].[P_RUTA_IMPRESORA] CHECK CONSTRAINT [FK_P_RUTA_IMPRESORA_P_EMPRESA]
GO
ALTER TABLE [dbo].[P_RUTA_IMPRESORA]  WITH CHECK ADD  CONSTRAINT [FK_P_RUTA_IMPRESORA_P_RUTA] FOREIGN KEY([CODIGO_RUTA])
REFERENCES [dbo].[P_RUTA] ([CODIGO_RUTA])
GO
ALTER TABLE [dbo].[P_RUTA_IMPRESORA] CHECK CONSTRAINT [FK_P_RUTA_IMPRESORA_P_RUTA]
GO
ALTER TABLE [dbo].[P_RUTA_IMPRESORA]  WITH CHECK ADD  CONSTRAINT [FK_P_RUTA_IMPRESORA_P_SUCURSAL] FOREIGN KEY([CODIGO_SUCURSAL])
REFERENCES [dbo].[P_SUCURSAL] ([CODIGO_SUCURSAL])
GO
ALTER TABLE [dbo].[P_RUTA_IMPRESORA] CHECK CONSTRAINT [FK_P_RUTA_IMPRESORA_P_SUCURSAL]
GO
ALTER TABLE [dbo].[P_STOCK]  WITH CHECK ADD  CONSTRAINT [FK_P_STOCK_P_EMPRESA] FOREIGN KEY([EMPRESA])
REFERENCES [dbo].[P_EMPRESA] ([EMPRESA])
GO
ALTER TABLE [dbo].[P_STOCK] CHECK CONSTRAINT [FK_P_STOCK_P_EMPRESA]
GO
ALTER TABLE [dbo].[P_STOCK]  WITH CHECK ADD  CONSTRAINT [FK_P_STOCK_P_PRODUCTO] FOREIGN KEY([CODIGO_PRODUCTO])
REFERENCES [dbo].[P_PRODUCTO] ([CODIGO_PRODUCTO])
GO
ALTER TABLE [dbo].[P_STOCK] CHECK CONSTRAINT [FK_P_STOCK_P_PRODUCTO]
GO
ALTER TABLE [dbo].[P_STOCK]  WITH CHECK ADD  CONSTRAINT [FK_P_STOCK_P_SUCURSAL] FOREIGN KEY([SUCURSAL])
REFERENCES [dbo].[P_SUCURSAL] ([CODIGO_SUCURSAL])
GO
ALTER TABLE [dbo].[P_STOCK] CHECK CONSTRAINT [FK_P_STOCK_P_SUCURSAL]
GO
ALTER TABLE [dbo].[P_USGRUPOOPC]  WITH NOCHECK ADD  CONSTRAINT [FK_P_USGRUPOOPC_P_USGRUPO] FOREIGN KEY([GRUPO])
REFERENCES [dbo].[P_USGRUPO] ([CODIGO])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[P_USGRUPOOPC] CHECK CONSTRAINT [FK_P_USGRUPOOPC_P_USGRUPO]
GO
ALTER TABLE [dbo].[P_USGRUPOOPC]  WITH NOCHECK ADD  CONSTRAINT [FK_P_USGRUPOOPC_P_USOPCION] FOREIGN KEY([OPCION])
REFERENCES [dbo].[P_USOPCION] ([CODIGO])
GO
ALTER TABLE [dbo].[P_USGRUPOOPC] CHECK CONSTRAINT [FK_P_USGRUPOOPC_P_USOPCION]
GO
ALTER TABLE [dbo].[P_USUARIO]  WITH NOCHECK ADD  CONSTRAINT [FK_P_USUARIO_P_USGRUPO] FOREIGN KEY([COD_GRUPO])
REFERENCES [dbo].[P_USGRUPO] ([CODIGO])
GO
ALTER TABLE [dbo].[P_USUARIO] CHECK CONSTRAINT [FK_P_USUARIO_P_USGRUPO]
GO
ALTER TABLE [dbo].[P_USUARIO_ROL]  WITH CHECK ADD  CONSTRAINT [FK_P_USUARIO_ROL_P_ROL] FOREIGN KEY([COD_ROL])
REFERENCES [dbo].[P_ROL] ([COD_ROL])
GO
ALTER TABLE [dbo].[P_USUARIO_ROL] CHECK CONSTRAINT [FK_P_USUARIO_ROL_P_ROL]
GO
ALTER TABLE [dbo].[P_USUARIO_ROL]  WITH CHECK ADD  CONSTRAINT [FK_P_USUARIO_ROL_P_USUARIO] FOREIGN KEY([CODIGO_USUARIO])
REFERENCES [dbo].[P_USUARIO] ([CODIGO_USUARIO])
GO
ALTER TABLE [dbo].[P_USUARIO_ROL] CHECK CONSTRAINT [FK_P_USUARIO_ROL_P_USUARIO]
GO
ALTER TABLE [dbo].[T_ORDEN]  WITH CHECK ADD  CONSTRAINT [FK_T_ORDEN_T_ORDEN] FOREIGN KEY([ID], [COREL], [EMPRESA])
REFERENCES [dbo].[T_ORDEN] ([ID], [COREL], [EMPRESA])
GO
ALTER TABLE [dbo].[T_ORDEN] CHECK CONSTRAINT [FK_T_ORDEN_T_ORDEN]
GO
ALTER TABLE [dbo].[T_ORDENCUENTA]  WITH CHECK ADD  CONSTRAINT [FK_T_ORDENCUENTA_T_ORDENCUENTA] FOREIGN KEY([COREL], [ID], [EMPRESA])
REFERENCES [dbo].[T_ORDENCUENTA] ([COREL], [ID], [EMPRESA])
GO
ALTER TABLE [dbo].[T_ORDENCUENTA] CHECK CONSTRAINT [FK_T_ORDENCUENTA_T_ORDENCUENTA]
GO
ALTER TABLE [dbo].[UserRoles]  WITH CHECK ADD  CONSTRAINT [FK_UserRoles_Roles] FOREIGN KEY([RoleId])
REFERENCES [dbo].[Roles] ([RoleId])
GO
ALTER TABLE [dbo].[UserRoles] CHECK CONSTRAINT [FK_UserRoles_Roles]
GO
ALTER TABLE [dbo].[UserRoles]  WITH CHECK ADD  CONSTRAINT [FK_UserRoles_Users] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([UserId])
GO
ALTER TABLE [dbo].[UserRoles] CHECK CONSTRAINT [FK_UserRoles_Users]
GO
ALTER TABLE [dbo].[Users]  WITH CHECK ADD  CONSTRAINT [FK_Users_P_EMPRESA] FOREIGN KEY([Empresa])
REFERENCES [dbo].[P_EMPRESA] ([EMPRESA])
GO
ALTER TABLE [dbo].[Users] CHECK CONSTRAINT [FK_Users_P_EMPRESA]
GO
ALTER TABLE [dbo].[VENDEDORES]  WITH CHECK ADD  CONSTRAINT [FK_VENDEDORES_P_EMPRESA] FOREIGN KEY([EMPRESA])
REFERENCES [dbo].[P_EMPRESA] ([EMPRESA])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[VENDEDORES] CHECK CONSTRAINT [FK_VENDEDORES_P_EMPRESA]
GO
ALTER TABLE [dbo].[VENDEDORES]  WITH CHECK ADD  CONSTRAINT [FK_VENDEDORES_P_NIVELPRECIO] FOREIGN KEY([NIVELPRECIO])
REFERENCES [dbo].[P_NIVELPRECIO] ([CODIGO])
GO
ALTER TABLE [dbo].[VENDEDORES] CHECK CONSTRAINT [FK_VENDEDORES_P_NIVELPRECIO]
GO
ALTER TABLE [dbo].[VENDEDORES]  WITH CHECK ADD  CONSTRAINT [FK_VENDEDORES_P_RUTA] FOREIGN KEY([RUTA])
REFERENCES [dbo].[P_RUTA] ([CODIGO_RUTA])
GO
ALTER TABLE [dbo].[VENDEDORES] CHECK CONSTRAINT [FK_VENDEDORES_P_RUTA]
GO
ALTER TABLE [dbo].[VENDEDORES]  WITH CHECK ADD  CONSTRAINT [FK_VENDEDORES_P_USGRUPO] FOREIGN KEY([NIVEL])
REFERENCES [dbo].[P_USGRUPO] ([CODIGO])
GO
ALTER TABLE [dbo].[VENDEDORES] CHECK CONSTRAINT [FK_VENDEDORES_P_USGRUPO]
GO
/****** Object:  StoredProcedure [dbo].[ACTUALIZA_STATCOM]    Script Date: 2021/03/03 11:58:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[ACTUALIZA_STATCOM]
	-- Add the parameters for the stored procedure here
	@CODIGO_LIQUIDACION AS INT
AS
BEGIN
	
	SET NOCOUNT ON;
   
	UPDATE D_FACTURA SET STATCOM  = 'N', BANDERA = 'N' WHERE CODIGOLIQUIDACION = @CODIGO_LIQUIDACION AND STATCOM <> 'S'
	--UPDATE D_MOV SET STATCOM  = 'N' WHERE CODIGOLIQUIDACION = @CODIGO_LIQUIDACION
	UPDATE D_COBRO SET STATCOM  = 'N' WHERE CODIGOLIQUIDACION = @CODIGO_LIQUIDACION AND STATCOM <> 'S'
	UPDATE D_CXC SET STATCOM  = 'N' WHERE CODIGOLIQUIDACION = @CODIGO_LIQUIDACION AND STATCOM <> 'S'
    UPDATE D_CXC SET ESTADO  = 'N' WHERE CODIGOLIQUIDACION = @CODIGO_LIQUIDACION AND COREL IN (SELECT DISTINCT COREL FROM D_CXCD WHERE ESTADO = 'M') AND STATCOM <> 'S'
	UPDATE D_NOTACRED SET STATCOM  = 'N' WHERE CODIGOLIQUIDACION = @CODIGO_LIQUIDACION AND STATCOM <> 'S'
	UPDATE P_NOTACD SET STATCOM  = 'N' WHERE CODIGOLIQUIDACION = @CODIGO_LIQUIDACION AND STATCOM <> 'S'
	
END


GO
/****** Object:  StoredProcedure [dbo].[ActualizaCobros]    Script Date: 2021/03/03 11:58:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[ActualizaCobros] 

AS
BEGIN

	UPDATE P_COBRO SET SALDO = VALORORIG + 
	(SELECT ISNULL(SUM(VALORORIG), 0) AS MONTO 
	FROM P_COBRO AS P 
	WHERE (REFERENCIA = P_COBRO.DOCUMENTO) AND (TIPODOC = 'DZ' OR VALORORIG < 0)
	GROUP BY REFERENCIA) 
	WHERE (DOCUMENTO IN (SELECT REFERENCIA 
	 FROM P_COBRO AS P1 
	WHERE (TIPODOC = 'DZ' OR VALORORIG < 0)))

	UPDATE P_COBRO SET SALDO = VALORORIG WHERE SALDO = 0

	DELETE  FROM P_COBRO WHERE TIPODOC = 'RV' AND SALDO < 0

END


GO
/****** Object:  StoredProcedure [dbo].[AcumuladoObjetivos]    Script Date: 2021/03/03 11:58:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<JP>
-- Create date: <03-05-2018>
-- Description:	<Actualiza acumulado en tablas de objetivos>
-- =============================================
CREATE PROCEDURE [dbo].[AcumuladoObjetivos] 
	@ruta nvarchar(15), 
	@objano int,
	@objmes  int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

DECLARE @venta nvarchar(1)
DECLARE @totalm float
DECLARE @totalu float
DECLARE @metam float
DECLARE @metau float

DECLARE @codigo nvarchar(15)
DECLARE @counter int
      SET @counter = 1


SELECT @venta=VENTA FROM P_RUTA WHERE (CODIGO=@ruta) 


-- Objetivos por ruta

SELECT @metam=METAV,@metau=METAU FROM O_RUTA
	WHERE (RUTA=@ruta) AND (OBJANO=@objano) AND (OBJMES=@objmes)
SELECT @totalm=0
SELECT @totalu=0

IF @venta='P'
BEGIN

	SELECT @totalm=SUM(TOTAL) FROM D_PEDIDO
		WHERE  (ANULADO='N') AND (RUTA=@ruta) AND (YEAR(FECHA)=@objano) AND (MONTH(FECHA)=@objmes)

END
ELSE
	IF @metam>0
	BEGIN
		SELECT @totalm=SUM(TOTAL) FROM D_FACTURA
			WHERE  (ANULADO='N') AND (RUTA=@ruta) AND (YEAR(FECHA)=@objano) AND (MONTH(FECHA)=@objmes)
	END
	IF @metau>0
	BEGIN
		SELECT  @totalu=SUM(D_FACTURAD.CANT) 
			FROM D_FACTURA INNER JOIN D_FACTURAD ON D_FACTURA.COREL=D_FACTURAD.COREL
			WHERE (D_FACTURA.ANULADO='N') AND (D_FACTURA.RUTA=@ruta) AND (YEAR(D_FACTURA.FECHA)=@objano) AND (MONTH(D_FACTURA.FECHA)=@objmes)	
	END
END
 
IF @metam>0
BEGIN
	UPDATE O_RUTA SET ACUMV=@totalm WHERE (RUTA=@ruta) AND (OBJANO=@objano) AND (OBJMES=@objmes)
END
IF @metau>0
BEGIN
	UPDATE O_RUTA SET ACUMU=@totalu WHERE (RUTA=@ruta) AND (OBJANO=@objano) AND (OBJMES=@objmes)
END

-- Objetivos por linea

DECLARE lineas CURSOR READ_ONLY FOR
	SELECT Codigo, MetaV, MetaU
	FROM O_LINEA WHERE (RUTA=@ruta) AND (OBJANO=@objano) AND (OBJMES=@objmes)

OPEN lineas

FETCH NEXT FROM lineas INTO @codigo,@metam,@metau

WHILE @@FETCH_STATUS = 0
BEGIN
		
	-- PRINT @codigo+CHAR(9)+CAST(@metam AS VARCHAR(10))+CHAR(9)+CAST(@metau AS VARCHAR(10))

	SELECT @totalm=0
	SELECT @totalu=0

	IF @venta<>'P'
	BEGIN
		SELECT  @totalm=SUM(D_FACTURAD.TOTAL), @totalu=SUM(D_FACTURAD.CANT) 
		FROM  D_FACTURAD INNER JOIN D_FACTURA ON D_FACTURAD.COREL=D_FACTURA.COREL INNER JOIN
			P_PRODUCTO ON D_FACTURAD.PRODUCTO=P_PRODUCTO.CODIGO
		WHERE (D_FACTURA.ANULADO='N') AND (D_FACTURA.RUTA=@ruta) AND (YEAR(D_FACTURA.FECHA)=@objano) 
		AND (MONTH(dbo.D_FACTURA.FECHA)=@objmes) AND (P_PRODUCTO.LINEA=@codigo)
	END
 
	IF @metam>0
	BEGIN
		UPDATE O_LINEA SET ACUMV=ISNULL(@totalm,0) WHERE (RUTA=@ruta) AND (CODIGO=@codigo) AND (OBJANO=@objano) AND (OBJMES=@objmes)
	END
	IF @metau>0
	BEGIN
		UPDATE O_LINEA SET ACUMU=ISNULL(@totalu,0) WHERE (RUTA=@ruta) AND (CODIGO=@codigo) AND (OBJANO=@objano) AND (OBJMES=@objmes)
	END

	FETCH NEXT FROM lineas INTO @codigo,@metam,@metau

END

CLOSE lineas
DEALLOCATE lineas          


-- Objetivos por procucto

DECLARE productos CURSOR READ_ONLY FOR
	SELECT Codigo, MetaV, MetaU
	FROM O_PROD WHERE (RUTA=@ruta) AND (OBJANO=@objano) AND (OBJMES=@objmes)

OPEN productos       

FETCH NEXT FROM productos INTO @codigo,@metam,@metau

WHILE @@FETCH_STATUS = 0
BEGIN
		
	-- PRINT @codigo+CHAR(9)+CAST(@metam AS VARCHAR(10))+CHAR(9)+CAST(@metau AS VARCHAR(10))

	SELECT @totalm=0
	SELECT @totalu=0

	IF @venta<>'P'
	BEGIN
		SELECT  @totalm=SUM(D_FACTURAD.TOTAL), @totalu=SUM(D_FACTURAD.CANT) 
		FROM  D_FACTURAD INNER JOIN D_FACTURA ON D_FACTURAD.COREL=D_FACTURA.COREL 
		WHERE (D_FACTURA.ANULADO='N') AND (D_FACTURA.RUTA=@ruta) AND (YEAR(D_FACTURA.FECHA)=@objano) 
		AND (MONTH(dbo.D_FACTURA.FECHA)=@objmes) AND (D_FACTURAD.PRODUCTO=@codigo)
	END
 
	IF @metam>0
	BEGIN
		UPDATE O_PROD SET ACUMV=ISNULL(@totalm,0) WHERE (RUTA=@ruta) AND (CODIGO=@codigo) AND (OBJANO=@objano) AND (OBJMES=@objmes)
	END
	IF @metau>0
	BEGIN
		UPDATE O_PROD SET ACUMU=ISNULL(@totalu,0) WHERE (RUTA=@ruta) AND (CODIGO=@codigo) AND (OBJANO=@objano) AND (OBJMES=@objmes)
	END

	FETCH NEXT FROM productos INTO @codigo,@metam,@metau

END


CLOSE productos
DEALLOCATE productos 



GO
/****** Object:  StoredProcedure [dbo].[aspnet_AnyDataInTables]    Script Date: 2021/03/03 11:58:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_AnyDataInTables]
    @TablesToCheck int
AS
BEGIN
    -- Check Membership table if (@TablesToCheck & 1) is set
    IF ((@TablesToCheck & 1) <> 0 AND
        (EXISTS (SELECT name FROM sys.objects WHERE (name = N'vw_aspnet_MembershipUsers') AND (type = 'V'))))
    BEGIN
        IF (EXISTS(SELECT TOP 1 UserId FROM dbo.aspnet_Membership))
        BEGIN
            SELECT N'aspnet_Membership'
            RETURN
        END
    END

    -- Check aspnet_Roles table if (@TablesToCheck & 2) is set
    IF ((@TablesToCheck & 2) <> 0  AND
        (EXISTS (SELECT name FROM sys.objects WHERE (name = N'vw_aspnet_Roles') AND (type = 'V'))) )
    BEGIN
        IF (EXISTS(SELECT TOP 1 RoleId FROM dbo.aspnet_Roles))
        BEGIN
            SELECT N'aspnet_Roles'
            RETURN
        END
    END

    -- Check aspnet_Profile table if (@TablesToCheck & 4) is set
    IF ((@TablesToCheck & 4) <> 0  AND
        (EXISTS (SELECT name FROM sys.objects WHERE (name = N'vw_aspnet_Profiles') AND (type = 'V'))) )
    BEGIN
        IF (EXISTS(SELECT TOP 1 UserId FROM dbo.aspnet_Profile))
        BEGIN
            SELECT N'aspnet_Profile'
            RETURN
        END
    END

    -- Check aspnet_PersonalizationPerUser table if (@TablesToCheck & 8) is set
    IF ((@TablesToCheck & 8) <> 0  AND
        (EXISTS (SELECT name FROM sys.objects WHERE (name = N'vw_aspnet_WebPartState_User') AND (type = 'V'))) )
    BEGIN
        IF (EXISTS(SELECT TOP 1 UserId FROM dbo.aspnet_PersonalizationPerUser))
        BEGIN
            SELECT N'aspnet_PersonalizationPerUser'
            RETURN
        END
    END

    -- Check aspnet_PersonalizationPerUser table if (@TablesToCheck & 16) is set
    IF ((@TablesToCheck & 16) <> 0  AND
        (EXISTS (SELECT name FROM sys.objects WHERE (name = N'aspnet_WebEvent_LogEvent') AND (type = 'P'))) )
    BEGIN
        IF (EXISTS(SELECT TOP 1 * FROM dbo.aspnet_WebEvent_Events))
        BEGIN
            SELECT N'aspnet_WebEvent_Events'
            RETURN
        END
    END

    -- Check aspnet_Users table if (@TablesToCheck & 1,2,4 & 8) are all set
    IF ((@TablesToCheck & 1) <> 0 AND
        (@TablesToCheck & 2) <> 0 AND
        (@TablesToCheck & 4) <> 0 AND
        (@TablesToCheck & 8) <> 0 AND
        (@TablesToCheck & 32) <> 0 AND
        (@TablesToCheck & 128) <> 0 AND
        (@TablesToCheck & 256) <> 0 AND
        (@TablesToCheck & 512) <> 0 AND
        (@TablesToCheck & 1024) <> 0)
    BEGIN
        IF (EXISTS(SELECT TOP 1 UserId FROM dbo.aspnet_Users))
        BEGIN
            SELECT N'aspnet_Users'
            RETURN
        END
        IF (EXISTS(SELECT TOP 1 ApplicationId FROM dbo.aspnet_Applications))
        BEGIN
            SELECT N'aspnet_Applications'
            RETURN
        END
    END
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Applications_CreateApplication]    Script Date: 2021/03/03 11:58:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Applications_CreateApplication]
    @ApplicationName      nvarchar(256),
    @ApplicationId        uniqueidentifier OUTPUT
AS
BEGIN
    SELECT  @ApplicationId = ApplicationId FROM dbo.aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName

    IF(@ApplicationId IS NULL)
    BEGIN
        DECLARE @TranStarted   bit
        SET @TranStarted = 0

        IF( @@TRANCOUNT = 0 )
        BEGIN
	        BEGIN TRANSACTION
	        SET @TranStarted = 1
        END
        ELSE
    	    SET @TranStarted = 0

        SELECT  @ApplicationId = ApplicationId
        FROM dbo.aspnet_Applications WITH (UPDLOCK, HOLDLOCK)
        WHERE LOWER(@ApplicationName) = LoweredApplicationName

        IF(@ApplicationId IS NULL)
        BEGIN
            SELECT  @ApplicationId = NEWID()
            INSERT  dbo.aspnet_Applications (ApplicationId, ApplicationName, LoweredApplicationName)
            VALUES  (@ApplicationId, @ApplicationName, LOWER(@ApplicationName))
        END


        IF( @TranStarted = 1 )
        BEGIN
            IF(@@ERROR = 0)
            BEGIN
	        SET @TranStarted = 0
	        COMMIT TRANSACTION
            END
            ELSE
            BEGIN
                SET @TranStarted = 0
                ROLLBACK TRANSACTION
            END
        END
    END
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_CheckSchemaVersion]    Script Date: 2021/03/03 11:58:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_CheckSchemaVersion]
    @Feature                   nvarchar(128),
    @CompatibleSchemaVersion   nvarchar(128)
AS
BEGIN
    IF (EXISTS( SELECT  *
                FROM    dbo.aspnet_SchemaVersions
                WHERE   Feature = LOWER( @Feature ) AND
                        CompatibleSchemaVersion = @CompatibleSchemaVersion ))
        RETURN 0

    RETURN 1
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_ChangePasswordQuestionAndAnswer]    Script Date: 2021/03/03 11:58:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_ChangePasswordQuestionAndAnswer]
    @ApplicationName       nvarchar(256),
    @UserName              nvarchar(256),
    @NewPasswordQuestion   nvarchar(256),
    @NewPasswordAnswer     nvarchar(128)
AS
BEGIN
    DECLARE @UserId uniqueidentifier
    SELECT  @UserId = NULL
    SELECT  @UserId = u.UserId
    FROM    dbo.aspnet_Membership m, dbo.aspnet_Users u, dbo.aspnet_Applications a
    WHERE   LoweredUserName = LOWER(@UserName) AND
            u.ApplicationId = a.ApplicationId  AND
            LOWER(@ApplicationName) = a.LoweredApplicationName AND
            u.UserId = m.UserId
    IF (@UserId IS NULL)
    BEGIN
        RETURN(1)
    END

    UPDATE dbo.aspnet_Membership
    SET    PasswordQuestion = @NewPasswordQuestion, PasswordAnswer = @NewPasswordAnswer
    WHERE  UserId=@UserId
    RETURN(0)
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_CreateUser]    Script Date: 2021/03/03 11:58:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_CreateUser]
    @ApplicationName                        nvarchar(256),
    @UserName                               nvarchar(256),
    @Password                               nvarchar(128),
    @PasswordSalt                           nvarchar(128),
    @Email                                  nvarchar(256),
    @PasswordQuestion                       nvarchar(256),
    @PasswordAnswer                         nvarchar(128),
    @IsApproved                             bit,
    @CurrentTimeUtc                         datetime,
    @CreateDate                             datetime = NULL,
    @UniqueEmail                            int      = 0,
    @PasswordFormat                         int      = 0,
    @UserId                                 uniqueidentifier OUTPUT
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL

    DECLARE @NewUserId uniqueidentifier
    SELECT @NewUserId = NULL

    DECLARE @IsLockedOut bit
    SET @IsLockedOut = 0

    DECLARE @LastLockoutDate  datetime
    SET @LastLockoutDate = CONVERT( datetime, '17540101', 112 )

    DECLARE @FailedPasswordAttemptCount int
    SET @FailedPasswordAttemptCount = 0

    DECLARE @FailedPasswordAttemptWindowStart  datetime
    SET @FailedPasswordAttemptWindowStart = CONVERT( datetime, '17540101', 112 )

    DECLARE @FailedPasswordAnswerAttemptCount int
    SET @FailedPasswordAnswerAttemptCount = 0

    DECLARE @FailedPasswordAnswerAttemptWindowStart  datetime
    SET @FailedPasswordAnswerAttemptWindowStart = CONVERT( datetime, '17540101', 112 )

    DECLARE @NewUserCreated bit
    DECLARE @ReturnValue   int
    SET @ReturnValue = 0

    DECLARE @ErrorCode     int
    SET @ErrorCode = 0

    DECLARE @TranStarted   bit
    SET @TranStarted = 0

    IF( @@TRANCOUNT = 0 )
    BEGIN
	    BEGIN TRANSACTION
	    SET @TranStarted = 1
    END
    ELSE
    	SET @TranStarted = 0

    EXEC dbo.aspnet_Applications_CreateApplication @ApplicationName, @ApplicationId OUTPUT

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    SET @CreateDate = @CurrentTimeUtc

    SELECT  @NewUserId = UserId FROM dbo.aspnet_Users WHERE LOWER(@UserName) = LoweredUserName AND @ApplicationId = ApplicationId
    IF ( @NewUserId IS NULL )
    BEGIN
        SET @NewUserId = @UserId
        EXEC @ReturnValue = dbo.aspnet_Users_CreateUser @ApplicationId, @UserName, 0, @CreateDate, @NewUserId OUTPUT
        SET @NewUserCreated = 1
    END
    ELSE
    BEGIN
        SET @NewUserCreated = 0
        IF( @NewUserId <> @UserId AND @UserId IS NOT NULL )
        BEGIN
            SET @ErrorCode = 6
            GOTO Cleanup
        END
    END

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    IF( @ReturnValue = -1 )
    BEGIN
        SET @ErrorCode = 10
        GOTO Cleanup
    END

    IF ( EXISTS ( SELECT UserId
                  FROM   dbo.aspnet_Membership
                  WHERE  @NewUserId = UserId ) )
    BEGIN
        SET @ErrorCode = 6
        GOTO Cleanup
    END

    SET @UserId = @NewUserId

    IF (@UniqueEmail = 1)
    BEGIN
        IF (EXISTS (SELECT *
                    FROM  dbo.aspnet_Membership m WITH ( UPDLOCK, HOLDLOCK )
                    WHERE ApplicationId = @ApplicationId AND LoweredEmail = LOWER(@Email)))
        BEGIN
            SET @ErrorCode = 7
            GOTO Cleanup
        END
    END

    IF (@NewUserCreated = 0)
    BEGIN
        UPDATE dbo.aspnet_Users
        SET    LastActivityDate = @CreateDate
        WHERE  @UserId = UserId
        IF( @@ERROR <> 0 )
        BEGIN
            SET @ErrorCode = -1
            GOTO Cleanup
        END
    END

    INSERT INTO dbo.aspnet_Membership
                ( ApplicationId,
                  UserId,
                  Password,
                  PasswordSalt,
                  Email,
                  LoweredEmail,
                  PasswordQuestion,
                  PasswordAnswer,
                  PasswordFormat,
                  IsApproved,
                  IsLockedOut,
                  CreateDate,
                  LastLoginDate,
                  LastPasswordChangedDate,
                  LastLockoutDate,
                  FailedPasswordAttemptCount,
                  FailedPasswordAttemptWindowStart,
                  FailedPasswordAnswerAttemptCount,
                  FailedPasswordAnswerAttemptWindowStart )
         VALUES ( @ApplicationId,
                  @UserId,
                  @Password,
                  @PasswordSalt,
                  @Email,
                  LOWER(@Email),
                  @PasswordQuestion,
                  @PasswordAnswer,
                  @PasswordFormat,
                  @IsApproved,
                  @IsLockedOut,
                  @CreateDate,
                  @CreateDate,
                  @CreateDate,
                  @LastLockoutDate,
                  @FailedPasswordAttemptCount,
                  @FailedPasswordAttemptWindowStart,
                  @FailedPasswordAnswerAttemptCount,
                  @FailedPasswordAnswerAttemptWindowStart )

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    IF( @TranStarted = 1 )
    BEGIN
	    SET @TranStarted = 0
	    COMMIT TRANSACTION
    END

    RETURN 0

Cleanup:

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
    	ROLLBACK TRANSACTION
    END

    RETURN @ErrorCode

END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_FindUsersByEmail]    Script Date: 2021/03/03 11:58:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_FindUsersByEmail]
    @ApplicationName       nvarchar(256),
    @EmailToMatch          nvarchar(256),
    @PageIndex             int,
    @PageSize              int
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM dbo.aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN 0

    -- Set the page bounds
    DECLARE @PageLowerBound int
    DECLARE @PageUpperBound int
    DECLARE @TotalRecords   int
    SET @PageLowerBound = @PageSize * @PageIndex
    SET @PageUpperBound = @PageSize - 1 + @PageLowerBound

    -- Create a temp table TO store the select results
    CREATE TABLE #PageIndexForUsers
    (
        IndexId int IDENTITY (0, 1) NOT NULL,
        UserId uniqueidentifier
    )

    -- Insert into our temp table
    IF( @EmailToMatch IS NULL )
        INSERT INTO #PageIndexForUsers (UserId)
            SELECT u.UserId
            FROM   dbo.aspnet_Users u, dbo.aspnet_Membership m
            WHERE  u.ApplicationId = @ApplicationId AND m.UserId = u.UserId AND m.Email IS NULL
            ORDER BY m.LoweredEmail
    ELSE
        INSERT INTO #PageIndexForUsers (UserId)
            SELECT u.UserId
            FROM   dbo.aspnet_Users u, dbo.aspnet_Membership m
            WHERE  u.ApplicationId = @ApplicationId AND m.UserId = u.UserId AND m.LoweredEmail LIKE LOWER(@EmailToMatch)
            ORDER BY m.LoweredEmail

    SELECT  u.UserName, m.Email, m.PasswordQuestion, m.Comment, m.IsApproved,
            m.CreateDate,
            m.LastLoginDate,
            u.LastActivityDate,
            m.LastPasswordChangedDate,
            u.UserId, m.IsLockedOut,
            m.LastLockoutDate
    FROM   dbo.aspnet_Membership m, dbo.aspnet_Users u, #PageIndexForUsers p
    WHERE  u.UserId = p.UserId AND u.UserId = m.UserId AND
           p.IndexId >= @PageLowerBound AND p.IndexId <= @PageUpperBound
    ORDER BY m.LoweredEmail

    SELECT  @TotalRecords = COUNT(*)
    FROM    #PageIndexForUsers
    RETURN @TotalRecords
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_FindUsersByName]    Script Date: 2021/03/03 11:58:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_FindUsersByName]
    @ApplicationName       nvarchar(256),
    @UserNameToMatch       nvarchar(256),
    @PageIndex             int,
    @PageSize              int
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM dbo.aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN 0

    -- Set the page bounds
    DECLARE @PageLowerBound int
    DECLARE @PageUpperBound int
    DECLARE @TotalRecords   int
    SET @PageLowerBound = @PageSize * @PageIndex
    SET @PageUpperBound = @PageSize - 1 + @PageLowerBound

    -- Create a temp table TO store the select results
    CREATE TABLE #PageIndexForUsers
    (
        IndexId int IDENTITY (0, 1) NOT NULL,
        UserId uniqueidentifier
    )

    -- Insert into our temp table
    INSERT INTO #PageIndexForUsers (UserId)
        SELECT u.UserId
        FROM   dbo.aspnet_Users u, dbo.aspnet_Membership m
        WHERE  u.ApplicationId = @ApplicationId AND m.UserId = u.UserId AND u.LoweredUserName LIKE LOWER(@UserNameToMatch)
        ORDER BY u.UserName


    SELECT  u.UserName, m.Email, m.PasswordQuestion, m.Comment, m.IsApproved,
            m.CreateDate,
            m.LastLoginDate,
            u.LastActivityDate,
            m.LastPasswordChangedDate,
            u.UserId, m.IsLockedOut,
            m.LastLockoutDate
    FROM   dbo.aspnet_Membership m, dbo.aspnet_Users u, #PageIndexForUsers p
    WHERE  u.UserId = p.UserId AND u.UserId = m.UserId AND
           p.IndexId >= @PageLowerBound AND p.IndexId <= @PageUpperBound
    ORDER BY u.UserName

    SELECT  @TotalRecords = COUNT(*)
    FROM    #PageIndexForUsers
    RETURN @TotalRecords
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_GetAllUsers]    Script Date: 2021/03/03 11:58:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_GetAllUsers]
    @ApplicationName       nvarchar(256),
    @PageIndex             int,
    @PageSize              int
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM dbo.aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN 0


    -- Set the page bounds
    DECLARE @PageLowerBound int
    DECLARE @PageUpperBound int
    DECLARE @TotalRecords   int
    SET @PageLowerBound = @PageSize * @PageIndex
    SET @PageUpperBound = @PageSize - 1 + @PageLowerBound

    -- Create a temp table TO store the select results
    CREATE TABLE #PageIndexForUsers
    (
        IndexId int IDENTITY (0, 1) NOT NULL,
        UserId uniqueidentifier
    )

    -- Insert into our temp table
    INSERT INTO #PageIndexForUsers (UserId)
    SELECT u.UserId
    FROM   dbo.aspnet_Membership m, dbo.aspnet_Users u
    WHERE  u.ApplicationId = @ApplicationId AND u.UserId = m.UserId
    ORDER BY u.UserName

    SELECT @TotalRecords = @@ROWCOUNT

    SELECT u.UserName, m.Email, m.PasswordQuestion, m.Comment, m.IsApproved,
            m.CreateDate,
            m.LastLoginDate,
            u.LastActivityDate,
            m.LastPasswordChangedDate,
            u.UserId, m.IsLockedOut,
            m.LastLockoutDate
    FROM   dbo.aspnet_Membership m, dbo.aspnet_Users u, #PageIndexForUsers p
    WHERE  u.UserId = p.UserId AND u.UserId = m.UserId AND
           p.IndexId >= @PageLowerBound AND p.IndexId <= @PageUpperBound
    ORDER BY u.UserName
    RETURN @TotalRecords
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_GetNumberOfUsersOnline]    Script Date: 2021/03/03 11:58:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_GetNumberOfUsersOnline]
    @ApplicationName            nvarchar(256),
    @MinutesSinceLastInActive   int,
    @CurrentTimeUtc             datetime
AS
BEGIN
    DECLARE @DateActive datetime
    SELECT  @DateActive = DATEADD(minute,  -(@MinutesSinceLastInActive), @CurrentTimeUtc)

    DECLARE @NumOnline int
    SELECT  @NumOnline = COUNT(*)
    FROM    dbo.aspnet_Users u WITH(NOLOCK),
            dbo.aspnet_Applications a WITH(NOLOCK),
            dbo.aspnet_Membership m WITH(NOLOCK)
    WHERE   u.ApplicationId = a.ApplicationId                  AND
            LastActivityDate > @DateActive                     AND
            a.LoweredApplicationName = LOWER(@ApplicationName) AND
            u.UserId = m.UserId
    RETURN(@NumOnline)
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_GetPassword]    Script Date: 2021/03/03 11:58:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_GetPassword]
    @ApplicationName                nvarchar(256),
    @UserName                       nvarchar(256),
    @MaxInvalidPasswordAttempts     int,
    @PasswordAttemptWindow          int,
    @CurrentTimeUtc                 datetime,
    @PasswordAnswer                 nvarchar(128) = NULL
AS
BEGIN
    DECLARE @UserId                                 uniqueidentifier
    DECLARE @PasswordFormat                         int
    DECLARE @Password                               nvarchar(128)
    DECLARE @passAns                                nvarchar(128)
    DECLARE @IsLockedOut                            bit
    DECLARE @LastLockoutDate                        datetime
    DECLARE @FailedPasswordAttemptCount             int
    DECLARE @FailedPasswordAttemptWindowStart       datetime
    DECLARE @FailedPasswordAnswerAttemptCount       int
    DECLARE @FailedPasswordAnswerAttemptWindowStart datetime

    DECLARE @ErrorCode     int
    SET @ErrorCode = 0

    DECLARE @TranStarted   bit
    SET @TranStarted = 0

    IF( @@TRANCOUNT = 0 )
    BEGIN
	    BEGIN TRANSACTION
	    SET @TranStarted = 1
    END
    ELSE
    	SET @TranStarted = 0

    SELECT  @UserId = u.UserId,
            @Password = m.Password,
            @passAns = m.PasswordAnswer,
            @PasswordFormat = m.PasswordFormat,
            @IsLockedOut = m.IsLockedOut,
            @LastLockoutDate = m.LastLockoutDate,
            @FailedPasswordAttemptCount = m.FailedPasswordAttemptCount,
            @FailedPasswordAttemptWindowStart = m.FailedPasswordAttemptWindowStart,
            @FailedPasswordAnswerAttemptCount = m.FailedPasswordAnswerAttemptCount,
            @FailedPasswordAnswerAttemptWindowStart = m.FailedPasswordAnswerAttemptWindowStart
    FROM    dbo.aspnet_Applications a, dbo.aspnet_Users u, dbo.aspnet_Membership m WITH ( UPDLOCK )
    WHERE   LOWER(@ApplicationName) = a.LoweredApplicationName AND
            u.ApplicationId = a.ApplicationId    AND
            u.UserId = m.UserId AND
            LOWER(@UserName) = u.LoweredUserName

    IF ( @@rowcount = 0 )
    BEGIN
        SET @ErrorCode = 1
        GOTO Cleanup
    END

    IF( @IsLockedOut = 1 )
    BEGIN
        SET @ErrorCode = 99
        GOTO Cleanup
    END

    IF ( NOT( @PasswordAnswer IS NULL ) )
    BEGIN
        IF( ( @passAns IS NULL ) OR ( LOWER( @passAns ) <> LOWER( @PasswordAnswer ) ) )
        BEGIN
            IF( @CurrentTimeUtc > DATEADD( minute, @PasswordAttemptWindow, @FailedPasswordAnswerAttemptWindowStart ) )
            BEGIN
                SET @FailedPasswordAnswerAttemptWindowStart = @CurrentTimeUtc
                SET @FailedPasswordAnswerAttemptCount = 1
            END
            ELSE
            BEGIN
                SET @FailedPasswordAnswerAttemptCount = @FailedPasswordAnswerAttemptCount + 1
                SET @FailedPasswordAnswerAttemptWindowStart = @CurrentTimeUtc
            END

            BEGIN
                IF( @FailedPasswordAnswerAttemptCount >= @MaxInvalidPasswordAttempts )
                BEGIN
                    SET @IsLockedOut = 1
                    SET @LastLockoutDate = @CurrentTimeUtc
                END
            END

            SET @ErrorCode = 3
        END
        ELSE
        BEGIN
            IF( @FailedPasswordAnswerAttemptCount > 0 )
            BEGIN
                SET @FailedPasswordAnswerAttemptCount = 0
                SET @FailedPasswordAnswerAttemptWindowStart = CONVERT( datetime, '17540101', 112 )
            END
        END

        UPDATE dbo.aspnet_Membership
        SET IsLockedOut = @IsLockedOut, LastLockoutDate = @LastLockoutDate,
            FailedPasswordAttemptCount = @FailedPasswordAttemptCount,
            FailedPasswordAttemptWindowStart = @FailedPasswordAttemptWindowStart,
            FailedPasswordAnswerAttemptCount = @FailedPasswordAnswerAttemptCount,
            FailedPasswordAnswerAttemptWindowStart = @FailedPasswordAnswerAttemptWindowStart
        WHERE @UserId = UserId

        IF( @@ERROR <> 0 )
        BEGIN
            SET @ErrorCode = -1
            GOTO Cleanup
        END
    END

    IF( @TranStarted = 1 )
    BEGIN
	SET @TranStarted = 0
	COMMIT TRANSACTION
    END

    IF( @ErrorCode = 0 )
        SELECT @Password, @PasswordFormat

    RETURN @ErrorCode

Cleanup:

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
    	ROLLBACK TRANSACTION
    END

    RETURN @ErrorCode

END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_GetPasswordWithFormat]    Script Date: 2021/03/03 11:58:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_GetPasswordWithFormat]
    @ApplicationName                nvarchar(256),
    @UserName                       nvarchar(256),
    @UpdateLastLoginActivityDate    bit,
    @CurrentTimeUtc                 datetime
AS
BEGIN
    DECLARE @IsLockedOut                        bit
    DECLARE @UserId                             uniqueidentifier
    DECLARE @Password                           nvarchar(128)
    DECLARE @PasswordSalt                       nvarchar(128)
    DECLARE @PasswordFormat                     int
    DECLARE @FailedPasswordAttemptCount         int
    DECLARE @FailedPasswordAnswerAttemptCount   int
    DECLARE @IsApproved                         bit
    DECLARE @LastActivityDate                   datetime
    DECLARE @LastLoginDate                      datetime

    SELECT  @UserId          = NULL

    SELECT  @UserId = u.UserId, @IsLockedOut = m.IsLockedOut, @Password=Password, @PasswordFormat=PasswordFormat,
            @PasswordSalt=PasswordSalt, @FailedPasswordAttemptCount=FailedPasswordAttemptCount,
		    @FailedPasswordAnswerAttemptCount=FailedPasswordAnswerAttemptCount, @IsApproved=IsApproved,
            @LastActivityDate = LastActivityDate, @LastLoginDate = LastLoginDate
    FROM    dbo.aspnet_Applications a, dbo.aspnet_Users u, dbo.aspnet_Membership m
    WHERE   LOWER(@ApplicationName) = a.LoweredApplicationName AND
            u.ApplicationId = a.ApplicationId    AND
            u.UserId = m.UserId AND
            LOWER(@UserName) = u.LoweredUserName

    IF (@UserId IS NULL)
        RETURN 1

    IF (@IsLockedOut = 1)
        RETURN 99

    SELECT   @Password, @PasswordFormat, @PasswordSalt, @FailedPasswordAttemptCount,
             @FailedPasswordAnswerAttemptCount, @IsApproved, @LastLoginDate, @LastActivityDate

    IF (@UpdateLastLoginActivityDate = 1 AND @IsApproved = 1)
    BEGIN
        UPDATE  dbo.aspnet_Membership
        SET     LastLoginDate = @CurrentTimeUtc
        WHERE   UserId = @UserId

        UPDATE  dbo.aspnet_Users
        SET     LastActivityDate = @CurrentTimeUtc
        WHERE   @UserId = UserId
    END


    RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_GetUserByEmail]    Script Date: 2021/03/03 11:58:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_GetUserByEmail]
    @ApplicationName  nvarchar(256),
    @Email            nvarchar(256)
AS
BEGIN
    IF( @Email IS NULL )
        SELECT  u.UserName
        FROM    dbo.aspnet_Applications a, dbo.aspnet_Users u, dbo.aspnet_Membership m
        WHERE   LOWER(@ApplicationName) = a.LoweredApplicationName AND
                u.ApplicationId = a.ApplicationId    AND
                u.UserId = m.UserId AND
                m.LoweredEmail IS NULL
    ELSE
        SELECT  u.UserName
        FROM    dbo.aspnet_Applications a, dbo.aspnet_Users u, dbo.aspnet_Membership m
        WHERE   LOWER(@ApplicationName) = a.LoweredApplicationName AND
                u.ApplicationId = a.ApplicationId    AND
                u.UserId = m.UserId AND
                LOWER(@Email) = m.LoweredEmail

    IF (@@rowcount = 0)
        RETURN(1)
    RETURN(0)
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_GetUserByName]    Script Date: 2021/03/03 11:58:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_GetUserByName]
    @ApplicationName      nvarchar(256),
    @UserName             nvarchar(256),
    @CurrentTimeUtc       datetime,
    @UpdateLastActivity   bit = 0
AS
BEGIN
    DECLARE @UserId uniqueidentifier

    IF (@UpdateLastActivity = 1)
    BEGIN
        -- select user ID from aspnet_users table
        SELECT TOP 1 @UserId = u.UserId
        FROM    dbo.aspnet_Applications a, dbo.aspnet_Users u, dbo.aspnet_Membership m
        WHERE    LOWER(@ApplicationName) = a.LoweredApplicationName AND
                u.ApplicationId = a.ApplicationId    AND
                LOWER(@UserName) = u.LoweredUserName AND u.UserId = m.UserId

        IF (@@ROWCOUNT = 0) -- Username not found
            RETURN -1

        UPDATE   dbo.aspnet_Users
        SET      LastActivityDate = @CurrentTimeUtc
        WHERE    @UserId = UserId

        SELECT m.Email, m.PasswordQuestion, m.Comment, m.IsApproved,
                m.CreateDate, m.LastLoginDate, u.LastActivityDate, m.LastPasswordChangedDate,
                u.UserId, m.IsLockedOut, m.LastLockoutDate
        FROM    dbo.aspnet_Applications a, dbo.aspnet_Users u, dbo.aspnet_Membership m
        WHERE  @UserId = u.UserId AND u.UserId = m.UserId 
    END
    ELSE
    BEGIN
        SELECT TOP 1 m.Email, m.PasswordQuestion, m.Comment, m.IsApproved,
                m.CreateDate, m.LastLoginDate, u.LastActivityDate, m.LastPasswordChangedDate,
                u.UserId, m.IsLockedOut,m.LastLockoutDate
        FROM    dbo.aspnet_Applications a, dbo.aspnet_Users u, dbo.aspnet_Membership m
        WHERE    LOWER(@ApplicationName) = a.LoweredApplicationName AND
                u.ApplicationId = a.ApplicationId    AND
                LOWER(@UserName) = u.LoweredUserName AND u.UserId = m.UserId

        IF (@@ROWCOUNT = 0) -- Username not found
            RETURN -1
    END

    RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_GetUserByUserId]    Script Date: 2021/03/03 11:58:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_GetUserByUserId]
    @UserId               uniqueidentifier,
    @CurrentTimeUtc       datetime,
    @UpdateLastActivity   bit = 0
AS
BEGIN
    IF ( @UpdateLastActivity = 1 )
    BEGIN
        UPDATE   dbo.aspnet_Users
        SET      LastActivityDate = @CurrentTimeUtc
        FROM     dbo.aspnet_Users
        WHERE    @UserId = UserId

        IF ( @@ROWCOUNT = 0 ) -- User ID not found
            RETURN -1
    END

    SELECT  m.Email, m.PasswordQuestion, m.Comment, m.IsApproved,
            m.CreateDate, m.LastLoginDate, u.LastActivityDate,
            m.LastPasswordChangedDate, u.UserName, m.IsLockedOut,
            m.LastLockoutDate
    FROM    dbo.aspnet_Users u, dbo.aspnet_Membership m
    WHERE   @UserId = u.UserId AND u.UserId = m.UserId

    IF ( @@ROWCOUNT = 0 ) -- User ID not found
       RETURN -1

    RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_ResetPassword]    Script Date: 2021/03/03 11:58:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_ResetPassword]
    @ApplicationName             nvarchar(256),
    @UserName                    nvarchar(256),
    @NewPassword                 nvarchar(128),
    @MaxInvalidPasswordAttempts  int,
    @PasswordAttemptWindow       int,
    @PasswordSalt                nvarchar(128),
    @CurrentTimeUtc              datetime,
    @PasswordFormat              int = 0,
    @PasswordAnswer              nvarchar(128) = NULL
AS
BEGIN
    DECLARE @IsLockedOut                            bit
    DECLARE @LastLockoutDate                        datetime
    DECLARE @FailedPasswordAttemptCount             int
    DECLARE @FailedPasswordAttemptWindowStart       datetime
    DECLARE @FailedPasswordAnswerAttemptCount       int
    DECLARE @FailedPasswordAnswerAttemptWindowStart datetime

    DECLARE @UserId                                 uniqueidentifier
    SET     @UserId = NULL

    DECLARE @ErrorCode     int
    SET @ErrorCode = 0

    DECLARE @TranStarted   bit
    SET @TranStarted = 0

    IF( @@TRANCOUNT = 0 )
    BEGIN
	    BEGIN TRANSACTION
	    SET @TranStarted = 1
    END
    ELSE
    	SET @TranStarted = 0

    SELECT  @UserId = u.UserId
    FROM    dbo.aspnet_Users u, dbo.aspnet_Applications a, dbo.aspnet_Membership m
    WHERE   LoweredUserName = LOWER(@UserName) AND
            u.ApplicationId = a.ApplicationId  AND
            LOWER(@ApplicationName) = a.LoweredApplicationName AND
            u.UserId = m.UserId

    IF ( @UserId IS NULL )
    BEGIN
        SET @ErrorCode = 1
        GOTO Cleanup
    END

    SELECT @IsLockedOut = IsLockedOut,
           @LastLockoutDate = LastLockoutDate,
           @FailedPasswordAttemptCount = FailedPasswordAttemptCount,
           @FailedPasswordAttemptWindowStart = FailedPasswordAttemptWindowStart,
           @FailedPasswordAnswerAttemptCount = FailedPasswordAnswerAttemptCount,
           @FailedPasswordAnswerAttemptWindowStart = FailedPasswordAnswerAttemptWindowStart
    FROM dbo.aspnet_Membership WITH ( UPDLOCK )
    WHERE @UserId = UserId

    IF( @IsLockedOut = 1 )
    BEGIN
        SET @ErrorCode = 99
        GOTO Cleanup
    END

    UPDATE dbo.aspnet_Membership
    SET    Password = @NewPassword,
           LastPasswordChangedDate = @CurrentTimeUtc,
           PasswordFormat = @PasswordFormat,
           PasswordSalt = @PasswordSalt
    WHERE  @UserId = UserId AND
           ( ( @PasswordAnswer IS NULL ) OR ( LOWER( PasswordAnswer ) = LOWER( @PasswordAnswer ) ) )

    IF ( @@ROWCOUNT = 0 )
        BEGIN
            IF( @CurrentTimeUtc > DATEADD( minute, @PasswordAttemptWindow, @FailedPasswordAnswerAttemptWindowStart ) )
            BEGIN
                SET @FailedPasswordAnswerAttemptWindowStart = @CurrentTimeUtc
                SET @FailedPasswordAnswerAttemptCount = 1
            END
            ELSE
            BEGIN
                SET @FailedPasswordAnswerAttemptWindowStart = @CurrentTimeUtc
                SET @FailedPasswordAnswerAttemptCount = @FailedPasswordAnswerAttemptCount + 1
            END

            BEGIN
                IF( @FailedPasswordAnswerAttemptCount >= @MaxInvalidPasswordAttempts )
                BEGIN
                    SET @IsLockedOut = 1
                    SET @LastLockoutDate = @CurrentTimeUtc
                END
            END

            SET @ErrorCode = 3
        END
    ELSE
        BEGIN
            IF( @FailedPasswordAnswerAttemptCount > 0 )
            BEGIN
                SET @FailedPasswordAnswerAttemptCount = 0
                SET @FailedPasswordAnswerAttemptWindowStart = CONVERT( datetime, '17540101', 112 )
            END
        END

    IF( NOT ( @PasswordAnswer IS NULL ) )
    BEGIN
        UPDATE dbo.aspnet_Membership
        SET IsLockedOut = @IsLockedOut, LastLockoutDate = @LastLockoutDate,
            FailedPasswordAttemptCount = @FailedPasswordAttemptCount,
            FailedPasswordAttemptWindowStart = @FailedPasswordAttemptWindowStart,
            FailedPasswordAnswerAttemptCount = @FailedPasswordAnswerAttemptCount,
            FailedPasswordAnswerAttemptWindowStart = @FailedPasswordAnswerAttemptWindowStart
        WHERE @UserId = UserId

        IF( @@ERROR <> 0 )
        BEGIN
            SET @ErrorCode = -1
            GOTO Cleanup
        END
    END

    IF( @TranStarted = 1 )
    BEGIN
	SET @TranStarted = 0
	COMMIT TRANSACTION
    END

    RETURN @ErrorCode

Cleanup:

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
    	ROLLBACK TRANSACTION
    END

    RETURN @ErrorCode

END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_SetPassword]    Script Date: 2021/03/03 11:58:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_SetPassword]
    @ApplicationName  nvarchar(256),
    @UserName         nvarchar(256),
    @NewPassword      nvarchar(128),
    @PasswordSalt     nvarchar(128),
    @CurrentTimeUtc   datetime,
    @PasswordFormat   int = 0
AS
BEGIN
    DECLARE @UserId uniqueidentifier
    SELECT  @UserId = NULL
    SELECT  @UserId = u.UserId
    FROM    dbo.aspnet_Users u, dbo.aspnet_Applications a, dbo.aspnet_Membership m
    WHERE   LoweredUserName = LOWER(@UserName) AND
            u.ApplicationId = a.ApplicationId  AND
            LOWER(@ApplicationName) = a.LoweredApplicationName AND
            u.UserId = m.UserId

    IF (@UserId IS NULL)
        RETURN(1)

    UPDATE dbo.aspnet_Membership
    SET Password = @NewPassword, PasswordFormat = @PasswordFormat, PasswordSalt = @PasswordSalt,
        LastPasswordChangedDate = @CurrentTimeUtc
    WHERE @UserId = UserId
    RETURN(0)
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_UnlockUser]    Script Date: 2021/03/03 11:58:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_UnlockUser]
    @ApplicationName                         nvarchar(256),
    @UserName                                nvarchar(256)
AS
BEGIN
    DECLARE @UserId uniqueidentifier
    SELECT  @UserId = NULL
    SELECT  @UserId = u.UserId
    FROM    dbo.aspnet_Users u, dbo.aspnet_Applications a, dbo.aspnet_Membership m
    WHERE   LoweredUserName = LOWER(@UserName) AND
            u.ApplicationId = a.ApplicationId  AND
            LOWER(@ApplicationName) = a.LoweredApplicationName AND
            u.UserId = m.UserId

    IF ( @UserId IS NULL )
        RETURN 1

    UPDATE dbo.aspnet_Membership
    SET IsLockedOut = 0,
        FailedPasswordAttemptCount = 0,
        FailedPasswordAttemptWindowStart = CONVERT( datetime, '17540101', 112 ),
        FailedPasswordAnswerAttemptCount = 0,
        FailedPasswordAnswerAttemptWindowStart = CONVERT( datetime, '17540101', 112 ),
        LastLockoutDate = CONVERT( datetime, '17540101', 112 )
    WHERE @UserId = UserId

    RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_UpdateUser]    Script Date: 2021/03/03 11:58:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_UpdateUser]
    @ApplicationName      nvarchar(256),
    @UserName             nvarchar(256),
    @Email                nvarchar(256),
    @Comment              ntext,
    @IsApproved           bit,
    @LastLoginDate        datetime,
    @LastActivityDate     datetime,
    @UniqueEmail          int,
    @CurrentTimeUtc       datetime
AS
BEGIN
    DECLARE @UserId uniqueidentifier
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @UserId = NULL
    SELECT  @UserId = u.UserId, @ApplicationId = a.ApplicationId
    FROM    dbo.aspnet_Users u, dbo.aspnet_Applications a, dbo.aspnet_Membership m
    WHERE   LoweredUserName = LOWER(@UserName) AND
            u.ApplicationId = a.ApplicationId  AND
            LOWER(@ApplicationName) = a.LoweredApplicationName AND
            u.UserId = m.UserId

    IF (@UserId IS NULL)
        RETURN(1)

    IF (@UniqueEmail = 1)
    BEGIN
        IF (EXISTS (SELECT *
                    FROM  dbo.aspnet_Membership WITH (UPDLOCK, HOLDLOCK)
                    WHERE ApplicationId = @ApplicationId  AND @UserId <> UserId AND LoweredEmail = LOWER(@Email)))
        BEGIN
            RETURN(7)
        END
    END

    DECLARE @TranStarted   bit
    SET @TranStarted = 0

    IF( @@TRANCOUNT = 0 )
    BEGIN
	    BEGIN TRANSACTION
	    SET @TranStarted = 1
    END
    ELSE
	SET @TranStarted = 0

    UPDATE dbo.aspnet_Users WITH (ROWLOCK)
    SET
         LastActivityDate = @LastActivityDate
    WHERE
       @UserId = UserId

    IF( @@ERROR <> 0 )
        GOTO Cleanup

    UPDATE dbo.aspnet_Membership WITH (ROWLOCK)
    SET
         Email            = @Email,
         LoweredEmail     = LOWER(@Email),
         Comment          = @Comment,
         IsApproved       = @IsApproved,
         LastLoginDate    = @LastLoginDate
    WHERE
       @UserId = UserId

    IF( @@ERROR <> 0 )
        GOTO Cleanup

    IF( @TranStarted = 1 )
    BEGIN
	SET @TranStarted = 0
	COMMIT TRANSACTION
    END

    RETURN 0

Cleanup:

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
    	ROLLBACK TRANSACTION
    END

    RETURN -1
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_UpdateUserInfo]    Script Date: 2021/03/03 11:58:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_UpdateUserInfo]
    @ApplicationName                nvarchar(256),
    @UserName                       nvarchar(256),
    @IsPasswordCorrect              bit,
    @UpdateLastLoginActivityDate    bit,
    @MaxInvalidPasswordAttempts     int,
    @PasswordAttemptWindow          int,
    @CurrentTimeUtc                 datetime,
    @LastLoginDate                  datetime,
    @LastActivityDate               datetime
AS
BEGIN
    DECLARE @UserId                                 uniqueidentifier
    DECLARE @IsApproved                             bit
    DECLARE @IsLockedOut                            bit
    DECLARE @LastLockoutDate                        datetime
    DECLARE @FailedPasswordAttemptCount             int
    DECLARE @FailedPasswordAttemptWindowStart       datetime
    DECLARE @FailedPasswordAnswerAttemptCount       int
    DECLARE @FailedPasswordAnswerAttemptWindowStart datetime

    DECLARE @ErrorCode     int
    SET @ErrorCode = 0

    DECLARE @TranStarted   bit
    SET @TranStarted = 0

    IF( @@TRANCOUNT = 0 )
    BEGIN
	    BEGIN TRANSACTION
	    SET @TranStarted = 1
    END
    ELSE
    	SET @TranStarted = 0

    SELECT  @UserId = u.UserId,
            @IsApproved = m.IsApproved,
            @IsLockedOut = m.IsLockedOut,
            @LastLockoutDate = m.LastLockoutDate,
            @FailedPasswordAttemptCount = m.FailedPasswordAttemptCount,
            @FailedPasswordAttemptWindowStart = m.FailedPasswordAttemptWindowStart,
            @FailedPasswordAnswerAttemptCount = m.FailedPasswordAnswerAttemptCount,
            @FailedPasswordAnswerAttemptWindowStart = m.FailedPasswordAnswerAttemptWindowStart
    FROM    dbo.aspnet_Applications a, dbo.aspnet_Users u, dbo.aspnet_Membership m WITH ( UPDLOCK )
    WHERE   LOWER(@ApplicationName) = a.LoweredApplicationName AND
            u.ApplicationId = a.ApplicationId    AND
            u.UserId = m.UserId AND
            LOWER(@UserName) = u.LoweredUserName

    IF ( @@rowcount = 0 )
    BEGIN
        SET @ErrorCode = 1
        GOTO Cleanup
    END

    IF( @IsLockedOut = 1 )
    BEGIN
        GOTO Cleanup
    END

    IF( @IsPasswordCorrect = 0 )
    BEGIN
        IF( @CurrentTimeUtc > DATEADD( minute, @PasswordAttemptWindow, @FailedPasswordAttemptWindowStart ) )
        BEGIN
            SET @FailedPasswordAttemptWindowStart = @CurrentTimeUtc
            SET @FailedPasswordAttemptCount = 1
        END
        ELSE
        BEGIN
            SET @FailedPasswordAttemptWindowStart = @CurrentTimeUtc
            SET @FailedPasswordAttemptCount = @FailedPasswordAttemptCount + 1
        END

        BEGIN
            IF( @FailedPasswordAttemptCount >= @MaxInvalidPasswordAttempts )
            BEGIN
                SET @IsLockedOut = 1
                SET @LastLockoutDate = @CurrentTimeUtc
            END
        END
    END
    ELSE
    BEGIN
        IF( @FailedPasswordAttemptCount > 0 OR @FailedPasswordAnswerAttemptCount > 0 )
        BEGIN
            SET @FailedPasswordAttemptCount = 0
            SET @FailedPasswordAttemptWindowStart = CONVERT( datetime, '17540101', 112 )
            SET @FailedPasswordAnswerAttemptCount = 0
            SET @FailedPasswordAnswerAttemptWindowStart = CONVERT( datetime, '17540101', 112 )
            SET @LastLockoutDate = CONVERT( datetime, '17540101', 112 )
        END
    END

    IF( @UpdateLastLoginActivityDate = 1 )
    BEGIN
        UPDATE  dbo.aspnet_Users
        SET     LastActivityDate = @LastActivityDate
        WHERE   @UserId = UserId

        IF( @@ERROR <> 0 )
        BEGIN
            SET @ErrorCode = -1
            GOTO Cleanup
        END

        UPDATE  dbo.aspnet_Membership
        SET     LastLoginDate = @LastLoginDate
        WHERE   UserId = @UserId

        IF( @@ERROR <> 0 )
        BEGIN
            SET @ErrorCode = -1
            GOTO Cleanup
        END
    END


    UPDATE dbo.aspnet_Membership
    SET IsLockedOut = @IsLockedOut, LastLockoutDate = @LastLockoutDate,
        FailedPasswordAttemptCount = @FailedPasswordAttemptCount,
        FailedPasswordAttemptWindowStart = @FailedPasswordAttemptWindowStart,
        FailedPasswordAnswerAttemptCount = @FailedPasswordAnswerAttemptCount,
        FailedPasswordAnswerAttemptWindowStart = @FailedPasswordAnswerAttemptWindowStart
    WHERE @UserId = UserId

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    IF( @TranStarted = 1 )
    BEGIN
	SET @TranStarted = 0
	COMMIT TRANSACTION
    END

    RETURN @ErrorCode

Cleanup:

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
    	ROLLBACK TRANSACTION
    END

    RETURN @ErrorCode

END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_RegisterSchemaVersion]    Script Date: 2021/03/03 11:58:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_RegisterSchemaVersion]
    @Feature                   nvarchar(128),
    @CompatibleSchemaVersion   nvarchar(128),
    @IsCurrentVersion          bit,
    @RemoveIncompatibleSchema  bit
AS
BEGIN
    IF( @RemoveIncompatibleSchema = 1 )
    BEGIN
        DELETE FROM dbo.aspnet_SchemaVersions WHERE Feature = LOWER( @Feature )
    END
    ELSE
    BEGIN
        IF( @IsCurrentVersion = 1 )
        BEGIN
            UPDATE dbo.aspnet_SchemaVersions
            SET IsCurrentVersion = 0
            WHERE Feature = LOWER( @Feature )
        END
    END

    INSERT  dbo.aspnet_SchemaVersions( Feature, CompatibleSchemaVersion, IsCurrentVersion )
    VALUES( LOWER( @Feature ), @CompatibleSchemaVersion, @IsCurrentVersion )
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Roles_CreateRole]    Script Date: 2021/03/03 11:58:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Roles_CreateRole]
    @ApplicationName  nvarchar(256),
    @RoleName         nvarchar(256)
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL

    DECLARE @ErrorCode     int
    SET @ErrorCode = 0

    DECLARE @TranStarted   bit
    SET @TranStarted = 0

    IF( @@TRANCOUNT = 0 )
    BEGIN
        BEGIN TRANSACTION
        SET @TranStarted = 1
    END
    ELSE
        SET @TranStarted = 0

    EXEC dbo.aspnet_Applications_CreateApplication @ApplicationName, @ApplicationId OUTPUT

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    IF (EXISTS(SELECT RoleId FROM dbo.aspnet_Roles WHERE LoweredRoleName = LOWER(@RoleName) AND ApplicationId = @ApplicationId))
    BEGIN
        SET @ErrorCode = 1
        GOTO Cleanup
    END

    INSERT INTO dbo.aspnet_Roles
                (ApplicationId, RoleName, LoweredRoleName)
         VALUES (@ApplicationId, @RoleName, LOWER(@RoleName))

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
        COMMIT TRANSACTION
    END

    RETURN(0)

Cleanup:

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
        ROLLBACK TRANSACTION
    END

    RETURN @ErrorCode

END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Roles_DeleteRole]    Script Date: 2021/03/03 11:58:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Roles_DeleteRole]
    @ApplicationName            nvarchar(256),
    @RoleName                   nvarchar(256),
    @DeleteOnlyIfRoleIsEmpty    bit
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN(1)

    DECLARE @ErrorCode     int
    SET @ErrorCode = 0

    DECLARE @TranStarted   bit
    SET @TranStarted = 0

    IF( @@TRANCOUNT = 0 )
    BEGIN
        BEGIN TRANSACTION
        SET @TranStarted = 1
    END
    ELSE
        SET @TranStarted = 0

    DECLARE @RoleId   uniqueidentifier
    SELECT  @RoleId = NULL
    SELECT  @RoleId = RoleId FROM dbo.aspnet_Roles WHERE LoweredRoleName = LOWER(@RoleName) AND ApplicationId = @ApplicationId

    IF (@RoleId IS NULL)
    BEGIN
        SELECT @ErrorCode = 1
        GOTO Cleanup
    END
    IF (@DeleteOnlyIfRoleIsEmpty <> 0)
    BEGIN
        IF (EXISTS (SELECT RoleId FROM dbo.aspnet_UsersInRoles  WHERE @RoleId = RoleId))
        BEGIN
            SELECT @ErrorCode = 2
            GOTO Cleanup
        END
    END


    DELETE FROM dbo.aspnet_UsersInRoles  WHERE @RoleId = RoleId

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    DELETE FROM dbo.aspnet_Roles WHERE @RoleId = RoleId  AND ApplicationId = @ApplicationId

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
        COMMIT TRANSACTION
    END

    RETURN(0)

Cleanup:

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
        ROLLBACK TRANSACTION
    END

    RETURN @ErrorCode
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Roles_GetAllRoles]    Script Date: 2021/03/03 11:58:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Roles_GetAllRoles] (
    @ApplicationName           nvarchar(256))
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN
    SELECT RoleName
    FROM   dbo.aspnet_Roles WHERE ApplicationId = @ApplicationId
    ORDER BY RoleName
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Roles_RoleExists]    Script Date: 2021/03/03 11:58:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Roles_RoleExists]
    @ApplicationName  nvarchar(256),
    @RoleName         nvarchar(256)
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN(0)
    IF (EXISTS (SELECT RoleName FROM dbo.aspnet_Roles WHERE LOWER(@RoleName) = LoweredRoleName AND ApplicationId = @ApplicationId ))
        RETURN(1)
    ELSE
        RETURN(0)
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Setup_RemoveAllRoleMembers]    Script Date: 2021/03/03 11:58:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Setup_RemoveAllRoleMembers]
    @name   sysname
AS
BEGIN
    CREATE TABLE #aspnet_RoleMembers
    (
        Group_name      sysname,
        Group_id        smallint,
        Users_in_group  sysname,
        User_id         smallint
    )

    INSERT INTO #aspnet_RoleMembers
    EXEC sp_helpuser @name

    DECLARE @user_id smallint
    DECLARE @cmd nvarchar(500)
    DECLARE c1 cursor FORWARD_ONLY FOR
        SELECT User_id FROM #aspnet_RoleMembers

    OPEN c1

    FETCH c1 INTO @user_id
    WHILE (@@fetch_status = 0)
    BEGIN
        SET @cmd = 'EXEC sp_droprolemember ' + '''' + @name + ''', ''' + USER_NAME(@user_id) + ''''
        EXEC (@cmd)
        FETCH c1 INTO @user_id
    END

    CLOSE c1
    DEALLOCATE c1
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_UnRegisterSchemaVersion]    Script Date: 2021/03/03 11:58:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_UnRegisterSchemaVersion]
    @Feature                   nvarchar(128),
    @CompatibleSchemaVersion   nvarchar(128)
AS
BEGIN
    DELETE FROM dbo.aspnet_SchemaVersions
        WHERE   Feature = LOWER(@Feature) AND @CompatibleSchemaVersion = CompatibleSchemaVersion
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Users_CreateUser]    Script Date: 2021/03/03 11:58:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Users_CreateUser]
    @ApplicationId    uniqueidentifier,
    @UserName         nvarchar(256),
    @IsUserAnonymous  bit,
    @LastActivityDate DATETIME,
    @UserId           uniqueidentifier OUTPUT
AS
BEGIN
    IF( @UserId IS NULL )
        SELECT @UserId = NEWID()
    ELSE
    BEGIN
        IF( EXISTS( SELECT UserId FROM dbo.aspnet_Users
                    WHERE @UserId = UserId ) )
            RETURN -1
    END

    INSERT dbo.aspnet_Users (ApplicationId, UserId, UserName, LoweredUserName, IsAnonymous, LastActivityDate)
    VALUES (@ApplicationId, @UserId, @UserName, LOWER(@UserName), @IsUserAnonymous, @LastActivityDate)

    RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Users_DeleteUser]    Script Date: 2021/03/03 11:58:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Users_DeleteUser]
    @ApplicationName  nvarchar(256),
    @UserName         nvarchar(256),
    @TablesToDeleteFrom int,
    @NumTablesDeletedFrom int OUTPUT
AS
BEGIN
    DECLARE @UserId               uniqueidentifier
    SELECT  @UserId               = NULL
    SELECT  @NumTablesDeletedFrom = 0

    DECLARE @TranStarted   bit
    SET @TranStarted = 0

    IF( @@TRANCOUNT = 0 )
    BEGIN
	    BEGIN TRANSACTION
	    SET @TranStarted = 1
    END
    ELSE
	SET @TranStarted = 0

    DECLARE @ErrorCode   int
    DECLARE @RowCount    int

    SET @ErrorCode = 0
    SET @RowCount  = 0

    SELECT  @UserId = u.UserId
    FROM    dbo.aspnet_Users u, dbo.aspnet_Applications a
    WHERE   u.LoweredUserName       = LOWER(@UserName)
        AND u.ApplicationId         = a.ApplicationId
        AND LOWER(@ApplicationName) = a.LoweredApplicationName

    IF (@UserId IS NULL)
    BEGIN
        GOTO Cleanup
    END

    -- Delete from Membership table if (@TablesToDeleteFrom & 1) is set
    IF ((@TablesToDeleteFrom & 1) <> 0 AND
        (EXISTS (SELECT name FROM sys.objects WHERE (name = N'vw_aspnet_MembershipUsers') AND (type = 'V'))))
    BEGIN
        DELETE FROM dbo.aspnet_Membership WHERE @UserId = UserId

        SELECT @ErrorCode = @@ERROR,
               @RowCount = @@ROWCOUNT

        IF( @ErrorCode <> 0 )
            GOTO Cleanup

        IF (@RowCount <> 0)
            SELECT  @NumTablesDeletedFrom = @NumTablesDeletedFrom + 1
    END

    -- Delete from aspnet_UsersInRoles table if (@TablesToDeleteFrom & 2) is set
    IF ((@TablesToDeleteFrom & 2) <> 0  AND
        (EXISTS (SELECT name FROM sys.objects WHERE (name = N'vw_aspnet_UsersInRoles') AND (type = 'V'))) )
    BEGIN
        DELETE FROM dbo.aspnet_UsersInRoles WHERE @UserId = UserId

        SELECT @ErrorCode = @@ERROR,
                @RowCount = @@ROWCOUNT

        IF( @ErrorCode <> 0 )
            GOTO Cleanup

        IF (@RowCount <> 0)
            SELECT  @NumTablesDeletedFrom = @NumTablesDeletedFrom + 1
    END

    -- Delete from aspnet_Profile table if (@TablesToDeleteFrom & 4) is set
    IF ((@TablesToDeleteFrom & 4) <> 0  AND
        (EXISTS (SELECT name FROM sys.objects WHERE (name = N'vw_aspnet_Profiles') AND (type = 'V'))) )
    BEGIN
        DELETE FROM dbo.aspnet_Profile WHERE @UserId = UserId

        SELECT @ErrorCode = @@ERROR,
                @RowCount = @@ROWCOUNT

        IF( @ErrorCode <> 0 )
            GOTO Cleanup

        IF (@RowCount <> 0)
            SELECT  @NumTablesDeletedFrom = @NumTablesDeletedFrom + 1
    END

    -- Delete from aspnet_PersonalizationPerUser table if (@TablesToDeleteFrom & 8) is set
    IF ((@TablesToDeleteFrom & 8) <> 0  AND
        (EXISTS (SELECT name FROM sys.objects WHERE (name = N'vw_aspnet_WebPartState_User') AND (type = 'V'))) )
    BEGIN
        DELETE FROM dbo.aspnet_PersonalizationPerUser WHERE @UserId = UserId

        SELECT @ErrorCode = @@ERROR,
                @RowCount = @@ROWCOUNT

        IF( @ErrorCode <> 0 )
            GOTO Cleanup

        IF (@RowCount <> 0)
            SELECT  @NumTablesDeletedFrom = @NumTablesDeletedFrom + 1
    END

    -- Delete from aspnet_Users table if (@TablesToDeleteFrom & 1,2,4 & 8) are all set
    IF ((@TablesToDeleteFrom & 1) <> 0 AND
        (@TablesToDeleteFrom & 2) <> 0 AND
        (@TablesToDeleteFrom & 4) <> 0 AND
        (@TablesToDeleteFrom & 8) <> 0 AND
        (EXISTS (SELECT UserId FROM dbo.aspnet_Users WHERE @UserId = UserId)))
    BEGIN
        DELETE FROM dbo.aspnet_Users WHERE @UserId = UserId

        SELECT @ErrorCode = @@ERROR,
                @RowCount = @@ROWCOUNT

        IF( @ErrorCode <> 0 )
            GOTO Cleanup

        IF (@RowCount <> 0)
            SELECT  @NumTablesDeletedFrom = @NumTablesDeletedFrom + 1
    END

    IF( @TranStarted = 1 )
    BEGIN
	    SET @TranStarted = 0
	    COMMIT TRANSACTION
    END

    RETURN 0

Cleanup:
    SET @NumTablesDeletedFrom = 0

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
	    ROLLBACK TRANSACTION
    END

    RETURN @ErrorCode

END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_UsersInRoles_AddUsersToRoles]    Script Date: 2021/03/03 11:58:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[aspnet_UsersInRoles_AddUsersToRoles]
	@ApplicationName  nvarchar(256),
	@UserNames		  nvarchar(4000),
	@RoleNames		  nvarchar(4000),
	@CurrentTimeUtc   datetime
AS
BEGIN
	DECLARE @AppId uniqueidentifier
	SELECT  @AppId = NULL
	SELECT  @AppId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
	IF (@AppId IS NULL)
		RETURN(2)
	DECLARE @TranStarted   bit
	SET @TranStarted = 0

	IF( @@TRANCOUNT = 0 )
	BEGIN
		BEGIN TRANSACTION
		SET @TranStarted = 1
	END

	DECLARE @tbNames	table(Name nvarchar(256) NOT NULL PRIMARY KEY)
	DECLARE @tbRoles	table(RoleId uniqueidentifier NOT NULL PRIMARY KEY)
	DECLARE @tbUsers	table(UserId uniqueidentifier NOT NULL PRIMARY KEY)
	DECLARE @Num		int
	DECLARE @Pos		int
	DECLARE @NextPos	int
	DECLARE @Name		nvarchar(256)

	SET @Num = 0
	SET @Pos = 1
	WHILE(@Pos <= LEN(@RoleNames))
	BEGIN
		SELECT @NextPos = CHARINDEX(N',', @RoleNames,  @Pos)
		IF (@NextPos = 0 OR @NextPos IS NULL)
			SELECT @NextPos = LEN(@RoleNames) + 1
		SELECT @Name = RTRIM(LTRIM(SUBSTRING(@RoleNames, @Pos, @NextPos - @Pos)))
		SELECT @Pos = @NextPos+1

		INSERT INTO @tbNames VALUES (@Name)
		SET @Num = @Num + 1
	END

	INSERT INTO @tbRoles
	  SELECT RoleId
	  FROM   dbo.aspnet_Roles ar, @tbNames t
	  WHERE  LOWER(t.Name) = ar.LoweredRoleName AND ar.ApplicationId = @AppId

	IF (@@ROWCOUNT <> @Num)
	BEGIN
		SELECT TOP 1 Name
		FROM   @tbNames
		WHERE  LOWER(Name) NOT IN (SELECT ar.LoweredRoleName FROM dbo.aspnet_Roles ar,  @tbRoles r WHERE r.RoleId = ar.RoleId)
		IF( @TranStarted = 1 )
			ROLLBACK TRANSACTION
		RETURN(2)
	END

	DELETE FROM @tbNames WHERE 1=1
	SET @Num = 0
	SET @Pos = 1

	WHILE(@Pos <= LEN(@UserNames))
	BEGIN
		SELECT @NextPos = CHARINDEX(N',', @UserNames,  @Pos)
		IF (@NextPos = 0 OR @NextPos IS NULL)
			SELECT @NextPos = LEN(@UserNames) + 1
		SELECT @Name = RTRIM(LTRIM(SUBSTRING(@UserNames, @Pos, @NextPos - @Pos)))
		SELECT @Pos = @NextPos+1

		INSERT INTO @tbNames VALUES (@Name)
		SET @Num = @Num + 1
	END

	INSERT INTO @tbUsers
	  SELECT UserId
	  FROM   dbo.aspnet_Users ar, @tbNames t
	  WHERE  LOWER(t.Name) = ar.LoweredUserName AND ar.ApplicationId = @AppId

	IF (@@ROWCOUNT <> @Num)
	BEGIN
		DELETE FROM @tbNames
		WHERE LOWER(Name) IN (SELECT LoweredUserName FROM dbo.aspnet_Users au,  @tbUsers u WHERE au.UserId = u.UserId)

		INSERT dbo.aspnet_Users (ApplicationId, UserId, UserName, LoweredUserName, IsAnonymous, LastActivityDate)
		  SELECT @AppId, NEWID(), Name, LOWER(Name), 0, @CurrentTimeUtc
		  FROM   @tbNames

		INSERT INTO @tbUsers
		  SELECT  UserId
		  FROM	dbo.aspnet_Users au, @tbNames t
		  WHERE   LOWER(t.Name) = au.LoweredUserName AND au.ApplicationId = @AppId
	END

	IF (EXISTS (SELECT * FROM dbo.aspnet_UsersInRoles ur, @tbUsers tu, @tbRoles tr WHERE tu.UserId = ur.UserId AND tr.RoleId = ur.RoleId))
	BEGIN
		SELECT TOP 1 UserName, RoleName
		FROM		 dbo.aspnet_UsersInRoles ur, @tbUsers tu, @tbRoles tr, aspnet_Users u, aspnet_Roles r
		WHERE		u.UserId = tu.UserId AND r.RoleId = tr.RoleId AND tu.UserId = ur.UserId AND tr.RoleId = ur.RoleId

		IF( @TranStarted = 1 )
			ROLLBACK TRANSACTION
		RETURN(3)
	END

	INSERT INTO dbo.aspnet_UsersInRoles (UserId, RoleId)
	SELECT UserId, RoleId
	FROM @tbUsers, @tbRoles

	IF( @TranStarted = 1 )
		COMMIT TRANSACTION
	RETURN(0)
END                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    
GO
/****** Object:  StoredProcedure [dbo].[aspnet_UsersInRoles_FindUsersInRole]    Script Date: 2021/03/03 11:58:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_UsersInRoles_FindUsersInRole]
    @ApplicationName  nvarchar(256),
    @RoleName         nvarchar(256),
    @UserNameToMatch  nvarchar(256)
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN(1)
     DECLARE @RoleId uniqueidentifier
     SELECT  @RoleId = NULL

     SELECT  @RoleId = RoleId
     FROM    dbo.aspnet_Roles
     WHERE   LOWER(@RoleName) = LoweredRoleName AND ApplicationId = @ApplicationId

     IF (@RoleId IS NULL)
         RETURN(1)

    SELECT u.UserName
    FROM   dbo.aspnet_Users u, dbo.aspnet_UsersInRoles ur
    WHERE  u.UserId = ur.UserId AND @RoleId = ur.RoleId AND u.ApplicationId = @ApplicationId AND LoweredUserName LIKE LOWER(@UserNameToMatch)
    ORDER BY u.UserName
    RETURN(0)
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_UsersInRoles_GetRolesForUser]    Script Date: 2021/03/03 11:58:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_UsersInRoles_GetRolesForUser]
    @ApplicationName  nvarchar(256),
    @UserName         nvarchar(256)
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN(1)
    DECLARE @UserId uniqueidentifier
    SELECT  @UserId = NULL

    SELECT  @UserId = UserId
    FROM    dbo.aspnet_Users
    WHERE   LoweredUserName = LOWER(@UserName) AND ApplicationId = @ApplicationId

    IF (@UserId IS NULL)
        RETURN(1)

    SELECT r.RoleName
    FROM   dbo.aspnet_Roles r, dbo.aspnet_UsersInRoles ur
    WHERE  r.RoleId = ur.RoleId AND r.ApplicationId = @ApplicationId AND ur.UserId = @UserId
    ORDER BY r.RoleName
    RETURN (0)
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_UsersInRoles_GetUsersInRoles]    Script Date: 2021/03/03 11:58:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_UsersInRoles_GetUsersInRoles]
    @ApplicationName  nvarchar(256),
    @RoleName         nvarchar(256)
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN(1)
     DECLARE @RoleId uniqueidentifier
     SELECT  @RoleId = NULL

     SELECT  @RoleId = RoleId
     FROM    dbo.aspnet_Roles
     WHERE   LOWER(@RoleName) = LoweredRoleName AND ApplicationId = @ApplicationId

     IF (@RoleId IS NULL)
         RETURN(1)

    SELECT u.UserName
    FROM   dbo.aspnet_Users u, dbo.aspnet_UsersInRoles ur
    WHERE  u.UserId = ur.UserId AND @RoleId = ur.RoleId AND u.ApplicationId = @ApplicationId
    ORDER BY u.UserName
    RETURN(0)
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_UsersInRoles_IsUserInRole]    Script Date: 2021/03/03 11:58:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_UsersInRoles_IsUserInRole]
    @ApplicationName  nvarchar(256),
    @UserName         nvarchar(256),
    @RoleName         nvarchar(256)
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN(2)
    DECLARE @UserId uniqueidentifier
    SELECT  @UserId = NULL
    DECLARE @RoleId uniqueidentifier
    SELECT  @RoleId = NULL

    SELECT  @UserId = UserId
    FROM    dbo.aspnet_Users
    WHERE   LoweredUserName = LOWER(@UserName) AND ApplicationId = @ApplicationId

    IF (@UserId IS NULL)
        RETURN(2)

    SELECT  @RoleId = RoleId
    FROM    dbo.aspnet_Roles
    WHERE   LoweredRoleName = LOWER(@RoleName) AND ApplicationId = @ApplicationId

    IF (@RoleId IS NULL)
        RETURN(3)

    IF (EXISTS( SELECT * FROM dbo.aspnet_UsersInRoles WHERE  UserId = @UserId AND RoleId = @RoleId))
        RETURN(1)
    ELSE
        RETURN(0)
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_UsersInRoles_RemoveUsersFromRoles]    Script Date: 2021/03/03 11:58:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[aspnet_UsersInRoles_RemoveUsersFromRoles]
	@ApplicationName  nvarchar(256),
	@UserNames		  nvarchar(4000),
	@RoleNames		  nvarchar(4000)
AS
BEGIN
	DECLARE @AppId uniqueidentifier
	SELECT  @AppId = NULL
	SELECT  @AppId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
	IF (@AppId IS NULL)
		RETURN(2)


	DECLARE @TranStarted   bit
	SET @TranStarted = 0

	IF( @@TRANCOUNT = 0 )
	BEGIN
		BEGIN TRANSACTION
		SET @TranStarted = 1
	END

	DECLARE @tbNames  table(Name nvarchar(256) NOT NULL PRIMARY KEY)
	DECLARE @tbRoles  table(RoleId uniqueidentifier NOT NULL PRIMARY KEY)
	DECLARE @tbUsers  table(UserId uniqueidentifier NOT NULL PRIMARY KEY)
	DECLARE @Num	  int
	DECLARE @Pos	  int
	DECLARE @NextPos  int
	DECLARE @Name	  nvarchar(256)
	DECLARE @CountAll int
	DECLARE @CountU	  int
	DECLARE @CountR	  int


	SET @Num = 0
	SET @Pos = 1
	WHILE(@Pos <= LEN(@RoleNames))
	BEGIN
		SELECT @NextPos = CHARINDEX(N',', @RoleNames,  @Pos)
		IF (@NextPos = 0 OR @NextPos IS NULL)
			SELECT @NextPos = LEN(@RoleNames) + 1
		SELECT @Name = RTRIM(LTRIM(SUBSTRING(@RoleNames, @Pos, @NextPos - @Pos)))
		SELECT @Pos = @NextPos+1

		INSERT INTO @tbNames VALUES (@Name)
		SET @Num = @Num + 1
	END

	INSERT INTO @tbRoles
	  SELECT RoleId
	  FROM   dbo.aspnet_Roles ar, @tbNames t
	  WHERE  LOWER(t.Name) = ar.LoweredRoleName AND ar.ApplicationId = @AppId
	SELECT @CountR = @@ROWCOUNT

	IF (@CountR <> @Num)
	BEGIN
		SELECT TOP 1 N'', Name
		FROM   @tbNames
		WHERE  LOWER(Name) NOT IN (SELECT ar.LoweredRoleName FROM dbo.aspnet_Roles ar,  @tbRoles r WHERE r.RoleId = ar.RoleId)
		IF( @TranStarted = 1 )
			ROLLBACK TRANSACTION
		RETURN(2)
	END


	DELETE FROM @tbNames WHERE 1=1
	SET @Num = 0
	SET @Pos = 1


	WHILE(@Pos <= LEN(@UserNames))
	BEGIN
		SELECT @NextPos = CHARINDEX(N',', @UserNames,  @Pos)
		IF (@NextPos = 0 OR @NextPos IS NULL)
			SELECT @NextPos = LEN(@UserNames) + 1
		SELECT @Name = RTRIM(LTRIM(SUBSTRING(@UserNames, @Pos, @NextPos - @Pos)))
		SELECT @Pos = @NextPos+1

		INSERT INTO @tbNames VALUES (@Name)
		SET @Num = @Num + 1
	END

	INSERT INTO @tbUsers
	  SELECT UserId
	  FROM   dbo.aspnet_Users ar, @tbNames t
	  WHERE  LOWER(t.Name) = ar.LoweredUserName AND ar.ApplicationId = @AppId

	SELECT @CountU = @@ROWCOUNT
	IF (@CountU <> @Num)
	BEGIN
		SELECT TOP 1 Name, N''
		FROM   @tbNames
		WHERE  LOWER(Name) NOT IN (SELECT au.LoweredUserName FROM dbo.aspnet_Users au,  @tbUsers u WHERE u.UserId = au.UserId)

		IF( @TranStarted = 1 )
			ROLLBACK TRANSACTION
		RETURN(1)
	END

	SELECT  @CountAll = COUNT(*)
	FROM	dbo.aspnet_UsersInRoles ur, @tbUsers u, @tbRoles r
	WHERE   ur.UserId = u.UserId AND ur.RoleId = r.RoleId

	IF (@CountAll <> @CountU * @CountR)
	BEGIN
		SELECT TOP 1 UserName, RoleName
		FROM		 @tbUsers tu, @tbRoles tr, dbo.aspnet_Users u, dbo.aspnet_Roles r
		WHERE		 u.UserId = tu.UserId AND r.RoleId = tr.RoleId AND
					 tu.UserId NOT IN (SELECT ur.UserId FROM dbo.aspnet_UsersInRoles ur WHERE ur.RoleId = tr.RoleId) AND
					 tr.RoleId NOT IN (SELECT ur.RoleId FROM dbo.aspnet_UsersInRoles ur WHERE ur.UserId = tu.UserId)
		IF( @TranStarted = 1 )
			ROLLBACK TRANSACTION
		RETURN(3)
	END

	DELETE FROM dbo.aspnet_UsersInRoles
	WHERE UserId IN (SELECT UserId FROM @tbUsers)
	  AND RoleId IN (SELECT RoleId FROM @tbRoles)
	IF( @TranStarted = 1 )
		COMMIT TRANSACTION
	RETURN(0)
END
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             
GO
/****** Object:  StoredProcedure [dbo].[CHECK_DB]    Script Date: 2021/03/03 11:58:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
CREATE PROCEDURE [dbo].[CHECK_DB]
	
AS

GO
/****** Object:  StoredProcedure [dbo].[clbd]    Script Date: 2021/03/03 11:58:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[clbd]
@CODLIQ AS INT
as 
begin
delete from MI3_SAP WHERE CODIGOLIQUIDACION =@CODLIQ
delete from I_SAP_VENTAS WHERE CODIGOLIQUIDACION =@CODLIQ
delete from I_SAP_COBROS WHERE CODIGOLIQUIDACION =@CODLIQ
delete from I_SAP_DEVOLUCIONES_NC WHERE CODIGOLIQUIDACION =@CODLIQ
delete from I_SAP_NOTACD_FI WHERE CODIGOLIQUIDACION =@CODLIQ
delete from I_SAP_NOTASCD WHERE CODIGOLIQUIDACION =@CODLIQ
end

GO
/****** Object:  StoredProcedure [dbo].[clbd_con_ruta]    Script Date: 2021/03/03 11:58:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[clbd_con_ruta]
@CODLIQ AS INT, @RUTA AS NVARCHAR(15)
as 
begin
delete from MI3_SAP WHERE CODIGOLIQUIDACION =@CODLIQ AND CODIGORUTA = @RUTA
delete from I_SAP_VENTAS WHERE CODIGOLIQUIDACION =@CODLIQ AND RUTA = @RUTA
delete from I_SAP_COBROS WHERE CODIGOLIQUIDACION =@CODLIQ AND RUTA = @RUTA
delete from I_SAP_DEVOLUCIONES_NC WHERE CODIGOLIQUIDACION =@CODLIQ AND RUTA = @RUTA
delete from I_SAP_NOTACD_FI WHERE CODIGOLIQUIDACION =@CODLIQ 
delete from I_SAP_NOTASCD WHERE CODIGOLIQUIDACION =@CODLIQ AND RUTA = @RUTA
end

GO
/****** Object:  StoredProcedure [dbo].[COMPARA_FACTURA_CON_D_STOCK_DEV]    Script Date: 2021/03/03 11:58:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[COMPARA_FACTURA_CON_D_STOCK_DEV]
	-- Add the parameters for the stored procedure here
	@CORELFACTURA AS NVARCHAR(20),
	@FECHA AS DATE,
	@RUTA AS NVARCHAR(15)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here	
	--Si esta consulta está vacía no faltan barras en lad facturas de esa ruta
	SELECT CODIGO, COUNT(BARRA) AS CANT, SUM(PESO) AS PESO  FROM P_STOCKB WHERE RUTA = @RUTA AND FECHA = @FECHA 
	AND BARRA NOT IN (SELECT BARRA FROM D_STOCKB_DEV )
	GROUP BY CODIGO
	ORDER BY CODIGO

	SELECT * FROM D_FACTURAD WHERE COREL = @CORELFACTURA
	AND PRODUCTO IN (SELECT CODIGO FROM P_PRODUCTO WHERE ES_PROD_BARRA = 1)  ORDER BY PRODUCTO

	PRINT 'No faltan barras en las facturas de esa ruta'

END


GO
/****** Object:  StoredProcedure [dbo].[CORRIGE_FECHA]    Script Date: 2021/03/03 11:58:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[CORRIGE_FECHA]
AS
BEGIN

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[D_ATENCION1]') AND type in (N'U'))
CREATE TABLE [dbo].[D_ATENCION1](
	[RUTA] [nvarchar](15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[FECHA] [smalldatetime] NOT NULL,
	[HORALLEG] [nvarchar](8) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[HORASAL] [nvarchar](8) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[TIEMPO] [int] NULL,
	[VENDEDOR] [nvarchar](8) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[CLIENTE] [nvarchar](15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[DIAACT] [int] NULL,
	[DIA] [int] NULL,
	[DIAFLAG] [nvarchar](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[SECUENCIA] [int] NULL,
	[SECUENACT] [int] NULL,
	[CODATEN] [nvarchar](3) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[KILOMET] [float] NULL,
	[VALORVENTA] [float] NULL,
	[VALORNEXT] [float] NULL,
	[CLIPORDIA] [int] NULL,
	[CODOPER] [nvarchar](3) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[COREL] [nvarchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[SCANNED] [nvarchar](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[STATCOM] [nvarchar](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[LLEGO_COMPETENCIA_ANTES] [bit] NOT NULL,
	[FECHA1] [smalldatetime] NULL,

 CONSTRAINT [PK_D_ATENCION2] PRIMARY KEY CLUSTERED 
(
	[RUTA] ASC,
	[FECHA] ASC,
	[HORALLEG] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]


DELETE FROM D_ATENCION1
INSERT INTO D_ATENCION1 SELECT *, FECHA FROM D_ATENCION

END



GO
/****** Object:  StoredProcedure [dbo].[DAMEPRECIOSESPECIALES_TODAS_LAS_RUTAS]    Script Date: 2021/03/03 11:58:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[DAMEPRECIOSESPECIALES_TODAS_LAS_RUTAS]
AS
BEGIN

	SET NOCOUNT ON;

	DECLARE @ruta nvarchar(15);     
	DECLARE cursor_ruta CURSOR FOR   

	SELECT codigo 
	FROM P_RUTA
	order by codigo;  
	
	if exists (select * from INFORMATION_SCHEMA.TABLES where TABLE_NAME = 'LOG_PRECESPEC' AND TABLE_SCHEMA = 'dbo')
    drop table dbo.LOG_PRECESPEC;
	
	CREATE TABLE [dbo].[LOG_PRECESPEC](
		[RUTA] [nvarchar](15) NULL,	
		[FECHA] [datetime] NULL,
		[MENSAJE] [nvarchar](225) NULL, 
	) 
  
	if exists (select * from INFORMATION_SCHEMA.TABLES where TABLE_NAME = 'TMP_PRECESPEC1' AND TABLE_SCHEMA = 'dbo')
    drop table dbo.TMP_PRECESPEC1;

	CREATE TABLE [dbo].[TMP_PRECESPEC1](
	[RUTA] [nvarchar](15) NOT NULL,
	[CODIGO] [nvarchar](10) NOT NULL,
	[VALOR] [nvarchar](15) NOT NULL,
	[PRODUCTO] [nvarchar](15) NOT NULL,
	[FECHA] [datetime] NOT NULL,
	[PRECIO] [float] NULL,
	[UNIDADMEDIDA] [nvarchar](25) NOT NULL)

	DELETE FROM P_PRECESPEC_CLIENTE
	DELETE FROM P_PRECESPEC_RUTA
	DELETE FROM P_PRECESPEC_TIPO

	INSERT INTO P_PRECESPEC_CLIENTE
	SELECT VALOR, PRODUCTO, FECHA, PRECIO, UNIDADMEDIDA
	FROM P_PRECESPEC
	WHERE CODIGO = 'CLIENTE' AND FECHA > DATEADD(DAY,-1,GETDATE())

	INSERT INTO P_PRECESPEC_RUTA
	SELECT VALOR, PRODUCTO, FECHA, PRECIO, UNIDADMEDIDA
	FROM P_PRECESPEC
	WHERE CODIGO = 'RUTA' AND FECHA > DATEADD(DAY,-1,GETDATE())

	INSERT INTO P_PRECESPEC_TIPO
	SELECT VALOR, PRODUCTO, FECHA, PRECIO, UNIDADMEDIDA
	FROM P_PRECESPEC
	WHERE CODIGO = 'TIPO' AND FECHA > DATEADD(DAY,-1,GETDATE())

	OPEN cursor_ruta
  
	FETCH NEXT FROM cursor_ruta   
	INTO @ruta
  
	DECLARE @INICIO DATETIME
	
	SELECT @INICIO = GETDATE()

	WHILE @@FETCH_STATUS = 0  

	BEGIN  
   
		PRINT 'Procesando ruta: ' + @ruta
   
		BEGIN TRANSACTION 

		DELETE FROM TMP_PRECESPEC WHERE RUTA = @RUTA
		--DELETE FROM TMP_PRECESPEC WHERE RUTA = @RUTA

		--#2
		SELECT @RUTA AS RUTA, 'CLIENTE' AS CODIGO, VALOR, PRODUCTO, FECHA, PRECIO, UNIDADMEDIDA 
		INTO #TMP_PRECESPEC_CLI 
		FROM P_PRECESPEC_CLIENTE
		WHERE (		
			VALOR 
			IN 
			(
				SELECT CLIENTE 
				FROM P_CLIRUTA 
				WHERE (SEMANA=1) AND (RUTA=@RUTA)
			)
 				
			)
		AND FECHA > DATEADD(DAY,-1,GETDATE())
		AND
		PRODUCTO 
		IN 
		(
			SELECT CODIGO FROM P_PRODUCTO P 
			INNER JOIN P_LINEARUTA LR ON P.LINEA = LR.LINEA
			AND (RUTA=@RUTA)
		)

		SELECT @RUTA AS RUTA, 'RUTA' AS CODIGO, VALOR, PRODUCTO, FECHA, PRECIO, UNIDADMEDIDA 
		INTO #TMP_PRECESPEC_RUTA 
		FROM P_PRECESPEC_RUTA
		WHERE (		
			VALOR 
			IN 
			(
				SELECT CLIENTE 
				FROM P_CLIRUTA 
				WHERE (RUTA=@RUTA)) 				
			)
		AND FECHA > DATEADD(DAY,-1,GETDATE())
		AND
		PRODUCTO 
		IN 
		(
			SELECT CODIGO FROM P_PRODUCTO P 
			INNER JOIN P_LINEARUTA LR ON P.LINEA = LR.LINEA
			AND (RUTA=@RUTA)
		)

		SELECT @RUTA AS RUTA, 'TIPO' AS CODIGO, VALOR, PRODUCTO, FECHA, PRECIO, UNIDADMEDIDA 
		INTO #TMP_PRECESPEC_CLITIPO
		FROM P_PRECESPEC_TIPO
		WHERE (		
			VALOR 
			IN 
			(
				SELECT TIPO FROM P_CLIENTE C INNER JOIN P_CLIRUTA CR ON C.CODIGO = CR.CLIENTE 
				WHERE (CR.SEMANA=1) AND (RUTA=@RUTA)					
			)		
		AND FECHA > DATEADD(DAY,-1,GETDATE()))
		AND
		PRODUCTO 
		IN 
		(
			SELECT CODIGO FROM P_PRODUCTO P 
			INNER JOIN P_LINEARUTA LR ON P.LINEA = LR.LINEA
			AND (RUTA=@RUTA)
		)

		PRINT 'Insertando desde tablas temporales ruta: ' + @ruta

		BEGIN TRY  
			INSERT INTO TMP_PRECESPEC  SELECT * FROM  #TMP_PRECESPEC_CLITIPO
			INSERT INTO TMP_PRECESPEC  SELECT * FROM  #TMP_PRECESPEC_RUTA 
			INSERT INTO TMP_PRECESPEC  SELECT * FROM  #TMP_PRECESPEC_CLI
		END TRY

		BEGIN CATCH  
			SELECT  * FROM [LOG_PRECESPEC]
			INSERT INTO [LOG_PRECESPEC]
			SELECT   
			@ruta as Ruta, GETDATE(),ERROR_MESSAGE() AS ErrorMessage;  			
		END CATCH  

		PRINT 'Borrando tablas temporales ruta: ' + @ruta

		DROP TABLE #TMP_PRECESPEC_CLITIPO
		DROP TABLE #TMP_PRECESPEC_RUTA 
		DROP TABLE #TMP_PRECESPEC_CLI	

		COMMIT TRANSACTION 

		FETCH NEXT FROM cursor_ruta   
		INTO @ruta 

END   

	PRINT 'Minutos transcurridos: ' + CONVERT(NVARCHAR(25), DATEDIFF(MINUTE,@INICIO,GETDATE()))

	CLOSE cursor_ruta;  
	DEALLOCATE cursor_ruta;  

END

GO
/****** Object:  StoredProcedure [dbo].[DAMEPRECIOSESPECIALES_TODAS_LAS_RUTAS1]    Script Date: 2021/03/03 11:58:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[DAMEPRECIOSESPECIALES_TODAS_LAS_RUTAS1]
AS
BEGIN
	SET NOCOUNT ON;
	DELETE FROM TMP_PRECESPEC;
	DECLARE @ruta nvarchar(15);  
	DECLARE cursor_ruta CURSOR FOR   
	SELECT codigo 
	FROM P_RUTA;    
	OPEN cursor_ruta    
	FETCH NEXT FROM cursor_ruta   
	INTO @ruta  
	WHILE @@FETCH_STATUS = 0  
	BEGIN  
   
		INSERT INTO TMP_PRECESPEC SELECT @RUTA, CODIGO, VALOR, PRODUCTO, FECHA, PRECIO, UNIDADMEDIDA 
		FROM P_PRECESPEC  WHERE (PRODUCTO IN (SELECT CODIGO FROM P_PRODUCTO 
		WHERE (LINEA IN (SELECT LINEA FROM P_LINEARUTA WHERE RUTA=@RUTA))))  
		AND ((VALOR IN (SELECT CLIENTE FROM P_CLIRUTA WHERE (SEMANA=1) AND (RUTA=@RUTA)) 
		AND CODIGO ='CLIENTE')  OR (VALOR IN (SELECT CLIENTE FROM P_CLIRUTA WHERE (RUTA=@RUTA)) 
		AND CODIGO ='RUTA')OR  (VALOR IN (SELECT TIPO FROM P_CLIENTE 
		WHERE CODIGO IN ((SELECT CLIENTE FROM P_CLIRUTA WHERE (SEMANA=1) AND (RUTA=@RUTA))))))  
		AND FECHA > DATEADD(DAY,-1,GETDATE())
		FETCH NEXT FROM cursor_ruta   
		INTO @ruta 
END

CLOSE cursor_ruta
DEALLOCATE cursor_ruta

END



GO
/****** Object:  StoredProcedure [dbo].[DAMEPRECIOSESPECIALES1]    Script Date: 2021/03/03 11:58:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[DAMEPRECIOSESPECIALES1]
	-- Add the parameters for the stored procedure here
	@RUTA NVARCHAR(15)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	DELETE FROM TMP_PRECESPEC WHERE RUTA = @RUTA AND FECHA > DATEADD(DAY,-1,GETDATE())
	
	INSERT INTO TMP_PRECESPEC SELECT @RUTA, CODIGO, VALOR, PRODUCTO, FECHA, PRECIO, UNIDADMEDIDA 
	FROM P_PRECESPEC  WHERE (PRODUCTO IN (SELECT CODIGO FROM P_PRODUCTO 
	WHERE (LINEA IN (SELECT LINEA FROM P_LINEARUTA WHERE RUTA=@RUTA))))  
	AND ((VALOR IN (SELECT CLIENTE FROM P_CLIRUTA WHERE (SEMANA=1) AND (RUTA=@RUTA)) 
	AND CODIGO ='CLIENTE')  OR (VALOR IN (SELECT CLIENTE FROM P_CLIRUTA WHERE (RUTA=@RUTA)) 
	AND CODIGO ='RUTA')OR  (VALOR IN (SELECT TIPO FROM P_CLIENTE 
	WHERE CODIGO IN ((SELECT CLIENTE FROM P_CLIRUTA WHERE (SEMANA=1) AND (RUTA=@RUTA))))))  
	AND FECHA > DATEADD(DAY,-1,GETDATE())

END


GO
/****** Object:  StoredProcedure [dbo].[DATOSHHPRINTDOCS]    Script Date: 2021/03/03 11:58:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[DATOSHHPRINTDOCS] 
	-- Add the parameters for the stored procedure here
	@RUTA AS NVARCHAR(15)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT NUMSERIE, RESOL, FECHARES 
	FROM P_HANDHELD INNER JOIN P_COREL ON NUMPLACA =HANDHELD 
	WHERE P_COREL.RUTA = @RUTA
END


GO
/****** Object:  StoredProcedure [dbo].[DEVOLUCION_HU_PDA]    Script Date: 2021/03/03 11:58:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[DEVOLUCION_HU_PDA]
	-- Add the parameters for the stored procedure here
@FECHAINI AS DATETIME,
@FECHAFIN AS DATETIME,
@RUTA AS NVARCHAR(15)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	
	SELECT D.COREL, D.CODIGOLIQUIDACION, D.RUTA, D.FECHA, D.PRODUCTO, D.BARRA, D.ANULADO, D.LOTE, D.CANT,S.DOCUMENTO, D.ESTADO
	FROM P_DEVOLUCIONES_SAP D INNER JOIN P_STOCK S ON S.FECHA = D.FECHA 
	AND S.RUTA = D.RUTA AND D.PRODUCTO = S.CODIGO AND D.LOTE = S.LOTE
	WHERE D.RUTA = @RUTA AND D.FECHA BETWEEN @FECHAINI AND @FECHAFIN 
	AND D.ANULADO = 'N' AND D.CODIGOLIQUIDACION = 0 AND D.BARRA = '' AND S.STATUS = 'A'
	UNION
	SELECT D.COREL, D.CODIGOLIQUIDACION, D.RUTA, D.FECHA, D.PRODUCTO, D.BARRA, D.ANULADO, D.LOTE, D.CANT,S.DOCUMENTO, D.ESTADO
	FROM P_DEVOLUCIONES_SAP D INNER JOIN P_STOCKB S ON S.FECHA = D.FECHA 
	AND S.RUTA = D.RUTA AND D.PRODUCTO = S.CODIGO AND D.BARRA = S.BARRA
	WHERE D.RUTA = @RUTA AND D.FECHA BETWEEN @FECHAINI AND @FECHAFIN
	AND D.ANULADO = 'N' AND D.CODIGOLIQUIDACION = 0 AND D.BARRA <> '' AND S.STATUS = 'A'

END

GO
/****** Object:  StoredProcedure [dbo].[GET_PRECIOSESPECIALES_BY_RUTA]    Script Date: 2021/03/03 11:58:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[GET_PRECIOSESPECIALES_BY_RUTA]
@RUTA NVARCHAR(15)
AS
BEGIN

	SET NOCOUNT ON;	
	
	--if exists (select * from INFORMATION_SCHEMA.TABLES where TABLE_NAME = 'LOG_PRECESPEC' AND TABLE_SCHEMA = 'dbo')
 --   drop table dbo.LOG_PRECESPEC;
	
	--CREATE TABLE [dbo].[LOG_PRECESPEC](
	--	[RUTA] [nvarchar](15) NULL,	
	--	[FECHA] [datetime] NULL,
	--	[MENSAJE] [nvarchar](225) NULL, 
	--) 
  
	--if exists (select * from INFORMATION_SCHEMA.TABLES where TABLE_NAME = 'TMP_PRECESPEC1' AND TABLE_SCHEMA = 'dbo')
 --   drop table dbo.TMP_PRECESPEC;

	--CREATE TABLE [dbo].[TMP_PRECESPEC](
	--[RUTA] [nvarchar](15) NOT NULL,
	--[CODIGO] [nvarchar](10) NOT NULL,
	--[VALOR] [nvarchar](15) NOT NULL,
	--[PRODUCTO] [nvarchar](15) NOT NULL,
	--[FECHA] [datetime] NOT NULL,
	--[PRECIO] [float] NULL,
	--[UNIDADMEDIDA] [nvarchar](25) NOT NULL)
	
	DECLARE @INICIO DATETIME
	
	SELECT @INICIO = GETDATE()

		PRINT 'Procesando ruta: ' + @ruta
   
		BEGIN TRANSACTION 

		DELETE FROM TMP_PRECESPEC WHERE RUTA = @RUTA
		DELETE FROM LOG_PRECESPEC WHERE RUTA = @RUTA

		--#2
		SELECT @RUTA AS RUTA, CODIGO, VALOR, PRODUCTO, FECHA, PRECIO, UNIDADMEDIDA 
		INTO #TMP_PRECESPEC_CLI 
		FROM P_PRECESPEC  
		WHERE (		
			VALOR 
			IN 
			(
				SELECT CLIENTE 
				FROM P_CLIRUTA 
				WHERE (SEMANA=1) AND (RUTA=@RUTA)) 
				AND CODIGO ='CLIENTE'
			)
		AND FECHA > DATEADD(DAY,-1,GETDATE())
		AND
		PRODUCTO 
		IN 
		(
			SELECT CODIGO FROM P_PRODUCTO P 
			INNER JOIN P_LINEARUTA LR ON P.LINEA = LR.LINEA
			AND (RUTA=@RUTA)
		)

		SELECT @RUTA AS RUTA, CODIGO, VALOR, PRODUCTO, FECHA, PRECIO, UNIDADMEDIDA 
		INTO #TMP_PRECESPEC_RUTA 
		FROM P_PRECESPEC  
		WHERE (		
			VALOR 
			IN 
			(
				SELECT CLIENTE 
				FROM P_CLIRUTA 
				WHERE (RUTA=@RUTA)) 
				AND CODIGO ='RUTA'
			)
		AND FECHA > DATEADD(DAY,-1,GETDATE())
		AND
		PRODUCTO 
		IN 
		(
			SELECT CODIGO FROM P_PRODUCTO P 
			INNER JOIN P_LINEARUTA LR ON P.LINEA = LR.LINEA
			AND (RUTA=@RUTA)
		)

		SELECT @RUTA AS RUTA, CODIGO, VALOR, PRODUCTO, FECHA, PRECIO, UNIDADMEDIDA 
		INTO #TMP_PRECESPEC_CLITIPO
		FROM P_PRECESPEC  
		WHERE (		
			VALOR 
			IN 
			(
				SELECT TIPO FROM P_CLIENTE C INNER JOIN P_CLIRUTA CR ON C.CODIGO = CR.CLIENTE 
				WHERE (CR.SEMANA=1) AND (RUTA=@RUTA)					
			)		
		AND FECHA > DATEADD(DAY,-1,GETDATE()))
		AND
		PRODUCTO 
		IN 
		(
			SELECT CODIGO FROM P_PRODUCTO P 
			INNER JOIN P_LINEARUTA LR ON P.LINEA = LR.LINEA
			AND (RUTA=@RUTA)
		)

		PRINT 'Insertando desde tablas temporales ruta: ' + @ruta

		BEGIN TRY  
			INSERT INTO TMP_PRECESPEC  SELECT * FROM  #TMP_PRECESPEC_CLITIPO
			INSERT INTO TMP_PRECESPEC  SELECT * FROM  #TMP_PRECESPEC_RUTA 
			INSERT INTO TMP_PRECESPEC  SELECT * FROM  #TMP_PRECESPEC_CLI
		END TRY

		BEGIN CATCH  
			SELECT  * FROM [LOG_PRECESPEC]
			INSERT INTO [LOG_PRECESPEC]
			SELECT   
			@ruta as Ruta, GETDATE(),ERROR_MESSAGE() AS ErrorMessage;  			
		END CATCH  

		PRINT 'Borrando tablas temporales ruta: ' + @ruta

		DROP TABLE #TMP_PRECESPEC_CLITIPO
		DROP TABLE #TMP_PRECESPEC_RUTA 
		DROP TABLE #TMP_PRECESPEC_CLI	

		COMMIT TRANSACTION 
	
END

GO
/****** Object:  StoredProcedure [dbo].[GET_PRECIOSESPECIALES_BY_RUTA1]    Script Date: 2021/03/03 11:58:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[GET_PRECIOSESPECIALES_BY_RUTA1]
@RUTA NVARCHAR(15)
AS
BEGIN

	SET NOCOUNT ON;	
	
	DECLARE @INICIO DATETIME
	
	SELECT @INICIO = GETDATE()

		PRINT 'Procesando ruta: ' + @ruta
   
		BEGIN TRANSACTION 

		DELETE FROM TMP_PRECESPEC WHERE RUTA = @RUTA
		DELETE FROM LOG_PRECESPEC WHERE RUTA = @RUTA

		--#2
		SELECT @RUTA AS RUTA, CODIGO, VALOR, PRODUCTO, FECHA, PRECIO, UNIDADMEDIDA 
		INTO TMP_PRECESPEC_CLI 
		FROM P_PRECESPEC  
		WHERE (		
			VALOR 
			IN 
			(
				SELECT CLIENTE 
				FROM P_CLIRUTA 
				WHERE (SEMANA=1) AND (RUTA=@RUTA)) 
				AND CODIGO ='CLIENTE'
			)
		AND FECHA > DATEADD(DAY,-1,GETDATE())
		AND
		PRODUCTO 
		IN 
		(
			SELECT CODIGO FROM P_PRODUCTO P 
			INNER JOIN P_LINEARUTA LR ON P.LINEA = LR.LINEA
			AND (RUTA=@RUTA)
		)

		SELECT @RUTA AS RUTA, CODIGO, VALOR, PRODUCTO, FECHA, PRECIO, UNIDADMEDIDA 
		INTO TMP_PRECESPEC_RUTA 
		FROM P_PRECESPEC  
		WHERE (		
			VALOR 
			IN 
			(
				SELECT CLIENTE 
				FROM P_CLIRUTA 
				WHERE (RUTA=@RUTA)) 
				AND CODIGO ='RUTA'
			)
		AND FECHA > DATEADD(DAY,-1,GETDATE())
		AND
		PRODUCTO 
		IN 
		(
			SELECT CODIGO FROM P_PRODUCTO P 
			INNER JOIN P_LINEARUTA LR ON P.LINEA = LR.LINEA
			AND (RUTA=@RUTA)
		)

		SELECT @RUTA AS RUTA, CODIGO, VALOR, PRODUCTO, FECHA, PRECIO, UNIDADMEDIDA 
		INTO TMP_PRECESPEC_CLITIPO
		FROM P_PRECESPEC  
		WHERE (		
			VALOR 
			IN 
			(
				SELECT TIPO FROM P_CLIENTE C INNER JOIN P_CLIRUTA CR ON C.CODIGO = CR.CLIENTE 
				WHERE (CR.SEMANA=1) AND (RUTA=@RUTA)					
			)		
		AND FECHA > DATEADD(DAY,-1,GETDATE()))
		AND
		PRODUCTO 
		IN 
		(
			SELECT CODIGO FROM P_PRODUCTO P 
			INNER JOIN P_LINEARUTA LR ON P.LINEA = LR.LINEA
			AND (RUTA=@RUTA)
		)

		PRINT 'Insertando desde tablas temporales ruta: ' + @ruta

		BEGIN TRY  
			INSERT INTO TMP_PRECESPEC  SELECT * FROM  TMP_PRECESPEC_CLITIPO
			INSERT INTO TMP_PRECESPEC  SELECT * FROM  TMP_PRECESPEC_RUTA 
			INSERT INTO TMP_PRECESPEC  SELECT * FROM  TMP_PRECESPEC_CLI
		END TRY

		BEGIN CATCH  
			SELECT  * FROM [LOG_PRECESPEC]
			INSERT INTO [LOG_PRECESPEC]
			SELECT   
			@ruta as Ruta, GETDATE(),ERROR_MESSAGE() AS ErrorMessage;  			
		END CATCH  

		PRINT 'Borrando tablas temporales ruta: ' + @ruta

		--DROP TABLE #TMP_PRECESPEC_CLITIPO
		--DROP TABLE #TMP_PRECESPEC_RUTA 
		--DROP TABLE #TMP_PRECESPEC_CLI	

		COMMIT TRANSACTION 
	
END

GO
/****** Object:  StoredProcedure [dbo].[GetFacturasContadoBarras]    Script Date: 2021/03/03 11:58:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[GetFacturasContadoBarras] 
	@CodigoLiquidacion as int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
		SELECT DISTINCT D_FACTURA.ANULADO, D_FACTURA.STATCOM, VENDEDORES.BODEGA AS OFI_VENTAS, D_FACTURA.FECHA, 
		D_FACTURA.SERIE + RIGHT('000000' + CONVERT(nvarchar(6), D_FACTURA.CORELATIVO), 6) AS COREL, D_FACTURA.COREL AS COREL1, RIGHT ('0000000000' + D_FACTURA.CLIENTE,10) AS CLIENTE, 
		RIGHT ('0000000000' + D_FACTURA.CLIENTE,10) AS CLIENTE2, D_FACTURA.VENDEDOR, D_FACTURA.SUPERVISOR, D_FACTURA.AYUDANTE, D_FACTURAD_1.PRODUCTO, 
		1 AS CANT, 1 AS CANT2, '' AS LOTE, D_FACTURAD_1.PRECIODOC, D_FACTURAD_1.PRODUCTO AS PRODUCTO2, 
		D_STOCKB_DEV.BARRA AS BARRA2, D_STOCKB_DEV.PESO, D_FACTURA.RUTA, VENDEDORES.SUBBODEGA AS GRUPO_VEND, 
		VENDEDORES.NIVEL, '' AS MOTIVO, 0 AS BONIFICADO, D_FACTURAD_1.VAL2 AS POSICION, 0 AS PADRE, '' AS CREDITO, '3000' AS SOCIEDAD, 
		D_DEPOS.BANCO AS CUENTA, ROUND(D_FACTURA.TOTAL,2) AS TOTAL, 
		D_FACTURAD_1.UMVENTA, D_FACTURAD_1.UMSTOCK,D_FACTURAD_1.UMPESO, D_FACTURA.REFERENCIA,D_FACTURAD_1.FACTOR 
		FROM D_FACTURA AS D_FACTURA INNER JOIN 
		D_FACTURAD AS D_FACTURAD_1 ON D_FACTURA.COREL = D_FACTURAD_1.COREL INNER JOIN 
		VENDEDORES AS VENDEDORES ON D_FACTURA.RUTA = VENDEDORES.RUTA AND 
		D_FACTURA.VENDEDOR = VENDEDORES.CODIGO INNER JOIN 
		D_STOCKB_DEV ON D_FACTURAD_1.PRODUCTO = D_STOCKB_DEV.CODIGO AND D_FACTURAD_1.COREL = D_STOCKB_DEV.COREL INNER JOIN 
		(SELECT DISTINCT COREL, CASE WHEN D_FACTURAP.CODPAGO = 4 THEN 1 ELSE 0 END AS CREDITO 
		FROM  D_FACTURAP) AS P ON D_FACTURA.COREL = P.COREL INNER JOIN 
		D_DEPOSD ON D_DEPOSD.DOCCOREL = D_FACTURA.COREL INNER JOIN 
		D_DEPOS ON D_DEPOSD.COREL = D_DEPOS.COREL 
		WHERE (D_FACTURA.STATCOM = 'N' 
		AND P.CREDITO = 0 
		AND D_FACTURA.CODIGOLIQUIDACION=@CodigoLiquidacion
		AND D_FACTURA.SERIE= 'DL' AND D_FACTURA.ANULADO ='N') 
		OR (D_FACTURA.STATCOM = 'N' 
		AND P.CREDITO = 0 
		AND D_FACTURA.CODIGOLIQUIDACION=@CodigoLiquidacion
		AND D_FACTURA.SERIE <> 'DL') 
		AND D_FACTURA.ANULADO = 'N' 

END


GO
/****** Object:  StoredProcedure [dbo].[GetFacturasContadoLotes]    Script Date: 2021/03/03 11:58:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[GetFacturasContadoLotes]
	-- Add the parameters for the stored procedure here
	@CodigoLiquidacion as int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

  SELECT DISTINCT D_FACTURA.ANULADO, D_FACTURA.STATCOM, VENDEDORES.BODEGA AS OFI_VENTAS,D_FACTURA.FECHA,   
D_FACTURA.SERIE + RIGHT('000000' + CONVERT(nvarchar(6), D_FACTURA.CORELATIVO), 6) AS COREL, 
D_FACTURA.COREL AS COREL1,  
RIGHT ('0000000000' + D_FACTURA.CLIENTE,10) AS CLIENTE,  
RIGHT ('0000000000' + D_FACTURA.CLIENTE,10) AS CLIENTE2, 
D_FACTURA.VENDEDOR,  
D_FACTURA.SUPERVISOR, D_FACTURA.AYUDANTE, D_FACTURAD.PRODUCTO, 
ISNULL(D_FACTURAD_LOTES.CANTIDAD, D_FACTURAD.CANT) AS CANT, 
ISNULL(D_FACTURAD_LOTES.CANTIDAD, D_FACTURAD.CANT) AS CANT2,  
ISNULL(D_FACTURAD_LOTES.LOTE, N'') AS LOTE, D_FACTURAD.PRECIODOC,  
D_FACTURAD.PRODUCTO AS PRODUCTO2, '' AS BARRA2,  D_FACTURAD.PESO, D_FACTURA.RUTA, 
VENDEDORES.SUBBODEGA AS GRUPO_VEND, VENDEDORES.NIVEL, '' AS MOTIVO,  
0 AS BONIFICADO,  D_FACTURAD.VAL2 AS POSICION, 0 AS PADRE, '' AS CREDITO, 
'3000' AS SOCIEDAD, D_DEPOS.BANCO AS CUENTA, D_FACTURA.TOTAL,   
D_FACTURAD.UMVenta, D_FACTURAD.UMSTOCK,D_FACTURAD.UMPESO,D_FACTURAD.FACTOR, D_FACTURA.REFERENCIA   
FROM D_FACTURA INNER JOIN D_FACTURAD ON D_FACTURA.COREL = D_FACTURAD.COREL  
INNER JOIN VENDEDORES ON D_FACTURA.RUTA = VENDEDORES.RUTA  
AND D_FACTURA.VENDEDOR = VENDEDORES.CODIGO  
INNER JOIN (SELECT DISTINCT COREL, CASE WHEN D_FACTURAP.CODPAGO = 4 THEN 1 ELSE 0 END AS CREDITO 
FROM D_FACTURAP) AS P  ON D_FACTURA.COREL = P.COREL 
RIGHT OUTER JOIN D_FACTURAD_LOTES ON D_FACTURAD.COREL = D_FACTURAD_LOTES.COREL   
AND D_FACTURAD.PRODUCTO = D_FACTURAD_LOTES.PRODUCTO  
AND D_FACTURAD.UMVENTA = D_FACTURAD_LOTES.UMVENTA 
AND D_FACTURAD.UMSTOCK = D_FACTURAD_LOTES.UMSTOCK 
AND D_FACTURAD.UMPESO = D_FACTURAD_LOTES.UMPESO 
INNER JOIN D_DEPOSD ON D_DEPOSD.DOCCOREL = D_FACTURA.COREL   
INNER JOIN D_DEPOS ON D_DEPOSD.COREL = D_DEPOS.COREL  
INNER JOIN P_PRODUCTO ON P_PRODUCTO.CODIGO = D_FACTURAD.PRODUCTO   
WHERE (D_FACTURA.STATCOM = 'N'  AND P.CREDITO = 0  
AND D_FACTURA.CODIGOLIQUIDACION = @CodigoLiquidacion 
AND D_FACTURA.SERIE= 'DL' AND D_FACTURA.ANULADO ='N')   
OR (D_FACTURA.STATCOM = 'N'  AND P.CREDITO = 0  
AND D_FACTURA.CODIGOLIQUIDACION = @CodigoLiquidacion 
AND D_FACTURA.SERIE <> 'DL')  
AND D_FACTURA.ANULADO = 'N'

END



GO
/****** Object:  StoredProcedure [dbo].[GetFacturasCreditoLotes]    Script Date: 2021/03/03 11:58:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[GetFacturasCreditoLotes]
	-- Add the parameters for the stored procedure here
	@CodigoLiquidacion as int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

SELECT DISTINCT D_FACTURA.ANULADO, D_FACTURA.STATCOM, VENDEDORES.BODEGA AS OFI_VENTAS, D_FACTURA.FECHA,
D_FACTURA.SERIE + RIGHT('000000' + CONVERT(nvarchar(6), D_FACTURA.CORELATIVO), 6) AS COREL, D_FACTURA.COREL AS COREL1, RIGHT ('0000000000' + D_FACTURA.CLIENTE,10) AS CLIENTE, 
RIGHT ('0000000000' + D_FACTURA.CLIENTE,10) AS CLIENTE2, D_FACTURA.VENDEDOR, D_FACTURA.SUPERVISOR, D_FACTURA.AYUDANTE, D_FACTURAD.PRODUCTO,
ISNULL(D_FACTURAD_LOTES.CANTIDAD, D_FACTURAD.CANT) AS CANT, ISNULL(D_FACTURAD_LOTES.CANTIDAD, D_FACTURAD.CANT) AS CANT2, 
ISNULL(D_FACTURAD_LOTES.LOTE, N'') AS LOTE, D_FACTURAD.PRECIODOC, D_FACTURAD.PRODUCTO AS PRODUCTO2, '' AS BARRA2, 
D_FACTURAD.PESO, D_FACTURA.RUTA, VENDEDORES.SUBBODEGA AS GRUPO_VEND, VENDEDORES.NIVEL, '' AS MOTIVO, 0 AS BONIFICADO, 
D_FACTURAD.VAL2 AS POSICION, 0 AS PADRE, '' AS CREDITO, '3000' AS SOCIEDAD, '' AS CUENTA, ROUND(D_FACTURA.TOTAL,2) AS TOTAL,
D_FACTURAD.UMVENTA,D_FACTURAD.UMSTOCK,D_FACTURAD.UMPESO,D_FACTURAD.FACTOR, D_FACTURA.REFERENCIA
FROM D_FACTURA INNER JOIN
D_FACTURAD ON D_FACTURA.COREL = D_FACTURAD.COREL INNER JOIN
VENDEDORES ON D_FACTURA.RUTA = VENDEDORES.RUTA AND D_FACTURA.VENDEDOR = VENDEDORES.CODIGO
INNER JOIN (SELECT DISTINCT COREL, CASE WHEN D_FACTURAP.CODPAGO = 4 THEN 1 ELSE 0 END AS CREDITO
FROM D_FACTURAP) AS P ON D_FACTURA.COREL = P.COREL
RIGHT OUTER JOIN D_FACTURAD_LOTES ON D_FACTURAD.COREL = D_FACTURAD_LOTES.COREL
AND D_FACTURAD.PRODUCTO = D_FACTURAD_LOTES.PRODUCTO
AND D_FACTURAD.UMVENTA = D_FACTURAD_LOTES.UMVENTA
AND D_FACTURAD.UMSTOCK = D_FACTURAD_LOTES.UMSTOCK
AND D_FACTURAD.UMPESO = D_FACTURAD_LOTES.UMPESO
INNER JOIN P_PRODUCTO  
ON P_PRODUCTO.CODIGO = D_FACTURAD.PRODUCTO
WHERE (D_FACTURA.STATCOM = 'N'
AND P.CREDITO = 1
AND D_FACTURA.CODIGOLIQUIDACION = @CodigoLiquidacion 
AND D_FACTURA.SERIE= 'DL' AND D_FACTURA.ANULADO ='N')
OR (D_FACTURA.STATCOM = 'N'
AND P.CREDITO = 1
AND D_FACTURA.CODIGOLIQUIDACION = @CodigoLiquidacion 
AND D_FACTURA.SERIE <> 'DL')
AND D_FACTURA.ANULADO = 'N' AND D_FACTURAD_LOTES.CANTIDAD >0

END



GO
/****** Object:  StoredProcedure [dbo].[INSERTA_BARRAS_D_STOCK_DEV]    Script Date: 2021/03/03 11:58:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[INSERTA_BARRAS_D_STOCK_DEV]
	-- Add the parameters for the stored procedure here
	@VENDEDOR AS NVARCHAR(15),
	@CORELFACTURA AS NVARCHAR(20),
	@FECHA AS DATE,
	@RUTA AS NVARCHAR(15),
	@CODIGOLIQUIDACION AS INT
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	INSERT INTO D_STOCKB_DEV
	SELECT BARRA, RUTA,@VENDEDOR, CODIGO,@CORELFACTURA ,@FECHA,PESO,@CODIGOLIQUIDACION  
	FROM P_STOCKB WHERE RUTA = @RUTA AND FECHA =  @FECHA
	AND BARRA NOT IN (SELECT BARRA FROM D_STOCKB_DEV )

END


GO
/****** Object:  StoredProcedure [dbo].[INSERTA_LOTES_FALTANTES]    Script Date: 2021/03/03 11:58:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[INSERTA_LOTES_FALTANTES]
	-- Add the parameters for the stored procedure here
	@FECHA AS DATE,
	@RUTA AS NVARCHAR(15)
AS
BEGIN
	INSERT INTO D_FACTURAD_LOTES 
		SELECT  D.COREL, D.PRODUCTO, S.LOTE, D.CANT, D.PESO, D.UMSTOCK, D.UMPESO, D.UMVENTA
		FROM D_FACTURA F 
			INNER JOIN  D_FACTURAD D ON F.COREL = D.COREL 
			INNER JOIN P_STOCK S ON D.PRODUCTO = S.CODIGO
		WHERE D.COREL IN (
				SELECT COREL 
				FROM D_FACTURA 
				WHERE RUTA = @RUTA AND FECHA = FECHA )
				AND S.RUTA = @RUTA AND S.FECHA = @FECHA AND S.STATUS = 'A'

END


GO
/****** Object:  StoredProcedure [dbo].[ModificaVendedor]    Script Date: 2021/03/03 11:58:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE procedure [dbo].[ModificaVendedor]
@ruta as nvarchar(15),
@fechaini as datetime, 
@fechafin as datetime,
@vendedor as nvarchar(15) 

AS

BEGIN

delete from temp_stock_liquidacion
where codigoruta = @Ruta and codigovendedor <>  @vendedor
and codigoliquidacion = ( select codigo from p_liquidacion
                          where ruta = @Ruta and  
						  fecha between @fechaini and @fechafin 
						  and vendedor <>  @vendedor)

update p_liquidacion set vendedor = @vendedor
where ruta = @Ruta and  fecha between @fechaini and @fechafin

update d_Factura set vendedor = @vendedor
where ruta = @Ruta and  fecha between @fechaini and @fechafin

update d_cxc set vendedor = @vendedor
where ruta = @Ruta and  fecha between @fechaini and @fechafin

update d_notacred set vendedor = @vendedor
where ruta = @Ruta and  fecha between @fechaini and @fechafin

update d_cobro set vendedor = @vendedor
where ruta = @Ruta and  fecha between @fechaini and @fechafin

update d_mov set usuario = @vendedor
where ruta = @Ruta and  fecha between @fechaini and @fechafin

update d_stockb_Dev set vendedor = @vendedor
where ruta = @Ruta and  fecha between @fechaini and @fechafin

END

GO
/****** Object:  StoredProcedure [dbo].[rptBonificacionesPorFechas]    Script Date: 2021/03/03 11:58:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[rptBonificacionesPorFechas]
@FechaInicio as DATETIME,
@FechaFin as DATETIME,
@EMPRESA AS NVARCHAR(3),
@Sucursal AS NVARCHAR(20)
AS
BEGIN
	SET NOCOUNT ON;

	SELECT	D_BONIF.FECHA, P_EMPRESA.NOMBRE AS Empresa, D_BONIF.RUTA, P_RUTA.NOMBRE AS NRUTA, D_BONIF.CLIENTE, 
			  P_CLIENTE.NOMBRE AS NCLIENTE, D_BONIF.PRODUCTO, P_PRODUCTO.DESCLARGA AS NPRODUCTO, D_BONIF.CANT AS CANTIDAD, 
			  D_BONIF.PRECIO, D_BONIF.COSTO, D_BONIF.TOTAL
	FROM	D_BONIF INNER JOIN
			P_PRODUCTO ON D_BONIF.PRODUCTO = P_PRODUCTO.CODIGO INNER JOIN
			P_RUTA ON D_BONIF.RUTA = P_RUTA.CODIGO INNER JOIN
			P_CLIENTE ON D_BONIF.CLIENTE = P_CLIENTE.CODIGO INNER JOIN
			P_EMPRESA ON P_PRODUCTO.EMPRESA = P_EMPRESA.EMPRESA
	WHERE	(convert(DATETIME,D_BONIF.FECHA) BETWEEN @FechaInicio AND @FechaFin) AND P_PRODUCTO.EMPRESA = @EMPRESA
	        AND P_CLIENTE.SUCURSAL = @Sucursal
END



GO
/****** Object:  StoredProcedure [dbo].[rptCobros]    Script Date: 2021/03/03 11:58:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[rptCobros]
	@FechaInicio as DATETIME, 
	@FechaFin as DATETIME,
	@ListadoRuta as nvarchar(max)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	DECLARE	@rutas as table (cliente nvarchar(15))
	DECLARE	@elem as nvarchar(15)
	DECLARE	@ind as int
	
	while @ListadoRuta is not null and @ListadoRuta  <>''
	begin
		SET @ind = charindex(',', @ListadoRuta)
		SET @elem = substring(@ListadoRuta, 1, @ind - 1)
		INSERT INTO @rutas VALUES (@elem)
		SET @ListadoRuta = substring(@ListadoRuta, @ind + 1, LEN (@ListadoRuta))
	end


	SELECT D_COBRO.COREL, D_COBRO.ANULADO, D_COBRO.FECHA, D_COBRO.CLIENTE, D_COBRO.RUTA, D_COBROD.COREL AS CORELD,
		   D_COBROD.DOCUMENTO, D_COBROD.TIPODOC, D_COBROD.MONTO, D_COBROD.PAGO, D_COBROP.COREL AS CORELP, D_COBROP.ITEM,
	       D_COBROP.CODPAGO, D_COBROP.TIPO, D_COBROP.VALOR,P_CLIENTE.CODIGO, P_CLIENTE.NOMBRE,P_RUTA.NOMBRE AS NOMRUTA, 
	       (case when d_cobrop.codpago='1' then d_cobrod.pago else 0 end) as EFECTIVO,
	       (case when d_cobrop.codpago='2' then d_cobrod.pago else 0 end) as CHEQUE,
			P_VENDEDOR.NOMBRE AS NOMVEN, P_VENDEDOR.CODIGO AS CODVEN 
	 FROM D_COBRO INNER JOIN 
	 D_COBROD ON D_COBRO.COREL = D_COBROD.COREL INNER JOIN
	 D_COBROP ON D_COBRO.COREL = D_COBROP.COREL INNER JOIN 
	 P_CLIENTE ON D_COBRO.CLIENTE = P_CLIENTE.CODIGO INNER JOIN 
	  P_RUTA ON D_COBRO.RUTA = P_RUTA.CODIGO AND D_COBRO.RUTA = P_RUTA.CODIGO 
	  INNER JOIN P_VENDEDOR ON D_COBRO.VENDEDOR = P_VENDEDOR.CODIGO 
	WHERE D_COBRO.ANULADO='N' AND (convert(DATETIME,D_COBRO.FECHA) BETWEEN @FechaInicio AND @FechaFin) AND D_COBRO.RUTA IN (SELECT * FROM @rutas)
	ORDER BY D_COBRO.RUTA,P_VENDEDOR.NOMBRE
END



GO
/****** Object:  StoredProcedure [dbo].[rptDescuentosFacturas]    Script Date: 2021/03/03 11:58:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[rptDescuentosFacturas]
@FechaInicio as DATETIME,
@FechaFin as DATETIME,
@ListadoRuta as nvarchar(max)
AS
BEGIN
	SET NOCOUNT ON;
	DECLARE	@rutas as table (cliente nvarchar(15))
	DECLARE	@elem as nvarchar(15)
	DECLARE	@ind as int
	
	while @ListadoRuta is not null and @ListadoRuta  <>''
	begin
		SET @ind = charindex(',', @ListadoRuta)
		SET @elem = substring(@ListadoRuta, 1, @ind - 1)
		INSERT INTO @rutas VALUES (@elem)
		SET @ListadoRuta = substring(@ListadoRuta, @ind + 1, LEN (@ListadoRuta))
	end

	SET NOCOUNT ON;

	SELECT	D_FACTURA.RUTA, P_RUTA.NOMBRE AS NRUTA, D_FACTURA.VENDEDOR, P_VENDEDOR.NOMBRE AS NVENDEDOR, D_FACTURA.CLIENTE, 
			P_CLIENTE.NOMBRE AS NCLIENTE, D_FACTURAD.PRODUCTO, P_PRODUCTO.DESCLARGA AS NPRODUCTO, D_FACTURAD.DES, 
			D_FACTURAD.DESMON
	FROM	D_FACTURA INNER JOIN
			  D_FACTURAD ON D_FACTURA.COREL = D_FACTURAD.COREL INNER JOIN
			  P_PRODUCTO ON D_FACTURAD.PRODUCTO = P_PRODUCTO.CODIGO INNER JOIN
			  P_RUTA ON D_FACTURA.RUTA = P_RUTA.CODIGO INNER JOIN
			  P_VENDEDOR ON D_FACTURA.VENDEDOR = P_VENDEDOR.CODIGO INNER JOIN
			  P_CLIENTE ON D_FACTURA.CLIENTE = P_CLIENTE.CODIGO
	WHERE D_FACTURA.ANULADO = 'N' and (convert(DATETIME,D_FACTURA.FECHA) between @FechaInicio and @FechaFin) and D_FACTURA.RUTA in (SELECT * FROM @rutas)
	UNION
	SELECT	D_FACTURA.RUTA, P_RUTA.NOMBRE AS NRUTA, D_FACTURA.VENDEDOR, P_VENDEDOR.NOMBRE AS NVENDEDOR, D_FACTURA.CLIENTE, 
			D_CLINUEVO.NOMBRE AS NCLIENTE, D_FACTURAD.PRODUCTO, P_PRODUCTO.DESCLARGA AS NPRODUCTO, D_FACTURAD.DES, 
			D_FACTURAD.DESMON
	FROM	D_FACTURA INNER JOIN
			  D_FACTURAD ON D_FACTURA.COREL = D_FACTURAD.COREL INNER JOIN
			  P_PRODUCTO ON D_FACTURAD.PRODUCTO = P_PRODUCTO.CODIGO INNER JOIN
			  P_RUTA ON D_FACTURA.RUTA = P_RUTA.CODIGO INNER JOIN
			  P_VENDEDOR ON D_FACTURA.VENDEDOR = P_VENDEDOR.CODIGO INNER JOIN
			  D_CLINUEVO ON D_FACTURA.CLIENTE = D_CLINUEVO.CODIGO
	WHERE D_FACTURA.ANULADO = 'N' and (convert(DATETIME,D_FACTURA.FECHA) between @FechaInicio and @FechaFin) and D_FACTURA.RUTA in (SELECT * FROM @rutas)

END



GO
/****** Object:  StoredProcedure [dbo].[rptDescuentosPedidos]    Script Date: 2021/03/03 11:58:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[rptDescuentosPedidos]
@FechaInicio as DATETIME,
@FechaFin as DATETIME,
@ListadoRuta as nvarchar(max)
AS
BEGIN
	SET NOCOUNT ON;
	DECLARE	@rutas as table (cliente nvarchar(15))
	DECLARE	@elem as nvarchar(15)
	DECLARE	@ind as int
	
	while @ListadoRuta is not null and @ListadoRuta  <>''
	begin
		SET @ind = charindex(',', @ListadoRuta)
		SET @elem = substring(@ListadoRuta, 1, @ind - 1)
		INSERT INTO @rutas VALUES (@elem)
		SET @ListadoRuta = substring(@ListadoRuta, @ind + 1, LEN (@ListadoRuta))
	end

	SET NOCOUNT ON;

	SELECT     D_PEDIDO.RUTA, P_RUTA.NOMBRE AS NRUTA, D_PEDIDO.VENDEDOR, P_VENDEDOR.NOMBRE AS NVENDEDOR, D_PEDIDO.CLIENTE, 
						  P_CLIENTE.NOMBRE AS NCLIENTE, D_PEDIDOD.PRODUCTO, P_PRODUCTO.DESCLARGA AS NPRODUCTO, D_PEDIDOD.DES, 
						  D_PEDIDOD.DESMON
	FROM         D_PEDIDO INNER JOIN
						  D_PEDIDOD ON D_PEDIDO.COREL = D_PEDIDOD.COREL INNER JOIN
						  P_PRODUCTO ON D_PEDIDOD.PRODUCTO = P_PRODUCTO.CODIGO INNER JOIN
						  P_RUTA ON D_PEDIDO.RUTA = P_RUTA.CODIGO INNER JOIN
						  P_VENDEDOR ON D_PEDIDO.VENDEDOR = P_VENDEDOR.CODIGO INNER JOIN
						  P_CLIENTE ON D_PEDIDO.CLIENTE = P_CLIENTE.CODIGO
	WHERE D_PEDIDO.ANULADO = 'N' and (convert(DATETIME,D_PEDIDO.FECHA) between @FechaInicio and @FechaFin) and D_PEDIDO.RUTA in (SELECT * FROM @rutas)
END



GO
/****** Object:  StoredProcedure [dbo].[rptDevolucionCambios]    Script Date: 2021/03/03 11:58:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[rptDevolucionCambios] 
	@FechaInicio as DATETIME, 
	@FechaFin as DATETIME,
	@Sucursal as NVARCHAR(20)
AS
BEGIN

	SET NOCOUNT ON;

SELECT	D_NOTACRED.COREL AS EMPRESA, D_CxCD.CODIGO AS PRODUCTO, P_PRODUCTO.DESCLARGA AS NPRODUCTO, D_CxC.CLIENTE, 
			P_CLIENTE.NOMBRE AS NCLIENTE, CASE WHEN D_CxC.TIPO = 'C' THEN 'CAMBIO' ELSE 'DEVOLUCIÓN' END AS TIPO, 
			CASE WHEN D_CxCD.ESTADO = 'M' THEN 'MALO' ELSE 'BUENO' END AS ESTADO, D_CxCD.CANT, D_CxCD.PESO AS PRECIO, 
			D_CxCD.TOTAL,D_CxC.FECHA, D_CxC.RUTA, D_CXC.VENDEDOR, P_VENDEDOR.NOMBRE
	FROM    D_CxC INNER JOIN
			D_CxCD ON D_CxC.COREL = D_CxCD.COREL INNER JOIN
			P_CLIENTE ON D_CxC.CLIENTE = P_CLIENTE.CODIGO INNER JOIN
			P_PRODUCTO ON D_CxCD.CODIGO = P_PRODUCTO.CODIGO INNER JOIN
			P_EMPRESA ON D_CxC.EMPRESA = P_EMPRESA.EMPRESA INNER JOIN
			P_VENDEDOR ON D_CXC.VENDEDOR = P_VENDEDOR.CODIGO INNER JOIN 
			D_NOTACRED ON D_CXC.COREL = D_NOTACRED.FACTURA AND D_CXC.REFERENCIA = ''
	WHERE	(D_CxC.ANULADO = N'N') AND (CONVERT(DATETIME,D_CxC.FECHA) BETWEEN @FechaInicio AND @FechaFin) 
	        AND P_CLIENTE.SUCURSAL = @SUCURSAL
	UNION
	SELECT	D_NOTACRED.COREL AS EMPRESA, D_CxCD.CODIGO AS PRODUCTO, P_PRODUCTO.DESCLARGA AS NPRODUCTO, D_CxC.CLIENTE, 
			P_CLIENTE.NOMBRE AS NCLIENTE, CASE WHEN D_CxC.TIPO = 'C' THEN 'CAMBIO' ELSE 'DEVOLUCIÓN' END AS TIPO, 
			CASE WHEN D_CxCD.ESTADO = 'M' THEN 'MALO' ELSE 'BUENO' END AS ESTADO, D_CxCD.CANT, D_CxCD.PESO AS PRECIO, 
			D_CxCD.TOTAL,D_CxC.FECHA, D_CxC.RUTA, D_CXC.VENDEDOR, P_VENDEDOR.NOMBRE
	FROM    D_CxC INNER JOIN
			D_CxCD ON D_CxC.COREL = D_CxCD.COREL INNER JOIN
			P_CLIENTE ON D_CxC.CLIENTE = P_CLIENTE.CODIGO INNER JOIN
			P_PRODUCTO ON D_CxCD.CODIGO = P_PRODUCTO.CODIGO INNER JOIN
			P_EMPRESA ON D_CxC.EMPRESA = P_EMPRESA.EMPRESA INNER JOIN
			P_VENDEDOR ON D_CXC.VENDEDOR = P_VENDEDOR.CODIGO INNER JOIN 
			D_NOTACRED ON D_CXC.REFERENCIA = D_NOTACRED.FACTURA AND D_CXC.REFERENCIA <> ''
	WHERE	(D_CxC.ANULADO = N'N') AND (CONVERT(DATETIME,D_CxC.FECHA) BETWEEN @FechaInicio AND @FechaFin)
	        AND P_CLIENTE.SUCURSAL = @SUCURSAL
	
	
END

	
/****** Object:  StoredProcedure [dbo].[rptBonificacionesPorFechas]    Script Date: 12/09/2018 07:25:13 p.m. ******/
SET ANSI_NULLS ON


GO
/****** Object:  StoredProcedure [dbo].[rptDevolucionCambios2]    Script Date: 2021/03/03 11:58:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[rptDevolucionCambios2] 
	@FechaInicio as DATETIME, 
	@FechaFin as DATETIME
AS
BEGIN

	SET NOCOUNT ON;

	SELECT	P_EMPRESA.NOMBRE AS EMPRESA, D_CxCD.CODIGO AS PRODUCTO, P_PRODUCTO.DESCLARGA AS NPRODUCTO, D_CxC.CLIENTE, 
			P_CLIENTE.NOMBRE AS NCLIENTE, CASE WHEN D_CxC.TIPO = 'C' THEN 'CAMBIO' ELSE 'DEVOLUCIÓN' END AS TIPO, 
			CASE WHEN D_CxCD.ESTADO = 'M' THEN 'MALO' ELSE 'BUENO' END AS ESTADO, D_CxCD.CANT, D_CxCD.PESO AS PRECIO, D_CxCD.TOTAL,
			D_CxC.FECHA, D_CxC.RUTA, D_CXC.VENDEDOR, P_VENDEDOR.NOMBRE
	FROM    D_CxC INNER JOIN
			D_CxCD ON D_CxC.COREL = D_CxCD.COREL INNER JOIN
			P_CLIENTE ON D_CxC.CLIENTE = P_CLIENTE.CODIGO INNER JOIN
			P_PRODUCTO ON D_CxCD.CODIGO = P_PRODUCTO.CODIGO INNER JOIN
			P_EMPRESA ON D_CxC.EMPRESA = P_EMPRESA.EMPRESA INNER JOIN
			P_VENDEDOR ON D_CXC.VENDEDOR = P_VENDEDOR.CODIGO
	WHERE	(D_CxC.ANULADO = N'N') AND (convert(DATETIME,D_CxC.FECHA) BETWEEN @FechaInicio AND @FechaFin)
END



GO
/****** Object:  StoredProcedure [dbo].[rptEstadisticaVentas]    Script Date: 2021/03/03 11:58:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[rptEstadisticaVentas] 
	@FechaInicio as DATETIME, 
	@FechaFin as DATETIME,
	@ListadoRuta as nvarchar(max)
AS
BEGIN
	SET NOCOUNT ON;
	DECLARE	@rutas as table (ruta nvarchar(15))
	DECLARE	@elem as nvarchar(15)
	DECLARE	@ind as int
	
	while @ListadoRuta is not null and @ListadoRuta  <>''
	begin
		SET @ind = charindex(',', @ListadoRuta)
		SET @elem = substring(@ListadoRuta, 1, @ind - 1)
		INSERT INTO @rutas VALUES (@elem)
		SET @ListadoRuta = substring(@ListadoRuta, @ind + 1, LEN (@ListadoRuta))
	end
	
	SELECT	D_FACTURA.FECHA, YEAR(D_FACTURA.FECHA) AS AÑO, P_MESES.NOMBRE AS MES, { fn WEEK(D_FACTURA.FECHA) } AS SEMANA, D_FACTURA.RUTA, 
						  P_RUTA.NOMBRE AS NRUTA, D_FACTURA.CLIENTE, P_CLIENTE.NOMBRE AS NCLIENTE, P_PRODUCTO.LINEA, P_LINEA.NOMBRE AS NLINEA, 
						  D_FACTURAD.PRODUCTO, P_PRODUCTO.DESCLARGA AS NPRODUCTO, D_FACTURAD.CANT, D_FACTURAD.PESO, D_FACTURAD.TOTAL
	FROM	D_FACTURA INNER JOIN
			  D_FACTURAD ON D_FACTURA.COREL = D_FACTURAD.COREL INNER JOIN
			  P_PRODUCTO ON D_FACTURAD.PRODUCTO = P_PRODUCTO.CODIGO INNER JOIN
			  P_LINEA ON P_PRODUCTO.LINEA = P_LINEA.CODIGO INNER JOIN
			  P_RUTA ON D_FACTURA.RUTA = P_RUTA.CODIGO INNER JOIN
			  P_CLIENTE ON D_FACTURA.CLIENTE = P_CLIENTE.CODIGO, P_MESES
	WHERE	P_MESES.MES = MONTH(D_FACTURA.FECHA) AND (D_FACTURA.ANULADO = N'N') AND (convert(DATETIME,FECHA) BETWEEN @FechaInicio AND @FechaFin) AND (@ListadoRuta IS NULL OR D_FACTURA.RUTA in (SELECT * FROM @rutas)) 
END



GO
/****** Object:  StoredProcedure [dbo].[rptIndiceFaltas]    Script Date: 2021/03/03 11:58:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[rptIndiceFaltas]
	@FechaInicio as DATETIME, 
	@FechaFin as DATETIME,
	@ListadoRuta as nvarchar(max)
AS
BEGIN
	SET NOCOUNT ON;
	DECLARE	@rutas as table (cliente nvarchar(15))
	DECLARE	@elem as nvarchar(15)
	DECLARE	@ind as int
	
	while @ListadoRuta is not null and @ListadoRuta  <>''
	begin
		SET @ind = charindex(',', @ListadoRuta)
		SET @elem = substring(@ListadoRuta, 1, @ind - 1)
		INSERT INTO @rutas VALUES (@elem)
		SET @ListadoRuta = substring(@ListadoRuta, @ind + 1, LEN (@ListadoRuta))
	end

	SELECT	DISTINCT  P_CLIRUTA.RUTA, P_RUTA.NOMBRE AS NRUTA, D_MERFALTA.CLIENTE, P_CLIENTE.NOMBRE AS NCLIENTE, D_MERFALTA.PRODUCTO, 
						P_PRODUCTO.DESCLARGA AS NPRODUCTO, D_MERFALTA.FECHA
	FROM	D_MERFALTA INNER JOIN P_PRODUCTO ON D_MERFALTA.PRODUCTO = P_PRODUCTO.CODIGO 
						INNER JOIN P_CLIENTE ON D_MERFALTA.CLIENTE = P_CLIENTE.CODIGO 
						INNER JOIN P_CLIRUTA ON P_CLIENTE.CODIGO = P_CLIRUTA.CLIENTE 
						INNER JOIN P_RUTA ON P_CLIRUTA.RUTA = P_RUTA.CODIGO
	WHERE (convert(DATETIME,D_MERFALTA.FECHA) BETWEEN @fechainicio AND @fechafin) AND P_CLIRUTA.RUTA IN (SELECT * FROM @rutas)
END



GO
/****** Object:  StoredProcedure [dbo].[rptInventario]    Script Date: 2021/03/03 11:58:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[rptInventario]
	@FechaInicio as DATETIME, 
	@FechaFin as DATETIME,
	@ListadoRuta as nvarchar(max)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	DECLARE	@rutas as table (cliente nvarchar(15))
	DECLARE	@elem as nvarchar(15)
	DECLARE	@ind as int
	
	while @ListadoRuta is not null and @ListadoRuta  <>''
	begin
		SET @ind = charindex(',', @ListadoRuta)
		SET @elem = substring(@ListadoRuta, 1, @ind - 1)
		INSERT INTO @rutas VALUES (@elem)
		SET @ListadoRuta = substring(@ListadoRuta, @ind + 1, LEN (@ListadoRuta))
	end
	
	DROP TABLE INVENTARIO_TEMP

	SELECT  P.CODIGO + ' ' + P.DESCLARGA AS PRODUCTO, SUM(S.CANT) AS INICIAL, 0 AS ARRASTRE, 0 AS VENTA
	INTO INVENTARIO_TEMP
	FROM         P_STOCK AS S INNER JOIN
						  P_PRODUCTO AS P ON S.CODIGO = P.CODIGO 
	WHERE     (S.RUTA IN (SELECT * FROM @rutas))
	GROUP BY P.CODIGO, P.DESCLARGA
	UNION
	SELECT P.CODIGO + ' ' + P.DESCLARGA AS PRODUCTO,
		   0 AS INICIAL, CASE WHEN I.ARRASTRE = 1 THEN SUM(I.CANTIDAD) ELSE 0 END AS ARRASTRE, 0 AS VENTA
	FROM    P_INVENTARIO_RUTA AS I  INNER JOIN
		   P_PRODUCTO AS P ON P.CODIGO = I.PRODUCTO
	WHERE     (I.FECHA BETWEEN @FechaInicio AND @FechaFin) AND (I.RUTA IN (SELECT * FROM @rutas))
	GROUP BY P.CODIGO, P.DESCLARGA, I.ARRASTRE
	UNION
	SELECT P.CODIGO + ' ' + P.DESCLARGA AS PRODUCTO, 0 AS INICIAL, 0 AS ARRASTRE, SUM(D.CANT) AS VENTA
	FROM D_FACTURA F INNER JOIN D_FACTURAD D ON   
		   F.COREL = D.COREL INNER JOIN  P_PRODUCTO P ON D.PRODUCTO = P.CODIGO   
	WHERE (F.ANULADO = N'N') AND (F.FECHA BETWEEN @FechaInicio AND @FechaFin)  
		   AND (F.RUTA IN (SELECT * FROM @rutas))
	GROUP BY P.CODIGO, P.DESCLARGA
	ORDER BY PRODUCTO

	SELECT PRODUCTO, SUM(INICIAL) AS INICIAL, SUM(ARRASTRE) AS ARRASTRE, 
		   SUM(INICIAL)-SUM(ARRASTRE) AS RECARGA, SUM(VENTA) AS VENTA, SUM(INICIAL)-SUM(VENTA) AS DEVOLUCION
	FROM INVENTARIO_TEMP
	GROUP BY PRODUCTO

END



GO
/****** Object:  StoredProcedure [dbo].[rptInventarioCompetencia]    Script Date: 2021/03/03 11:58:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create DATETIME,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[rptInventarioCompetencia]
	@FechaInicio as DATETIME, 
	@FechaFin as DATETIME,
	@ListadoRuta as nvarchar(max)
AS
BEGIN
	SET NOCOUNT ON;
	DECLARE	@rutas as table (cliente nvarchar(15))
	DECLARE	@elem as nvarchar(15)
	DECLARE	@ind as int
	
	while @ListadoRuta is not null and @ListadoRuta  <>''
	begin
		SET @ind = charindex(',', @ListadoRuta)
		SET @elem = substring(@ListadoRuta, 1, @ind - 1)
		INSERT INTO @rutas VALUES (@elem)
		SET @ListadoRuta = substring(@ListadoRuta, @ind + 1, LEN (@ListadoRuta))
	end

	SELECT	DISTINCT  P_CLIRUTA.RUTA, P_RUTA.NOMBRE AS NRUTA, D_MERCOMP.CLIENTE, P_CLIENTE.NOMBRE AS NCLIENTE, D_MERCOMP.PRODUCTO, 
						P_PRODUCTO.DESCLARGA AS NPRODUCTO, D_MERCOMP.FECHA, D_MERCOMP.CANT, D_MERCOMP.PRECIO
	FROM	D_MERCOMP INNER JOIN P_PRODUCTO ON D_MERCOMP.PRODUCTO = P_PRODUCTO.CODIGO 
						INNER JOIN P_CLIENTE ON D_MERCOMP.CLIENTE = P_CLIENTE.CODIGO 
						INNER JOIN P_CLIRUTA ON P_CLIENTE.CODIGO = P_CLIRUTA.CLIENTE 
						INNER JOIN P_RUTA ON P_CLIRUTA.RUTA = P_RUTA.CODIGO
	WHERE (convert(DATETIME,D_MERCOMP.FECHA) BETWEEN @fechainicio AND @fechafin) AND P_CLIRUTA.RUTA IN (SELECT * FROM @rutas)
END

/****** Object:  StoredProcedure [dbo].[rptInventarioPropio]    Script Date: 12/02/2013 15:47:47 ******/
SET ANSI_NULLS ON


GO
/****** Object:  StoredProcedure [dbo].[rptInventarioPropio]    Script Date: 2021/03/03 11:58:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[rptInventarioPropio]
	@FechaInicio as DATETIME, 
	@FechaFin as DATETIME,
	@ListadoRuta as nvarchar(max)
AS
BEGIN
	SET NOCOUNT ON;
	DECLARE	@rutas as table (cliente nvarchar(15))
	DECLARE	@elem as nvarchar(15)
	DECLARE	@ind as int
	
	while @ListadoRuta is not null and @ListadoRuta  <>''
	begin
		SET @ind = charindex(',', @ListadoRuta)
		SET @elem = substring(@ListadoRuta, 1, @ind - 1)
		INSERT INTO @rutas VALUES (@elem)
		SET @ListadoRuta = substring(@ListadoRuta, @ind + 1, LEN (@ListadoRuta))
	end

	SELECT	DISTINCT  P_CLIRUTA.RUTA, P_RUTA.NOMBRE AS NRUTA, D_MERPROPIO.CLIENTE, P_CLIENTE.NOMBRE AS NCLIENTE, D_MERPROPIO.PRODUCTO, 
						P_PRODUCTO.DESCLARGA AS NPRODUCTO, D_MERPROPIO.FECHA, D_MERPROPIO.CANT, D_MERPROPIO.PRECIO
	FROM	D_MERPROPIO INNER JOIN P_PRODUCTO ON D_MERPROPIO.PRODUCTO = P_PRODUCTO.CODIGO 
						INNER JOIN P_CLIENTE ON D_MERPROPIO.CLIENTE = P_CLIENTE.CODIGO 
						INNER JOIN P_CLIRUTA ON P_CLIENTE.CODIGO = P_CLIRUTA.CLIENTE 
						INNER JOIN P_RUTA ON P_CLIRUTA.RUTA = P_RUTA.CODIGO
	WHERE (convert(DATETIME,D_MERPROPIO.FECHA) BETWEEN @fechainicio AND @fechafin) AND P_CLIRUTA.RUTA IN (SELECT * FROM @rutas)
END

/****** Object:  StoredProcedure [dbo].[rptObjetivosCobros]    Script Date: 12/02/2013 15:48:11 ******/
SET ANSI_NULLS ON


GO
/****** Object:  StoredProcedure [dbo].[rptObjetivosCobros]    Script Date: 2021/03/03 11:58:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[rptObjetivosCobros]
@OBJANO as int,
@OBJMES as int 
AS
BEGIN
	SET NOCOUNT ON;

	SELECT	O_COBRO.RUTA, P_RUTA.NOMBRE, O_COBRO.METAV, O_COBRO.ACUMV 
	FROM	O_COBRO INNER JOIN P_RUTA ON O_COBRO.OBJANO = P_RUTA.OBJANO
	WHERE	O_COBRO.OBJANO = @OBJANO AND O_COBRO.OBJMES = @OBJMES
END



GO
/****** Object:  StoredProcedure [dbo].[rptObjetivosVentasGrafico]    Script Date: 2021/03/03 11:58:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[rptObjetivosVentasGrafico]
@OBJANO as int,
@ListadoRuta as nvarchar(max) 
AS
BEGIN
	SET NOCOUNT ON;
	DECLARE	@rutas as table (cliente nvarchar(15))
	DECLARE	@elem as nvarchar(15)
	DECLARE	@ind as int
	
	while @ListadoRuta is not null and @ListadoRuta  <>''
	begin
		SET @ind = charindex(',', @ListadoRuta)
		SET @elem = substring(@ListadoRuta, 1, @ind - 1)
		INSERT INTO @rutas VALUES (@elem)
		SET @ListadoRuta = substring(@ListadoRuta, @ind + 1, LEN (@ListadoRuta))
	end
	
	SELECT	O_RUTA.OBJANO, O_RUTA.OBJMES, RUTA, P_RUTA.CODIGO AS NRUTA, 
			METAV, METAU, ACUMV, ACUMU, P_MESES.NOMBRE
	FROM	O_RUTA INNER JOIN P_MESES ON O_RUTA.OBJMES = P_MESES.MES
					INNER JOIN P_RUTA ON O_RUTA.RUTA = P_RUTA.CODIGO
	WHERE	O_RUTA.OBJANO = @OBJANO AND RUTA IN (SELECT * FROM @rutas)
END



GO
/****** Object:  StoredProcedure [dbo].[rptPreventasPorCliente]    Script Date: 2021/03/03 11:58:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[rptPreventasPorCliente] 
	@FechaInicio as DATETIME, 
	@FechaFin as DATETIME
AS
BEGIN

	SET NOCOUNT ON;

	SELECT	D_PEDIDO.CLIENTE, P_CLIENTE.NOMBRE, D_PEDIDO.IMPMONTO, D_PEDIDO.DESMONTO, D_PEDIDO.TOTAL
	FROM	D_PEDIDO INNER JOIN P_CLIENTE ON D_PEDIDO.CLIENTE = P_CLIENTE.CODIGO
	WHERE   (D_PEDIDO.ANULADO = 'N') AND (convert(DATETIME,D_PEDIDO.FECHA) BETWEEN @FechaInicio AND @FechaFin)
END



GO
/****** Object:  StoredProcedure [dbo].[rptPromedioVentas]    Script Date: 2021/03/03 11:58:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[rptPromedioVentas] 
@FechaInicio as DATETIME,
@FechaFin as DATETIME,
@ListadoRuta as nvarchar(max),
@ListadoCliente as nvarchar(max),
@Sucursal as nvarchar(20)
AS
BEGIN
	
	SET NOCOUNT ON;
	declare	@clientes as table (cliente nvarchar(15))
	declare	@rutas as table (cliente nvarchar(15))
	declare	@elem as nvarchar(15)
	declare	@ind as int

	while @listadoCliente is not null and @listadoCliente <>''
	begin
		set @ind = charindex(',', @ListadoCliente)
		set @elem = substring(@ListadoCliente, 1, @ind - 1)
		insert into @clientes values (@elem)
		set @ListadoCliente = substring(@ListadoCliente, @ind + 1, LEN (@ListadoCliente))
	end 
	
	while @ListadoRuta is not null and @ListadoRuta  <>''
	begin
		set @ind = charindex(',', @ListadoRuta)
		set @elem = substring(@ListadoRuta, 1, @ind - 1)
		insert into @rutas values (@elem)
		set @ListadoRuta = substring(@ListadoRuta, @ind + 1, LEN (@ListadoRuta))
	end 

	SELECT     D_FACTURAD.PRODUCTO AS CPRODUCTO, P_PRODUCTO.DESCLARGA AS NPRODUCTO, D_FACTURA.RUTA AS CRUTA, P_RUTA.NOMBRE AS NRUTA, 
						  D_FACTURA.VENDEDOR AS CVENDEDOR, P_VENDEDOR.NOMBRE AS NVENDEDOR, D_FACTURA.CLIENTE AS CCLIENTE, 
						  P_CLIENTE.NOMBRE AS NCLIENTE,D_FACTURAD.CANT AS CANTIDAD
	FROM         D_FACTURA INNER JOIN
						  D_FACTURAD ON D_FACTURA.COREL = D_FACTURAD.COREL INNER JOIN
						  P_RUTA ON D_FACTURA.RUTA = P_RUTA.CODIGO INNER JOIN
						  P_VENDEDOR ON D_FACTURA.VENDEDOR = P_VENDEDOR.CODIGO INNER JOIN
						  P_CLIENTE ON D_FACTURA.CLIENTE = P_CLIENTE.CODIGO INNER JOIN
						  P_PRODUCTO ON D_FACTURAD.PRODUCTO = P_PRODUCTO.CODIGO
	WHERE (D_FACTURA.ANULADO = 'N' AND (convert(DATETIME,D_FACTURA.FECHA) between @FechaInicio AND @FechaFin)) AND
		  (@ListadoCliente is null  OR D_FACTURA.CLIENTE  in (select * from @Clientes)) AND
		  (@ListadoRuta is null  OR D_FACTURA.RUTA in (select * from @Rutas)) AND P_RUTA.SUCURSAL = @Sucursal
END



GO
/****** Object:  StoredProcedure [dbo].[rptProyeccionCargaPorProducto]    Script Date: 2021/03/03 11:58:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[rptProyeccionCargaPorProducto]
	@FechaInicio as DATETIME, 
	@FechaFin as DATETIME,
	@ListadoRuta as nvarchar(max)
AS
BEGIN
	SET NOCOUNT ON;
	DECLARE	@rutas as table (cliente nvarchar(15))
	DECLARE	@elem as nvarchar(15)
	DECLARE	@ind as int
	
	while @ListadoRuta is not null and @ListadoRuta  <>''
	begin
		SET @ind = charindex(',', @ListadoRuta)
		SET @elem = substring(@ListadoRuta, 1, @ind - 1)
		INSERT INTO @rutas VALUES (@elem)
		SET @ListadoRuta = substring(@ListadoRuta, @ind + 1, LEN (@ListadoRuta))
	end

	SELECT	D_FACTURA.RUTA, P_RUTA.NOMBRE AS NRUTA, D_FACTURAD.PRODUCTO, P_PRODUCTO.DESCLARGA AS NPRODUCTO, D_FACTURAD.CANT, 
			D_FACTURAD.PESO
	FROM	D_FACTURA INNER JOIN
			D_FACTURAD ON D_FACTURA.COREL = D_FACTURAD.COREL INNER JOIN
			P_RUTA ON D_FACTURA.RUTA = P_RUTA.CODIGO INNER JOIN
			P_PRODUCTO ON D_FACTURAD.PRODUCTO = P_PRODUCTO.CODIGO
	WHERE	(D_FACTURA.ANULADO = 'N') AND (convert(DATETIME,D_FACTURA.FECHA) BETWEEN @FechaInicio AND @FechaFin) AND D_FACTURA.RUTA IN (SELECT * FROM @rutas) 
END



GO
/****** Object:  StoredProcedure [dbo].[rptPSiempreCompra]    Script Date: 2021/03/03 11:58:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[rptPSiempreCompra] 
	@FechaInicio as DATETIME, 
	@FechaFin as DATETIME
AS
BEGIN

	SET NOCOUNT ON;
	 declare @Producto as table (cliente nvarchar(15), producto nvarchar(15), cantidad int)
	 declare @Cliente as table (cliente nvarchar(15), cantidad int)
	 
	 INSERT INTO @Producto 
		SELECT	D_FACTURA.CLIENTE as cliente, D_FACTURAD.PRODUCTO as producto, COUNT(DISTINCT D_FACTURAD.COREL) AS CANTIDAD
		FROM	D_FACTURAD INNER JOIN D_FACTURA ON D_FACTURAD.COREL = D_FACTURA.COREL
		WHERE     (D_FACTURAD.ANULADO = N'N') and (convert(DATETIME,D_FACTURA.FECHA) between @fechainicio and @fechafin)
		GROUP BY D_FACTURA.CLIENTE, D_FACTURAD.PRODUCTO
	
	INSERT INTO @Cliente 
		SELECT D_FACTURA.CLIENTE as cliente, COUNT(DISTINCT D_FACTURA.COREL) AS CANTIDAD
		FROM D_FACTURA
		WHERE     (D_FACTURA.ANULADO = N'N') and (convert(DATETIME,D_FACTURA.FECHA) between @fechainicio and @fechafin)
		GROUP BY D_FACTURA.CLIENTE
		
	 SELECT	P.cliente, P_CLIENTE.NOMBRE as NOMBRECLIENTE, P.producto, P_PRODUCTO.DESCLARGA as NOMBREPRODUCTO
	 FROM	@Producto as P INNER JOIN P_CLIENTE ON P.cliente = P_CLIENTE.CODIGO
						   INNER JOIN P_PRODUCTO ON P.producto = P_PRODUCTO.CODIGO
						   INNER JOIN @Cliente as C ON P.cliente = C.cliente and p.cantidad = c.cantidad
	 ORDER BY P.cliente 
	 --(SELECT COUNT(COREL) AS CANTF FROM D_FACTURA AS f WHERE (f.CLIENTE = p.cliente and f.ANULADO = 'N' and (f.FECHA between @FechaInicio and @FechaFin)))

END



GO
/****** Object:  StoredProcedure [dbo].[rptRutaTiempoPromedioCliente]    Script Date: 2021/03/03 11:58:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[rptRutaTiempoPromedioCliente]
	@FechaInicio as DATETIME, 
	@FechaFin as DATETIME,
	@ListadoRuta as nvarchar(max)
AS
BEGIN
	SET NOCOUNT ON;
	DECLARE	@rutas as table (cliente nvarchar(15))
	DECLARE	@elem as nvarchar(15)
	DECLARE	@ind as int
	
	while @ListadoRuta is not null and @ListadoRuta  <>''
	begin
		SET @ind = charindex(',', @ListadoRuta)
		SET @elem = substring(@ListadoRuta, 1, @ind - 1)
		INSERT INTO @rutas VALUES (@elem)
		SET @ListadoRuta = substring(@ListadoRuta, @ind + 1, LEN (@ListadoRuta))
	end
	
SELECT	D_ATENCION.RUTA, P_RUTA.NOMBRE AS NRUTA, D_ATENCION.CLIENTE, P_CLIENTE.NOMBRE, D_ATENCION.TIEMPO
FROM	D_ATENCION INNER JOIN P_CLIENTE ON D_ATENCION.CLIENTE = P_CLIENTE.CODIGO INNER JOIN
		P_RUTA ON D_ATENCION.RUTA = P_RUTA.CODIGO
WHERE	(convert(DATETIME,D_ATENCION.FECHA) BETWEEN @fechainicio AND @fechafin) AND D_ATENCION.RUTA IN (SELECT * FROM @rutas)
END



GO
/****** Object:  StoredProcedure [dbo].[rptRutaTiempoPromedioNegocio]    Script Date: 2021/03/03 11:58:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[rptRutaTiempoPromedioNegocio]
	@FechaInicio as DATETIME, 
	@FechaFin as DATETIME,
	@ListadoRuta as nvarchar(max)
AS
BEGIN
	SET NOCOUNT ON;
	DECLARE	@rutas as table (cliente nvarchar(15))
	DECLARE	@elem as nvarchar(15)
	DECLARE	@ind as int
	
	while @ListadoRuta is not null and @ListadoRuta  <>''
	begin
		SET @ind = charindex(',', @ListadoRuta)
		SET @elem = substring(@ListadoRuta, 1, @ind - 1)
		INSERT INTO @rutas VALUES (@elem)
		SET @ListadoRuta = substring(@ListadoRuta, @ind + 1, LEN (@ListadoRuta))
	end
	
SELECT     D_ATENCION.RUTA, P_RUTA.NOMBRE AS NRUTA, D_ATENCION.TIEMPO, P_CLIENTE.TIPONEG, P_TIPONEG.NOMBRE AS NNEGOCIO
FROM         D_ATENCION INNER JOIN
                      P_CLIENTE ON D_ATENCION.CLIENTE = P_CLIENTE.CODIGO INNER JOIN
                      P_RUTA ON D_ATENCION.RUTA = P_RUTA.CODIGO INNER JOIN
                      P_TIPONEG ON P_CLIENTE.TIPONEG = P_TIPONEG.CODIGO
WHERE	(convert(DATETIME,D_ATENCION.FECHA) BETWEEN @fechainicio AND @fechafin) AND D_ATENCION.RUTA IN (SELECT * FROM @rutas)
END



GO
/****** Object:  StoredProcedure [dbo].[rptVentaProductoPorDiaSemana]    Script Date: 2021/03/03 11:58:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[rptVentaProductoPorDiaSemana] 
	@FechaInicio as DATETIME, 
	@FechaFin as DATETIME,
	@ListadoProducto as nvarchar(max)
AS
BEGIN
	SET NOCOUNT ON;
	
	DECLARE	@productos as table (cliente nvarchar(15))
	DECLARE	@elem as nvarchar(15)
	DECLARE	@ind as int
	
	while @ListadoProducto is not null and @ListadoProducto  <>''
	begin
		SET @ind = charindex(',', @ListadoProducto)
		SET @elem = substring(@ListadoProducto, 1, @ind - 1)
		INSERT INTO @productos VALUES (@elem)
		SET @ListadoProducto = substring(@ListadoProducto, @ind + 1, LEN (@ListadoProducto))
	end
	
	SELECT     P_PRODUCTO.CODIGO, P_PRODUCTO.DESCCORTA, P_DIA_SEMANA.DIASEMANA, D_FACTURAD.CANT
	FROM         P_PRODUCTO INNER JOIN D_FACTURAD ON P_PRODUCTO.CODIGO = D_FACTURAD.PRODUCTO 
							INNER JOIN D_FACTURA ON D_FACTURAD.COREL = D_FACTURA.COREL
				, P_DIA_SEMANA
	WHERE P_PRODUCTO.CODIGO in (select * from @productos) and D_FACTURAD.ANULADO = N'N' and (convert(DATETIME,D_FACTURA.FECHA) between @FechaInicio and @FechaFin) and P_DIA_SEMANA.DIA = { fn DAYOFWEEK(D_FACTURA.FECHA) } 
	ORDER BY P_DIA_SEMANA.DIA
END



GO
/****** Object:  StoredProcedure [dbo].[rptVentasPorArea]    Script Date: 2021/03/03 11:58:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[rptVentasPorArea] 
	@FechaInicio as DATETIME, 
	@FechaFin as DATETIME
AS
BEGIN

	SET NOCOUNT ON;

	SELECT	P_AREA.COD_PAIS AS PAIS, P_PAIS.NOMBRE AS NPAIS, P_DEPAR.AREA, P_AREA.NOMBRE AS NAREA, D_FACTURA.DESMONTO, 
			D_FACTURA.IMPMONTO, D_FACTURA.TOTAL
	FROM	D_FACTURA INNER JOIN
			  P_CLIENTE ON D_FACTURA.CLIENTE = P_CLIENTE.CODIGO INNER JOIN
			  P_MUNI ON P_CLIENTE.MUNICIPIO = P_MUNI.CODIGO INNER JOIN
			  P_DEPAR ON P_MUNI.DEPAR = P_DEPAR.CODIGO INNER JOIN
			  P_AREA ON P_DEPAR.AREA = P_AREA.CODIGO INNER JOIN
			  P_PAIS ON P_AREA.COD_PAIS = P_PAIS.COD_PAIS
	WHERE	(D_FACTURA.ANULADO = 'N') AND (convert(DATETIME,D_FACTURA.FECHA) BETWEEN @FechaInicio AND @FechaFin)
	UNION
	SELECT	'' AS PAIS, 'Sin definir' AS NPAIS, '' as AREA, 'Sin definir' AS NAREA, D_FACTURA.DESMONTO, 
			D_FACTURA.IMPMONTO, D_FACTURA.TOTAL
	FROM	D_FACTURA INNER JOIN
			  D_CLINUEVO ON D_FACTURA.CLIENTE = D_CLINUEVO.CODIGO
	WHERE	(D_FACTURA.ANULADO = 'N') AND (convert(DATETIME,D_FACTURA.FECHA) BETWEEN @FechaInicio AND @FechaFin)
END



GO
/****** Object:  StoredProcedure [dbo].[rptVentasPorCliente]    Script Date: 2021/03/03 11:58:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[rptVentasPorCliente] 
	@FechaInicio as DATETIME, 
	@FechaFin as DATETIME,
	@Sucursal as NVARCHAR(20)
AS
BEGIN

	SET NOCOUNT ON;

	SELECT	D_FACTURA.CLIENTE, P_CLIENTE.NOMBRE, D_FACTURA.IMPMONTO, D_FACTURA.DESMONTO, D_FACTURA.TOTAL
	FROM	D_FACTURA INNER JOIN P_CLIENTE ON D_FACTURA.CLIENTE = P_CLIENTE.CODIGO
	WHERE   (D_FACTURA.ANULADO = 'N') AND (convert(DATETIME,D_FACTURA.FECHA) BETWEEN @FechaInicio AND @FechaFin)
	        AND P_CLIENTE.SUCURSAL = @Sucursal
	UNION
	SELECT	D_FACTURA.CLIENTE, D_CLINUEVO.NOMBRE, D_FACTURA.IMPMONTO, D_FACTURA.DESMONTO, D_FACTURA.TOTAL
	FROM	D_FACTURA INNER JOIN D_CLINUEVO ON D_FACTURA.CLIENTE = D_CLINUEVO.CODIGO 
	        INNER JOIN P_RUTA ON D_FACTURA.RUTA = P_RUTA.CODIGO
	WHERE   (D_FACTURA.ANULADO = 'N') AND (convert(DATETIME,D_FACTURA.FECHA) BETWEEN @FechaInicio AND @FechaFin)
	        AND P_RUTA.SUCURSAL = @Sucursal

END



GO
/****** Object:  StoredProcedure [dbo].[rptVentasPorCliPorProd]    Script Date: 2021/03/03 11:58:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[rptVentasPorCliPorProd] 
	@FechaInicio as DATETIME, 
	@FechaFin as DATETIME
AS
BEGIN

	SET NOCOUNT ON;

	SELECT	E.CLIENTE, C.NOMBRE, P.CODIGO, P.DESCLARGA,SUM(D.CANT) AS CANT,D.PRECIODOC,SUM(D.TOTAL) AS TOTAL
FROM	D_FACTURA E INNER JOIN P_CLIENTE C ON E.CLIENTE = C.CODIGO 
        INNER JOIN D_FACTURAD D ON D.COREL = E.COREL 
        INNER JOIN P_PRODUCTO P ON D.PRODUCTO = P.CODIGO
WHERE   (E.ANULADO = 'N') AND (convert(dateTIME,E.FECHA) BETWEEN @FechaInicio AND @FechaFin)
GROUP BY E.CLIENTE, C.NOMBRE, P.CODIGO, P.DESCLARGA,D.PRECIODOC
UNION
SELECT	E.CLIENTE, C.NOMBRE, P.CODIGO, P.DESCLARGA,SUM(D.CANT) AS CANT,D.PRECIODOC,SUM(D.TOTAL) AS TOTAL
FROM	D_FACTURA E INNER JOIN D_CLINUEVO C ON E.CLIENTE = C.CODIGO
        INNER JOIN D_FACTURAD D ON D.COREL = E.COREL 
        INNER JOIN P_PRODUCTO P ON D.PRODUCTO = P.CODIGO
WHERE   (E.ANULADO = 'N') AND (convert(dateTIME,E.FECHA) BETWEEN @FechaInicio AND @FechaFin)
GROUP BY E.CLIENTE, C.NOMBRE, P.CODIGO, P.DESCLARGA,D.PRECIODOC

END;




GO
/****** Object:  StoredProcedure [dbo].[rptVentaXLinea]    Script Date: 2021/03/03 11:58:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[rptVentaXLinea]
	@FechaInicio as DATETIME, 
	@FechaFin as DATETIME,
	@ListadoRuta as nvarchar(max)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	DECLARE	@rutas as table (cliente nvarchar(15))
	DECLARE	@elem as nvarchar(15)
	DECLARE	@ind as int
	
	while @ListadoRuta is not null and @ListadoRuta  <>''
	begin
		SET @ind = charindex(',', @ListadoRuta)
		SET @elem = substring(@ListadoRuta, 1, @ind - 1)
		INSERT INTO @rutas VALUES (@elem)
		SET @ListadoRuta = substring(@ListadoRuta, @ind + 1, LEN (@ListadoRuta))
	end

	SELECT L.CODIGO, 'VENTA TOTAL ' + L.NOMBRE AS NOMBRE, SUM(D.CANT) AS CANTIDAD, SUM(ROUND(D.TOTAL, 2)) - SUM(ROUND(D.IMP, 2)) AS SUBTOTAL, 
		   SUM(ROUND(D.IMP, 2)) AS IMPUESTO, SUM(ROUND(D.TOTAL, 2)) AS TOTAL
	FROM   P_LINEA AS L LEFT OUTER JOIN
		   P_PRODUCTO AS P ON L.CODIGO = P.LINEA FULL OUTER JOIN
		   D_FACTURAD AS D FULL OUTER JOIN
		   D_FACTURA AS F ON F.COREL = D.COREL ON P.CODIGO = D.PRODUCTO
	WHERE  (F.ANULADO = N'N')AND (F.FECHA BETWEEN @FechaInicio AND @FechaFin) AND (F.RUTA IN (SELECT * FROM @rutas)) 
	GROUP BY L.CODIGO, L.NOMBRE
	UNION
	SELECT L.CODIGO, 'VENTA TOTAL ' + L.NOMBRE AS NOMBRE, 0 AS CANTIDAD, 0 AS SUBTOTAL, 0 AS IMPUESTO, 0 AS TOTAL
	FROM   P_LINEA L
	WHERE L.CODIGO NOT IN (SELECT    L.CODIGO FROM         P_LINEA AS L LEFT OUTER JOIN
		  P_PRODUCTO AS P ON L.CODIGO = P.LINEA FULL OUTER JOIN
		  D_FACTURAD AS D FULL OUTER JOIN
		  D_FACTURA AS F ON F.COREL = D.COREL ON P.CODIGO = D.PRODUCTO
	WHERE (F.ANULADO = N'N')AND (F.FECHA BETWEEN @FechaInicio AND @FechaFin) AND (F.RUTA IN (SELECT * FROM @rutas)) 
	GROUP BY L.CODIGO, L.NOMBRE)
	ORDER BY L.CODIGO

END



GO
/****** Object:  StoredProcedure [dbo].[rptVentaXMediaP]    Script Date: 2021/03/03 11:58:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[rptVentaXMediaP]
	@FechaInicio as DATETIME, 
	@FechaFin as DATETIME,
	@ListadoRuta as nvarchar(max)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	DECLARE	@rutas as table (cliente nvarchar(15))
	DECLARE	@elem as nvarchar(15)
	DECLARE	@ind as int
	
	while @ListadoRuta is not null and @ListadoRuta  <>''
	begin
		SET @ind = charindex(',', @ListadoRuta)
		SET @elem = substring(@ListadoRuta, 1, @ind - 1)
		INSERT INTO @rutas VALUES (@elem)
		SET @ListadoRuta = substring(@ListadoRuta, @ind + 1, LEN (@ListadoRuta))
	end
	
	SELECT P_MEDIAPAGO.NOMBRE, SUM(D_FACTURAP.VALOR) AS TOTAL
	FROM D_FACTURA INNER JOIN
		 D_FACTURAP ON D_FACTURA.COREL = D_FACTURAP.COREL INNER JOIN
		 P_MEDIAPAGO ON D_FACTURAP.CODPAGO = P_MEDIAPAGO.CODIGO
	WHERE (D_FACTURA.ANULADO = N'N') AND (D_FACTURA.RUTA IN (SELECT * FROM @rutas)) 
          AND (D_FACTURA.FECHA BETWEEN @FechaInicio AND @FechaFin)
	GROUP BY P_MEDIAPAGO.NOMBRE
	UNION
	SELECT P_MEDIAPAGO.NOMBRE, 0
	FROM P_MEDIAPAGO 
	WHERE P_MEDIAPAGO.CODIGO NOT IN (SELECT P_MEDIAPAGO.CODIGO
	FROM D_FACTURA INNER JOIN
		 D_FACTURAP ON D_FACTURA.COREL = D_FACTURAP.COREL INNER JOIN
		 P_MEDIAPAGO ON D_FACTURAP.CODPAGO = P_MEDIAPAGO.CODIGO
	WHERE (D_FACTURA.ANULADO = N'N') AND (D_FACTURA.RUTA IN (SELECT * FROM @rutas) ) 
	AND (D_FACTURA.FECHA BETWEEN @FechaInicio AND @FechaFin))
	AND ACTIVO = 'S' GROUP BY P_MEDIAPAGO.NOMBRE

END



GO
/****** Object:  StoredProcedure [dbo].[sp_tiempo]    Script Date: 2021/03/03 11:58:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 
create  PROCEDURE [dbo].[sp_tiempo](@fecini datetime,@fecfin datetime)
/* ********************************************************************************************** */
--/*    Stored procedure:   sp_tiempo                                                            */
--/************************************************************************************************/
--/*                           PROPOSITO                                                            */
--/* Este procedimiento se utiliza para cargar la tabla dbo.DIM_TIEMPO con el calendario del año    */
--/* desde el IQ                                                                                    */
--/************************************************************************************************/
--/*                             CREADO                                                             */
--/*                                                                                                */
--/*    FECHA                                   AUTOR                                               */
--/*    20 de abril del 2007 9:50 am            CIBERNETICA, S.A.(Jorge A. Castillo)                */
--/************************************************************************************************/
as
begin
  declare @id_tiempo integer, -- idtiempo = año*10000+mes*100+dia
  @fecha datetime, -- fecha de trabajo
  @anio smallint, -- número del año
  @trimestre char(11), -- TRIMESTRE1
  @mes tinyint, -- número del mes
  @nmes varchar(15), -- nombre del mes
  @dia tinyint, -- número del día de la Fecha
  @dia_semana tinyint, -- número del día de la semana
  @ndia_semana varchar(10), -- nombre del día de la semana
  @semana_anio tinyint, -- semana del año
  @cod_trimestre char(2), -- código del trimestre
  @anio_mes char(7), -- combinación año-mes
  @anio_nmes char(8), -- combinación año-nmes
  @anio_trimestre char(7), -- combinación año-trimestre
  @ind_dia_laborable char(1), -- Indicador de día laborable (S).  N es no laborable
  @horas_laborables numeric(5,2), -- Horas netas laborables para computo. 7.1 día de la semana y 3.7 sábado.  0 para domingo.
  @anio_fiscal smallint,
  @mes_fiscal smallint,
  @anio_mes_fiscal char(7),
  @nmes_fiscal char(3),
  @anio_nmes_fiscal char(8),
  @trimestre_fiscal smallint,
  @cuatrimestre_fiscal smallint,
  @FECHA_CARGA datetime,
  @FECHA_INICIO datetime
  select @FECHA_CARGA = convert(char(11),getdate()),@FECHA_INICIO = getdate()
  --**********************
  select @fecha=@fecini
  while @fecha <= @fecfin
    begin
      select @anio = datepart(yy,@fecha),
        @mes = datepart(mm,@fecha),
        @dia = datepart(dd,@fecha),@trimestre = 'Trimestre '+
        convert(char(1),datepart(QQ,@fecha)),@cod_trimestre = 'T'+
        convert(char(1),datepart(QQ,@fecha))
      select @id_tiempo=@anio*10000+@mes*100+@dia
      select @anio_mes=convert(char(4),@anio)+'-'+convert(char(2),@mes)
      select
        @nmes=case @mes
        when 1 then 'Enero'
        when 2 then 'Febrero'
        when 3 then 'Marzo'
        when 4 then 'Abril'
        when 5 then 'Mayo'
        when 6 then 'Junio'
        when 7 then 'Julio'
        when 8 then 'Agosto'
        when 9 then 'Septiembre'
        when 10 then 'Octubre'
        when 11 then 'Noviembre'
        when 12 then 'Diciembre'
        end
      if(@mes = 1 or @mes = 2 or @mes = 3 or @mes = 4 or @mes = 5 or @mes = 6)
        begin
          select @anio_fiscal=@anio
          select
            @mes_fiscal=case @mes
            when 1 then 7
            when 2 then 8
            when 3 then 9
            when 4 then 10
            when 5 then 11
            when 6 then 12
            end
          select
            @nmes_fiscal=case @mes
            when 1 then 'Jul'
            when 2 then 'Ago'
            when 3 then 'Sep'
            when 4 then 'Oct'
            when 5 then 'nov'
            when 6 then 'Dic'
            end
          select @anio_mes_fiscal=convert(varchar,@anio)+'-'+case when @mes_fiscal <= 9 then '0'+convert(varchar,@mes_fiscal) else convert(varchar,@mes_fiscal)
            end
          select @anio_nmes_fiscal=convert(varchar,@anio)+'-'+@nmes_fiscal
        end
      else
        begin
          select @anio_fiscal=@anio+1
          select
            @mes_fiscal=case @mes
            when 7 then 1
            when 8 then 2
            when 9 then 3
            when 10 then 4
            when 11 then 5
            when 12 then 6
            end
          select
            @nmes_fiscal=case @mes
            when 7 then 'Ene'
            when 8 then 'Feb'
            when 9 then 'Mar'
            when 10 then 'Abr'
            when 11 then 'May'
            when 12 then 'Jun'
            end
          select @anio_mes_fiscal=convert(varchar,@anio+1)+'-'+case when @mes_fiscal <= 9 then '0'+convert(varchar,@mes_fiscal) else convert(varchar,@mes_fiscal)
            end
          select @anio_nmes_fiscal=convert(varchar,@anio+1)+'-'+@nmes_fiscal
        end
      select
        @anio_mes=convert(char(4),@anio)+'-'+right('00'+ convert(varchar(2),@mes),2)
      select @anio_nmes=convert(char(4),@anio)+'-'+@nmes
      select @anio_trimestre=convert(char(4),@anio)+'-'+@cod_trimestre
      select
        @ndia_semana=case DATEPART(DW,@fecha)
        when 1 then 'Domingo'
        when 2 then 'Lunes'
        when 3 then 'Martes'
        when 4 then 'Miercoles'
        when 5 then 'Jueves'
        when 6 then 'Viernes'
        when 7 then 'Sabado'
        end
      select @dia_semana=DATEPART(DW,@fecha)
      select @semana_anio=DATEPART(WK,@fecha)
      select
        @ind_dia_laborable=case @dia_semana when 1 then 'N' else 'S' end
      select
        @horas_laborables=case @dia_semana
        when 1 then 0
        when 7 then 3.54
        else 7.1
        end
      update DIM_TIEMPO set
        ULTIMO_DIAS_MES = 'N' where
        ANIO = @anio and
        MES = @mes and
        DIA < @dia
      insert into DIM_TIEMPO( DIM_ID_TIEMPO,
        FECHA,ANIO,MES,DIA,
        TRIMESTRE,ANIO_MES,ANIO_NMES,ANIO_TRIMESTRE,NOMBRE_MES,
        NOMBRE_DIA,SEMANA_ANIO,DIA_SEMANA,ANIO_FISCAL,MES_FISCAL,
        ANIO_MES_FISCAL,ANIO_NMES_FISCAL,IND_DIA_LABORABLE,IND_DIA_FERIADO,
        HORAS_LABORABLES,ULTIMO_DIAS_MES,
        ULTIMO_INV_X_MES,ULTIMO_INV_X_ANIO,STATUS_DW) values( 
        @id_tiempo,@fecha,@anio,@mes,@dia,
        @trimestre,@anio_mes,@anio_nmes,@anio_trimestre,@nmes,
        @ndia_semana,@semana_anio,@dia_semana,@anio_fiscal,@mes_fiscal,
        @anio_mes_fiscal,@anio_nmes_fiscal,@ind_dia_laborable,'S',@horas_laborables,'S','N','N','M') 
      select @fecha=dateadd(dd,1,@fecha)
    end
  --TRIMESTRE
  update DIM_TIEMPO set
    TRIMESTRE_FISCAL = 1 where
    MES_FISCAL in( 1,2,3) 
  update DIM_TIEMPO set
    TRIMESTRE_FISCAL = 2 where
    MES_FISCAL in( 4,5,6) 
  update DIM_TIEMPO set
    TRIMESTRE_FISCAL = 3 where
    MES_FISCAL in( 7,8,9) 
  update DIM_TIEMPO set
    TRIMESTRE_FISCAL = 4 where
    MES_FISCAL in( 10,11,12) 
  ---CUATRIMESTRE
  update DIM_TIEMPO set
    CUATRIMESTRE_FISCAL = 1 where
    MES_FISCAL in( 1,2,3,4) 
  update DIM_TIEMPO set
    CUATRIMESTRE_FISCAL = 2 where
    MES_FISCAL in( 5,6,7,8) 
  update DIM_TIEMPO set
    CUATRIMESTRE_FISCAL = 3 where
    MES_FISCAL in( 9,10,11,12) 
  commit transaction
end


GO
/****** Object:  StoredProcedure [dbo].[SP_Ventas]    Script Date: 2021/03/03 11:58:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[SP_Ventas]
	-- Add the parameters for the stored procedure here
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	SELECT       D_FACTURA.STATCOM, VENDEDORES.BODEGA AS OFI_VENTAS, D_FACTURA.FECHA, 
	D_FACTURA.SERIE + RIGHT('000000' + CONVERT(nvarchar(6), D_FACTURA.CORELATIVO), 6) AS COREL, '' AS COREL1, D_FACTURA.CLIENTE, 
	D_FACTURA.CLIENTE AS CLIENTE2, D_FACTURA.VENDEDOR, D_FACTURA.SUPERVISOR, D_FACTURA.AYUDANTE, D_FACTURAD.PRODUCTO, 
	ISNULL(D_FACTURAD_LOTES.CANTIDAD, D_FACTURAD.CANT) AS CANT, ISNULL(D_FACTURAD_LOTES.CANTIDAD, D_FACTURAD.CANT) AS CANT2, 
	ISNULL(D_FACTURAD_LOTES.LOTE, N'') AS LOTE, D_FACTURAD.PRECIODOC, D_FACTURAD.PRODUCTO AS PRODUCTO2, '' AS BARRA2, 
	D_FACTURAD.PESO, D_FACTURA.RUTA, VENDEDORES.SUBBODEGA AS GRUPO_VEND, VENDEDORES.NIVEL, '' AS MOTIVO, 0 AS BONIFICADO, 
	D_FACTURAD.VAL2 AS POSICION, 0 AS PADRE, P.CREDITO, '3000' AS SOCIEDAD, D_DEPOS.BANCO AS CUENTA
	FROM         D_FACTURA INNER JOIN
	D_FACTURAD ON D_FACTURA.COREL = D_FACTURAD.COREL INNER JOIN
	VENDEDORES ON D_FACTURA.RUTA = VENDEDORES.RUTA AND D_FACTURA.VENDEDOR = VENDEDORES.CODIGO INNER JOIN
	(SELECT     COREL, CASE WHEN D_FACTURAP.CODPAGO = 4 THEN 1 ELSE 0 END AS CREDITO
	FROM          D_FACTURAP) AS P ON D_FACTURA.COREL = P.COREL RIGHT OUTER JOIN
	D_FACTURAD_LOTES ON D_FACTURAD.COREL = D_FACTURAD_LOTES.COREL AND 
	D_FACTURAD.PRODUCTO = D_FACTURAD_LOTES.PRODUCTO INNER JOIN
	D_DEPOSD ON D_DEPOSD.DOCCOREL = D_FACTURA.COREL INNER JOIN
	D_DEPOS ON D_DEPOSD.COREL = D_DEPOS.COREL
WHERE     (D_FACTURA.ANULADO = N'N') AND (D_FACTURA.STATCOM = N'N')
UNION
SELECT      D_FACTURA.STATCOM, VENDEDORES.BODEGA AS OFI_VENTAS, D_FACTURA.FECHA, 
D_FACTURA.SERIE + RIGHT('000000' + CONVERT(nvarchar(6), D_FACTURA.CORELATIVO), 6) AS COREL, '' AS COREL1, D_FACTURA.CLIENTE, 
D_FACTURA.CLIENTE AS CLIENTE2, D_FACTURA.VENDEDOR, D_FACTURA.SUPERVISOR, D_FACTURA.AYUDANTE, D_FACTURAD.PRODUCTO, 
ISNULL(D_FACTURAD_LOTES.CANTIDAD, D_FACTURAD.CANT) AS CANT, ISNULL(D_FACTURAD_LOTES.CANTIDAD, D_FACTURAD.CANT) AS CANT2, 
ISNULL(D_FACTURAD_LOTES.LOTE, N'') AS LOTE, D_FACTURAD.PRECIODOC, D_FACTURAD.PRODUCTO AS PRODUCTO2, '' AS BARRA2, 
D_FACTURAD.PESO, D_FACTURA.RUTA, VENDEDORES.SUBBODEGA AS GRUPO_VEND, VENDEDORES.NIVEL, '' AS MOTIVO, 0 AS BONIFICADO, 
D_FACTURAD.VAL2 AS POSICION, 0 AS PADRE, P.CREDITO, '3000' AS SOCIEDAD, '' AS CUENTA
FROM         D_FACTURA INNER JOIN
D_FACTURAD ON D_FACTURA.COREL = D_FACTURAD.COREL INNER JOIN
VENDEDORES ON D_FACTURA.RUTA = VENDEDORES.RUTA AND D_FACTURA.VENDEDOR = VENDEDORES.CODIGO INNER JOIN
(SELECT     COREL, CASE WHEN D_FACTURAP.CODPAGO = 4 THEN 1 ELSE 0 END AS CREDITO
FROM          D_FACTURAP) AS P ON D_FACTURA.COREL = P.COREL RIGHT OUTER JOIN
D_FACTURAD_LOTES ON D_FACTURAD.COREL = D_FACTURAD_LOTES.COREL AND 
D_FACTURAD.PRODUCTO = D_FACTURAD_LOTES.PRODUCTO 
WHERE     (D_FACTURA.ANULADO = N'N') AND (D_FACTURA.STATCOM = N'N')
UNION
SELECT      D_FACTURA.STATCOM, VENDEDORES.BODEGA AS OFI_VENTAS, D_FACTURA.FECHA, 
D_FACTURA.SERIE + RIGHT('000000' + CONVERT(nvarchar(6), D_FACTURA.CORELATIVO), 6) AS COREL, '' AS COREL1, D_FACTURA.CLIENTE, 
D_FACTURA.CLIENTE AS CLIENTE2, D_FACTURA.VENDEDOR, D_FACTURA.SUPERVISOR, D_FACTURA.AYUDANTE, D_FACTURAD_1.PRODUCTO, 
D_STOCKB_DEV.PESO AS CANT, 1 AS CANT2, '' AS LOTE, D_FACTURAD_1.PRECIODOC, D_FACTURAD_1.PRODUCTO AS PRODUCTO2, 
D_STOCKB_DEV.BARRA AS BARRA2, D_STOCKB_DEV.PESO, D_FACTURA.RUTA, VENDEDORES.SUBBODEGA AS GRUPO_VEND, 
VENDEDORES.NIVEL, '' AS MOTIVO, 0 AS BONIFICADO, D_FACTURAD_1.VAL2 AS POSICION, 0 AS PADRE, P.CREDITO, '3000' AS SOCIEDAD, 
D_DEPOS.BANCO AS CUENTA
FROM         D_FACTURA AS D_FACTURA INNER JOIN
D_FACTURAD AS D_FACTURAD_1 ON D_FACTURA.COREL = D_FACTURAD_1.COREL INNER JOIN
VENDEDORES AS VENDEDORES ON D_FACTURA.RUTA = VENDEDORES.RUTA AND 
D_FACTURA.VENDEDOR = VENDEDORES.CODIGO RIGHT OUTER JOIN
D_STOCKB_DEV ON D_FACTURAD_1.PRODUCTO = D_STOCKB_DEV.CODIGO AND D_FACTURAD_1.COREL = D_STOCKB_DEV.COREL INNER JOIN
(SELECT     COREL, CASE WHEN D_FACTURAP.CODPAGO = 4 THEN 1 ELSE 0 END AS CREDITO
FROM          D_FACTURAP) AS P ON D_FACTURA.COREL = P.COREL INNER JOIN
D_DEPOSD ON D_DEPOSD.DOCCOREL = D_FACTURA.COREL INNER JOIN
D_DEPOS ON D_DEPOSD.COREL = D_DEPOS.COREL
WHERE     (D_FACTURA.ANULADO = N'N') AND (D_FACTURA.STATCOM = N'N')
UNION
SELECT      D_FACTURA.STATCOM, VENDEDORES.BODEGA AS OFI_VENTAS, D_FACTURA.FECHA, 
D_FACTURA.SERIE + RIGHT('000000' + CONVERT(nvarchar(6), D_FACTURA.CORELATIVO), 6) AS COREL, '' AS COREL1, D_FACTURA.CLIENTE, 
D_FACTURA.CLIENTE AS CLIENTE2, D_FACTURA.VENDEDOR, D_FACTURA.SUPERVISOR, D_FACTURA.AYUDANTE, D_FACTURAD_1.PRODUCTO, 
D_STOCKB_DEV.PESO AS CANT, 1 AS CANT2, '' AS LOTE, D_FACTURAD_1.PRECIODOC, D_FACTURAD_1.PRODUCTO AS PRODUCTO2, 
D_STOCKB_DEV.BARRA AS BARRA2, D_STOCKB_DEV.PESO, D_FACTURA.RUTA, VENDEDORES.SUBBODEGA AS GRUPO_VEND, 
VENDEDORES.NIVEL, '' AS MOTIVO, 0 AS BONIFICADO, D_FACTURAD_1.VAL2 AS POSICION, 0 AS PADRE, P.CREDITO, '3000' AS SOCIEDAD, 
'' AS CUENTA
FROM         D_FACTURA AS D_FACTURA INNER JOIN
D_FACTURAD AS D_FACTURAD_1 ON D_FACTURA.COREL = D_FACTURAD_1.COREL INNER JOIN
VENDEDORES AS VENDEDORES ON D_FACTURA.RUTA = VENDEDORES.RUTA AND 
D_FACTURA.VENDEDOR = VENDEDORES.CODIGO RIGHT OUTER JOIN
D_STOCKB_DEV ON D_FACTURAD_1.PRODUCTO = D_STOCKB_DEV.CODIGO AND D_FACTURAD_1.COREL = D_STOCKB_DEV.COREL INNER JOIN
(SELECT     COREL, CASE WHEN D_FACTURAP.CODPAGO = 4 THEN 1 ELSE 0 END AS CREDITO
FROM          D_FACTURAP) AS P ON D_FACTURA.COREL = P.COREL 
WHERE     (D_FACTURA.ANULADO = N'N') AND (D_FACTURA.STATCOM = N'N')
UNION
SELECT      D_FACTURA.STATCOM, VENDEDORES.BODEGA AS OFI_VENTAS, D_FACTURA.FECHA, 
D_FACTURA.SERIE + RIGHT('000000' + CONVERT(nvarchar(6), D_FACTURA.CORELATIVO), 6) AS COREL, '' AS COREL1, D_FACTURA.CLIENTE, 
D_FACTURA.CLIENTE AS CLIENTE2, D_FACTURA.VENDEDOR, D_FACTURA.SUPERVISOR, D_FACTURA.AYUDANTE, D_BONIF_LOTES.PRODUCTO, 
D_BONIF_LOTES.CANT, D_BONIF_LOTES.CANT AS CANT2, D_BONIF_LOTES.LOTE, 0 AS BONIFICADO, 
D_BONIF_LOTES.PRODUCTO AS PRODUCTO2, '' AS BARRA2, D_BONIF_LOTES.PESO, D_FACTURA.RUTA, 
VENDEDORES.SUBBODEGA AS GRUPO_VEND, VENDEDORES.NIVEL, '' AS MOTIVO, 1 AS Expr1, D_REL_PROD_BON.CONSECUTIVO AS POSICION, 
D_REL_PROD_BON.CONSECUTIVO AS PADRE, P.CREDITO, '3000' AS SOCIEDAD, D_DEPOS.BANCO AS CUENTA
FROM         D_FACTURA AS D_FACTURA INNER JOIN
VENDEDORES AS VENDEDORES ON D_FACTURA.RUTA = VENDEDORES.RUTA AND D_FACTURA.VENDEDOR = VENDEDORES.CODIGO INNER JOIN
D_REL_PROD_BON ON D_FACTURA.COREL = D_REL_PROD_BON.COREL INNER JOIN
D_BONIF_LOTES ON D_REL_PROD_BON.COREL = D_BONIF_LOTES.COREL AND 
D_REL_PROD_BON.BONIFICADO = D_BONIF_LOTES.PRODUCTO INNER JOIN
(SELECT     COREL, CASE WHEN D_FACTURAP.CODPAGO = 4 THEN 1 ELSE 0 END AS CREDITO
FROM          D_FACTURAP) AS P ON D_FACTURA.COREL = P.COREL INNER JOIN
D_DEPOSD ON D_DEPOSD.DOCCOREL = D_FACTURA.COREL INNER JOIN
D_DEPOS ON D_DEPOSD.COREL = D_DEPOS.COREL
WHERE     (D_FACTURA.ANULADO = N'N') AND (D_FACTURA.STATCOM = N'N')
UNION
SELECT      D_FACTURA.STATCOM, VENDEDORES.BODEGA AS OFI_VENTAS, D_FACTURA.FECHA, 
D_FACTURA.SERIE + RIGHT('000000' + CONVERT(nvarchar(6), D_FACTURA.CORELATIVO), 6) AS COREL, '' AS COREL1, D_FACTURA.CLIENTE, 
D_FACTURA.CLIENTE AS CLIENTE2, D_FACTURA.VENDEDOR, D_FACTURA.SUPERVISOR, D_FACTURA.AYUDANTE, D_BONIF_LOTES.PRODUCTO, 
D_BONIF_LOTES.CANT, D_BONIF_LOTES.CANT AS CANT2, D_BONIF_LOTES.LOTE, 0 AS BONIFICADO, 
D_BONIF_LOTES.PRODUCTO AS PRODUCTO2, '' AS BARRA2, D_BONIF_LOTES.PESO, D_FACTURA.RUTA, 
VENDEDORES.SUBBODEGA AS GRUPO_VEND, VENDEDORES.NIVEL, '' AS MOTIVO, 1 AS Expr1, D_REL_PROD_BON.CONSECUTIVO AS POSICION, 
D_REL_PROD_BON.CONSECUTIVO AS PADRE, P.CREDITO, '3000' AS SOCIEDAD, '' AS CUENTA
FROM         D_FACTURA AS D_FACTURA INNER JOIN
VENDEDORES AS VENDEDORES ON D_FACTURA.RUTA = VENDEDORES.RUTA AND D_FACTURA.VENDEDOR = VENDEDORES.CODIGO INNER JOIN
D_REL_PROD_BON ON D_FACTURA.COREL = D_REL_PROD_BON.COREL INNER JOIN
D_BONIF_LOTES ON D_REL_PROD_BON.COREL = D_BONIF_LOTES.COREL AND 
D_REL_PROD_BON.BONIFICADO = D_BONIF_LOTES.PRODUCTO INNER JOIN
(SELECT     COREL, CASE WHEN D_FACTURAP.CODPAGO = 4 THEN 1 ELSE 0 END AS CREDITO
FROM          D_FACTURAP) AS P ON D_FACTURA.COREL = P.COREL 
WHERE     (D_FACTURA.ANULADO = N'N') AND (D_FACTURA.STATCOM = N'N')
UNION
SELECT      D_FACTURA.STATCOM, VENDEDORES.BODEGA AS OFI_VENTAS, D_FACTURA.FECHA, 
D_FACTURA.SERIE + RIGHT('000000' + CONVERT(nvarchar(6), D_FACTURA.CORELATIVO), 6) AS COREL, '' AS COREL1, D_FACTURA.CLIENTE, 
D_FACTURA.CLIENTE AS CLIENTE2, D_FACTURA.VENDEDOR, D_FACTURA.SUPERVISOR, D_FACTURA.AYUDANTE, D_BONIF_BARRA.PRODUCTO, 
1 AS CANT, 1 AS CANT2, '' AS BARRA2, 1 AS BONIFICADO, D_BONIF_BARRA.PRODUCTO AS PRODUCTO2, D_BONIF_BARRA.BARRA, 
D_BONIF_BARRA.PESO, D_FACTURA.RUTA, VENDEDORES.SUBBODEGA AS GRUPO_VEND, VENDEDORES.NIVEL, '' AS MOTIVO, 1 AS Expr1, 
D_REL_PROD_BON.CONSECUTIVO AS POSICION, D_REL_PROD_BON.CONSECUTIVO AS PADRE, P.CREDITO, '3000' AS SOCIEDAD, 
D_DEPOS.BANCO AS CUENTA
FROM         D_FACTURA AS D_FACTURA INNER JOIN
VENDEDORES AS VENDEDORES ON D_FACTURA.RUTA = VENDEDORES.RUTA AND D_FACTURA.VENDEDOR = VENDEDORES.CODIGO INNER JOIN
D_REL_PROD_BON ON D_FACTURA.COREL = D_REL_PROD_BON.COREL INNER JOIN
D_BONIF_BARRA ON D_REL_PROD_BON.COREL = D_BONIF_BARRA.COREL AND 
D_REL_PROD_BON.BONIFICADO = D_BONIF_BARRA.PRODUCTO INNER JOIN
(SELECT     COREL, CASE WHEN D_FACTURAP.CODPAGO = 4 THEN 1 ELSE 0 END AS CREDITO
FROM          D_FACTURAP) AS P ON D_FACTURA.COREL = P.COREL INNER JOIN
D_DEPOSD ON D_DEPOSD.DOCCOREL = D_FACTURA.COREL INNER JOIN
D_DEPOS ON D_DEPOSD.COREL = D_DEPOS.COREL
WHERE     (D_FACTURA.ANULADO = N'N') AND (D_FACTURA.STATCOM = N'N')
UNION
SELECT      D_FACTURA.STATCOM, VENDEDORES.BODEGA AS OFI_VENTAS, D_FACTURA.FECHA, 
D_FACTURA.SERIE + RIGHT('000000' + CONVERT(nvarchar(6), D_FACTURA.CORELATIVO), 6) AS COREL, '' AS COREL1, D_FACTURA.CLIENTE, 
D_FACTURA.CLIENTE AS CLIENTE2, D_FACTURA.VENDEDOR, D_FACTURA.SUPERVISOR, D_FACTURA.AYUDANTE, D_BONIF_BARRA.PRODUCTO, 
1 AS CANT, 1 AS CANT2, '' AS BARRA2, 1 AS BONIFICADO, D_BONIF_BARRA.PRODUCTO AS PRODUCTO2, D_BONIF_BARRA.BARRA, 
D_BONIF_BARRA.PESO, D_FACTURA.RUTA, VENDEDORES.SUBBODEGA AS GRUPO_VEND, VENDEDORES.NIVEL, '' AS MOTIVO, 1 AS Expr1, 
D_REL_PROD_BON.CONSECUTIVO AS POSICION, D_REL_PROD_BON.CONSECUTIVO AS PADRE, P.CREDITO, '3000' AS SOCIEDAD, 
'' AS CUENTA
FROM         D_FACTURA AS D_FACTURA INNER JOIN
VENDEDORES AS VENDEDORES ON D_FACTURA.RUTA = VENDEDORES.RUTA AND D_FACTURA.VENDEDOR = VENDEDORES.CODIGO INNER JOIN
D_REL_PROD_BON ON D_FACTURA.COREL = D_REL_PROD_BON.COREL INNER JOIN
D_BONIF_BARRA ON D_REL_PROD_BON.COREL = D_BONIF_BARRA.COREL AND 
D_REL_PROD_BON.BONIFICADO = D_BONIF_BARRA.PRODUCTO INNER JOIN
(SELECT     COREL, CASE WHEN D_FACTURAP.CODPAGO = 4 THEN 1 ELSE 0 END AS CREDITO
FROM          D_FACTURAP) AS P ON D_FACTURA.COREL = P.COREL 
WHERE     (D_FACTURA.ANULADO = N'N') AND (D_FACTURA.STATCOM = N'N')
END


GO
/****** Object:  StoredProcedure [dbo].[spDameCorrelaticoSerie]    Script Date: 2021/03/03 11:58:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[spDameCorrelaticoSerie]
	@ruta AS NVARCHAR(15),
	@empresa AS NVARCHAR(3)
AS
BEGIN
	SET NOCOUNT ON;
	DECLARE @CORELULT AS INT, @CORELINI AS INT, @CORELFIN AS INT, @SERIE AS NVARCHAR(15), @RESOL AS NVARCHAR(15), @PORCIENTO AS FLOAT 
	
	BEGIN TRANSACTION
		UPDATE P_COREL SET CORELULT = CORELULT + 1 WHERE ACTIVA = 'S' AND RUTA = @ruta AND EMP = @EMPRESA AND CORELULT < CORELFIN
		SELECT @SERIE = SERIE, @CORELFIN = CORELFIN, @CORELULT = CORELULT, @PORCIENTO = CAST(CORELULT AS FLOAT) * 100 / ((CORELFIN - CORELINI) +1) FROM P_COREL WHERE ACTIVA = 'S' AND RUTA = @ruta AND EMP = @EMPRESA AND CORELULT <= CORELFIN
		
		IF @SERIE is null
		BEGIN
			SELECT TOP(1) @RESOL = RESOL, @SERIE = SERIE, @CORELINI = CORELINI FROM P_COREL WHERE ACTIVA = 'N' AND RUTA = @ruta AND EMP = @EMPRESA AND CORELULT < CORELFIN
			IF @SERIE IS NOT NULL AND @RESOL IS NOT NULL AND @CORELINI IS NOT NULL
			BEGIN
				UPDATE P_COREL 
				SET CORELULT = CORELULT + 1, ACTIVA = 'S' 
				WHERE @RESOL = RESOL AND @SERIE = SERIE AND @CORELINI = CORELINI AND ACTIVA = 'N' AND RUTA = @ruta AND EMP = @EMPRESA AND CORELULT < CORELFIN;
				
				SELECT @SERIE = SERIE, @CORELFIN = CORELFIN, @CORELULT = CORELULT, @PORCIENTO = CAST(CORELULT AS FLOAT) * 100 / ((CORELFIN - CORELINI) +1) 
				FROM P_COREL 
				WHERE @RESOL = RESOL AND @SERIE = SERIE AND @CORELINI = CORELINI AND ACTIVA = 'S' AND RUTA = @ruta AND EMP = @EMPRESA AND CORELULT <= CORELFIN;
			END
		END
		
		IF @SERIE IS NOT NULL AND @CORELULT = @CORELFIN BEGIN 
			UPDATE P_COREL SET ACTIVA = 'N' WHERE ACTIVA = 'S' AND RUTA = @ruta AND EMP = @EMPRESA 
		END
		
		SELECT TOP(1) @SERIE AS SERIE, @CORELULT AS CORELULT, @PORCIENTO AS PORCIENTO FROM P_COREL 
	COMMIT TRANSACTION
END



GO
/****** Object:  StoredProcedure [dbo].[spFacturaPedido]    Script Date: 2021/03/03 11:58:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[spFacturaPedido]
	@EMPRESA AS NVARCHAR(3),
	@CORELPedido AS NVARCHAR(20),
	@CORELFactura AS NVARCHAR(20),
	@SERIE AS NVARCHAR(15),
	@CORELATIVO as int, 
	@Sucursal AS NVARCHAR(15),
	@Usuario  AS NVARCHAR(15)
AS
BEGIN
	SET NOCOUNT ON;
	DECLARE @ANULADO AS NVARCHAR(1), @FECHA AS DATETIME, @RUTA AS NVARCHAR(15), @VENDEDOR AS NVARCHAR(8)
    DECLARE @CLIENTE AS NVARCHAR(15), @KILOMETRAJE AS float, @FECHAENTR AS DATETIME, @TOTAL AS float
    DECLARE @DESMONTO AS float, @IMPMONTO AS float, @PESO AS float, @BANDERA AS NVARCHAR(5)
    DECLARE @CALCOBJ AS NVARCHAR(1), @IMPRES AS int, @ADD1 AS NVARCHAR(5), @ADD2 AS NVARCHAR(5)
    DECLARE @ADD3 AS NVARCHAR(35), @STATCOM AS NVARCHAR(1)
    
	BEGIN TRANSACTION
		SELECT	@ANULADO = ANULADO, @FECHA = FECHA, @RUTA = RUTA, @VENDEDOR = VENDEDOR, @CLIENTE = CLIENTE, 
					@KILOMETRAJE = KILOMETRAJE, @FECHAENTR = FECHAENTR, @TOTAL = TOTAL, @DESMONTO = DESMONTO, 
					@IMPMONTO = IMPMONTO, @PESO = PESO, @BANDERA = BANDERA, @STATCOM = STATCOM, @CALCOBJ = CALCOBJ, 
					@IMPRES = IMPRES, @ADD1 = ADD1, @ADD2 = ADD2, @ADD3 = ADD3
			FROM	DS_PEDIDO
			WHERE	COREL = @CORELPedido AND EMPRESA = @EMPRESA;
    
		IF @RUTA IS NULL AND @CLIENTE IS NULL AND @FECHA IS NULL
		BEGIN
			SELECT * FROM P_RUTA -- este select es solo pa q el if no de bateo
		 -- AQUI ES DONDE SE GENERA DESPACHO DEL PEDIDO TENIENDO EN CUENTA EXISTENCIA 
		END
    
		INSERT INTO D_FACTURA ([COREL], [ANULADO], [FECHA], [EMPRESA], [RUTA], [VENDEDOR], [CLIENTE],
                               [KILOMETRAJE], [FECHAENTR], [FACTLINK], [TOTAL], [DESMONTO], [IMPMONTO],
							   [PESO], [BANDERA], [STATCOM], [CALCOBJ], [SERIE], [CORELATIVO], [IMPRES],
							   [ADD1], [ADD2], [ADD3], [DEPOS], [PEDCOREL]) 
					   VALUES (@CORELFactura, @ANULADO, @FECHA, @EMPRESA, @RUTA, @VENDEDOR, @CLIENTE, 
							   @KILOMETRAJE, @FECHAENTR, '', @TOTAL, @DESMONTO, @IMPMONTO, 
							   @PESO, @BANDERA, @STATCOM, @CALCOBJ, @SERIE, @CORELATIVO, @IMPRES,
							   @ADD1, @ADD2, @ADD3, 'N', @CORELPedido);
		
		INSERT INTO D_FACTURAD
				SELECT @CORELFactura, PRODUCTO, EMPRESA, ANULADO, CANT, PRECIO, IMP, DES, DESMON, TOTAL, PRECIODOC, PESO, VAL1, VAL2
				FROM   DS_PEDIDOD
				WHERE (COREL = @CORELPedido) AND (EMPRESA = @EMPRESA);
				
		EXEC dbo.spGeneraSalidaActualizaExistencia @CORELFactura, @EMPRESA, @Sucursal, @Usuario
	COMMIT TRANSACTION
END



GO
/****** Object:  StoredProcedure [dbo].[spGeneraSalidaActualizaExistencia]    Script Date: 2021/03/03 11:58:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[spGeneraSalidaActualizaExistencia]
	@CORELFactura AS NVARCHAR(20),
	@Empresa AS NVARCHAR(3),
	@Sucursal AS NVARCHAR(15),
	@Usuario AS NVARCHAR(15)
AS
BEGIN
	SET NOCOUNT ON;
	DECLARE @FECHA AS DATETIME, @RUTA AS NVARCHAR(15), @CODBOD AS NVARCHAR(15)
	DECLARE @CODPRODDESPACHO AS NVARCHAR(15), @CANTIDADDESPACHO AS INT, @PESODESPACHO AS FLOAT
	DECLARE @CANTPRODDESCONTAR AS INT, @CANTIDADEXISTENCIA AS INT, @LOTE AS NVARCHAR(50)
    
	BEGIN TRANSACTION
		SELECT @FECHA = FECHA, @RUTA = RUTA FROM D_FACTURA WHERE COREL = @CORELFactura AND EMPRESA = @EMPRESA;
		SELECT @CODBOD = BODEGA FROM D_BODEGA_PEDIDO_FACTURA WHERE COREL = @CORELFactura AND EMPRESA = @EMPRESA AND SUCURSAL = @SUCURSAL AND FACTURA = 1;
           
		INSERT INTO I_SALIDA ([CODIGO] ,[TIPOSALIDA] ,[RUTA] ,[FECHA] ,[CODBOD] ,[DIASCONF], [ESTADO] ,[USUARIO] ,[FECHAREAL])
			   VALUES (@CORELFactura, '01', @RUTA, @FECHA, @CODBOD, 0, '02', @Usuario, @FECHA);
		
		DECLARE DespachoCursor CURSOR FOR
			SELECT TABLA1.PRODUCTO, SUM(TABLA1.PESO) AS PESO, SUM(TABLA1.CANT) AS CANT  FROM
			(SELECT	D_FACTURAD.PRODUCTO, D_FACTURAD.PESO, CAST(D_FACTURAD.CANT AS INT) AS CANT
			 FROM	D_FACTURAD INNER JOIN P_PRODUCTO ON D_FACTURAD.PRODUCTO = P_PRODUCTO.CODIGO
			 WHERE	(D_FACTURAD.COREL = @CORELFactura) AND (D_FACTURAD.EMPRESA = @EMPRESA) AND (P_PRODUCTO.TIPO = N'P')
			 UNION ALL
			 SELECT	P_PRODCOMBO.PRODUCTO, D_FACTURAD.PESO, CAST(D_FACTURAD.CANT * P_PRODCOMBO.CANTMIN AS INT) AS CANT
			 FROM	D_FACTURAD INNER JOIN P_PRODCOMBO ON D_FACTURAD.PRODUCTO = P_PRODCOMBO.CODIGO
			 WHERE	(D_FACTURAD.COREL = @CORELFactura) AND (D_FACTURAD.EMPRESA = @EMPRESA) AND (P_PRODCOMBO.TIPO = N'K')
			 UNION ALL
			 SELECT	D_COMBO_CANTIDADES.COD_PRODUCTO AS PRODUCTO, D_FACTURAD.PESO AS PESO, CAST(D_FACTURAD.CANT * D_COMBO_CANTIDADES.CANTIDAD AS INT) AS CANT
			 FROM	D_FACTURAD INNER JOIN D_COMBO_CANTIDADES ON D_FACTURAD.COREL = D_COMBO_CANTIDADES.COREL AND D_FACTURAD.PRODUCTO = D_COMBO_CANTIDADES.COD_COMBO
			 WHERE	(D_FACTURAD.COREL = @CORELFactura) AND (D_FACTURAD.EMPRESA = @EMPRESA)) AS TABLA1
			 GROUP BY TABLA1.PRODUCTO
		
		OPEN DespachoCursor
		
		FETCH NEXT FROM DespachoCursor INTO @CODPRODDESPACHO, @PESODESPACHO, @CANTIDADDESPACHO
		
		WHILE @@FETCH_STATUS = 0
		BEGIN

			SET @CANTPRODDESCONTAR = @CANTIDADDESPACHO
			
			DECLARE ExistenciaCursor CURSOR FOR
			SELECT CANTIDAD, LOTE FROM I_EXISTENCIAS WHERE CODPRODUCTO = @CODPRODDESPACHO AND BODEGA = @CODBOD  AND CANTIDAD > 0 ORDER BY FECHVENC ASC
			
			OPEN ExistenciaCursor
			
			FETCH NEXT FROM ExistenciaCursor INTO @CANTIDADEXISTENCIA, @LOTE
			
			WHILE @@FETCH_STATUS = 0 AND @CANTPRODDESCONTAR > 0
			BEGIN
				IF @CANTIDADEXISTENCIA <= @CANTPRODDESCONTAR
				BEGIN
					INSERT INTO I_SALIDAD ([CODSALIDA] ,[CODPROD] ,[LOTE] ,[CANTIDAD] ,[PESO] ,[EXISTENCIA]) 
					       VALUES (@CORELFactura, @CODPRODDESPACHO, @LOTE, @CANTIDADEXISTENCIA, @PESODESPACHO, 0)					
					       
					UPDATE I_EXISTENCIAS SET CANTIDAD = 0 WHERE CODPRODUCTO = @CODPRODDESPACHO AND BODEGA = @CODBOD AND LOTE = @LOTE
					SET @CANTPRODDESCONTAR = @CANTPRODDESCONTAR - @CANTIDADEXISTENCIA
				END
				ELSE
				BEGIN
					INSERT INTO I_SALIDAD ([CODSALIDA] ,[CODPROD] ,[LOTE] ,[CANTIDAD] ,[PESO] ,[EXISTENCIA]) 
					       VALUES (@CORELFactura, @CODPRODDESPACHO, @LOTE, @CANTPRODDESCONTAR, @PESODESPACHO, @CANTIDADEXISTENCIA - @CANTPRODDESCONTAR)
					       
					UPDATE I_EXISTENCIAS SET CANTIDAD = @CANTIDADEXISTENCIA - @CANTPRODDESCONTAR WHERE CODPRODUCTO = @CODPRODDESPACHO AND BODEGA = @CODBOD AND LOTE = @LOTE
					SET @CANTPRODDESCONTAR = 0
				END 
				FETCH NEXT FROM ExistenciaCursor INTO @CANTIDADEXISTENCIA, @LOTE
			END	
			CLOSE ExistenciaCursor
			DEALLOCATE ExistenciaCursor
			FETCH NEXT FROM DespachoCursor INTO @CODPRODDESPACHO, @PESODESPACHO, @CANTIDADDESPACHO												
		END;
		CLOSE DespachoCursor
		DEALLOCATE DespachoCursor
	COMMIT TRANSACTION
END



GO
/****** Object:  StoredProcedure [dbo].[TIENE_FACTURAS_INCONSISTENTES]    Script Date: 2021/03/03 11:58:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[TIENE_FACTURAS_INCONSISTENTES] 
	-- Add the parameters for the stored procedure here
	@CODIGOLIQUIDACION AS INT
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT * FROM D_FACTURAD WHERE NOT EXISTS (SELECT PRODUCTO, COREL, SUM(CANTIDAD) AS CANT, UMSTOCK FROM D_FACTURAD_LOTES   
	GROUP BY PRODUCTO, COREL, UMSTOCK HAVING  PRODUCTO = D_FACTURAD.PRODUCTO AND  COREL = D_FACTURAD.COREL AND 
	SUM(CANTIDAD) = D_FACTURAD.CANT AND UMSTOCK = D_FACTURAD.UMSTOCK)  
	AND PRODUCTO  IN (SELECT CODIGO FROM P_PRODUCTO WHERE ES_PROD_BARRA = 0) AND 
	COREL IN (SELECT COREL FROM D_FACTURA WHERE CODIGOLIQUIDACION  = @CODIGOLIQUIDACION AND ANULADO = 'N' ) AND PRODUCTO <>'R999' 

	SELECT DISTINCT COREL, CODIGO, COUNT(BARRA)AS CANT, SUM(PESO) AS PESO, RUTA, FECHA  
	FROM D_STOCKB_DEV WHERE COREL IN (SELECT DISTINCT COREL FROM D_STOCKB_DEV 
	WHERE BARRA IN  (SELECT BARRA FROM D_STOCKB_DEV 
	GROUP BY  BARRA HAVING COUNT(BARRA)>1) AND  CODIGOLIQUIDACION  = @CODIGOLIQUIDACION) 
	AND COREL NOT IN ('00100829150804113210','00100961150808113917') GROUP BY RUTA, FECHA,COREL, CODIGO 

	SELECT * FROM P_NOTACD WHERE CODIGONCD IN (SELECT CODIGONCD FROM P_NOTACDD WHERE CANTIDAD IS NULL) AND CODIGOLIQUIDACION  =  @CODIGOLIQUIDACION

	SELECT * FROM D_FACTURAD WHERE NOT EXISTS (SELECT CODIGO, COREL, COUNT(BARRA) AS CANT FROM D_STOCKB_DEV  
	GROUP BY CODIGO, COREL HAVING  CODIGO = D_FACTURAD.PRODUCTO AND  COREL = D_FACTURAD.COREL 
	AND COUNT(BARRA) = D_FACTURAD.CANT) AND PRODUCTO  IN (SELECT CODIGO FROM P_PRODUCTO WHERE ES_PROD_BARRA = 1)  
	AND COREL IN (SELECT COREL FROM D_FACTURA WHERE CODIGOLIQUIDACION  =  @CODIGOLIQUIDACION AND ANULADO ='N')

END


GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[15] 4[9] 2[34] 3) )"
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
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "D_FACTURA"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 136
               Right = 256
            End
            DisplayFlags = 280
            TopColumn = 17
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 1980
         Width = 1455
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_1'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_1'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[28] 4[10] 2[18] 3) )"
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
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "P_RUTA"
            Begin Extent = 
               Top = 8
               Left = 94
               Bottom = 151
               Right = 264
            End
            DisplayFlags = 280
            TopColumn = 1
         End
         Begin Table = "P_SUCURSAL"
            Begin Extent = 
               Top = 11
               Left = 410
               Bottom = 141
               Right = 672
            End
            DisplayFlags = 280
            TopColumn = 6
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_2'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_2'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[11] 4[8] 2[29] 3) )"
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
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "D_FACTURA"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 136
               Right = 256
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 1980
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_3'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_3'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[38] 4[19] 2[14] 3) )"
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
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "P_CAJACIERRE"
            Begin Extent = 
               Top = 6
               Left = 155
               Bottom = 142
               Right = 323
            End
            DisplayFlags = 280
            TopColumn = 8
         End
         Begin Table = "P_MEDIAPAGO"
            Begin Extent = 
               Top = 7
               Left = 5
               Bottom = 137
               Right = 147
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "P_EMPRESA"
            Begin Extent = 
               Top = 5
               Left = 332
               Bottom = 135
               Right = 456
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "P_RUTA"
            Begin Extent = 
               Top = 2
               Left = 612
               Bottom = 132
               Right = 782
            End
            DisplayFlags = 280
            TopColumn = 1
         End
         Begin Table = "P_SUCURSAL"
            Begin Extent = 
               Top = 4
               Left = 465
               Bottom = 134
               Right = 603
            End
            DisplayFlags = 280
            TopColumn = 2
         End
         Begin Table = "VENDEDORES"
            Begin Extent = 
               Top = 0
               Left = 798
               Bottom = 130
               Right = 957
            End
            DisplayFlags = 280
            TopColumn = 2
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 11
         Width = 284
         Width = 1500
         Width = 15' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vw_CierreDia'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'00
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 2505
         Alias = 2070
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vw_CierreDia'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vw_CierreDia'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[45] 4[7] 2[32] 3) )"
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
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "P_SUCURSAL"
            Begin Extent = 
               Top = 11
               Left = 678
               Bottom = 141
               Right = 911
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "P_RUTA"
            Begin Extent = 
               Top = 11
               Left = 456
               Bottom = 196
               Right = 626
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "D_FACTURA"
            Begin Extent = 
               Top = 14
               Left = 226
               Bottom = 144
               Right = 400
            End
            DisplayFlags = 280
            TopColumn = 3
         End
         Begin Table = "P_CLIENTE"
            Begin Extent = 
               Top = 14
               Left = 27
               Bottom = 144
               Right = 181
            End
            DisplayFlags = 280
            TopColumn = 16
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 2235
         Width = 1500
         Width = 4140
         Width = 1695
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
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
      ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vw_InfileAnulacion'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vw_InfileAnulacion'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vw_InfileAnulacion'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[24] 4[18] 2[17] 3) )"
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
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "P_RUTA"
            Begin Extent = 
               Top = 6
               Left = 338
               Bottom = 136
               Right = 508
            End
            DisplayFlags = 280
            TopColumn = 1
         End
         Begin Table = "D_FACTURA"
            Begin Extent = 
               Top = 2
               Left = 578
               Bottom = 132
               Right = 796
            End
            DisplayFlags = 280
            TopColumn = 9
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 12
         Column = 1440
         Alias = 1980
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 2490
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vw_InfileAnulacionTotales'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vw_InfileAnulacionTotales'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[7] 4[23] 2[24] 3) )"
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
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "P_SUCURSAL"
            Begin Extent = 
               Top = 7
               Left = 723
               Bottom = 137
               Right = 926
            End
            DisplayFlags = 280
            TopColumn = 3
         End
         Begin Table = "P_RUTA"
            Begin Extent = 
               Top = 165
               Left = 469
               Bottom = 295
               Right = 683
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "P_EMPRESA"
            Begin Extent = 
               Top = 164
               Left = 740
               Bottom = 294
               Right = 881
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "D_MOV"
            Begin Extent = 
               Top = 5
               Left = 252
               Bottom = 135
               Right = 472
            End
            DisplayFlags = 280
            TopColumn = 8
         End
         Begin Table = "D_MOVD"
            Begin Extent = 
               Top = 6
               Left = 479
               Bottom = 136
               Right = 687
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "P_PRODUCTO"
            Begin Extent = 
               Top = 150
               Left = 197
               Bottom = 280
               Right = 437
            End
            DisplayFlags = 280
            TopColumn = 5
         End
         Begin Table = "P_LINEA"
            Begin Extent = 
               Top = 151
               Left = 0
               Bottom = 281
               Right = 171
            End
            DisplayFlags = 28' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vw_Mov'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'0
            TopColumn = 3
         End
         Begin Table = "P_PROVEEDOR"
            Begin Extent = 
               Top = 5
               Left = 0
               Bottom = 143
               Right = 205
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 10
         Width = 284
         Width = 1500
         Width = 1650
         Width = 900
         Width = 1500
         Width = 855
         Width = 1965
         Width = 900
         Width = 2145
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 12
         Column = 1860
         Alias = 1740
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vw_Mov'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vw_Mov'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[22] 4[16] 2[12] 3) )"
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
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "P_PRODUCTO_1"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 136
               Right = 278
            End
            DisplayFlags = 280
            TopColumn = 7
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vW_Product_Match'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vW_Product_Match'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[17] 4[21] 2[16] 3) )"
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
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "D_FACTURA"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 149
               Right = 256
            End
            DisplayFlags = 280
            TopColumn = 3
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 12
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vWCajaCert'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vWCajaCert'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[14] 4[10] 2[17] 3) )"
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
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "P_CAJACIERRE"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 156
               Right = 242
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "P_RUTA"
            Begin Extent = 
               Top = 6
               Left = 280
               Bottom = 136
               Right = 450
            End
            DisplayFlags = 280
            TopColumn = 2
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 1500
         Width = 2250
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vWCajas'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vWCajas'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[27] 4[13] 2[16] 3) )"
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
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "D_FEL_BITACORA"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 164
               Right = 237
            End
            DisplayFlags = 280
            TopColumn = 5
         End
         Begin Table = "P_SUCURSAL"
            Begin Extent = 
               Top = 6
               Left = 275
               Bottom = 136
               Right = 537
            End
            DisplayFlags = 280
            TopColumn = 2
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 12
         Column = 3165
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vWFELCertCancel'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vWFELCertCancel'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[16] 4[6] 2[5] 3) )"
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
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "D_FEL_BITACORA"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 180
               Right = 237
            End
            DisplayFlags = 280
            TopColumn = 2
         End
         Begin Table = "P_SUCURSAL"
            Begin Extent = 
               Top = 6
               Left = 275
               Bottom = 136
               Right = 537
            End
            DisplayFlags = 280
            TopColumn = 2
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 3090
         Width = 1620
         Width = 1680
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 12
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vWFELTiempo'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vWFELTiempo'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[14] 4[10] 2[24] 3) )"
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
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "D_FACTURA"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 136
               Right = 256
            End
            DisplayFlags = 280
            TopColumn = 4
         End
         Begin Table = "P_RUTA"
            Begin Extent = 
               Top = 6
               Left = 294
               Bottom = 136
               Right = 464
            End
            DisplayFlags = 280
            TopColumn = 2
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 1980
         Width = 615
         Width = 2100
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vWPendCert2'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vWPendCert2'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[10] 4[6] 2[2] 3) )"
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
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "D_FACTURA"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 136
               Right = 256
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "P_RUTA"
            Begin Extent = 
               Top = 7
               Left = 335
               Bottom = 137
               Right = 505
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 2835
         Width = 885
         Width = 1110
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vWVersion'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vWVersion'
GO
USE [master]
GO
ALTER DATABASE [mpos_pollo_express_qa] SET  READ_WRITE 
GO
