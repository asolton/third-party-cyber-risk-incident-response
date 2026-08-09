# MITRE ATT&CK Attack Path Analysis

## Vendor

**NorthStar Cloud Solutions**

**Assessment Type:** Third-Party Cybersecurity Risk Assessment

**Assessment Period:** 2026

---

# Purpose

This analysis maps a simulated attack path to the MITRE ATT&CK Enterprise framework.

The objective is to demonstrate how an analyst could use threat-informed analysis to identify potential attacker behavior, security controls, detection opportunities, and defensive actions.

This is a simulated scenario based on the cybersecurity findings identified during the assessment.

No actual systems, credentials, employees, or infrastructure were accessed.

---

# Simulated Attack Scenario

An attacker obtains credentials associated with a privileged service account that does not require multi-factor authentication.

The attacker uses the credentials to authenticate to a production environment and begins identifying available systems, accounts, and services.

The attacker attempts to expand access, establish persistence, and access sensitive information.

Security monitoring detects suspicious activity, triggering the incident response process.

---

# Attack Path Overview

```text
Compromised Credentials
        ↓
Valid Account Access
        ↓
Production Environment Access
        ↓
System & Account Discovery
        ↓
Network/Service Discovery
        ↓
Credential Access Attempt
        ↓
Potential Lateral Movement
        ↓
Sensitive Data Access
        ↓
Potential Exfiltration
        ↓
Detection & Response
