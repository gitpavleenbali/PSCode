# ==============================================================================================
# 01. Knowledge Refresh: Azure Cloud Resource Analyzer
# Purpose: Demonstrate PowerShell concepts (Cmdlets, Arrays, Pipeline) using Azure resources
# Run: Get to the project root and execute: .\01_knowledge_refresh\Azure-Cloud-Analyzer.ps1
# Prerequisites: Azure PowerShell module installed and user logged in Azure (Connect-AzAccount)
# ==============================================================================================


Write-Host "[INFO] Starting PowerShell Advanced Tooling Workshop..." -ForegroundColor Cyan
Write-Host "[INFO] Connecting to Azure subscription..." -ForegroundColor Gray

# Initialize Azure connection
try {
    $subscription = Get-AzSubscription | Where-Object { $_.State -eq "Enabled" } | Select-Object -First 1
    if (-not $subscription) {
        Write-Host "[ERROR] No active Azure subscription found. Please run Connect-AzAccount first." -ForegroundColor Red
        exit
    }
    Write-Host "[SUCCESS] Connected to: $($subscription.Name)" -ForegroundColor Green
} catch {
    Write-Host "[ERROR] Azure connection failed: $($_.Exception.Message)" -ForegroundColor Red
    exit
}

$separator = "=" * 80
Write-Host "`n$separator" -ForegroundColor DarkGray

# ============================================================================
# CONCEPT 1: CMDLETS & ALIASES - Azure PowerShell commands
# ============================================================================
# EXPLANATION: Cmdlets are PowerShell's core commands following strict Verb-Noun pattern (Get-AzSubscription)
# - Verbs are approved actions: Get, Set, New, Remove, Start, Stop, etc.
# - Aliases are shortcuts for cmdlets: 'ls' = Get-ChildItem, 'dir' = Get-ChildItem
# - This predictability makes PowerShell self-documenting and intuitive for developers
Write-Host "[CONCEPT 1] Cmdlets & Aliases" -ForegroundColor White
Write-Host "Demonstrating Verb-Noun pattern and command aliases using Azure data" -ForegroundColor Gray

# Cmdlet: Get Azure subscription info (Verb-Noun pattern)
$azContext = Get-AzContext
Write-Host "[CMDLET] Get-AzContext -> Account: $($azContext.Account.Id)" -ForegroundColor Yellow
Write-Host "[CMDLET] Get-AzSubscription -> Name: $($subscription.Name)" -ForegroundColor Yellow

# Alias demonstration
$files = Get-ChildItem -File | Select-Object -First 3
Write-Host "[ALIAS] ls (Get-ChildItem) -> Files: $($files.Count) items" -ForegroundColor Yellow

# PRESENTER PAUSE
Write-Host "`n[PAUSE] Press Enter to continue to Arrays & Collections..." -ForegroundColor Magenta
$pause1 = Read-Host

Write-Host "`n$separator" -ForegroundColor DarkGray

# ============================================================================
# CONCEPT 2: ARRAYS & COLLECTIONS - Managing multiple Azure resources
# ============================================================================
# EXPLANATION: Arrays store multiple items in ordered collections using @() or comma separation
# - Zero-based indexing: [0] = first item, [-1] = last item, [1..3] = range
# - Dynamic sizing: PowerShell arrays grow automatically as you add items
# - Essential for handling multiple Azure resources, VMs, storage accounts, etc.
Write-Host "[CONCEPT 2] Arrays & Collections" -ForegroundColor White
Write-Host "Creating and manipulating arrays of Azure resource data" -ForegroundColor Gray

# Get all resource groups and create arrays
$resourceGroups = Get-AzResourceGroup
$rgNames = $resourceGroups.ResourceGroupName
$rgLocations = $resourceGroups.Location | Sort-Object -Unique

Write-Host "[ARRAY] Resource Groups: $($rgNames.Count) items" -ForegroundColor Yellow
Write-Host "[INDEX] First RG: $($rgNames[0])" -ForegroundColor Yellow
Write-Host "[INDEX] Last RG: $($rgNames[-1])" -ForegroundColor Yellow
Write-Host "[ARRAY] Unique Locations: $($rgLocations.Count) regions -> $($rgLocations -join ', ')" -ForegroundColor Yellow

# PRESENTER PAUSE
Write-Host "`n[PAUSE] Press Enter to continue to Pipeline Operations..." -ForegroundColor Magenta
$pause2 = Read-Host

Write-Host "`n$separator" -ForegroundColor DarkGray

# ============================================================================
# CONCEPT 3: PIPELINE - Chaining commands for Azure resource analysis
# ============================================================================
# EXPLANATION: Pipeline (|) passes complete .NET objects between commands, not text like Linux/DOS
# - Each command receives full objects with properties and methods
# - Creates powerful data transformation chains: Filter → Sort → Select → Format
# - Think of it as an assembly line where each station processes and passes complete objects
Write-Host "[CONCEPT 3] Pipeline Operations" -ForegroundColor White
Write-Host "Chaining Azure commands with pipeline for data transformation" -ForegroundColor Gray

# Pipeline demonstration: Get resource groups -> filter -> sort -> select
$eastRegionRGs = Get-AzResourceGroup | 
    Where-Object { $_.Location -like "*east*" } | 
    Sort-Object ResourceGroupName | 
    Select-Object -First 5 ResourceGroupName, Location

Write-Host "[PIPELINE] Get-AzResourceGroup | Where-Object | Sort-Object | Select-Object" -ForegroundColor Yellow
foreach ($rg in $eastRegionRGs) {
    Write-Host "[RESULT] $($rg.ResourceGroupName) in $($rg.Location)" -ForegroundColor Yellow
}

# Another pipeline: Get resources by type
$storageResources = Get-AzResource | 
    Where-Object { $_.ResourceType -like "*Storage*" } | 
    Group-Object ResourceType | 
    Sort-Object Count -Descending

Write-Host "[PIPELINE] Storage resources by type -" -ForegroundColor Yellow
foreach ($group in $storageResources) {
    Write-Host "[RESULT] $($group.Name) - $($group.Count) resources" -ForegroundColor Yellow
}

# PRESENTER PAUSE
Write-Host "`n[PAUSE] Press Enter to continue to Objects & Properties..." -ForegroundColor Magenta
$pause3 = Read-Host

Write-Host "`n$separator" -ForegroundColor DarkGray

# ============================================================================
# CONCEPT 4: OBJECTS & PROPERTIES - Working with Azure object data
# ============================================================================
# EXPLANATION: Everything in PowerShell is a .NET object with properties, methods, and types
# - Objects have structure: Get-Member shows all available properties and methods
# - Type conversion: [int] to [string], automatic when needed, explicit when required
# - PowerShell is object-oriented, not text-based like traditional shells
Write-Host "[CONCEPT 4] Objects & Properties" -ForegroundColor White
Write-Host "Exploring Azure object properties and data types" -ForegroundColor Gray

# Get a resource group object and examine its properties
$sampleRG = Get-AzResourceGroup | Select-Object -First 1
$totalResources = Get-AzResource | Measure-Object | Select-Object -ExpandProperty Count

Write-Host "[OBJECT] Resource Group Type: $($sampleRG.GetType().Name)" -ForegroundColor Yellow
Write-Host "[PROPERTY] Name: $($sampleRG.ResourceGroupName)" -ForegroundColor Yellow
Write-Host "[PROPERTY] Location: $($sampleRG.Location)" -ForegroundColor Yellow
Write-Host "[PROPERTY] ProvisioningState: $($sampleRG.ProvisioningState)" -ForegroundColor Yellow

# Type conversion demonstration
Write-Host "[TYPE] Total Resources as Int32: $totalResources" -ForegroundColor Yellow
Write-Host "[TYPE] Total Resources as String: '$($totalResources.ToString())'" -ForegroundColor Yellow
Write-Host "[TYPE] String Length: $($totalResources.ToString().Length) characters" -ForegroundColor Yellow

# PRESENTER PAUSE
Write-Host "`n[PAUSE] Press Enter to continue to Hash Tables & Custom Objects..." -ForegroundColor Magenta
$pause4 = Read-Host

Write-Host "`n$separator" -ForegroundColor DarkGray

# ============================================================================
# CONCEPT 5: HASH TABLES & CUSTOM OBJECTS - Structured Azure data
# ============================================================================
# EXPLANATION: Hash tables (@{}) store key-value pairs for fast lookups, like dictionaries
# - Custom objects ([PSCustomObject]) create structured records with named properties
# - Hash tables: Use for configuration, counters, lookups ("key" = "value")
# - Custom objects: Use for structured results, reports, data that needs to be passed around
Write-Host "[CONCEPT 5] Hash Tables & Custom Objects" -ForegroundColor White
Write-Host "Creating structured data collections from Azure resources" -ForegroundColor Gray

# Hash table for resource summary
$resourceSummary = @{}
$allResources = Get-AzResource
$resourceTypes = $allResources | Group-Object ResourceType | Sort-Object Count -Descending

foreach ($type in $resourceTypes | Select-Object -First 5) {
    $resourceSummary[$type.Name] = $type.Count
}

Write-Host "[HASHTABLE] Resource Summary -" -ForegroundColor Yellow
foreach ($key in $resourceSummary.Keys) {
    Write-Host "[KEY-VALUE] $key = $($resourceSummary[$key])" -ForegroundColor Yellow
}

# Custom object for subscription info
$subscriptionInfo = [PSCustomObject]@{
    Name = $subscription.Name
    Id = $subscription.Id
    TotalResourceGroups = $resourceGroups.Count
    TotalResources = $totalResources
    AnalyzedAt = Get-Date
    TopResourceType = $resourceTypes[0].Name
}

Write-Host "[CUSTOM OBJECT] Subscription Analysis:" -ForegroundColor Yellow
Write-Host "[PROPERTY] Name: $($subscriptionInfo.Name)" -ForegroundColor Yellow
Write-Host "[PROPERTY] Resource Groups: $($subscriptionInfo.TotalResourceGroups)" -ForegroundColor Yellow
Write-Host "[PROPERTY] Total Resources: $($subscriptionInfo.TotalResources)" -ForegroundColor Yellow
Write-Host "[PROPERTY] Top Resource Type: $($subscriptionInfo.TopResourceType)" -ForegroundColor Yellow

# PRESENTER PAUSE
Write-Host "`n[PAUSE] Press Enter to continue to Flow Control..." -ForegroundColor Magenta
$pause5 = Read-Host

Write-Host "`n$separator" -ForegroundColor DarkGray

# ============================================================================
# CONCEPT 6: FLOW CONTROL - Loops and conditions with Azure data
# ============================================================================
# EXPLANATION: Flow control manages program execution with loops and conditional logic
# - foreach: "for each item in this collection, do something" - best for processing arrays
# - while: "while this condition is true, keep doing this" - best for unknown iterations
# - if/else: "if condition then action, otherwise different action" - decision making
Write-Host "[CONCEPT 6] Flow Control (Loops & Conditions)" -ForegroundColor White
Write-Host "Using loops and conditions to process Azure resources intelligently" -ForegroundColor Gray

# foreach loop: Analyze resource types that actually exist in the subscription
$targetTypes = @(
    "Microsoft.Compute/virtualMachines",
    "Microsoft.Storage/storageAccounts", 
    "Microsoft.Network/virtualNetworks",
    "Microsoft.ContainerService/managedClusters"
)

Write-Host "[FOREACH] Analyzing specific resource types -" -ForegroundColor Yellow
foreach ($type in $targetTypes) {
    $count = ($allResources | Where-Object { $_.ResourceType -eq $type }).Count
    if ($count -gt 0) {
        Write-Host "[FOUND] $type - $count resources" -ForegroundColor Green
    } else {
        Write-Host "[EMPTY] $type - No resources found" -ForegroundColor Gray
    }
}

# while loop: Find resource group with most resources
$rgIndex = 0
$maxResources = 0
$targetRG = $null

Write-Host "[WHILE] Finding resource group with most resources -" -ForegroundColor Yellow
while ($rgIndex -lt $resourceGroups.Count) {
    $rg = $resourceGroups[$rgIndex]
    $rgResourceCount = (Get-AzResource -ResourceGroupName $rg.ResourceGroupName).Count
    
    if ($rgResourceCount -gt $maxResources) {
        $maxResources = $rgResourceCount
        $targetRG = $rg
    }
    $rgIndex++
}

if ($targetRG) {
    Write-Host "[RESULT] Largest RG: $($targetRG.ResourceGroupName) with $maxResources resources" -ForegroundColor Green
}

# PRESENTER PAUSE
Write-Host "`n[PAUSE] Press Enter to continue to Functions & Scripts..." -ForegroundColor Magenta
$pause6 = Read-Host

Write-Host "`n$separator" -ForegroundColor DarkGray

# ============================================================================
# CONCEPT 7: FUNCTIONS & SCRIPTS - Reusable Azure operations
# ============================================================================
# EXPLANATION: Functions are reusable code blocks with parameters and return values
# - Eliminate code duplication: "Write once, use many times"
# - Parameters make functions flexible: same function, different inputs
# - Return values provide results: functions can calculate and return data for further use
Write-Host "[CONCEPT 7] Functions & Scripts" -ForegroundColor White
Write-Host "Creating reusable functions for Azure resource analysis" -ForegroundColor Gray

# Function definition
function Get-AzureResourceInsights {
    param(
        [string]$ResourceGroupName = $null,
        [switch]$ShowDetails
    )
    
    if ($ResourceGroupName) {
        $resources = Get-AzResource -ResourceGroupName $ResourceGroupName
        $scope = "Resource Group: $ResourceGroupName"
    } else {
        $resources = Get-AzResource
        $scope = "Subscription-wide"
    }
    
    $analysis = [PSCustomObject]@{
        Scope = $scope
        TotalResources = $resources.Count
        UniqueTypes = ($resources | Group-Object ResourceType).Count
        TopResourceTypes = ($resources | Group-Object ResourceType | Sort-Object Count -Descending | Select-Object -First 3)
    }
    
    return $analysis
}

# Function execution
Write-Host "[FUNCTION] Executing Get-AzureResourceInsights -" -ForegroundColor Yellow
$insights = Get-AzureResourceInsights
Write-Host "[OUTPUT] Scope: $($insights.Scope)" -ForegroundColor Yellow
Write-Host "[OUTPUT] Total Resources: $($insights.TotalResources)" -ForegroundColor Yellow
Write-Host "[OUTPUT] Unique Types: $($insights.UniqueTypes)" -ForegroundColor Yellow
Write-Host "[OUTPUT] Top Resource Types -" -ForegroundColor Yellow
foreach ($type in $insights.TopResourceTypes) {
    Write-Host "[DETAIL] $($type.Name) - $($type.Count) resources" -ForegroundColor Yellow
}

# PRESENTER PAUSE
Write-Host "`n[PAUSE] Press Enter to see workshop summary..." -ForegroundColor Magenta
$pause7 = Read-Host

# ============================================================================
# WORKSHOP SUMMARY
# ============================================================================
Write-Host "`n$separator" -ForegroundColor DarkGray
Write-Host "[WORKSHOP COMPLETE] PowerShell Advanced Tooling - Azure Analysis" -ForegroundColor Green
Write-Host "$separator" -ForegroundColor DarkGray

Write-Host "`n[CONCEPTS DEMONSTRATED]" -ForegroundColor White
Write-Host "1. Cmdlets & Aliases: Get-AzContext, Get-AzSubscription, ls" -ForegroundColor Gray
Write-Host "2. Arrays: Resource groups [$($rgNames.Count) items], locations [$($rgLocations.Count) items]" -ForegroundColor Gray
Write-Host "3. Pipeline: Get-AzResourceGroup | Where-Object | Sort-Object | Select-Object" -ForegroundColor Gray
Write-Host "4. Objects: Azure resource objects, type conversion, properties" -ForegroundColor Gray
Write-Host "5. Hash Tables: Resource summary, Custom Objects: subscription analysis" -ForegroundColor Gray
Write-Host "6. Flow Control: foreach loops, while loops, conditional processing" -ForegroundColor Gray
Write-Host "7. Functions: Get-AzureResourceInsights with parameters and return values" -ForegroundColor Gray

Write-Host "`n[LIVE DATA PROCESSED]" -ForegroundColor White
Write-Host "Subscription: $($subscription.Name)" -ForegroundColor Gray
Write-Host "Resource Groups: $($resourceGroups.Count)" -ForegroundColor Gray
Write-Host "Total Resources: $totalResources" -ForegroundColor Gray
Write-Host "Analysis Time: $((Get-Date).ToString('HH:mm:ss'))" -ForegroundColor Gray
