cls

write-host "Working with Windows Operations" -ForegroundColor Yellow
 
write-host " 1.Addition" `n "2.Subtraction" `n "3.Multipication" `n "4.Division" `n

$choice = read-host "Enter the choice"

if($choice -ge 1 -and $choice -le 4)

#or if($choice -in 1,2,3,4)

{   
    [int]$num1 = read-host "Enter first number"
    [int]$num2 = read-host "Enter second number"
}

else 
    {write-host "Invalid choice"}

switch($choice)
{

#if($choice -eq "1")
1
    {
       $sum = $num1 + $num2 
       write-host "The sum of $num1 and $num2 is $sum"
    }

#elseif($choice -eq "2")
2
    {
       $subtraction = $num1 - $num2 
       write-host "The subtraction of $num1 and $num2 is $subtraction"
    }

#elseif($choice -eq "3")
3
    {
       $multipication = $num1 * $num2 
       write-host "The sum of $num1 and $num2 is $multipication"
    }

#elseif($choice -eq "4")
4
    {
       $division = $num1 / $num2 
       write-host "The sum of $num1 and $num2 is $division"
    }
}

write-host "END OF SCRIPT" 