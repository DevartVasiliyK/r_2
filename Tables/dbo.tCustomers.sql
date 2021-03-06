﻿CREATE TABLE [dbo].[tCustomers] (
  [Id] [int] IDENTITY,
  [FK_CountryID] [int] NULL,
  [FK_LangID] [int] NULL,
  [ShortName] [nvarchar](255) NULL,
  [FullName] [nvarchar](255) NOT NULL,
  [RusName] [nvarchar](255) NULL,
  [UserId] [int] NULL,
  [Lang] [nvarchar](5) NULL,
  [Type] [smallint] NOT NULL DEFAULT (3),
  [Email] [nvarchar](10) NULL,
  [CityIndex] [nvarchar](255) NULL,
  [Street] [nvarchar](255) NULL,
  [KuzName] [nvarchar](255) NULL,
  [FCity] [nvarchar](255) NULL,
  [FStreet] [nvarchar](255) NULL,
  [FIsClient] [tinyint] NOT NULL CONSTRAINT [DF_tCustomers_new1_FIsClient] DEFAULT (0),
  [FCurator] [int] NULL,
  [FSource] [int] NULL,
  [FDescription] [nvarchar](max) NULL,
  [FCorp] [nvarchar](5) NULL,
  [FOffice] [nvarchar](5) NULL,
  [FControled] [bit] NOT NULL CONSTRAINT [DF_tCustomers_new1_FControled] DEFAULT (0),
  [FControlData] [datetime] NULL,
  [FControlComments] [nvarchar](512) NULL,
  [FHouse] [nvarchar](5) NULL,
  [FIsOrdinary] [bit] NOT NULL CONSTRAINT [DF_tCustomers_new1_FIsOrdinary] DEFAULT (0),
  [FIsDocRequired] [bit] NOT NULL CONSTRAINT [DF_tCustomers_new1_FIsDocRequired] DEFAULT (0),
  [FIsHazardous] [bit] NOT NULL CONSTRAINT [DF_tCustomers_new1_FIsHazardous] DEFAULT (0),
  [FIsRailway] [bit] NOT NULL CONSTRAINT [DF_tCustomers_new1_FIsRailway] DEFAULT (0),
  [FIsMega] [bit] NOT NULL CONSTRAINT [DF_tCustomers_new1_FIsMega] DEFAULT (0),
  [FIsSizeOverage] [bit] NOT NULL CONSTRAINT [DF_tCustomers_new1_FIsSizeOverage] DEFAULT (0),
  [FIsHeavyWeight] [bit] NOT NULL CONSTRAINT [DF_tCustomers_new1_FIsHeavyWeight] DEFAULT (0),
  [FIsBlock] [bit] NOT NULL CONSTRAINT [DF_tCustomers_new1_FIsBlock] DEFAULT (0),
  [FIsCollapsible] [bit] NOT NULL CONSTRAINT [DF_tCustomers_new1_FIsCollapsible] DEFAULT (0),
  [FIsLowBed] [bit] NOT NULL CONSTRAINT [DF_tCustomers_new1_FIsLowBed] DEFAULT (0),
  [FCapacity] [nvarchar](128) NULL,
  [Bank] [nvarchar](100) NULL,
  [Account] [nvarchar](50) NULL,
  [BANK_C] [nvarchar](50) NULL,
  [Account_C] [nvarchar](50) NULL,
  [FLoad] [int] NULL,
  [FExtraServise] [int] NULL,
  [FActivity] [smallint] NOT NULL CONSTRAINT [DF_tCustomers_new1_FActivity] DEFAULT (5),
  [FLockAccess] [bit] NOT NULL DEFAULT (0),
  [CustomerType] [tinyint] NOT NULL CONSTRAINT [DF_tCustomers_new1_CustomerType] DEFAULT (0),
  [StreetLaw] [nvarchar](255) NULL,
  [CityIndexLaw] [nvarchar](255) NULL,
  [PostName] [nvarchar](250) NULL,
  [FHoliday] [int] NULL,
  [FEqualAdress] [bit] NOT NULL CONSTRAINT [DF_tCustomers_new1_FEqualAdress] DEFAULT (0),
  [FBirthday] [datetime] NULL,
  [FDateReg] [datetime] NOT NULL CONSTRAINT [DF_tCustomers_new1_FDateReg] DEFAULT (getdate()),
  [fisloadOTD] [bit] NOT NULL DEFAULT (0),
  [FInvoice] [smallint] NULL,
  [FPaymentPeriod] [smallint] NULL,
  [FPaymentPeriodType] [smallint] NULL,
  [FAddOnInvoise] [smallint] NULL,
  [Fbranch] [int] NULL,
  [FTransportCapacity] [tinyint] NULL,
  [FLevelRates] [tinyint] NULL,
  [FTypeOfCargo] [tinyint] NULL,
  [FInformalNeeds] [nvarchar](1024) NULL,
  [FStatusChangeDate] [datetime] NOT NULL DEFAULT (getdate()),
  [FGroup] [int] NULL,
  [FCategory] [int] NULL,
  [FCategoryAuto] [bit] NOT NULL DEFAULT (1),
  [FK_RegistrationPlace] [int] NULL,
  [FCountry] [uniqueidentifier] NULL,
  [FLanguage] [uniqueidentifier] NULL,
  [FLoads] [uniqueidentifier] NULL,
  [FCurators] [uniqueidentifier] NULL,
  [FExtraServises] [uniqueidentifier] NULL,
  [FHolidays] [uniqueidentifier] NULL,
  [FSources] [uniqueidentifier] NULL,
  [FGUID] [uniqueidentifier] NOT NULL DEFAULT (newid()),
  [FCustomersGroups] [uniqueidentifier] NULL,
  [FShortDescription] [nvarchar](250) NULL,
  [FBirthDayReminder] [uniqueidentifier] NULL,
  [PostCountry] [nvarchar](255) NULL,
  [fcredit] [money] NULL,
  [FCreditTemp] [money] NULL,
  [FCreditDateEnd] [datetime] NULL,
  [FCreditStatus] [bit] NOT NULL DEFAULT (0),
  [FisRef] [bit] NOT NULL DEFAULT (0),
  [PostIndex] [nvarchar](50) NULL,
  [FOwner] [bit] NOT NULL DEFAULT (0),
  [EMailName] [nvarchar](255) NULL,
  [FCustMode] [tinyint] NOT NULL DEFAULT (2),
  [FCustNum] [nvarchar](20) NULL,
  [FCustAccInform] [tinyint] NOT NULL DEFAULT (1),
  [FCustMailTime] [time] NULL,
  [DateLastChange] [datetime] NOT NULL DEFAULT (getdate()),
  [UserLastChange] [nvarchar](128) NOT NULL DEFAULT (suser_name()),
  [FCuratorEditOrdersAllow] [bit] NOT NULL DEFAULT (0),
  [FOwnerNumber] [nvarchar](20) NULL,
  [FIndexMonitoringLink] [nvarchar](150) NULL,
  [FMarketolog] [uniqueidentifier] NULL,
  [FTracking] [bit] NULL DEFAULT (0),
  [FTimeZone] [nvarchar](128) NULL,
  [FFlagMonitoring] [bit] NOT NULL DEFAULT (1),
  [FTimeZoneID] [int] NULL,
  [FCountrySettlement] [nvarchar](50) NULL,
  [FTIN] [nvarchar](20) NULL,
  CONSTRAINT [PK_Customers] PRIMARY KEY CLUSTERED ([FGUID]),
  CONSTRAINT [PK_tCustomers_new1] UNIQUE ([Id]),
  CONSTRAINT [UK_Customers_Name] UNIQUE ([FullName], [FActivity], [FCountry], [FCountrySettlement], [FTIN])
)
ON [PRIMARY]
TEXTIMAGE_ON [PRIMARY]
GO