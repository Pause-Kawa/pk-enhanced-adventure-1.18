# Remove the new default offer
data remove entity @s Offers.Recipes[-1]

# Add the custom offer
data modify entity @s Offers.Recipes append value {maxUses:3,buy:{id:"minecraft:warped_fungus_on_a_stick",Count:1b},buyB:{id:"minecraft:lodestone",Count:1b},sell:{id:"minecraft:warped_fungus_on_a_stick",Count:1b,tag:{display:{Name:'{"text":"Magnet Hook","color":"yellow","italic":false}',Lore:['[{"text":"Charge: ","color":"white","italic":false},{"text":"5"},{"text":" / "},{"text":"5"}]']},pkMagnetHook:1b,pkCharge:5,pkChargeMax:5,Enchantments:[{}]}},xp:30,priceMultiplier:0.2f}

# Change current tag level
tag @s add pk_reached_level_cap