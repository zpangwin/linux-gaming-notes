
## Current Status

I have NOT been able to get a stable campaign co-op yet

Sessions to date: 1

Tests done to date: 0


#### Solutions tested:

[ ] Try Proton-GE
	[ ] Try Proton-5.21-GE-1
	[ ] Try Proton-6.5-GE-2

[ ] Set FPS cap to 60 on both ends
	[ ] Try Radeon 60 FPS
	[ ] Try Proton-5.21-GE-1 + libstrangle 60 FPS
	[ ] Try Proton-6.5-GE-2 + MangoHud 60 FPS

[ ] Confirm he wasn't using stupid apps like Razer Cortex, Corsair iCue, Logitech G-hub and Razer Synapse

[ ] Try moving both installs from HDDs to SSDs

[ ] Try use VPN software to create a virtual LAN-over-VPN and join via LAN instead of XBL
	[ ] Try FOSS FreeLAN app
	[ ] Try FOSS SoftEther app
	[ ] Try FOSS OpenVPN app
	[ ] Try Proprietary ZeroTier app
	[ ] Try Proprietary NeoRouter app

[ ] Setup port forwarding on both sides and try to improve NAT level
	[ ] Try settings static IPs and forwarding the fuckton of ports for this game on both networks...

[ ] Try playing on "Classic" video options

[ ] Try...gah... installing the game on my Windows partition






## Description

This is specifically focused on the campaign co-op functionality.

I have NOT been able to get a stable campaign co-op yet (mostly due to my brother being the only person I have that also has the game and us having a lot of scheduling conflicts).

The one and only session we have had so far, we had him as the host (Win 7 with a newer system and a 2 yr? old AMD GPU). Me on a slightly older system with an Nvidia Geforce 970 running from Linux (I have a multiboot and don't remember if I was under Mint 20 or Fedora 33). During our initial run, the issues we encountered during co-op campaigns were as follows:

1. He had originally launched from desktop shortcut and started with EAC. Since that's currently a no-go for Linux users, I had to get him to close out and re-launch from Library page and choose no EAC.
2. He would send and invite. I would receive it fine, but whenever I tried to join from the invite, I would again get a message about EAC, despite us both having confirmed with launched without EAC. It appears that invites in this game are borked w/r/t having EAC disabled. Luckily, there is also the option to select him from my friends list and just join his session. This worked fine for joining.
3. Once the game started and cutscenes were done, we'd move around. We were playing Halo 1 / CE:A if it matters (since they are supposedly using legacy network code, it might matter). We tried the first mission several times and ran into the same thing multiple times. As the guest, I would randomly get stuck in place and unable to move/fire weapons/etc; all I could do was look around. From his screen, my character was also in a different location. From this, it seemed we were getting some kind of desynchronization issue.

After doing a fuckton of research into issues, I came up with the following potential causes / solutions that people online were attributing the desync issues to (I don't know what's true or false at this point; I was just collecting potential things to troubleshoot).

## Details

I would recommend using either libstrangle or mangohud. [This steam guide](https://steamcommunity.com/sharedfiles/filedetails/?id=1787799592) covers some basic linux tools and has decent descriptions on our two main options: [libstrangle](https://gitlab.com/torkel104/libstrangle) (fps limiter) and [mangohud](https://github.com/flightlessmango/MangoHud) (fps viewer gui that can also be [configured to limit fps](https://github.com/flightlessmango/MangoHud/blob/master/bin/MangoHud.conf#L8)). I have included scripts for installing either one separately or both together.

Both of these seem to have issues with Proton 5.13+ and require workarounds. Follow my [setup notes](https://www.github.com/zpangwin/linux-gaming-notes/workarounds-for-mango-hud-and-libstrangle) to get them installed, configured, and working with 5.13+. Starting with [Proton-6.0-GE-1](https://github.com/GloriousEggroll/proton-ge-custom/releases/tag/6.0-GE-1) and continuing with the rest of the v6 series, Proton GE should support mangohud as stated in their release notes.


## Limiting FPS with Libstrangle

0. Make sure the main game is installed and you can start a campaign mission in the desired sub-game (if you haven't done so already, you will need to go into settings > game settings and tell it to download campaigns for each game in the series that you want to play).

1. Using Proton GE is recommended. Specifially, [users on reddit](https://www.reddit.com/r/linux_gaming/comments/l6e8sj/a_solution_on_getting_the_halo_mcc_campaign/) confirmed that using Proton-5.21-GE-1, "it behaved completely normal and we were able to complete several missions without any problems". Download the tar.gz file for [Proton-5.21-GE-1](https://github.com/GloriousEggroll/proton-ge-custom/releases/tag/5.21-GE-1) and install it in the next step.

2. Install Proton GE. You need to create the folder `~/.steam/root/compatibilitytools.d` if it doesn't exist already. Then extract the Proton GE tar.gz file under that path. **WARNING: You should also check that no extra folder levels were added when you extracted.** If you have something like `~/.steam/root/compatibilitytools.d/Proton-5.21-GE-1/Proton-5.21-GE-1`, that's wrong. The only folders directly under `~/.steam/root/compatibilitytools.d/Proton-5.21-GE-1` should be `dist` and `protonfixes`. Fix it so that everything in the inner folder appears directly under `~/.steam/root/compatibilitytools.d/Proton-5.21-GE-1`.

3. Install libstrangle from source. I have scripts for installing libstrangle (ether [install-libstrangle-from-source.sh](https://github.com/zpangwin/linux-gaming-notes/raw/master/workarounds-for-mango-hud-and-libstrangle/install-libstrangle-from-source.sh) for libstrangle by itself or [install-both-from-source.sh](https://github.com/zpangwin/linux-gaming-notes/raw/master/workarounds-for-mango-hud-and-libstrangle/install-both-from-source.sh) to install both libstrangle and mangohud). If you don't want to use my install scripts, you will need to install some 32-bit build dependencies so the build doesn't fail due to a missing stubs-32.h dependency. The package is `glibc-devel.i686` on Fedora/RHEL/centos and `libc6-dev-i386` on Ubuntu/Mint/Debian/etc (other distros, try [this](https://stackoverflow.com/questions/7412548/error-gnu-stubs-32-h-no-such-file-or-directory-while-compiling-nachos-source)).

4. Close and re-open Steam so that it picks up the newly installed Proton-GE. Then from Library, right-click on the game in the list view and choose Properties. Go to the Compatibility tab and check the box to force a specific version of steam play (aka proton). You should see the new Proton-GE version in the dropdown: select it.

5. Libstrangle doesn't display the FPS on-screen and neither does MCC. So we'll test and confirm that it's working by using a ridiculously small fps that will make game laggy as fuck but confirm that it's working beyond a shadow of a doubt. Go back to the game Properties and go to the General tab. At the bottom should be a box for Launch options, use `ENABLE_VK_LAYER_TORKEL104_libstrangle=1 STRANGLE_FPS=6 %command%` work.

6. Launch the game from the "Play" button on the library page (and select to disable Easy Anti-Cheat). If you try to launch from the systray menu or a desktop shortcut, you will not get the prompt to disable EAC ... and it could ban you or something; idk, I don't use that shit but you have been warned so ignore me at your own risk. Once the game is up, open a new campaign session. If everything is working correctly, it will be laggy as fuck but you'll know the limiter is working correct. If the game doesn't want to exit, you may even have to kill it with `pkill -9 -if halo`.

7. After you have confirmed it works, go back and change the fps to something more reasonable like 60 fps with the launch options: `ENABLE_VK_LAYER_TORKEL104_libstrangle=1 STRANGLE_FPS=60 %command%`



## Limiting FPS with MangoHud

0. Make sure the main game is installed and you can start a campaign mission in the desired sub-game (if you haven't done so already, you will need to go into settings > game settings and tell it to download campaigns for each game in the series that you want to play).

1. Using Proton GE is recommended. Specifially, [users on reddit](https://www.reddit.com/r/linux_gaming/comments/l6e8sj/a_solution_on_getting_the_halo_mcc_campaign/) confirmed that using Proton-5.21-GE-1, "it behaved completely normal and we were able to complete several missions without any problems". But Proton v5 after v5.13+ is known to have issues with MangeHud. So you will either need to use an earlier version or go to v6. Starting with Proton-6.0-GE-1 and continuing with the rest of the v6 series, the [release notes](https://github.com/GloriousEggroll/proton-ge-custom/releases/tag/6.0-GE-1) indicate Proton GE should support mangohud again. I recommend trying the latest v6 or greater. At the time of writing, that is [Proton-6.5-GE-2](https://github.com/GloriousEggroll/proton-ge-custom/releases/tag/6.5-GE-2); download the tar.gz file and install it in the next step.

2. Install Proton GE. You need to create the folder `~/.steam/root/compatibilitytools.d` if it doesn't exist already. Then extract the Proton GE tar.gz file under that path. **WARNING: You should also check that no extra folder levels were added when you extracted.** If you have something like `~/.steam/root/compatibilitytools.d/Proton-6.5-GE-2/Proton-6.5-GE-2`, that's wrong. The only folders directly under `~/.steam/root/compatibilitytools.d/Proton-6.5-GE-2` should be `dist` and `protonfixes`. Fix it so that everything in the inner folder appears directly under `~/.steam/root/compatibilitytools.d/Proton-6.5-GE-2`.

3. Install MangoHud from source. I have scripts for installing MangoHud (ether [install-libstrangle-from-source.sh](https://github.com/zpangwin/linux-gaming-notes/raw/master/workarounds-for-mango-hud-and-libstrangle/install-mango-hud-from-source.sh) for MangoHud by itself or [install-both-from-source.sh](https://github.com/zpangwin/linux-gaming-notes/raw/master/workarounds-for-mango-hud-and-libstrangle/install-both-from-source.sh) to install both libstrangle and MangoHud). You don't have to use my scripts but if you opt for installing manually, I recommend installing [from source](https://github.com/flightlessmango/MangoHud) instead of from central repos. Even on Fedora where packages are much newer than Ubuntu/Mint/Debian, the version in the central repos is the same as the released version on github - which was from Nov 2020 at the time of writing (Apr 30, 2021). There were much newer commits than this (from Apr 2021) under the master branch. And even newer than that under the develop branch (if you are not a developer, you should only use the default - e.g. the master branch - unless you understand the risks of using the develop branch).

4. The default mango hud settings put it in a kind of shitty position for playing halo - it has it in the upper left corner by default. Also by default, Halo (CE) has hud elements for weapon/ammo in the upper left (and health/shields in the upper right). If you reference the [MangoHud readme](https://github.com/flightlessmango/MangoHud), it notes that you can make customizations either using a config file or the MANGOHUD_CONFIG environment varible. Note that it says "Parameters that are enabled by default have to be explicitly disabled." (but does not provide any examples of how to explicitly disable them. but `frame_timing=false` does appear to work). However, there is actually a note on [one of their release pages](https://github.com/flightlessmango/MangoHud/releases/tag/v0.6.0) stating that you can instead use `legacy_layout=false` and then "add the elements to the config or environment variable in the order you want them to show" and that when using this option "No elements are added by default and you can add multiple of the same element".

5. Try either of the following launch options: `MANGOHUD_CONFIG=cpu_stats,gpu_stats,fps,no_small_font,ram,frame_timing=false,fps_limit=60,position=bottom-right mangohud %command%` or `MANGOHUD_CONFIG=legacy_layout=false,cpu_stats,gpu_stats,ram,fps,no_small_font,fps_limit=60,position=bottom-right mangohud %command%` - it's not perfect; I saw "61 FPS" a couple times but it's still pretty damn good and it's very very nice just to being able to see them on-screen at all.






