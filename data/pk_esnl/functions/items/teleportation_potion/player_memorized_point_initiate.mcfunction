# Create marker for teleportation
summon marker ~ ~ ~ {Tags:["pk_current_memorized_point"]}
execute as @e[type=marker,tag=pk_current_memorized_point,limit=1] run function pk_esnl:items/teleportation_potion/player_memorized_point_execute