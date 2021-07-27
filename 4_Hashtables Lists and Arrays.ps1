# -------------------------------------------------------
# Collections
# -------------------------------------------------------
# Hashtables, Lists and Arrays are all objects that hold a
# collection of other objects.  Think of them as containers,
# throw the object in a container to pull it out later

# -------------------------------------------------------
# Arrays
# -------------------------------------------------------
# Arrays are a simple collection of objects in PowerShell.
# These are simpler than a List and are generally used instead 
# of Lists.  These objects can be anything

# Creating an Array

$colors = @("Red", "Green", "Blue")
$colors = "Red", "Green", "Blue"
$colors.RemoveAt(0)

# Items are accessed via a 0 index list, this means first item is index 0

$colors[0]
$colors[1]
$colors[2]
$colors[3]

# Adding item to array

$colors += "Yellow"

# Remove item from an array

$colors = $colors | Where-Object {$_ -ne "Yellow"}  # <- Technically this recreates the array with all items BUT the "Blue"

# Lists are much more efficient at working with large sets of data, consider using them instead of plain Arrays

# -------------------------------------------------------
# Hashtables
# -------------------------------------------------------
# Hashtables are a collection of Key <-> Value pairs. (Dictionary)  PowerShell
# is great in that it lets you create these on the fly and access
# them with either . notation or [] notation.  

$hash = @{
    Item1 = "First Item"
    Item2 = "Second Item"
    Item3 = "Third Item"
    MyItem = Get-Date
}

# Hashtable items are accessed by the Key or by Property with the 
# same name as they Key

$hash.MyItem
$hash["MyItem"]


# Adding an item to a Hashtable

$hash["lkjasdflhkasdf"] = "Fourth Item"

# Removing item from a Hashtable

$hash.Remove(0)

# Hashtables have no order by default, if Order matters you can create
# an ordered Hashtable like so

$hash = [ordered]@{
    Item1 = "First Item"
    Item2 = "Second Item"
    Item3 = "Third Item"
}

# -------------------------------------------------------
# Lists
# -------------------------------------------------------
# Lists are a collection of objects accessed via a list index and
# are much more efficient than Arrays.  Lists contain strongly
# typed objects so type of object must be known.  Or you can
# take advantage of Polymorphism and use PSObject

$colors = New-Object -TypeName System.Collections.Generic.List[String]

# Add String to List
$colors.Add("Red")
$colors.Add("Green")
$colors.Add("Blue")

# Access string
$colors[0]

# Remove string
$colors.RemoveAt(0)

# In order to store any kind of object

$objects = New-Object -TypeName System.Collections.Generic.List[PSObject]
$objects.Add("Test")
$objects.Add(31)
$objects.Add((Get-Date))

$objects[2].Year

# -------------------------------------------------------
# Sample Array/List Operations
# -------------------------------------------------------

$colors | ForEach-Object {
    Write-Output "The current color is: $($_)"
}
$colors.GetType()

$colors.ToUpper()

$colors.ToUpper() | ForEach-Object {
    Write-Output "The current color is: $($_)"
}

# -------------------------------------------------------
# Hashtable to PSCustomObject
# -------------------------------------------------------
# The biggest difference is output when formatting to screen
# or file.  This type of conversion you will see quite often

# Create hash table

$hash = [ordered]@{
    Item1 = "Item_1"
    Item2 = "Item_2"
    Item3 = "Item_3"
}

$hash["Tim"] = "Davis"

# Create PSCustomObject from Hashtable (Quick Way)
$obj = New-Object -TypeName PSCustomObject -Property $hash
$obj | Get-Member

# Create PSCustomObject (Long Way)
$obj = New-Object -TypeName PSCustomObject
$obj | Add-Member -NotePropertyName Item1 -NotePropertyValue "Item_1"
$obj | Add-Member -NotePropertyName Item2 -NotePropertyValue "Item_2"
$obj | Add-Member -NotePropertyName Item3 -NotePropertyValue "Item_3"

# Display to screen
$hash | Format-Table
$obj | Format-Table

# Export to CSV
$hash | Export-Csv -Path .\hash_csv.csv -NoTypeInformation
$obj | Export-Csv -Path .\obj_csv.csv -NoTypeInformation