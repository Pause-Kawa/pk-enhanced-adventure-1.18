tag @s add pk_use_alchemist_registry
execute as @e[type=villager,dx=0,nbt={VillagerData:{profession:"minecraft:none"}},sort=nearest,limit=1] at @s run function pk_esnl:items/alchemist_registry/villager_found
scoreboard players add @s PKRaycastDist 1
tag @s remove pk_use_alchemist_registry
execute if entity @s[scores={PKRaycastHit=0,PKRaycastDist=..79}] positioned ^ ^ ^0.2 run function pk_esnl:items/alchemist_registry/ray