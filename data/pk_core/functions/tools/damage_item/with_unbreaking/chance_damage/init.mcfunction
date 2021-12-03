# Chance to damage depending on unbreaking enchantment ((100 / level + 1)%)
scoreboard players add %pk_temp_unbreaking_lvl PKValue 1
scoreboard players operation %pk_temp_damage_chance PKValue = %pk_const_1000 PKValue
scoreboard players operation %pk_temp_damage_chance PKValue /= %pk_temp_unbreaking_lvl PKValue