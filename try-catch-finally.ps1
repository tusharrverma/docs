cls

write-host "try-catch-finally in PS"

try
{   trap {write-host "error occured, script continuing"}
    get-service | ? {$_. status -eq "running"}
    Get-Process "chrome" | ft
    throw 
    get-eventlog -logname application -newest 5 | ft
}

catch [system.management.automation.commandnotfoundexception]
{
    write-host "spelling mistake"
}

catch [system.invalidoperationexception]
{
    write-host "cant connect to computer"
}

catch
{
    write-host "Unknown error"
}

finally 
{
    write-host "end of script"
}