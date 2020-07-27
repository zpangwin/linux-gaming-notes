# Darksiders: Warmastered Edition

## Setup

I already had xboxdrv package installed prior to playing. Out of the box, I got crashes and a pop-up with error messages. Simply deleting the `${SteamLibraryDir}/steamapps/compatdata/462780` folder got me up and running with working audio, video, controller, and gameplay. However, the cinematic scenes did not play. The Media Foundation fix mentioned by others did not resolve this issue for me.

0. If you have previously tried launch settings, I recommend clearing them out. They will not be necessary and actually caused my game to crash after I got a working setup.
1. Open a terminal to `~/.steam/root/compatibilitytools.d/` (depending on which partition you want it installed to)
2. Go to https://github.com/GloriousEggroll/proton-ge-custom/releases and find the lastest release. The abbreviations are not always obvious from the releases page, but the 'ST' suffix appears to be from stable branch and 'MF' for Media Foundation (judging by notes on the project's README.md). I think Darksiders fixes were merged awhile back but to be safe I went with 'Proton-5.11-GE-3-MF'; if you want a newer/different version, just substitute the commands below with for that version (Right-click on that release's tar.gz file; eg. `Proton-5.11-GE-3-MF.tar.gz` etc link and copy it to your clipboard).
3. Use `wget` followed by the link from the previous step (e.g. `wget https://github.com/GloriousEggroll/proton-ge-custom/releases/download/5.11-GE-3-MF/Proton-5.11-GE-3-MF.tar.gz`) to download the file.
4. Extract the tar file `tar -xvf Proton-5.11-GE-3-MF.tar.gz`
5. Close and restart Steam. Once it opens go to `Libary` > right-click on Darksiders Warmastered Edition > `Properties`.
6. Check the checkbox for "Force the use of a specific Steam Play compatibility tool"
7. You should find it in the drop-down now; if you don't see it immediately, make sure you don't have a scrollbar in the drop-down; the UI makes it easy to miss on first glance if you are not careful. Select `Proton-5.11-GE-3-MF`
8. Click the Close button on the Properties screen to save the changes.
9. Optional: clean-up the tar file `~/.steam/root/compatibilitytools.d/Proton-5.11-GE-3-MF.tar.gz`
10. Delete the previously created prefix folder 462780 (e.g. `rm -r "${SteamLibraryDir}/steamapps/compatdata/462780"`. By default, SteamLibraryDir will be `~/.local/share/Steam` but if you have defined any custom steam library folders, it should be whichever one you downloaded the game under.
11. Run the game. A fresh prefix folder should be created automatically.

At this point the game should launch, detect controller automatically if present, and cinematic scenes will actually play.

--------------------------

## Debugging

2020 Jul 26 under Mint 19.3 / Proton 5.09

According to [ProtonDB](https://www.protondb.com/app/462780) there is an issue with the Media Foundation DLL that needs to be corrected before the game will work.

I decided to follow the instructions posted by `Dr. med. Ovy` because their directions were well organizaed and there report was from Ubuntu 18 which is what Mint 19.3 is based on (since I am using MInt 19.3).

The steps listed there are:

> To get this game working, I had to install the Media Foundation DLLs as described by RockafellaJaz (thank you for the detailed step-by-step instructions. Here is a more detailed version of his guide:
>
> 1. Delete the prefix folder 462780 in <Steam library dir>/steamapps/compatdata
> 2. Run the game so a fresh prefix folder is created. The game crashes on startup, but that is fine for now.
> 3. Open a terminal inside <Steam library dir>/steamapps/compatdata/462780/pfx folder and run the command:
>		wget https://github.com/z0z0z/mf-installcab/archive/master.zip
> 4. Unpack the required files by running:
>		unzip -j master.zip "mf-installcab-master/install-mf-64.sh" "mf-installcab-master/installcab.py"
> 5. In the same direcotry, run the command:
>		WINEPREFIX=$PWD ./install-mf-64.sh
> 6. Open a terminal inside <Steam library dir>/steamapps/common/Darksiders Warmastered Edition and run:
>		wget https://lutris.net/files/tools/dll/mfplat/x32/mfplat.dll

My game was installed at `/gaming/steam/steamapps/common/Darksiders Warmastered Edition` so my compat folder was at `/gaming/steam/steamapps/compatdata/462780`. By default, things are installed under `~/.local/share/Steam`.

Interestingly, after following the steps \#1 and \#2 to run `rm -r /gaming/steam/steamapps/compatdata/462780` then re-launch the game, my game did NOT crash. It even recognized my 360 controller despite not turning it on until I was already in the menus. I started a game and was able to play it without issues (audio, video, controller, and gameplay worked). One thing that seemed weird was that it put me straight into the game without any story lead-up or cinematics. Going back to ProtonDB, I saw a comment from user `Cengiz Önkal` that the cinematics were not working so I decide to proceed with the remaining steps anyway.

I decided to try the MF fix in case that would resolve the problem with the cinematics. Since I am a programmer, I decide to review the scripts mentioned in the other post first rather than blindly running them. It looks like an installer is downloaded from official microsoft servers (presumably the Media Foundations installer) then installed under the wine prefix along with some registry tweaks. FWIW, I'm not a python expert but I can read it well enough and didn't see anything that set off warning flags for me; I would have probably run it if the first 2 steps alone hadn't worked for me.

However, it did *not* fix the cinematics problem. On further research, I discovered this appears to bbe a problem for windows users as well [1](https://steamcommunity.com/app/462780/discussions/0/154642447912415470/)[2](https://steamcommunity.com/app/50620/discussions/0/620695877176925285/). It mentions how the video files are just plain old wmv files; they can be found in `{steamDir}/Darksiders Warmastered Edition/media/videos`. It also mentions the Media Foundation stuff so it seems like something related to that. Another post mentions that "If you have Win 8 N or KN you should install the Media Feature Pack : http://www.microsoft.com/fr-fr/download/details.aspx?id=40744 otherwise, install the windows media player 12 (no need to use it ;-)) )" another mentioned having to restart the (windows) computer so I also closed steam (e.g. made sure no steam/proton processes were running) and tried relaunching but this had no effect.

I also saw that per https://github.com/z0z0z/mf-installcab "May 2020 Notice":

> For many games this script is not needed anymore, and may soon not be needed at all.
>
> This is largely thanks to work Guy1524 has done in officially implementing Media Foundation support into Wine. I would reccommend trying games with latest Proton-GE first, and only using this as a backup.

Decided to try out Proton-GE using the instructions as suggested.


0. If you have previously tried launch settings, I recommend clearing them out. They will not be necessary and actually caused my game to crash after I got a working setup.
1. Open a terminal to `~/.steam/root/compatibilitytools.d/` (depending on which partition you want it installed to)
2. Go to https://github.com/GloriousEggroll/proton-ge-custom/releases and find the lastest release. The abbreviations are not always obvious from the releases page, but the 'ST' suffix appears to be from stable branch and 'MF' for Media Foundation (judging by notes on the project's README.md). I think Darksiders fixes were merged awhile back but to be safe I went with 'Proton-5.11-GE-3-MF'; if you want a newer/different version, just substitute the commands below with for that version (Right-click on that release's tar.gz file; eg. `Proton-5.11-GE-3-MF.tar.gz` etc link and copy it to your clipboard).
3. Use `wget` followed by the link from the previous step (e.g. `wget https://github.com/GloriousEggroll/proton-ge-custom/releases/download/5.11-GE-3-MF/Proton-5.11-GE-3-MF.tar.gz`) to download the file.
4. Extract the tar file `tar -xvf Proton-5.11-GE-3-MF.tar.gz`
5. Close and restart Steam. Once it opens go to `Libary` > right-click on Darksiders Warmastered Edition > `Properties`.
6. Check the checkbox for "Force the use of a specific Steam Play compatibility tool"
7. You should find it in the drop-down now; if you don't see it immediately, make sure you don't have a scrollbar in the drop-down; the UI makes it easy to miss on first glance if you are not careful. Select `Proton-5.11-GE-3-MF`
8. Click the Close button on the Properties screen to save the changes.
9. Optional: clean-up the tar file `~/.steam/root/compatibilitytools.d/Proton-5.11-GE-3-MF.tar.gz`
10. Delete the initially created prefix folder 462780 (e.g. `rm -r "${SteamLibraryDir}/steamapps/compatdata/462780"`. By default, SteamLibraryDir will be `~/.local/share/Steam` but if you have defined any custom steam library folders, it should be whichever one you downloaded the game under.
11. Run the game. A fresh prefix folder should be created automatically.


--------------------------

## Initial Install

2020 Jul 26 under Mint 19.3 / Proton 5.09


On initial launch, I got the error:

> Important information for the coders can be collected to fix this problem if you create a MiniDump. However it might take a minute or two to gather that information.

clicking "yes", I got another error:

> Something went wrong. Please contact developers at bugs@kaikogames.com A diagnostic file has been created here : Z:/gaming/steam/steamapps/common/Darksiders/Warmastered Edition/darksiders1-cs_2679-{timestamp-string}.zip

I had to use `pkill -9 -if darksider` to close the window.



