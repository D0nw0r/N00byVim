### `windows-setup.ps1`:

Write-Host "[!] This will install N00byVim into your Neovim config directory."
Write-Host "[!] Existing config will be backed up if it exists."

Write-Host "[+] Installing pre-requisites for snacks nvim"
winget install sharkdp.fd
winget install lazygit

$reply = Read-Host "Proceed? (y/n)"

if ($reply -ne 'y' -and $reply -ne 'Y') {
    Write-Host "[-] Aborted. No changes made."
    exit
}

# Set target directory
$nvimConfig = "$env:LOCALAPPDATA\nvim"

# Backup existing config
if (Test-Path $nvimConfig) {
    $backupDir = "$nvimConfig.bak"
    Write-Host "[*] Backing up existing config to $backupDir"
    Rename-Item -Path $nvimConfig -NewName "nvim.bak" -Force
}

# Clone your repo
git clone https://github.com/D0nw0r/N00byVim $nvimConfig

# Launch Neovim if installed
if (Get-Command nvim -ErrorAction SilentlyContinue) {
    Write-Host "[*] Launching Neovim..."
    nvim
} else {
    Write-Host "[!] Neovim not found in PATH. Please install it from https://neovim.io/download/"
}

