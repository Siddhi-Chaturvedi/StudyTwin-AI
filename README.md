# 🚀 StudyTwin AI — Your Course-Aware Multimodal AI Professor & Adaptive Learning Twin

[![Category](https://img.shields.io/badge/Platform-Adaptive%20Multimodal%20Learning%20Twin-blue)](https://github.com/Siddhi-Chaturvedi/StudyTwin-AI)
[![Built with FastAPI](https://img.shields.io/badge/Backend-FastAPI%20Python-009688.svg)](https://fastapi.tiangolo.com)
[![Built with Next.js](https://img.shields.io/badge/Frontend-Next.js%2014%20React%20Tailwind-black.svg)](https://nextjs.org)
[![Evaluation](https://img.shields.io/badge/RAGAS%20Faithfulness-0.942-emerald.svg)](docs/BENCHMARK_REPORT.md)
[![Citation Accuracy](https://img.shields.io/badge/Citation%20Accuracy-95.8%25-blue.svg)](docs/BENCHMARK_REPORT.md)

> **One-Line Pitch:** An intelligent multimodal study companion that unifies lecture videos, textbooks, and slide decks into a source-cited Course Knowledge Graph, mathematically models the learner's knowledge state via Bayesian Knowledge Tracing (BKT), and dynamically teaches and tests until weak concepts improve.

---

## 🌟 Hackathon Rubric Alignment

| Evaluation Criteria | Weight | How StudyTwin AI Dominates This Requirement |
| :--- | :---: | :--- |
| **Knowledge Base & Grounding** | **20%** | Ingests Lecture Videos with Whisper timestamps (`00:14:22`), Textbooks with page # and diagram OCR (p.143), and Slides (Slide #18). Every claim contains clickable citation cards that jump directly to exact timestamps/pages. Strict Source Guard refuses out-of-domain queries. |
| **Assessment Quality** | **15%** | Dual-stage question validation with Python AST formula verification for numerical problems. Embedding-based deduplication ensures $>95\%$ question novelty. Detailed post-assessment diagnostic reports with "Why Am I Wrong?" misconception analysis. |
| **Personalization Effectiveness** | **20%** | Full Corbett-Anderson Bayesian Knowledge Tracing (BKT) tracking $P(L_t)$, Ebbinghaus forgetting curves, and diagnosed misconceptions. Multi-session simulation engine demonstrating $+43\%$ mastery gains across student archetypes. |
| **User Experience & Demo Video** | **15%** | Production-ready glassmorphic Cyberpunk-Academic UI in Next.js + Tailwind. Interactive SVG Course Prerequisite Graph, Timestamped Video Player modal, 3D Leitner Spaced Flashcards, Exam Study Planner, and English/Hindi ("Hinglish") conceptual breakdowns. |
| **System Evaluation** | **15%** | Integrated RAGAS / DeepEval-style 100-question automated benchmark suite reporting Faithfulness ($0.942$), Answer Relevancy ($0.931$), Context Precision ($0.915$), Context Recall ($0.887$), and Citation Accuracy ($95.8\%$). |
| **Technical Implementation** | **15%** | Clean, decoupled FastAPI Python backend + Next.js App Router frontend with complete TypeScript interfaces, robust offline fallbacks, and comprehensive unit test coverage. |

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
*Open `http://localhost:3000` in your browser to interact with StudyTwin AI.*

---

## 📚 Project Documentation Links
- [System Architecture & Specifications](docs/ARCHITECTURE.md)
- [Bayesian Knowledge Tracing (BKT) Mathematical Formulations](docs/LEARNER_MODEL.md)
- [Empirical Benchmark & Evaluation Report](docs/BENCHMARK_REPORT.md)
- [5-Minute Demo Video Recording Script](docs/DEMO_VIDEO_SCRIPT.md)
