function pk_esnl:items/phenix_pepper_on_a_stick/fire_animation
execute unless block ~ ~ ~ #pk_core:traversable run scoreboard players set @s PKPPOASRayHit 1
execute unless score %pk_ppoas_spread_fire PKValue matches 0 if block ~ ~ ~ #pk_core:inflammable run function pk_esnl:items/phenix_pepper_on_a_stick/randomly_replace_hit_block
execute as @e[type=#pk_core:mobs,type=!#pk_core:exclude_inflammable,dx=0] run function pk_esnl:items/phenix_pepper_on_a_stick/randomly_set_on_fire
scoreboard players add @s PKPPOASRayDist 1
execute if entity @s[scores={PKPPOASRayHit=0,PKPPOASRayDist=..29}] positioned ^ ^ ^0.2 run function pk_esnl:items/phenix_pepper_on_a_stick/ray