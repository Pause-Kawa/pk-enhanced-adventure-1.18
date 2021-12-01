# If the previous block before hit has been reached : Check if the hit location is a valid point
execute if block ~ ~ ~ #pk_esnl:magnet_hook_traversable align xyz positioned ~0.5 ~ ~0.5 run function pk_esnl:items/magnet_hook/launch/check_block
# If still in the hit block : continue to track back
execute unless block ~ ~ ~ #pk_esnl:magnet_hook_traversable positioned ^ ^ ^-0.02 run function pk_esnl:items/magnet_hook/launch/hit_block_reposition