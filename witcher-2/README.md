## Prefix

I am being lazy and copying a [post I made on stack exchange](https://gaming.stackexchange.com/questions/256661/where-are-witcher-2-save-game-files-located/372547#372547). If anything doesn't make sense, visit there and it will likely make sense in that context.

*Note: The OP specifically mentions Windows Explorer and presumably is on Windows. This answer attempts to answer the same question for **Linux** users and more completely than is possible using comments. In other words, while the accepted answer should be preferred for the OP/Windows users in general, this answer may still be of value to Linux users who are looking to play The Witcher 2 and want to know the save locations.*

## Linux Save Locations

As noted in the comments above, if you are using the native linux version of The Witcher 2, you will find the saves in either:

* Remote/Cloud saves: `~/.local/share/Steam/userdata/<user-steam-id>/20920/remote`
* Local saves: `~/.local/share/cdprojektred/witcher2/GameDocuments/Witcher 2/gamesaves/`

If you are using the Proton/Windows version of The Witcher 2 under Linux, you saves will instead be located at either:

* Remote/Cloud saves: Unknown (Not recommended due to a [comment](https://www.reddit.com/r/linux_gaming/comments/grfs1x/how_is_the_witcher_2_on_linux/fryqjwc?utm_source=share&utm_medium=web2x) that both Windows/Linux versions have a bug where cloud saves can cause increased crashes in Chapter 3)
* Local saves: `"${STEAMDIR}/compatdata/20920/pfx/drive_c/users/steamuser/My Documents/Witcher 2/gamesaves/"` where STEAMDIR is whatever you have in Settings > Download > Steam Library Folders (default is `~/.local/share/Steam/steamapps`).

*Note: you can toggle remote/cloud saves on/off from Library > Right click game > Properties > Updates > Steam Cloud section > check or uncheck "Enable Steam Cloud synchronization ..."*

*Note also that I only confirmed this against the steam version of the game. While I would assume the GOG version uses the non-remote location, I did not confirm this.*

## Addendum - How to Setup Proton Version

As an addendum, if you are on Linux and plan to use mods, also be aware that there are issues with the Linux native version [not properly loading mod scripts in some cases](https://github.com/QuietusPlus/EMC-Stock/issues/1). For this reason, I decided to go with Proton version instead.

This section details getting the Proton version setup instead of the Native version. It does assume that you have installed Steam and have already [enabled Proton aka Steam Play](https://fosspost.org/tutorials/enable-steam-play-on-linux-to-run-windows-games). It also assumes you have up-to-date video card drivers for your system.

0. If you previously installed the native version, you will need to uninstall that first because Steam doesn't allow both versions to be installed at the same time. (`Library > Right click game > Manage > Uninstall`).

1. Next, you need to force Steam to use the Proton version (`Library > Right click game > Properties > check box for "Force ... Steam Play compatibilty tool" > Choose any version from drop-down > OK`). For reference, my version was "Proton 5-0-9" but newer is probably better.

2. Then install TW2 (`Library > Right click game > Install`); Steam will now download the Proton version. I also recommend disabling the Steam Overlay after install (`Library > Right click game > Properties > uncheck "Enable Steam Overlay" > OK`)

3. Initially, it would not launch but after consulting [protondb](https://www.protondb.com/app/20920) I found that I had to run `cp -a "${STEAMDIR}/common/the witcher 2/bin/config"/* "${STEAMDIR}/compatdata/20920/pfx/drive_c/users/steamuser/My Documents/Witcher 2/Config/"` where STEAMDIR is whatever you have in Settings > Download > Steam Library Folders (default is `~/.local/share/Steam/steamapps`).

4. At this point, I could get to the launcher but I had a black box over launcher text and I had clicked upper right where I guessed exit button would be and it closed. Go to Library > Right click game > Properties > Set Launch Options and use: `PROTON_USE_D9VK=1 %command%` then click OK to save and OK again to exit properties. If you still get the black square in the center of the screen, drag the launcher to the left/right and you will be able to see.

5. If you are playing with keyboard and mouse OR if you plan on using gamepad to k/m mapping software such as antimicro \* ([github](https://github.com/AntiMicro/antimicro) | [deb files on LaunchPad](https://launchpad.net/~mdeguzis/+archive/ubuntu/libregeek/)), then you can skip this step. Launch the game. If controller works in the menus, you need to go to `Options > Controls > and change from Keyboard to Gamepad`; otherwise, the controller will only work in main menu but will be IGNORED once you get in-game. I was using a wireless xbox 360 controller and had the `xboxdrv` package already installed -- mine worked fine after changing this option. If that doesn't work, some folks reported better success for Steam controllers by launching from Steam's Big Picture Mode instead : [see here](https://www.reddit.com/r/linux_gaming/comments/3zq6nr/witcher_2_anyone_got_steam_controller_working/).

\* For installing antimicro, the [deb file for artful](https://launchpad.net/~mdeguzis/+archive/ubuntu/libregeek/+files/antimicro_2.23~artful-1_amd64.deb) installs fine for me on Linux Mint 19.3 and also worked for installing it on LM 20 in a VM. If you prefer modifying an AntiMicro preset rather than creating one from scratch, I also found 3 "mod" downloads on nexus which provided AntiMicro profiles (\*.amgp files):

* [761-Quick signs for The Witcher 2 - Enhanced gamepad layout by MaxBelmont](https://www.nexusmods.com/witcher2/mods/761)
* [767-Witcher 2 Quickcast Enhanced Gamepad Mod by ozz61](https://www.nexusmods.com/witcher2/mods/767)
* [848-Improved controls for gamepad by ProbeAway](https://www.nexusmods.com/witcher2/mods/848).

Of the 3, the last one seemed to be the most different from vanilla controls.

## References

For the local save options, I verified these locations manually on a Linux Mint 19.3 Cinnamon x64 install. The save location for the local saves on the Proton version may vary depending on configured Steam Library Folders but otherwise all save locations for all versions of the game should be distro-agnostic.

1. https://www.reddit.com/r/linux_gaming/comments/275604/is_it_possible_to_install_mods_on_the_witcher_2/
2. https://www.reddit.com/r/linux_gaming/comments/3zq6nr/witcher_2_anyone_got_steam_controller_working/
3. https://www.protondb.com/app/20920
4. https://github.com/QuietusPlus/EMC-Stock/issues/1

*Note: When visiting the reference links, if you see the term "eON wrapper" this is the technology that CD Projekt Red used to port TW2 from Windows to Linux; so if you see eON referenced, they are discussing the native version of the game. Most of the links above are dealing with that version unless they explicitly mention wine or proton.*

## Mods

I started from scratch and did my own mod merges due to the mod architecture in The Witcher 2. You can see my mod merges for that game in my other github repository [here](https://github.com/zpangwin/witcher2-mod-merges).

As I noted above, there were some reports that the native version doesn't handle mods well. I didn't test this myself so it could be due to case-sensitivity issues with script names or something else, or it could be blatantly untrue. I can confirm that the Proton version seemed to work fine with mods under Linux Mint 19.3 using the methodology described in the other repo (unpack vanilla dzips, apply mod changes, repack) but you will need to setup the Gibbed RED Tools windows exe's to run under proton or wine to do the mod merges. See the readme for my other repo for more information.

