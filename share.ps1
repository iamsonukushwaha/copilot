# Script to share the C drive with everyone

$shareName = "C$"

# Check if the share already exists
if (Test-Path "C:\\$shareName") {
    Write-Host "The share `"$shareName`" already exists."
} else {
    # Share the C drive with everyone
    net share $shareName /grant:everyone /perm:r

    # Set the comment for the share
    net share $shareName /remark:"C drive shared with everyone"
}
