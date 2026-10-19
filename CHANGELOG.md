# Changelog
Script versions for this beta repository. Script versions are numbered separately from the paid kit (guide) versions; the matching kit version is listed for each release. The scripts in each release are byte-identical to the ones in the matching paid kit.

## 2026-10-19: scripts 1.3.3 (Kit 1 v1.4.3)
- Beta runs print one plain "Next step" line at the end (console, and the HTML report footer as text, not a link) pointing to the waitlist page. It only appears when the script is run with the trimmed beta `known-causes.json`, so the same script in the paid kit prints nothing extra. No network calls, no telemetry, nothing is opened.

## 2026-10-16: repository split (scripts 1.3.2, Kit 1 v1.4.2)
- Moved from the combined `zakopenc/deployment-doctor-beta` repo (now archived) into this repo. Script files are unchanged; only the folder layout, README, tests' paths and sample report changed.

## 2026-10-16: scripts 1.3.2 (Kit 1 v1.4.2)
- Tenant pre-check: with a Standard-user Device Prep policy, the Entra local-admin check reports Warn, not Pass, when that setting can't be read. An empty Graph object no longer turns the check into NotChecked.
- HTML report: Scope and Check columns no longer break words mid-word. Sample data uses fixed timestamps.

## 2026-10-16: scripts 1.3.1 (Kit 1 v1.4.1)
- Tenant pre-check: the Device Prep service principal and custom-role checks report Info ("Not applicable now") when the tenant has no Device Prep policy. The report's Finding column shows the actual detail.
- Device diagnostic: new `-SamplePath` mode that runs on fake data in `sample-data` and reads nothing on the computer. TPM log-collection text follows Learn.

## 2026-10-16: scripts 1.3.0 (Kit 1 v1.4.0)
- HTML dashboard report: health score, status cards, filters, light/dark themes, print layout, `-NoHtml`. Any Critical finding caps the score at 49.

## 2026-10-16: first beta release (scripts 1.3.0, Kit 1 v1.3.0)
- Read-only scripts with Pester tests.
