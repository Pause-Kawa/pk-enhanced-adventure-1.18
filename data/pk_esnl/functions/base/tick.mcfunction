# ----------------------------------------
# Events
# ----------------------------------------

# On conversion from zombie to villager
execute as @e[type=marker,tag=pk_on_cure_villager_data_holder] at @s run function pk_esnl:entities/villager/common/on_cure

# ----------------------------------------
# Entities
# ----------------------------------------

# All
team join HiddenName @e[type=#pk_esnl:mobs,tag=pk_hidden_name]
# Villagers
execute as @e[type=villager,tag=pk_villager] at @s run function pk_esnl:entities/villager/common/tick
# Zombie villagers
execute as @e[type=zombie_villager] run function pk_esnl:entities/zombie_villager/common/tick
