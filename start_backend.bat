@echo off
title StudyTwin AI - Backend
echo Starting FastAPI Backend Server on http://127.0.0.1:8000 ...
cd /d %~dp0backend
pip install -r requirements.txt
python -m uvicorn app.main:app --reload --host 127.0.0.1 --port 8000
pause
