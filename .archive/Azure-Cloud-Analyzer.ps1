# ============================================================================
# File 01. Knowledge Refresher: AZURE CLOUD ANALYZER 
# ============================================================================

# 📋 CONCEPT 1: CMDLETS & ALIASES - Azure PowerShell commands
# EXPLANATION: Cmdlets are PowerShell's built-in commands following Verb-Noun pattern (Get-AzSubscription)
# Aliases are shortcuts for cmdlets (ls = Get-ChildItem). This shows both working with real Azure data.
# TEACHING POINT: PowerShell cmdlets are predictable - if you know Get-Process, you can guess Get-AzResource!
Write-Host "🔍 CONCEPT 1: Cmdlets & Aliases in Action" -ForegroundColor Cyan
Write-Host "Using Get-AzSubscription (cmdlet) and testing if 'ls' alias works for Get-ChildItem" -ForegroundColor Yellow

# Cmdlet: Get Azure subscription info (Verb-Noun pattern)
$subscription = Get-AzSubscription | Select-Object -First 1
if ($subscription) {
    Write-Host "✅ Active Subscription: $($subscription.Name)" -ForegroundColor Green
} else {
    Write-Host "⚠️ No Azure subscription found - please run Connect-AzAccount first" -ForegroundColor Yellow
    return
}

# Alias demonstration: ls is alias for Get-ChildItem
$currentDir = ls | Select-Object -First 3 Name
Write-Host "📁 Current directory files (using 'ls' alias): $($currentDir.Name -join ', ')" -ForegroundColor Green

# 🎤 INTERACTIVE PAUSE - Let the presenter explain Concept 1
$pauseLine = "⏸️ " * 20
Write-Host "`n$pauseLine" -ForegroundColor Yellow
Write-Host "🎤 PRESENTER MOMENT: Explain Cmdlets & Aliases to your audience" -ForegroundColor Yellow
Write-Host "📚 Key Points: Verb-Noun pattern, predictable commands, aliases are shortcuts" -ForegroundColor Gray
$pause1 = Read-Host "Press Enter when ready to continue to Arrays & Collections"

# 📊 CONCEPT 2: ARRAYS & COLLECTIONS - Storing Azure resource types
# EXPLANATION: Arrays store multiple items in one variable. Created with @() or comma separation.
# Arrays have indexes [0], [1], [-1] for last item. Essential for handling multiple Azure resources.
# TEACHING POINT: Arrays are ordered collections - perfect for processing lists of resources, VMs, etc.
Write-Host "`n🔍 CONCEPT 2: Arrays & Collections" -ForegroundColor Cyan
Write-Host "Creating arrays of Azure resource types to analyze" -ForegroundColor Yellow

# Array of resource types we want to analyze (comma-separated)
$resourceTypes = @(
    "Microsoft.Compute/virtualMachines",
    "Microsoft.Storage/storageAccounts", 
    "Microsoft.Web/sites",
    "Microsoft.Sql/servers",
    "Microsoft.Network/virtualNetworks"
)

# Array operations: show count and access elements
Write-Host "📦 Resource types to analyze: $($resourceTypes.Count) types" -ForegroundColor Green
Write-Host "🎯 First type: $($resourceTypes[0])" -ForegroundColor Green
Write-Host "🎯 Last type: $($resourceTypes[-1])" -ForegroundColor Green

# 🎤 INTERACTIVE PAUSE - Let the presenter explain Concept 2
Write-Host "`n$pauseLine" -ForegroundColor Yellow
Write-Host "🎤 PRESENTER MOMENT: Explain Arrays & Collections to your audience" -ForegroundColor Yellow
Write-Host "📚 Key Points: Multiple items in one variable, indexing [0], [-1], ordered collections" -ForegroundColor Gray
$pause2 = Read-Host "Press Enter when ready to continue to Pipeline Power"

# 🔄 CONCEPT 3: PIPELINE - Chain Azure commands together  
# EXPLANATION: Pipeline (|) passes objects between commands. Unlike DOS/Linux text pipes, PowerShell passes rich objects.
# Each command receives full objects with properties/methods. Enables powerful data transformation chains.
# TEACHING POINT: Pipeline = Assembly line for data. Each | passes complete objects, not just text!
Write-Host "`n🔍 CONCEPT 3: Pipeline Power" -ForegroundColor Cyan
Write-Host "Using pipeline to get resource groups → filter → sort → select" -ForegroundColor Yellow

# Pipeline: Get resource groups | Where (filter) | Sort | Select properties
$topResourceGroups = Get-AzResourceGroup | 
    Where-Object Location -like "*East*" |
    Sort-Object ResourceGroupName |
    Select-Object -First 3 ResourceGroupName, Location, ProvisioningState

Write-Host "🏗️ Top 3 Resource Groups in East regions:" -ForegroundColor Green
$topResourceGroups | ForEach-Object { 
    Write-Host "   • $($_.ResourceGroupName) in $($_.Location)" -ForegroundColor White 
}

# 🎤 INTERACTIVE PAUSE - Let the presenter explain Concept 3
Write-Host "`n$pauseLine" -ForegroundColor Yellow
Write-Host "🎤 PRESENTER MOMENT: Explain Pipeline Power to your audience" -ForegroundColor Yellow
Write-Host "📚 Key Points: Objects flow through |, not text! Assembly line for data transformation" -ForegroundColor Gray
$pause3 = Read-Host "Press Enter when ready to continue to Objects & Data Types"

# 🎯 CONCEPT 4: OBJECTS & DATA TYPES - Working with Azure resource objects
# EXPLANATION: Everything in PowerShell is an object with properties and methods. Objects have types (.NET types).
# You can convert between types [int], [string], [DateTime]. Objects have structure you can explore with Get-Member.
# TEACHING POINT: Unlike text-based shells, PowerShell works with structured data objects - very powerful!
Write-Host "`n🔍 CONCEPT 4: Objects & Data Types" -ForegroundColor Cyan
Write-Host "Examining Azure object properties and converting data types" -ForegroundColor Yellow

# Get first resource group and examine its object structure
$sampleRG = Get-AzResourceGroup | Select-Object -First 1
if ($sampleRG) {
    Write-Host "📋 Resource Group Object Type: $($sampleRG.GetType().Name)" -ForegroundColor Green
    Write-Host "📅 Created: $(if ($sampleRG.Tags.CreatedDate) { $sampleRG.Tags.CreatedDate } else { 'Not specified' })" -ForegroundColor Green
} else {
    Write-Host "📋 Resource Group Object Type: None found" -ForegroundColor Yellow
}

# Data type conversion: Convert resource count to different formats
$totalResources = (Get-AzResource).Count
$resourcesAsString = [string]$totalResources
$resourcesAsDouble = [double]$totalResources

Write-Host "🔢 Total Resources: $totalResources (Type: $($totalResources.GetType().Name))" -ForegroundColor Green
Write-Host "📝 As String: '$resourcesAsString' (Type: $($resourcesAsString.GetType().Name))" -ForegroundColor Green

# 🎤 INTERACTIVE PAUSE - Let the presenter explain Concept 4
Write-Host "`n$pauseLine" -ForegroundColor Yellow
Write-Host "🎤 PRESENTER MOMENT: Explain Objects & Data Types to your audience" -ForegroundColor Yellow
Write-Host "📚 Key Points: Everything is an object, .NET types, type conversion, Get-Member exploration" -ForegroundColor Gray
$pause4 = Read-Host "Press Enter when ready to continue to Hash Tables & Custom Objects"

# 🏗️ CONCEPT 5: HASH TABLES & CUSTOM OBJECTS - Structure Azure data
# EXPLANATION: Hash tables store key-value pairs @{key="value"}. Custom objects [PSCustomObject] create structured data.
# Hash tables are like dictionaries, custom objects are like database records. Both organize data effectively.
# TEACHING POINT: Use hash tables for lookups/config, custom objects for structured records and pipeline operations.
Write-Host "`n🔍 CONCEPT 5: Hash Tables & Custom Objects" -ForegroundColor Cyan
Write-Host "Creating structured data for Azure resource summary" -ForegroundColor Yellow

# Hash table for storing resource counts by type (key-value pairs)
$resourceSummary = @{}

# Custom object for subscription information
$subscriptionInfo = [PSCustomObject]@{
    SubscriptionName = if ($subscription) { $subscription.Name } else { "Unknown" }
    SubscriptionId = if ($subscription -and $subscription.Id) { 
        $idParts = $subscription.Id.Split('/')
        if ($idParts.Length -gt 2) { $idParts[2].Substring(0,[Math]::Min(8,$idParts[2].Length)) + "..." } else { "N/A" }
    } else { "N/A" }
    TotalResourceGroups = (Get-AzResourceGroup).Count
    AnalyzedAt = Get-Date
    Status = "Active"
}

Write-Host "💼 Subscription Summary:" -ForegroundColor Green
Write-Host "   Name: $($subscriptionInfo.SubscriptionName)" -ForegroundColor White
Write-Host "   Resource Groups: $($subscriptionInfo.TotalResourceGroups)" -ForegroundColor White
Write-Host "   Analyzed: $($subscriptionInfo.AnalyzedAt.ToString('HH:mm:ss'))" -ForegroundColor White

# 🎤 INTERACTIVE PAUSE - Let the presenter explain Concept 5
Write-Host "`n$pauseLine" -ForegroundColor Yellow
Write-Host "🎤 PRESENTER MOMENT: Explain Hash Tables & Custom Objects to your audience" -ForegroundColor Yellow
Write-Host "📚 Key Points: Key-value pairs @{}, structured data [PSCustomObject], organize data effectively" -ForegroundColor Gray
$pause5 = Read-Host "Press Enter when ready to continue to Flow Control"

# 🔄 CONCEPT 6: FLOW CONTROL - Smart Azure resource analysis
# EXPLANATION: Flow control manages program execution: loops (foreach, while) and conditions (if, switch).
# Loops repeat actions, conditions make decisions. Essential for processing multiple resources intelligently.
# TEACHING POINT: Flow control = programming logic. Loops handle "many", conditions handle "if this then that".
Write-Host "`n🔍 CONCEPT 6: Flow Control (Loops & Conditions)" -ForegroundColor Cyan
Write-Host "Using loops and conditions to analyze resources intelligently" -ForegroundColor Yellow

# Loop through resource types and count them
foreach ($resourceType in $resourceTypes) {
    $count = (Get-AzResource -ResourceType $resourceType).Count
    $resourceSummary[$resourceType] = $count
    
    # Conditional logic: different messages based on count
    if ($count -gt 10) {
        Write-Host "🔥 $resourceType`: $count resources (High usage!)" -ForegroundColor Red
    } elseif ($count -gt 0) {
        Write-Host "✅ $resourceType`: $count resources" -ForegroundColor Green  
    } else {
        Write-Host "⚪ $resourceType`: No resources found" -ForegroundColor Gray
    }
}

# While loop: Keep checking until we find a resource group with resources
$rgIndex = 0
$resourceGroups = Get-AzResourceGroup
while ($rgIndex -lt $resourceGroups.Count) {
    $rg = $resourceGroups[$rgIndex]
    $resourceCount = (Get-AzResource -ResourceGroupName $rg.ResourceGroupName).Count
    
    if ($resourceCount -gt 0) {
        Write-Host "🎯 Found active Resource Group: $($rg.ResourceGroupName) ($resourceCount resources)" -ForegroundColor Yellow
        break
    }
    $rgIndex++
}

# 🎤 INTERACTIVE PAUSE - Let the presenter explain Concept 6
Write-Host "`n$pauseLine" -ForegroundColor Yellow
Write-Host "🎤 PRESENTER MOMENT: Explain Flow Control to your audience" -ForegroundColor Yellow
Write-Host "📚 Key Points: Loops handle 'many things', conditions handle 'if-then-else' logic" -ForegroundColor Gray
$pause6 = Read-Host "Press Enter when ready to continue to Functions & Scripts"

# ⚙️ CONCEPT 7: FUNCTIONS & SCRIPTS - Reusable Azure operations
# EXPLANATION: Functions are reusable code blocks with parameters and return values. Scripts organize functions and logic.
# Functions eliminate code duplication and create modular, testable code. Essential for professional PowerShell.
# TEACHING POINT: Functions = reusable tools. Write once, use many times. Makes code clean and maintainable.
Write-Host "`n🔍 CONCEPT 7: Functions & Scripts" -ForegroundColor Cyan
Write-Host "Creating reusable functions for Azure operations" -ForegroundColor Yellow

# Function with parameters and return values
function Get-AzureResourceInsights {
    param(
        [Parameter(Mandatory=$false)]
        [string]$ResourceGroupName,
        
        [Parameter(Mandatory=$false)]
        [switch]$ShowDetails
    )
    
    # Function logic with error handling
    try {
        if ($ResourceGroupName) {
            $resources = Get-AzResource -ResourceGroupName $ResourceGroupName
            $location = (Get-AzResourceGroup -Name $ResourceGroupName).Location
        } else {
            $resources = Get-AzResource | Select-Object -First 10
            $location = "Multiple"
        }
        
        # Create return object
        $insights = [PSCustomObject]@{
            Scope = if ($ResourceGroupName) { $ResourceGroupName } else { "Subscription" }
            ResourceCount = $resources.Count
            Location = $location
            UniqueTypes = ($resources | Group-Object ResourceType).Count
            LastAnalyzed = Get-Date
        }
        
        if ($ShowDetails) {
            $insights | Add-Member -NotePropertyName "TopResourceTypes" -NotePropertyValue (
                $resources | Group-Object ResourceType | Sort-Object Count -Descending | 
                Select-Object -First 3 Name, Count
            )
        }
        
        return $insights
    }
    catch {
        Write-Warning "Analysis failed: $($_.Exception.Message)"
        return $null
    }
}

# Call our function with different parameters
Write-Host "📊 Subscription-wide insights:" -ForegroundColor Green
$subscriptionInsights = Get-AzureResourceInsights -ShowDetails
if ($subscriptionInsights) {
    Write-Host "   Resources: $($subscriptionInsights.ResourceCount)" -ForegroundColor White
    Write-Host "   Unique Types: $($subscriptionInsights.UniqueTypes)" -ForegroundColor White
    Write-Host "   Top Types:" -ForegroundColor White
    $subscriptionInsights.TopResourceTypes | ForEach-Object {
        Write-Host "     • $($_.Name): $($_.Count)" -ForegroundColor Gray
    }
}

# 🎤 INTERACTIVE PAUSE - Let the presenter explain Concept 7
Write-Host "`n$pauseLine" -ForegroundColor Yellow
Write-Host "🎤 PRESENTER MOMENT: Explain Functions & Scripts to your audience" -ForegroundColor Yellow
Write-Host "📚 Key Points: Reusable code blocks, parameters, return values, write once use many times" -ForegroundColor Gray
$pause7 = Read-Host "Press Enter when ready to see the final summary"

# 🎊 FINAL INTERACTIVE SUMMARY
$separator = "=" * 60
Write-Host "`n$separator" -ForegroundColor Magenta
Write-Host "🎉 AZURE CLOUD ANALYZER COMPLETE!" -ForegroundColor Magenta
Write-Host "$separator" -ForegroundColor Magenta

Write-Host "`n📊 WORKSHOP CONCEPTS DEMONSTRATED:" -ForegroundColor Green
Write-Host "✅ 1. Cmdlets & Aliases: Get-AzSubscription, ls" -ForegroundColor White
Write-Host "✅ 2. Arrays: Resource types collection [$($resourceTypes.Count) items]" -ForegroundColor White
Write-Host "✅ 3. Pipeline: Get-AzResourceGroup | Where | Sort | Select" -ForegroundColor White
Write-Host "✅ 4. Objects & Types: Azure objects, type conversion" -ForegroundColor White
Write-Host "✅ 5. Hash Tables: `$resourceSummary, Custom Objects: subscription info" -ForegroundColor White
Write-Host "✅ 6. Flow Control: foreach, while loops, if conditions" -ForegroundColor White
Write-Host "✅ 7. Functions: Get-AzureResourceInsights with parameters" -ForegroundColor White

Write-Host "`n🚀 LIVE AZURE DATA ANALYZED:" -ForegroundColor Blue
Write-Host "📋 Subscription: $($subscription.Name)" -ForegroundColor White
Write-Host "🏗️ Resource Groups: $($subscriptionInfo.TotalResourceGroups)" -ForegroundColor White
Write-Host "📦 Total Resources: $totalResources" -ForegroundColor White
Write-Host "⏰ Analysis Time: $($subscriptionInfo.AnalyzedAt.ToString('HH:mm:ss'))" -ForegroundColor White

Write-Host "`n🎯 Next Steps: Explore specific resource groups with:" -ForegroundColor Yellow
Write-Host "Get-AzureResourceInsights -ResourceGroupName 'YourRGName' -ShowDetails" -ForegroundColor Gray

Write-Host "`n$separator" -ForegroundColor Magenta
