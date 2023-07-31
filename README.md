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

Manually change the ``acore_realmlist`` record in the MySQL database to the desired name and IP address.

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

## Recommended Mods

- [WorldChat](https://github.com/azerothcore/mod-world-chat) - enable world chat
- [ProgressionSystem](https://github.com/azerothcore/mod-progression-system) - choose your expansion
- [AutoBalance](https://github.com/azerothcore/mod-autobalance.git) - scale dungeons down
- [AuctionHouse](https://github.com/azerothcore/mod-ah-bot.git) - enable faux auction trades
- [AccountMounts](https://github.com/azerothcore/mod-account-mounts) - share mounts on all toons
- [TransmogNPC](https://github.com/azerothcore/mod-transmog.git) - enable transmog NPC
- [LearnSpells](https://github.com/noisiver/mod-learnspells) - auto learn spells
- [SoloLFG](https://github.com/azerothcore/mod-solo-lfg.git) - use RDF w/ less than 5
- [HonorGuard](https://github.com/azerothcore/mod-gain-honor-guard) - kill guards for honor
- [CTASwitch](https://github.com/azerothcore/mod-cta-switch) - control call-to-arms rotation
- [StarterGuild](https://github.com/azerothcore/mod-starter-guild) - all new toons join guild
- [GuildFunds](https://github.com/noisiver/mod-guildfunds) - tithe to the guild
- [AllRacesAllClasses](https://github.com/heyitsbench/mod-arac) - any race can be any class
- [PVPTitles](https://github.com/azerothcore/mod-pvp-titles) - wear vanilla pvp titles
- [DungeonRespawn](https://github.com/AnchyDev/DungeonRespawn) - no more dungeon corpse walk
- [TimeIsTime](https://github.com/dunjeon/mod-TimeIsTime) - change length of a day
- [LootParty](https://github.com/pangolp/mod-quest-loot-party) - quest items lootable by all
- [StartingPet](https://github.com/Gozzim/mod-starting-pet) - hunters start game w/ pet
- [HearthReset](https://github.com/BytesGalore/mod-no-hearthstone-cooldown) - no heathstone cooldown

You may want to peruse the [index](https://github.com/topics/azerothcore-module) of every module available.

## Custom Patches

Note the ``patches/`` directory which includes various database migrations I've found along the way that you might find helpful.

## External Links

- [AzerothCore Installation Instructions](https://www.azerothcore.org/wiki/ac-dashboard-core-installation)
- [AzerothCore Create New Accounts](https://www.azerothcore.org/wiki/creating-accounts)
- [AzerothCore Gamemaster Commands](https://www.azerothcore.org/wiki/gm-commands)
- [How To Change Ubuntu Timezone](https://linuxize.com/post/how-to-set-or-change-timezone-on-ubuntu-20-04/)