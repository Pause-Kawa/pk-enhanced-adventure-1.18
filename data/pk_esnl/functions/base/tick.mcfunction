# ----------------------------------------
# Events
# ----------------------------------------

# On conversion from zombie to villager
execute as @e[type=marker,tag=pk_on_cure_villager_data_holder] at @s run function pk_esnl:entities/villager/common/on_cure
# Item dropped on some mobs death
execute as @e[type=item,nbt={Item:{tag:{deathEvent:1b}}}] at @s run function pk_esnl:events/events_death

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