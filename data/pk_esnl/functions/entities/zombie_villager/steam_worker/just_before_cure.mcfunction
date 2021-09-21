# Prevent the current entity to be lost
data modify entity @s Invulnerable set value 1b
# Store the zombie villager data
summon marker ~ ~ ~ {Tags:["pk_on_cure_villager_data_holder","pk_current"]}
data modify entity @e[type=marker,tag=pk_current,limit=1] data.Tags set from entity @s Tags
tag @e[type=marker,tag=pk_current] remove pk_current