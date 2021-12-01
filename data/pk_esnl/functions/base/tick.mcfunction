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
team join HiddenName @e[type=#pk_esnl:mobs,tag=pk_hidden_name]
# Villagers
execute as @e[type=villager,tag=pk_villager] at @s run function pk_esnl:entities/villager/common/tick
# Zombie villagers
execute as @e[type=zombie_villager] at @s run function pk_esnl:entities/zombie_villager/common/tick
# Higuru Skeletons
execute as @e[type=#skeletons,tag=pk_higuru_skeleton] at @s run function pk_esnl:entities/higuru_skeleton/behavior/common/tick_dispatcher
# Arrows
execute as @e[type=arrow,tag=!pk_checked_idendity] run function pk_esnl:entities/arrow/check
# Items
execute as @e[type=item,tag=!pk_checked_idendity] run function pk_esnl:entities/item/check

# ----------------------------------------
# Items
# ----------------------------------------

# Magnet Hook
function pk_esnl:items/magnet_hook/tick
# Rain dissipater
execute as @e[type=arrow,tag=pk_armed_rain_dissipater] at @s run function pk_esnl:items/rain_dissipater/tick

# ----------------------------------------
# Bewitchements
# ----------------------------------------

# Impetuousity
execute as @a[tag=pk_under_impetuousity_bewitchment] at @s run function pk_esnl:mechanics/bewitchment/impetuousity/tick
# Safeguard Instinct
execute as @a[predicate=pk_esnl:bewitchment/safeguard_instinct/wearing] at @s run function pk_esnl:mechanics/bewitchment/safeguard_instinct/tick
# Wild Cushinoning
function pk_esnl:mechanics/bewitchment/wild_cushioning/tick