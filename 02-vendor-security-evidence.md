# Vendor Security Evidence

## Vendor

**NorthStar Cloud Solutions**

**Vendor Classification:** Critical Third Party

**Assessment Type:** Annual Third-Party Cybersecurity Risk Assessment

**Assessment Period:** 2026

---

## 1. Security Governance

NorthStar maintains an information security program overseen by a Chief Information Security Officer (CISO).

### Evidence

- Information Security Policy: Current
- Risk Management Policy: Current
- Security Awareness Training: Required annually
- Employee Security Training Completion: 96%
- Security Awareness Program: Documented
- Security Risk Assessments: Conducted annually

### Observation

4% of employees had not completed annual security awareness training at the time of assessment.

---

# 2. Identity & Access Management

NorthStar uses centralized identity management and role-based access controls.

### Evidence

- Single Sign-On (SSO): Enabled
- Multi-Factor Authentication (MFA): Enabled
- Privileged Access Management (PAM): Implemented
- Quarterly Access Reviews: Required
- Terminated Employee Access: Automatically disabled through HR integration

### Finding

MFA is required for standard user accounts.

However, **three legacy privileged service accounts are currently exempt from MFA due to application compatibility limitations.**

These accounts have elevated privileges within production environments.

---

# 3. Vulnerability Management

NorthStar performs vulnerability scanning on production systems.

### Evidence

- Automated Vulnerability Scanning: Weekly
- External Penetration Testing: Annually
- Internal Penetration Testing: Annually
- Critical Vulnerability Remediation SLA: 15 days
- High Vulnerability Remediation SLA: 30 days

### Finding

During the assessment, **two critical vulnerabilities exceeded the 15-day remediation SLA.**

One vulnerability remained unresolved for 27 days.

The second remained unresolved for 34 days.

Both vulnerabilities affected internet-facing systems.

---

# 4. Data Protection

NorthStar processes and stores customer business data.

### Evidence

- Encryption at Rest: AES-256
- Encryption in Transit: TLS 1.2+
- Data Classification Policy: Implemented
- Data Loss Prevention (DLP): Implemented
- Customer Data Segmentation: Implemented
- Data Retention Policy: Documented

### Observation

Customer data is encrypted at rest and in transit.

No significant control deficiencies were identified in this area.

---

# 5. Logging & Monitoring

NorthStar maintains centralized logging and security monitoring.

### Evidence

- Security Information and Event Management (SIEM): Implemented
- Authentication Logging: Enabled
- Privileged Activity Logging: Enabled
- Security Alerts: Monitored 24/7
- Log Retention: 90 days

### Finding

Privileged account activity is logged; however, **logs from three legacy systems are retained for only 30 days.**

The organization's standard requires 90-day retention.

---

# 6. Incident Response

NorthStar maintains a documented incident response plan.

### Evidence

- Incident Response Plan: Current
- Incident Response Team: Established
- Incident Escalation Procedures: Documented
- Customer Notification Procedures: Documented
- Incident Response Tabletop Exercise: Conducted annually

### Finding

NorthStar's most recent tabletop exercise identified a weakness in third-party communication procedures.

During the exercise, the organization took approximately **14 hours to establish communication with a critical external service provider.**

The organization has not yet completed the corrective action associated with this finding.

---

# 7. Business Continuity & Disaster Recovery

NorthStar maintains business continuity and disaster recovery plans.

### Evidence

- Disaster Recovery Plan: Documented
- Backup Strategy: Implemented
- Backup Encryption: Enabled
- Disaster Recovery Testing: Annual
- Recovery Time Objective (RTO): 4 hours
- Recovery Point Objective (RPO): 1 hour

### Observation

The most recent disaster recovery test achieved an RTO of 5 hours.

The documented objective is 4 hours.

Management has accepted the variance and established a remediation plan.

---

# 8. Third-Party Security

NorthStar maintains a vendor risk management program.

### Evidence

- Vendor Security Assessments: Annual
- Critical Vendor Classification: Implemented
- Contractual Security Requirements: Required
- Security Incident Notification Requirements: Included in contracts

### Finding

Two critical subcontractors used by NorthStar had not completed their annual security assessments at the time of this review.

The subcontractors provide infrastructure support services.

---

# 9. Security Certifications & Assurance

NorthStar provided the following documentation:

- SOC 2 Type II Report
- ISO/IEC 27001 Certification
- Annual Penetration Test Summary
- Business Continuity Test Summary
- Vulnerability Management Summary

### SOC 2 Review

The SOC 2 Type II report identified **one control deficiency related to privileged access management.**

Management's remediation plan is currently in progress.

---

# Initial Analyst Summary

The vendor demonstrates a mature cybersecurity program with established security governance, identity management, vulnerability management, incident response, data protection, and business continuity processes.

However, several findings require additional review:

1. MFA exemptions for privileged service accounts
2. Critical vulnerabilities exceeding remediation SLAs
3. Reduced log retention for legacy systems
4. Delayed third-party communication during incident response testing
5. Incomplete security assessments for critical subcontractors
6. SOC 2 privileged access control deficiency
7. Disaster recovery test exceeding the documented RTO
