# Third-Party Cybersecurity Risk Assessment & SOC Investigation

![Cybersecurity](https://img.shields.io/badge/Focus-Cybersecurity-blue)
![Risk Management](https://img.shields.io/badge/Third--Party%20Risk-Management-green)
![SOC](https://img.shields.io/badge/SOC-Incident%20Response-orange)
![MITRE ATT&CK](https://img.shields.io/badge/MITRE-ATT%26CK-red)

## Overview

This project demonstrates a simulated third-party cybersecurity risk assessment and Security Operations Center (SOC) investigation involving a critical technology vendor.

The project was designed to demonstrate practical cybersecurity analysis skills across:

- Third-party risk management
- Risk assessment
- Vulnerability management
- Identity and access management
- Privileged access monitoring
- Incident response
- SOC investigation
- MITRE ATT&CK
- Cyber Kill Chain
- Security monitoring
- Threat detection
- Evidence preservation
- Risk remediation
- Executive communication

The assessment evaluates a fictional critical vendor, identifies cybersecurity control weaknesses, prioritizes risks, develops remediation recommendations, and investigates a simulated privileged-account compromise.

---

# Project Objectives

The primary objectives of this project were to:

1. Assess cybersecurity risks associated with a critical third-party vendor.
2. Identify security control deficiencies.
3. Evaluate likelihood and business impact.
4. Prioritize identified risks.
5. Develop remediation recommendations.
6. Map potential attacker behavior to MITRE ATT&CK.
7. Apply the Cyber Kill Chain to a simulated attack scenario.
8. Develop SOC detection and investigation procedures.
9. Conduct a simulated incident investigation.
10. Communicate findings to technical and non-technical stakeholders.

---

# Scenario

## Vendor

**NorthStar Cloud Solutions**

NorthStar Cloud Solutions is a fictional critical technology provider supporting production infrastructure.

The vendor was selected for an annual third-party cybersecurity assessment because of its access to business-critical systems and information.

---

# Key Findings

The assessment identified several cybersecurity control deficiencies.

## Critical

### Privileged Service Accounts Without MFA

Three privileged service accounts were identified as operating without multi-factor authentication due to application compatibility limitations.

**Risk:** Unauthorized privileged access if credentials are compromised.

---

### Critical Vulnerabilities Exceeding SLA

Two critical vulnerabilities affecting internet-facing systems exceeded the organization's established remediation SLA.

**Risk:** Increased potential for successful exploitation.

---

# High

### Critical Subcontractors Without Completed Security Assessments

Two critical infrastructure subcontractors had not completed required annual security assessments.

**Risk:** Reduced visibility into supply-chain cybersecurity risk.

---

### Third-Party Incident Communication Delay

A tabletop exercise identified a 14-hour delay in contacting a critical external service provider.

**Risk:** Delayed containment, investigation, coordination, and recovery during a security incident.

---

# Moderate

Additional Moderate findings included:

- Reduced log retention on legacy systems
- SOC 2 privileged-access control deficiency
- Disaster recovery performance exceeding the documented RTO

---

# Risk Assessment Methodology

Each identified risk was evaluated using:

- Likelihood
- Business impact
- Risk score
- Control effectiveness
- Remediation status
- Management priority

Risk ratings were used to determine which findings required immediate attention versus continued monitoring.

---

# Incident Scenario

The project includes a simulated incident involving a privileged service account.

### Attack Path

```text
Compromised Credentials
        ↓
Valid Account Access
        ↓
Production Environment Access
        ↓
Account Discovery
        ↓
Network Discovery
        ↓
Credential Access
        ↓
Lateral Movement
        ↓
Sensitive Data Access
        ↓
Potential Exfiltration
        ↓
SOC Detection
        ↓
Incident Response
