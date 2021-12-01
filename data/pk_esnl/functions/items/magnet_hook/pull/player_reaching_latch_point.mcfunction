# Remove the pulled player tag and add player hanging tag
tag @s remove pk_player_pulled
tag @s add pk_player_hung
# Repositioning the player depending on latch point position
execute at @e[type=marker,tag=pk_magnet_hook_latch_point,tag=pk_current,tag=ceiling] run tp @s ~ ~-1 ~
execute at @e[type=marker,tag=pk_magnet_hook_latch_point,tag=pk_current,tag=!ceiling] run tp @s ~ ~ ~
# Mark the relative hanging point as reached
execute as @e[type=marker,tag=pk_magnet_hook_latch_point,tag=pk_current] run tag @s add reached
# Init tp tick timer
scoreboard players set @s PKHookTpTick 0