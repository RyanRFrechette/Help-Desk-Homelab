# Ticket 05 - Shared Folder Access Denied - Sales Share

## Scenario
A standard domain user, Jane Smith, attempted to open the Sales shared folder from the Windows 11 client but received a network access denied message.

## User Impact
The user could not access a department shared folder needed for Sales files.

## Environment
- Domain: ryanlab.local
- Domain controller: RYANLAB-DC01
- Client workstation: RYANLAB-WIN11-01
- User: RYANLAB\j.smith
- Shared folder path: \\RYANLAB-DC01\Sales
- Security group: Sales-Shared

## Troubleshooting Steps
1. Verified the Sales SMB share existed on RYANLAB-DC01.
2. Confirmed the shared folder path was reachable from the Windows 11 client.
3. Confirmed the user received an access denied message, which showed network connectivity was working but permissions were not correct.
4. Checked Active Directory group membership for the Sales-Shared group.
5. Added Jane Smith to the Sales-Shared security group.
6. Signed the user out and back in so the new group membership could apply.
7. Re-tested access to \\RYANLAB-DC01\Sales from the Windows 11 client.
8. Confirmed the user could access the shared folder and see sales-team-test-file.txt.
9. Mapped the Sales share to drive letter Z: and confirmed the mapped drive worked.

## Resolution
Added RYANLAB\j.smith to the Sales-Shared Active Directory security group, refreshed the user session, verified shared folder access, and mapped the Sales share as drive Z:.

## Portfolio Evidence
- Screenshot 41 shows successful shared folder access.
- Screenshot 42 shows successful mapped drive access.

## Skills Demonstrated
- Active Directory group membership troubleshooting
- Shared folder permission validation
- SMB share access testing
- Mapped network drive setup
- User-session refresh after permission changes
- Clear help desk ticket documentation
