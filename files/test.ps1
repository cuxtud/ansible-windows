Start-transcript –path C:\Temp\scriptsummary.txt
$num1=10
$num2=15
If($num1 –ne $num2)
{
  Start-sleep –s 2700
  New-item –path C:\Temp\file.txt –itemtype File
}
else
{
  Write-host “file not created”
}
Stop-transcript
