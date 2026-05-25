# Help Desk Homelab

A practical Windows help desk portfolio project documenting virtual machine setup, Windows Server preparation, Active Directory Domain Services configuration, and ticket-style troubleshooting workflows.

This project is designed for remote help desk, IT support, and technical support roles. It shows that I can follow a structured lab process, document my work clearly, organize screenshots, and explain beginner Windows support tasks in a professional way.

## Why This Project Matters

Hiring managers do not need a giant advanced cloud project to evaluate entry-level support ability. They need evidence that I can:

- Follow instructions and document my process
- Set up a basic technical lab
- Use PowerShell and Windows tools
- Prepare Windows Server and Windows client environments
- Capture clean troubleshooting evidence
- Write clear ticket-style documentation
- Explain what I did and why it matters

## Lab Environment

Planned lab setup:

- Host machine: Windows PC
- Virtualization: Oracle VirtualBox
- Server VM: `RYANLAB-DC01`
- Server OS: Windows Server 2022 Evaluation
- Domain: `ryanlab.local`
- Client VM: Windows 11

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

Windows Server and the first Active Directory domain controller are configured.

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

- Create test users and assign group memberships
- Create a Windows 11 client VM
- Join the Windows 11 client to `ryanlab.local`
- Document help desk ticket scenarios
