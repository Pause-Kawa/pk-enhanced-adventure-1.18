# Check if the zombie villager comes from a custom villager from the datapack
# Since zombie villagers don't keep tags on conversion, we rely here on their specific offers to retrieve them
# - Check for Steam Worker
execute if entity @s[nbt={Offers:{Recipes:[{buy:{id:"minecraft:redstone",Count:36b}}]}},nbt={Offers:{Recipes:[{buy:{id:"minecraft:amethyst_shard",Count:4b}}]}}] run function pk_esnl:entities/zombie_villager/steam_worker/init

# Mark all zombie villagers as checked
tag @e[type=zombie_villager] add pk_zombie_villager_certified