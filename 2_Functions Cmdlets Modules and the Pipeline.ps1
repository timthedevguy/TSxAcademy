# Touch on Git and Github
# Forgot to say what PowerShell was actually designed for
# Since PoSh 3.0 CmdLets from Modules NOT actively loaded in
#   session still show in autocomplete and auto load the module
#   if you use the command.  Modules are still session based.
#   Can prove using Get-Module

# Weekend Practice

# -------------------------------------------------------
# Commenting your Code
# -------------------------------------------------------

# -------------------------------------------------------
# Rubber Duck Debugging
# -------------------------------------------------------

# -------------------------------------------------------
# Functions
# -------------------------------------------------------
# Functions are reusable blocks of code that perform a 
# specific purpose or action.  If you find yourself writing
# the same code again then it should probably be a function!
Function Get-NextMonth {
    return (Get-Date).AddMonths(1)
}

$newDate = Get-NextMonth

# Once a Function is ran in the PowerShell session it can be
# be reused over and over again

# Try typing 'Get-NextMonth' in PowerShell window

# -------------------------------------------------------
# CmdLets
# -------------------------------------------------------
# CmdLets are reusable blocks of code, these are the main
# building blocks of PowerShell.  Get-Date is a CmdLet.

# https://docs.microsoft.com/en-us/powershell/module/microsoft.powershell.core/about/about_functions_cmdletbindingattribute?view=powershell-5.1

# CmdLets and Functions seem very similar on the surface but
# CmdLets provide additional argument support such as -WhatIf
# and -Verbose (there are others)
# 

# https://docs.microsoft.com/en-us/powershell/module/microsoft.powershell.core/about/about_commonparameters?view=powershell-5.1

# -- Common Params --
# -Verbose
# -ErrorAction
# -WhatIf

# -- Other Params --
# -Debug
# -WarningAction
# -InformationAction
# -ErrorVariable
# -WarningVariable
# -InformationVariable
# -OutVariable
# -OutBuffer
# -PipelineVariable

# To make things confusing, any Function can be turned in to
# a CmdLet by adding CmdletBinding

Function Get-NextMonth {
    [CmdletBinding()]       # <- CmdLetBinding Attribute
    Param()                 # <- Parameters Attribute

    Write-Verbose  -Message "Getting Next Month..."  # <- Write Verbose will only output to screen if -Verbose is passed
    return (Get-Date).AddMonths(1)
}

Function Get-NextMonth {
    [CmdletBinding()]           # <- CmdLetBinding Attribute
    Param([Int]$Months = 1)     # <- Parameters Attribute

    Write-Verbose  -Message "Getting $($Months) Months..."  # <- Write Verbose will only output to screen if -Verbose is passed
    Write-Debug -Message "This is a debug message"          # <- Write-Debug will only output to screen if -Debug is passed
    return (Get-Date).AddMonths($Months)
}

# -------------------------------------------------------
# Modules
# -------------------------------------------------------
# Modules are a group of CmdLets/Functions that are generally
# geared to a specific purpose.  For example 'AzureAD' contains
# all the Azure AD CmdLets needed to interact with Microsoft
# Azure.

# Those with Programming background will compare this to a Library or
# Package.  (C# think DLL)

# Modules are imported using the CmdLet 'Import-Module', Import-Module
# loads every CmdLet and Function of the Module in to the session.  
# As we saw in the Functions topic once something is in the session
# you can use them over and over again.

Import-Module -Name AzureAD

# To see what commands are available after importing a Module use

Get-Command -Module AzureAD

# Show ActiveDirectory Module on my MGMT01

# -------------------------------------------------------
# PowerShell Pipeline
# -------------------------------------------------------
# In PowerShell you take small peices and build upon them,
# or operate on them in different steps.  PowerShell lets you
# pass objects through the pipeline to the next operation.
# Think car assembly line, stop 1 some nuts get welded on, stop 2
# some more nuts get welded on and this continues until you
# have a finished car.

# Items are passed through the pipeline using the pipe character '|'

Get-Date | Select-Object Month

# The results of Get-Date are pushed through the Pipeline to Select-Object
# Select-Object selects the Property 'Month' and pushes it to the pipeline,
# and since there is no more pipe to push through it is returned to the terminal.

