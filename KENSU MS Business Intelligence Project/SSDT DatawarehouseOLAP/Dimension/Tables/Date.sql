CREATE TABLE [Dimension].[Date] (
    [Date]                               DATE          NOT NULL,
    [DateKey]                            INT           NOT NULL,
    [Day Number]                         INT           NOT NULL,
    [Day]                                NVARCHAR (10) NOT NULL,
    [Day of Year]                        NVARCHAR (5)  NOT NULL,
    [Day of Year Number]                 INT           NOT NULL,
    [Day of Week]                        NVARCHAR (20) NOT NULL,
    [Day of Week Number]                 INT           NOT NULL,
    [Week of Year]                       NVARCHAR (5)  NOT NULL,
    [Month]                              NVARCHAR (10) NOT NULL,
    [Short Month]                        NVARCHAR (3)  NOT NULL,
    [Quarter]                            NVARCHAR (2)  NOT NULL,
    [Half of Year]                       NVARCHAR (3)  NOT NULL,
    [Beginning of Month]                 DATE          NOT NULL,
    [Beginning of Quarter]               DATE          NOT NULL,
    [Beginning of Half Year]             DATE          NOT NULL,
    [Beginning of Year]                  DATE          NOT NULL,
    [Beginning of Month Label]           NVARCHAR (40) NOT NULL,
    [Beginning of Month Label Short]     NVARCHAR (40) NOT NULL,
    [Beginning of Quarter Label]         NVARCHAR (40) NOT NULL,
    [Beginning of Quarter Label Short]   NVARCHAR (40) NOT NULL,
    [Beginning of Half Year Label]       NVARCHAR (40) NOT NULL,
    [Beginning of Half Year Label Short] NVARCHAR (40) NOT NULL,
    [Beginning of Year Label]            NVARCHAR (40) NOT NULL,
    [Beginning of Year Label Short]      NVARCHAR (40) NOT NULL,
    [Calendar Day Label]                 NVARCHAR (20) NOT NULL,
    [Calendar Day Label Short]           NVARCHAR (20) NOT NULL,
    [Calendar Week Number]               INT           NOT NULL,
    [Calendar Week Label]                NVARCHAR (20) NOT NULL,
    [Calendar Month Number]              INT           NOT NULL,
    [Calendar Month Label]               NVARCHAR (20) NOT NULL,
    [Calendar Month Year Label]          NVARCHAR (20) NOT NULL,
    [Calendar Quarter Number]            INT           NOT NULL,
    [Calendar Quarter Label]             NVARCHAR (20) NOT NULL,
    [Calendar Quarter Year Label]        NVARCHAR (20) NOT NULL,
    [Calendar Half of Year Number]       INT           NOT NULL,
    [Calendar Half of Year Label]        NVARCHAR (20) NOT NULL,
    [Calendar Year Half of Year Label]   NVARCHAR (20) NOT NULL,
    [Calendar Year]                      INT           NOT NULL,
    [Calendar Year Label]                NVARCHAR (10) NOT NULL,
    [Fiscal Month Number]                INT           NOT NULL,
    [Fiscal Month Label]                 NVARCHAR (20) NOT NULL,
    [Fiscal Quarter Number]              INT           NOT NULL,
    [Fiscal Quarter Label]               NVARCHAR (20) NOT NULL,
    [Fiscal Half of Year Number]         INT           NOT NULL,
    [Fiscal Half of Year Label]          NVARCHAR (20) NOT NULL,
    [Fiscal Year]                        INT           NOT NULL,
    [Fiscal Year Label]                  NVARCHAR (10) NOT NULL,
    [Date Key]                           INT           NOT NULL,
    [Year Week Key]                      INT           NOT NULL,
    [Year Month Key]                     INT           NOT NULL,
    [Year Quarter Key]                   INT           NOT NULL,
    [Year Half of Year Key]              INT           NOT NULL,
    [Year Key]                           INT           NOT NULL,
    [Beginning of Month Key]             INT           NOT NULL,
    [Beginning of Quarter Key]           INT           NOT NULL,
    [Beginning of Half Year Key]         INT           NOT NULL,
    [Beginning of Year Key]              INT           NOT NULL,
    [Fiscal Year Month Key]              INT           NOT NULL,
    [Fiscal Year Quarter Key]            INT           NOT NULL,
    [Fiscal Year Half of Year Key]       INT           NOT NULL,
    [ISO Week Number]                    INT           NOT NULL,
    CONSTRAINT [PK_Dimension_Date] PRIMARY KEY CLUSTERED ([Date] ASC)
);


GO
EXECUTE sp_addextendedproperty @name = N'Description', @value = N'Date dimension', @level0type = N'SCHEMA', @level0name = N'Dimension', @level1type = N'TABLE', @level1name = N'Date';


GO
EXECUTE sp_addextendedproperty @name = N'Description', @value = N'DW key for date dimension (actual date is used for key)', @level0type = N'SCHEMA', @level0name = N'Dimension', @level1type = N'TABLE', @level1name = N'Date', @level2type = N'COLUMN', @level2name = N'Date';


GO
EXECUTE sp_addextendedproperty @name = N'Description', @value = N'Day of the month', @level0type = N'SCHEMA', @level0name = N'Dimension', @level1type = N'TABLE', @level1name = N'Date', @level2type = N'COLUMN', @level2name = N'Day Number';


GO
EXECUTE sp_addextendedproperty @name = N'Description', @value = N'Day name', @level0type = N'SCHEMA', @level0name = N'Dimension', @level1type = N'TABLE', @level1name = N'Date', @level2type = N'COLUMN', @level2name = N'Day';


GO
EXECUTE sp_addextendedproperty @name = N'Description', @value = N'Month name (ie September)', @level0type = N'SCHEMA', @level0name = N'Dimension', @level1type = N'TABLE', @level1name = N'Date', @level2type = N'COLUMN', @level2name = N'Month';


GO
EXECUTE sp_addextendedproperty @name = N'Description', @value = N'Short month name (ie Sep)', @level0type = N'SCHEMA', @level0name = N'Dimension', @level1type = N'TABLE', @level1name = N'Date', @level2type = N'COLUMN', @level2name = N'Short Month';


GO
EXECUTE sp_addextendedproperty @name = N'Description', @value = N'Calendar month number', @level0type = N'SCHEMA', @level0name = N'Dimension', @level1type = N'TABLE', @level1name = N'Date', @level2type = N'COLUMN', @level2name = N'Calendar Month Number';


GO
EXECUTE sp_addextendedproperty @name = N'Description', @value = N'Calendar month label (ie CY2015Jun)', @level0type = N'SCHEMA', @level0name = N'Dimension', @level1type = N'TABLE', @level1name = N'Date', @level2type = N'COLUMN', @level2name = N'Calendar Month Label';


GO
EXECUTE sp_addextendedproperty @name = N'Description', @value = N'Calendar year (ie 2015)', @level0type = N'SCHEMA', @level0name = N'Dimension', @level1type = N'TABLE', @level1name = N'Date', @level2type = N'COLUMN', @level2name = N'Calendar Year';


GO
EXECUTE sp_addextendedproperty @name = N'Description', @value = N'Calendar year label (ie CY2015)', @level0type = N'SCHEMA', @level0name = N'Dimension', @level1type = N'TABLE', @level1name = N'Date', @level2type = N'COLUMN', @level2name = N'Calendar Year Label';


GO
EXECUTE sp_addextendedproperty @name = N'Description', @value = N'Fiscal month number', @level0type = N'SCHEMA', @level0name = N'Dimension', @level1type = N'TABLE', @level1name = N'Date', @level2type = N'COLUMN', @level2name = N'Fiscal Month Number';


GO
EXECUTE sp_addextendedproperty @name = N'Description', @value = N'Fiscal month label (ie FY2015Feb)', @level0type = N'SCHEMA', @level0name = N'Dimension', @level1type = N'TABLE', @level1name = N'Date', @level2type = N'COLUMN', @level2name = N'Fiscal Month Label';


GO
EXECUTE sp_addextendedproperty @name = N'Description', @value = N'Fiscal year (ie 2016)', @level0type = N'SCHEMA', @level0name = N'Dimension', @level1type = N'TABLE', @level1name = N'Date', @level2type = N'COLUMN', @level2name = N'Fiscal Year';


GO
EXECUTE sp_addextendedproperty @name = N'Description', @value = N'Fiscal year label (ie FY2015)', @level0type = N'SCHEMA', @level0name = N'Dimension', @level1type = N'TABLE', @level1name = N'Date', @level2type = N'COLUMN', @level2name = N'Fiscal Year Label';


GO
EXECUTE sp_addextendedproperty @name = N'Description', @value = N'ISO week number (ie 25)', @level0type = N'SCHEMA', @level0name = N'Dimension', @level1type = N'TABLE', @level1name = N'Date', @level2type = N'COLUMN', @level2name = N'ISO Week Number';

