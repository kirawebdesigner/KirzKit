---
name: pc-automation-master
description: Controlling the OS, mouse, and keyboard via scripts. Use when automating desktop tasks, file management, or UI interactions outside the browser.
allowed-tools: Read, Write, Edit, Glob, Grep, Bash, Python
---

# PC Automation Master (OS Level Control)

> **"If it's repetitive, it should be automated."**
> **Philosophy:** Use Python/PowerShell to bridge the gap between intent and OS action.

---

## 📑 Content Map
- **Section 1**: Python UI Automation (`pyautogui`, `pynput`)
- **Section 2**: File System Orchestration (Batch renaming, sorting, cleaning)
- **Section 3**: PowerShell/Bash Mastery (Service management, app launching)
- **Section 4**: Scheduled Tasks (Cron jobs for Windows/Linux)

---

## 🚀 The "Daily Cleanup" Script (Example)
1. **Target**: `Downloads` folder.
2. **Action**: Sort files by extension into `Documents`, `Images`, `Videos`.
3. **Action**: Delete any `.tmp` or `.zip` older than 7 days.
4. **Action**: Empty the Recycle Bin.

---

## ✅ Best Practices
- ✅ **Safety First**: Always use `pyautogui.FAILSAFE = True` to stop scripts by moving the mouse to a corner.
- ✅ **Small Steps**: Test automation on a single file/folder before running it globally.
- ✅ **Logging**: Always log actions to a `.log` file so you can see what happened.
- ✅ **Relative Paths**: Use `$HOME` or `os.path.expanduser` so scripts work on any PC.

---

## ❌ Anti-Patterns
- ❌ **Hardcoded Coordinates**: Don't use `click(x=500, y=500)`; use image recognition or shortcut keys.
- ❌ **Infinite Loops**: Never run a UI script without a clear "Exit" condition.
- ❌ **Deleting without Backup**: Never automate `Delete` without a `Move to Trash` step first.
