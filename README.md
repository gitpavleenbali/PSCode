# 🚀 PowerShell Azure Cloud Automation Mastery

> **From Novice to Expert: Complete PowerShell & Azure Integration Training Series**

[![PowerShell](https://img.shields.io/badge/PowerShell-5.1%2B-blue?logo=powershell)](https://www.microsoft.com/en-us/powershell)
[![Azure](https://img.shields.io/badge/Azure-Cloud-0078D4?logo=microsoft-azure)](https://azure.microsoft.com)
[![License](https://img.shields.io/badge/License-MIT-green)]()
[![Status](https://img.shields.io/badge/Status-Active-brightgreen)]()

---

## 📋 Table of Contents

- [Overview](#overview)
- [Repository Structure](#repository-structure)
- [Module Roadmap](#module-roadmap)
- [Quick Start](#quick-start)
- [Module Details](#module-details)
- [Prerequisites](#prerequisites)
- [Getting Started](#getting-started)
- [Best Practices](#best-practices)
- [Real-World Scenarios](#real-world-scenarios)
- [Support & Contributions](#support--contributions)

---

## 🎯 Overview

**PSCode** is a comprehensive, hands-on training series designed to transform PowerShell users into Azure Cloud automation experts. This repository contains **8 progressive modules** covering everything from foundational PowerShell concepts to advanced concurrent execution patterns for enterprise-scale Azure operations.

### 🎓 What You'll Master

- ✅ PowerShell fundamentals and advanced scripting
- ✅ Azure Resource Manager (ARM) integration
- ✅ Parameter handling and configuration management
- ✅ Object-oriented PowerShell with custom classes
- ✅ Robust error handling and debugging strategies
- ✅ Git integration for version control automation
- ✅ Concurrent execution with runspaces and thread pooling
- ✅ Real-world Azure automation workflows

### 💡 Who This Is For

- 🔧 **System Administrators** scaling Azure operations
- 👨‍💻 **DevOps Engineers** automating infrastructure
- 🏢 **Cloud Architects** designing automation workflows
- 📚 **PowerShell Learners** seeking structured progression
- 🎯 **Azure Engineers** optimizing cloud deployments

---

## 📁 Repository Structure

```
PSCode/
├── README.md                                    # This file
├── 01_knowledge_refresh/
│   └── Azure-Cloud-Analyzer.ps1                # Fundamentals & Azure basics
├── 02_advanced_functions/
│   └── Azure-Resource-Manager.ps1              # Function architecture & reusability
├── 03_mastering_parameters/
│   └── Azure-Parameter-Mastery.ps1             # Parameter handling & validation
├── 04_powershell_classes/
│   └── Azure-Classes-Training.ps1              # OOP with PowerShell classes
├── 05_error_handling/
│   └── Azure-Error-Handling-Training.ps1       # Try/catch/finally patterns
├── 06_debugging/
│   └── Azure-Debugging-Lab.ps1                 # Debugging tools & techniques
├── 07_git_integration/
│   └── Azure-Git-Training.ps1                  # Git automation & workflows
├── 08_runspaces/
│   ├── Azure-Runspaces-Masterclass.ps1         # Parallelism & concurrency
│   ├── log_unsafe.txt                          # Demo: Unsafe concurrent writes
│   └── log_safe_mutex.txt                      # Demo: Mutex-protected writes
└── .gitignore                                  # Git configuration
```

---

## 🗺️ Module Roadmap

```
┌─────────────────────────────────────────────────────────────────┐
│                    POWERSHELL MASTERY PATH                      │
└─────────────────────────────────────────────────────────────────┘

  [01] KNOWLEDGE REFRESH              [Beginner]     ⏱️  30-45 min
   └─→ Azure fundamentals, Get-Help, scripting basics
       
  [02] ADVANCED FUNCTIONS             [Beginner+]    ⏱️  45-60 min
   └─→ Function architecture, parameters, reusability
       
  [03] MASTERING PARAMETERS           [Intermediate] ⏱️  60-75 min
   └─→ Parameter validation, binding, advanced syntax
       
  [04] POWERSHELL CLASSES             [Intermediate] ⏱️  60-90 min
   └─→ OOP concepts, custom types, inheritance
       
  [05] ERROR HANDLING                 [Intermediate] ⏱️  45-60 min
   └─→ Try/catch/finally, error records, recovery
       
  [06] DEBUGGING                      [Intermediate+] ⏱️  60-75 min
   └─→ Breakpoints, ISE/VSCode debugger, tracing
       
  [07] GIT INTEGRATION                [Advanced]     ⏱️  90+ min
   └─→ Version control, automation, workflows
       
  [08] RUNSPACES & PARALLELISM        [Advanced]     ⏱️  90-120 min
   └─→ Concurrent execution, thread safety, performance

                         ⬇️ TOTAL: ~10-14 HOURS ⬇️
                   Complete mastery of PowerShell
                   and Azure automation workflows
```

---

## 🚀 Quick Start

### 1️⃣ Clone the Repository
```powershell
git clone https://github.com/gitpavleenbali/PSCode.git
cd PSCode
```

### 2️⃣ Start with Module 01
```powershell
cd 01_knowledge_refresh
.\Azure-Cloud-Analyzer.ps1
```

### 3️⃣ Follow the Interactive Flow
- Each module has **pause points** for reflection
- Read output carefully to understand concepts
- Modify code and re-run to experiment

### 4️⃣ Progress Through Modules Sequentially
```powershell
# From PSCode root folder:
.\01_knowledge_refresh\Azure-Cloud-Analyzer.ps1
.\02_advanced_functions\Azure-Resource-Manager.ps1
.\03_mastering_parameters\Azure-Parameter-Mastery.ps1
# Continue through all 8 modules...
```

---

## 📚 Module Details

### **Module 01: Knowledge Refresh** 🔄
**Goal:** Establish PowerShell fundamentals and Azure context awareness

**What You'll Learn:**
- PowerShell script structure and best practices
- Azure PowerShell module basics
- Common Get-Help patterns
- Script signing and execution policies
- Azure context and subscription management

**Key Concepts:**
- `Get-Help` for self-service learning
- `Select-Object` for data manipulation
- `Where-Object` for filtering
- Azure context switching

**Real-World Application:**
- Quick Azure resource audits
- Environment discovery scripts
- Credential management setup

**Time:** 30-45 minutes | **Difficulty:** ⭐ Beginner

---

### **Module 02: Advanced Functions** 🔧
**Goal:** Master function design for enterprise reusability

**What You'll Learn:**
- Function structure and documentation (comment-based help)
- Parameter definition and validation
- Return value patterns
- Pipeline support and filtering
- Scope and variable lifetime

**Key Concepts:**
- `[CmdletBinding()]` attribute
- `[Parameter()]` attributes
- `pipeline` input patterns
- Output object design

**Real-World Application:**
- Reusable Azure resource management functions
- Function libraries for team sharing
- Standardized error handling patterns

**Time:** 45-60 minutes | **Difficulty:** ⭐⭐ Beginner+

---

### **Module 03: Mastering Parameters** 🎛️
**Goal:** Handle complex parameter scenarios like production PowerShell cmdlets

**What You'll Learn:**
- Parameter validation attributes
- Dynamic parameters
- Parameter sets for flexible interfaces
- Binding process and pipeline binding
- Advanced parameter conversion

**Key Concepts:**
- `[ValidateScript()]` for custom validation
- `[ParameterAttribute]` for advanced binding
- Parameter sets for conditional parameters
- Mandatory vs optional parameters
- Default values and aliases

**Real-World Application:**
- Flexible Azure deployment scripts
- Configuration management scripts
- User-friendly CLI tools

**Time:** 60-75 minutes | **Difficulty:** ⭐⭐ Intermediate

---

### **Module 04: PowerShell Classes** 🏗️
**Goal:** Design object-oriented solutions with custom PowerShell classes

**What You'll Learn:**
- Class definition and inheritance
- Properties and methods
- Constructors and validation
- Static members
- Encapsulation patterns

**Key Concepts:**
- `class` keyword (PS 5.0+)
- Property attributes and backing fields
- Method overloading
- Custom type serialization
- Integration with existing PowerShell

**Real-World Application:**
- Azure resource models and wrappers
- Custom configuration objects
- Type-safe automation solutions
- Cross-module object contracts

**Time:** 60-90 minutes | **Difficulty:** ⭐⭐ Intermediate

---

### **Module 05: Error Handling** ⚠️
**Goal:** Build resilient scripts with comprehensive error management

**What You'll Learn:**
- Try/catch/finally block structure
- Error records and analysis
- Trap statements
- Error action preferences
- Custom error handling strategies

**Key Concepts:**
- `$ErrorActionPreference` control
- Error stream vs output stream
- Terminating vs non-terminating errors
- Error recovery patterns
- Logging and alerting

**Real-World Application:**
- Production-grade Azure scripts
- Automated remediation workflows
- Error reporting and monitoring
- Transaction-like patterns

**Time:** 45-60 minutes | **Difficulty:** ⭐⭐ Intermediate

---

### **Module 06: Debugging** 🐛
**Goal:** Master debugging techniques for efficient problem-solving

**What You'll Learn:**
- Debugging in PowerShell ISE
- Debugging in Visual Studio Code
- Breakpoint types and conditions
- Call stack navigation
- Variable inspection and watches
- Trace execution

**Key Concepts:**
- `Set-PSBreakpoint` for script debugging
- `$PSDebugContext` analysis
- Watch expressions
- Step-in, step-over, step-out navigation
- Remote debugging

**Real-World Application:**
- Complex script troubleshooting
- Performance profiling
- Multi-script workflow debugging
- Production issue diagnosis

**Time:** 60-75 minutes | **Difficulty:** ⭐⭐ Intermediate+

---

### **Module 07: Git Integration** 🔐
**Goal:** Automate version control and enhance workflow efficiency

**What You'll Learn:**
- Git command automation from PowerShell
- Repository status monitoring
- Automated commit workflows
- Branch management automation
- Webhook integration
- CI/CD pipeline integration

**Key Concepts:**
- Git command execution
- Repository parsing and analysis
- Commit message templates
- Pre/post-commit hooks
- Release automation
- GitHub API integration

**Real-World Application:**
- Infrastructure-as-code version control
- Automated deployment pipelines
- Configuration drift detection
- Audit trail automation
- Team workflow automation

**Time:** 90+ minutes | **Difficulty:** ⭐⭐⭐ Advanced

---

### **Module 08: Runspaces & Parallelism** ⚡
**Goal:** Master concurrent execution for enterprise-scale operations

**What You'll Learn:**
- PowerShell runspace fundamentals
- Asynchronous execution patterns
- Thread safety and synchronization (Mutex)
- RunspacePool for resource management
- Stream inspection and debugging
- Performance optimization

**Key Concepts:**
- `[PowerShell]::Create()` for runspace creation
- `BeginInvoke()` and `EndInvoke()` for async patterns
- `System.Threading.Mutex` for thread-safe operations
- `InitialSessionState` for context injection
- RunspacePool thread pooling
- Runspace vs Jobs tradeoffs
- PowerShell 7 alternatives (ThreadJob, ForEach-Object -Parallel)

**Real-World Application:**
- Scan 100+ Azure subscriptions concurrently
- Parallel VM provisioning across regions
- Bulk SQL operations with connection pooling
- Log aggregation from multiple sources
- High-volume API calls with concurrency control
- Performance-critical Azure operations

**Demonstrations:**
- ✅ Synchronous vs asynchronous runspace execution
- ✅ Runspaces vs Jobs performance comparison
- ✅ Thread-safe logging with Mutex protection
- ✅ Variable and function injection into runspaces
- ✅ RunspacePool pattern for 1000+ concurrent tasks
- ✅ Stream inspection and active runspace enumeration
- ✅ Modern PowerShell 7 parallelism alternatives

**Time:** 90-120 minutes | **Difficulty:** ⭐⭐⭐ Advanced

---

### Prerequisites & Automatic Validation

Each module automatically checks for required dependencies and provides helpful installation instructions if anything is missing:

```powershell
[CHECK] Verifying Azure PowerShell module...
[SUCCESS] Azure PowerShell module found!
```

If the Azure module is not installed, you'll see:

```powershell
[CHECK] Verifying Azure PowerShell module...

╔════════════════════════════════════════════════════════════════════════════════╗
║                      AZURE MODULE NOT INSTALLED                               ║
╚════════════════════════════════════════════════════════════════════════════════╝

The Azure PowerShell module (Az) is required to run this training series.

To install the Azure module, run this command in PowerShell (as Administrator):

    Install-Module -Name Az -Repository PSGallery -Force -AllowClobber

After installation completes, run this script again.
```

**All modules automatically validate prerequisites before starting**, so you'll never waste time on setup errors!

---

### System Requirements
- **Windows PowerShell 5.1+** or **PowerShell 7.x**
- **Windows 10/11** or **Windows Server 2016+**
- **.NET Framework 4.5+** (or .NET 6+ for PS 7)

### Software Installation
```powershell
# Install PowerShell 7 (recommended)
winget install Microsoft.PowerShell

# Install Git (for Module 07)
winget install Git.Git

# Install Azure PowerShell Module (optional but recommended)
Install-Module -Name Az -Repository PSGallery -Force
```

### Permissions Required
- ✅ Local admin access (or at minimum: script execution rights)
- ✅ Visual Studio Code (optional, recommended for debugging)
- ✅ Git client configured with credentials

### Verify Setup
```powershell
# Check PowerShell version
$PSVersionTable.PSVersion

# Check Az module (if needed)
Get-Module -Name Az -ListAvailable

# Verify git
git --version
```

---

## 🎯 Getting Started

### Step 1: Prepare Your Environment
```powershell
# Set execution policy to allow script running
Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser -Force

# Create a workspace
$workspace = "C:\PowerShell-Training"
mkdir $workspace
cd $workspace
```

### Step 2: Clone Repository
```powershell
git clone https://github.com/gitpavleenbali/PSCode.git
cd PSCode
```

### Step 3: Start Module 01
```powershell
cd 01_knowledge_refresh
.\Azure-Cloud-Analyzer.ps1

# Follow the interactive prompts
# Press Enter at [PAUSE] points to continue
```

### Step 4: Work Through Each Module
```powershell
# After completing Module 01
cd ../02_advanced_functions
.\Azure-Resource-Manager.ps1

# Continue with subsequent modules...
```

### Step 5: Document Your Learning
- ✏️ Take notes on key concepts
- 🔄 Modify demo code and observe changes
- 💾 Create your own scripts using learned patterns
- 🐙 Push to your own repository

---

## 💡 Best Practices

### ✅ DO
```powershell
# DO: Use error handling
try {
    # Azure operations
}
catch {
    Write-Error $_.Exception.Message
}
finally {
    # Cleanup
}

# DO: Use proper parameter validation
param(
    [Parameter(Mandatory=$true, ValueFromPipeline=$true)]
    [ValidateNotNullOrEmpty()]
    [string]$ResourceName
)

# DO: Use try/finally to dispose resources
$ps = [PowerShell]::Create()
try {
    # Use runspace
}
finally {
    $ps.Dispose()
}

# DO: Log operations with tags
Write-Host "[INFO] Operation started" -ForegroundColor Cyan
Write-Host "[SUCCESS] Operation completed" -ForegroundColor Green
Write-Host "[ERROR] Operation failed" -ForegroundColor Red
```

### ❌ DON'T
```powershell
# DON'T: Catch all exceptions silently
try { ... } catch { }

# DON'T: Use $? for error checking (use try/catch instead)
if ($?) { }

# DON'T: Leave resources undisposed
$ps = [PowerShell]::Create()
# Missing: $ps.Dispose()

# DON'T: Write concurrently to shared resources without Mutex
# File writes, database updates, etc. must be synchronized

# DON'T: Ignore pipeline errors
Get-AzResource | Set-AzTag -Tags @{} # Silent failures!
```

---

## 🏢 Real-World Scenarios

### Scenario 1: Multi-Region VM Deployment
**Module:** 04, 05, 08
```
Deploy VMs across 5 Azure regions concurrently
├─ Validate parameters (Module 03)
├─ Create Azure objects (Module 04)
├─ Use RunspacePool (Module 08)
├─ Handle errors gracefully (Module 05)
└─ Log results safely (Module 08 - Mutex)
```

### Scenario 2: Compliance Scanning
**Module:** 02, 03, 05, 08
```
Scan 100+ subscriptions for compliance violations
├─ Create reusable scan functions (Module 02)
├─ Accept flexible parameters (Module 03)
├─ Execute in parallel with RunspacePool (Module 08)
├─ Handle network failures (Module 05)
└─ Generate compliance reports (Module 04)
```

### Scenario 3: Automated Deployment Pipeline
**Module:** 02, 05, 06, 07
```
Build CI/CD pipeline with PowerShell
├─ Define deployment functions (Module 02)
├─ Add robust error handling (Module 05)
├─ Automate with Git (Module 07)
├─ Debug deployment issues (Module 06)
└─ Track changes in version control (Module 07)
```

### Scenario 4: Database Bulk Operations
**Module:** 05, 08
```
Process 50,000 database records across 10 SQL servers
├─ Use RunspacePool with connection pooling (Module 08)
├─ Thread-safe transaction logging (Module 08 - Mutex)
├─ Handle timeout/connection errors (Module 05)
└─ Monitor concurrent operation performance (Module 08)
```

### Scenario 5: Infrastructure Maintenance
**Module:** 02, 03, 07, 08
```
Hourly health checks across hybrid infrastructure
├─ Create modular check functions (Module 02)
├─ Accept configuration parameters (Module 03)
├─ Schedule with automation account (Module 07)
├─ Execute health checks in parallel (Module 08)
└─ Archive results to repository (Module 07)
```

---

## 🎓 Learning Path Recommendations

### For System Administrators
```
01 → 02 → 03 → 05 → 07 → 08
Focus: Resource management, error handling, automation
Time: ~8-10 hours
```

### For DevOps Engineers
```
01 → 02 → 03 → 04 → 05 → 06 → 07 → 08
Focus: Infrastructure as code, CI/CD, debugging
Time: ~14+ hours (complete path)
```

### For Cloud Architects
```
02 → 03 → 04 → 08
Focus: Scalable design, concurrent patterns
Time: ~6-8 hours
```

### For PowerShell Learners
```
01 → 02 → 03 → 04 → 05 → 06 → 07 → 08
Focus: Complete mastery
Time: ~14+ hours (complete path)
```

---

## 📊 Performance Benchmarks

From Module 08 demonstrations:

| Pattern | 5 Tasks | 100 Tasks | Resource Overhead |
|---------|---------|-----------|-------------------|
| Sequential | ~5s | ~100s | 1 process |
| Jobs | ~6s | ~120s | 500+ MB (each job) |
| Runspaces | ~2s | ~20s | ~50 MB (shared) |
| RunspacePool | ~2s | ~20s | Thread reuse |
| ThreadJob (PS7) | ~1.5s | ~15s | Lightweight |

**Takeaway:** RunspacePool and ThreadJob offer 5-10x performance improvement for concurrent workloads!

---

## 🤝 Support & Contributions

### Getting Help
- 📖 Review module comments and inline documentation
- 🔍 Check Azure PowerShell documentation: [docs.microsoft.com](https://docs.microsoft.com)
- 💬 Open an issue on the GitHub repository
- 📧 Contact the maintainers

### Contributing
```powershell
# 1. Fork the repository
git clone https://github.com/YOUR-USERNAME/PSCode.git
cd PSCode

# 2. Create feature branch
git checkout -b feature/your-feature

# 3. Make improvements
# - Add new modules
# - Enhance existing code
# - Fix bugs
# - Improve documentation

# 4. Commit with clear messages
git commit -m "[Module XX] Description of changes"

# 5. Push and create Pull Request
git push origin feature/your-feature
```

### Code Standards
- ✅ Use consistent formatting (4-space indentation)
- ✅ Add comment-based help for functions
- ✅ Include error handling (try/catch/finally)
- ✅ Tag demonstrations with `[DEMO X]`, `[CONCEPT X]`
- ✅ Use consistent color coding in output
- ✅ Include pause points for interactive learning

---

## 📝 Module Checklist

Track your progress through all modules:

- [ ] **Module 01** - Knowledge Refresh ⏱️ 30-45 min
- [ ] **Module 02** - Advanced Functions ⏱️ 45-60 min
- [ ] **Module 03** - Mastering Parameters ⏱️ 60-75 min
- [ ] **Module 04** - PowerShell Classes ⏱️ 60-90 min
- [ ] **Module 05** - Error Handling ⏱️ 45-60 min
- [ ] **Module 06** - Debugging ⏱️ 60-75 min
- [ ] **Module 07** - Git Integration ⏱️ 90+ min
- [ ] **Module 08** - Runspaces & Parallelism ⏱️ 90-120 min

---

## 🎉 Congratulations!

Completing all 8 modules means you've mastered:

✅ PowerShell fundamentals and advanced scripting  
✅ Azure resource management and automation  
✅ Error handling and debugging  
✅ Object-oriented programming in PowerShell  
✅ Version control and CI/CD integration  
✅ Concurrent execution and performance optimization  

**You're now equipped to build enterprise-scale Azure automation solutions!**

---

## 📄 License

This repository is licensed under the **MIT License** - feel free to use it for learning, teaching, and commercial projects.

---

## 🙏 Acknowledgments

Built with ❤️ for the PowerShell and Azure communities.

**Created for:** Cloud Solution Architects, DevOps Engineers, and PowerShell Enthusiasts  
**Repository:** [gitpavleenbali/PSCode](https://github.com/gitpavleenbali/PSCode)

---

## 📞 Contact & Resources

- 🐙 **GitHub:** [@gitpavleenbali](https://github.com/gitpavleenbali)
- 📚 **PowerShell Docs:** [learn.microsoft.com/powershell](https://learn.microsoft.com/powershell)
- ☁️ **Azure Docs:** [learn.microsoft.com/azure](https://learn.microsoft.com/azure)
- 🎓 **Community:** [PowerShell.org](https://powershell.org)

---

<div align="center">

**Happy Learning! 🚀**

*Transform your PowerShell skills and master Azure automation at scale.*

[⬆ Back to Top](#-powershell-azure-cloud-automation-mastery)

</div>
