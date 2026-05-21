# Debug Entity Data

[preview.webm](https://github.com/user-attachments/assets/d6f0ef79-22cf-4ad1-b7f6-272d805461aa)

## Installing

Download the latest release from the [releases tab](https://github.com/YoavTC/debug-entity-data/releases), open your Minecraft world directory and place the downloaded pack inside the datapack directory.
If the world is loaded, execute `/reload` or quit and rejoin.

To uninstall the pack run:

```
/function ded:uninstall
```

And delete the files from the datapack directory.

## How to use

Execute the function :

```
/execute as <ENTITY> run function ded:bind {key:<DATA PATH>}
```

Replace "`<ENTITY>`" with your selector (`@n`, `@e[type=item]`, etc..), and the "`<DATA PATH>`" with a valid data path on the target entity (you can see all valid data paths by doing `/data get entity <ENTITY>`).

To "delete" or "unbind" the floating text element, you can run:

```
/execute as <ENTITY> run function ded:unbind
```

## Limitations

> This version of the pack uses [experimental settings](https://minecraft.wiki/w/Data_pack#Experimental_Settings). For a non-experimental version, check out the [non-experimental branch](https://github.com/YoavTC/debug-entity-data/tree/non-experimental)

The pack supports only simple `byte`, `boolean`, `short`, `int`, `long`, `float` and `double`,
as well as lists of those types.
