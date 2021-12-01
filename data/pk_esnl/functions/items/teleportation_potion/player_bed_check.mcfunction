# Place marker to spawnpoint coordinates
execute store result entity @s Pos[0] double 1 run data get entity @a[tag=pk_consumed_tp_potion,limit=1] SpawnX 1
execute store result entity @s Pos[1] double 1 run data get entity @a[tag=pk_consumed_tp_potion,limit=1] SpawnY 1
execute store result entity @s Pos[2] double 1 run data get entity @a[tag=pk_consumed_tp_potion,limit=1] SpawnZ 1
# Check at the marker if the block is still a bed
execute at @s in minecraft:overworld positioned as @s run forceload add ~ ~
execute at @s in minecraft:overworld positioned as @s if block ~ ~ ~ #minecraft:beds run function pk_esnl:items/teleportation_potion/teleport_player_to_marker
execute at @s in minecraft:overworld positioned as @s unless block ~ ~ ~ #minecraft:beds run scoreboard players set %pk_teleportation_potion_fail PKValue 0
execute at @s in minecraft:overworld positioned as @s run forceload remove ~ ~
# Remove marker
kill @s