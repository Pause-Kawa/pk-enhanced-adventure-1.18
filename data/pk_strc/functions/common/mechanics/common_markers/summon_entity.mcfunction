# Entity to summon dispatcher
# - Higuru Skeleton
execute if data storage pk_strc:current_data SpawnEntity[{Type:"higuru_skeleton_archer"}] run function pk_esnl:entities/higuru_skeleton/summon/archer
execute if data storage pk_strc:current_data SpawnEntity[{Type:"higuru_skeleton_axeman"}] run function pk_esnl:entities/higuru_skeleton/summon/axeman
execute if data storage pk_strc:current_data SpawnEntity[{Type:"higuru_skeleton_random"}] run function pk_esnl:entities/higuru_skeleton/summon/random
execute if data storage pk_strc:current_data SpawnEntity[{Type:"higuru_skeleton_guardian"}] run function pk_esnl:entities/higuru_skeleton/summon/guardian
# - Silverfish
execute if data storage pk_strc:current_data SpawnEntity[{Type:"silverfish"}] run summon silverfish ~ ~ ~ {Tags:["pk_mob"]}
# - Swamp mansory
execute if data storage pk_strc:current_data SpawnEntity[{Type:"witch"}] run summon witch ~ ~ ~ {Tags:["pk_mob"]}
execute if data storage pk_strc:current_data SpawnEntity[{Type:"evoker"}] run summon evoker ~ ~ ~ {Tags:["pk_mob"]}
execute if data storage pk_strc:current_data SpawnEntity[{Type:"vindicator"}] run summon vindicator ~ ~ ~ {Tags:["pk_mob"],HandItems:[{id:"minecraft:iron_axe",Count:1b},{}]}
# - Steam strays wellbore 
execute if data storage pk_strc:current_data SpawnEntity[{Type:"steam_stray_soldier_on_polar_bear"}] run function pk_esnl:entities/steam_stray/summon/polar_bear_mounter
execute if data storage pk_strc:current_data SpawnEntity[{Type:"steam_stray_soldier_axeman"}] run function pk_esnl:entities/steam_stray/summon/soldier_axeman
execute if data storage pk_strc:current_data SpawnEntity[{Type:"steam_stray_soldier_archer"}] run function pk_esnl:entities/steam_stray/summon/soldier_archer
execute if data storage pk_strc:current_data SpawnEntity[{Type:"steam_stray_soldier_random"}] run function pk_esnl:entities/steam_stray/summon/soldier_random
execute if data storage pk_strc:current_data SpawnEntity[{Type:"steam_stray_worker_shovel"}] run function pk_esnl:entities/steam_stray/summon/worker_shovel
execute if data storage pk_strc:current_data SpawnEntity[{Type:"steam_stray_worker_pickaxe"}] run function pk_esnl:entities/steam_stray/summon/worker_pickaxe
execute if data storage pk_strc:current_data SpawnEntity[{Type:"steam_stray_worker_random"}] run function pk_esnl:entities/steam_stray/summon/worker_random

# Link the entity to relative marker
# - Fight Engine
execute if entity @s[tag=pk_fight_engine] run tag @e[type=#pk_esnl:mobs,limit=1,sort=nearest] add pk_fight_engine_relative_entity
execute if entity @s[tag=pk_fight_engine] run scoreboard players operation @e[type=#pk_esnl:mobs,tag=pk_fight_engine_relative_entity,limit=1,sort=nearest] PKTrigger = @s PKTrigger
# - Spawner
execute if entity @s[tag=pk_spawner] run tag @e[type=#pk_esnl:mobs,limit=1,sort=nearest] add pk_spawner_relative_entity
execute if entity @s[tag=pk_spawner] run scoreboard players operation @e[type=#pk_esnl:mobs,tag=pk_spawner_relative_entity,limit=1,sort=nearest] PKSpawner = @s PKSpawner

# Apply ActiveEffects
execute if data storage pk_strc:current_data SpawnEntity[0].ActiveEffects run data modify entity @e[type=#pk_esnl:mobs,limit=1,sort=nearest] ActiveEffects set from storage pk_strc:current_data SpawnEntity[0].ActiveEffects

# Spawn animations on entity
execute if data entity @s data.SpawnAnimations[{Particles:"soul_fire_flame"}] run particle soul_fire_flame ~ ~ ~ 0.5 1 0.5 0.01 6
execute if data entity @s data.SpawnAnimations[{Particles:"enchant"}] run particle enchant ~ ~ ~ 0.5 1 0.5 0.01 6
execute if data entity @s data.SpawnAnimations[{Particles:"poof"}] run particle poof ~ ~ ~ 0.5 1 0.5 0.01 2