# Security Monitoring & Detection Analysis

## Vendor

**NorthStar Cloud Solutions**

**Assessment Type:** Third-Party Cybersecurity Risk Assessment

**Assessment Period:** 2026

---

# Purpose

This section demonstrates how security monitoring and detection capabilities could be used to identify suspicious activity associated with the simulated attack path developed during this assessment.

The analysis focuses on identity activity, endpoint behavior, network activity, privileged access, and potential data exfiltration.

The objective is to demonstrate how a Security Operations Center (SOC) analyst could identify, investigate, contain, and escalate suspicious activity.

---

# Detection Scenario

## Scenario

A privileged service account without multi-factor authentication is used to authenticate to a production environment from an unusual source.

The account subsequently performs activity that differs from its normal behavior.

Security monitoring generates several alerts that require investigation.

---

# Detection 1 — Unusual Privileged Authentication

## Alert

A privileged service account authenticates from an IP address that has not previously been associated with the account.

### Potential Indicators

- New source IP address
- Unusual geographic location
- Authentication outside normal operating hours
- Multiple authentication attempts
- Authentication from an unmanaged device
- Sudden change in account behavior

### Initial Analyst Questions

1. Is the authentication expected?
2. Is the source IP associated with an approved system?
3. Was there a legitimate change or maintenance activity?
4. Is the account normally used from this location?
5. Did the account perform additional suspicious activity after authentication?

### Potential Severity

**High**

Because the account has privileged access.

### Recommended Analyst Action

Investigate the authentication event and correlate it with:

- Identity provider logs
- VPN logs
- Endpoint telemetry
- Network activity
- Privileged access logs

---

# Detection 2 — Abnormal Privileged Activity

## Alert

The privileged service account begins accessing systems or resources that are not consistent with its normal activity.

### Potential Indicators

- Access to previously unused systems
- Administrative actions outside normal patterns
- Unusual commands
- Unexpected configuration changes
- Access to sensitive resources

### Initial Analyst Questions

1. What does the account normally access?
2. What changed?
3. Was there an approved maintenance request?
4. Which systems were accessed?
5. What actions were performed?

### Recommended Analyst Action

Compare the activity against historical behavior and approved administrative activity.

If the activity cannot be validated, escalate for incident investigation.

---

# Detection 3 — Account Discovery Activity

## Alert

A privileged account performs unusual account enumeration or directory queries.

### Potential Indicators

- Large number of account queries
- Enumeration of administrative groups
- Discovery of privileged users
- Directory queries outside normal service-account behavior

### MITRE ATT&CK Mapping

**T1087 — Account Discovery**

### Analyst Questions

- Was this activity expected?
- Is the account authorized to perform directory discovery?
- Did the activity occur immediately after suspicious authentication?
- Were privileged accounts specifically targeted?

### Recommended Action

Correlate account discovery activity with authentication and endpoint events.

---

# Detection 4 — Network Service Scanning

## Alert

A production system generates an unusual number of connection attempts to internal systems.

### Potential Indicators

- High number of connection attempts
- Connections to multiple internal hosts
- Attempts to access uncommon ports
- Network behavior inconsistent with baseline activity

### MITRE ATT&CK Mapping

**T1046 — Network Service Scanning**

### Analyst Questions

1. Is the source system authorized to perform scanning?
2. Is this normal behavior for the account or host?
3. Did scanning begin shortly after suspicious authentication?
4. Which systems were targeted?

### Recommended Action

Investigate the source host and correlate network activity with endpoint and identity telemetry.

---

# Detection 5 — Credential Access Activity

## Alert

Endpoint monitoring detects suspicious activity involving credential stores.

### Potential Indicators

- Access to credential-related processes
- Suspicious administrative processes
- Unexpected access to authentication data
- Security software alerts

### MITRE ATT&CK Mapping

**T1003 — OS Credential Dumping**

### Analyst Questions

- Which process initiated the activity?
- Which user or account was responsible?
- Was the process legitimate?
- Was the host already associated with suspicious activity?
- Were additional credentials potentially exposed?

### Recommended Action

Consider isolating the affected endpoint and resetting potentially compromised credentials.

---

# Detection 6 — Lateral Movement

## Alert

A service account establishes remote sessions with multiple systems within a short period.

### Potential Indicators

- Remote authentication to multiple systems
- New administrative sessions
- Remote service activity
- Authentication patterns inconsistent with normal behavior

### MITRE ATT&CK Mapping

**T1021 — Remote Services**

### Analyst Questions

1. Is the account authorized to access those systems?
2. Has the account accessed those systems previously?
3. What occurred after the remote connection?
4. Were additional accounts or systems accessed?

### Recommended Action

Determine whether the activity represents legitimate administration or unauthorized lateral movement.

---

# Detection 7 — Sensitive Data Access

## Alert

The account accesses a large number of sensitive documents or information repositories.

### Potential Indicators

- Unusual file access volume
- Access outside normal business hours
- Access to previously unused repositories
- Large-scale data queries
- Access inconsistent with the account's normal responsibilities

### MITRE ATT&CK Mapping

**T1213 — Data from Information Repositories**

### Analyst Questions

- What information was accessed?
- Was the account authorized to access it?
- How much data was accessed?
- Did the account access multiple repositories?
- Did data movement occur afterward?

---

# Detection 8 — Potential Data Exfiltration

## Alert

The affected system generates an unusual amount of outbound traffic to an external destination.

### Potential Indicators

- Large outbound data transfer
- Unusual external destination
- New external connection
- Data transfer outside normal operating hours
- Unusual web-service activity

### MITRE ATT&CK Mapping

**T1567 — Exfiltration Over Web Service**

### Analyst Questions

1. What data was transferred?
2. Where was it sent?
3. Was the destination authorized?
4. How much data was transferred?
5. Was sensitive information included?
6. Did the transfer follow other suspicious activity?

### Recommended Action

Escalate immediately for potential data-loss investigation and preserve relevant network and endpoint evidence.

---

# Detection Correlation

Individual alerts may not provide enough evidence to confirm an incident.

However, multiple alerts occurring within the same timeframe may indicate a coordinated attack.

## Example Correlation

```text
Unusual Privileged Authentication
              ↓
Abnormal Privileged Activity
              ↓
Account Discovery
              ↓
Network Service Scanning
              ↓
Credential Access
              ↓
Lateral Movement
              ↓
Sensitive Data Access
              ↓
Potential Data Exfiltration
