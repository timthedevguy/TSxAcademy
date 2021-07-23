# -------------------------------------------------------
# Thought Excersize
# -------------------------------------------------------
# Difference between Write-Host and Write-Output
# Why one over the other?
# Additional reading: http://www.jsnover.com/blog/2013/12/07/write-host-considered-harmful/

# Run these two lines 7-8
Write-Host "Hello World [Write-Host]"
Write-Output "Hello World [Write-Output]"
break
# Did they look the same?  (Ignoring the [] suffix)

# Now, lets pretend we are writing a log file
# of our operations, run the following lines 14-17

"Starting Log" | Out-File .\test_log.txt
Write-Host "Hello World [Write-Host]" | Out-File .\test_log.txt -Append
Write-Output "Hello World [Write-Output]" | Out-File .\test_log.txt -Append
"Ending Log" | Out-File .\test_log.txt -Append
break

# What do you expect to see in test_log.txt?
# Open the test_log.txt file, what do you or don't you see?

# Powershell has a built in Transcript option using 'Start-Transcript'
# Run the below lines 26-29

Start-Transcript -Path .\test_transcript.txt
Write-Host "Hello World [Write-Host]"
Write-Output "Hello World [Write-Output]"
Stop-Transcript
break

# What do you expect to see in the test_transcript.txt?
# Open the test.transcript.txt file, what do you or don't you see?

# Do you see the difference between Write-Host and Write-Output?

# -------------------------------------------------------
# Code Excersize
# -------------------------------------------------------
# Write a small script that will prompt you for your name,
# say hello [name] to you and then ask you how old you are
# and display the results.

# This exersize will involve using a new CmdLet called
# Read-Host.  (Hint search for Read-Host, look at MS docs
# and examples)  You will utilize knowledge of variables, 
# expandable strings and the Write-Host or Write-Output
# from above