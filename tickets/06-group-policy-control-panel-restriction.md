# Ticket 06 - Control Panel Restricted by Group Policy

## Scenario
A standard domain user, Jane Smith, attempted to open Control Panel on the Windows 11 client and was blocked by an administrator restriction message.

## User Impact
The user could not access Control Panel or PC Settings because a domain policy restricted access for standard users.

## Environment
- Domain: ryanlab.local
- Domain controller: RYANLAB-DC01
- Client workstation: RYANLAB-WIN11-01
- User: RYANLAB\j.smith
- GPO name: RyanLab - Restrict Control Panel
- Linked OU: RyanLab\Users

## Steps Performed
1. Opened Group Policy Management on RYANLAB-DC01.
2. Created a new GPO named RyanLab - Restrict Control Panel.
3. Linked the GPO to the Users OU under RyanLab.
4. Edited the GPO under User Configuration > Policies > Administrative Templates > Control Panel.
5. Enabled Prohibit access to Control Panel and PC settings.
6. Ran gpupdate /force on the Windows 11 client.
7. Tested Control Panel access while logged in as RYANLAB\j.smith.
8. Confirmed Windows blocked access with an administrator restriction message.

## Resolution
Successfully applied a Group Policy Object that prevents standard domain users from opening Control Panel and PC Settings.

## Portfolio Evidence
- Screenshot 43 shows the Control Panel restriction message after the GPO was applied.

## Skills Demonstrated
- Group Policy Management
- GPO creation and OU linking
- User Configuration policy enforcement
- gpupdate testing
- Windows client policy verification
- Help desk documentation
