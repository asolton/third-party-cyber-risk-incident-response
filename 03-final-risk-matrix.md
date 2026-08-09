# Third-Party Cybersecurity Risk Matrix

## Vendor

**NorthStar Cloud Solutions**

**Assessment Type:** Annual Third-Party Cybersecurity Risk Assessment

**Assessment Period:** 2026

**Vendor Classification:** Critical Third Party

---

## Risk Scoring Methodology

Risk is calculated using:

**Likelihood × Impact = Risk Score**

### Likelihood

| Score | Rating | Description |
|---|---|---|
| 1 | Rare | Event is highly unlikely to occur |
| 2 | Unlikely | Event is possible but not expected |
| 3 | Possible | Event could occur under certain conditions |
| 4 | Likely | Event is expected to occur under realistic conditions |
| 5 | Almost Certain | Event is highly likely or imminent |

### Impact

| Score | Rating | Description |
|---|---|---|
| 1 | Minimal | Limited operational or business impact |
| 2 | Minor | Small disruption with limited consequences |
| 3 | Moderate | Noticeable operational or business impact |
| 4 | Major | Significant operational, financial, or security impact |
| 5 | Severe | Potential for major compromise, disruption, or significant business impact |

### Risk Classification

| Score | Risk Level |
|---|---|
| 1–4 | Low |
| 5–9 | Moderate |
| 10–16 | High |
| 17–25 | Critical |

---

# Final Risk Assessment

| ID | Finding | Likelihood | Impact | Risk Score | Risk Level |
|---|---|---:|---:|---:|---|
| A | Privileged service accounts exempt from MFA | 4 | 5 | 20 | Critical |
| B | Critical vulnerabilities exceeding remediation SLA | 4 | 5 | 20 | Critical |
| C | Reduced log retention on three legacy systems | 3 | 3 | 9 | Moderate |
| D | 14-hour delay establishing communication with critical external provider | 3 | 5 | 15 | High |
| E | Critical subcontractors have not completed annual security assessments | 4 | 4 | 16 | High |
| F | SOC 2 privileged access control deficiency | 3 | 3 | 9 | Moderate |
| G | Disaster recovery test exceeded documented RTO | 3 | 3 | 9 | Moderate |

---

# Risk Findings

## A — Privileged Service Accounts Exempt from MFA

**Likelihood:** 4 — Likely

**Impact:** 5 — Severe

**Risk Score:** 20

**Risk Level:** Critical

### Analyst Assessment

Three privileged service accounts currently operate without multi-factor authentication due to application compatibility limitations.

The accounts have elevated privileges within production environments. The absence of MFA increases the potential for unauthorized access if credentials associated with these accounts are compromised.

Because the accounts possess privileged access, a successful compromise could potentially allow unauthorized access to production systems, sensitive data, or administrative functions.

### Recommended Priority

**Immediate remediation**

---

## B — Critical Vulnerabilities Exceeding Remediation SLA

**Likelihood:** 4 — Likely

**Impact:** 5 — Severe

**Risk Score:** 20

**Risk Level:** Critical

### Analyst Assessment

Two critical vulnerabilities affecting internet-facing systems exceeded NorthStar's 15-day remediation SLA.

One vulnerability remained unresolved for 27 days, while another remained unresolved for 34 days.

The combination of critical severity, internet-facing exposure, and extended remediation timelines increases the potential for successful exploitation.

Potential consequences include unauthorized access, data compromise, system compromise, or operational disruption.

### Recommended Priority

**Immediate remediation**

---

## C — Reduced Log Retention

**Likelihood:** 3 — Possible

**Impact:** 3 — Moderate

**Risk Score:** 9

**Risk Level:** Moderate

### Analyst Assessment

Three legacy systems retain security logs for 30 days instead of the organization's required 90-day retention period.

Although the systems maintain logging capabilities, reduced retention may limit an investigator's ability to reconstruct historical activity if a security incident is discovered after the 30-day period.

This could affect incident investigation, evidence preservation, and forensic analysis.

### Recommended Priority

**Remediation within established risk-management timeframe**

---

## D — Incident Response Communication Delay

**Likelihood:** 3 — Possible

**Impact:** 5 — Severe

**Risk Score:** 15

**Risk Level:** High

### Analyst Assessment

During the most recent incident response tabletop exercise, NorthStar required approximately 14 hours to establish communication with a critical external service provider.

The exercise identified a weakness in the organization's third-party communication and escalation procedures.

During an actual security incident, delayed communication could hinder containment, investigation, evidence preservation, coordination, and recovery.

### Recommended Priority

**High-priority remediation**

---

## E — Critical Subcontractor Security Assessments

**Likelihood:** 4 — Likely

**Impact:** 4 — Major

**Risk Score:** 16

**Risk Level:** High

### Analyst Assessment

Two critical subcontractors providing infrastructure support services had not completed their required annual security assessments.

Because these subcontractors support critical infrastructure services, incomplete assessments reduce NorthStar's visibility into the cybersecurity posture of organizations within its supply chain.

The lack of current assessment information may prevent NorthStar from identifying security weaknesses within critical third-party relationships.

### Recommended Priority

**High-priority remediation**

---

## F — SOC 2 Privileged Access Control Deficiency

**Likelihood:** 3 — Possible

**Impact:** 3 — Moderate

**Risk Score:** 9

**Risk Level:** Moderate

### Analyst Assessment

The vendor's SOC 2 Type II report identified a control deficiency related to privileged access management.

Management has established a remediation plan, and corrective action is currently in progress.

The finding remains relevant until remediation is completed and supporting evidence demonstrates that the control operates effectively.

Additional documentation should be requested to determine the exact scope of the deficiency and whether it overlaps with other privileged-access findings identified during this assessment.

### Recommended Priority

**Monitor remediation and validate closure**

---

## G — Disaster Recovery Exceeded RTO

**Likelihood:** 3 — Possible

**Impact:** 3 — Moderate

**Risk Score:** 9

**Risk Level:** Moderate

### Analyst Assessment

NorthStar's most recent disaster recovery test required five hours to restore operations against a documented Recovery Time Objective (RTO) of four hours.

Management has accepted the variance and established a remediation plan.

The one-hour variance may create additional operational disruption during a future recovery event. Continued monitoring and validation of the remediation plan are recommended.

### Recommended Priority

**Monitor remediation and validate future recovery testing**

---

# Overall Risk Summary

The assessment identified:

- **2 Critical risks**
- **2 High risks**
- **3 Moderate risks**
- **0 Low risks**

The most significant areas requiring management attention are privileged access, internet-facing vulnerabilities, third-party supply-chain security, and incident-response communication.

Immediate attention should be given to the privileged service accounts operating without MFA and the critical vulnerabilities that have exceeded the established remediation SLA.

High-priority remediation should also address incomplete security assessments for critical subcontractors and the communication delay identified during incident response testing.

Moderate findings should remain under active monitoring until remediation is completed and evidence demonstrates that the identified control gaps have been addressed.

---

# Analyst Recommendation

Based on the findings identified during this assessment, NorthStar Cloud Solutions should **not be rejected solely on the basis of the identified findings**.

Instead, the vendor should be considered for:

**Conditional Approval with Remediation Requirements**

Continued vendor approval should be contingent upon timely remediation of Critical and High-risk findings, management oversight, and validation that corrective actions have been successfully implemented.

Critical findings should receive immediate remediation attention, while High-risk findings should be assigned documented owners, target completion dates, and ongoing monitoring.

Final approval should be subject to the organization's established third-party risk acceptance criteria and risk tolerance.
