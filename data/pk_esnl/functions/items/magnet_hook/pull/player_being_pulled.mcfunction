# Pull
tp @s ^ ^ ^1

# Check if the player will reach its point : 
execute if entity @e[type=marker,limit=1,sort=nearest,tag=pk_magnet_hook_latch_point,tag=pk_current,distance=..2] run function pk_esnl:items/magnet_hook/pull/player_reaching_latch_point