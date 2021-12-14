# ----------------------------------------
# Events
# ----------------------------------------

# On conversion from zombie to villager
execute as @e[type=marker,tag=pk_on_cure_villager_data_holder] at @s run function pk_esnl:entities/villager/common/on_cure
# On player shot with bow
execute as @a[scores={PKOnShotWithBow=1..}] at @s run function pk_esnl:events/player/shot_with_bow
# On player use warped fungus stick
execute as @a[scores={PKOnUseCOAS=1..}] at @s run function pk_esnl:events/player/used_coas
# On player use warped fungus stick
execute as @a[scores={PKOnUseWFOAS=1..}] at @s run function pk_esnl:events/player/used_wfoas
# On player death
execute as @a[scores={PKOnDeath=1..}] at @s run function pk_esnl:events/player/on_death/trigger

# ----------------------------------------
# Entities
# ----------------------------------------

# All
team join PKHiddenName @e[type=#pk_esnl:mobs,tag=pk_hidden_name]
# Villagers
execute as @e[type=villager,tag=pk_villager] at @s run function pk_esnl:entities/villager/common/tick
# Zombie villagers
execute as @e[type=zombie_villager] at @s run function pk_esnl:entities/zombie_villager/common/tick
# Higuru Skeletons
execute as @e[type=#skeletons,tag=pk_higuru_skeleton] at @s run function pk_esnl:entities/higuru_skeleton/behavior/common/tick_dispatcher
# Steam strays polar bear
execute as @e[type=polar_bear,tag=pk_steam_strays_mount,tag=!pk_has_target] at @s if entity @p[distance=..10] run function pk_esnl:entities/steam_stray/behavior/polar_bear/aggro
# Arrows
execute as @e[type=arrow,tag=!pk_checked_idendity] run function pk_esnl:entities/arrow/check
# Items
execute as @e[type=item,tag=!pk_checked_idendity] run function pk_esnl:entities/item/check

# ----------------------------------------
# Items
# ----------------------------------------

# Magnet hook
function pk_esnl:items/magnet_hook/tick
# Phenix pepper on a stick
execute as @a[tag=pk_player_using_ppoas] run function pk_esnl:items/phenix_pepper_on_a_stick/check_player
# Rain dissipater
execute as @e[type=arrow,tag=pk_armed_rain_dissipater] at @s run function pk_esnl:items/rain_dissipater/tick
# Memorial excerpt
execute as @e[type=item,tag=pk_memorial_excerpt] at @s run function pk_esnl:items/memorial_excerpt/tick

# ----------------------------------------
# Bewitchements
# ----------------------------------------

# Impetuousity
execute as @a[tag=pk_under_impetuousity_bewitchment] at @s run function pk_esnl:mechanics/bewitchment/impetuousity/tick
# Safeguard Instinct
execute as @a[predicate=pk_esnl:bewitchment/safeguard_instinct/wearing] at @s run function pk_esnl:mechanics/bewitchment/safeguard_instinct/tick
# Wild Cushinoning
function pk_esnl:mechanics/bewitchment/wild_cushioning/tick