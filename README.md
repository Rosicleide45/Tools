## Tools
Tools For Linux (Scripts)

# Enable Root Access And Set Password:

- 1 Access the ROOT user:
    ```
    sudo -i
    ```
- 2 Update system - IMPORTANT:
    ```
    apt update -y; 
    ```
- 3 Set permissions and password:

    ATTENTION: If an error occurs in this next step, execute the following command:
    ```
    apt install wget -y; 
    ```
    - 3.1 Option bash:
        ```
        bash <(wget -qO- https://raw.githubusercontent.com/WebManagerSSH/Tools/main/ActiveRoot.sh)
        ```
    - 3.2 Option wget:
        ```
        wget https://raw.githubusercontent.com/WebManagerSSH/Tools/main/ActiveRoot.sh; 
        chmod 777 ActiveRoot.sh* && ./ActiveRoot.sh*
        ```
