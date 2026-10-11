# StudyTwin AI - GitHub Deployment for Siddhi-Chaturvedi
Write-Host "=======================================================" -ForegroundColor Cyan
Write-Host "    StudyTwin AI - GitHub Deployment for Siddhi        " -ForegroundColor Cyan
Write-Host "=======================================================" -ForegroundColor Cyan
Write-Host "Target: https://github.com/Siddhi-Chaturvedi/StudyTwin-AI.git`n" -ForegroundColor DarkCyan

if (-not (Get-Command git -ErrorAction SilentlyContinue)) {
    Write-Host "[ERROR] Git is not installed or not in PATH: https://git-scm.com/" -ForegroundColor Red
    pause
    exit 1
}

# 1. Initialize
Write-Host "[1/5] Checking Git repository initialization..." -ForegroundColor Yellow
if (-not (Test-Path ".git")) {
    git init
    git branch -M main
    Write-Host "Initialized repository on main branch." -ForegroundColor Green
} else {
    git branch -M main
}

# 2. Stage
Write-Host "`n[2/5] Staging files..." -ForegroundColor Yellow
git add .

# 3. Commit
Write-Host "`n[3/5] Creating commit..." -ForegroundColor Yellow
git commit -m "Initial release: StudyTwin AI - Multimodal AI Professor & Adaptive Learning Twin"

# 4. Set Remote
$repoUrl = "https://github.com/Siddhi-Chaturvedi/StudyTwin-AI.git"
Write-Host "`n[4/5] Setting remote origin to $repoUrl..." -ForegroundColor Yellow
$origin = git remote get-url origin 2>$null
if (-not $origin) {
    git remote add origin $repoUrl
} else {
    git remote set-url origin $repoUrl
}

# 5. Push
Write-Host "`n[5/5] Pushing to GitHub main branch..." -ForegroundColor Yellow
git push -u origin main

if ($LASTEXITCODE -eq 0) {
    Write-Host "`n=======================================================" -ForegroundColor Green
    Write-Host " SUCCESS! Deployed to https://github.com/Siddhi-Chaturvedi/StudyTwin-AI" -ForegroundColor Green
    Write-Host "=======================================================" -ForegroundColor Green
} else {
    Write-Host "`nMake sure the repo 'StudyTwin-AI' is created at https://github.com/new and you are authenticated." -ForegroundColor Yellow
}
