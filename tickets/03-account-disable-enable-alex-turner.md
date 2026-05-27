# Ticket 03 - Account Disable and Re-enable - Alex Turner

## Issue
Alex Turner needed account access disabled and later restored as part of an account lifecycle support workflow.

## Environment
- Domain: `ryanlab.local`
- Domain controller: `RYANLAB-DC01`
- User account: Alex Turner
- Tool used: Active Directory Users and Computers

## Troubleshooting Steps
1. Opened Active Directory Users and Computers on the domain controller.
2. Located Alex Turner under the RyanLab Users OU.
3. Disabled the user account and confirmed the success message.
4. Re-enabled the user account and confirmed the success message.

## Resolution
The account disable and re-enable workflow was completed successfully. Screenshots 38 and 39 document both account lifecycle changes.

## Screenshot References
- `screenshots/active-directory/38-account-disabled-alex-turner.png`
- `screenshots/active-directory/39-account-enabled-alex-turner.png`

## Help Desk Skill Demonstrated
Account lifecycle support, access control, offboarding-style account handling, restoring access, and audit-friendly documentation.
