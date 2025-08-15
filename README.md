# QR Code Scanner for Spectacle – Installer

This installer script sets up a helper script for QR Code scanner for spectacle.

---

## How to use

1. Run **Spectacle**.  
2. Select the area containing a QR code.  
3. Click **Export** → **QR Code scanning**.  
4. The decoded QR code will be shown in a dialog, and its contents will also be copied to the clipboard.

---

## Installation

Open your terminal and run the following command. 

```bash
sh -c "$(curl -fsSL https://raw.githubusercontent.com/OlimpiiaART/qrscan-for-spectacle/main/installer.sh)"
```

**Note:** This script requires root privileges, so you may be prompted for your password.

---

## Requirements
(tested on Arch Linux)

* `zenity` (for GUI dialogs)
* `zbar` (for read the QR code)
