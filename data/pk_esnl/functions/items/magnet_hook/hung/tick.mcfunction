# Tag the relative player
tag @p[tag=pk_player_hung] add pk_player_hung_current
# Block the player on the latch point every two ticks (waiting an extra tick is usefull on servers, that can't refresh client position fast enough to enable it to place blocks when hanging).
execute if entity @s[tag=ceiling] run tp @p[tag=pk_player_hung_current,scores={PKHookTpTick=1}] ~ ~-1 ~
execute if entity @s[tag=!ceiling] run tp @p[tag=pk_player_hung_current,scores={PKHookTpTick=1}] ~ ~ ~
scoreboard players set @p[tag=pk_player_hung_current,scores={PKHookTpTick=2..}] PKHookTpTick 0
scoreboard players add @p[tag=pk_player_hung_current] PKHookTpTick 1
# Add hanging effects
effect give @p[tag=pk_player_hung_current] levitation 1 255 true
effect give @p[tag=pk_player_hung_current] haste 1 2 true
# On sneak, free the hanging player
execute as @p[tag=pk_player_hung_current,predicate=pk_core:flags/is_sneaking] run function pk_esnl:items/magnet_hook/hung/land
# Check if the hanging point is surrounded by at least one solid block : otherweise, force the player to land
execute if predicate pk_esnl:magnet_hook/surrounded_by_excluded_blocks as @a[tag=pk_player_hung_current] run function pk_esnl:items/magnet_hook/hung/land
# Animation 
execute if entity @s[tag=ground] run particle soul_fire_flame ~ ~ ~ 0 0 0 0 1
execute if entity @s[tag=!ground] run particle soul_fire_flame ~ ~1 ~ 0 0 0 0 1
# Remove the current tag
tag @p[tag=pk_player_hung_current] remove pk_player_hung_current