# SOC Telemetry Investigation

## 1. Investigation Overview

This simulated SOC investigation evaluates suspicious activity involving the privileged service account `svc-production-admin`.

The investigation began after repeated privileged authentications were observed from the unfamiliar source IP `198.51.100.24`. Authentication, endpoint, and network telemetry were correlated to determine whether the activity represented legitimate administrative behavior or a potential security incident.

**Investigation Date:** June 15, 2026
**Account:** `svc-production-admin`
**Account Type:** Privileged Service Account
**Source IP:** `198.51.100.24`
**Classification:** Likely Security Incident Requiring Containment
**Status:** Simulated Investigation

---

## 2. Initial Detection

The investigation was initially triggered by repeated authentication activity involving a privileged service account.

The account authenticated to multiple production systems from the same unfamiliar source IP using password-based authentication without an MFA requirement.

Systems observed during the investigation included:

* `prod-app-01`
* `prod-db-01`
* `prod-file-01`
* `prod-admin-01`
* `prod-app-02`
* `prod-db-02`
* `prod-file-02`
* `prod-data-01`
* `external-transfer-gateway`

The authentication pattern was considered suspicious because the account was privileged, the source IP was unfamiliar, MFA was not required, and the account accessed multiple production systems in a relatively short period.

---

## 3. Authentication Analysis

The account `svc-production-admin` generated 11 authentication events during the investigation window.

The repeated authentication activity across multiple production systems warranted additional investigation.

Authentication telemetry alone did not establish that the account had been compromised. However, the combination of privileged access, unfamiliar source infrastructure, lack of MFA, and subsequent endpoint and network activity increased the risk that the account was being used without authorization.

---

## 4. Endpoint Investigation

Endpoint telemetry showed a progression of activity involving the privileged account.

### Observed Activity

* PowerShell process execution
* Account enumeration
* Privileged group enumeration
* Network service scanning
* Credential-store access
* Credential-access alert
* Remote session initiation
* Sensitive repository access
* Large file reads
* Sensitive data queries
* Data archive creation
* Outbound transfer initiation

The credential-access event at approximately 09:42 represented a significant escalation point.

The telemetry confirmed that credential-access behavior was detected, but it did not independently establish that credentials were successfully extracted.

---

## 5. Network Investigation

Network telemetry provided additional evidence supporting the endpoint investigation.

At approximately 09:31, internal connections were observed between production systems using:

* TCP/SSH on port 22
* TCP/RDP on port 3389

Later in the investigation, outbound HTTPS traffic was observed to an external destination.

The outbound transfer volume increased over the investigation period:

* Approximately 5 MB — Allowed
* Approximately 10 MB — Allowed
* Approximately 50 MB — Allowed
* Approximately 100 MB — Detected
* Approximately 120 MB — Blocked

The increasing outbound traffic occurred after sensitive-data access and data archiving activity.

This sequence was consistent with potential attempted data exfiltration, although additional validation would be required to determine exactly what information was transferred and whether the transfer was successful.

---

## 6. Correlated Attack Sequence

The combined telemetry established the following simulated timeline:

| Time  | Activity                                         |
| ----- | ------------------------------------------------ |
| 09:12 | Privileged authentication from unfamiliar source |
| 09:14 | PowerShell execution                             |
| 09:24 | Account discovery                                |
| 09:26 | Privileged group discovery                       |
| 09:31 | Network service scanning                         |
| 09:42 | Credential-access behavior detected              |
| 09:51 | Remote session initiated                         |
| 10:03 | Sensitive repository accessed                    |
| 10:08 | Large file read                                  |
| 10:15 | Sensitive data queried                           |
| 10:21 | Data archive created                             |
| 10:27 | Outbound transfer initiated                      |
| 10:29 | Large outbound transfer detected                 |
| 10:35 | Suspicious activity alert and transfer blocked   |

The correlation of authentication, endpoint, and network telemetry increased confidence that the activity represented a likely security incident rather than isolated administrative activity.

---

## 7. Incident Classification

**Classification: Likely Security Incident Requiring Containment**

The classification was based on multiple correlated indicators:

1. Privileged account activity
2. Unfamiliar source IP
3. Password-based authentication without MFA
4. Account and privilege discovery
5. Network scanning
6. Credential-access behavior
7. Remote sessions
8. Sensitive-data access
9. Data archiving
10. Increasing outbound network traffic
11. Large outbound transfer detection

The available evidence did not independently prove successful credential theft or successful data exfiltration. Those conclusions would require additional validation.

---

## 8. Recommended Containment and Escalation

The recommended immediate response is to:

1. Disable or isolate the affected privileged service account.
2. Preserve relevant authentication, endpoint, and network evidence.
3. Escalate the incident to the incident-response team.
4. Validate whether the unfamiliar source IP is authorized.
5. Review recent activity involving the affected service account.
6. Identify systems and data accessed during the incident window.
7. Determine whether credentials were successfully compromised.
8. Determine whether sensitive information was successfully transferred.
9. Review and preserve relevant security alerts and logs.
10. Investigate why the earlier credential-access alert did not result in immediate containment.

Files and affected systems should not be unnecessarily deleted or destroyed during the initial investigation because doing so could compromise forensic evidence.

---

## 9. Investigation Conclusion

Based on the correlation of authentication, endpoint, and network telemetry, the simulated activity should be escalated as a likely security incident requiring containment.

The evidence demonstrates a progression from privileged authentication and discovery activity through credential-access behavior, remote activity, sensitive-data access, data collection, and suspicious outbound traffic.

The investigation does not assume successful credential theft or successful data exfiltration without additional validation. Instead, those outcomes remain investigation objectives.

The primary SOC priorities are **containment, evidence preservation, validation, escalation, and continued monitoring**.

---

## 10. Analyst Takeaways

This investigation demonstrates the importance of correlating multiple telemetry sources rather than relying on a single alert.

**Authentication logs** help identify who accessed systems and from where.

**Endpoint telemetry** helps identify what occurred on the host.

**Network telemetry** helps identify communication between systems and external destinations.

When these sources are correlated, analysts can build a more accurate incident timeline, assess risk, identify potential attack stages, and make informed containment decisions.
