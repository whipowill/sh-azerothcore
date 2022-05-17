# AzerothCore

Provisioning a World of Warcraft server is pretty complicated, and after studying several options for how to do this I decided to roll w/ [AzerothCore](https://www.azerothcore.org/).  I've broken down the setup process into a handful of shell scripts that make it easy to install and maintain the server, including managing any modules you may want to add to your setup.

## Install

- Provision fresh Ubuntu 20.04 LTS server.
- Connect as ``root``:

```
$ ssh root@YOURSERVERIP
```

- Create new user:

```
$ adduser azeroth
$ usermod -G sudo azeroth
```

- Relog as ``azeroth`` user:

```
$ exit
$ ssh azeroth@YOURSERVERIP
```

- Install some dependencies:

```
$ sudo apt update
$ sudo apt install git mysql-server
```

- Change MySQL ``root`` password:

```
$ sudo mysql
> ALTER USER 'root'@'localhost' IDENTIFIED WITH mysql_native_password BY 'root';
> exit;
```

- Download my helper scripts:

```
$ git clone git@github.com:whipowill/sh-azerothcore.git ~/scripts
```

- Add shortcut to ``.bashrc``:

```
$ vim ~/.bashrc
> alias menu="bash ~/scripts/menu.sh"
```

- Relog into the server so ``.bashrc`` changes take effect.
- Set server to start on reboot:

```
$ crontab -e
> @reboot /bin/bash /home/azeroth/scripts/actions/start.sh
```

- Everything is done w/ the helper script:

```
$ menu
```

- Open ports
- Download core
- Download modules
    - ``$ vim ~/scripts/actions/modules.sh`` to define your modules
- Compile core
- Reset database
- Init configs
- Pull configs
- Edit conigs
    - ``$ cd ~/backups/conf``
    - Make changes to your configs
    - Going forward, always edit your backup configs and push them to server
- Push configs
- Start server
- View console
    - Create your user using [instructions](https://www.azerothcore.org/wiki/creating-accounts)
    - Use ``ctrl-b-d`` to exit tmux

## References

- [AzerothCore Installation Instructions](https://www.azerothcore.org/wiki/ac-dashboard-core-installation)