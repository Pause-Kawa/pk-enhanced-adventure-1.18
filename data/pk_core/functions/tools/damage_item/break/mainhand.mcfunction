data modify storage pk_core:temp BreakItem set value []
data modify storage pk_core:temp BreakItem append from entity @s SelectedItem
execute at @s anchored eyes positioned ^ ^ ^0.5 run function pk_core:tools/damage_item/break/animation
item replace entity @s weapon.mainhand with air