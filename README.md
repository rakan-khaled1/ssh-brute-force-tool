![image alt](https://github.com/rakan-khaled1/ssh-brute-force-tool/blob/91845f2930e01032008561a7d97f5b454e826f1d/Screenshot_2025-12-21_11-53-23.png)
## 📌 Description

This is a **Bash-based SSH brute force tool** built for **educational and authorized penetration testing purposes only**.  
The script uses **Patator** to perform SSH login attempts using either **user-provided wordlists** or **built-in wordlists**.

⚠️ **Use this tool only on systems you own or have explicit permission to test.**

---

## ✨ Features

- Automatic SSH port (22) detection using **Nmap**
- Supports:
  - Custom username & password wordlists
  - Built-in wordlists (included)
- Displays live output and saves results to a file
- Clean banner & user-friendly prompts
- Automatically handles missing wordlists

---

## 📂 Built-in Wordlists

The tool comes with embedded wordlists:

- **Usernames:** `81,489`
- **Passwords:** `25,848`

These wordlists are used automatically if the user does not provide custom paths.

---

## 📁 Required Installation Path

⚠️ **IMPORTANT**

This tool **must** be installed under the following path for the built-in wordlists to work correctly:

```text
/home/kali
Correct Directory Structure
text
Copy code
/home/kali/
└── ssh-brute-force-tool/
    ├── sshbrute.sh
    ├── ssh_usernames_list.txt
    └── ssh_passwords_list.txt
❗ If you install it in a different path, the built-in wordlists will not work unless you modify the script paths manually.

⚙️ Requirements
Make sure the following tools are installed:

bash
Copy code
sudo apt update
sudo apt install patator nmap -y
🚀 Usage
Clone the repository
bash
Copy code
git clone https://github.com/rakan-khaled1/ssh-brute-force-tool.git
Move it to the required path
bash
Copy code
mv ssh-brute-force-tool /home/kali
cd /home/kali/ssh-brute-force-tool
Make the script executable
bash
Copy code
chmod +x sshbrute.sh
Run the tool
bash
Copy code
bash sshbrute.sh
📄 Output
Live output is displayed in the terminal

Full results are saved automatically to:

text
Copy code
login_result.txt
Extract valid credentials
bash
Copy code
grep "Authentication successful." login_result.txt
🧑‍💻 Author
Author: Rakan

Tool Name: SSH Brute Force

Purpose: Educational / Authorized Testing Only
