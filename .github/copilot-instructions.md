# Copilot Instructions for AI Coding Agents

Welcome to the PowerShell Advanced Tooling Workshop codebase! This repository contains comprehensive PowerShell examples and demonstrations for elevating legacy PowerShell knowledge to modern practices.

## 1. Project Overview
- **Purpose:** Educational workshop materials for PowerShell Advanced Tooling - transforming legacy PowerShell approaches into modern, efficient practices
- **Major Components:** 
  - Core concept demonstrations (cmdlets, pipeline, objects)
  - Advanced examples (functions, modules, error handling)
  - Real-world scenarios and best practices
  - Workshop exercises and solutions
- **Architecture:** Organized learning modules with progressive complexity, from basic cmdlets to advanced scripting patterns

## 2. Developer Workflows
- **Build:** No build process required - PowerShell scripts run directly
- **Test:** Use Pester framework for unit testing PowerShell functions and modules
- **Debug:** Use PowerShell ISE or VS Code with PowerShell extension for debugging
- **Workshop Delivery:** Each module includes runnable examples with detailed comments
- **Demo Execution:** Scripts are designed to be run incrementally during presentations

## 3. Project-Specific Conventions
- **File/Folder Structure:** 
  - `/Examples/` - Core concept demonstrations
  - `/Advanced/` - Complex scenarios and patterns  
  - `/Workshop/` - Interactive exercises
  - `/Solutions/` - Complete example solutions
- **Naming Patterns:** 
  - Files: `01-Cmdlets-Basics.ps1`, `02-Pipeline-Examples.ps1`
  - Functions: Use approved PowerShell verbs (Get-, Set-, New-, etc.)
- **Code Style:** 
  - Extensive inline comments for learning
  - Progressive complexity within each file
  - Real-world applicable examples
- **Comments/Docs:** Every code block includes purpose, syntax explanation, and output examples

## 4. Integration Points & Dependencies
- **External Services/APIs:** Examples may demonstrate REST API calls, file system operations, Windows services
- **Key Dependencies:** 
  - PowerShell 5.1+ (Windows PowerShell)
  - PowerShell 7+ (PowerShell Core) for cross-platform examples
  - Common modules: ImportExcel, PSReadLine, Pester
- **Configuration:** Execution policy considerations documented in each script

## 5. Examples & References
- Start with `/Examples/01-Cmdlets-Basics.ps1` for fundamental concepts
- Progress through numbered examples for structured learning
- Each script is self-contained but builds on previous concepts
- Workshop participants can run examples interactively 

---

**Maintainers:** Please keep this file up to date as the codebase evolves. AI agents will use this as their primary onboarding resource.
