scoreboard players set %pk_temp_2 PKValue 0

# If block above (but not below)
execute unless block ~ ~1 ~ #pk_esnl:magnet_hook_traversable if block ~ ~-1 ~ #pk_esnl:magnet_hook_traversable run scoreboard players set %pk_temp_2 PKValue 1
# If block below (but not above)
execute unless block ~ ~-1 ~ #pk_esnl:magnet_hook_traversable if block ~ ~1 ~ #pk_esnl:magnet_hook_traversable run scoreboard players set %pk_temp_2 PKValue 2
# If no block above and below : side hit
execute if block ~ ~1 ~ #pk_esnl:magnet_hook_traversable if block ~ ~-1 ~ #pk_esnl:magnet_hook_traversable run scoreboard players set %pk_temp_2 PKValue 3

# If block below and above (too narrow) : fail
execute if score %pk_temp_2 PKValue matches 0 run function pk_esnl:items/magnet_hook/launch/fail
# Else : summoning latch point
execute if score %pk_temp_2 PKValue matches 1..3 run function pk_esnl:items/magnet_hook/latch/latch_point_set