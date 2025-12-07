# AzerothCore

A helper bash script for installing and maintaining an Azerothcore server.

![AzerothCore Helper Script](https://i.imgur.com/hAfugvT.png)

## Install

**Note you can install to any directory you want and this will still work. The script uses relative paths internally.  You can also use whatever username you want.**

- Provision fresh Ubuntu LTS server.
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
$ sudo apt install git zip rename mysql-server cmake build-essential libssl-dev libmysqlclient-dev clang libboost-all-dev libreadline-dev
```

- Create MySQL ``acore`` user and server database:

```
$ sudo mysql -uroot

DROP USER IF EXISTS 'acore'@'localhost';
DROP USER IF EXISTS 'acore'@'127.0.0.1';
CREATE USER 'acore'@'localhost' IDENTIFIED WITH mysql_native_password BY 'acore';
CREATE USER 'acore'@'127.0.0.1' IDENTIFIED WITH mysql_native_password BY 'acore';
GRANT ALL PRIVILEGES ON * . * TO 'acore'@'localhost' WITH GRANT OPTION;
GRANT ALL PRIVILEGES ON * . * TO 'acore'@'127.0.0.1' WITH GRANT OPTION;
FLUSH PRIVILEGES;
exit;
```

- Download my helper scripts:

```
$ git clone https://github.com/whipowill/sh-azerothcore.git ~/scripts
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
    - Edit ``~/scripts/actions/modules.sh`` to define your modules
- Compile core
- Reset database
- Pull configs
- Edit configs

The idea is to always make edits to your backup configs (``cd ~/backups/conf``) and to push those edits to the server. This way if you ever have to redownload and redeploy the server, your configs are safe.

- Push configs
- Start server
- View console
    - Create users using [instructions](https://www.azerothcore.org/wiki/creating-accounts)
    - Use ``ctrl-b-d`` to exit tmux

Manually change the ``acore_accounts.realmlist`` table in the MySQL database to reflect your desired name and IP address.

## How To Update

- Everything is done w/ the helper script:

```
$ menu
```

- Stop server
- Download core
- Download modules
- Compile core
- Reset database
- Pull configs
- Edit conigs
- Push configs
- Start server

## Custom Patches

Note the ``patches/`` directory which includes various database migrations I've found along the way that you might find helpful.

```
$ mysql -uacore -pacore acore_world < nameofpatch.sql
```

## External Links

- [AzerothCore Installation Instructions](https://www.azerothcore.org/wiki/ac-dashboard-core-installation)
- [AzerothCore Create New Accounts](https://www.azerothcore.org/wiki/creating-accounts)
- [AzerothCore Gamemaster Commands](https://www.azerothcore.org/wiki/gm-commands)
- [How To Change Ubuntu Timezone](https://linuxize.com/post/how-to-set-or-change-timezone-on-ubuntu-20-04/)