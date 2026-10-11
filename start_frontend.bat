@echo off
title StudyTwin AI - Frontend
echo Starting Next.js Frontend Server on http://localhost:3000 ...
cd /d %~dp0frontend
npm install && npm run dev
pause
