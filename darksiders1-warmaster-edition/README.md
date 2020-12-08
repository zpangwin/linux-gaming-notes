## Out-of-the-box

The cinema scenes didn't work and would cause the game to crash with error. I also had an issue with fullscreen focus interferring with Alt+Tab.

Basically, in fullscreen, the game does not focus on its own window correctly after launching. An easy workaround for this is to give it 10-20 sec to load. Make sure you have another window open (text editor, browser, terminal, doesn't matter what). Then click game window from taskbar. it will act like it's going to work but desktop/other window will be in focus instead of game. Ignore this and Alt-tab to some other window. Finally, click game window from taskbar again. The 2nd time, the selection will work and it will correctly set focus on game window as fullscreen.

tested on Linux Mint 19.3 and LMDE-4/



## What to expect after custom setup

Following the steps I outline in the next section got the game up and running for me with sound, cinema, controller, etc all working fine and no performance issues that I could see aside from a slight lag whenever the game autosaves. Should be able to quickly test by starting a new game and seeing **BOTH** of the initial "intro" cinema scenes -- thw first one explains the distant past and then immediately after that one there is one more which shows comet trails of falling angels/demons and city getting destroyed. I did still have the issue with Alt+tab in fullscreen but continued using the same workaround as above.

UPDATE:

I am using xboxdrv for my wireless xbox 360 controller. Everything is detected and it works fine out-of-the-box, even before the Proton-GE + MF fixes I noted in my report from yesterday.

Noticed if the controller turns off from inactivity, the game exits (or crashes?) silently without warning AND WITHOUT SAVING. In theory, this should only impact wireless controllers and even then only if you are leaving it inactive for a long time.

After I realized what was happening, I tested to verify. Setting screensaver to 1 minute had no effect (just moved the mouse to dismiss but game stayed open). Then I set screensaver for 30 min and used a timer app and just left the game and controller sit. At ~15 min, the controller led turned off and the game promptly exited.

Since this has the potential to lose in-game progress and protondb still does not allow editing of submitted reports, I felt an addendum to previous report was warranted.

Workaround: Save game before stepping away / letting controller idle or use a wired controller or kb/m.

### Locations

First, I am going to be referencing a few locations through-out. I recommend to open a terminal window and just leave it open you have the game fully working. You'll be creating variables for these locations but using your actual paths in place of `<SteamDir>`. Start by figuring out where your game is installed (steam systray icon > settings > downloads > steam library folders should give you a list of possible locations to start with)

Figure out you locations and create the variables in the terminal window before you get started.


    PROTONDIR=$HOME/.steam/root/compatibilitytools.d
    GAMEDIR="<SteamDir>/steamapps/common/Darksiders Warmastered Edition"
    PFXDIR="<SteamDir>/steamapps/compatdata/462780"


## Getting cinema scenes working correctly

tested on both Linux Mint 19.3 and LMDE 4. Nov 2020

0. If you have any launch options set, clear them out for now. Exit game AND steam.

1. In terminal, first create variables for locations above (with YOUR paths). Then we're going to install Media Foundation libraries and a custom version of Proton from developer Glorious Eggroll (called Proton-GE). In some old instructions, I had said the version did not matter but in fact version does matter. Unless you see a newer version of Proton-GE that specifically mentions Darksiders: Warmastered Edition being fixed, then it is recommended to stick with the Proton-5.11-GE-3-MF version I reference in my notes.

2. In the same terminal, run:


    # download media foundation dll file into game dir
    cd "$GAMEDIR"
    wget https://lutris.net/files/tools/dll/mfplat/x32/mfplat.dll
    
    # follow Proton-GE instructions to download and install under ~/.steam/root/compatibilitytools.d
    mkdir -m=755 -p $PROTONDIR && chgrp $USER $_ && chmod g+s $_ && cd $_
    wget https://github.com/GloriousEggroll/proton-ge-custom/releases/download/5.11-GE-3-MF/Proton-5.11-GE-3-MF.tar.gz
    tar -xvf Proton-5.11-GE-3-MF.tar.gz
    find . -type f -iname '*.py' -exec chmod a+x "{}" \;;
    
    # if there is an existing profile created under vanilla proton, then rename it
    # this will cause profile to be regenerated with Proton-GE next time game is launched
    mv "$PFXDIR" "$PFXDIR.old"


3. Keep terminal open but relaunch Steam and we'll configure it to use Proton-GE. Go to Libary > right-click on Darksiders WME > Properties > General tab > check box for "Force the use of a specific Steam Play compatibility tool". Select Proton-5.11-GE-3-MF from dropdown. Click Close button to save.

4. Launch game then exit from the main menu as soon as your are able to (it's not completely fixed yet). Then go back to the terminal and confirm the PFXDIR dir was regenerated **and has the correct owner/group/perms**, especially if you have any custom umask settings / etc.

5. Go back to the terminal and run the following:

    # install media foundation libs for proton's wine binaries to use
    cd "$PFXDIR/pfx/drive_c"
    wget https://github.com/z0z0z/mf-installcab/archive/master.zip
    unzip master.zip
    cd mf-installcab-master
    chmod a+x "installcab.py"
    export PATH="$PROTONDIR/dist/bin:$PATH"
    WINEARCH=win64 WINEPREFIX="$PFXDIR/pfx" ./install-mf-64.sh


The commands in the last step are based on some earlier suggestions on protondb but mine use Proton's bundled wine binaries for better compatibility (originally I had tried it as suggested by other users but got errors and it didn't work correctly; using proton's wine binaries did the trick for me). If you used the mf-installcab scripts before, see if you can find the file `windows6.1-KB976932-X64.exe` and copy it to `cp -a -t "$PFXDIR/pfx/drive_c" windows6.1-KB976932-X64.exe` first to save downloading the file again (as it was over 900mb).

At this point, cinema and intro scenes should be fixed.

Note: Proton 5.13-2 didn't work for me. Use Proton-5.11-GE-3-MF or read their rel notes to find one mentioning this game as working. Newest (Proton-5.21-GE-1) lists this as broken.

tested on both Linux Mint 19.3 and LMDE 4. Nov 2020
