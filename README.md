# Azure Hub-Spoke Network Architecture with Security

Enterprise-grade Azure hub-and-spoke network topology with NSGs, Azure Firewall, and micro-segmentation for multi-tier application security.

## 🎯 Overview

Secure, scalable hub-spoke network architecture implementing defense-in-depth principles with centralized security controls, network segmentation, and enterprise connectivity patterns.

## 🏗️ Architecture

                ┌─────────────────┐
                │   Hub VNet      │
                │                 │
                │  ┌───────────┐  │
                │  │  Azure    │  │
                │  │  Firewall │  │
                │  └─────┬─────┘  │
                │        │        │
                │  ┌─────┴─────┐  │
                │  │   Gateway │  │
                │  │   Subnet  │  │
                │  └───────────┘  │
                └────┬──────┬─────┘
                     │      │
          ┌──────────┘      └───────────┐
          │                             │
    ┌─────▼─────┐                 ┌─────▼─────┐
    │ Spoke 1   │                 │ Spoke 2   │
    │ (Prod)    │                 │ (Dev)     │
    │           │                 │           │
    │ ┌───────┐ │                 │ ┌───────┐ │
    │ │  Web  │ │                 │ │  Web  │ │
    │ └───┬───┘ │                 │ └───┬───┘ │
    │     │     │                 │     │     │
    │ ┌───▼───┐ │                 │ ┌───▼───┐ │
    │ │  App  │ │                 │ │  App  │ │
    │ └───┬───┘ │                 │ └───┬───┘ │
    │     │     │                 │     │     │
    │ ┌───▼───┐ │                 │ ┌───▼───┐ │
    │ │  Data │ │                 │ │  Data │ │
    │ └───────┘ │                 │ └───────┘ │
    └───────────┘                 └───────────┘
    
    ## ✨ Features

- 🏢 **Hub-Spoke Topology** - Centralized security and management
- 🔥 **Azure Firewall** - Network and application layer filtering
- 🛡️ **Network Security Groups** - Subnet-level security
- 🔒 **Private Endpoints** - Secure PaaS connectivity
- 🌐 **VPN Gateway** - Hybrid connectivity ready
- 📊 **Network Watcher** - Traffic monitoring and diagnostics
- 🎯 **Micro-segmentation** - Isolated workload tiers
- 🔄 **Peering** - High-bandwidth, low-latency connectivity

## 🚀 Quick Start
```bash
# Clone repository
git clone https://github.com/jmragsdale/az-hub-spoke-secure.git
cd az-hub-spoke-secure

# Initialize Terraform
terraform init

# Plan deployment
terraform plan -out=tfplan

# Deploy infrastructure
terraform apply tfplan
