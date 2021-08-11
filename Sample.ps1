Start-Transcript -Path .\my_transcript.txt
$whathappened = & "C:\Users\TimDavis\Projects\Powershell\TSxAcademy\10_Writing and Using Cmdlets.ps1" -Path "C:\"

Write-Host "The result was $($whathappened)"

Stop-Transcript