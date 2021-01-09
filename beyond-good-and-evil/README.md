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
3. Note: I try to use the default compatdata location (`$HOME/.steamg/steam/steamapps/compatdata/15130/pfx`) where possible but you may also see `"/gaming/steam/steamapps/compatdata/15130/pfx"` which is where I actually have mine. For instance, the REG file has this because I can't use `$HOME` or `~` expansion in the REG file and I obviously can't make it match everybody's username. I am assuming that you will edit any occurrances of my paths to be yours instead.

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

---

## Cheats

### Minigames

First, these aren't so much cheats as they are countering the game cheating against you. Since this is a single-player game that only impacts *you*, I especially don't care. But I am listing them as cheats as some folks have very narrow ideas about deviating from the expected play as developers intended and this *does* make it easier to win some specific minigames.

Which mini-games, you ask? Only ones where slowing down game speed might help your reactions counter the AI.

It will probably take awhile to read through my wall of text but it is mostly copy/paste. Still it will probably take at least 10-15 minutes to setup and test so might not be worth if unless you're aggrevated with the cheating the game does or are academically interested (it was both for me, plus I figured this technique is bound to be useful if I come across an older game that I need to fix a bad framerate for).

<details>
  <summary>Spoiler warning</summary>
  
  Yeah, I'm talking about countering that cheating bastard Franci's second air hockey game. The first pearl from this game isn't so bad. But by the time he gets a second pearl, his tactics are downright bullshit and it is not even a remotely fair game. I know I don't *need* all the pearls. But I paid for this game and I want them. So fuck that cheating asshole.
  
  That said, this might also help with Peeper's coconut shell game but I didn't test it for that.
  
</details>


WARNING: **BEFORE** you attempt this,  I strongly recommend that  you should create a backup of your current `${WINEPREFIX}/*.reg` files that wine uses to simulate the registry, so that you can easily restore them to normal afterwards. This is included in my instructions below so don't complain to me if you skip them and fuck shit up.

Note: I will be messing with the SettingsApplication.exe for this too. You can probaby skip that part to be honest but if you get an error about EAX and really want to follow those steps, see my notes above about getting a copy of eax.dll (sorry, I would share it directly but I am not allowed to legally). The eax.dll will go in your install folder with BGE.exe and SettingsApplication.exe.

1\. Backups working registry settings and muck with game settings to make it run slower. Note: this unlikely to slow the game down much so skipping this step is fine.


    # change to use whatever path is valid for you
    # default for proton is under ~/.steam/steam/steamapps/compatdata
    cd "/gaming/steam/steamapps/compatdata/15130/pfx";
     
    # make sure game is not running
    pkill --signal 9 --full --ignore-case BGE.exe
     
    # create backups
    mkdir registry-backups-normal-framerate && cp -a -t "$_" ./*.reg;
     
    # after addressing the eax issue, run the settings app
    # NOTE: adjust both paths in this command to match YOUR paths
    # Also, "Z:/" is just the wine equivalant of the linux path "/"
    /usr/bin/env WINEPREFIX="/gaming/steam/steamapps/compatdata/15130/pfx" /usr/bin/wine start /d"Z:/gaming/steam/steamapps/common/Beyond Good and Evil" SettingsApplication.exe

2\. Note: If you are skipping step 1, you can skip this step too since they go hand-in-hand. Basically, once the settings app is up, you want to do everything you can to reduce FPS. On the Graphics tab, if you can lower refresh rate, then do so. I had the options of "24 Hz", "30 Hz", and "60 Hz"; normally, I have this at 60, but I chose 24 for this. On the Advanced tab, enable/max out everything: water, shadows, antialiasing, flare, HW Vertex Processing, etc. When finished, launch the game and confirm that you can still get to the main menu without issue (shouldn't have any problems at this stage but best to verify so we can isolate any problems that might appear later).

3\. As stated above, the settings app won't impact things much; mostly because this is an old game running on modern PCs and even maxing things out, modern PCs are unlikely to be challenged enough to lower the FPS much if at all. So we need some FPS limiter or Framerate limiter tools that will work under Wine / Proton.

[This steam guide](https://steamcommunity.com/sharedfiles/filedetails/?id=1787799592) covers some basic linux tools and has decent descriptions on our two main options: [libstrangle](https://gitlab.com/torkel104/libstrangle) (fps limiter) and [mangohud](https://github.com/flightlessmango/MangoHud) (fps viewer gui that can also be [configured to limit fps](https://github.com/flightlessmango/MangoHud/blob/master/bin/MangoHud.conf#L8)). Both of these seem to have issues with Proton 5.13+ and require workarounds. Follow my [setup notes](https://www.github.com/zpangwin/linux-gaming-notes/workarounds-for-mango-hud-and-libstrangle) to get them installed, configured, and working with 5.13+.

4\.Now try running the game and see if you get any errors. If you are able to get things running ok, then you can play around with tweaking the actual FPS value but first you want to confirm it still launches before messing with things more. You might have to play with it to find the right match of settings that will work for you PC. For me, the lucky combo was using the above workarounds applied against `Proton-5.21-GE-1` and the launch option `ENABLE_VK_LAYER_TORKEL104_libstrangle=1 STRANGLE_FPS=6 %command%`. With FPS @ 6, it was laggy as fuck and I had to spam click a lot. It was still a very challenging match that took a few tries but it did slow things down enough that I actually had a chance against his cheating ass.

5\. When/if you wish to return to your original game settings, remove the launch options and/or restore back to your old settings

    # change to use whatever path is valid for you
    # default for proton is under ~/.steam/steam/steamapps/compatdata
    cd "/gaming/steam/steamapps/compatdata/15130/pfx";
     
    # make sure game is not running
    pkill --signal 9 --full --ignore-case BGE.exe
     
    # create backups
    mkdir registry-backups-low-framerate && cp -a -t "$_" ./*.reg;
     
    # restore registry from normal framerate setup
    cp -a -t ./ ./registry-backups-normal-framerate/*.reg;

---

### Door codes

Do you just want to open the locked doors and don't give a shit about story/timeline/spoilers? Well, here ya go.

1\. Lighthouse:

<details>
  <summary>Timeline</summary>
  
  After you complete the factory
  
</details>

<details>
  <summary>Hint 1</summary>
  
  Go to the lighthouse and talk to the long-haired girl in a dress.
  
</details>

<details>
  <summary>Hint 2</summary>
  
  Go in your inventory and look at the bottom of the shoes.
  
</details>

<details>
  <summary>Upstairs bedroom code</summary>
  
  T4P9
  
</details>

<details>
  <summary>Dock code</summary>
  
  H5D9
  
</details>

2\. Akuda Bar (in Pedestrian District) - Room 2

Timeline - any time

<details>
  <summary>Hint 1</summary>
  
  At the base of the stairs, there's a shark named Rufus. If you look at the table, there's a slip of paper with the code but he'll cover it up if you get too close...
  
</details>

<details>
  <summary>Hint 2</summary>
  
  Use the camera, dumbass!
  
</details>

<details>
  <summary>Code</summary>
  
  V8H9
  
</details>

3\. Akuda Bar (in Pedestrian District) - Room 3

<details>
  <summary>Timeline</summary>
  
  After you complete the Mister De Castlean mission on Black Isle.
  
</details>

<details>
  <summary>Hint 1</summary>
  
  Talk to Mister De Castlean
  
</details>

<details>
  <summary>Hint 2</summary>
  
  Talk to Peepers on second floor, adjacent to the room.
  
</details>

<details>
  <summary>Code</summary>
  
  Q6D7
  
</details>

4\. Akuda Bar (in Pedestrian District) - first floor, near air hockey table

<details>
  <summary>Timeline</summary>
  
  Late game after completing many, many side missions.
  
</details>

<details>
  <summary>Hint</summary>
  
  Collect all 88 pearls
  
</details>

<details>
  <summary>Code</summary>
  
  TODO
  
</details>

5\. Entrance in Pedestrian District

6\. Entrance to Factory

<details>
  <summary>Timeline</summary>
  
  After you complete the Mister De Castlean mission on Black Isle.
  
</details>


<details>
  <summary>Code</summary>
  
  R9J7
  
</details>

7\. Factory Locker

<details>
  <summary>Code</summary>
  
  W8D5
  
</details>

8\. Factory Loading Dock / Exit

<details>
  <summary>Timeline</summary>
  
  After you complete the mission at the Factory.
  
</details>


<details>
  <summary>Code</summary>
  
  N6L5
  
</details>

9\. Exit from Slaugherhouse

<details>
  <summary>Timeline</summary>
  
  After you complete the Slaughterhouse objectives.
  
</details>


<details>
  <summary>Code</summary>
  
  L7D6
  
</details>

10\. Alpha Sections - Town Square

<details>
  <summary>Timeline</summary>
  
  After you complete the Slaughterhouse mission.
  
</details>

<details>
  <summary>Code</summary>
  
  S6V9
  
</details>

