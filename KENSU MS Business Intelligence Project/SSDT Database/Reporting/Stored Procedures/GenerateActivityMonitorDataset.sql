

CREATE PROCEDURE [Reporting].[GenerateActivityMonitorDataset] (
@GroupedBy varchar(20), @Server  varchar(20),  @Database  varchar(20)= NULL,
 @LanId  varchar(50)=NULL, @ProcessID int = NULL)

AS 
BEGIN
 SET NOCOUNT ON;
  ;WITH 
connected_users
AS
(
	SELECT        
		  ServerName = ServerProperty('ServerName')  
		, DatabaseName = DB_NAME(prc.dbid)  
		, LanId = SUBSTRING(prc.loginame, CHARINDEX('\', prc.loginame) + 1, LEN(prc.loginame) - CHARINDEX('\', prc.loginame))   
		, HostName = prc.hostname
		, OpenTransactions = prc.open_tran
		, ProcessIdBlocked = prc.blocked
		, ProcessStatus = prc.status
		, ProcessID = prc.spid
		, prc.login_time
		, prc.last_batch
		, prc.program_name
		, prc.cmd
	FROM 
	master.dbo.sysprocesses AS prc WITH (NOLOCK) 
)

SELECT 
	  cu.ServerName
	, cu.DatabaseName
	, cu.LanId
	, cu.HostName
	, cu.OpenTransactions
	, cu.ProcessIdBlocked
	, cu.ProcessStatus
	, cu.ProcessID
	, cu.login_time
	, cu.last_batch
	, cu.program_name
	, cu.cmd
	, GroupedBy = 
		CASE 
			WHEN @GroupedBy = 'DatabaseName' THEN cu.DatabaseName
			WHEN @GroupedBy = 'LanId' THEN cu.LanId
			WHEN @GroupedBy = 'HostName' THEN cu.HostName
			WHEN @GroupedBy = 'OpenTransactions' THEN CAST(cu.OpenTransactions AS VARCHAR)
			WHEN @GroupedBy = 'ProcessIdBlocked' THEN CAST(cu.ProcessIdBlocked AS VARCHAR)
			WHEN @GroupedBy = 'ProcessStatus' THEN cu.ProcessStatus
			ELSE '<ALL>' 
		END 
FROM 
	connected_users cu
WHERE
	1=1
	AND (('<ALL>' IN(@Database) OR cu.DatabaseName IN(@Database))
	AND (@LanId IS NULL OR LanId = @LanId))
	AND (@ProcessID IS NULL OR cu.ProcessID = @ProcessID)
END;