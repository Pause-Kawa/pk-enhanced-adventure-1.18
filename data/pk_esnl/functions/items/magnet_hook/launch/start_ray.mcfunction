# Increment the current hook ID value and assign it to the current user
# - This is used so the player store an ID on its own score that will enable it to retrieve its relative AEC hanging point.
# - It prevents conflict between two or more players that would use the magnet hook at the same time (since the process stretch on several ticks).
scoreboard players add #PK_current_hook_ID value 1
scoreboard players operation @s PKHookUsingID = #PK_current_hook_ID value
# Reset player hook states 
execute if entity @s[tag=pk_player_hung] run function pk_esnl:items/magnet_hook/hung/land
scoreboard players set @s PKHookUsingDelay 40
# Animation
playsound minecraft:entity.egg.throw ambient @a ~ ~ ~ 1 1.35
# Reduce durability on use
execute if entity @s[predicate=pk_esnl:magnet_hook/holding_mainhand] run function pk_core:tools/damage_based_on_charge/mainhand/trigger
execute if entity @s[predicate=!pk_esnl:magnet_hook/holding_mainhand,predicate=pk_esnl:magnet_hook/holding_offhand] run function pk_core:tools/damage_based_on_charge/offhand/trigger
# Start ray
scoreboard players set @s PKRaycastHit 0
scoreboard players set @s PKRaycastDist 0
function pk_esnl:items/magnet_hook/launch/ray