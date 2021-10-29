# Check if the targeted item can receive the bewitchement
scoreboard players reset %pk_temp_2 PKValue
data remove storage pk_temp AppliableTools
data modify storage pk_temp AppliableTools set value ["minecraft:leather_chestplate","minecraft:iron_chestplate","minecraft:chainmail_chestplate","minecraft:golden_chestplate","minecraft:diamond_chestplate","minecraft:netherite_chestplate","minecraft:elytra"]
# - The score count the number of elements in AppliableTools that are different to the item id:
execute store result score %pk_temp_2 PKValue run data modify storage pk_temp AppliableTools[] set from storage pk_temp Items[1].id
# Check if the tool is one of the appliable tools and doesn't have the bewitchement yet
# - If success: apply bewitchement
execute if score %pk_temp_2 PKValue matches 6 unless data storage pk_temp Items[1].tag.pkSafeguardInstinct run function pk_strc:higuru_temple/mechanics/ancient_altar/enchant_item/safeguard_instinct