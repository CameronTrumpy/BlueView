sudo modprobe can
sudo modprobe can_raw
sudo modprobe kvaser_usb # IF USING KVASER CAN ADAPTER
sudo apt-get install can-utils

# Configure and bring up can0 (change bitrate to match your network)
sudo ip link set can0 type can bitrate 125000
sudo ip link set up can0

# Configure and bring up can1
sudo ip link set can1 type can bitrate 500000
sudo ip link set up can1