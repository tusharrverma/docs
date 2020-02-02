cls

write-host "Working with Windows Operations" -foregroundcolor yellow `n

write-host "Working with Windows Services" -foregroundcolor blue

get-service | where-object {$_. status -eq "running" -and $_. displayname -like "windows*"} | sort displayname | ft status, displayname, starttype

write-host "Working with Windows Process" -foregroundcolor blue

get-process | where-object {$_. handles -gt 500 -and $_. handles -lt 700} | sort handles | ft handles, processname, starttime

write-host "Working with Windows Events" -foregroundcolor blue

get-eventlog -logname application | where-object {$_. timegenerated -gt "01/09/2020 08:00" -and $_. timegenerated -lt "01/09/2020 20:00"} | ft time*, source, entrytype

write-host "Working with Windows Hotfix" -foregroundcolor blue

get-hotfix | where-object {$_. installedon -gt "01/01/2019"} | ft hotfixid, installedon

write-host "End of Script" -foregroundcolor green