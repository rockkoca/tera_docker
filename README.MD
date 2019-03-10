#USAGE

* `docker run -v path_to_data_folder:/wallet/DATA rockkoca/tera`

* custom port and password 
    * `docker run -v path_to_data_folder:/wallet/DATA -e password=tera1 -p 80:8080 rockkoca/tera`

#NOTE
* default ports are 8080 for wallet and 30000 for miner
* a password is required for docker deployment. Otherwise, you cannot access the wallet
    * default is 'tera'