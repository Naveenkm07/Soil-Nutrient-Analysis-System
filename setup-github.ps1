# Soil Nutrient Analysis System - GitHub Setup Script
# PowerShell Version

Write-Host "========================================" -ForegroundColor Cyan
Write-Host "   Soil Nutrient Analysis System" -ForegroundColor Yellow
Write-Host "   GitHub Setup Script" -ForegroundColor Yellow
Write-Host "========================================" -ForegroundColor Cyan
Write-Host ""

# Check if Git is installed
Write-Host "Checking if Git is installed..." -ForegroundColor Green
try {
    $gitVersion = git --version
    Write-Host "Git is installed: $gitVersion" -ForegroundColor Green
} catch {
    Write-Host "ERROR: Git is not installed!" -ForegroundColor Red
    Write-Host ""
    Write-Host "Please install Git from: https://git-scm.com/download/win" -ForegroundColor Yellow
    Write-Host "After installation, run this script again." -ForegroundColor Yellow
    Write-Host ""
    Read-Host "Press Enter to exit"
    exit 1
}

Write-Host "Git is installed! Proceeding with setup..." -ForegroundColor Green
Write-Host ""

# Step 1: Initialize Git repository
Write-Host "Step 1: Initializing Git repository..." -ForegroundColor Blue
try {
    git init
    Write-Host "✓ Git repository initialized" -ForegroundColor Green
} catch {
    Write-Host "ERROR: Failed to initialize Git repository" -ForegroundColor Red
    Read-Host "Press Enter to exit"
    exit 1
}

# Step 2: Add all files to staging
Write-Host "Step 2: Adding all files to staging..." -ForegroundColor Blue
try {
    git add .
    Write-Host "✓ Files added to staging" -ForegroundColor Green
} catch {
    Write-Host "ERROR: Failed to add files to staging" -ForegroundColor Red
    Read-Host "Press Enter to exit"
    exit 1
}

# Step 3: Create initial commit
Write-Host "Step 3: Creating initial commit..." -ForegroundColor Blue
try {
    git commit -m "Initial commit: Complete Soil Nutrient Analysis System with professional README"
    Write-Host "✓ Initial commit created" -ForegroundColor Green
} catch {
    Write-Host "ERROR: Failed to create commit" -ForegroundColor Red
    Read-Host "Press Enter to exit"
    exit 1
}

# Step 4: Add remote repository
Write-Host "Step 4: Adding remote repository..." -ForegroundColor Blue
try {
    git remote add origin https://github.com/Naveenkm07/Soil-Nutrient-Analysis-System.git
    Write-Host "✓ Remote repository added" -ForegroundColor Green
} catch {
    Write-Host "ERROR: Failed to add remote repository" -ForegroundColor Red
    Read-Host "Press Enter to exit"
    exit 1
}

# Step 5: Set main branch
Write-Host "Step 5: Setting main branch..." -ForegroundColor Blue
try {
    git branch -M main
    Write-Host "✓ Main branch set" -ForegroundColor Green
} catch {
    Write-Host "ERROR: Failed to set main branch" -ForegroundColor Red
    Read-Host "Press Enter to exit"
    exit 1
}

# Step 6: Push to GitHub
Write-Host "Step 6: Pushing to GitHub..." -ForegroundColor Blue
Write-Host "Note: You may be prompted for your GitHub credentials" -ForegroundColor Yellow
try {
    git push -u origin main
    Write-Host "✓ Successfully pushed to GitHub" -ForegroundColor Green
} catch {
    Write-Host "ERROR: Failed to push to GitHub" -ForegroundColor Red
    Write-Host ""
    Write-Host "This might be due to:" -ForegroundColor Yellow
    Write-Host "1. Authentication issues - you may need to enter your GitHub credentials" -ForegroundColor Yellow
    Write-Host "2. Network connectivity issues" -ForegroundColor Yellow
    Write-Host "3. Repository permissions" -ForegroundColor Yellow
    Write-Host ""
    Read-Host "Press Enter to exit"
    exit 1
}

Write-Host ""
Write-Host "========================================" -ForegroundColor Cyan
Write-Host "    SUCCESS!" -ForegroundColor Green
Write-Host "========================================" -ForegroundColor Cyan
Write-Host ""
Write-Host "Your project has been successfully pushed to:" -ForegroundColor Green
Write-Host "https://github.com/Naveenkm07/Soil-Nutrient-Analysis-System.git" -ForegroundColor Cyan
Write-Host ""
Write-Host "What's included:" -ForegroundColor Yellow
Write-Host "- Complete Spring Boot application" -ForegroundColor White
Write-Host "- Professional README with documentation" -ForegroundColor White
Write-Host "- All source code and resources" -ForegroundColor White
Write-Host "- Proper .gitignore file" -ForegroundColor White
Write-Host ""
Write-Host "You can now:" -ForegroundColor Yellow
Write-Host "1. Visit your GitHub repository" -ForegroundColor White
Write-Host "2. Share the link with others" -ForegroundColor White
Write-Host "3. Clone it on other machines" -ForegroundColor White
Write-Host "4. Continue development" -ForegroundColor White
Write-Host ""
Read-Host "Press Enter to exit" 