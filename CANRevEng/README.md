# BlueView - CAN Reverse Engineering

## Running on Windows via WSL2

1. Install usbipd-win

https://github.com/dorssel/usbipd-win/releases

2. Plug in CAN adapter & Find Device

```powershell
usbipd list
```
3. Bind the USB Device 

```powershell (as admin)
usbipd bind --busid <busid>
```

4. Attach to WSL

```
usbipd attach --wsl --busid <busid>
```

5. Check for presence in wsl

```
lsusb
```

## Setting Up the CAN Interface in WSL


### Recompile Linux Kernel

```
cd ~
git clone https://github.com/microsoft/WSL2-Linux-Kernel
cd WSL2-Linux-Kernel
git checkout $(uname -r | cut -d'-' -f1)
```

https://gist.github.com/yonatanh20/664f07d62eb028db18aa98b00afae5a6


