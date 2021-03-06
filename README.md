# Acer Swift 3 SF314-56 Opencore 
<img width="1680" alt="IMG" src="https://user-images.githubusercontent.com/40405226/166815436-a559907f-a332-4c2f-a759-68c39c1c46bf.PNG">
<img alt="speedtest" src="https://user-images.githubusercontent.com/40405226/173199851-cb78a86a-32be-43a9-8e7e-f033fb87e380.png"> 


## Configuration

| Specifications | Detail                                                  |
| ------------------- | ------------------------------------------- |
| Computer model      | Acer Swift 3 SF314-56 (2019)      |
| Processor           | Intel Core i5-8265U     |
| Memory              | 20GB  DDR4 2133MHz (4GB 2400MMHz soldered/16GB 2133MHz in slot) |
| NVME                | M.2 Nvme KINGSTON RBUSNS8154P3256GJ1 Media for MacOS |
| SSD                 | 2,5" SSD 128GB KINGSTON SVP200S37A120G Media for windows10  |
| Integrated Graphics | Intel UHD Graphics 620                     |
| Monitor             | FHD 1920x1080 (14 inch) |
| Sound Card          | Realtek ALC256           |
| Wireless Card       | Intel 9560NGW changed with ax200NGW / now i have 10Gbit/s modem with wifi6 |
| SD Card Reader      | Realtek                 |
| TouchPad            | Elan0504 (TPD0)| 


## Current Status

- **After rebooting from Monterey keyboard won't work in OpencorePicker, But it's work if rebooting from Windows or Mojave (issue is only in OpencorePicker menu, after reboot keyboard and touchpad work)**
- **Fingerprint sensor** is not working (never will work)
- **Built-in DMIC** is not working (not need)
- **SdCard reader WORK** with SSDT-USB-Reset.aml and USBMap.kext speed 5-15mb/s https://github.com/corpnewt/USBMap

- Everything else works well
- But battery drain too fast (2993mAh, battery healt was 90% on linux)
 
- Ensure to edit the **config.plist** and add valid  **PlatformInfo Generic** and **SMBIOS** values

- Install **ComboJack** to assist with Headphones / Headset https://github.com/hackintosh-stuff/ComboJack

## Disable in Bios
**Main**
- Network Wake
- Sata Mode - AHCI (be sure selected AHCI)
- Usb Wake from s4
- FastBoot

**Security**
- Secure Boot
- TPM

**Thanks diepeterpan for README.md**
