# Darksiders II: Deathinitive Edition (with Steamplay / Proton)


-------------


## Out-of-the-box

This game worked fairly well out of the box (no tweaks needed to get it to run). I did have a few fairly minor issues though.

1. This game doesn't Alt+Tab correctly (in fullscreen at least; didnt try windowed mode). If you Alt+Tab, you can shift kb/m focus to another window but the game will remain on top visually. Also if you insert a device (such as charging your phone) and you normally get a pop-up window, that can steal kb/m focus and you will need to Alt+Tab back to game before you can move. Workspaces (Ctrl+Alt+left/right arrows in most distros) can help to make this less annoying if you need to look something up in your browser but still good to be aware of in-case kb/m input gets stuck on another window.

2. If you open a Virtual Terminals (in Fedora: Ctrl+Alt+F1 for GUI, Ctrl+Alt+F2-F6 for vterms; in Ubuntu/LM/LMDE: Ctrl+Alt+F7 for GUI, Ctrl+Alt+F1-F6 for vterms), it seems the game will no longer launch. I'm not sure why this would matter but I have noticed that every time I start one on Fedora, I must reboot the system before the game launch correctly again.

3. Game can behave oddly after being left paused for a time. There were a few times when I got a short call (5-10 minutes) and while it responded fine on the pause menu, after unpausing it took 30 seconds or more before I could move in game.

4. This game ignored me when trying to disable steam cloud saves (both per-game and later turning off cloud for all games). I hate this game's single save per game system and much prefer the DS1 approach so I was using git + some aliases to create and manage my own save slots. To stop it from downloading the cloud saves, it was necessary for me to delete the remote folder and then recreate it with root ownership and restricted permissions: `cd ~/.steam/steam/userdata/<steamid>; rm -r 388410; sudo mkdir -m 0500 388410;`

5. Sometimes certain sounds or music will disappear after while when playing in certain areas of the game. Googling suggests that people experience this on Windows too. Only known fix is to restart game. I didn't run into this until fairly late in the game (had it happen in lostlight + one of the dlcs). For me, sound fx + at least some dialog still worked but music would stop so I would just save and restart game bc it just sounded weird w/o the bg music.

6. Not a compatibility / proton issue, but I *really*, **really** hated this game's save system as compared to the one in the first game. See next section for a workaround to this design issue.


tested on LMDE-4 and Fedora 33. Dec 2020


-------------


## User Managed Saves: Prerequisites, Info, and Warnings

The short version of my workaround is to put the save file under version control using `git` and use `ssh` to manage it.

Before we get started, there are a few things you need to be aware of with this method:

a) This method will **not** be as *easy* to use as the Darksiders 1 save system: there is no in-game or controller integration and it requires the use of some technical tools that can be complicated for non-technical folks to set up. I am assuming that since you are on Linux, you at least know how to google and can figure out how to use ssh and git from the terminal. If not, this is approach might be more advanced than you are comfortable with.

b) This method **requires** that cloud saves for this game be disabled. It absolutely will not work with them on (as I found out by accident while initially testing the approach). Further, you might see that disabling the cloud saves via steam's interface has no effect and will need to resort to the workaround I described above in out-of-the-box issue \#3 (making the remote save folder as non-writable to steam).

c) Since there is no in-game integration, you need to be aware of how saves/loads work in the game for this method to work effectively. In Darksiders 2, any time you choose "Quit Game" from the pause menu the game is actually reloading your last save (whether it was a manual save or autosave); it might move your character location on the map to whatever the closest "spawn checkpoint" happens to be but your stats from the last save are what is loaded. That is why it loads so fast when you click "Continue" from the menu: it is already loaded. If you know what the "spawn checkpoint" for your last save is, you will also be able to see it from the menu where "Continue" is displayed. What this means for you is that **if you choose "Exit Game", then tell git to reset your save to some specific commit, it will *NOT* work *because the game will have already read the file loaded the old save game into memory BEFORE git did anything*. So you need to first checkout/load/reset things in git and let it update the file on disk, *then* choose "Exit Game" so the game reads your updated save from disk and loads it, then "Continue".** Basically, just pay attention to the order you do things in. If it still doesn't make sense, I suppose you could also exit completely out of the game, do whatever in git and restart the game; that's slower but should always work. 

d) With this method, you can't really delete old save files. There are a couple of exceptions I'll get to in the next bullet, but you're not going to be able delete your first x saves... at least not easily (you can technically do it but unless you want to create a new git repo, it's kind of a pain in the ass -- so if you want that, you're on your own). The good news is the save file is less than 200kB and git metadata is compressed. My repo with \~100 commits was less than 5mB.

e) If you haven't used git much before, be aware that resetting to an earlier commit will *hide* the newer ones (unless you are willing to learn more complicated commands. hint: search for "git reflog dangling commit"). To avoid this, you can run the command `git tag UNIQUE_TAG_NAME` first and it will create a tag. Commits with tags are considered important enough to still be displayed in most gui's and running `git tag` will list any tags you previously created. Running `git tag -d UNIQUE_TAG_NAME` will delete a tag if you don't want it anymore. All these commands must be run from the folder under version control. Assuming you do *not* create a tag first and you reset from commit A (newer) to commit B (older), then git's "HEAD" is pointing to commit B and commit A will be hidden - this is called a "dangling commit". If you have some dangling commits and are absolutely sure you won't want them later, you can remove them by running git's garbage collection command: `git gc`


-------------


## User Managed Saves: Making Darksiders 2 saves like Darksiders 1

The short version of my workaround is to put the save file under version control using `git` and use `ssh` to manage it.

0. If you have the game open, exit back to desktop.

1. Turn off cloud saves for this game in Steam (Library > Darksiders 2 > Properties > Updates tab > Uncheck "Enable Steam Cloud sync for blab blah blah" > Close)

2. Steam (or DS2?) completely ignored my setting from step \#1 so I also recommend blocking its ability to download cloud saves for this game by making the folder non-writeable (I also made it owned by root to prevent it being changed): `cd ~/.steam/steam/userdata/<steamid>; rm -r 388410; sudo mkdir -m 0500 388410;`

3. Need to find your game's compatdata folder and create a git repo. If you know where your game install folder is, go to that (e.g. `~/.steam/steam/steamapps/common/Darksiders II Deathinitive Edition`) then go up to steamapps and enter the compatdata/388410 folder. Then continue to save folder (e.g. `~/.steam/steam/steamapps/compatdata/388410/pfx/drive_c/users/steamuser/My Documents/My Games/Darksiders2`). When you get there, open a terminal in that folder and run `git init && touch .gitignore && git add * && git commit -m 'initial commit';` -- copy the path to this folder for the next step.

4. Copy the `ds2_aliases.txt` from this repo to your home directory and edit the line with `export darksiders2SaveDir=` so that `<YOUR_STEAM_DIR>` is replaced with the actual path to your steam dir. The variable's full path should be the same path you used in the last step. While you're editing the file, go ahead and edit anything else you want to (e.g. if you want to change the alias names or commit message template or whatever).

5. Add your `~/ds2_aliases.txt` to `.bashrc` or similar to that it will get loaded into your session when you ssh in. From terminal, you can run the following to add it: `printf '\nif [[ -f ~/ds2_aliases.txt]]; then\n\tsource ~/ds2_aliases.txt;\nfi\n' >> ~/.bashrc`

6. Using either Workspaces (Ctrl+Alt+left/right arrows in most distros) or ssh from a remote device, you can open a terminal session to manage saves. I would avoid Virtual Terminals (in Fedora: Ctrl+Alt+F1 for GUI, Ctrl+Alt+F2-F6 for vterms; in Ubuntu/LM/LMDE: Ctrl+Alt+F7 for GUI, Ctrl+Alt+F1-F6 for vterms) as those appear to prevent the game from launching correctly until you reboot your system. I used a mix of ssh and workspaces. ssh is nice if you want to be able to view the game screen while you type without switching but I didn't like typing on my phone so I mostly used a terminal on a different Workspace.

7. Anytime after you have created a save, run `ds2sav "save name or description text"` to create a commit. Alternately, if you like to track lots of stats in your message, review the ds2_aliases file and I have a message template that will use several session variables you can set to construct a consistent format for your messages using `ds2qsav`.

8. If you want to reload, be aware that the current commit will become a hidden/dangling commit if you reset to an earlier commit *unless* you create a tag first with `git tag SOME_UNIQUE_NAME`.

9. To reload, you'll either need to have exited the game completely or be in the game world *BEFORE* choosing "Exit Game" from the pause menu -- the game is weird and "Exit Game" automatically loads your previous save from the file on disk, then gives you the option to either Continue or Exit to desktop. Either way, use `ds2load X` to load a previous commit - where X can be either a number (starting at 0 for HEAD 1 for HEAD\~1, etc), a commit hash (full or abbreviated format), or a tag name. Once git is done, either start the game (if you exited to desktop) or if you are in-game then pause the game > choose "Exit Game" > wait for load > choose Continue.


tested on LMDE-4 and Fedora 33. Dec 2020
