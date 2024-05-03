# OpenVPN Setup Guide

## Introduction

OpenVPN is a versatile and secure VPN (Virtual Private Network) solution that allows you to securely connect devices across networks. Setting up your own self-hosted OpenVPN server ensures complete control over your VPN infrastructure. This guide outlines the step-by-step procedure to set up an OpenVPN server on Ubuntu.

## Procedure

### 1. Update Repository and Install Git

Begin by updating the repository and installing Git, which is required for downloading the necessary files.

```bash
sudo apt update
sudo apt install git
```

### 2. Download the Installation Script

Clone the OpenVPN installation repository using Git.

```bash
git clone https://github.com/Nyr/openvpn-install.git
```

### 3. Set Permissions and Run Installation Script

Navigate to the downloaded directory and set permissions for the installation script.

```bash
cd openvpn-install/
sudo chmod +x openvpn-install.sh
```

Run the installation script.

```bash
sudo ./openvpn-install.sh
```

### 4. Provide Installation Parameters

Follow the prompts to fill in the required arguments for the installation. These typically include:

- Protocol (UDP or TCP)
- Port (default is 1194)
- DNS resolver (typically Google DNS or Cloudflare DNS)
- Client name (username)

After providing the necessary arguments, press Enter to complete the installation process. Note that the name of your ".ovpn" file, typically "sobhan," is arbitrary.

### 5. Accessing the Configuration File

Once the installation is complete, your ".ovpn" configuration file will be generated and accessible in the "/root/" directory. You can download this file using SCP tools like WinSCP for Windows machines.

### 6. Verify Tunnel Interface Creation

Ensure that the tunnel interface has been created, typically identified as something like "10.8.0.0".

```bash
ip ad | grep tun0
```

### 7. Start the OpenVPN Service

Start the OpenVPN service and enable it to run at system startup.

```bash
service openvpn@server start
systemctl enable openvpn@server
```

### 8. Adding New Users

To add new users to your OpenVPN server, rerun the installation script.

```bash
sudo ./openvpn-install.sh
```

## Additional Resources

For further details and troubleshooting, refer to the [comprehensive article](https://computingforgeeks.com/easy-way-to-install-and-configure-openvpn-server-on-ubuntu/) on installing and configuring OpenVPN server on Ubuntu.

Follow these steps to set up your self-hosted OpenVPN server for secure network communications.
