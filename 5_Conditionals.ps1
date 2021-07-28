# -------------------------------------------------------
# Conditionals
# -------------------------------------------------------
# Conditionals evaluate to true or false.
# If/Else/ElseIf are conditionals
# Operators
# -eq, Equals
# -ne, Not Equals
# -gt, Greater Than
# -ge, Greater Than or Equal To
# -lt, Less Than
# -le, Less Than or Equal To
# -like, Like
# -notlike, Not Like

# Conditionals consist of the 'If' statement followed by comparison
# which uses operators above (or not) and then the code you want to run
# if the conditional evaluates to true

$sample = 1

if($sample -eq 1) {
    Write-Output "Sample is Equal to 1"
}

if($sample -gt 1) {
    Write-Output "Sample is Greater Than 1"
}

if($sample -ge 1) {
    Write-Output "Sample is Greater Than or Equal to 1"
}

if($sample -like 1) {
    Write-Output "Sample is Like 1"
}

if($sample -notlike 1) {
    Write-Output "Sample is Not Like 1"
}

# -------------------------------------------------------
# Else
# -------------------------------------------------------
# Else lets you run additional code if the conditional didn't
# evaluate to true

$sample = 2

if($sample -eq 1) {
    Write-Output "Sample is Equal to 1"
} else {
    Write-Output "Sample does not Equal 1"
}

# The logic can be reversed

if($sample -ne 1) {
    Write-Output "Sample does not Equal 1"
} else {
    Write-Output "Sample is Equal to 1"
}

# -------------------------------------------------------
# ElseIf
# -------------------------------------------------------
# ElseIf lets you test for additional conditionals before
# processing final else.

# You can use as many elseifs as you want but can make code
# harder to read

$sample = 3
$sample = 2
$sample = 8

if($sample -eq 3) {
    Write-Output "Sample is Equal to 3"
} elseif($sample -eq 2) {
    Write-Output "Sample is Equal to 2"
} else {
    Write-Output "Sample is something else"
}

# -------------------------------------------------------
# Or Not?!?
# -------------------------------------------------------
# If you have a variable holding a boolean or function that
# returns a boolean then you can do if() without comparison
# operator

Function Test-Me {
    return $true
}

if(Test-Path -Path "C:\Temp") {
    Write-Output "Path Exists"
} else {
    Write-Output "Path does not exist"
}

$myBool = $false

if(!$myBool) {
    Write-Output "Value is True"
} else {
    Write-Output "Value is False"
}

# -------------------------------------------------------
# Testing
# -------------------------------------------------------
# You can test by omitting the IF and just typing
# the ($sample -eq 1)

!($sample -eq 1)

# PowerShell will spit out True or False

# -------------------------------------------------------
# -AND -Or
# -------------------------------------------------------
$sample = 2

if(($sample -gt 4 -or $sample -lt 10) -and ($sample -gt 1)) {
    Write-Output "Sample is good!"
}

T T = T
AND(T T T T T T F) = F
OR(T F T) = T


$colors = "Red", "Blue", "Green"

if($colors -like "*Blue*") {
    Write-Output "Didn't find it"
}

$today = Get-Date

$dates = New-Object -TypeName System.Collections.Generic.List[PSObject]
$dates.Add((Get-Date))
$dates.Add($today)

if($dates -like $today) {
    Write-Output "Found today"
}

$logs = Get-EventLog -LogName System -Newest 5

if($logs.Message -like "*DCOM*") {
    Write-Output "Found"
}

$today.ToString()
$age = 41
$age.ToString()

$hash = @{
    one = "one"
    two = "two"
}

$hash.ToString()

$colors.ToString()


# -------------------------------------------------------
# Switch
# -------------------------------------------------------

$value = "bob"

switch($value) {
    "tim" {
        
    } 
    "bob" {
        Test-Me
    }
    "charlie" {"three"}
    default {"default"}
}