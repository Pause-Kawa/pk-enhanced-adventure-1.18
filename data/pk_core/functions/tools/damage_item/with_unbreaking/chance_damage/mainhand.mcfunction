function pk_core:randomizer/next1
function pk_core:tools/damage_item/with_unbreaking/chance_damage/init
execute if score %pk_RNG_1 PKValue <= %pk_temp_damage_chance PKValue run function pk_core:tools/damage_item/mainhand

# Logs
# tellraw @a [{"score":{"name":"%pk_RNG_1","objective":"PKValue"}},{"text":" <= "},{"score":{"name":"%pk_temp_damage_chance","objective":"PKValue"}}]