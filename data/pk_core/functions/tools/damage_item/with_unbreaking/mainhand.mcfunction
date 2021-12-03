# Check if unbreaking enchantment
scoreboard players set %pk_temp_unbreaking_lvl PKValue 0
execute store result score %pk_temp_unbreaking_lvl PKValue run data get entity @s SelectedItem.tag.Enchantments[{id:"minecraft:unbreaking"}].lvl
execute if score %pk_temp_unbreaking_lvl PKValue matches 0 run function pk_core:tools/damage_item/mainhand
execute if score %pk_temp_unbreaking_lvl PKValue matches 1.. run function pk_core:tools/damage_item/with_unbreaking/chance_damage/mainhand