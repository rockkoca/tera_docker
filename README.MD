# prerequisite 前提

* you need to install docker first(你需要先安装 docker 在 Ubuntu 服务器)
    * go to https://docs.docker.com/install/linux/docker-ce/ubuntu/
    * or simply run (或者运行以下命令)
    ```
    curl -fsSL https://get.docker.com -o get-docker.sh
    sudo sh get-docker.sh
    ```
* docker container can isolate the miner with your other program which can give you an extra layer of security.
    * docker 容器可以隔离挖矿程序.

# USAGE 使用

* `docker run -v path_to_data_folder:/wallet/DATA -p 8080:8080 -p 30000:30000 rockkoca/tera`
    * path_to_data_folder stores the wallet data. It should be on somewhere of your server.
    * path_to_data_folder 是挖矿和钱包数据. 需要在你的服务器的某个地方!

* custom port and password (定制密码和端口)
    * `docker run -v path_to_data_folder:/wallet/DATA -e password=tera1 -p 80:8080 -p 30000:30000 rockkoca/tera`

* then open your browser and open localhost:8080 and type the password 'tera' or the one you set
    * 打开浏览器并访问localhost:8080 去管理你的钱包. 默认密码是 tera

* you might also need to open port 30000 in order to mine.
    * 你可能需要打开30000端口去挖矿
    * run `sudo ufw allow 30000` to open 30000 port
    
# NOTE
* default ports are 8080 for wallet and 30000 for miner
    * 钱包默认端口是 8080, 挖矿默认密码是 30000
* a password is required for docker deployment. Otherwise, you cannot access the wallet
    * 用 docker 部署后, 你必须使用密码管理你的钱包.
    * default is 'tera' (默认密码是'tera')

* You also need to set your main IP and port 30000 under NET CONNECT. Otherwise, it does not mine. 
    * 你需要在NET CONNECT填写你的主公网 ip 和 port 30000 才能挖矿!