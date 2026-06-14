<p align="center">
  <img src="https://img.shields.io/badge/CyWallearn-Hacker_Bootcamp-00d4ff?style=for-the-badge" alt="CyWallearn"/>
  <img src="https://img.shields.io/badge/Platform-Termux%20|%20Kali%20Linux-ff4444?style=for-the-badge" alt="Platform"/>
  <img src="https://img.shields.io/badge/License-Educational%20Use-yellow?style=for-the-badge" alt="License"/>
</p>

<h1 align="center">🎯 CyWallearn Hacker Bootcamp — Entry Assessment Test</h1>
<p align="center"><strong>20 Progressive Questions • 5 Rank Tiers • Terminal-Based • No Internet Required</strong></p>

---

## 📋 Table of Contents

- [Overview](#overview)
- [Skill Tiers & Ranks](#-skill-tiers--ranks)
- [Requirements](#-requirements)
- [Installation](#-installation)
  - [For Kali Linux](#for-kali-linux)
  - [For Termux (Android)](#for-termux-android)
- [How to Run the Test](#-how-to-run-the-test)
- [Test Structure](#-test-structure)
- [Results & Scoring](#-results--scoring)
- [FAQ](#-faq)
- [Support](#-support)

---

## 📖 Overview

The **CyWallearn Hacker Bootcamp Entry Assessment** is a terminal-based diagnostic test designed to evaluate a student's current cybersecurity knowledge level — from absolute beginner to expert. The test runs entirely in the terminal with **no internet connection required** after download.

After completing 20 progressively challenging MCQ questions, students receive:

- ✅ A **numerical score** (X/20)
- ✅ A **percentage grade**
- ✅ A **rank title** (5 tiers)
- ✅ A **personalized description** of their level
- ✅ **Curated next steps** for the bootcamp curriculum
- ✅ A **saved text file** with all results for record-keeping

> 📸 **Students must screenshot their result screen and send it to their mentor.**

---

## 🏅 Skill Tiers & Ranks

| Level | Score Range | Rank Name | Description |
|:-----:|:-----------:|:----------|:------------|
| 🌱 1 | 0–20% | **Digital Seedling** | Absolute beginner — starting the journey |
| 🛡️ 2 | 21–40% | **Protocol Novice** | Basic understanding of Linux & networking |
| ⚔️ 3 | 41–60% | **Shell Warrior** | Solid intermediate grasp of core concepts |
| 🔥 4 | 61–80% | **Cyber Phantom** | Advanced thinker with strong potential |
| 👑 5 | 81–100% | **Elite Hacker** | Expert-level understanding — rare talent |

---

## 💻 Requirements

| Platform | Requirements |
|:---------|:-------------|
| **Kali Linux** | `bash` (pre-installed), `coreutils` (pre-installed) |
| **Termux** | `bash`, `coreutils` (install via pkg) |
| **Any Linux** | `bash` 4.0+ |
| **macOS** | Terminal.app (`bash` pre-installed) |

---

## ⚡ Installation

### For Kali Linux

```bash
# 1. Clone the repository
git clone https://github.com/YOUR_USERNAME/cywallearn-test.git
cd cywallearn-test

# 2. Run the installer (optional, auto-detects environment)
chmod +x setup.sh
bash setup.sh

# 3. Run the test
./cywallearn_test.sh
