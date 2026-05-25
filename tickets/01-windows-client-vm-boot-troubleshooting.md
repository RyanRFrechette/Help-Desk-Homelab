# Ticket 01 — Windows 11 Client VM Boot Troubleshooting

## Summary

While building the Windows 11 client virtual machine for the help desk lab, the VM initially failed to boot into Windows Setup and displayed a black screen / boot failure behavior. I treated the issue like a help desk troubleshooting ticket: verify the symptoms, check the obvious causes first, test one fix at a time, and document the final resolution.

## Environment

- Host OS: Windows PC
- Virtualization platform: Oracle VirtualBox
- Server VM: `RYANLAB-DC01`
- Client VM: `RYANLAB-WIN11-01`
- Intended client OS: Windows 11
- Installation media: `Windows.iso`

## Issue

The Windows 11 client VM did not start the installer normally. The VM either displayed a black screen or failed to boot from the installation media.

## Troubleshooting Steps

1. Confirmed the issue was isolated to the new Windows 11 client VM and did not affect the existing domain controller VM.
2. Powered off only the affected client VM.
3. Verified the Windows 11 ISO was downloaded and attached to the VM as virtual DVD installation media.
4. Checked the VM boot order and set the DVD/optical drive before the virtual hard disk.
5. Reviewed EFI/Secure Boot behavior in VirtualBox.
6. Adjusted VM display settings so the boot screen would render properly.
7. Mounted the Windows 11 ISO when VirtualBox prompted for installation media.
8. Retried the boot process and pressed a key at the `Press any key to boot from CD or DVD` prompt.

## Resolution

The VM successfully booted into Windows 11 Setup after the Windows ISO was mounted as the virtual DVD and the VM was configured to boot from DVD/optical media first.

## Skills Demonstrated

- Virtual machine troubleshooting
- Boot media troubleshooting
- ISO/DVD attachment verification
- Boot order validation
- Basic VirtualBox configuration
- Calm problem solving under a setup failure
- Documenting a real troubleshooting path instead of hiding the mistake

## Help Desk Takeaway

This issue is useful because it mirrors real IT support work: a device does not boot as expected, so the technician verifies the environment, isolates the affected system, checks boot media and configuration, tests a fix, and documents the resolution clearly.
