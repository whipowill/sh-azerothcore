# AzerothCore

Provisioning a World of Warcraft server is pretty complicated, and after studying several options for how to do this I decided to roll w/ [AzerothCore](https://www.azerothcore.org/).  I built a helper bash script that makes it easy to install and maintain the server.

![AzerothCore Helper Script](https://i.imgur.com/hAfugvT.png)

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
$ sudo apt install git zip rename mysql-server
```

- Change MySQL ``root`` password:

```
$ sudo mysql
> ALTER USER 'root'@'localhost' IDENTIFIED WITH mysql_native_password BY 'root';
> exit;
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
    - ``$ vim ~/scripts/actions/modules.sh`` to define your modules
- Compile core
- Reset database
- Init configs
- Pull configs
- Edit configs
    - ``$ cd ~/backups/conf``
    - ``$ vim authserver.conf``
        - ``LogsDir = "/home/azeroth/logs"``
    - ``$ vim worldserver.conf``
        - ``LogsDir = "/home/azeroth/logs"``
        - PlayerLimit = 10
- Push configs
- Start server
- View console
    - Create your user using [instructions](https://www.azerothcore.org/wiki/creating-accounts)
    - Use ``ctrl-b-d`` to exit tmux


Manually change the ``acore_realmlist`` record in the MySQL database to the proper name and IP address.

## How To Update

- Everything is done w/ the helper script:

```
$ menu
```

- Stop server
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

## Recommended Mods

- [AutoBalance](https://github.com/azerothcore/mod-autobalance.git) - scales dungeons down
- [AuctionHouse](https://github.com/azerothcore/mod-ah-bot.git) - adds random items to AH
- [AccountAchievements](https://github.com/azerothcore/mod-account-achievements.git) - get credit on all toons [BROKEN]
- [AccountMounts](https://github.com/azerothcore/mod-account-mounts) - get mounts on all toons
- [TransmogNPC](https://github.com/azerothcore/mod-transmog.git) - transmog your gear
- [LearnSpells](https://github.com/azerothcore/mod-learnspells.git) - auto learn spells on level [BROKEN]
- [SoloLFG](https://github.com/azerothcore/mod-solo-lfg.git) - use RDF w/ less than 5
- [HonorGuard](https://github.com/azerothcore/mod-gain-honor-guard) - get honor for killing guards
- [WorldChat](https://github.com/azerothcore/mod-world-chat) - enable world chat

## Custom Patches

There are a couple database migrations that my setup requires that I note them here for my reference:

```
# add portals to capitol cities
mysql -uroot -proot acore_world < ~/core/modules/portals-in-all-capitals/portals-in-all-capitals.up.sql

# disable Dark Portal (mod-progression forgot?)
mysql -uroot -proot --database="acore_world" --execute="UPDATE areatrigger_teleport SET target_map=0, target_position_x=-11883.2, target_position_y=-3206.1, target_position_z=-16.616, target_orientation=0.1357 WHERE ID=4354;"
# https://github.com/azerothcore/mod-progression-system/pull/279/commits/64d4653058273031e1ac7ac6d05e19c5df114941

# add transmog NPCs in Stormwind and Orgrimmar near tailoring trainers
mysql -uroot -proot --database="acore_world" --execute="DELETE FROM creature WHERE id1=190010"
mysql -uroot -proot --database="acore_world" --execute="INSERT INTO creature (guid, id1, id2, id3, map, zoneId, areaId, spawnMask, phaseMask, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, wander_distance, currentwaypoint, curhealth, curmana, MovementType, npcflag, unit_flags, dynamicflags, ScriptName, VerifiedBuild) VALUES (3200505, 190010, 0, 0, 0, 0, 0, 1, 1, 0, -8944.69, 789.857, 90.942, 0.257173, 300, 0, 0, 12600, 0, 0, 0, 0, 0, '', NULL), (3200504, 190010, 0, 0, 1, 0, 0, 1, 1, 0, 1798.12, -4573.66, 23.0072, 1.33037, 300, 0, 0, 12600, 0, 0, 0, 0, 0, '', NULL);"
```

I put these in a ``patch.sh`` file that I can run for cases when I reset the database.

## Helpful Tips

When in doubt, make sure both server sessions are running:

```
$ tmux list-sessions
```

Make an account just for admin stuff:

```
account create azeroth <pass>
account set gmlevel azeroth 3 -1
```

Login and create two users:

```
Admin // so you aren't tempted to use GM commands on your players
Auction // for use in the AHBot config
```

Familiarize yourself with these commands:

```
.gm on
.gm fly on
.modify speed 4
```

Create a guild:

```
.guild create Admin "Chromie Homies"
.guild invite <player> "Chromie Homies"
```

Fill the guild bank with [Traveler's Backpack](https://wotlk.evowow.com/?item=4500):

```
.additem 4500
```

Use ``mod-stater-guild`` to default players to your guild.

## External Links

- [AzerothCore Installation Instructions](https://www.azerothcore.org/wiki/ac-dashboard-core-installation)
- [AzerothCore Create New Accounts](https://www.azerothcore.org/wiki/creating-accounts)
- [AzerothCore Gamemaster Commands](https://www.azerothcore.org/wiki/gm-commands)