# Randomizer
function pk_core:randomizer/next1

# Entity to summon dispatcher
# - Higuru Skeleton
execute if data storage pk_strc:current_fight_data SpawnEntity[{Type:"higuru_skeleton_archer"}] run function pk_esnl:entities/higuru_skeleton/summon_archer
execute if data storage pk_strc:current_fight_data SpawnEntity[{Type:"higuru_skeleton_axeman"}] run function pk_esnl:entities/higuru_skeleton/summon_axeman
execute if data storage pk_strc:current_fight_data SpawnEntity[{Type:"higuru_skeleton_random"}] if score %pk_RNG_1 PKValue matches ..500 run function pk_esnl:entities/higuru_skeleton/summon_archer
execute if data storage pk_strc:current_fight_data SpawnEntity[{Type:"higuru_skeleton_random"}] if score %pk_RNG_1 PKValue matches 501.. run function pk_esnl:entities/higuru_skeleton/summon_axeman
# - Silverfish
execute if data storage pk_strc:current_fight_data SpawnEntity[{Type:"silverfish"}] run summon silverfish ~ ~ ~

# Apply ActiveEffects
execute if data storage pk_strc:current_fight_data SpawnEntity[0].ActiveEffects run data modify entity @e[type=#pk_esnl:mobs,limit=1,sort=nearest] ActiveEffects set from storage pk_strc:current_fight_data SpawnEntity[0].ActiveEffects

# Link the entity to Fight Engine marker
scoreboard players operation @e[type=#pk_esnl:mobs,limit=1,sort=nearest] PKTrigger = @s PKTrigger

# Animations
execute if data entity @s data.SpawnAnimations[{Particles:"soul_fire_flame"}] run particle soul_fire_flame ~ ~ ~ 0.5 1 0.5 0.01 6
execute if data entity @s data.SpawnAnimations[{Particles:"enchant"}] run particle enchant ~ ~ ~ 0.5 1 0.5 0.01 6