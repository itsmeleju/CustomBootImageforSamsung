## **Interchanging Boot-Image for Samsung using (up_param)**

A KernelSU module that enables automatic boot logo rotation on Samsung devices by dynamically flashing alternate 'up_param' images on every reboot.

This module includes two custom up_param files and switches between them at each boot cycle, creating a seamless interchanging boot image experience.

✨ **Features**

🔄 Automatic boot logo alternation on every reboot\
⚡ Runs in early post-fs-data stage\
📦 No manual flashing required (avoids risk)\
👍 Safer & simple to use with updates (rarely)\
🔒 Designed for only Samsung device that use 'up_param' partition

## Manual Method - If u want to permanently apply the bootIMAGE (Static & No updates)
_* I am not resposible if u brick ur phone on Manual Method *_
- just extract the .zip and copy the up_param.tar
- paste it on Download folder 
- Start terminal (termux) and gain root access using "su" 
- Type / copy this command into the terminal -
> dd if=/storage/emulated/0/Download/up_param.tar of=/dev/block/platform/bootdevice/by-name/up_param
- Reboot... Enjoy 🤗

**Some pictures are from online...**
