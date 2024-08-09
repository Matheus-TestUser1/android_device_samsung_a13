
# TWRP device tree for Samsung Galaxy A13 (SM-A135M)

## Disclaimer
**Warning: Flashing custom recoveries can potentially brick your device. Proceed at your own risk. I am not responsible for any damage or data loss caused to your device.**

**compiled for android 13 and 14.**

## How To Build
1. Create a working directory at `~`:
```bash
mkdir ~/TWRP && cd ~/TWRP
```
2. Initialize your local repository using AOSP tree to build TWRP:
```bash
repo init -u https://github.com/minimal-manifest-twrp/platform_manifest_twrp_aosp.git -b twrp-12.1
```
Or a more space-saving solution:
```bash
repo init --depth=1 -u https://github.com/minimal-manifest-twrp/platform_manifest_twrp_aosp.git -b twrp-12.1
```
3. Sync up:
```bash
repo sync
```
4. Clone the device tree:
```bash
git clone -b twrp-12.1 https://github.com/Matheus-TestUser1/android_device_samsung_a13.git device/samsung/a13
```
5. Build it:
```bash
cd ~/TWRP && export ALLOW_MISSING_DEPENDENCIES=true && . build/envsetup.sh && lunch twrp_a13-eng && mka recoveryimage
```

## What is active in this TWRP device tree?
- `[A]` Active
- `[P]` Partially Active
- `[ ]` Not tested / Not working
```bash
Blocking checks
- [A] Correct screen/recovery size
- [P] Working Touch, screen
- [P] Backup to internal/microSD
- [P] Restore from internal/microSD
- [A] Reboot to system
- [P] ADB

Medium checks
- [ ] update.zip sideload
- [ ] UI colors (red/blue inversions)
- [P] Screen goes off and on
- [P] F2FS/EXT4 Support, exFAT/NTFS where supported
- [A] All important partitions listed in mount/backup lists
- [P] Backup/restore to/from external (USB-OTG) storage (not supported by the device)
- [ ] Backup/restore to/from adb (https://gerrit.omnirom.org/#/c/15943/)
- [ ] Decrypt /data
- [P] Correct date

Minor checks
- [ ] MTP export
- [A] Reboot to bootloader
- [A] Reboot to recovery
- [A] Poweroff
- [P] Battery level
- [A] Temperature
- [A] Encrypted backups
- [A] Input devices via USB (USB-OTG)
- [A] Keyboard, mouse and disks (not supported by the device)
- [P] USB mass storage export
- [A] Set brightness
- [A] Vibrate
- [A] Screenshot
- [ ] Partition SD card
```
## Credits 
[device tree a137f](https://github.com/badra639/twrp_samsung_a13ve)
[device tree a01 core](https://github.com/almondnguyen/twrp_device_samsung_a01core/blob/twrp-11/BoardConfig.mk)
[device tree a146b a14x](https://github.com/physwizz/a146b-a14x-TWRP-11-dt)

## Additional Resources
For a detailed guide on building TWRP, please refer to [this guide](https://xdaforums.com/t/guide-to-twrp-building.4515895/).
