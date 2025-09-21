# 📘 Bank Account – Incubyte TDD Assessment  

This project is a **Bank Account system** implemented in **Flutter/Dart**, built using the principles of **Test-Driven Development (TDD)**.  
It demonstrates not only coding skills but also a disciplined approach to **evolving software step-by-step** through **tests and commits**.  

---

## 🎯 Problem Statement  

Build a simple **Bank Account** domain model with the following features:  

- New account starts with zero balance.  
- Deposit money into account.  
- Withdraw money (cannot overdraft).  
- Transfer money between accounts.  
- Display account balance in a Flutter widget.  
- Write both **unit tests** (for business logic) and **widget tests** (for UI).  

The goal is to **showcase TDD discipline** rather than build a large app.   

---

## 🚦 TDD Workflow Followed  

This repo strictly follows the **Red → Green → Refactor** cycle of TDD.  

1. **Red** – Write a failing test for the next behavior.  
2. **Green** – Write the minimum code to make the test pass.  
3. **Refactor** – Clean up code while keeping tests green.  

Every commit in this repo represents one clear step in this cycle.  

---

## 📜 Commit History (Step by Step)  

Each commit represents **evolution of the solution** in baby steps.  

| Step | Commit Message | Description | State |
|------|----------------|-------------|-------|
| 1 | `chore: initial Flutter project setup for Incubyte TDD assessment` | Fresh Flutter project created | ✅ |
| 2 | `test: add failing test for new account starting with 0 balance` | First RED commit (test fails) | 🔴 |
| 3 | `feat: add BankAccount with initial balance = 0` | Implemented balance getter | 🟢 |
| 4 | `test: add failing test for deposit` | Wrote test for deposit | 🔴 |
| 5 | `feat: implement deposit with validation` | Added deposit logic | 🟢 |
| 6 | `test: add failing test for withdraw` | Wrote test for withdraw | 🔴 |
| 7 | `feat: implement withdraw with overdraft protection` | Added withdraw logic | 🟢 |
| 8 | `test: add failing test for transfer between accounts` | Wrote test for transfers | 🔴 |
| 9 | `feat: add transfer between accounts` | Implemented transfer logic | 🟢 |
| 10 | `feat: implement AccountSummaryWidget to display balance` | Added simple UI widget | 🟢 |
| 11 | `docs: add project README with instructions` | Added detailed documentation | 📝 |

---

## 📂 Project Structure  
incubyte_tdd/
│
├── lib/
│ ├── bank_account.dart # Core domain logic
│ └── account_summary_widget.dart # Simple UI to display account balance
│
├── test/
│ ├── bank_account_test.dart # Unit tests (deposit, withdraw, transfer)
│ └── account_summary_widget_test.dart # Widget test for balance display
│
├── pubspec.yaml # Dependencies
└── README.md # You are here!

## 🚀 How This Shows TDD Discipline
Each feature was introduced by writing a failing test first.
Code was only written to make the failing test pass.
Frequent, small commits capture the incremental nature of TDD.
Repo reflects real-world engineering practices (unit + widget tests, CI ready).

## 🏆 Why This Repo Stands Out
Not just a “kata” — a realistic Bank Account domain.
Demonstrates both business logic and Flutter widget testing.
Rich commit history highlights TDD journey.
Shows professionalism with documentation & optional CI.