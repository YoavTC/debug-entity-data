# Debug Entity Data

## Showcase video

[![showcase](https://img.youtube.com/vi/DDQeth5Lmgk/maxresdefault.jpg)](https://youtu.be/DDQeth5Lmgk)

## Installing

Download the latest release from the [releases tab](https://github.com/YoavTC/debug-entity-data/releases), or from these alternative sites:

- [Modrinth](https://modrinth.com/datapack/debug-entity-data)
- [Curseforge](https://www.curseforge.com/minecraft/data-packs/debug-entity-data)

open your Minecraft world directory and place the downloaded pack inside the datapack directory.
If the world is loaded, execute `/reload` or quit and rejoin.

## How to use

Execute the function :

```mcfunction
/function ded:bind
```

This will output a list of close entities to the chat. Click the message of the one you want, and a dialogue will appear.

In the dialogue, input the NBT data path that you want to debug. You can see all valid data paths by doing `/data get entity <ENTITY>`.

If you sneak+interact with the debug display you get the option to either rebind it to another path, or remove the display.
