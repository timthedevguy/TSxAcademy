# -------------------------------------------------------
# Selecting
# -------------------------------------------------------
# The Select-Object cmdlet selects specified properties of
# an object or set of objects. It can also select unique 
# objects, a specified number of objects, or objects in a 
# specified position in an array.

$colors = "Red", "Green", "Blue", "Yellow"
$colors | Select-Object "Red"

Get-Date | Select-Object Month, Day, Year

Get-PSDrive | Select-Object Name,Provider

# -------------------------------------------------------
# Filtering
# -------------------------------------------------------
# Where-Object lets you filter based on properties you specifiy

Get-PSDrive
Get-PSDrive | Where-Object {$_.Provider.Name -eq "Registry"}


# -------------------------------------------------------
# Sorting
# -------------------------------------------------------
# Sort-Object can sort on property or just a the object itself


# Sorting without using a property
$colors | Sort-Object -Descending
$colors | Sort-Object 

# Sorting using a property
Get-PSDrive | Select-Object Name,Provider | Sort-Object -Property Provider

