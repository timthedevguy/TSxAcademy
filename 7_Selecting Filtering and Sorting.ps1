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

$results = New-Object -TypeName System.Collections.Generic.List[PSObject]
(1..10) | ForEach-Object {
    $hash = @{
        Prop1 = "Tim"
        Prop2 = "Davis"
    }
    $obj = New-Object -TypeName PSCustomObject -Property $hash
    $results.Add($obj)
}

# -------------------------------------------------------
# Filtering
# -------------------------------------------------------
# Where-Object lets you filter based on properties you specifiy

Get-PSDrive
$regDrives = Get-PSDrive | Where-Object {$_.Provider.Name -eq "Registry"}

Get-PSDrive | Select-Object Name, Provider | Where-Object {$_.Provider.Name -eq "Registry"}

#Get-ChildItem -Path HKCU:\


# -------------------------------------------------------
# Sorting
# -------------------------------------------------------
# Sort-Object can sort on property or just a the object itself


# Sorting without using a property
$colors | Sort-Object -Descending
$colors | Sort-Object

# Sorting using a property
$drives2 = Get-PSDrive | Select-Object Name | Sort-Object -Property Provider

$drives1 = Get-PSDrive | Select-Object Name -ExpandProperty Name

