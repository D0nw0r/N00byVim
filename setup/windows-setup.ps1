### `windows-setup.ps1`:

Write-Host "[!] This will install N00byVim into your Neovim config directory."
Write-Host "[!] Existing config will be backed up if it exists."

Write-Host "[+] Installing pre-requisites for snacks nvim"
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))
choco install nodejs --version="24.12.0"
choco install mingw
winget install BurntSushi.ripgrep.MSVC
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

