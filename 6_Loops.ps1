# -------------------------------------------------------
# Loops
# -------------------------------------------------------
# Loops allow you to repeat blocks of code

# While - Code repeats while condition is True
# Do Until - Code repeats until condition is True
# Do While - Code repeats while condition is True
# For - Code repeats a number of times
# Foreach - Code repeats for each item in collection
# ForEach-Object - Code repeats for each object passed in pipeline

# -------------------------------------------------------
# DO vs WHILE
# -------------------------------------------------------
# DO runs code at least once before checking the condition
# WHILE checks condition and then runs code if True

$sample = 2

do {
    $sample++  # <- ++ is shorthand for $sample = $sample + 1
    Write-Output "Do Loop Ran"
}while($sample -eq 1)

while($sample -eq 2) {
    Write-Output "While Loop Ran"
}

while($sample -gt 1 -and $sample -lt 10 ) {
    Write-Output "While Loop Ran for sample #$($sample)"
    $sample++
}

$sample = 1
do {
    $sample++  # <- ++ is shorthand for $sample = $sample + 1
    Write-Output "Do Loop Ran, Sample is $($sample)"
}until($sample -eq 10)

# -------------------------------------------------------
# For
# -------------------------------------------------------
# For loop will repeat a number of times

for($counter = 0;$counter -le 10;$counter++) {
    Write-Output "For Loop Ran, counter is $($counter)"
}



# -------------------------------------------------------
# Foreach
# -------------------------------------------------------
# Code repeats for each item in collection

$colors = "Red", "Green", "Blue"

foreach($color in $colors) {
    Write-Output "Current color is $($color)"
}

# -------------------------------------------------------
# ForEach-Object
# -------------------------------------------------------
# Code repeats for each object passed in pipeline

# $_ represents the current object in the iteration

$colors = "Red", "Green", "Blue"

$colors | ForEach-Object {
    Write-Output "Current color is $($_)"
}