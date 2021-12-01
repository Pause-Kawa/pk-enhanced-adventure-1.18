# Store the player memorized point dimension
scoreboard players set @s[predicate=pk_core:location/dimension/in_overworld] PKMemorizedDim 0
scoreboard players set @s[predicate=pk_core:location/dimension/in_the_nether] PKMemorizedDim -1
scoreboard players set @s[predicate=pk_core:location/dimension/in_the_end] PKMemorizedDim 1
# Store memorial excerpt location in throwner scores
execute store result score @s PKMemorizedX run data get entity @e[type=item,tag=pk_current_memorial_excerpt,limit=1] Pos[0]
execute store result score @s PKMemorizedY run data get entity @e[type=item,tag=pk_current_memorial_excerpt,limit=1] Pos[1]
execute store result score @s PKMemorizedZ run data get entity @e[type=item,tag=pk_current_memorial_excerpt,limit=1] Pos[2]
# Animation
particle minecraft:dragon_breath ~ ~ ~ 0.3 1 0.3 0.01 100
particle minecraft:firework ~ ~ ~ 0.15 0.4 0.15 0.01 30
playsound minecraft:block.beacon.power_select ambient @a ~ ~ ~
playsound minecraft:entity.elder_guardian.hurt ambient @a ~ ~ ~
# Remove memorial excerpt and clear player tag
kill @e[type=item,tag=pk_current_memorial_excerpt,limit=1]
title @s actionbar {"text": "Point memorized"}
tag @s remove pk_current_memorial_excerpt_thrower