# Help Desk Homelab

A practical Windows help desk portfolio project documenting virtual machine setup, Windows Server preparation, Active Directory Domain Services configuration, and ticket-style troubleshooting workflows.

This project is designed for remote help desk, IT support, and technical support roles. It shows that I can follow a structured lab process, document my work clearly, organize screenshots, troubleshoot setup issues, and explain beginner Windows support tasks in a professional way.

## Why This Project Matters

Hiring managers do not need a giant advanced cloud project to evaluate entry-level support ability. They need evidence that I can:

- Follow instructions and document my process
- Set up a basic technical lab
- Use PowerShell and Windows tools
- Prepare Windows Server and Windows client environments
- Work with Active Directory users, groups, and access roles
- Capture clean troubleshooting evidence
- Write clear ticket-style documentation
- Explain what I did, what went wrong, how I fixed it, and why it matters

## Lab Environment

Planned lab setup:

- Host machine: Windows PC
- Virtualization: Oracle VirtualBox
- Server VM: `RYANLAB-DC01`
- Server OS: Windows Server 2022 Evaluation
- Domain: `ryanlab.local`
- Client VM: `RYANLAB-WIN11-01`
- Client OS: Windows 11

## Tools Used

- Oracle VirtualBox
- Windows Server 2022 Evaluation ISO
- Windows 11 ISO
- Active Directory Domain Services
- DNS Server role
- PowerShell
- Git
- GitHub
- Markdown

## Current Status

Windows Server and the first Active Directory domain controller are configured. The lab domain, OU structure, test users, security groups, and initial Windows 11 client VM are now documented.

Completed so far:

- Created project folder structure
- Installed and verified VirtualBox
- Downloaded Windows Server ISO
- Downloaded Windows 11 ISO
- Created the Windows Server VM
- Installed Windows Server 2022
- Renamed the server to `RYANLAB-DC01`
- Installed Active Directory Domain Services
- Promoted the server to a domain controller
- Created the lab domain `ryanlab.local`
- Created a basic Active Directory OU structure for users, groups, disabled accounts, and workstations
- Created initial security groups for role-based access examples
- Created test users for HR, Sales, Operations, and IT support scenarios
- Assigned users to security groups to demonstrate role-based access management
- Created the Windows 11 client VM `RYANLAB-WIN11-01`
- Began the Windows 11 client installation process
- Confirmed the Windows 11 client reached the desktop successfully
- Documented a real Windows 11 VM boot troubleshooting issue as a support-style ticket
- Documented each major setup step with screenshots

## Screenshots

### 1. Project Folder Structure

![Project folder structure](screenshots/setup/01-project-folder-structure.png)

Created a clean local project structure for screenshots, tickets, notes, diagrams, and portfolio documentation.

### 2. VirtualBox Installed

![VirtualBox installed](screenshots/setup/02-virtualbox-installed.png)

Installed and verified Oracle VirtualBox using PowerShell and winget.

### 3. Windows Server ISO Downloaded

![Windows Server ISO downloaded](screenshots/setup/03-windows-server-iso-downloaded.png)

Verified the Windows Server 2022 Evaluation ISO was downloaded successfully.

### 4. Windows 11 ISO Download Started

![Windows 11 ISO download started](screenshots/setup/04-windows11-iso-download-started.png)

Started the Windows 11 ISO download using the PowerShell/Fido method.

### 5. Windows 11 ISO Downloaded

![Windows 11 ISO downloaded](screenshots/setup/05-windows11-iso-downloaded.png)

Verified the Windows 11 ISO downloaded successfully and is ready for the client VM.

### 6. Windows Server VM ISO Setup

![Server VM ISO setup](screenshots/vm-setup/06-server-vm-name-iso.png)

Created the `RYANLAB-DC01` virtual machine profile and attached the Windows Server 2022 ISO.

### 7. Windows Server VM Hardware Setup

![Server VM hardware setup](screenshots/vm-setup/07-server-vm-hardware.png)

Assigned memory, CPU, and virtual disk resources for the Windows Server VM.

### 8. Windows Server VM Created

![Server VM created](screenshots/vm-setup/08-server-vm-created.png)

Confirmed the `RYANLAB-DC01` Windows Server virtual machine was created in VirtualBox with the expected memory, CPU, disk, and ISO settings.

### 9. Windows Server Setup Start

![Windows Server setup start](screenshots/vm-setup/09-windows-server-setup-start.png)

Started the Windows Server installation inside the `RYANLAB-DC01` VirtualBox VM.

### 10. Windows Server Edition Selection

![Windows Server edition selection](screenshots/vm-setup/10-windows-server-edition-selection.png)

Selected Windows Server 2022 Standard Evaluation with Desktop Experience for a GUI-based help desk lab.

### 11. Windows Server Custom Install Type

![Windows Server custom install type](screenshots/vm-setup/11-windows-server-install-type.png)

Chose a custom installation for a clean Windows Server install on the virtual machine.

### 12. Windows Server Drive Selection

![Windows Server drive selection](screenshots/vm-setup/12-windows-server-drive-selection.png)

Selected the 60 GB unallocated virtual disk as the Windows Server installation target.

### 13. Windows Server Login Screen

![Windows Server login screen](screenshots/vm-setup/13-windows-server-login-screen.png)

Confirmed Windows Server installed successfully and reached the login screen for the `RYANLAB-DC01` virtual machine.

### 14. Windows Server Manager Dashboard

![Windows Server Manager dashboard](screenshots/server-configuration/14-windows-server-manager-dashboard.png)

Confirmed Windows Server installed successfully and Server Manager launched.

### 15. Server Renamed to RYANLAB-DC01

![Server renamed confirmed](screenshots/server-configuration/15-server-renamed-confirmed.png)

Renamed the Windows Server VM to `RYANLAB-DC01`, creating a clean server identity for the lab.

### 16. Add Roles and Features Wizard

![Add roles and features wizard](screenshots/active-directory/16-add-roles-and-features-wizard.png)

Opened the Add Roles and Features Wizard to begin installing Active Directory services.

### 17. Active Directory Domain Services Selected

![Active Directory Domain Services selected](screenshots/active-directory/17-select-active-directory-domain-services.png)

Selected Active Directory Domain Services as the server role for the lab domain controller.

### 18. Confirm AD DS Installation

![Confirm AD DS installation](screenshots/active-directory/18-confirm-ad-ds-installation.png)

Reviewed and confirmed the Active Directory Domain Services installation selections.

### 19. AD DS Installed — Promotion Required

![AD DS installation complete](screenshots/active-directory/19-ad-ds-installation-complete-promotion-required.png)

Completed the AD DS role installation and confirmed the server still needed to be promoted to a domain controller.

### 20. Domain Controller Deployment Configuration

![Domain controller deployment configuration](screenshots/active-directory/20-domain-controller-deployment-configuration.png)

Started the domain controller promotion process and configured a new forest for the lab.

### 21. DNS Options Warning

![DNS options warning](screenshots/active-directory/21-dns-options-warning.png)

Reviewed the normal DNS delegation warning that appears in a small standalone lab environment.

### 22. Review Domain Controller Options

![Review domain controller options](screenshots/active-directory/22-review-domain-controller-options.png)

Reviewed the new forest configuration for `ryanlab.local` before promotion.

### 23. Prerequisites Check Passed

![Prerequisites check passed](screenshots/active-directory/23-prerequisites-check-passed.png)

Confirmed prerequisite checks passed before promoting the server to a domain controller.

### 24. Server Manager After Domain Reboot

![Server Manager after domain reboot](screenshots/active-directory/24-server-manager-after-domain-reboot.png)

Confirmed the server rebooted successfully after domain controller promotion.

### 25. Domain Confirmed on Local Server

![Domain confirmed on Local Server](screenshots/active-directory/25-domain-joined-local-server-confirmed.png)

Confirmed the server is now part of the `ryanlab.local` domain, proving the Active Directory lab domain was created successfully.

### 26. Active Directory Users and Computers Open

![Active Directory Users and Computers open](screenshots/active-directory/26-active-directory-users-and-computers-open.png)

Opened Active Directory Users and Computers on the `RYANLAB-DC01` domain controller and confirmed the `ryanlab.local` domain is available for user, group, and workstation administration.

### 27. Active Directory OU Structure Created

![Active Directory OU structure created](screenshots/active-directory/27-active-directory-ou-structure-created.png)

Created a clean organizational unit structure under `RyanLab` for `Users`, `Groups`, `Disabled Users`, and `Workstations`. This mirrors a basic business environment and keeps accounts organized for help desk support workflows.

### 28. Active Directory Security Groups Created

![Active Directory security groups created](screenshots/active-directory/28-active-directory-security-groups-created.png)

Created security groups for common access roles: `IT-Support`, `HR-Shared`, `Sales-Shared`, and `Remote-Users`. These groups will be used later to demonstrate access control, shared folder permissions, and group membership troubleshooting.

### 29. Active Directory Test Users Created

![Active Directory test users created](screenshots/active-directory/29-active-directory-test-users-created.png)

Created realistic test user accounts for different departments: HR, Sales, Operations, and IT support. These accounts will be used to demonstrate common help desk workflows such as onboarding, password resets, account access changes, and domain login testing.

### 30. Active Directory Group Membership Assigned

![Active Directory group membership assigned](screenshots/active-directory/30-active-directory-group-membership-assigned.png)

Assigned users to role-based security groups. This shows basic identity and access management: HR users receive HR access, Sales users receive Sales access, remote users are grouped for remote-access examples, and the help desk test account is assigned to the IT support group.

### 31. Windows 11 Client VM Created

![Windows 11 client VM created](screenshots/vm-setup/31-windows-client-vm-created.png)

Created the Windows 11 client virtual machine `RYANLAB-WIN11-01`. This client will represent a normal employee workstation that can later be joined to the `ryanlab.local` domain for login, access, and troubleshooting demonstrations.

### 32. Windows 11 Client VM Network Settings

![Windows 11 client VM network settings](screenshots/vm-setup/32-windows-client-vm-network-settings.png)

Reviewed the Windows 11 client VM network adapter settings before installation. Capturing network configuration is important because domain join and Active Directory login troubleshooting often depend on correct network and DNS setup.

### 33. Windows 11 Client Installation Started

![Windows 11 client installation started](screenshots/vm-setup/33-windows-client-install-started.png)

Started the Windows 11 installation process for the client workstation VM. This is the foundation for the endpoint support portion of the lab, where the workstation will later be renamed, configured, and joined to the domain.

### 34. Windows 11 Client Desktop Ready

![Windows 11 client desktop ready](screenshots/vm-setup/34-windows-client-desktop-ready.png)

Confirmed the Windows 11 client workstation successfully reached the desktop after installation. This proves the endpoint build is ready for the next help desk tasks: workstation naming, network/DNS configuration, domain join, domain user login testing, and support-ticket demonstrations.

### 35. Domain Administrator Login Proof

![Domain administrator login proof](screenshots/active-directory/35-domain-admin-login-proof.png)

Confirmed the Windows 11 client successfully joined the `ryanlab.local` domain and logged in as `RYANLAB\Administrator`. The `whoami` output proves the workstation is using a domain account instead of only a local Windows account.

### 36. Domain User Login Proof

![Domain user login proof](screenshots/active-directory/36-domain-user-login-proof.png)

Confirmed the Windows 11 client can log in with a standard domain test user account, `RYANLAB\j.smith`. The `whoami` output proves the workstation accepts normal Active Directory user logins, not just domain administrator access.

### 37. Password Reset Success - Jane Smith

![Password reset success for Jane Smith](screenshots/active-directory/37-password-reset-success-jane-smith.png)

Reset the password for the standard domain user account Jane Smith in Active Directory Users and Computers. This demonstrates a common help desk workflow: assisting a user who cannot sign in by resetting an Active Directory password and confirming the action completed successfully.

### 38. Account Disabled - Alex Turner

![Account disabled for Alex Turner](screenshots/active-directory/38-account-disabled-alex-turner.png)

Disabled the standard domain user account Alex Turner in Active Directory Users and Computers. This demonstrates a common help desk and account lifecycle workflow: securing or offboarding a user account by disabling access while preserving the account record for auditing and future review.

### 39. Account Enabled - Alex Turner

![Account enabled for Alex Turner](screenshots/active-directory/39-account-enabled-alex-turner.png)

Re-enabled the standard domain user account Alex Turner in Active Directory Users and Computers after the account-disable test. This demonstrates a common help desk account lifecycle workflow: restoring user access after an account was disabled while confirming the change completed successfully in Active Directory.

### 40. Group Membership Added - Alex Turner

![Group membership added for Alex Turner](screenshots/active-directory/40-group-membership-add-success-alex-turner-sales-shared.png)

Added the standard domain user account Alex Turner to the Sales-Shared security group in Active Directory Users and Computers. This demonstrates a common help desk access-management workflow: updating a user's group membership so they can receive the correct department or shared-resource access while documenting the successful change.

### 41. Sales Shared Folder Access - Jane Smith

![Sales shared folder access success](screenshots/active-directory/41-sales-shared-folder-access-success.png)

Confirmed the standard domain user Jane Smith could access the Sales shared folder from the Windows 11 client after being added to the Sales-Shared security group. This demonstrates a common help desk permissions workflow: granting department access through Active Directory group membership, refreshing the user session, and verifying successful access to a shared resource.

### 42. Sales Mapped Drive Access - Jane Smith

![Sales mapped drive access success](screenshots/active-directory/42-sales-mapped-drive-success.png)

Mapped the Sales shared folder to drive letter Z: on the Windows 11 client while logged in as the standard domain user Jane Smith. This demonstrates a common help desk workflow: connecting a user to a department network drive, verifying the mapped drive path, and confirming the user can access the shared file successfully.

### 43. Group Policy Control Panel Restriction - Jane Smith

![Group Policy Control Panel restriction success](screenshots/active-directory/43-gpo-control-panel-restriction-success.png)

Created and applied a Group Policy Object that prevents standard domain users from opening Control Panel and PC Settings. This demonstrates a basic Windows administration workflow: creating a GPO, linking it to the correct user OU, forcing a policy update on the Windows 11 client, and verifying the restriction applied successfully for the domain user Jane Smith.

## Troubleshooting Example

During the Windows 11 client VM build, the VM initially failed to boot from the installation media and displayed a black screen / boot failure behavior. I documented the issue as a support-style ticket to show realistic troubleshooting instead of hiding the setup problem.

- [Ticket 01 — Windows 11 Client VM Boot Troubleshooting](tickets/01-windows-client-vm-boot-troubleshooting.md)

This ticket demonstrates VM boot troubleshooting, ISO attachment verification, boot order checks, EFI/Secure Boot review, VirtualBox display settings, and documenting the final resolution in a clear support format.

## Help Desk Ticket Writeups

- [Ticket 02 - Password Reset - Jane Smith](tickets/02-password-reset-jane-smith.md)
- [Ticket 03 - Account Disable / Re-enable - Alex Turner](tickets/03-account-disable-enable-alex-turner.md)
- [Ticket 04 - Group Membership Access Change - Alex Turner](tickets/04-group-membership-access-change-alex-turner.md)
- [Ticket 05 - Shared Folder Access Denied - Sales Share](tickets/05-shared-folder-access-denied-sales.md)

## Planned Help Desk Scenarios

This project will eventually include ticket writeups for:

- User cannot log in — password reset workflow
- Disabled account — account re-enable workflow
- New employee setup — create user and assign group access
- Shared folder access denied — permissions/group troubleshooting
- Client cannot reach domain — basic network/DNS troubleshooting
- Slow Windows computer — basic support triage

## Portfolio Value

This project is intentionally beginner-friendly and honest. It does not claim senior-level administration experience. It demonstrates practical support habits: lab setup, documentation, screenshots, troubleshooting notes, and structured communication.

## Next Steps

- Rename the Windows 11 client VM/workstation
- Configure client networking and DNS for the lab domain
- Join the Windows 11 client to `ryanlab.local`
- Test domain login with the created user accounts
- Document help desk ticket scenarios










