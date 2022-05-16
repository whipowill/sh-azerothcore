# AzerothCore

Provisioning a World of Warcraft server is pretty complicated, and after studying several options for how to do this I decided to roll w/ [AzerothCore](https://www.azerothcore.org/).  I've broken down the setup process into a handful of shell scripts that make it easy to install and maintain the server, including managing any modules you may want to add to your setup.

## Concepts

Some parts of this process to have in mind:

### Objects

- ``core`` - The code that runs the server, which is actually two servers, has to be compiled and executed.
    - ``authserver`` - Lets people log in to the server.
    - ``worldserver`` - Lets people play on the server.
- ``modules`` - These are mods to the game, an index can be found on the [website](https://www.azerothcore.org/catalogue.html#/).
- ``database`` - This is the mother lode, you want to treat it carefully, and never touch the accounts.

### Actions

- ``compile`` - The server code has to be compiled every time you make a change.
- ``reset`` - After every update, you need to reset the database so it's ready to accept the changes.
- ``migrate`` - After every server start, the database will automatically import any changes.
- ``start`` - Start the servers, remember there are two of them.
- ``stop`` - Stop the servers, remember there are two of them.

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

- Log out and back in as ``azeroth`` user:

```
$ exit
$ ssh azeroth@YOURSERVERIP
```

- Download helper scripts:

```
$ cd ~
$ git clone git@github.com:whipowill/sh-azerothcore.git scripts
```

- Open firewall:

```
$ sh ~/scripts/0_firewall.sh
```

- Install core:

```
$ sh ~/scripts/1_core.sh
```

- Install modules:

```
$ vim ~/scripts/2_modules.sh // add any modules you want, these are the ones I'm interested in
$ sh ~/scripts/2_modules.sh
```

- Compile core:

```
$ sh ~/scripts/3_compile.sh
```

- Init database:

```
$ sudo mysql
> ALTER USER 'root'@'localhost' IDENTIFIED WITH mysql_native_password BY 'root';
> exit;
$ sh ~/scripts/4_database.sh // will drop world database, which you want every time
```

- Edit your config settings:

```
$ cd ~/core/env/dist/etc
$ vim ~/.bashrc // add alias to get to these easier, since you may do it often
> alias conf="cd ~/core/env/dist/etc/"
```

- Set server to start on reboot:

```
$ crontab -e
> @reboot /bin/bash /home/azeroth/scripts/start.sh
```

- Start the server:

```
$ sh ~/scripts/start.sh
```

## Usage

- To view the console:

```
$ sh ~/scripts/view.sh // opens tmux session
```

- If, for whatever reason, the worldserver failed, you can restart it from Tmux:

```
$ ~/core/acore.sh run-worldserver
```

- To stop the servers:

```
$ sh ~/scripts/stop.sh
```

- To start the servers:

```
$ sh ~/scripts/start.sh
```

## Updates

- Stop servers:

```
$ sh ~/scripts/stop.sh
```

- Make changes to modules:

```
$ vim ~/scripts/2_modules.sh
```

- Run update script:

```
$ sh ~/scripts/5_update.sh
```

- Restart servers:

```
$ sh ~/scripts/start.sh
```

## References

- [AzerothCore Installation Instructions](https://www.azerothcore.org/wiki/ac-dashboard-core-installation)