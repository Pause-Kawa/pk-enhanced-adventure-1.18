# Remove both new default offers
data remove entity @s Offers.Recipes[-1]
data remove entity @s Offers.Recipes[-1]

# Add custom offers
data modify entity @s Offers.Recipes append value {maxUses:32,buy:{id:"minecraft:glass",Count:1b},buyB:{id:"minecraft:emerald",Count:2b},sell:{id:"minecraft:tinted_glass",Count:1b},xp:10,priceMultiplier:0.05f}
data modify entity @s Offers.Recipes append value {maxUses:3,buy:{id:"minecraft:emerald",Count:24b},sell:{id:"minecraft:leather_boots",Count:1b,tag:{display:{Name:'{"text":"Spring Boots","italic":false}',color:10897315},pkSpringBoots:1b}},xp:10,priceMultiplier:0.2f}

# Set current level to the relative level score
scoreboard players set @s PKLevel 3