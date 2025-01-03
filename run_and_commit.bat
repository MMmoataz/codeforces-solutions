@echo off
echo Changing to repository directory...
cd /d "%~dp0"

echo Adding all changes to Git...
git add .

echo Committing changes...
set /p commit_message="Enter your commit message for this change: "
git commit -m "%commit_message%"

echo Pushing changes to remote repository...
git push origin main

echo Done!
pause