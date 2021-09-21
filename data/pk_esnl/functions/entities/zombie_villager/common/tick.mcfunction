# Steamer worker
execute if entity @s[tag=pk_villager,tag=pk_steam_worker] at @s run function pk_esnl:entities/zombie_villager/steam_worker/tick
# Init
execute if entity @s[tag=!pk_zombie_villager_certified] run function pk_esnl:entities/zombie_villager/common/init