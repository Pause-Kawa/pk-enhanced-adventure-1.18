execute store result score %pk_temp_damage PKValue run data get entity @s Inventory[{Slot:-106b}].tag.Damage
scoreboard players add %pk_temp_damage PKValue 1

# Check current damage depending on the item to know if it should be broken
scoreboard players set %pk_temp_item_break PKValue 0
execute if score %pk_temp_damage PKValue matches 25 if entity @s[predicate=pk_core:hold/offhand/carrot_on_a_stick] run scoreboard players set %pk_temp_item_break PKValue 1
execute if score %pk_temp_damage PKValue matches 32 if entity @s[predicate=pk_core:hold/offhand/golden_tool] run scoreboard players set %pk_temp_item_break PKValue 1
execute if score %pk_temp_damage PKValue matches 59 if entity @s[predicate=pk_core:hold/offhand/wooden_tool] run scoreboard players set %pk_temp_item_break PKValue 1
execute if score %pk_temp_damage PKValue matches 100 if entity @s[predicate=pk_core:hold/offhand/warped_fungus_on_a_stick] run scoreboard players set %pk_temp_item_break PKValue 1
execute if score %pk_temp_damage PKValue matches 250 if entity @s[predicate=pk_core:hold/offhand/iron_tool] run scoreboard players set %pk_temp_item_break PKValue 1
execute if score %pk_temp_damage PKValue matches 1561 if entity @s[predicate=pk_core:hold/offhand/diamond_tool] run scoreboard players set %pk_temp_item_break PKValue 1
execute if score %pk_temp_damage PKValue matches 2031 if entity @s[predicate=pk_core:hold/offhand/netherite_tool] run scoreboard players set %pk_temp_item_break PKValue 1
execute if score %pk_temp_item_break PKValue matches 1 run function pk_core:tools/damage_item/break/offhand

# Otherwise, just damage the item
execute if score %pk_temp_item_break PKValue matches 0 store result storage pk_core:temp Damage short 1 run scoreboard players get %pk_temp_damage PKValue
execute if score %pk_temp_item_break PKValue matches 0 run item modify entity @s weapon.offhand pk_core:change_damage