# -------------------------------------------------------
# Parenthesis
# -------------------------------------------------------
# Means evaluate the contents NOW!
$myVal = $true

($myVal -eq $true).GetType()
(Get-Date)
(Get-Date).Month
$myDate = Get-Date
$myDate.Month

$myMonth = $myDate.Month

Write-Host "The Month is number: $()"

if($myVal -eq $true) {
    Write-Host "TRUE"
} else {
    Write-Host "False"
}

(Get-Date) - (Get-Date -Day 23 -Month 03 -Year 1976)

(((command1).propery) lkjasdljkf)

# -------------------------------------------------------
# Brackets
# -------------------------------------------------------
# Means evaluation happens when it's their turn

begin {
    # Code that needs rans
}

ForEach-Object {

}

Invoke-Command -ComputerName EREBUS -ScriptBlock {
    Write-Host "ljkasdljkasdf"
}

# -------------------------------------------------------
# Square Brackets
# -------------------------------------------------------
# Used to retrieve elements from arrays or hashtables and
# designate optional params/attributes/type casting

$colors = "Red", "Blue", "Green"
$colors[0]

$hash = @{
    Name = "Tim"
    Last = "Davis"
}

$hash['Name']
