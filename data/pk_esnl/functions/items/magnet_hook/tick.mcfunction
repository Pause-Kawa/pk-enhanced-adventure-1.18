# Init the PKHookUsingDelay score to 0 for player having not a score value yet
scoreboard players add @a PKHookUsingDelay 0
# Reduce delay before the hook become usable again after a launch
scoreboard players remove @a[scores={PKHookUsingDelay=1..}] PKHookUsingDelay 1
# Pulling player behavior
function pk_esnl:items/magnet_hook/pull/tick
# Hanging behavior 
execute as @e[type=marker,tag=pk_magnet_hook_latch_point,tag=reached] at @s run function pk_esnl:items/magnet_hook/hung/tick
# Clear eventual obsolete hanging points (can happen if a player disconnect / if a player is killed while using the magnet hook)
execute as @e[type=marker,tag=pk_magnet_hook_latch_point] at @s unless entity @a[distance=..16] run kill @s
execute as @a[tag=pk_player_hung] at @s unless entity @e[type=marker,tag=pk_magnet_hook_latch_point,distance=..2] run function pk_esnl:items/magnet_hook/hung/clear
# Animation when magnet hook is reusable
execute as @a[scores={PKHookUsingDelay=1}] at @s run playsound block.note_block.hat ambient @s ~ ~ ~ 1 1.4