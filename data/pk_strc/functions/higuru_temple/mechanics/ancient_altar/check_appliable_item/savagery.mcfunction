# Check if the targeted item can receive the bewitchement
scoreboard players reset %pk_temp_2 PKValue
data remove storage pk_temp AppliableTools
data modify storage pk_temp AppliableTools set value ["minecraft:wooden_pickaxe","minecraft:stone_pickaxe","minecraft:iron_pickaxe","minecraft:golden_pickaxe","minecraft:diamond_pickaxe","minecraft:netherite_pickaxe"]
# - The score count the number of elements in AppliableTools that are different to the item id:
execute store result score %pk_temp_2 PKValue run data modify storage pk_temp AppliableTools[] set from storage pk_temp Items[1].id
# Check if the tool is one of the appliable tools and doesn't have the bewitchement yet
# - Particularity : Not compatible with Silk Touch enchantment
# - If success: apply bewitchement
execute if score %pk_temp_2 PKValue matches 5 unless data storage pk_temp Items[1].tag.pkSavagery unless data storage pk_temp Items[1].tag.Enchantments[{id:"minecraft:silk_touch"}].lvl run function pk_strc:higuru_temple/mechanics/ancient_altar/enchant_item/savagery