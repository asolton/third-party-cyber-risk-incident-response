# Third-Party Cybersecurity Remediation Plan

## Vendor

**NorthStar Cloud Solutions**

**Assessment Type:** Annual Third-Party Cybersecurity Risk Assessment

**Assessment Period:** 2026

---

# Remediation Approach

The remediation plan prioritizes findings based on risk severity, business impact, exploitability, and the effectiveness of existing controls.

Critical and High-risk findings require prioritized remediation and management oversight.

Each remediation action should have:

- A clearly defined remediation activity
- An accountable owner
- A target completion timeframe
- Evidence requirements
- Validation criteria
- Escalation procedures if remediation is delayed

---

# Finding A — Privileged Service Accounts Exempt from MFA

**Risk Level:** Critical

**Risk Score:** 20

**Priority:** Immediate

### Finding

Three privileged service accounts operating within production environments are exempt from multi-factor authentication due to application compatibility limitations.

### Recommended Remediation

NorthStar should eliminate MFA exemptions for privileged accounts where technically feasible.

The organization should evaluate whether the affected applications can support:

- Modern authentication methods
- Service account modernization
- Managed identities
- Privileged Access Management (PAM)
- Certificate-based authentication
- Alternative compensating controls

If MFA cannot immediately be implemented, NorthStar should establish documented compensating controls.

Potential compensating controls include:

- PAM enforcement
- Restricted network access
- Credential rotation
- Session monitoring
- Privileged activity logging
- Just-in-time access
- Enhanced alerting

### Responsible Owner

**Identity & Access Management (IAM) Team**

### Target Timeline

**30 days**

### Required Evidence

- Updated MFA configuration
- Service account inventory
- PAM configuration
- Authentication logs
- Evidence of successful control testing

### Validation Criteria

The risk may be considered remediated when:

1. MFA is enabled for the affected privileged accounts, or
2. A formally approved compensating control is implemented and validated, and
3. Evidence demonstrates that unauthorized privileged access is appropriately restricted and monitored.

---

# Finding B — Critical Vulnerabilities Exceeding SLA

**Risk Level:** Critical

**Risk Score:** 20

**Priority:** Immediate

### Finding

Two critical vulnerabilities affecting internet-facing systems exceeded NorthStar's 15-day remediation SLA.

### Recommended Remediation

NorthStar should immediately prioritize remediation of the affected vulnerabilities.

Recommended actions include:

1. Confirm the affected assets.
2. Determine whether the vulnerabilities are actively exploitable.
3. Apply available security patches or vendor-approved mitigations.
4. Restrict external exposure where possible.
5. Perform vulnerability rescanning after remediation.
6. Review whether similar vulnerabilities exist elsewhere in the environment.
7. Document the reason for the SLA violation.

### Responsible Owner

**Vulnerability Management / Infrastructure Security Team**

### Target Timeline

**Immediate — within 7 days**

### Required Evidence

- Patch/change records
- Vulnerability scan results
- Remediation tickets
- Updated vulnerability reports
- Validation scans

### Validation Criteria

The finding may be considered remediated when:

- The vulnerabilities are confirmed as patched or appropriately mitigated.
- Validation scans confirm remediation.
- Internet-facing exposure has been appropriately addressed.
- Any related vulnerabilities have been reviewed.

---

# Finding C — Reduced Log Retention

**Risk Level:** Moderate

**Risk Score:** 9

**Priority:** Medium

### Finding

Three legacy systems retain security logs for 30 days instead of the organization's required 90-day retention period.

### Recommended Remediation

NorthStar should align the affected systems with the organization's 90-day logging requirement.

Recommended actions include:

- Configure centralized log forwarding where technically feasible.
- Increase retention to 90 days.
- Review available storage requirements.
- Confirm logs are protected from unauthorized modification or deletion.
- Verify that security teams can retrieve historical logs when needed.

### Responsible Owner

**Security Operations / SIEM Team**

### Target Timeline

**60 days**

### Required Evidence

- Updated log retention configuration
- SIEM configuration
- Sample log retrieval
- Retention validation report

### Validation Criteria

The finding may be considered remediated when security logs from the affected systems are retained and retrievable for at least 90 days.

---

# Finding D — Incident Response Communication Delay

**Risk Level:** High

**Risk Score:** 15

**Priority:** High

### Finding

During a tabletop exercise, NorthStar required approximately 14 hours to establish communication with a critical external service provider.

### Recommended Remediation

NorthStar should improve third-party incident communication and escalation procedures.

Recommended actions include:

- Establish a documented third-party escalation matrix.
- Identify primary and secondary contacts.
- Maintain current contact information.
- Define notification timeframes.
- Establish backup communication channels.
- Include third-party communication requirements in incident response procedures.
- Conduct another tabletop exercise after remediation.

### Responsible Owner

**Incident Response / Security Operations Team**

### Target Timeline

**30 days**

### Required Evidence

- Updated incident response plan
- Third-party contact matrix
- Escalation procedures
- Tabletop exercise results
- Contact validation records

### Validation Criteria

The remediation should be considered effective when a subsequent tabletop exercise demonstrates that critical third-party communication can be established within the organization's defined response timeframe.

---

# Finding E — Critical Subcontractor Security Assessments

**Risk Level:** High

**Risk Score:** 16

**Priority:** High

### Finding

Two critical subcontractors providing infrastructure support services have not completed their required annual security assessments.

### Recommended Remediation

NorthStar should complete security assessments for all critical subcontractors.

Recommended actions include:

- Identify outstanding assessments.
- Request current security documentation.
- Review SOC reports, certifications, penetration testing results, and security questionnaires.
- Evaluate identified control gaps.
- Document risk acceptance where appropriate.
- Establish escalation procedures for subcontractors that fail to complete assessments.

### Responsible Owner

**Third-Party Risk Management Team**

### Target Timeline

**30 days**

### Required Evidence

- Completed security assessments
- SOC 2 or equivalent assurance reports
- Security questionnaires
- Risk assessment results
- Remediation documentation

### Validation Criteria

The finding may be considered remediated when both critical subcontractors have completed security assessments and identified risks have been documented and addressed.

---

# Finding F — SOC 2 Privileged Access Control Deficiency

**Risk Level:** Moderate

**Risk Score:** 9

**Priority:** Medium

### Finding

The vendor's SOC 2 Type II report identified a privileged access control deficiency.

Management has an active remediation plan.

### Recommended Remediation

NorthStar should provide evidence demonstrating:

- The specific control deficiency
- Root cause
- Corrective action
- Remediation timeline
- Control owner
- Testing results

NorthStar should also determine whether the SOC 2 finding overlaps with the privileged service account MFA issue identified during this assessment.

### Responsible Owner

**Compliance / Identity & Access Management Team**

### Target Timeline

**60 days**

### Required Evidence

- SOC 2 remediation documentation
- Updated control procedures
- Control testing results
- Evidence of remediation
- Independent validation where available

### Validation Criteria

The finding may be considered remediated when corrective actions are completed and evidence demonstrates that the affected privileged access control is operating effectively.

---

# Finding G — Disaster Recovery Exceeded RTO

**Risk Level:** Moderate

**Risk Score:** 9

**Priority:** Medium

### Finding

NorthStar's most recent disaster recovery test required five hours to restore operations against a documented Recovery Time Objective (RTO) of four hours.

### Recommended Remediation

NorthStar should analyze the cause of the one-hour recovery variance and determine whether additional improvements are required.

Recommended actions include:

- Conduct root cause analysis.
- Identify recovery bottlenecks.
- Review backup and restoration procedures.
- Evaluate infrastructure capacity.
- Update recovery procedures where necessary.
- Conduct another recovery test.

### Responsible Owner

**Business Continuity / Disaster Recovery Team**

### Target Timeline

**90 days**

### Required Evidence

- Root cause analysis
- Updated recovery procedures
- Recovery test results
- RTO performance metrics

### Validation Criteria

The finding may be considered remediated when a subsequent recovery test demonstrates achievement of the organization's four-hour RTO or management formally approves a revised RTO based on documented business requirements.

---

# Remediation Monitoring

NorthStar should provide periodic remediation updates for all Critical and High-risk findings.

The assessment team should track:

- Finding status
- Assigned owner
- Target completion date
- Current remediation progress
- Evidence received
- Validation status
- Risk acceptance
- Escalation status

## Status Definitions

| Status | Definition |
|---|---|
| Open | Finding has been identified and remediation has not started |
| In Progress | Remediation activities are underway |
| Pending Validation | Remediation is complete and evidence is awaiting review |
| Remediated | Evidence confirms the control gap has been addressed |
| Risk Accepted | Management has formally accepted the remaining risk |
| Overdue | Target remediation date has passed without successful closure |

---

# Overall Remediation Recommendation

NorthStar should prioritize the two Critical findings immediately:

1. Privileged service accounts without MFA
2. Critical vulnerabilities affecting internet-facing systems

High-risk findings involving critical subcontractor assessments and incident response communication should receive prioritized remediation and management oversight.

Moderate findings should remain under active monitoring until remediation is validated.

All remediation activities should be supported by objective evidence and independently validated before the associated risk is considered closed.
