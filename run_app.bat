@echo off
title StudyTwin AI - Unified Launcher
echo ======================================================================
echo          STARTING STUDYTWIN AI (BACKEND + FRONTEND)
echo ======================================================================
echo.

echo [1/2] Starting FastAPI Backend on http://127.0.0.1:8000 ...
start "StudyTwin AI - Backend (FastAPI)" cmd /k "cd /d %~dp0backend && pip install -r requirements.txt && python -m uvicorn app.main:app --reload --host 127.0.0.1 --port 8000"

echo [2/2] Starting Next.js Frontend on http://localhost:3000 ...
start "StudyTwin AI - Frontend (Next.js)" cmd /k "cd /d %~dp0frontend && npm install && npm run dev"

echo.
echo ======================================================================
echo Both servers are launching!
echo Backend API Docs: http://127.0.0.1:8000/docs
echo Web Application:  http://localhost:3000
echo ======================================================================
pause
