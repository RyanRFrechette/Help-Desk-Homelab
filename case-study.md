# Help Desk Homelab Case Study

## Overview

This project is a practical Windows help desk homelab built to demonstrate entry-level IT support readiness. It uses VirtualBox, Windows Server, Windows 11, Active Directory, PowerShell, screenshots, GitHub documentation, and ticket-style writeups to show real hands-on support workflows.

The goal was not to pretend to be a senior administrator. The goal was to prove the fundamentals hiring managers care about for remote help desk, IT support, and technical support roles: following a process, troubleshooting issues, documenting evidence, supporting users, and communicating clearly.

## Problem

Entry-level IT applicants often list skills like Windows support, Active Directory, password resets, account management, and troubleshooting without showing proof. This project solves that by creating a visible portfolio artifact with screenshots, documented steps, and realistic help desk tickets.

## Solution

I built a virtual Windows support environment with:

- A Windows Server domain controller named RYANLAB-DC01
- An Active Directory domain named ryanlab.local
- Organized OUs for users, groups, disabled users, and workstations
- Test domain users and security groups
- A Windows 11 client workstation joined to the domain
- Shared folder permissions for a department share
- A mapped network drive test
- A basic Group Policy restriction
- Ticket-style documentation for common help desk workflows

## Key Workflows Completed

### 1. Lab setup and documentation

Created the project folder structure, GitHub repository, screenshot workflow, and documentation system. Verified VirtualBox, Windows Server ISO, Windows 11 ISO, and VM setup steps with screenshots.

### 2. Active Directory setup

Built a Windows Server VM, promoted it to a domain controller, created the ryanlab.local domain, created OUs, created test users, and created security groups for realistic access control practice.

### 3. Windows 11 client domain join

Created a Windows 11 client VM, connected it to the lab network, joined it to the ryanlab.local domain, and verified domain logins using both administrator and standard user accounts.

### 4. Help desk account tasks

Performed and documented common support workflows including password reset, account disable, account re-enable, and group membership updates.

### 5. Shared folder and mapped drive support

Created a Sales shared folder on the domain controller, granted access through the Sales-Shared security group, troubleshot an access denied issue, verified user access from the Windows 11 client, and mapped the share to drive Z:.

### 6. Group Policy demo

Created a Group Policy Object named RyanLab - Restrict Control Panel, linked it to the Users OU, forced policy refresh on the Windows 11 client, and verified that Control Panel access was blocked for a standard domain user.

## Support Tickets Created

- Ticket 01 - Windows 11 Client VM Boot Troubleshooting
- Ticket 02 - Password Reset - Jane Smith
- Ticket 03 - Account Disable / Re-enable - Alex Turner
- Ticket 04 - Group Membership Access Change - Alex Turner
- Ticket 05 - Shared Folder Access Denied - Sales Share
- Ticket 06 - Control Panel Restricted by Group Policy

## Skills Demonstrated

- Windows Server setup basics
- Active Directory Users and Computers
- OU, user, and group organization
- Password reset workflow
- Account disable and re-enable workflow
- Security group membership changes
- Shared folder permission troubleshooting
- SMB share access testing
- Mapped network drive setup
- Group Policy Management
- gpupdate testing
- Windows 11 domain client validation
- PowerShell-assisted workflow
- Screenshot-based documentation
- Help desk ticket writing
- GitHub portfolio documentation

## What This Shows a Hiring Manager

This project shows that I can work through a structured IT support process, build a small Windows lab, document my work clearly, troubleshoot access issues, and explain support tasks in a way that is easy to review. It demonstrates practical beginner readiness for remote help desk, IT support, desktop support, and technical support roles.

## Current Status

Core help desk homelab proof is complete. The project now has public GitHub documentation, screenshots, six ticket writeups, polished resume bullets, and a case study that can be used in applications and interviews.
