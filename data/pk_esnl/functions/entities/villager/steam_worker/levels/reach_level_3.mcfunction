# Remove both new default offers
data remove entity @s Offers.Recipes[-1]
data remove entity @s Offers.Recipes[-1]

# Add custom offers
data modify entity @s Offers.Recipes append value {maxUses:32,buy:{id:"minecraft:glass",Count:1b},buyB:{id:"minecraft:emerald",Count:2b},sell:{id:"minecraft:tinted_glass",Count:1b},xp:10,priceMultiplier:0.05f}
data modify entity @s Offers.Recipes append value {maxUses:32,buy:{id:"minecraft:arrow",Count:4b},buyB:{id:"minecraft:emerald",Count:1b},sell:{id:"minecraft:tipped_arrow",Count:4b,tag:{display:{Name:'{"text":"Rain Dissipater","italic":false}'},HideFlags:33,pkRainDissipater:1b,Enchantments:[{}],CustomPotionEffects:[{Id:29b,Amplifier:4b,Duration:1}],CustomPotionColor:56831}},xp:10,priceMultiplier:0.02f}

# Set current level to the relative level score
scoreboard players set @s PKLevel 3