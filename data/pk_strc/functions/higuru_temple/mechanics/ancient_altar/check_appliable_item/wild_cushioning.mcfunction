# Check if the targeted item can receive the bewitchement
scoreboard players reset %pk_temp_2 PKValue
data remove storage pk_temp AppliableTools
data modify storage pk_temp AppliableTools set value ["minecraft:leather_boots","minecraft:iron_boots","minecraft:chainmail_boots","minecraft:golden_boots","minecraft:diamond_boots","minecraft:netherite_boots"]
# - The score count the number of elements in AppliableTools that are different to the item id:
execute store result score %pk_temp_2 PKValue run data modify storage pk_temp AppliableTools[] set from storage pk_temp Items[1].id
# Check if the tool is one of the appliable tools and doesn't have the bewitchement yet
# - If success: apply bewitchement
execute if score %pk_temp_2 PKValue matches 5 unless data storage pk_temp Items[1].tag.pkWildCushioning run function pk_strc:higuru_temple/mechanics/ancient_altar/enchant_item/wild_cushioning