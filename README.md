## Tools
Tools For Linux (Scripts)
- Access the ROOT user (Recommended/Some is mandatory):
    ```
    sudo -i
    ```

# Enable Root Access And Set Password:

- 1 Access the ROOT user (Mandatory):
    ```
    sudo -i
    ```
- 2 Set permissions and password:

    - 2.1 Option bash:
        ```
        bash <(wget -qO- https://raw.githubusercontent.com/WebManagerSSH/Tools/main/files/ActiveRoot.sh)
        ```
    - 2.2 Option wget:
        ```
        wget https://raw.githubusercontent.com/WebManagerSSH/Tools/main/files/ActiveRoot.sh; 
        chmod 777 ActiveRoot.sh* && ./ActiveRoot.sh*
        ```

# Enable SSL:

- 1 Set/Active SSL:

    - 1.1 Option bash:
        ```
        bash <(wget -qO- https://raw.githubusercontent.com/WebManagerSSH/Tools/main/files/SSL.sh)
        ```
    - 1.2 Option wget:
        ```
        wget https://raw.githubusercontent.com/WebManagerSSH/Tools/main/files/SSL.sh; 
        chmod 777 SSL.sh* && ./SSL.sh*
        ```
