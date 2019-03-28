# NTP Service Check Local Server
$NtpSrvStat = (Get-Service -Name W32Time).Status
IF ($NtpSrvStat -eq "Stopped")
{
Cmd /c net start w32time
w32tm /resync
Net Time /Set /Y
}