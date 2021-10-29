# If it is not the case yet, mark the item has enchanted (glint only)
execute unless data storage pk_temp Items[1].tag.Enchantments[] run data modify storage pk_temp Items[1].tag.Enchantments set value [{}]
# Apply the item bewitchment tag and lore
data modify storage pk_temp Items[1].tag.pkSavagery set value 1b
data modify storage pk_temp Items[1].tag.display.Lore prepend value '{"text":"Savagery","color":"yellow","italic":false}'

# Change attributes depending on the tool ID : Add +2 Attack Damage to the current pickaxe
# - All (Replace Attributes description by Lore)
data modify storage pk_temp Items[1].tag.HideFlags set value 2
data modify storage pk_temp Items[1].tag.display.Lore append value '{"text":""}'
data modify storage pk_temp Items[1].tag.display.Lore append value '{"text":"When in Main Hand:","color":"gray","italic":false}'
# - Wooden pickaxe
data modify storage pk_temp Items[{id:"minecraft:wooden_pickaxe"}].tag.AttributeModifiers set value [{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:3,Operation:0,UUID:[I;482838908,1038501934,-1209439836,968396770],Slot:"mainhand"},{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:-2.8,Operation:0,UUID:[I;1266132607,-1709946865,-2094456525,502510335],Slot:"mainhand"}]
data modify storage pk_temp Items[{id:"minecraft:wooden_pickaxe"}].tag.display.Lore append value '{"text":" 4 Attack Damage","color":"dark_green","italic":false}'
# - Stone pickaxe
data modify storage pk_temp Items[{id:"minecraft:stone_pickaxe"}].tag.AttributeModifiers set value [{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:4,Operation:0,UUID:[I;482838908,1038501934,-1209439836,968396770],Slot:"mainhand"},{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:-2.8,Operation:0,UUID:[I;1266132607,-1709946865,-2094456525,502510335],Slot:"mainhand"}]
data modify storage pk_temp Items[{id:"minecraft:stone_pickaxe"}].tag.display.Lore append value '{"text":" 5 Attack Damage","color":"dark_green","italic":false}'
# - Iron pickaxe
data modify storage pk_temp Items[{id:"minecraft:iron_pickaxe"}].tag.AttributeModifiers set value [{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:5,Operation:0,UUID:[I;482838908,1038501934,-1209439836,968396770],Slot:"mainhand"},{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:-2.8,Operation:0,UUID:[I;1266132607,-1709946865,-2094456525,502510335],Slot:"mainhand"}]
data modify storage pk_temp Items[{id:"minecraft:iron_pickaxe"}].tag.display.Lore append value '{"text":" 6 Attack Damage","color":"dark_green","italic":false}'
# - Golden pickaxe
data modify storage pk_temp Items[{id:"minecraft:golden_pickaxe"}].tag.AttributeModifiers set value [{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:3,Operation:0,UUID:[I;482838908,1038501934,-1209439836,968396770],Slot:"mainhand"},{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:-2.8,Operation:0,UUID:[I;1266132607,-1709946865,-2094456525,502510335],Slot:"mainhand"}]
data modify storage pk_temp Items[{id:"minecraft:golden_pickaxe"}].tag.display.Lore append value '{"text":" 4 Attack Damage","color":"dark_green","italic":false}'
# - Diamond pickaxe
data modify storage pk_temp Items[{id:"minecraft:diamond_pickaxe"}].tag.AttributeModifiers set value [{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:6,Operation:0,UUID:[I;482838908,1038501934,-1209439836,968396770],Slot:"mainhand"},{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:-2.8,Operation:0,UUID:[I;1266132607,-1709946865,-2094456525,502510335],Slot:"mainhand"}]
data modify storage pk_temp Items[{id:"minecraft:diamond_pickaxe"}].tag.display.Lore append value '{"text":" 7 Attack Damage","color":"dark_green","italic":false}'
# - Netherite pickaxe
data modify storage pk_temp Items[{id:"minecraft:netherite_pickaxe"}].tag.AttributeModifiers set value [{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:7,Operation:0,UUID:[I;482838908,1038501934,-1209439836,968396770],Slot:"mainhand"},{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:-2.8,Operation:0,UUID:[I;1266132607,-1709946865,-2094456525,502510335],Slot:"mainhand"}]
data modify storage pk_temp Items[{id:"minecraft:netherite_pickaxe"}].tag.display.Lore append value '{"text":" 8 Attack Damage","color":"dark_green","italic":false}'
# - All (Replace Attribute description by Lore)
data modify storage pk_temp Items[1].tag.display.Lore append value '{"text":" 1.2 Attack Speed","color":"dark_green","italic":false}'

# Increment the applied enchantments score
scoreboard players add %pk_ancient_altar_applied_enchants PKValue 1