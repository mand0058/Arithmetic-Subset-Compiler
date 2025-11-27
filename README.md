# Arithmetic-Subset-Compiler
Arithmetic subset compiler that performs tokenization and syntax validation using Lex/Flex and K Framework. Includes automation script and sample test programs.
# Arithmetic Subset Compiler

A simplified compiler designed to analyze and validate arithmetic expressions.  
This project performs lexical and syntax analysis using **Lex/Flex** and **K Framework**, built as part of an academic team assignment.

---

## ✨ Features
- Tokenizes arithmetic expressions and identifiers
- Validates syntax using custom grammar rules
- Detects lexical & syntactic errors
- Supports operator precedence using parentheses
- Extendable structure for future language enhancements

---

## 📂 Project Structure
| File/Folder | Description |
|------------|-------------|
| `lexer.l` | Contains lexical rules for token generation |
| `myLang.k` | Grammar and operational semantics using K Framework |
| `automation.ps1` | PowerShell script for automated build & execution |
| `test/` | Sample input programs for testing |
| `README.md` | Project documentation |

---

## 🛠️ Technologies Used
- **Lex / Flex** — Lexical analysis
- **K Framework** — Parser + semantics
- **PowerShell** — Compiler automation
- Compatible with **Windows** and **Linux**

---

## ⚙️ Installation & Requirements
Ensure the following tools are installed:

| Tool | Purpose |
|------|---------|
| Flex / Lex | Generate lexer |
| K Framework | Execute and validate grammar |
| PowerShell (or pwsh) | Automated build script |

---

## 🚀 How to Build & Run

### Step 1 — Run Automation Script
```sh
pwsh automation.ps1
