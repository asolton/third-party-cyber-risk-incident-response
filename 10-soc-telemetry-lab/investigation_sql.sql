-- SOC Telemetry Investigation
-- Simulated cybersecurity incident
-- Purpose: demonstrate SQL-based security investigation techniques


-- ============================================================
-- 1. Identify repeated authentication by the privileged account
-- ============================================================

SELECT
    username,
    COUNT(*) AS authentication_count
FROM authentication_logs
WHERE username = 'svc-production-admin'
GROUP BY username;


-- ============================================================
-- 2. Identify systems accessed by the privileged account
-- ============================================================

SELECT
    timestamp,
    username,
    source_ip,
    destination_system,
    authentication_method,
    status
FROM authentication_logs
WHERE username = 'svc-production-admin'
ORDER BY timestamp;


-- ============================================================
-- 3. Identify privileged authentication from unfamiliar sources
-- ============================================================

SELECT
    timestamp,
    username,
    source_ip,
    destination_system,
    authentication_method
FROM authentication_logs
WHERE account_type = 'privileged-service'
  AND source_ip NOT LIKE '10.10.%'
ORDER BY timestamp;


-- ============================================================
-- 4. Identify endpoint credential-access activity
-- ============================================================

SELECT
    timestamp,
    hostname,
    username,
    process_name,
    parent_process,
    event_type,
    action,
    result
FROM endpoint_events
WHERE event_type = 'Credential Access'
ORDER BY timestamp;


-- ============================================================
-- 5. Identify discovery activity performed by the account
-- ============================================================

SELECT
    timestamp,
    hostname,
    username,
    event_type,
    action,
    result
FROM endpoint_events
WHERE username = 'svc-production-admin'
  AND event_type IN (
      'Account Discovery',
      'Group Discovery',
      'Network Discovery'
  )
ORDER BY timestamp;


-- ============================================================
-- 6. Identify remote activity
-- ============================================================

SELECT
    timestamp,
    hostname,
    username,
    event_type,
    action,
    result
FROM endpoint_events
WHERE username = 'svc-production-admin'
  AND event_type = 'Remote Activity'
ORDER BY timestamp;


-- ============================================================
-- 7. Identify sensitive-data access
-- ============================================================

SELECT
    timestamp,
    hostname,
    username,
    event_type,
    action,
    result
FROM endpoint_events
WHERE username = 'svc-production-admin'
  AND event_type IN (
      'Data Access',
      'Data Collection'
  )
ORDER BY timestamp;


-- ============================================================
-- 8. Identify large outbound network transfers
-- ============================================================

SELECT
    timestamp,
    source_host,
    username,
    destination_ip,
    destination_host,
    destination_port,
    protocol,
    bytes_transferred,
    result
FROM network_events
WHERE bytes_transferred >= 52428800
ORDER BY timestamp;


-- ============================================================
-- 9. Identify outbound traffic to external destinations
-- ============================================================

SELECT
    timestamp,
    source_host,
    username,
    destination_ip,
    destination_host,
    destination_port,
    protocol,
    bytes_transferred,
    result
FROM network_events
WHERE destination_ip NOT LIKE '10.10.%'
ORDER BY timestamp;


-- ============================================================
-- 10. Build a timeline of potentially related activity
-- ============================================================

SELECT
    timestamp,
    'AUTHENTICATION' AS telemetry_source,
    username,
    destination_system AS affected_system,
    authentication_method AS activity,
    status AS result
FROM authentication_logs
WHERE username = 'svc-production-admin'

UNION ALL

SELECT
    timestamp,
    'ENDPOINT' AS telemetry_source,
    username,
    hostname AS affected_system,
    action AS activity,
    result
FROM endpoint_events
WHERE username = 'svc-production-admin'

UNION ALL

SELECT
    timestamp,
    'NETWORK' AS telemetry_source,
    username,
    destination_host AS affected_system,
    connection_type AS activity,
    result
FROM network_events
WHERE username = 'svc-production-admin'

ORDER BY timestamp;
