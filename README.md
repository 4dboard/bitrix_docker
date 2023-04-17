<p align="center">🦄 PLEASE REMEMBER TO SMASH THE ⭐🔨 BUTTON AND <a href="https://github.com/sponsors/donspablo/dashboard">SUPPORT</a> 🌈 THANK YOU.</sub></sup></p>
<p align="center">📢<sub><sup> <i><b> YOUR SUPPORT IS GREATLY APPRECIATED / </b> <a href="https://www.patreon.com/donPabloNow">PATREON.COM/DONPABLONOW</a> / <b>BTC</b>  3HVNOVVMLHVEWQLSCCQX9DUA26P5PRCTNQ / <b>ETH</b> 0X3D288C7A673501294C9289C6FC42480A2EA61417 </i> </p>
  
<p align="center"><img src="https://user-images.githubusercontent.com/6468571/191125670-003a61ea-411f-42c0-b820-ad19124307a8.png"></img></p>

  | <p align="center"><img height="150px" src="https://user-images.githubusercontent.com/6468571/191125131-4e76fe43-770b-49e8-aa66-d1c8723f7e7a.png"></img></p><sub><sup><a href="https://github.com/4dboard/Proxy-yxorP">YXORP PROXY</a>: Web Proxy 🐮 yxorP: SAAS(y) Guzzler + App (GUI Dashboard incl.). Feature Rich, Multi-tenancy, Headless, Plug & Play, Augmentation & Content Spinning Web Proxy with Caching - PHP CURL+Composer are Optional. Leveraging SAAS architecture to provide multi-tenancy, multiple threads, caching, and an article spinner service.</sub></sup> | <p align="center"><img height="150px" src="https://user-images.githubusercontent.com/6468571/191125113-9d991af2-f911-43df-8994-a573aaf9a7ac.png"></img></p><sub><sup><a href="https://github.com/meanos/meanOs">MEANOS</a>: The operating system with the smallest memory footprint and the highest performance levels. NEW RELEASE A new version of the Web3 operating system will be released in the near future. https://mean.ơs.com. Operating systems have been subjected to significant revisions; if you would want to be informed when the subsequent version is made available, please subscribe.</sub></sup> |
|--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|

![image](https://user-images.githubusercontent.com/6468571/232353682-3ed8d0e1-ba11-4356-ad7e-d8be2909bad1.png)

# Bitrix Docker
Bitrix Docker allows you to easily run **Bitrix CMS** on **Docker**
I took the project from the repository https://github.com/bitrixdock/bitrixdock and refined it with additional features

![image](https://user-images.githubusercontent.com/6468571/232353725-677ded05-5b61-42bd-a0f1-1c99b182b6fe.png)

## Introduction
Bitrix Docker allows you to install or rebuild an existing project with out-of-the-box PHP, NGINX, MySQL and more.
It is possible to install multiple sites and install a certificate from LetsEncrypt.

![image](https://user-images.githubusercontent.com/6468571/232353766-5eba24dc-0434-477e-9e70-7d056c7b4f53.png)

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
