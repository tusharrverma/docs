cls

[int]$num1 = read-host "Enter first number"

[int]$num2 = read-host "Enter second number"

write-host `n
write-host "Addition Script" -foregroundcolor DarkYellow `n

$result = [int]$num1 + [int]$num2

write-host "The addition of $num1 and $num2 is $result" -ForegroundColor Green `n


write-host "Subtraction Script" -foregroundcolor DarkYellow `n

$result = [int]$num1 - [int]$num2

write-host "The Subtraction of $num1 and $num2 is $result" -ForegroundColor Green `n


write-host "Multipication Script" -foregroundcolor DarkYellow `n

$result = [int]$num1 * [int]$num2

write-host "The Multipication of $num1 and $num2 is $result" -ForegroundColor Green `n


write-host "Division Script" -foregroundcolor DarkYellow `n

$result = [int]$num1 / [int]$num2
 
write-host "The Division of $num1 and $num2 is $result" -ForegroundColor Green `n