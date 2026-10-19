---
name: Test report
about: Report the results of running an Autopilot Deployment Doctor beta script
title: "[Test report] <script name>"
labels: test-report
---

<!--
BEFORE YOU POST: remove tenant names, tenant IDs, device IDs, user/object IDs,
UPNs and email addresses, serial numbers, hostnames, and any secrets, tokens
or client secrets. Replace them with placeholders like <TENANT>, <DEVICE-ID>, <UPN>.
Do not attach unredacted HTML/JSON reports or log files.
-->

## Script (version from the report header)
- [ ] scripts/Invoke-TenantPreCheck.ps1
- [ ] scripts/Invoke-DeviceDiagnostic.ps1

## Environment
- Tenant type (test / production-like / dev):
- Windows version and build:
- PowerShell version (`$PSVersionTable.PSVersion`):
- Microsoft.Graph.Authentication version (tenant script):
- Deployment type (Autopilot v1 user-driven / pre-provisioning / self-deploying / Device Prep):
- Run context (admin / SYSTEM / Shift+F10 / -SamplePath (fake data)):

## Results
- What did you expect?
- What did the script report (redacted)?
- Were the findings correct? Any false positives or missed issues?

## Permission
- [ ] ZakitPro may count this report when deciding whether the kit is ready to release.
- [ ] ZakitPro may quote a short excerpt of this report, credited to my GitHub handle.
- [ ] Same as above, but keep me anonymous.

## Errors
Paste redacted error messages or warnings here.

```
<redacted output>
```
