execute store result score %pk_temp PKValue run data get entity @s SelectedItem.Count
scoreboard players remove %pk_temp PKValue 1
item modify entity @s weapon.mainhand pk_core:change_count