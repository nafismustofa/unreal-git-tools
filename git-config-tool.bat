@echo off
echo downloading git config files...

curl -sS -o .gitignore https://raw.githubusercontent.com/nafismustofa/unreal-git-tools/refs/heads/main/git-config-files/.gitignore

curl -sS -o .gitattributes https://raw.githubusercontent.com/nafismustofa/unreal-git-tools/refs/heads/main/git-config-files/.gitattributes

echo git config files downloaded successfully
pause