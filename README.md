## Tools
Tools For Linux (Scripts)

# Enable Root Access And Set Password:

- 1. Access the ROOT user:
    ```
    sudo -i
    ```
- 2. Update system (Optional) - IMPORTANT:
    ```
    apt update -y; 
    apt install wget -y; 
    ```
- 3. Set permissions and password:
    ```
    bash <(wget -qO- https://raw.githubusercontent.com/WebManagerSSH/Tools/main/ActiveRoot.sh)
    ```
