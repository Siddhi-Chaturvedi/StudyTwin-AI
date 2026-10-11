# 🚀 StudyTwin AI — Your Course-Aware Multimodal AI Professor & Adaptive Learning Twin

[![Category](https://img.shields.io/badge/Platform-Adaptive%20Multimodal%20Learning%20Twin-blue)](https://github.com/Siddhi-Chaturvedi/StudyTwin-AI)
[![Built with FastAPI](https://img.shields.io/badge/Backend-FastAPI%20Python-009688.svg)](https://fastapi.tiangolo.com)
[![Built with Next.js](https://img.shields.io/badge/Frontend-Next.js%2014%20React%20Tailwind-black.svg)](https://nextjs.org)
[![Evaluation](https://img.shields.io/badge/RAGAS%20Faithfulness-0.942-emerald.svg)](docs/BENCHMARK_REPORT.md)
[![Citation Accuracy](https://img.shields.io/badge/Citation%20Accuracy-95.8%25-blue.svg)](docs/BENCHMARK_REPORT.md)

> **One-Line Pitch:** An intelligent multimodal study companion that unifies lecture videos, textbooks, and slide decks into a source-cited Course Knowledge Graph, mathematically models the learner's knowledge state via Bayesian Knowledge Tracing (BKT), and dynamically teaches and tests until weak concepts improve.

---



---

## 📐 System Architecture

```
                    ┌──────────────────────────────────────────────────────────────┐
                    │               STUDYTWIN AI UNIFIED ARCHITECTURE              │
                    └──────────────────────────────┬───────────────────────────────┘
                                                   │
                ┌──────────────────────────────────┴──────────────────────────────────┐
                ▼                                                                     ▼
    ┌──────────────────────────┐                                          ┌──────────────────────────┐
    │       COURSE MODEL       │                                          │      LEARNER MODEL       │
    ├──────────────────────────┤                                          ├──────────────────────────┤
    │ • Multimodal Ingestion   │                                          │ • Bayesian Knowledge     │
    │   (Video, PDF, PPTX)     │                                          │   Tracing (BKT)          │
    │ • Topic & Concept Tree   │                                          │ • Misconception Tracker  │
    │ • Prerequisite DAG       │                                          │ • Ebbinghaus Retention   │
    │ • Exact Page/Slide/Time  │                                          │ • Diagnostic Cold-Start  │
    │   Source Citations       │                                          │ • Student Simulations    │
    └───────────┬──────────────┘                                          └────────────┬─────────────┘
                │                                                                      │
                └──────────────────────────────────┬───────────────────────────────────┘
                                                   │
                                                   ▼
                ┌─────────────────────────────────────────────────────────────────────┐
                │                       ADAPTIVE AGENTIC CORE                         │
                ├─────────────────────────────────────────────────────────────────────┤
                │ • Socratic Tutor (Mastery-tuned: Intuition → Algorithm → Edge case) │
                │ • "Teach Me Until I Get It" Multi-turn Socratic Loop                │
                │ • Strict Source Refusal & Hallucination Guardrail                   │
                │ • Dual-Stage Verified Quiz Generator with AST Math Checker          │
                │ • Embedding-based Question Deduplication Engine (Novelty > 95%)     │
                │ • Benchmarking Lab (RAGAS / DeepEval metric reporting)              │
                └──────────────────────────────────┬──────────────────────────────────┘
                                                   │
                                                   ▼
                ┌─────────────────────────────────────────────────────────────────────┐
                │                      FULL-STACK PRODUCTION UI                       │
                │  Next.js + Tailwind + Lucide + Recharts + Interactive Graph +       │
                │  Video Player with Timestamp Jump + PDF/Slide Viewer + Audio/Hindi  │
                └─────────────────────────────────────────────────────────────────────┘
```

---

## 🚀 Quickstart Guide

### 1. Prerequisites
- Python 3.9+
- Node.js 18+ and npm

### 2. Backend Setup (FastAPI)
```bash
# Navigate to backend directory
cd backend

# Install dependencies
pip install -r requirements.txt

# Run the FastAPI server
uvicorn app.main:app --reload --host 0.0.0.0 --port 8000
```
*API Server will run at `http://127.0.0.1:8000` with interactive Swagger docs at `http://127.0.0.1:8000/docs`.*

### 3. Frontend Setup (Next.js 14)
```bash
# Navigate to frontend directory
cd frontend

# Install dependencies
npm install

# Start development server
npm run dev
```


