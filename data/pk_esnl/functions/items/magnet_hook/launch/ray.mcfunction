execute if entity @s[scores={PKRaycastDist=10..}] run particle soul_fire_flame ~ ~ ~ 0 0 0 0 1
execute unless block ~ ~ ~ #pk_esnl:magnet_hook_traversable run function pk_esnl:items/magnet_hook/launch/hit_block
scoreboard players add @s PKRaycastDist 1
execute if entity @s[scores={PKRaycastHit=0,PKRaycastDist=80}] run function pk_esnl:items/magnet_hook/launch/fail
execute if entity @s[scores={PKRaycastHit=0,PKRaycastDist=..79}] positioned ^ ^ ^0.2 run function pk_esnl:items/magnet_hook/launch/ray