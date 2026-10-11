@echo off
setlocal enabledelayedexpansion

echo =======================================================
echo     StudyTwin AI - GitHub Deployment for Siddhi
echo =======================================================
echo Target: https://github.com/Siddhi-Chaturvedi/StudyTwin-AI.git
echo.

where git >nul 2>nul
if %errorlevel% neq 0 (
    echo [ERROR] Git is not installed or not found in PATH!
    pause
    exit /b 1
)

echo [1/6] Initializing Git repository...
if not exist ".git" (
    git init
    git branch -M main
) else (
    git branch -M main
)

echo.
echo [2/6] Configuring Git Author Identity...
git config user.name "Siddhi Chaturvedi"
git config user.email "siddhi.chaturvedi@users.noreply.github.com"

echo.
echo [3/6] Staging all files...
git add -A

echo.
echo [4/6] Creating initial commit...
git commit -m "Initial release: StudyTwin AI - Multimodal AI Professor & Adaptive Learning Twin"

echo.
echo [5/6] Setting remote repository origin...
set DEFAULT_REPO=https://github.com/Siddhi-Chaturvedi/StudyTwin-AI.git
git remote get-url origin >nul 2>nul
if %errorlevel% neq 0 (
    echo Setting origin to: !DEFAULT_REPO!
    git remote add origin !DEFAULT_REPO!
) else (
    echo Updating origin to: !DEFAULT_REPO!
    git remote set-url origin !DEFAULT_REPO!
)

echo.
echo [6/6] Pushing to GitHub main branch...
git push -u origin main

if %errorlevel% equ 0 (
    echo.
    echo =======================================================
    echo  SUCCESS! Deployed to https://github.com/Siddhi-Chaturvedi/StudyTwin-AI
    echo =======================================================
) else (
    echo.
    echo Push completed or needs authentication check.
)

echo.
exit /b %errorlevel%
