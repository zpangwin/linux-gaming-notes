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


    cd /media/f/wine/games
    PFXD="$PWD/gog-risen-2"
     
    env WINEPREFIX="$PFXD" WINEARCH=win32 wine wineboot
    # -> if you get prompted about installing mono, agree and wait it out (takes awhile)
     
    # if you would like to sandbox your wine dir so that the following are NOT used:
    #   a) Z:\ mapping which allows windows apps to more easily view your linux / filesystem.
    #   b) C:/users/${USER}/ symlinks to your linux home subfolders
    # then use:
    env WINEPREFIX="$PFXD" winetricks sandbox
     
    # install dependencies needed by the game
    env WINEPREFIX="$PFXD" winetricks vcrun2005 d3dx9 physx win7 d3dcompiler_43 corefonts gdiplus vcrun6 d3dx9_43
     
    # fix for wine bug #50867 which affects wine staging 6.5
    # https://bugs.winehq.org/show_bug.cgi?id=50867
    # this creates a hard-linked copy of 'start.exe' if it
    # doesn't exist on the windows PATH as seen by wine 6.5
    test ! -f "$PFXD/drive_c/windows/start.exe" && ln "$PFXD/drive_c/windows/command/start.exe" "$PFXD/drive_c/windows/start.exe"
     
    # copy all game installers to C:\temp\risen2
    # this assumes you downloaded the offline installers from gog to ~/Downloads
    mkdir -p "${PFXD}/drive_c/temp/risen"
    cp -a -t "${PFXD}/drive_c/temp/risen" ~/Downloads/setup_risen_2*.*
     
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

-> later, I ended up doing a complete system reimage due to an issue with from a completely unrelated project and wanting to have a fresh setup. After the fresh install, I had fedora 33/kernel 5.11.11-200/Cinnamon 4.8.6/wine-6.5 (Staging) and had changed both the location of the wineprefix folder and my username. I ended up replacing the user name in all of the \*.reg files (`sed -Ei 's/oldusername/newusername/g' *.reg`) / symlinks (`find . -type l|grep '<oldusername>'` then `rm symlink-name; ln -s ~/path symlink-name`). But still couldn't run the game and was seeing several errors in the terminal:

    wine: could not open working directory L"unix\\media\\f\\wine\\games\\gog-risen-2\\", starting in the Windows directory.
    Application could not be started, or no application associated with the specified file.
    ShellExecuteEx failed: File not found.

I would get these errors when running the game binary or even just `... wine cmd` and was getting them when trying to run from my previous prefix folder and when I tried creating a new one and setting up from scratch. I tried putting selinux into permissive mode temporarily to rule it out as a cause but this had no effect (plus I hadn't done anything with selinux originally when it was working on fedora). After confirming the same issue under Linux Mint 20 (also with wine staging 6.5) and looking around online, I realized it was due to [this bug](https://bugs.winehq.org/show_bug.cgi?id=50867). I have updated my instructions so that hopefully anyone installing from this guide should be able to avoid running into this issue (the fix was to copy/link start.exe to C:/Windows folder). After applying the fix, the game launched fine once again.


## To enable controller

In Risen 2, even if your controller is working fine normally, you will need to enable it from inside the game menus.

1. connect controller (wired)/turn it on (wireless)
2. If using Fedora, xbox controllers are supported automatically via the kernel xpad module and should "just work" with zero setup needed. If using Debian-based distros, you may need to install the `xboxdrv` package first.
3. Optional: Test that your controller is working at the system-level. I find that using the controller in steam's big picture mode is a pretty quick and easy way to check this. Alternately, you can use the "Test" tab on wine's controller dialog: `WINEPREFIX="/media/f/wine/games/gog-risen-2" wine control joy.cpl`
4. Start the game and get to main menu
5. Using keyboard: Option > Gameplay > 2nd-to-last option > Yes > E to Apply.

Thankfully, it should remember the setting so you won't have to do it again unless you reinstall / delete or change certain Risen 2 config files / manually switch back to keyboard / etc.

If you get weird vertical sensitivity issues, take a look [here](https://steamcommunity.com/sharedfiles/filedetails/?id=734013029) or just look in your ConfigDefault.xml for 'SensitivityX' and 'SensitivityY' values and adjust accordingly. The higher the value, the faster your mouse movement; the guide author used set X to 0.4 and Y to 2.0, but it will depend on your system.


## Removing buggy logo videos


If you don't want to listen to the logo/splash screen videos (Deep Silver logo, Ubi logo, and PB logo) - which in my setup only play audio anyway, you can go into the videos folder and rename or delete them.

    # from game install dir
    cd /media/f/wine/games/gog-risen-2/drive_c/GOG/Risen2
     
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

    /usr/bin/env WINEDEBUG="fixme-all" WINE_LARGE_ADDRESS_AWARE=1 WINEPREFIX="/media/f/wine/games/gog-risen-2" "/usr/bin/gamemoderun" "/usr/bin/wine" start /D"C:/GOG/Risen2/system" "Risen.exe"


## Running in a security sandbox

First, make sure you have firejail installed:

    # fedora
    sudo dnf install -y firejail;
    
    # linux mint / ubuntu
    sudo add-apt-repository ppa:deki/firejail -y;
    sudo apt update -y;
    sudo apt-get install -y firejail;

Initially, I just tried to take my gamemoderun setup and pass it through to firejail like so:

    /usr/bin/env WINEDEBUG="fixme-all" WINE_LARGE_ADDRESS_AWARE=1 WINEPREFIX="/media/f/wine/games/gog-risen-2" "/usr/bin/gamemoderun" "/usr/bin/firejail" "/usr/bin/wine" start /D"C:/GOG/Risen2/system" "Risen.exe"

On Fedora 33, the above almost worked. It came up with the game. Sound worked. Keyboard worked. But I didn't have any response from my controller (xbox 360).

But thanks to a [hint](https://wiki.archlinux.org/index.php/Gamepad#Using_hid-nintendo_with_Steam_Games) on the Arch Linux wiki, I was able to get the controller working without too much trouble by adding `--noprofile --blacklist=/sys/class/hidraw/` after firejail.

The full command (with gamemoderun) is:

    /usr/bin/env WINEDEBUG="fixme-all" WINE_LARGE_ADDRESS_AWARE=1 WINEPREFIX="/media/f/wine/games/gog-risen-2" "/usr/bin/gamemoderun" "/usr/bin/firejail" --noprofile --blacklist=/sys/class/hidraw/ "/usr/bin/wine" start /D"C:/GOG/Risen2/system" "Risen.exe

I was able to load my previous save, with sound and controller no problem. I did have to go back in the menus and re-enable my controller but that might have been because I launched it without controller support on the first attempt.

## Desktop shortcuts

See included file in this folder. For best portability and to avoid copyright issues, it references the bmp file included with the gog install but you can probably find or make a better icon.

| File name | Description |
|:---------:|:------------|
| [risen2.desktop](https://github.com/zpangwin/linux-gaming-notes/raw/master/risen2/risen2.desktop) | Regular wine launcher without any extra dependencies. Note: you may need to manually disable your screensaver. |
| [firejail.risen2.desktop](https://github.com/zpangwin/linux-gaming-notes/raw/master/risen2/firejail.risen2.desktop) | Wine launcher that runs through firejail. Must also have firejail installed. Note: you may need to manually disable your screensaver. |
| [gamemode.risen2.desktop](https://github.com/zpangwin/linux-gaming-notes/raw/master/risen2/gamemode.risen2.desktop) | Wine launcher that runs through feral interactive's [gamemoderun](https://github.com/FeralInteractive/gamemode). Must also have gamemoderun installed. Screensaver should be handled automatically by gamemoderun. |
| [firejail+gamemode.risen2.desktop](https://github.com/zpangwin/linux-gaming-notes/raw/master/risen2/firejail%2Bgamemode.risen2.desktop) | Wine launcher that runs through both firejail and feral interactive's [gamemoderun](https://github.com/FeralInteractive/gamemode). Must also have both firejail and gamemoderun installed. Screensaver should be handled automatically by gamemoderun. |

**NOTE:** If download one of my files from the web, you will need to do 2 things before you can use it.

1. Open it in vi or your favorite text editor. Review the file path and if you used a different path during the install, then update the WINEPREFIX path accordingly.

2. Change the desktop file to give it execute permissions. You can either do this by right-clicking it from your file mananger and choosing properties. Or from the terminal using: `chmod a+x ~/Desktop/*.desktop`





## Risen 2 Unofficial Patch by Baltram

There are 3 ways you can install the Risen 2 Unofficial Patch (R2UP) mod:

1. **Using the repacked tar.xz archive**: this contains the unpacked files the Unofficial Patch and is simply repacked into a common archive format and hosted in my repo (with permission from the mod's author, Baltram).
2. **Using the "Risen 2 - Mod Starter v2.0" mod manager**: a Risen 2 mod manager that includes a preset list of available mods.
3. **Running the R2UP exe installer via wine**: In my testing on Linux, this usually worked fine but it did fail to extract in a couple of tests and was the most time-consuming of the 3 methods. But if you wish to limit trust to only the original mod author, you can get it from the original [Release thread on worldofplayers.de](https://forum.worldofplayers.de/forum/threads/1154440-release-Risen-2-Unofficial-Patch?p=19094558&viewfull=1#post19094558)

More info on the mod can be found here:

* [Original Release thread on worldofplayers.de](https://forum.worldofplayers.de/forum/threads/1154440-release-Risen-2-Unofficial-Patch?p=19094558&viewfull=1#post19094558) - where Baltram originally released. no login required. 2nd post contains changelog, thread contains other comments that might be useful.
* [Moddb.com mirror](https://www.moddb.com/games/risen-ii-dark-waters/downloads/risen-2-unofficial-patch-v05) - same version, no login required. some notes but no comments.

UPDATE 2021, Apr 5th:

I have confirmed that Baltram on the [worldofplayers.de forums](https://forum.worldofplayers.de/forum/threads/1154440-release-Risen-2-Unofficial-Patch) is indeed the original author. He was kind enough to respond to my pm on that forum and give permission. His response included below:

**Baltram**:

> Hi,
>
> thanks for asking. I am okay with you redistributing the patch as long as you link to the original [release thread](https://forum.worldofplayers.de/forum/threads/1154440-release-Risen-2-Unofficial-Patch?p=19094558&viewfull=1#post19094558).
You can find the (questionably organized) source code for my modding tools [on GitHub](https://github.com/Baltram/rmtools/tree/master/mimicry/source/MimicryApp), some of which are for Risen 2. As for the unofficial patch, I implemented a lot of the changes by incrementally editing the game's complied documents (particularly compiled_infos.bin) in a hex editor, so there is no human-readable source. I could dig up my old [work folder](http://baltr.de/t/Risen_2_Unofficial_Patch_Raw.7z) though, which has a little bit of documentation (in German).
>
>Good luck!

According to a post [here](https://forum.worldofplayers.de/forum/threads/1154440-release-Risen-2-Unofficial-Patch/page3), Baltram replied in 2015 Mar - in response to someone asking if there will be any additional updates to the mod:

> I am sorry but no, I don't plan to release a new version. I made this patch about 3 years ago. Now I am totally out of touch with Risen 2 modding and it would take me a lot of time to get into it again. (Besides, most of the bugs that still exist can't be fixed by editing the resource files.)

I *might* decide to take a stab at updating the mod a bit myself but understand that I am not committing to that and *if* I do then it will depend entirely on a) if I have enough time and remain interested enough to do so and b) if I am able to figure out the technical details well enough to do the modding.



### OPTIONAL: R2UP Pre-install prep

To allow myself to be able to turn the patch on/off at will, I have set up my game install folder as a git repo. Reasons why you might want to do this include:

* testing whether the patch is working or not (I find testing via Severin's dialog options in Caldera is a nice quick test that can be done early on - see the mod's patch notes for more details)
* being able to use the parrot gold exploit which the patch blocks
* if you only want the patch installed for part of your playthrough
* if you have issues and wish to test whether they still occur without the patch
* you just really like using git

If you are interested in doing so then you could set it up like this:

    # if you want to put the folder under version control so you can revert the patch later
    # (such as if you want to use the parrot exploit later)
    cd drive_c/GOG/Risen2
    git init
     
    # download .gitignore
    wget -O .gitignore https://github.com/zpangwin/linux-gaming-notes/raw/master/risen2/risen2-install-folder.gitignore
     
    # OR manually create .gitignore
    printf '# ignore redist\nredist\nredist/*\nredist/**\nredist/*.*\n\n' >> .gitignore
    printf '# ignore files > 500M (patch doesnt modify them anyway)\n' >> .gitignore
    printf 'dialogue_english.pak\ndialogue_german.pak\n' >> .gitignore
    printf 'dialogue_russian.pak\ndialogue_polish.pak\n' >> .gitignore
    printf 'images.pak\nsounds.pak\n' >> .gitignore
     
    # Add initial commit
    git add .gitignore && git commit -m 'initial commit';
    git add * && git commit -m 'vanilla game + dlc';
    git tag vanilla;


### Option 1: Installing R2UP via repacked tar.xz

The patch mod does not contain any games assets. Ignoring the uninstaller, I am showing the files themselves coming in at \~ 876 kB.

It also does not overwrite any files provided by either the base game or the dlc. It adds the following files (sha256 sums incl):
./data/common/templates.p00 75c474c036d23b59ccb3c432c14dfaffc7ec4d721ee65e97c1e79e65b747bc65
./data/compiled/library.p00 9746453b13dbd88e95cdf906402e69deadf60b58d2cb2dfd02564147f1da3385
./data/compiled/strings.p00 f8a052b89e8ddaa1d2f28a7cf94b283040e8c91aa2c29e3aa6291eb9edb445ad
./r2_unofficial_patch-uninst.exe b57e912f5e9a0e8e39eb1e19a32fdd69f00a6a5c0c1eb677bebce94eec310465

Considering the mod does not contain any copyrighted game assets, is small, can sometimes be difficul to extract under Linux, and the mod author - Baltram - gave his permission (see above), I have repacked the \*.p00 files from the mod into into [manual-patch-install.tar.xz](https://github.com/zpangwin/linux-gaming-notes/raw/master/risen2/manual-patch-install.tar.xz) to make it easy for most linux users to extract.

For those that get [a feeling of impending doom whenever they need to use the "tar" command](https://xkcd.com/1168/), you can just run this to extract:

    cd /media/f/wine/games/gog-risen-2/drive_c/GOG/Risen2
     
    # download
    wget https://github.com/zpangwin/linux-gaming-notes/raw/master/risen2/manual-patch-install.tar.xz
     
    # then extract
    tar --extract --file="manual-patch-install.tar.xz"
     
    # then install patch files
    cp -a -t /media/f/wine/games/gog-risen-2/drive_c/GOG/Risen2/data ./manual-patch-install/com*



### Option 2: Installing R2UP via Mod Starter v2.0

Some time after I had repacked the original R2UP files, I discovered there was also a mod manager that could install the mod without requiring the mod exe installer to be unpacked.

This mod manager app is called [Risen 2 - Mod Starter v2.0 by LordOfWAR](https://forum.worldofplayers.de/forum/threads/1147645-RELEASE-Risen-2-ModStarter-v-2-0-%28Online-DB-version%29) and allows you to select from a pre-defined list of risen 2 mods and install them.

Basically you will run the installer for this under wine and have it download and install the R2UP mod (and any other mods you might like). Note that the Mod Starter dialog/form controls are a little wonky under wine... possibly installing mfc or similar could help. But since I only needed to run it once and I could still get by, I didn't test this. I have included workarounds for the controls in the notes below.


1\. Download R2MDS_OnlineDB_2_0_0_0.exe from one of the links above and save it to a folder under your `<wine_prefix>/drive_c`

2\. Run the installer under wine

    # install the mod manager
    cp -t "/media/f/wine/games/gog-risen-2/drive_c/temp" "$HOME/Downloads/R2MDS_OnlineDB_2_0_0_0.exe"
    env WINEDEBUG="fixme-all" WINEPREFIX="/media/f/wine/games/gog-risen-2" wine start /D"C:/temp" "R2MDS_OnlineDB_2_0_0_0.exe"

3\. After the install completes, run the mod manager:

    # run the mod manager for first time - then see notes below
    env WINEDEBUG="fixme-all" WINEPREFIX="/media/f/wine/games/gog-risen-2" wine start /D"C:/Program Files/Risen2MDS" "r2mds.exe"

4\. It will prompt you for the game exe. For me, I wasn't able to select `C:\GOG\Risen2\system\Risen.exe` but I could select `C:\GOG\Risen2\Launch Risen 2 - Dark Waters.lnk` to get past this dialog.

5\. Now close out of the app and open its ini file `<wine_prefix>/drive_c/Program Files/Risen2MDS/mds.ini` in a text editor or go back to a terminal and edit it in sed. Change the value of Patch to be the Windows path to the game exe.

    cd "/media/f/wine/games/gog-risen-2/drive_c/Program Files/Risen2MDS"
    sed -E 's/^(Patch)=.*$/\1=C:\\GOG\\Risen2\\system\\Risen.exe/g' mds.ini
    grep Patch= mds.ini
      Patch=C:\GOG\Risen2\system\Risen.exe

6\. Repeat step \#3 to relaunch the app

7\. From the menu at top, choose "Internet Mods DB" to open the mod selection page

8\. Click on the mod name and then press spacebar to check/uncheck the selection. It was also sometimes picky where i clicked on the mod name and i had to click more to the left or right before it would become selected. Once the mod is selected, you should see some text in the bottom left for the mod's description. The scrollbar for the mod descriptions didn't work for me, clicking in the description text and I was able to move the cursor using up/down/left/right arrows.

9\. Check the mods you want then click Download. For my testing, I selected the following mods and don't recall running into any issues:

* R2.E.T_Pack_V1.0
* Unofficial Patch v0.5
* LoD Distance Mod Final
* AntiWarp Ultra
* Crosshair Mod v1.1
* No Parallax Occlusion Mapping Mod
* Lookup Specular

10\. It will take a bit to download then prompt you to add them to your modlist and restart (pick yes)

11\. Click the 'Check all' button then 'Integrate mods' button to copy them to your risen 2 install folder

12\. Click 'Close' and then launch your game via wine as you normally do



### Option 3: Installing R2UP via exe installer and wine

1\. First you will need to download the exe file. Save it under a `<your_wine_prefix>/drive_c/temp`. You can get the exe installer from one of these sources:

* [Original Release thread on worldofplayers.de](https://forum.worldofplayers.de/forum/threads/1154440-release-Risen-2-Unofficial-Patch?p=19094558&viewfull=1#post19094558) - where Baltram originally released. no login required. 2nd post contains changelog, thread contains other comments that might be useful.
* [Moddb.com mirror](https://www.moddb.com/games/risen-ii-dark-waters/downloads/risen-2-unofficial-patch-v05) - same version, no login required. some notes but no comments.

2\. Optional: confirm checksum

    # if you want the unofficial risen 2 patch, you can get it here:
    # https://forum.worldofplayers.de/forum/threads/1154440-release-Risen-2-Unofficial-Patch?p=19094558&viewfull=1#post19094558
    $ sha256sum risen2_unofficial_patch-setup-0.5.exe
    fc5bd45906905de337e8ba69a9d8e8a7e447695132a88a931c0f237220a2fd98  risen2_unofficial_patch-setup-0.5.exe

3\. Download the windows [reg file](https://github.com/zpangwin/linux-gaming-notes/raw/master/risen2/trick-unofficial-patch-installer-to-work-with-gog.reg) from my repo and save it to `<your_wine_prefix>/drive_c`. I am not sure all of the keys in here are required but I had problems running the installer under wine and getting it to unpack its files. I eventually ended up installing via gog and steam on a windows pc and grabbing the reigstry entries I had and trying to trim it down to just game paths. This registry file is the end result.

4\. If your relative install path in wine will be using a windows path other than `C:\GOG\Risen2` then you will need to open the reg file in a text editor and change the path to whatever path you plan to use.

5\. To apply the reg file. Open wine's version of regedit using the command below. Then once it's open, from regedit's menus choose: Registry > Import > browse to `C:\` > select the file > import the reg file. Click OK then when done, close of of wine regedit.

    # open wine regedit
    env WINEPREFIX="$PFXD" wine regedit

6\. Run the patch installer with wine

    # Note: If you skipped the regedit stuff, you'll likely get an error:
    #   title='Risen 2 Unofficial Patch v0.5 Setup'
    #   message='Error! Can't initialize plug-ins directory'
    env WINEDEBUG="fixme-all" WINEPREFIX="$PFXD" wine start /D"C:/temp/risen2" "risen2_unofficial_patch-setup-0.5.exe"

7\. Optional: If you followed the pre-install prep and created a git repo, then you should ahead and commit the changes

    # commit patch files
    git add * && git commit -m 'unofficial risen 2 patch';
    git tag unofficial-patch;


To remove the patch, you can either move/delete the files manually or run the uninstaller with wine.


---



## Sources

My approach above is based on aggregated data from multiple sources and tested until I got it working. Here are some of the sources I used if you are interested in looking them over in more detail. If you contributed to any of these then Thank You!  - this guide probably wouldn't have been possible without your contributions.

1. [Gamersonlinux: Risen 2 Dark Waters Guide by booman](https://www.gamersonlinux.com/forum/threads/risen-2-dark-waters-guide.1717/)
2. [Winehq DB - Test Results section](https://appdb.winehq.org/objectManager.php?sClass=version&iId=35292#testdata)
3. [GOG Foums: Risen series for Linux by adamhm](https://www.gog.com/forum/risen_series/risen_series_for_linux) - especially looking at the source of the script in his [risen2_wine.tar.xz](https://www.dropbox.com/s/yf7fijcrm26ld2k/risen2_wine.tar.xz?dl=0). *(note: you may need to be logged into gog forums to see all the posts; i know i had that issue at least once)*
4. [Protondb: Risen 2](https://www.protondb.com/app/40390) - ultimately this did not work for me but i might have grabbed some winetricks dependencies from here
5. [Lutris: Risen 2 (view script)](https://lutris.net/games/risen-2-dark-waters/) - ultimately this did not work for me but i might have grabbed some winetricks dependencies from here
6. [Risen 2 Unofficial release page](https://forum.worldofplayers.de/forum/threads/1154440-release-Risen-2-Unofficial-Patch?p=19094558&viewfull=1#post19094558)
7. Risen 2 Unofficial patch [Moddb mirror](https://www.moddb.com/games/risen-ii-dark-waters/downloads/risen-2-unofficial-patch-v05)
8. Risen 2 - Mod Starter v2.0 ([1](https://www.worldofrisen.de/english/download_85.htm), [2](https://forum.worldofplayers.de/forum/threads/1147645-RELEASE-Risen-2-ModStarter-v-2-0-%28Online-DB-version%29)) - wish i had noticed this sooner. i didn't come across it until my guide was finished and i was a good chunk of the way through the game
