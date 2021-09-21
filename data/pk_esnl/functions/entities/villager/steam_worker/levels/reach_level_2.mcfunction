# Remove both new default offers
data remove entity @s Offers.Recipes[-1]
data remove entity @s Offers.Recipes[-1]

# Add first custom offer
data modify entity @s Offers.Recipes append value {maxUses:12,buy:{id:"minecraft:copper_ingot",Count:4b},sell:{id:"minecraft:emerald",Count:1b},xp:10,priceMultiplier:0.05f}

# Randomly add second custom offer
function pk_core:randomizer/next1
execute if score %pk_RNG_1 PKValue matches ..500 run data modify entity @s Offers.Recipes append value {maxUses:16,buy:{id:"minecraft:emerald",Count:2b},sell:{id:"minecraft:repeater",Count:1b},xp:5,priceMultiplier:0.05f}
execute if score %pk_RNG_1 PKValue matches 501.. run data modify entity @s Offers.Recipes append value {maxUses:16,buy:{id:"minecraft:emerald",Count:2b},sell:{id:"minecraft:comparator",Count:1b},xp:5,priceMultiplier:0.05f}

# Set current level to the relative level score
scoreboard players set @s PKLevel 2