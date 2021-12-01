scoreboard players set @s PKHookRayHit 1
# Track back more carefully to reach the block before the hit block (in case of lauching on corners)
execute positioned ^ ^ ^-0.02 run function pk_esnl:items/magnet_hook/launch/hit_block_reposition