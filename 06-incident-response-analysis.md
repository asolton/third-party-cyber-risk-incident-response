# Incident Response & Threat Mapping

## Vendor

**NorthStar Cloud Solutions**

**Assessment Type:** Third-Party Cybersecurity Risk Assessment

**Assessment Period:** 2026

---

# Purpose

This section evaluates how NorthStar Cloud Solutions could respond to a potential cybersecurity incident involving the control weaknesses identified during the third-party risk assessment.

The analysis applies established incident response concepts, the MITRE ATT&CK Enterprise framework, and the Cyber Kill Chain to demonstrate how identified risks could translate into potential attack activity.

---

# Incident Scenario

## Scenario

An attacker obtains credentials associated with a privileged service account that does not require multi-factor authentication.

The attacker uses the compromised credentials to gain unauthorized access to a production environment.

Once access is established, the attacker attempts to identify additional systems, accounts, and sensitive resources before attempting to expand access and potentially exfiltrate information.

---

# Incident Response Lifecycle

The incident response process can be organized into the following phases:

1. Preparation
2. Detection and Analysis
3. Containment
4. Eradication
5. Recovery
6. Lessons Learned

---

# 1. Preparation

Before an incident occurs, NorthStar should maintain:

- Current incident response procedures
- Asset inventories
- Privileged account inventories
- Security monitoring
- Centralized logging
- Incident escalation procedures
- Third-party contact information
- Backup and recovery procedures
- Security awareness training
- Defined incident response roles

The identified MFA and third-party communication findings demonstrate why preparation is critical.

---

# 2. Detection and Analysis

Security monitoring may identify suspicious activity involving the compromised privileged account.

Potential indicators include:

- Authentication from an unusual location
- Authentication outside normal operating hours
- Unusual administrative activity
- Access to systems not normally associated with the account
- Unexpected privilege use
- Suspicious network connections
- Abnormal file access
- Unusual data transfers

Security analysts should determine:

- Which account was compromised
- Which systems were accessed
- When the activity began
- What actions were performed
- Whether additional credentials were compromised
- Whether sensitive information was accessed
- Whether the activity remains active

---

# 3. Containment

The immediate objective is to prevent further unauthorized activity.

Potential containment actions include:

- Disable or restrict the compromised account
- Rotate affected credentials
- Terminate active sessions
- Block malicious IP addresses where appropriate
- Isolate affected systems
- Restrict network access
- Increase monitoring
- Preserve relevant logs and forensic evidence

Because the scenario involves a privileged account, containment should be prioritized to prevent additional system access.

---

# 4. Eradication

After containment, the organization should identify and remove the underlying cause of the compromise.

Potential eradication activities include:

- Remove unauthorized accounts
- Remove persistence mechanisms
- Reset compromised credentials
- Patch exploited vulnerabilities
- Remove malicious software
- Review privileged access
- Eliminate unnecessary MFA exemptions
- Review security configurations
- Scan affected systems for additional indicators of compromise

---

# 5. Recovery

NorthStar should restore affected systems to a trusted operating state.

Recovery activities may include:

- Restore systems from known-good backups
- Validate system integrity
- Monitor restored systems
- Re-enable accounts after validation
- Confirm security controls are functioning
- Conduct enhanced monitoring
- Verify business services are operating normally

Recovery should continue until security teams have reasonable confidence that the threat has been removed and affected systems are secure.

---

# 6. Lessons Learned

After the incident, NorthStar should conduct a formal post-incident review.

The review should determine:

- What happened?
- How did the attacker gain access?
- Why was the activity not detected sooner?
- Which security controls failed?
- Was MFA available?
- Were logs sufficient?
- Was third-party communication effective?
- How long did containment take?
- What improvements are required?

Lessons learned should be incorporated into security controls, policies, procedures, and future tabletop exercises.

---

# MITRE ATT&CK Mapping

The following MITRE ATT&CK techniques could potentially apply to the simulated incident scenario.

| Stage | MITRE ATT&CK Technique | Potential Activity |
|---|---|---|
| Initial Access | Valid Accounts | Attacker uses compromised privileged credentials |
| Discovery | Account Discovery | Attacker identifies additional accounts |
| Discovery | System Information Discovery | Attacker gathers information about systems |
| Discovery | Network Service Scanning | Attacker identifies accessible services |
| Privilege/Access | Valid Accounts | Compromised credentials are used to maintain access |
| Credential Access | OS Credential Dumping | Attacker attempts to obtain additional credentials |
| Lateral Movement | Remote Services | Attacker attempts to access additional systems |
| Collection | Data from Information Repositories | Attacker accesses potentially sensitive information |
| Command and Control | Application Layer Protocol | Attacker communicates with external infrastructure |
| Exfiltration | Exfiltration Over Web Service | Attacker attempts to transfer data externally |

> **Note:** The techniques above represent potential activity within the simulated scenario and do not indicate that these techniques were observed in an actual environment.

---

# Cyber Kill Chain Mapping

## 1. Reconnaissance

The attacker identifies potential targets, accounts, systems, or exposed services.

**Potential Risk Connection:**

- Internet-facing vulnerabilities
- Privileged accounts
- Third-party infrastructure

---

## 2. Weaponization

The attacker prepares a method for exploiting the identified weakness.

Examples could include:

- Credential theft
- Exploitation of a vulnerability
- Malicious payload

---

## 3. Delivery

The attacker delivers the attack through an available access path.

Potential methods include:

- Phishing
- Exploited internet-facing service
- Compromised credentials

---

## 4. Exploitation

The attacker exploits the identified weakness.

In this scenario, exploitation could involve:

- Use of compromised privileged credentials
- Exploitation of an unpatched critical vulnerability

---

## 5. Installation

The attacker attempts to establish persistence or install malicious software.

Potential examples include:

- Malware
- Unauthorized accounts
- Persistence mechanisms

---

## 6. Command and Control

The attacker establishes communication with external infrastructure.

Security teams should monitor for:

- Suspicious outbound connections
- Unusual network traffic
- Known malicious infrastructure
- Abnormal application-layer communications

---

## 7. Actions on Objectives

The attacker attempts to accomplish their objective.

Potential objectives include:

- Data theft
- System disruption
- Credential theft
- Financial fraud
- Operational disruption

---

# Incident Response Priority

Based on the simulated scenario, the following actions should receive immediate attention:

### Priority 1

**Contain compromised privileged credentials**

Disable or restrict affected accounts and rotate credentials.

### Priority 2

**Preserve evidence**

Secure authentication logs, endpoint telemetry, network logs, and other relevant evidence.

### Priority 3

**Determine scope**

Identify affected systems, accounts, data, and timeframes.

### Priority 4

**Eliminate persistence**

Remove malicious artifacts, unauthorized accounts, or other mechanisms used to maintain access.

### Priority 5

**Remediate the underlying control weakness**

Address the MFA exemption and any vulnerabilities that contributed to the incident.

### Priority 6

**Validate recovery**

Confirm affected systems are secure before returning them to normal operation.

---

# Analyst Conclusion

The simulated scenario demonstrates how weaknesses identified during a third-party cybersecurity assessment can contribute to a potential security incident.

The combination of privileged accounts without MFA, critical vulnerabilities affecting internet-facing systems, reduced logging retention, and third-party communication delays could increase the potential impact of a security incident.

Applying an established incident response lifecycle, MITRE ATT&CK, and the Cyber Kill Chain allows analysts to organize investigation activities, identify potential attacker behavior, prioritize containment, and communicate risk to stakeholders.

The scenario also demonstrates the importance of connecting preventative controls with incident response capabilities. Preventative controls such as MFA and vulnerability management reduce the likelihood of compromise, while logging, monitoring, incident response procedures, and recovery capabilities reduce the potential impact when prevention fails.
