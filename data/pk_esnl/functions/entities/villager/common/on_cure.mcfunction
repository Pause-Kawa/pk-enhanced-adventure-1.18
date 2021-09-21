# Retrieve data from marker
data modify entity @e[type=villager,tag=!pk_villager_data_restored,sort=nearest,limit=1] Invulnerable set value 0b
data modify entity @e[type=villager,tag=!pk_villager_data_restored,sort=nearest,limit=1] Xp set value 1
data modify entity @e[type=villager,tag=!pk_villager_data_restored,sort=nearest,limit=1] Tags set from entity @s data.Tags
# Mark villager as init
tag @e[type=villager,tag=!pk_villager_data_restored,sort=nearest,limit=1] add pk_villager_data_restored
# Remove the villager data holder marker 
kill @s