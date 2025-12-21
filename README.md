SSH Brute Force Tool 🔐
📌 Description

This is a Bash-based SSH brute force tool built for educational and authorized penetration testing purposes only.
The script uses Patator to perform SSH login attempts using either user-provided wordlists or built-in wordlists.

⚠️ Use this tool only on systems you own or have explicit permission to test.

✨ Features

Automatic SSH port (22) detection using Nmap

Supports:

Custom username & password lists

Built-in wordlists (included)

Displays live output and saves results to a file

Clean banner & user-friendly prompts

Automatically handles missing wordlists

📂 Built-in Wordlists

The tool comes with embedded wordlists:

Usernames: 81,489

Passwords: 25,848

These are used automatically if the user does not provide custom paths.

📁 Required Installation Path

⚠️ IMPORTANT

This tool must be installed under the following path for the built-in wordlists to work correctly:

/home/kali

Correct directory structure:
/home/kali/
└── ssh-brute-force-tool/
    ├── sshbrute.sh
    ├── ssh_usernames_list.txt
    └── ssh_passwords_list.txt


If you install it in a different path, the built-in wordlists will not work unless you modify the script paths.

⚙️ Requirements

Make sure the following tools are installed:

sudo apt update
sudo apt install patator -y
sudo apt install nmap -y

🚀 Usage

Clone the repository:

git clone https://github.com/rakan_khaled1/ssh-brute-force-tool.git


Move it to the required path:

mv ssh-brute-force /home/kali/ssh_brute
cd /home/kali/ssh-brute-force-tool


Make the script executable:

chmod +x sshbrute.sh


Run the tool:

bash sshbrute.sh

📄 Output

Live output is displayed in the terminal

Full results are saved automatically to:

login_result.txt


To extract valid credentials:

grep "Authentication successful." login_result.txt

🧑‍💻 Author

Author: Rakan

Tool Name: SSH Brute Force

Purpose: Educational / Authorized Testing Only

⚠️ Disclaimer

This tool is intended for educational purposes and authorized security testing only.
The author is not responsible for any misuse or illegal activity performed with this tool
