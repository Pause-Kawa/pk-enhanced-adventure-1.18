scoreboard players set @s PKOnUseWFOAS 0

# Magnet Hook
execute if entity @s[scores={PKHookUsingDelay=0},predicate=pk_esnl:magnet_hook/holding_offhand] anchored eyes positioned ^ ^ ^ run function pk_esnl:items/magnet_hook/launch/start_ray
execute if entity @s[scores={PKHookUsingDelay=0},predicate=pk_esnl:magnet_hook/holding_mainhand,predicate=!pk_esnl:magnet_hook/holding_offhand] anchored eyes positioned ^ ^ ^ run function pk_esnl:items/magnet_hook/launch/start_ray