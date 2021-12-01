# Create marker for teleportation
summon marker ~ ~ ~ {Tags:["pk_current_spawnpoint"]}
execute as @e[type=marker,tag=pk_current_spawnpoint,limit=1] run function pk_esnl:items/teleportation_potion/player_bed_check