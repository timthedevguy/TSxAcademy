# -------------------------------------------------------
# Error Handling
# -------------------------------------------------------
# Errors aren't always what they seem!  You have two different
# type of exceptions in PowerShell, Terminating Errors and
# Non-Terminating Errors.  Terminating errors will halt the
# function or script.  Non-Terminating errors will allow the 
# script to continue.

# Terminating errors are generally syntax errors etc

# Non-Terminating errors
Get-ChildItem -Path "C:\Tim Davis"
Write-Output "I've ran"

try{
    Get-ChildItem -Path "C:\Tim Davis"
    Write-Output "I've ran"
} catch {
    Write-Output "I've been caught"
}

# Still shows 'I've ran' as this is a non-terminating error
# Add -ErrorAction Stop to make it a terminating error

try{
    Get-ChildItem -Path "C:\Tim Davis" -ErrorAction Stop
    Write-Output "I've ran"
} catch {
    Write-Output "I've been caught"
}

# Treat all errors as terminating
$ErrorActionPreference = 'Stop'
$ErrorActionPreference = 'Continue'

# $_ Meaning