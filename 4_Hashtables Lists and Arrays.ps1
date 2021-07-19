# -------------------------------------------------------
# Collections
# -------------------------------------------------------
# Hashtables, Lists and Arrays are all objects that hold a
# collection of other objects.  Think of them as containers,
# throw the object in a container to pull it out later

# -------------------------------------------------------
# Hashtables
# -------------------------------------------------------
# Hashtables are a collection of Key <-> Value pairs.  PowerShell
# is great in that it lets you create these on the fly and access
# them with either . notation or [] notation.  

$hash = @{
    Item1 = "Item_1"
    Item2 = "Item_2"
    Item3 = "Item_3"
}

# Hashtable items are accessed by the Key or by Property with the 
# same name as they Key

$hash.Item1
$hash["Item1"]

# Adding an item to a Hashtable

$hash["Item4"] = "Item_4"

# Removing item from a Hashtable

$hash.Remove("Item2")

# Hashtables have no order by default, if Order matters you can create
# an ordered Hashtable like so

$hash = [ordered]@{
    Item1 = "Item_1"
    Item2 = "Item_2"
    Item3 = "Item_3"
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

$objects[2].GetType()

# -------------------------------------------------------
# Arrays
# -------------------------------------------------------
# Arrays are a simple collection of objects in PowerShell.
# These are simpler than a List and are generally used instead 
# of Lists.  These objects can be anything

$colors = @("Red", "Green", "Blue")
$colors = "Red", "Green", "Blue"

# Items are accessed via a 0 index list, this means first item is index 0

$colors[0]
$colors[1]
$colors[2]
$colors[3]

# Adding item to array

$colors += "Yellow"

# Remove item from an array

$colors = $colors | Where-Object {$_ -ne "Blue"}  # <- Technically this recreates the array with all items BUT the "Blue"

# Lists are much more efficient at working with large sets of data, consider using them instead of plain Arrays

# -------------------------------------------------------
# Sample Array/List Operations
# -------------------------------------------------------

$colors | ForEach-Object {
    Write-Output "The current color is: $($_)"
}

$colors.ToUpper()

$colors.ToUpper() | ForEach-Object {
    Write-Output "The current color is: $($_)"
}