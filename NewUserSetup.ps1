# Set a temporary password and the username 
$password = Read-Host -AsSecureString

# Set up new user 
New-LocalUser -Name "LazyUser" -Password $password -FullName "Lazy User" -Description "Test user"

# Set groups
Add-LocalGroupMember -Group Users -Member LazyUser 
# Other groups that can be added: Administrative, HR, Accounting, Developers, Management

# Create Microsoft user account with Outlook email
New-LocalUser -Name "MicrosoftAccount\accounName@outlook.com" -Description "Microsoft account description"

# Remove user account on termination
Remove-LocalUser -Name "USER_ACCOUNT_NAME"


# NOTES
#  Version:        1.0
#  Author:         R. Mens - LazyAdmin.nl
# Creation Date:  25 march 2022
# Purpose/Change: Initial script development
