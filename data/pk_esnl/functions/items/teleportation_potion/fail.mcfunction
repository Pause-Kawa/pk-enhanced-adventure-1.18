particle minecraft:smoke ~ ~ ~ 0.5 1 0.5 0.01 50
playsound minecraft:block.beacon.deactivate ambient @a ~ ~ ~
execute if score %pk_teleportation_potion_fail PKValue matches 0 run title @s actionbar {"text":"Your home bed was missing or obstructed"}
execute if score %pk_teleportation_potion_fail PKValue matches 1 run title @s actionbar {"text":"You can't remember any point to teleport to..."}
execute if entity @s[gamemode=!creative] run function pk_esnl:items/teleportation_potion/give