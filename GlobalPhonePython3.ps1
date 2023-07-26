# Name:    GlobalPhoneCloudAPI
# Purpose: Execute the GlobalPhoneCloudAPI program

######################### Parameters ##########################
param(
    $phone = '',  
    $license = '', 
    [switch]$quiet = $false
    )

########################## Main ############################
Write-Host "`n================== Melissa Global Phone Cloud API ====================`n"

# Get license (either from parameters or user input)
if ([string]::IsNullOrEmpty($license) ) {
  $license = Read-Host "Please enter your license string"
}

# Check for License from Environment Variables 
if ([string]::IsNullOrEmpty($license) ) {
  $license = $env:MD_LICENSE
}

if ([string]::IsNullOrEmpty($license)) {
  Write-Host "`nLicense String is invalid!"
  Exit
}

# Run project
if ([string]::IsNullOrEmpty($phone)) {
  python3 GlobalPhonePython3.py --license $license 
}
else {
  python3 GlobalPhonePython3.py --license $license --phone $phone
}
