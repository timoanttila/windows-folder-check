@echo off
set "rootPath=C:\Git\varma\"

:: List of folder names to check and create if not present
set "folders=Backup Images Logs Output"

for %%F in (%folders%) do (
    if not exist "%rootPath%%%F" (
        mkdir "%rootPath%%%F"
        echo Folder created: %rootPath%%%F
    ) else (
        echo Folder already exists: %rootPath%%%F
    )
)

pause
