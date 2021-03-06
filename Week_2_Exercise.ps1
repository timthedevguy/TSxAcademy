$userData = '[
    {
        "AccountExpires":  null,
        "Description":  "Built-in account for administering the computer/domain",
        "Enabled":  true,
        "FullName":  "",
        "PasswordChangeableDate":  null,
        "PasswordExpires":  null,
        "UserMayChangePassword":  true,
        "PasswordRequired":  true,
        "PasswordLastSet":  null,
        "LastLogon":  "\/Date(1605771872777)\/",
        "Name":  "Administrator",
        "SID":  {
                    "BinaryLength":  28,
                    "AccountDomainSid":  "S-1-5-21-1627568633-850217724-3435047281",
                    "Value":  "S-1-5-21-1627568633-850217724-3435047281-500"
                },
        "PrincipalSource":  1,
        "ObjectClass":  "User"
    },
    {
        "AccountExpires":  null,
        "Description":  "A user account managed by the system.",
        "Enabled":  false,
        "FullName":  "",
        "PasswordChangeableDate":  null,
        "PasswordExpires":  null,
        "UserMayChangePassword":  true,
        "PasswordRequired":  false,
        "PasswordLastSet":  null,
        "LastLogon":  null,
        "Name":  "DefaultAccount",
        "SID":  {
                    "BinaryLength":  28,
                    "AccountDomainSid":  "S-1-5-21-1627568633-850217724-3435047281",
                    "Value":  "S-1-5-21-1627568633-850217724-3435047281-503"
                },
        "PrincipalSource":  1,
        "ObjectClass":  "User"
    },
    {
        "AccountExpires":  null,
        "Description":  "Built-in account for guest access to the computer/domain",
        "Enabled":  false,
        "FullName":  "",
        "PasswordChangeableDate":  null,
        "PasswordExpires":  null,
        "UserMayChangePassword":  false,
        "PasswordRequired":  false,
        "PasswordLastSet":  null,
        "LastLogon":  null,
        "Name":  "Guest",
        "SID":  {
                    "BinaryLength":  28,
                    "AccountDomainSid":  "S-1-5-21-1627568633-850217724-3435047281",
                    "Value":  "S-1-5-21-1627568633-850217724-3435047281-501"
                },
        "PrincipalSource":  1,
        "ObjectClass":  "User"
    },
    {
        "AccountExpires":  null,
        "Description":  "shared",
        "Enabled":  false,
        "FullName":  "shared",
        "PasswordChangeableDate":  "\/Date(-11644387200000)\/",
        "PasswordExpires":  null,
        "UserMayChangePassword":  false,
        "PasswordRequired":  true,
        "PasswordLastSet":  null,
        "LastLogon":  null,
        "Name":  "shared",
        "SID":  {
                    "BinaryLength":  28,
                    "AccountDomainSid":  "S-1-5-21-1627568633-850217724-3435047281",
                    "Value":  "S-1-5-21-1627568633-850217724-3435047281-1002"
                },
        "PrincipalSource":  1,
        "ObjectClass":  "User"
    },
    {
        "AccountExpires":  null,
        "Description":  "A user account managed and used by the system for Windows Defender Application Guard scenarios.",
        "Enabled":  false,
        "FullName":  "",
        "PasswordChangeableDate":  "\/Date(1605858056395)\/",
        "PasswordExpires":  "\/Date(1609400456395)\/",
        "UserMayChangePassword":  true,
        "PasswordRequired":  true,
        "PasswordLastSet":  "\/Date(1605771656395)\/",
        "LastLogon":  null,
        "Name":  "WDAGUtilityAccount",
        "SID":  {
                    "BinaryLength":  28,
                    "AccountDomainSid":  "S-1-5-21-1627568633-850217724-3435047281",
                    "Value":  "S-1-5-21-1627568633-850217724-3435047281-504"
                },
        "PrincipalSource":  1,
        "ObjectClass":  "User"
    }
]'

$users = $userData | ConvertFrom-Json
$adminGroup = "Administrator", "Tim Davis"

# Step 1, run lines 1-104 to populate $users with User data (Local User Accounts from a PC)
# and Administrators Group data.  
# Using user data, generate a collection of custom user objects with the following properties
# Name
# Enabled (Yes|No)
# PasswordRequired (Yes|No)
# UserCanChangePassword (Yes|No)
# IsAdmin (Yes|No) (Can compare to users in $adminGroup)
# IsBuiltInAdmin (Yes|No)

# One a collection of custom objects have been created, display them by piping to Format-Table

# Results will look like
#
#Name               PasswordRequired IsBuiltInAdmin IsAdmin UserMayChangePassword Enabled
#----               ---------------- -------------- ------- --------------------- -------
#Administrator      Yes              Yes            Yes     Yes                   Yes
#DefaultAccount     No               No             No      Yes                   No
#Guest              No               No             No      No                    No
#shared             Yes              No             No      No                    No
#WDAGUtilityAccount Yes              No             No      Yes                   No

# In this exercise you will use Loops, Conditionals, could potentially use a Function,
# HashTable, as well as creaing an object from a Hashtable, and Lists