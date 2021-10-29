# Entity to summon dispatcher
# - Higuru Skeleton
execute if data storage pk_strc:current_fight_data SpawnEntity[{Type:"higuru_skeleton_archer"}] run function pk_esnl:entities/higuru_skeleton/summon/archer
execute if data storage pk_strc:current_fight_data SpawnEntity[{Type:"higuru_skeleton_axeman"}] run function pk_esnl:entities/higuru_skeleton/summon/axeman
execute if data storage pk_strc:current_fight_data SpawnEntity[{Type:"higuru_skeleton_random"}] run function pk_esnl:entities/higuru_skeleton/summon/random
execute if data storage pk_strc:current_fight_data SpawnEntity[{Type:"higuru_skeleton_guardian"}] run function pk_esnl:entities/higuru_skeleton/summon/guardian
# - Silverfish
execute if data storage pk_strc:current_fight_data SpawnEntity[{Type:"silverfish"}] run summon silverfish ~ ~ ~

# Link the entity to Fight Engine marker
tag @e[type=#pk_esnl:mobs,limit=1,sort=nearest] add pk_fight_engine_relative_entity
scoreboard players operation @e[type=#pk_esnl:mobs,tag=pk_fight_engine_relative_entity,limit=1,sort=nearest] PKTrigger = @s PKTrigger

# Apply ActiveEffects
execute if data storage pk_strc:current_fight_data SpawnEntity[0].ActiveEffects run data modify entity @e[type=#pk_esnl:mobs,tag=pk_fight_engine_relative_entity,limit=1,sort=nearest] ActiveEffects set from storage pk_strc:current_fight_data SpawnEntity[0].ActiveEffects

# Spawn animations on entity
execute if data entity @s data.SpawnAnimations[{Particles:"soul_fire_flame"}] run particle soul_fire_flame ~ ~ ~ 0.5 1 0.5 0.01 6
execute if data entity @s data.SpawnAnimations[{Particles:"enchant"}] run particle enchant ~ ~ ~ 0.5 1 0.5 0.01 6