# Temporary tag the user to retrive it 
tag @s add pk_player_setting_latch_point
tag @s add pk_player_pulled
# Give player a levitation effect during the pull
effect give @s levitation 1 255 true

# Summon marker
# - If block above (but not below)
execute if score %pk_temp_2 PKValue matches 1 run summon marker ~ ~ ~ {Tags:["pk_magnet_hook_latch_point","ceiling"]}
# - If block below (but not above)
execute if score %pk_temp_2 PKValue matches 2 run summon marker ~ ~ ~ {Tags:["pk_magnet_hook_latch_point","ground"]}
# - If no block above and below : side hit
execute if score %pk_temp_2 PKValue matches 3 run summon marker ~ ~ ~ {Tags:["pk_magnet_hook_latch_point","side"]}
# - Init marker
execute as @e[type=marker,tag=pk_magnet_hook_latch_point,tag=!init] run function pk_esnl:items/magnet_hook/latch/latch_point_init

# Remove user temp tag
tag @s remove pk_player_setting_latch_point