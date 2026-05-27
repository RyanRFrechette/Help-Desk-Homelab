# Ticket 04 - Group Membership Access Change - Alex Turner

## Issue
Alex Turner needed access associated with the Sales-Shared security group.

## Environment
- Domain: `ryanlab.local`
- Domain controller: `RYANLAB-DC01`
- User account: Alex Turner
- Security group: `Sales-Shared`
- Tool used: Active Directory Users and Computers

## Troubleshooting Steps
1. Opened Active Directory Users and Computers on the domain controller.
2. Located Alex Turner under the RyanLab Users OU.
3. Used Add to a group to add Alex Turner to the Sales-Shared security group.
4. Confirmed Active Directory reported the group membership update successfully.

## Resolution
Alex Turner was added to the Sales-Shared security group successfully. Screenshot 40 documents the completed group membership change.

## Screenshot Reference
- `screenshots/active-directory/40-group-membership-add-success-alex-turner-sales-shared.png`

## Help Desk Skill Demonstrated
Group membership updates, access management, role-based access basics, and support-style documentation.
