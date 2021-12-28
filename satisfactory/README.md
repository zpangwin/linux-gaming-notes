# Satisfactory

I will note that since Satisfactory is in Early Access I got my fair share of freezes (mostly just the game process, but there were a few full system lock-ups). It could be related to mods or increased build structure count or some combination. When I first started playing I had everything on Ultra and it was fine but I eventually found myself kicking most everything down to Low or Medium to try and squeeze a few more FPS out and make the game hopefully crash less.

That said, if you can tolerate semi-frequent crashes without getting in a mood, then you can still get in some long sessions with relative stability. If you go vanilla (no mods), you will probably have less crashes but not none. I've had some sessions where I only get 1 or 2 crashes a night and others where I've had 7+. Hopefully, as the game continues to receive updates and patches this will go away (or at least go down).

## Install

1. Just install from steam as normally.
2. In Steam, go to Library > right-click on Satisfactory > Properties
3. In Properties, on the General tab, change launch options to: `WINE_FULLSCREEN_FSR=1 gamemoderun %command%`
4. In Properties, on the General tab, uncheck 'Enable Steam overlay' (this is optional and purely to improve performance)
5. In Properties, on the Compatibility tab, check the 'Force the use of ...' box and select "Proton Experimental" from the dropdown


Disclaimer: I did also try the following prior to doing step 5. They could have had an impact but step 5 was the crucial point where everything started working, including multiplayer. Prior to step 5, I could play single-player ok (tutorial videos did not work) but not join any multiplayer sessions. I re-used the same wine prefix without cleaning.

* I had first run `protontricks 526870 dotnet472 vcrun2015 faudio d3dcompiler_47`. I believe I got a bunch of errors and just ignored them and moved on
* Then I had run `protontricks 526870 vc2017`. I think it was the same with this one but don't remember.
* I had downloaded and installed the latest Proton-6.x-GE release (Proton-6.21-GE-2 Released) bc the release notes for 'Proton-6.20-GE-1' had mentioned fixes for Satisfactory specifically. This fixed the tutorial videos but I still could not join multiplayer sessions. Single-player worked fine.


## Controller

I disabled the in-game controller detect and remapped everything with antimicrox so that I could have multiple layouts and be able to do more with a controller. I still used an htpc keyboard bc there are a LOT of keys and this game does not currently have good keyboard-only navigation so you will end up needing the mouse a lot for building and menus. Mostly I use the controller for free-roam/exploration.

You can find more info on this setup including my antimicrox profile and steps to configure wine so that it doesn't pass through the controller into the wine bottle here:

https://github.com/zpangwin/antimicro-profiles/tree/master/satisfactory


## Mods Setup

Mods in this game are *incredibly* wonky. Even after doing everything I'm about to list, I had a *lot* of issues and frustration but I *was* able to eventually get things working the way I wanted. And it is relatively tolerable. But to break things down, there are 2 main setup processes I had to go through to get mods working: case-sensitivity handling and the mod manager. I'll spend a section on each.


### Mods: Handling case-sensitivity

And it was stupid things that wouldn't matter under other mod managers that I've used. First, if you've ever tried modding other games like Bethesda ones etc, you will probably have noticed that case-sensitivity can be an issue in mods even when Proton/Wine seem to take care of it for the game itself.

To give yourself the best chance that they will work, you should have the game installed on either an NTFS partition (in my experience, which is admittedly out-of-date, using proton on NTFS partitions is **very unstable**) *or* on an ext4 partition which has the casefold option enabled. Unfortunately, you cannot enable this option on an *existing* partition; there is no documentation for doing so and even trying to manually enable via `tune2fs` won't work, despite it being able to *read* the presence of the setting.

I know, you're probably thinking that it's a pain in the ass to move everything off your partition and reformat it, then move everything back and still have more work to do **just** to have *less* problems (yes: you will still have problems from the mod manager even after all this). And you're right: it is absolutely a pain in the ass. You can try without it. I was able to get some mods running before I did this (with multiplayer). But after doing this, I was also able to load mods that I previously had a lot of issues with.


1. Pick a partition that you want to format as ext4 and put steam games on. I will be using `/dev/sdz1` here to prevent copy/paste issues (unless you somehow have 26 drives), so replace it with the desired partition in all the commands below.
2. If the partition is already ext4, then first check if you formatted it with the option (it's not a default option, so probably you didn't but for the forgetful types it's worth checking): `sudo dumpe2fs -h /dev/sdz1 | grep 'Filesystem features'|grep --color=always -P '^|casefold'`. If you see `casefold` listed, skip to step 6. Otherwise, continue to next step.
3. If this partition is new/empty, great news: you can skip to step 5.
4. If this partition is **NOT** new/empty (such as reusing same one you *already* have stuff on), you will need to move it off somewhere else first (or delete and redownload stuff). Anything still on the drive when you're done will be lost when we reformat. Also, I **highly** recommend using either `mv -t "<destination_dir>" "<source_dir>"` or something else that you are 100% absolutely sure preserves filesystem permissions.
5. Unmount the partition: `sudo umount /dev/sdz1`
6. If you want to use the same UUID so that you don't have to mess with steam/fstab/etc again, capture it in a variable with `OLD_UUID="$(sudo blkid|grep /dev/sdz1|sed -E 's/^.* UUID="([^"]+)".*$/\1/g')"; echo "OLD_UUID is: $OLD_UUID";`
7. Reformat the partition with the `casefold` option (note: if this is a new/empty partition, then remove the `-U "$OLD_UUID"` part, the `-L` part is just a label, it can be any short string of only alphanums, hyphens, underscores). **Running the format command will erase everything on the partition**. When you are ready run: `sudo mkfs.ext4 -O casefold -L "nix-gaming" -U "$OLD_UUID" /dev/sdz1`
8. Rerun the command from step 2. You should now see the `casefold` option listed.
9. Remount the drive, e.g. `sudo mkdir /gaming; sudo mount /dev/sdz1 /gaming; sudo chown $USER:$USER /gaming`
10. Move all your stuff back (or if previously a new/empty drive, then configure as steam library dir and download game).
11. Now we need to apply the casefold attribute, which is applied to specific folders but can *only* be applied to an *empty* folder. You can apply it to the `steamapps/common` folder if you like but mine is quite large so I am only applying it as-needed, in other words I'm only going to apply it to Satisfactory and any other games I mod. The following steps will assume you are applying it to the Satisfactory install folder.
12. Open a terminal and change to the folder where the game is installed (assuming you mounted to /gaming). e.g. `cd /gaming/steam/steamapps/common`.
13. Rename the current Satisfactory folder: `mv Satisfactory Satisfactory-bak`
14. Create a new folder and apply the casefold attribuute: `mkdir Satisfactory; chattr +F Satisfactory;`
15. Move all the contents back under the folder: `mv -t Satisfactory Satisfactory-bak/*`
16. Confirm it works: `cd Satisfactory; echo 'TEST' > TEST; sed -i 's/TEST/PASS/g' test; cat Test || echo FAIL; rm TEST`
17. All done with casefold setup, you can safely close the terminal.



### Mods: Living with the Mod Manager

Second, you'll need the Satisfactory Mod Manager or SMM. You can download the latest release [here](https://github.com/satisfactorymodding/SatisfactoryModManager/releases/latest).

The have an AppImage and it is literally as easy as downloading it then setting it as executable and double-clicking it to run (assuming you have executables set to run on double-click). Or you can launch it like any other executable. If you hate AppImages for some reason, you can always compile from source.

1. Download `Satisfactory-Mod-Manager.AppImage` via browser (optionally you can copy to a different folder).
2. Set as executable for your user/group: `chmod ug+rwx Satisfactory-Mod-Manager.AppImage`

If you only want one or two mods, it is actually pretty easy and laid out very intelligently (I do wish the scrollbars were a bit wider... not a fan of miminalistic scrollbars that seem to be all the rage these days). And it will probably work quite nicely without a lot of issues.

But if you plan to have a ton of mods like I do... well, be prepared for a less pleasant experience.

As of v2.7.3 of the Satisfactory Mod Manager, I have all sorts of issues with unpredictable behavior. In theory, making profiles is as easy as clicking the big green plus button next to profiles and giving the new profile a name. I'm currently running between 60-75 mods (depending on single-player vs co-op profiles) and **after** I dealt with the headaches and got to a relatively unchanging mod setup, I am more or less stable now (aside from game crashes).

* I can switch to a known working profile A and game loads to main menu, but switching to an identical profile B created from profile A, the game will *not* load to the main menu. It did work as expected when my profile names were `temp` and `temp2`. But it did not when I used `dec-14-mods-ok` as A and `Dec-20-Coop-ok`; not sure if it doesn't like hyphens/more complex names or is just same random bugginess I was experiencing.
* Turning mods on/off does not seem to be a reliable way to straighten out bugginess. Sure, removing them turns it back to Vanilla and will solve that much. But it doesn't seem that "reinstalling" the mods (turn it off then back on again) does anything to fix odd behaviors.
* I can add or *remove* mods and the game will no longer load to main menu. Especially the removing part is annoying. But unlike with other games, the *added* mods and the game crash don't seem to be related ... I've had the game fail to load after making a change, and the later been able to get to load with the *same, exact* mods (not even updates). As far as I can tell, the SMM is *extremely* finicky about having *multiple* changes between launches. Limiting myself to a single addition or deletion, while not a magic bullet, *does* seem to help a lot. Oddly, I am sometimes able to successfully launch with the same set of mods this way that it fails to launch with when I make all the changes at once.
* The mod manager does not appear to save your changes until you close the program. If everything works correctly, this is fine. But if Safisfactory ends up crashing so bad it locks or reboots your system (or theoretically but much less likely, if the power went out) then any changes are lost. So I recommend that you follow a process of: make changes, launch the game and make sure you can get to the main menu, repeat until all changes made, launch game and confirm one last time, **exit game then exit SMM to ensure that SMM saves all of your changes**, restart SMM + game then play.

