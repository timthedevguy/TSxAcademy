#
# These files are found at - https://github.com/timthedevguy/TSxAcademy
#
# -------------------------------------------------------
# About Me
# -------------------------------------------------------
# Started programming on the Apple IIe in middle school
# Tinkered throughout the years in C, C++, QBasic, VB, VB.NET, HTML/CSS/Javascript, Ruby, C#, ObjectiveC, PHP, Python and now Powershell
# Favorites are C#, Python and Powershell
# Joined Truesec in 2019 as a Consultant/DevOps guy
# Hobbies, programming web applications for Eve Online

# -------------------------------------------------------
# What is PowerShell
# -------------------------------------------------------
# "A tool that can be used for automating, enforcing and causing specific outcomes within an environment."
# 
# Can be as simple as one line of code or as complex as thousands with a GUI interface


# -------------------------------------------------------
# PowerShell IDEs
# -------------------------------------------------------
# Windows Powershell ISE (Windows Only)
# Visual Studio Code (Cross Platform)

# Extensions for VS Code (How to install?)
#   - Powershell
#   - Rainbow Brackets
#   - Settings Sync
#   - Todo Tree
#   - VS Code Icons

# -------------------------------------------------------
# Running Code
# -------------------------------------------------------
# F5 (Run Script) vs F8 (Run Selection)

# F5 Runs Entire Script
Write-Output "First Message"

# F8 Runs Line or Selection under Cursor
Write-Output "Second Message"

$name = "Tim Davis"
Write-Output "My name is $($name)"

# -------------------------------------------------------
# Using Breaks during testing
# -------------------------------------------------------
# If you are using the IDE to test lines of code you can 
# breaks to prevent entire script from being ran on accident

Write-Output "Third Message"

# -------------------------------------------------------
# Powershell Session
# -------------------------------------------------------
# The session lasts as long as the window is open, each window 
# (or instance of Powershell.exe) is it's own Session.

# -------------------------------------------------------
# Tab Completion
# -------------------------------------------------------
# Tab Completion works in the editor and the command line, failure
# of Tab Completion to work generally means there is an error in
# in the script or permissions.

# -------------------------------------------------------
# Getting Help
# -------------------------------------------------------
Get-Help -Name CMDLET_NAME 

