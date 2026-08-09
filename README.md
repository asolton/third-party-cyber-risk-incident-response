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

# SOC Telemetry Investigation

The project was expanded to include a simulated SOC investigation using correlated authentication, endpoint, and network telemetry.

The investigation focused on a privileged service account suspected of unauthorized activity within a production environment.

## Investigation Data

The investigation used three simulated telemetry sources:

* `authentication_logs.csv` — authentication activity, source IPs, destination systems, and authentication methods
* `endpoint_events.csv` — process execution, discovery activity, credential-access behavior, remote sessions, and data-access events
* `network_events.csv` — internal connections, external communications, protocols, ports, transfer volumes, and security-control results

## Investigation Process

The investigation followed a correlation-based SOC workflow:

```text
Authentication Telemetry
        ↓
Endpoint Telemetry
        ↓
Network Telemetry
        ↓
Event Correlation
        ↓
Incident Timeline
        ↓
Risk Classification
        ↓
Containment & Escalation
```

### Key Observations

The investigation identified:

* Repeated authentication involving a privileged service account
* Authentication from an unfamiliar source IP
* Password-based authentication without MFA
* PowerShell process execution
* Account and privileged-group discovery
* Network service scanning
* Credential-access behavior
* Remote session activity
* Sensitive-data access
* Data collection and archive creation
* Increasing outbound network traffic
* Large outbound transfer detection
* Subsequent transfer blocking

The evidence from multiple telemetry sources was correlated before making the final incident classification.

## Incident Classification

**Likely Security Incident Requiring Containment**

The available evidence indicated a progression from privileged authentication and discovery activity through credential-access behavior, remote activity, sensitive-data access, data collection, and suspicious outbound network activity.

The investigation did not assume successful credential theft or successful data exfiltration without additional validation.

## Recommended Response

The recommended response was to:

1. Disable or isolate the affected privileged service account.
2. Preserve relevant authentication, endpoint, and network evidence.
3. Escalate the incident to the incident-response team.
4. Validate the source IP and account activity.
5. Determine whether credentials were successfully compromised.
6. Determine whether sensitive information was successfully transferred.
7. Investigate why earlier security alerts did not result in immediate containment.

## SQL Investigation

The repository also includes SQL investigation queries demonstrating how security telemetry could be analyzed in a relational database environment.

The queries cover:

* Privileged-account authentication
* Unfamiliar authentication sources
* Credential-access events
* Account and group discovery
* Remote activity
* Sensitive-data access
* Large outbound transfers
* External network communication
* Cross-source incident timeline correlation

The SQL component is intended to demonstrate practical security-investigation logic while continuing to develop SQL proficiency.
