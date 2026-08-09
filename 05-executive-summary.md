# Executive Summary

## Third-Party Cybersecurity Risk Assessment

**Vendor:** NorthStar Cloud Solutions

**Assessment Period:** 2026

**Vendor Classification:** Critical Third Party

**Assessment Type:** Annual Third-Party Cybersecurity Risk Assessment

---

## Executive Overview

NorthStar Cloud Solutions was evaluated as part of an annual third-party cybersecurity risk assessment due to its classification as a critical technology provider.

The assessment reviewed the vendor's cybersecurity governance, identity and access management, vulnerability management, data protection, logging and monitoring, incident response, business continuity, subcontractor security, and security assurance practices.

Overall, NorthStar demonstrates an established cybersecurity program with documented policies, security controls, monitoring capabilities, incident response procedures, and business continuity processes.

However, the assessment identified several control gaps requiring remediation and continued management oversight.

---

## Key Risk Findings

The assessment identified:

- **2 Critical risks**
- **2 High risks**
- **3 Moderate risks**
- **0 Low risks**

### Critical Risks

**1. Privileged Service Accounts Without MFA**

Three privileged service accounts operating within production environments are exempt from multi-factor authentication due to application compatibility limitations.

The absence of MFA increases the potential for unauthorized privileged access if account credentials are compromised.

**Risk Score: 20 — Critical**

---

**2. Critical Vulnerabilities Exceeding Remediation SLA**

Two critical vulnerabilities affecting internet-facing systems exceeded the organization's 15-day remediation SLA.

The extended remediation timelines increase the potential for successful exploitation and associated business impact.

**Risk Score: 20 — Critical**

---

## High Risks

### Critical Subcontractor Security Assessments

Two critical infrastructure subcontractors have not completed their required annual security assessments.

This creates reduced visibility into the cybersecurity posture of organizations supporting NorthStar's critical infrastructure services.

**Risk Score: 16 — High**

---

### Incident Response Communication Delay

A tabletop exercise identified a 14-hour delay in establishing communication with a critical external service provider.

During an actual incident, delayed communication could hinder containment, investigation, evidence preservation, coordination, and recovery.

**Risk Score: 15 — High**

---

## Moderate Risks

Additional Moderate findings were identified involving:

- Reduced log retention on legacy systems
- A SOC 2 privileged access control deficiency
- Disaster recovery performance exceeding the documented RTO

These findings should remain under active remediation monitoring until corrective actions are validated.

---

# Management Priorities

Based on the assessment results, management should prioritize the following actions:

### Priority 1 — Privileged Access

Eliminate MFA exemptions for privileged service accounts where technically feasible.

Where immediate MFA implementation is not possible, establish and validate appropriate compensating controls such as Privileged Access Management, credential rotation, restricted access, and enhanced monitoring.

### Priority 2 — Critical Vulnerabilities

Immediately remediate or appropriately mitigate the two critical vulnerabilities affecting internet-facing systems.

Validation scans should be performed following remediation.

### Priority 3 — Supply Chain Risk

Complete security assessments for critical subcontractors and ensure identified risks are documented, assigned, and remediated or formally accepted.

### Priority 4 — Incident Response

Strengthen third-party incident communication procedures by establishing defined escalation paths, backup communication methods, and response time requirements.

A follow-up tabletop exercise should be conducted to validate the effectiveness of the improvements.

---

# Overall Recommendation

Based on the evidence reviewed, NorthStar Cloud Solutions should be considered for:

## Conditional Approval With Remediation Requirements

The vendor demonstrates an established cybersecurity program and maintains several important security controls.

However, continued approval should be contingent upon timely remediation of Critical and High-risk findings.

Management should establish clear remediation owners, target completion dates, evidence requirements, and validation procedures.

Critical findings should receive immediate remediation attention, while High-risk findings should remain under active management oversight until validated as remediated.

Final vendor approval should remain subject to the organization's established third-party risk tolerance, risk acceptance procedures, and applicable business requirements.

---

# Assessment Limitations

This assessment is based on simulated vendor evidence created for cybersecurity portfolio and educational purposes.

No actual Toyota systems, vendors, employees, credentials, or confidential information were accessed or evaluated.

The assessment demonstrates a simulated third-party cybersecurity risk management process and should not be interpreted as an actual assessment of Toyota or any real organization.

---

# Analyst Conclusion

The assessment demonstrates the importance of evaluating third-party cybersecurity risk beyond the presence of security certifications or documented policies.

Effective third-party risk management requires ongoing evaluation of control effectiveness, risk prioritization, remediation tracking, evidence validation, and communication with business stakeholders.

NorthStar should continue improving its security program while prioritizing the identified Critical and High-risk findings.
