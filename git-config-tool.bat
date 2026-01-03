@echo off

if not exist ".git" (
    echo Initializing Git repository...
    git init >nul 2>&1
    echo Git repository initialized.
) else (
    echo Git repository already initialized.
)

echo.

echo Setting up Git LFS in repository...

git lfs install >nul 2>&1

echo Git LFS installed.

echo.

echo Downloading Git config files...
curl -sS -o .gitignore https://raw.githubusercontent.com/nafismustofa/unreal-git-tools/refs/heads/main/git-config-files/.gitignore
curl -sS -o .gitattributes https://raw.githubusercontent.com/nafismustofa/unreal-git-tools/refs/heads/main/git-config-files/.gitattributes

echo Git config files downloaded

echo.

pause