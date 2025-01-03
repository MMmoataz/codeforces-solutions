@echo off
echo Changing to repository directory...
cd /d "%~dp0"

echo Adding all changes to Git...
git add .

echo Committing changes...
set /p commit_message="Enter commit message: "
git commit -m "%commit_message%"

echo Pushing changes to remote repository...
git push origin main

echo Done!
pause