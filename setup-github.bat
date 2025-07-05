@echo off
echo ========================================
echo    Soil Nutrient Analysis System
echo    GitHub Setup Script
echo ========================================
echo.

echo Checking if Git is installed...
git --version >nul 2>&1
if %errorlevel% neq 0 (
    echo ERROR: Git is not installed!
    echo.
    echo Please install Git from: https://git-scm.com/download/win
    echo After installation, run this script again.
    echo.
    pause
    exit /b 1
)

echo Git is installed! Proceeding with setup...
echo.

echo Step 1: Initializing Git repository...
git init
if %errorlevel% neq 0 (
    echo ERROR: Failed to initialize Git repository
    pause
    exit /b 1
)

echo Step 2: Adding all files to staging...
git add .
if %errorlevel% neq 0 (
    echo ERROR: Failed to add files to staging
    pause
    exit /b 1
)

echo Step 3: Creating initial commit...
git commit -m "Initial commit: Complete Soil Nutrient Analysis System with professional README"
if %errorlevel% neq 0 (
    echo ERROR: Failed to create commit
    pause
    exit /b 1
)

echo Step 4: Adding remote repository...
git remote add origin https://github.com/Naveenkm07/Soil-Nutrient-Analysis-System.git
if %errorlevel% neq 0 (
    echo ERROR: Failed to add remote repository
    pause
    exit /b 1
)

echo Step 5: Setting main branch...
git branch -M main
if %errorlevel% neq 0 (
    echo ERROR: Failed to set main branch
    pause
    exit /b 1
)

echo Step 6: Pushing to GitHub...
git push -u origin main
if %errorlevel% neq 0 (
    echo ERROR: Failed to push to GitHub
    echo.
    echo This might be due to:
    echo 1. Authentication issues - you may need to enter your GitHub credentials
    echo 2. Network connectivity issues
    echo 3. Repository permissions
    echo.
    pause
    exit /b 1
)

echo.
echo ========================================
echo    SUCCESS! 
echo ========================================
echo.
echo Your project has been successfully pushed to:
echo https://github.com/Naveenkm07/Soil-Nutrient-Analysis-System.git
echo.
echo What's included:
echo - Complete Spring Boot application
echo - Professional README with documentation
echo - All source code and resources
echo - Proper .gitignore file
echo.
echo You can now:
echo 1. Visit your GitHub repository
echo 2. Share the link with others
echo 3. Clone it on other machines
echo 4. Continue development
echo.
pause 