# Remove the hung tag to release the player
tag @s remove pk_player_hung
# Kill the relative latch point
kill @e[type=marker,tag=pk_magnet_hook_latch_point,tag=reached,sort=nearest,limit=1]
# Clear hung effects
effect clear @s[predicate=pk_esnl:effects/levitation_1s_max] levitation
effect clear @s[predicate=pk_esnl:effects/haste_1s_max] haste
# Climb the block if a valid position
# - If the block directly above the player is not a solid block
# - If the player look at the block where he want to land
# - If the desired landing block is not a solid block, has no direct solid block above, and has a direct solid block below
execute at @s if entity @s[x_rotation=-90..45] anchored feet if block ~ ~2 ~ #pk_esnl:magnet_hook_traversable anchored eyes if block ~ ~0.5 ~ #pk_esnl:magnet_hook_traversable positioned ^ ^ ^1 positioned ~ ~0.5 ~ if block ~ ~ ~ #pk_esnl:magnet_hook_traversable if block ~ ~1 ~ #pk_esnl:magnet_hook_traversable unless block ~ ~-1 ~ #pk_esnl:magnet_hook_traversable run function pk_esnl:items/magnet_hook/hung/climb
# Animation
playsound minecraft:item.armor.equip_chain ambient @a ~ ~ ~ 1 1.15