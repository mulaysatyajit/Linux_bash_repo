# Linux User & Group Management Automation Script

## 📌 Overview
This Bash script automates **Linux user and group management** tasks.  
It is designed to be run by the **root user** and helps system administrators:

- Create a user (if not already present)
- Create a group (if it does not exist)
- Add the user to the specified group
- Enforce password aging policies

This script is useful for **DevOps**, **Linux administration**, and **system automation** practice.

---

## ⚙️ Features
- ✔️ Root privilege validation  
- ✔️ User existence check (avoids duplicate creation)  
- ✔️ Group existence check and auto-creation  
- ✔️ Adds user to the specified group  
- ✔️ Enforces password expiry every **40 days**  
- ✔️ Forces password change on first login  

---

## 🛠️ Prerequisites
- Linux system
- Bash shell
- Root or sudo privileges

---


```bash
sudo ./user_group_management.sh <username> <groupname>
