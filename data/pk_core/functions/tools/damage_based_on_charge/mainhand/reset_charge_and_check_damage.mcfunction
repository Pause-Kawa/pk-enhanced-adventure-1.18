# Reset charge to the max
scoreboard players operation %pk_temp PKCharge = %pk_temp PKChargeMax
# Refresh charge value and lore
function pk_core:tools/damage_based_on_charge/common/refresh_charge_value_and_lore
item modify entity @s weapon.mainhand pk_core:change_charge
# Damage item depending on unbreaking level
function pk_core:tools/damage_item/with_unbreaking/mainhand