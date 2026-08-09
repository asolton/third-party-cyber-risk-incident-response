# Third-Party Cybersecurity Risk Matrix

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

# Risk Assessment

| ID | Finding | Likelihood | Impact | Risk Score | Risk Level |
|---|---|---:|---:|---:|---|
| A | Privileged service accounts exempt from MFA | 4 | 5 | 20 | Critical |
| B | Critical vulnerabilities exceeding remediation SLA | 4 | 5 | 20 | Critical |
| C | Reduced log retention on three legacy systems | TBD | TBD | TBD | TBD |
| D | 14-hour delay establishing communication with critical external provider | 3 | 5 | 15 | High |
| E | Critical subcontractors have not completed annual security assessments | TBD | TBD | TBD | TBD |
| F | SOC 2 privileged access control deficiency | TBD | TBD | TBD | TBD |
| G | Disaster recovery test exceeded documented RTO | TBD | TBD | TBD | TBD |

---

# Analyst Rationale

## A — Privileged Service Accounts Exempt from MFA

Three privileged service accounts currently operate without multi-factor authentication due to application compatibility limitations.

The likelihood is assessed as **4 (Likely)** because the accounts possess elevated production access and lack an additional authentication factor. The absence of MFA increases the potential for unauthorized access if credentials are compromised.

The impact is assessed as **5 (Severe)** because compromise of a privileged account could potentially result in unauthorized access to production systems, data, or administrative functions.

**Risk Score: 20 — Critical**

---

## B — Critical Vulnerabilities Exceeding SLA

Two critical vulnerabilities affecting internet-facing systems exceeded the organization's 15-day remediation SLA.

The likelihood is assessed as **4 (Likely)** due to the severity of the vulnerabilities, internet-facing exposure, and extended remediation timelines.

The impact is assessed as **5 (Severe)** because successful exploitation could potentially result in unauthorized access, data compromise, system compromise, or operational disruption.

**Risk Score: 20 — Critical**

---

## D — Incident Response Communication Delay

During the most recent incident response tabletop exercise, NorthStar required approximately 14 hours to establish communication with a critical external service provider.

The likelihood is assessed as **3 (Possible)** because the finding was identified during a simulated exercise and does not demonstrate that every future incident will result in the same delay.

The impact is assessed as **5 (Severe)** because delayed communication during an actual incident could hinder containment, investigation, evidence preservation, coordination, and recovery.

**Risk Score: 15 — High**
