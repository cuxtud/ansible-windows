# NTP Service Check Local Server
Start-transcript -path C:\Temp\scriptsummary.txt
$NtpSrvStat = (Get-Service -Name W32Time).Status
IF ($NtpSrvStat -eq "Stopped")
{
Cmd /c net start w32time
w32tm /resync
Net Time /Set /Y
}
Stop-Transcript