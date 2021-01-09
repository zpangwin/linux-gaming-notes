    #!/bin/bash
    TARGET_PROTON_DIR="$1";
    STARTING_DIR="$(realpath $(pwd))";
    DEFAULT_CUSTOM_PROTON_DIR="$(realpath "$HOME/.steam/root/compatibilitytools.d")";
    test ! -e "$DEFAULT_CUSTOM_PROTON_DIR" && mkdir -p "$DEFAULT_CUSTOM_PROTON_DIR";
     
    # if no passed proton folder but launched from any subfolder under a proton install
    # then set target to that proton install...
    if [[ -z "$TARGET_PROTON_DIR" ]]; then
        if [[ "$DEFAULT_CUSTOM_PROTON_DIR/" == "${STARTING_DIR:0:${#DEFAULT_CUSTOM_PROTON_DIR}+1}" ]]; then
            TARGET_PROTON_DIR="$DEFAULT_CUSTOM_PROTON_DIR/$(echo "${STARTING_DIR:${#DEFAULT_CUSTOM_PROTON_DIR}+1}"|cut -d/ -f1)";
        elif [[ $STARTING_DIR =~ ^.*/steamapps/common/Proton.*$ ]]; then
            TARGET_PROTON_DIR="$(echo "${STARTING_DIR}"|sed -E 's|^(.*/steamapps/common/Proton [^/]*)(/.*)?$|\1|g')";
        fi
        if [[ '-h' == "$1" || '--help' == "$1" || -z "$TARGET_PROTON_DIR" ]]; then
            echo -e "expected usage:\n  $0 PATH_TO_PROTON_INSTALL"
            echo "alternately, the script can be called without arguments if the current"
            echo "directory is under a valid proton install."
            exit -1;
        fi
    fi
     
    # The workarounds need to be applied against a proton install
    # I recommend either using a copy of ProtonGE or else copying an existing Proton install
    # under ~/.steam/root/compatibilitytools.d similar to ProtonGE
    # so that you don't have to worry about steam updates breaking it later.
    #
    # Based on /u/GloriousEggroll and /u/Xaero_Vincent versions at:
    #    https://www.reddit.com/r/linux_gaming/comments/jc2b77/mangohud_workaround_for_proton_513/
    #
    cd "$TARGET_PROTON_DIR"
     
    # copy libstrangle libs (from build output)
    test -d /usr/local/lib/libstrangle/lib64 && cp -a -t ./dist/lib64 /usr/local/lib/libstrangle/lib64/*.so
    test -d /usr/local/lib/libstrangle/lib32 && cp -a -t ./dist/lib /usr/local/lib/libstrangle/lib32/*.so
     
    # mangohud libs (per GloriousEggroll - no 32 bit package provided on fedora)
    # per zpangwin: this path seems outdated/incorrect on fedora33... and I have 32 and 64 libs...
    test -d /usr/lib64/mangohud && cp -Ra -t ./dist/lib64 /usr/lib64/mangohud

    # zpangwin: corrected version of above based on fedora33 paths built from source
    test -d /usr/lib/mangohud/lib64 && cp -Ra -t ./dist/lib64 /usr/lib/mangohud/lib64/*.so
    test -d /usr/lib/mangohud/lib32 && cp -Ra -t ./dist/lib /usr/lib/mangohud/lib32/*.so
     
    # device select libs & vulkan overlay libs
    # zpangwin note: proprietary nvidia drivers don't use mesa.
    # if you have an nvidia card and aren't using the open-source nouveau drivers, you might
    # be missing some of these files. changed so that it wouldn't break if they were missing
    # I have a Geforece 970 w proprietary drivers and only had the device_select ones
    #
    test -f /usr/lib64/libVkLayer_MESA_device_select.so && cp -a /usr/lib64/libVkLayer_MESA_device_select.so ./dist/lib64/
    test -f /usr/lib/libVkLayer_MESA_device_select.so && cp -a /usr/lib/libVkLayer_MESA_device_select.so ./dist/lib/
    test -f /usr/lib64/libVkLayer_MESA_overlay.so && cp -a /usr/lib64/libVkLayer_MESA_overlay.so ./dist/lib64/
    test -f /usr/lib/libVkLayer_MESA_overlay.so && cp -a /usr/lib/libVkLayer_MESA_overlay.so ./dist/lib/
     
    # store path to proton dist dir
    DIST_DIR="$(pwd)/dist"
     
    # copy json and icd files for vulkan
    cp -Ra /usr/share/vulkan $HOME/.local/share/
     
    # change to vulkan user config dir
    cd ~/.local/share/vulkan
     
    # fix mangohud path in various json files
    sed -Ei "s|/usr/.*/(.\\\$LIB/)|$DIST_DIR/\\1|g" ./implicit_layer.d/MangoHud.json
     
    # fix vulkan layer paths
    # zpangwin note: I did not have any files under the explicit_layer.d folder
    # so i changed things to work regardless of if you have them or not...
    # also the original sed pattern incorrectly matched against steamfossilize_*.json's
    # paths which had "~/.local/share/Steam/ubuntu12_64/libVkLayer_steam_fossilize.so" etc
    # the new sed pattern will now avoid changing these.
    find . -type f -iname '*.json' -exec sed -Ei "s|\"(/usr/.*)?(libVkLayer_MESA)|\"$DIST_DIR/\\\\\\\$LIB/\\2|g" "{}" \;
     
    if [[ -f /usr/local/share/vulkan/implicit_layer.d/libstrangle_vk.json ]]; then
        # copy libstrangle vulkan config
        cp -a -t ./implicit_layer.d /usr/local/share/vulkan/implicit_layer.d/libstrangle_vk.json

        # fix libstrangle path
        sed -Ei "s|\"(/usr/.*)?(libstrangle_vk)|\"$DIST_DIR/\\\\\\\$LIB/\\2|g" implicit_layer.d/libstrangle_vk.json
    fi
     
