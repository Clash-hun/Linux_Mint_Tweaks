# 🐧 Linux Mint Script Collection 🍃

Welcome to my **Linux Mint** script collection! 🌱✨  
Here you'll find several useful scripts designed to simplify tasks and enhance your Linux Mint experience. 🚀

---

## 🔠 Scripts Overview

### 1⃣ **`add_nvidia_ppa.sh`**
💻 *Adds the NVIDIA PPA repository to your system.*  
- Command used: `add-apt-repository ppa:graphics-drivers/ppa`  
- Makes it easier to install and update NVIDIA drivers.  

🖼️ *Example: Smooth graphics for gaming and productivity!* 🎮

---

### 2⃣ **`add_fstrim.sh`**
📂 *Enables TRIM functionality for SSDs.*  
- Optimizes your SSD for better performance and longevity.  

🌿 *Keep your drives healthy and fast!* 🚀

---

### 3⃣ **`add_firmware.sh`**
🔄 *Updates system firmware.*  
- Ensures your system runs on the latest firmware versions.  

📡 *Stay up-to-date with the latest tech!* 🛰️

---

### 4⃣ **`add_op.sh`**
⚡ *Performs system cleaning and fine-tuning.*  
- Removes cache.  
- Configures log file size.  
- Disables UFW firewall logging.  
- Runs `sudo apt autoremove` to clean up unnecessary packages.  

🧹 *Your system, neat and tidy!* ✨

---

### 5⃣ **`add_Zswap.sh`**
🔧 *Enables the Zswap module with LZ4 compression.*  
- Uses up to 25% of available memory for swap.  
- Improves system performance by reducing disk swap usage.  

📈 *Boost your system's efficiency!* 🔥

---

### 6⃣ **`add_swap.sh`**
📂 *Creates a 4GB swap file.*  
- Default size is 4GB, but you can modify it by changing the value in this line:  
  ```bash
  fallocate -l 4G /swapfile
  ```  

🔄 *Customizable swap space for your needs!* 💾

---

### 7⃣ **`add_vlc.sh`**
🎥 *Adds the VLC repository and installs VLC.*  
- Adds repositories for commonly used programs like VLC, Audacity, Inkscape, and Krita.  
- Source: `ppa:ubuntuhandbook1`.  
- For more details, visit [Ubuntu Handbook](https://ubuntuhandbook.org/).  

📽️ *Streamline your media experience!* 🍿

---

## 🚀 Getting Started

1. Clone this repository:  
   ```bash
   git clone https://github.com/Clash-hun/linux-mint-scripts.git
   ```  
2. Navigate to the folder:  
   ```bash
   cd linux-mint-scripts
   ```  
3. Run a script:  
   ```bash
   bash <script_name>.sh
   ```  

🛠️ *Ready to supercharge your Linux Mint system? Let's go!* 🌟

---

## 🌟 Why Use These Scripts?  
- **Custom-Built for Linux Mint** 🌱  
- **Time-Saving Automation** ⏱️  
- **Effortless System Management** 🔧  

💡 *Experience the magic of Linux Mint, enhanced!* ✨

---

## 🤝 Contributions

Feel free to fork this repository, suggest improvements, or share your feedback! 💚  

🌈 *Together, let's make Linux Mint even better!* 🥳

---

## ☕ Support Me

If you find these scripts helpful, consider buying me a coffee!  
[![Buy Me a Coffee](https://img.shields.io/badge/Buy%20Me%20a%20Coffee-%23FFDD00.svg?style=for-the-badge&logo=buy-me-a-coffee&logoColor=black)](https://paypal.me/clash2un?country.x=HU&locale.x=hu_HU)  

---

Thank you for using my scripts! 😊 🌿
