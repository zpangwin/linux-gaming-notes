# Risen 2


## Description

How to install Risen 2 GOG version in wines

This is for the **GOG** version only. No matter what I tried, the steam verion would always crash on launch. According to protondb, some people claim that this might be due to a drm on the steam version (unconfirmed). In my experience, there this game is easier to setup in a 32-bit wine prefix too; since steam defaults to a 64-bit prefix and requires some hacking to even use 32-bit wine prefixes, that could also be part of the issue.



----


## Current Status

Game launches. You will get a black screen with audio during the Piranha-Bytes splash video but the New Game/Intro Story video works fine (e.g. video is displayed with audio). Xbox 360 controller worked fine -- actually it worked better for me in wine than it did under the steam version on windows.

If you don't want this, you can shorten the launch sequence to a brief (\~ 5 sec?) black screen with the menu appearing right after that by deleting or renaming the logo\*.vid files under the data/extern/videos folder (more below).

----


## System Details

* Fedora 33 Cinnamon spin
* latest wine staging from winehq repo
* winetricks installed from github repo
* Risen 2 Gold Edition base game + dlc from GOG.com

terminal info:

    $ inxi -SG
    System:
      Host: <hostname> Kernel: 5.10.19-200.fc33.x86_64 x86_64 bits: 64 
      Desktop: Cinnamon 4.8.6 Distro: Fedora release 33 (Thirty Three) 
    Graphics:
      Device-1: NVIDIA GM204 [GeForce GTX 970] driver: nvidia v: 460.32.03 
      Display: x11 server: Fedora Project X.org 1.20.10 driver: nvidia 
      resolution: 1920x1080~60Hz 
      OpenGL: renderer: GeForce GTX 970/PCIe/SSE2 v: 4.6.0 NVIDIA 460.32.03 
     
    $ wine --version
    wine-6.3 (Staging)
     
    $ winetricks --version
    20210206-next - sha256sum: 872a62040e7518ab9d577dc78d3a13a55341e310e3926e6ce9d5a77e3ef6fcc9
     
    $ lutris --version
    2021-03-04 15:27:25,763: Your version of python-magic is too old.


----


## Installation Details

I retested these steps after cleaning them up and they still worked for me


    cd /media/f/lutris/games
    PFXD="$PWD/gog-risen-2"
    
    env WINEPREFIX="$PFXD" WINEARCH=win32 wine wineboot
    # -> if you get prompted about installing mono, agree and wait it out (takes awhile)
    
    env WINEPREFIX="$PFXD" winetricks vcrun2005 d3dx9 physx win7 d3dcompiler_43 corefonts gdiplus vcrun6 d3dx9_43
    
    # copy all game installers to C:\temp\risen2
    
    # install base game - I installed to 'C:\GOG\Risen2'
    # choose Exit when done (dont click launch button)
    env WINEPREFIX="$PFXD" wine start /D"C:/temp/risen2" "setup_risen_2_-_dark_waters_1.0_(18732).exe"
    
    # install dlc
    # choose Exit when done (dont click launch button)
    env WINEPREFIX="$PFXD" wine start /D"C:/temp/risen2" "setup_risen_2_gold_edition_1.0_(18732).exe"
    
    # run game and confirm everything works
    env WINEDEBUG="fixme-all" WINE_LARGE_ADDRESS_AWARE=1 WINEPREFIX="$PFXD" wine start /D"C:/GOG/Risen2/system" "Risen.exe"
     
    # if you have feral interactive's gamemoderun installed, then use this to avoid screensaver:
    env WINEDEBUG="fixme-all" WINE_LARGE_ADDRESS_AWARE=1 WINEPREFIX="$PFXD" "/usr/bin/gamemoderun" wine start /D"C:/GOG/Risen2/system" "Risen.exe"

-> worked fine

To enable controller:

* connect controller (wired)/turn it on (wireless)
* start game anf get to main menu
* using keyboard: Option > Gameplay > 2nd-to-last option > Yes > E to Apply.

If you get weird vertical sensitivity issues, take a look [here](https://steamcommunity.com/sharedfiles/filedetails/?id=734013029) or just look in your ConfigDefault.xml for 'SensitivityX' and 'SensitivityY' values and adjust accordingly. The higher the value, the faster your mouse movement; the guide author used set X to 0.4 and Y to 2.0, but it will depend on your system.


## Removing buggy logo videos


If you don't want to listen to the logo/splash screen videos (Deep Silver logo, Ubi logo, and PB logo) - which in my setup only play audio anyway, you can go into the videos folder and rename or delete them.

    # from game install dir
    cd /media/f/lutris/games/gog-risen-2/drive_c/GOG/Risen2
     
    # go to videos subfolder
    cd data/extern/videos
     
    # rename the logo files
    for f in logo_*.vid; do mv "$f" "${f}.bak"; done
    # OR
    prename 's/(.vid)$/$1.bak/g' logo_*.vid


## Disable screensaver while playing

The easiest way I've found to do this on a Linux system is to install Gamemoderun and use that. If on fedora, it's available in the central repos and you can use `sudo dnf install -y gamemode`

Ubuntu/Mint/etc users probably need to find a PPA or else just install manually from their [github repo](https://github.com/FeralInteractive/gamemode)

once you have it installed you can launch with something like:

    /usr/bin/env WINEDEBUG="fixme-all" WINE_LARGE_ADDRESS_AWARE=1 WINEPREFIX="/media/f/lutris/games/gog-risen-2" "/usr/bin/gamemoderun" "/usr/bin/wine" start /D"C:/GOG/Risen2/system" "Risen.exe"


## Desktop shortcut

See included file in this folder. For best portability and to avoid copyright issues, it references the bmp file included with the gog install but you can probably find or make a better icon.

The 'risen2.desktop' is for a regular wine launch (you'll need to manually disable your screensaver)

The 'gamemode.risen2.desktop' is for running with gamemoderun (which you'll need to install yourself but will automatically handle screensaver)


## Unofficial Patch

You can get it here:
https://www.moddb.com/games/risen-ii-dark-waters/downloads/risen-2-unofficial-patch-v05

To allow myself to be able to turn the patch on/off at will, I have set up my game install folder as a git repo. If you are interested in doing so (such as for being able to use the parrot exploit which the patch blocks), then you could set it up like this:


    # if you want the unofficial risen 2 patch, you can get it here:
    # https://www.moddb.com/games/risen-ii-dark-waters/downloads/risen-2-unofficial-patch-v05
    $ sha256sum risen2_unofficial_patch-setup-0.5.exe
    fc5bd45906905de337e8ba69a9d8e8a7e447695132a88a931c0f237220a2fd98  risen2_unofficial_patch-setup-0.5.exe
     
    # if you want to put the folder under version control so you can revert the patch later
    # (such as if you want to use the parrot exploit later)
    cd drive_c/GOG/Risen2
    git init
    printf '# ignore redist\nredist\nredist/*\nredist/**\nredist/*.*\n\n' >> .gitignore
    printf '# ignore files > 500M (patch doesnt modify them anyway)\n' >> .gitignore
    printf 'dialogue_english.pak\ndialogue_german.pak\n' >> .gitignore
    printf 'dialogue_russian.pak\ndialogue_polish.pak\n' >> .gitignore
    printf 'images.pak\nsounds.pak\n' >> .gitignore
    git add .gitignore && git commit -m 'initial commit';
    git add * && git commit -m 'vanilla game + dlc';
    git tag vanilla;
     
    # download the included reg file:
    # trick-unofficial-patch-installer-to-work-with-gog.reg
    # save it under C:\ or C:\temp
     
    # open wine regedit
    env WINEPREFIX="$PFXD" wine regedit
     
    # In wine regedit's menus: Registry > Import > import the reg file
    #   trick-unofficial-patch-installer-to-work-with-gog.reg
    # then browse the registry paths and confirm it was added correctly
    # when done, close out of wine regedit
     
    # then you can run the patch installer with:
    env WINEDEBUG="fixme-all" WINEPREFIX="$PFXD" wine start /D"C:/temp/risen2" "risen2_unofficial_patch-setup-0.5.exe"
    # If you skip the regedit stuff, you'll get an error:
    #	title='Risen 2 Unofficial Patch v0.5 Setup'
    #	message='Error! Can't initialize plug-ins directory'
     
    # commit patch files
    git add * && git commit -m 'unofficial risen 2 patch';
    git tag unofficial-patch;
     


The patch does not overwrite any files. It adds the following files (sha256 sums incl):
./data/common/templates.p00 75c474c036d23b59ccb3c432c14dfaffc7ec4d721ee65e97c1e79e65b747bc65
./data/compiled/library.p00 9746453b13dbd88e95cdf906402e69deadf60b58d2cb2dfd02564147f1da3385
./data/compiled/strings.p00 f8a052b89e8ddaa1d2f28a7cf94b283040e8c91aa2c29e3aa6291eb9edb445ad
./r2_unofficial_patch-uninst.exe b57e912f5e9a0e8e39eb1e19a32fdd69f00a6a5c0c1eb677bebce94eec310465

To remove the patch, you can either move/delete the files manually or run the uninstaller with wine.

UPDATE:

As far as I can tell, the mod itself does not contain any games assets (ignoring the 'uninstaller', I am showing the files themselves coming in at \~ 876 kB). I'm not entirely sure who the mod author is and "Mein Deutsche ist nicht gut".

I *think* the primary (only?) author was someone who goes by Baltram on the [worldofplayers.de forums](https://forum.worldofplayers.de/forum/threads/1154440-release-Risen-2-Unofficial-Patch) but my German is not very good at all so I'm not sure if this is all his/her work or if it was a collaborative effort.

While the [Risen 1 unofficial patch](https://forum.worldofplayers.de/forum/threads/978203-RELEASE-Risen-unofficial-patch) appears to provide both the source code and a ZIP-based archive, I could not find any such oepn-formats for Risen 2.

According to a post [here](https://forum.worldofplayers.de/forum/threads/1154440-release-Risen-2-Unofficial-Patch/page3), Baltram replied in 2015 Mar - in response to someone asking if there will be any additional updates to the mod:

> I am sorry but no, I don't plan to release a new version. I made this patch about 3 years ago. Now I am totally out of touch with Risen 2 modding and it would take me a lot of time to get into it again. (Besides, most of the bugs that still exist can't be fixed by editing the resource files.) 

That being the case and considering that this is a mod which does not contain any copyrighted game assets and that if one can't get the installer to run, it becomes practically impossible to extract on non-windows systems... I decided to provide extracted copies of the \*.p00 files I listed above in my repo and put them in an archive named `manual-patch-install.tar.xz` which should be easy enough for most linux users to extract.

For those that get [a feeling of impending doom whenever they need to use the "tar" command](https://xkcd.com/1168/), you can just run this to extract:

    tar --extract --file="manual-patch-install.tar.xz"

To Baltram (and other mod authors, if applicable): should you prefer that I do not include copies of the mod files here, please let me know and I will be happy to remove these files ASAP even if it means losing the git history for this repo. Likewise, if you were fine with it and wanted to grant me explicit permission or have me update credits, I would be happy to proudly update with that info as well. For either case, I can be reached at \<my github/gitlab username\> \<at\> \<that one email service owned by google\>. For anyone else, while I am not opposed to general questions / corrections / addendums related to my setup, I am not likely to run through and debug everything for you either.

Update 2: After reading more and trying to learn a little about the modding process, I found there is also an app called [Risen 2 - Mod Starter v2.0](https://forum.worldofplayers.de/forum/threads/1147645-RELEASE-Risen-2-ModStarter-v-2-0-%28Online-DB-version%29) which seems to be a mod manager for some risen 2 mods. I have not tested this myself but I noticed that the unofficial patch mod appears to be available as a zip file under this thread and that the zip file appears to contain the same files that get extracted from the regular mod exe. In the event that I have to take down the tar.xz and rebuild my repo without that in the history, then this might be a good alternate location that is extractable on Linux. Wish I had seen this before I messaged the mod author / made my own repack... probably would have been simpler to just use that from the start, had i known about it. I didn't test anything with this so this is all guess relevant guesswork.

## Risen 2 - Mod Starter v2.0

Download / info from [here](https://www.worldofrisen.de/english/download_85.htm) - download might require registration/login
Download mirror [here](https://www.moddb.com/games/risen-ii-dark-waters/downloads/risen-2-modstarter-v20-online-db-version) - no login required
More info from [here](https://forum.worldofplayers.de/forum/threads/1147645-RELEASE-Risen-2-ModStarter-v-2-0-%28Online-DB-version%29)


TBD - currently untested


* Any other winetricks dependencies needed to run this?: didn't seem to be any

* Issues: Some of the controls are a little wonky under wine. Possibly installing mfc or similar could help? but i'd rather not risk it. For the exe selection, I could only pick lnk file and couldn't edit path to exe (you can later edit via ini file to fix this). For the mods page, the scrollbar didn't work for me but you could click in the text and use keyboard up/down/left/right arrows ok. Also on Mods page, I could not click to check the boxes but i could click on the mod name and then press spacebar to check/uncheck; it was also sometimes picky where i clicked on the mod name and i had to click more left/right.


    # install the mod manager
    cp -t "/media/f/lutris/games/gog-risen-2/drive_c/temp" "$HOME/Downloads/R2MDS_OnlineDB_2_0_0_0.exe"
    env WINEDEBUG="fixme-all" WINEPREFIX="/media/f/lutris/games/gog-risen-2" wine start /D"C:/temp" "R2MDS_OnlineDB_2_0_0_0.exe"
     
    # run the mod manager for first time - then see notes below
    env WINEDEBUG="fixme-all" WINEPREFIX="/media/f/lutris/games/gog-risen-2" wine start /D"C:/Program Files/Risen2MDS" "r2mds.exe"
     
    # when it came up it complained that it couldn't find the risen exe and wanted me to type the path
    # when i tried typing nothing appeared in the text box and i wasn't able to type/paste there but
    # clicking the Browse button worked and I was able to navigate.
    # oddly it wouldn't let me select:
    #   C:\GOG\Risen2\system\Risen.exe
    # but I was able to select:
    #   C:\GOG\Risen2\Launch Risen 2 - Dark Waters.lnk
    # then relaunch and close the program.
    # finally I edited /media/f/lutris/games/gog-risen-2/drive_c/Program Files/Risen2MDS/mds.ini
    # and manually changed the path to the exe and relaunched.
     
    # re-run the mod manager with correct path in ini file
    env WINEDEBUG="fixme-all" WINEPREFIX="/media/f/lutris/games/gog-risen-2" wine start /D"C:/Program Files/Risen2MDS" "r2mds.exe"
     
    # when it comes up, choose "Internet Mods DB" from the menu at top and check the ones you want then click Download.
    # it will take a bit to download then prompt you to add them to your modlist and restart (pick yes)
    # click the 'Check all' button then 'Integrate mods' button to copy them to your risen 2 install folder
    # then 'Close' and launch your game via wine as you normally do


For my testing, I selected the following mods:

* R2.E.T_Pack_V1.0
* Unofficial Patch v0.5
* LoD Distance Mod Final
* AntiWarp Ultra
* Crosshair Mod v1.1
* No Parallax Occlusion Mapping Mod
* Lookup Specular

Seemed to wokr fine for me


## Sources

My approach above is based on aggregated data from multiple sources and tested until I got it working. Here are some of the sources I used if you are interested in looking them over in more detail. If you contributed to any of these then Thank You!  - this guide probably wouldn't have been possible without your contributions.

1. [Gamersonlinux: Risen 2 Dark Waters Guide by booman](https://www.gamersonlinux.com/forum/threads/risen-2-dark-waters-guide.1717/)
2. [Winehq DB - Test Results section](https://appdb.winehq.org/objectManager.php?sClass=version&iId=35292#testdata)
3. [GOG Foums: Risen series for Linux by adamhm](https://www.gog.com/forum/risen_series/risen_series_for_linux) - especially looking at the source of the script in his [risen2_wine.tar.xz](https://www.dropbox.com/s/yf7fijcrm26ld2k/risen2_wine.tar.xz?dl=0). *(note: you may need to be logged into gog forums to see all the posts; i know i had that issue at least once)*
4. [Protondb: Risen 2](https://www.protondb.com/app/40390) - ultimately this did not work for me but i might have grabbed some winetricks dependencies from here
5. [Lutris: Risen 2 (view script)](https://lutris.net/games/risen-2-dark-waters/) - ultimately this did not work for me but i might have grabbed some winetricks dependencies from here
6. Risen 2 Unofficial patch ([on moddb](https://www.moddb.com/games/risen-ii-dark-waters/downloads/risen-2-unofficial-patch-v05) | [on orum.worldofplayers.de](https://forum.worldofplayers.de/forum/threads/1154440-release-Risen-2-Unofficial-Patch)) - didn't really help with install but i still prefer to have less bugs
7. Risen 2 - Mod Starter v2.0 ([1](https://www.worldofrisen.de/english/download_85.htm), [2](https://forum.worldofplayers.de/forum/threads/1147645-RELEASE-Risen-2-ModStarter-v-2-0-%28Online-DB-version%29)) - wish i had noticed this sooner. i didn't come across it until my guide was finished and i was a good chunk of the way through the game
