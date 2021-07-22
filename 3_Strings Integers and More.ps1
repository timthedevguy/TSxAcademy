# -------------------------------------------------------
# Variables
# -------------------------------------------------------
# Variables are objects you create that can be anything

$name = "Tim Davis"

# $name is a PowerShell variable, the '$' denotes this as a variable.
# From this point forward in the code $name will always be 'Tim Davis'
# until it is modified again.

# Variables can be any thing from a string to an integer to a Object
# (Technically strings and integers are objects also)

$name = 12
$name = Get-Date
$name = Get-Date | Select-Object Month

# Since all three lines work you can see that PowerShell is not a 
# strongly typed language.  This means that you don't have to
# pre-specify that $name is a String, Int or Date.

# -------------------------------------------------------
# Case Sensitivity
# -------------------------------------------------------
# PowerShell is NOT case sensitive.  This can cause issues if you
# come from a case sensitive language such as C#

$name
$Name
$NAME

# All three $names above are the same object.

# There is no mechanic that forces you to use lowercase or UPPERCASE or CamelCase
# in PowerShell.  All developers use different rules, a common one is to use the
# following.

# CamelCase - Used for Params and Global Variables
# lowercase - Used for local variables
# UPPERCASE - Used for Constants (I don't see these used much)

$ComputerName = "BOB"
$name = "Tim Davis"


# -------------------------------------------------------
# Strings
# -------------------------------------------------------
# Strings represent text, there are two types of strings.  
# Strings with "" are Expandable Strings whereas '' are 
# literal strings.

# Expandable strings can contain $ variables and PowerShell
# will evaluate those while processing the string.

# Literal strings do not get evaluated in anyway, ie: What You See
# Is What You Get

$name = "Tim Davis"

Write-Output "My name is $($name)"   # <- Expandable String
Write-Output 'My name is $($name)'   # <- Literal String

# Expandable strings can even eval complex statements

Write-Output "The current month number value is $(Get-Date | Select-Object Month -ExpandProperty Month)"

# What is $()?
# Alot of times this isn't needed unless using complex statements, but it's a good habit to use $() as this ensures PowerShell doesn't
# translate the object in a funky manner.

Write-Output "My name is $($name)"
Write-Output "The current month number value is $(Get-Date | Select-Object Month -ExpandProperty Month)"

# Strings are Objects!  This means they have properties and methods just like a normal object

$name.Length
$name.ToUpper()


# You can even do it with straight Text

"Tim Davis".Length
"Tim Davis".ToUpper()

# -------------------------------------------------------
# Integers
# -------------------------------------------------------
# Integers work very much like strings.  You can see that
# even though we assigned 41 to $age that we can use it just
# like it was a string.  PowerShell is smart enough to 
# know to convert it to a string.

$age = 41

Write-Output "My age is $age"
Write-Output "My age is $($age)"
Write-Output "My age is $($age.ToString())"

$age = (2+1)*3
$age.GetType()

[Int64]$new_age = 41

# -------------------------------------------------------
# and More
# -------------------------------------------------------
# Dates are a super common object to work with

$today = Get-Date
$now = Get-Date

($now -lt $today)

# How to see what you Properties/Methods an Object has?

$today | Get-Member
"Tim Davis" | Get-Member

$log = Get-EventLog -LogName System -Newest 1

$log | Get-Member
$log.GetType()

# -------------------------------------------------------
# What is it???
# -------------------------------------------------------
# If you are working with a variable and it isn't behaving
# like you think it should then that variable may not be the
# datatype you think it is.

$today.GetType()
$age.GetType()
$name.GetType()

# -------------------------------------------------------
# Special Variables
# -------------------------------------------------------
# $_, ForEach-Object, Where-Object, Try/Catch Block
# $Error
# $Input
# $null

# https://docs.microsoft.com/en-us/powershell/module/microsoft.powershell.core/about/about_automatic_variables?view=powershell-5.1
