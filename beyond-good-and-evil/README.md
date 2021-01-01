# Beyond Good and Evil

I have both the Steam and GOG versions of this game. I was able to get the GOG version working but not the Steam version.

---

## Steam Version

Out of the box, the version of the game had multiple issues. However, I will note that I had installed my copy of BGE awhile back under one distro (on a separate HDD) and then lazily re-used the same install from another disto after setting up the same path in my steam library folders. So it is possible that at least some of these issues might have dissappeared if I have done a fresh install. Issues out-of-the-box:

* Error about [EAX](https://en.wikipedia.org/wiki/Environmental_Audio_Extensions) when included SettingsApplication.exe
* Looping audio (missing/bad dsound.dll)
* Locked in French regardless of locale (bad registry path from install)
* Flicking video artifacts (visible in-game)
* Out of sync Audio/Video (very obvious if you have subtitles on)
* Bad aspect ratio ("widescreen" black edges during cinematics)

I was able to resolve the EAX issue by copying eax.dll from another game (rayman raving rabbits but apparently it is included in many older games \[[1](https://en.wikipedia.org/wiki/List_of_games_with_EAX_support)\]\[[2](https://docs.google.com/document/d/1SyOw7D0H2ecGxzPsCFEFKwupU8LuazUrlkI-gVTpyhc/edit)\]). If that isn't an option, you might try to find an official download: I saw [this page](https://www.pcgamingwiki.com/wiki/Beyond_Good_%26_Evil#Can.27t_enable_EAX_reverb) mentioning [Creative ALchemy](https://support.creative.com/downloads/download.aspx?nDownloadId=13175) and EAX is made by Creative.. but I did not confirm if that contains the dll in question; you might be able to extract the exe with 7za (p7zip package)/innoextract/similar tools. For me, I only encountered the EAX error when trying to run the inclueded SettingsApplication.exe; after copying over eax.dll, it just gave me a different error message about Beyond Good and Evil not being installed...

UPDATE: I was eventually able to launch the steam version of the settings app using a combination of the eax.dll and the following wine syntax (adjust to use your paths):

    /usr/bin/env WINEPREFIX="/gaming/steam/steamapps/compatdata/15130/pfx" /usr/bin/wine start /d"Z:/gaming/steam/steamapps/common/Beyond Good and Evil" SettingsApplication.exe

After comparing to my gog install and combining suggestions from protondb, winehq db, reddit, and elsewhere online, I was able to get all of these issues resolved thanks to help from tips from lots of various folks online.

BGE steam fixes:

#### Assumptions:

1. You're using default paths. If not, change in both the commands AND the reg file. For reg file, use your absolute linux path prefixed with "Z:" e.g. "Z:/home/myuser/etc".
2. You have recent versions of wine, winetricks, and protontricks installed.

#### Steps:

1\. Delete `~/.steam/steam/steamapps/compatdata/15130/pfx` then rerun game to recreate it and exit game.

2\. From terminal run the following to create backups of registry, fix bad registry paths, use protontricks to setup reg entries for dsound, then use a more reliable version of dsound.dll. Should resolve forced french audio, looping audio, & audio out-of-sync.


    cd $HOME/.steam/steam/steamapps/compatdata/15130/pfx;
    mkdir reg-backups;
    cp -a -t reg-backups *.reg;
    sed -Ei 's/Wow6432Node\\{2}(Wow6432Node\\{2}Ubisoft\\{2})/\1/g' system.reg;
    find ./drive_c -type l -iname dsound.dll -delete;
    protontricks 15130 dsound d3dx9 arial d3dcompiler_47;
    wget --output-document= ./drive_c/windows/syswow64/dsound.dll https://github.com/legluondunet/MyLittleLutrisScripts/raw/master/Beyond%20Good%20and%20Evil/dsound.dll;

3\. Download [bge.reg file](https://raw.githubusercontent.com/zpangwin/linux-gaming-notes/master/beyond-good-and-evil/bge.reg) or create yourself but **use windows-style line endings**.  Contains reg settings I reverse-engineered from the settings app to fix flicking artifacts + the NoBands fix. Save to `~/.steam/steam/steamapps/compatdata/15130/pfx/drive_c/bge.reg`

4\. Regedit seemed to ignore terminal args for me so had to manually import from the gui. Run `WINEPREFIX="$HOME/.steam/steam/steamapps/compatdata/15130/pfx" wine regedit` then from the top-left of regedit, choose Registry > Import Registry File > and select `bge.reg`.

There were multiple points at which I gave up on the steam version and played the GOG on instead, as I was able to resolve all of my issues there. I did eventually come back and use some of the GOG version settings etc and applied it to the steam version to get the notes above. Another consideration is that if you want to use remapping software such as antimicro, the steam version appears to have some default controller mapping which will conflict with your antimicro mappings (e.g. If you have controller's "A" button mapped to space, game will map it to "left mouse button" so when you press "A" on controller BOTH keys are triggered). In the GOG version, there is no controller support so antimicro profiles should just work.


Preventing the game from detecting the controller:

| Status                 | Steps |
| :--------------------- | :------------------------------------------------------- |
| Not Working | Steam Libray > Right-click Game > Properties > Controller tab > Disable Steam Input |
| Not Working | From pfx dir, run `WINEPREFIX="$(pwd)" wine64 control` > Game Controllers > choose Connected Controller > Disable button > OK button |
| Not Working | Disconnect/turn off controller > start game > wait until menu before turning on/reconnecting |
| Working     | From pfx dir, run `WINEPREFIX="$(pwd)" wine64 regedit` > then download and import [my reg file](https://raw.githubusercontent.com/zpangwin/antimicro-profiles/master/beyond-good-and-evil/disable-controller-in-current-wineprefix.reg) **OR** go to `HKEY_LOCAL_MACHINE\System\CurrentControlSet\Services\WineBus` > create DWORD called `Enable SDL` with value "0" |

---


## GOG Version

This version worked great with very minimal effort on my part.

Out of the box, this version of the game had fewer issues than the steam version:

* No issues with [EAX](https://en.wikipedia.org/wiki/Environmental_Audio_Extensions), either with the base game or with SettingsApplication.exe
* Was prompted on first launch and asked to select a language. I chose English and did not encounter and forced/incorrect language issues.
* No issues with looping/repeated audio.
* I did still have issues with flicking video artifacts (visible in-game)
* I did still have some out of sync Audio/Video (voice/subtitles prompts off by a bit)
* I still have the bad aspect ratio issue ("widescreen"black edges during cinematics)

### Wine prefix setup

I was using Lutris as a launcher but since I prefer to install the game using the offline GOG installer, I setup the wineprefixes manually. Here are the steps I used:

1\. Obviously, have wine, winetricks, and lutris installed.

2\. Decide where you want the wine container (WINEPREFIX) to live. For me, this was: `/media/f/lutris/games/beyond-good-and-evil` - *note: do NOT actually create this folder, wine is picky and will want to do that when we set it up. You just want to pick the parent folder and decide on a name.*

3\. Run the following command to create the WINEPREFIX (replacing my folder/name if you want):

    # setup 64-bit wine prefix. could probably use 32-bit but it shouldn't matter
    env WINEPREFIX="/media/f/lutris/games/beyond-good-and-evil" WINEARCH=win64 wine wineboot;
    
    # use winetricks to setup basic depends. these might not all be needed (based of lutris scripts)
    # ignore any warnings, including the ones about 32-bit stuff on 64-bit prefixes.
    env WINEPREFIX="/media/f/lutris/games/beyond-good-and-evil" WINEARCH=win64 winetricks d3dx9 arial d3dcompiler_47;
     
    # leave terminal open; you'll probably use it to run a few more commands later


### Game installation

You can set the path in Lutris and launch there, then update it to the installed exe path afterwards. But I find its just as easy to run it from the terminal initially and if you run into problems, you might have some output to give you a clue.

    cd "/media/f/lutris/games/beyond-good-and-evil";
     
    # copy installer (assumes you downloaded offline one from gog)
    mkdir ./drive_c/temp;
    cp -a -t ./drive_c/temp ~/Downloads/setup_beyond_good_and_evil_2.1.0.9.exe;
     
    # run installer (i used the default install location)
    WINEPREFIX="$(pwd)" wine "C:/temp/setup_beyond_good_and_evil_2.1.0.9.exe";

At this point, I was able to launch the game using:

    WINEPREFIX="$(pwd)" wine "C:/GOG Games/Beyond Good and Evil/BGE.exe";

and the setup app using:

    WINEPREFIX="$(pwd)" wine "C:/GOG Games/Beyond Good and Evil/SettingsApplication.exe";

Without even changing anything in the setup app, the game ran ok and didn't have any of the audio issues I had in the steam version. I did still have some video issues though.


### Fix Flickering Textures/Video


You can find tons of posts online referencing using SettingsApplication.exe to change a few things and cure the flickering video issues. Here are a few of the sources:

* [https://www.cnet.com/how-to/making-old-games-work-on-new-pcs-beyond-good-and-evil/](https://www.cnet.com/how-to/making-old-games-work-on-new-pcs-beyond-good-and-evil/)
* [https://github.com/ValveSoftware/Proton/issues/1536](https://github.com/ValveSoftware/Proton/issues/1536)
* [https://www.gog.com/forum/beyond_good_and_evil/visual_problems](https://www.gog.com/forum/beyond_good_and_evil/visual_problems)

The settings for "HW Vertex Processing" and "Autogen mipmap" are consistently mentioned as culprits for this issue, along with a few other settings that are less consistent such as "Flare", "Multi vertex stream", "fastflip", and "triple-buffering".

It's up to you which of these you want to mess with but I would recommend to at least disable the two main culprits unless you wish to spend a lot of time testing.

    cd "/media/f/lutris/games/beyond-good-and-evil";
     
    # run setup app
    WINEPREFIX="$(pwd)" wine "C:/GOG Games/Beyond Good and Evil/SettingsApplication.exe";

For reference, here are my settings before and after:

| Setting                | Initial Value                | Final Value |
| :--------------------- | :--------------------------- | :------------------------------ |
| Sound > Sound Card     | Primary Sound Driver         | Primary Sound Driver |
| Sound > EAX Reverb     | Off / Unchecked (grayed out) | Off / Unchecked (grayed out) |
|                        |                              |   |
| Water Detail           | High                         | High |
| Antialiasing           | Off                          | Off |
| Flare                  | On                           | Off |
| Shadows quality        | Low                          | Low |
|                        |                              |   |
| Manual Compatibility   | Off / Unchecked              | On / Checked |
| Triple Buffering       | ?                            | Off / Unchecked |
| SSE                    | ?                            | On / Checked |
| HW Vertex Processing   | ?                            | Off / Unchecked |
| Multi vertex stream    | ?                            | Off / Unchecked |
| Mipmapping             | ?                            | On / Checked |
| W Buffer               | ?                            | Off / Unchecked |
| Fastflip               | ?                            | Off / Unchecked |
| Autogen Mipmap         | ?                            | Off / Unchecked |


### Audio/Video Sync Fix


The fix for this is described in several places online including:

* [https://appdb.winehq.org/objectManager.php?sClass=application&iId=2604](https://appdb.winehq.org/objectManager.php?sClass=application&iId=2604)
* [https://github.com/ValveSoftware/Proton/issues/1536](https://github.com/ValveSoftware/Proton/issues/1536)

There are essentially 2 options if you are using the GOG version (one uses a 3rd party exe, the other requires root permissions). If you are using the steam version, since steam will always launch the actual exe, you only have the option of using the root option.

Since I could do this without relying on a 3rd party exe, I opted for that approach as well.

This basically lets CPU work at max speed all the time. Type the following into a terminal:

    su root
    echo "performance" > /sys/devices/system/cpu/cpu0/cpufreq/scaling_governor



### Widescreen Fix



This relies on 3rd party binaries provided by steam user Idarion; so if you prefer not to have those, you'll pretty much have to live with the vanilla "widescreen" mode. The good news is that it's only during cinematic scenes.

If you are ok risking it, you'll want to check out [his post on the steam community forums](http://steamcommunity.com/app/15130/discussions/0/864960354268889227?l=english)

At the time of writing, the file was hosted [on dropbox](https://www.dropbox.com/s/teqkol23sf5k5jy/BGE%20widescreen%20fix.rar). If it ever goes down, check the comments or possibly [reddit](https://www.reddit.com/r/beyondgoodandevil/comments/hzai9w/playing_beyond_good_and_evil_in_fullhd_with/), etc.

I generally skip ENB mods on Linux but if you are using one then you'll need to rename `d3d9.dll` from the ENB mod into `d3d9_proxy.dll`. Otherwise, you can just download the archive and extract it into the game folder (I used fileroller and it seemed to work fine).

Finally, run BGEResolutionSettings.exe and choose your resolution and refresh rate.

    cd "/media/f/lutris/games/beyond-good-and-evil";
     
    # run setup app
    WINEPREFIX="$(pwd)" wine "C:/GOG Games/Beyond Good and Evil/BGEResolutionSettings.exe";

In the event, the link disappears and you need to verify another copy, here are the checksums I got on the archive and its extracted contents as of Dec 2020:

    # archive:
    sha256sum *.rar
    e9eb0638059e4cbe23adfd10b8b0b58c773aff26508642b04bb1082717a28704  BGE widescreen fix.rar
    
    # extracted files:
    find . -type f -exec sha256sum "{}" \;
    24e9f5e37d140e591f260a2022d2d7bc1b030766c3b6e4115509f990a09f64ca  ./d3d9.ini
    be64308ba46b21db0fa26c30f4620a4a3ce93e191466b024c337305789042f00  ./d3d9.dll
    543498baacd2207b2674d440b556163681d1010155daf23650c19ec9185412ec  ./BGEResolutionSettings.exe
    13393a91201e69e70a9f68d21428453fff3951535dec88f879270269cfe54d6f  ./Redist/dxupdate.cab
    8ad77a4d9c76f65cd62337588f847cc1e0ca6ca9735937f3a781f7395e9566a1  ./Redist/dxdllreg_x86.cab
    642d9e7db6d4fc15129f011dce2ea087bf7f7fb015aececf82bf84ff6634a6fb  ./Redist/dsetup32.dll
    def6f245762be36cf18b435ba8b7ebc224b9c21d1a1db606a8e8fafdaa97bba0  ./Redist/DSETUP.dll
    fcc6cf0966b4853d6fa3d32ab299cde5a9824feaecb0d4f34ea452fb9fd1c867  ./Redist/Jun2010_d3dx9_43_x86.cab
    046041aba6ba77534c36bb0c2496408d23c6a09f930c46b392f1edc70dfd66de  ./Redist/DXSETUP.exe




### What if I don't like Lutris?


If you don't want to use Lutris as a launcher, you can easily add some clutter to your desktop or apps menu instead.


create a text file named `Beyond Good and Evil.desktop` and add the following:

    [Desktop Entry]
    Name=Beyond Good and Evil
    Comment=Play this in wine
    # note you should use absolute paths with Exec for best results
    # especially if you will be placing this under /usr/share/applications
    Exec=/usr/bin/env WINEPREFIX="/media/f/lutris/games/beyond-good-and-evil" /usr/bin/wine start /D"C:/GOG Games/Beyond Good and Evil" BGE.exe
    # Icon will also take an image path or you can put it one in
    # ~/.local/share/pixmaps or /usr/share/pixmaps and refer to it by name
    Icon=steam_icon_15130
    Terminal=false
    Type=Application
    Categories=Game;

Make sure the file is executable (`chmod a+rx "Beyond Good and Evil.desktop"`) then copy it to your desktop. Or if you want it in your app menu, put it in `~/.local/share/applications`. You may need to log out / reboot / restart your Desktop Environment before it appears in the app menu / icons are detected correctly.

