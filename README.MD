# USAGE

* `docker run -v path_to_data_folder:/wallet/DATA -p 8080:8080 -p 30000:30000 rockkoca/tera`

* custom port and password 
    * `docker run -v path_to_data_folder:/wallet/DATA -e password=tera1 -p 80:8080 -p 30000:30000 rockkoca/tera`

# NOTE
* default ports are 8080 for wallet and 30000 for miner
* a password is required for docker deployment. Otherwise, you cannot access the wallet
    * default is 'tera'