# Animation
playsound minecraft:entity.ender_dragon.shoot ambient @a ~ ~ ~ 1 0.8
# Reduce durability on use
execute if entity @s[predicate=pk_esnl:phenix_pepper_on_a_stick/holding_mainhand] run function pk_core:tools/damage_based_on_charge/mainhand/trigger
execute if entity @s[predicate=!pk_esnl:phenix_pepper_on_a_stick/holding_mainhand,predicate=pk_esnl:phenix_pepper_on_a_stick/holding_offhand] run function pk_core:tools/damage_based_on_charge/offhand/trigger
# Slow user
scoreboard players set @s PKPPOASSlowDelay 5
attribute @s generic.movement_speed modifier add 1-1-16-11-3 "PPOAS Use" -0.04147 add
tag @s add pk_player_using_ppoas
# Start ray
scoreboard players set @s PKRaycastHit 0
scoreboard players set @s PKRaycastDist 0
function pk_esnl:items/phenix_pepper_on_a_stick/ray