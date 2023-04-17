# Bitrix Docker
Bitrix Docker allows you to easily run **Bitrix CMS** on **Docker**
I took the project from the repository https://github.com/bitrixdock/bitrixdock and refined it with additional features

## Introduction
Bitrix Docker allows you to install or rebuild an existing project with out-of-the-box PHP, NGINX, MySQL and more.
It is possible to install multiple sites and install a certificate from LetsEncrypt.

### Advantages of this build
- PHP service is packed in a separate image to save developers from time-consuming compilation.
- Other services are also "combed" and deployed instantly.
- Nothing extra.

## Order of development in Windows
If you are developing in Windows you have to install virtual machine, tested on Ubuntu 18.04.
Also if you are deploying Bitrix Docker as a local machine for development, in ``C:\Windows\System32\drivers\etc\hosts``` you must spell out the IP of the virtual machine and your local test domains.
Example:

![hosts_windows](https://raw.githubusercontent.com/darbit-ru/bitrix_docker/master/hosts_windows.png)

Your working project must be stored in two places, first is a local folder with projects on the host (opened in the IDE), second is the virtual machine
(e.g. ``/var/www/bitrix/test1``, ``/var/www/bitrix/test2``). The project on the host is mapped in the IDE to the guest OC.

## Installation
```
cd /var/www/ && curl -fsSL https://raw.githubusercontent.com/darbit-ru/bitrix_docker/master/install.sh -o install.sh && chmod +x install.sh && ./install.sh
```

After the command, you will be shown the option selection

![install_options](https://raw.githubusercontent.com/darbit-ru/bitrix_docker/master/install_options.png)

```
I - install / add new site (the first time you run it, follow the instructions at the command line)
R - remove site
S - generate and add SSL certificate from LetsEncrypt.
F - Creating FTP account for the site folder
D - deleting FTP account
```

**Note:**.
When you install/add a new site using the command ``I``, the console will give you the data for the database and FTP (login and password).
The option ``R`` (remove the site), from the docker container removes the SSL certificate, the database site and all FTP accounts.

### Demo

[![Demo tool](https://img.youtube.com/vi/TKO1J4EOXK4/0.jpg)](https://www.youtube.com/watch?v=TKO1J4EOXK4)



### Checking Bitrix Docker status

To check that all services are running, look at the list of ``docker ps'' processes.
Look at all the ports being listened to, should be 80, 11211, 9000 ``netstat -plnt```.
Type the domain in your browser and enjoy.


If you succeeded, thanks for the star :)
Bugs are welcome at [issue](https://github.com/darbit-ru/bitrix_docker/issues)
Have fun!

## How to fill in the database connection
![db](https://raw.githubusercontent.com/darbit-ru/bitrix_docker/master/db.png)

## Note
- The default directory for websites is ``/var/www/bitrix/```, om
