# Remove both new default offers
data remove entity @s Offers.Recipes[-1]
data remove entity @s Offers.Recipes[-1]

# Add first custom offer
data modify entity @s Offers.Recipes append value {maxUses:12,buy:{id:"minecraft:emerald",Count:4b},sell:{id:"minecraft:observer",Count:1b},xp:15,priceMultiplier:0.05f}

# Randomly add second custom offer
function pk_core:randomizer/next1
execute if score %pk_RNG_1 PKValue matches ..500 run data modify entity @s Offers.Recipes append value {maxUses:12,buy:{id:"minecraft:emerald",Count:2b},sell:{id:"minecraft:dispenser",Count:1b},xp:15,priceMultiplier:0.05f}
execute if score %pk_RNG_1 PKValue matches 501.. run data modify entity @s Offers.Recipes append value {maxUses:12,buy:{id:"minecraft:emerald",Count:2b},sell:{id:"minecraft:piston",Count:1b},xp:15,priceMultiplier:0.05f}

# Set current level to the relative level score
scoreboard players set @s PKLevel 4