# Temporary store charge data
execute store result score %pk_temp PKCharge run data get entity @s Inventory[{Slot:-106b}].tag.pkCharge
execute store result score %pk_temp PKChargeMax run data get entity @s Inventory[{Slot:-106b}].tag.pkChargeMax
# Reduce charge  
scoreboard players remove %pk_temp PKCharge 1
# Trigger event depending on current charge
execute if score %pk_temp PKCharge matches 1.. run function pk_core:tools/damage_based_on_charge/offhand/reduce_charge
execute if score %pk_temp PKCharge matches ..0 run function pk_core:tools/damage_based_on_charge/offhand/reset_charge_and_check_damage