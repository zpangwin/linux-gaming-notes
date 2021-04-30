# MangoHud and LibStrangle with Proton 5.13+

## Current status

I was able to get libstrangle working with `Proton-5.21-GE-1` and the launch option `ENABLE_VK_LAYER_TORKEL104_libstrangle=1 STRANGLE_FPS=6 %command%` (FPS is very low here beause I was trying to slow down a very cheap, very fast-paced mini game... and also because it happens to be easier to confirm when it is working).

I have not able to get MangoHud working (yet) beyond seeing it appear when I do the vkcube demo. Every time I launched it from steam, nothing would happen (game would start but no MangoHud displayed). Trying from wine, I was seeing some errors about the so files. It could have been some incompatibility with Proton GE or something else on my end; I didn't test it out under either the latest Proton 5.13-4 or under older pre-5.23 versions of Proton or Proton GE; I may investigate some more later as the demo suggests the issue is not with my hardware nor with my os/system but more likely my proton/wine setup.

## Description

[MangoHud](https://github.com/flightlessmango/MangoHud) and [LibStrangle](https://gitlab.com/torkel104/libstrangle) are both Wine / Proton compatible tools that provide the ability to limit FPS / framerate. In the case of MangoHud, it provides a lot of other functionality as well.

Both tools were impacted by some recent changes in Proton 5.13 where instead of directly running the game command using proton's wine64 binary, proton now puts that call in a wrapper/container layer which impacted these tools.

This covers installation of the tools, setting up the workaround, and configuring MangoHud for FPS limiting (libstrangle simply takes it as a argument so there is no configuration), and sample launch options for each. Either tool can be used individually; I am covering both to double the changes of a working solution.


## Installation


I recommend installing both from source using instructions from their respective repos or using [this install script](https://raw.githubusercontent.com/zpangwin/linux-gaming-notes/master/workarounds-for-mango-hud-and-libstrangle/install-mango-hud-and-libstrangle.sh)


## Testing the install


Let's get a simple vulkan demo and make sure MangoHUD is actually working. I had some issues with this under Fedora 33 with proprietary Nvidia drivers (apparently, it is supposed to work much nicer for AMD owners).

For a simple, precompiled vulkan demo as [recommended by reddit](https://www.reddit.com/r/vulkan/comments/afmd8p/simple_precompiled_vulkan_demo/) we can get a copy as part of the [Vulkan SDK](https://vulkan.lunarg.com/sdk/home#sdk/downloadConfirm/1.2.162.0).


    cd ~/Downloads
    wget https://sdk.lunarg.com/sdk/download/1.2.162.0/linux/vulkansdk-linux-x86_64-1.2.162.0.tar.gz?u=
    tar -xzvf vulkansdk-linux-x86_64-1.2.162.0.tar.gz
    cd 1.2.162.0/x86_64/bin
     
    # basic test (when done exit via gui or Ctrl+C in terminal)
    mangohud vkcube
    
    # more complex test (when done exit via gui or Ctrl+C in terminal)
    MANGOHUD_CONFIG=cpu_temp,core_load,gpu_temp,ram,output_folder=/tmp,fps_limit=15,position=top-right,height=500,font_size=32 mangohud vkcube
    

If you can get the demo working, great. Before we can use it with modern versions of Proton, we still need to do a few workarounds.


## Applying Workarounds for Proton


The workaround(s) needs to be applied in the context of a Proton install because it is adding files under that Proton's dist/* folder. You can use it for either the normal (steam-installed) Proton versions OR for custom Proton installs (like [Proton GE](https://github.com/GloriousEggroll/proton-ge-custom)). Since normal installs can be updated by Steam at any time, I strongly recommend using a Proton GE install instead (these are installed under `~/.steam/root/compatibilitytools.d`).

Download [this script](https://raw.githubusercontent.com/zpangwin/linux-gaming-notes/master/workarounds-for-mango-hud-and-libstrangle/apply-workarounds-for-proton-5.13.sh), then copy it to the Proton install you wish to update and run it (alternately, you can run it from any folder and pass the path of the proton install as script argument).


## Configuring FPS limits

LibStrangle takes the FPS limit as an argument so there's not really anything to configure.

MangoHud has a config file we can setup though. The values are all documented on the main project page [here](https://github.com/flightlessmango/MangoHud#mangohud_config-and-mangohud_configfile-environment-variables).

1. Create the MangoHud config dir: `mkdir -p ~/.config/MangoHud`
2. Copy over the sample file: `cp -a /usr/share/doc/mangohud/MangoHud.conf.example ~/.config/MangoHud/MangoHud.conf`
3. Edit the sample file and specify the desired FPS limit then save:


    fps_limit=30


## Steam Launch Options

### LibStrangle

Note: In the release notes, they specifically mention that having the Steam Overlay on can cause crashes. Make sure that gets disabled with when setup launch options.

1. In Steam, go to Library > right-click BGE > Properties
2. Disable Steam Overlay
3. Then under Properties > Launch Options, you'll pass the desired max FPS as an argument: `strangle 30 %command%`

### MangoHud

1. In Steam, go to Library > right-click BGE > Properties > Launch Options
2. Add: `mangohud %command%`

## Other:

You might also add `VSYNC=0` before the other launch options to disable vsync





https://www.gamingonlinux.com/2020/11/valve-updates-the-steam-linux-container-runtime-for-proton-513-helps-tools-like-mangohud


https://github.com/flightlessmango/MangoHud

Example: MANGOHUD_CONFIG=cpu_temp,gpu_temp,position=top-right,height=500,font_size=32 Because comma is also used as option delimiter and needs to be escaped for values with a backslash, you can use + like MANGOHUD_CONFIG=fps_limit=60+30+0 instead.


core_load 	Displays load & frequency per core

fps_limit 	Limit the apps framerate. Comma-separated list of one or more FPS values. 0 means unlimited. (note multiple are allowed because of the option toggle_fps_limit which lefts you shift between various limits you have defined)

toggle_fps_limit 	Cycle between FPS limits. Defaults to Shift_L+F1.

toggle_hud=
toggle_logging= 	Modifiable toggle hotkeys. Default are Shift_R+F12 and Shift_L+F2, respectively.


MANGOHUD_CONFIG=cpu_temp,core_load,gpu_temp,ram,output_folder=/tmp,fps_limit=15,position=top-right,height=500,font_size=32




## References

* https://www.reddit.com/r/linux_gaming/comments/jc2b77/mangohud_workaround_for_proton_513/
* https://www.reddit.com/r/linux_gaming/comments/jfztup/libstrangle_and_proton_513_known_workaround/

