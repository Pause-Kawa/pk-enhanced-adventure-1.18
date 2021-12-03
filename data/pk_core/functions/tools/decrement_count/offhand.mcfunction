execute store result score %pk_temp PKValue run data get entity @s Inventory[{Slot:-106b}].Count
scoreboard players remove %pk_temp PKValue 1
item modify entity @s weapon.offhand pk_core:change_count