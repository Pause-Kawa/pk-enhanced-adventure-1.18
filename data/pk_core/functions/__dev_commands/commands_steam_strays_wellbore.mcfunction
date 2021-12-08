# Tiny Blocks Painter
setblock ~ ~ ~ dropper[facing=down]{CustomName:'{"text":"Tiny Blocks Painter","italic":false}'} replace
execute align xyz run summon marker ~0.5 ~ ~0.5 {Tags:["pk_strc_marker","pk_steam_strays_wellbore_marker","pk_tiny_block_painter"]}
execute align xyz run summon armor_stand ~1.5 ~0.34 ~0.5 {Small:1b,Invulnerable:1b,NoGravity:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:quartz_block",Count:1b}],Rotation:[45.0f,0.0f]}
execute align xyz positioned ~0.501 ~-1.001 ~0.501 run summon falling_block ~ ~ ~ {BlockState:{Name:"minecraft:blast_furnace",Properties:{facing:"west"}},NoGravity:1b,Time:-2147483648,DropItem:0b}
execute align xyz positioned ~0.499 ~-0.999 ~0.499 run summon falling_block ~ ~ ~ {BlockState:{Name:"minecraft:blast_furnace",Properties:{facing:"west"}},NoGravity:1b,Time:-2147483648,DropItem:0b}
give @p item_frame{EntityTag:{Item:{id:"minecraft:quartz_block",Count:1b},ItemRotation:1b,Invisible:1b}} 1
give @p item_frame{EntityTag:{Item:{id:"minecraft:writable_book",Count:1b,tag:{pages:[""]}},Invisible:1b,Fixed:1b}} 1