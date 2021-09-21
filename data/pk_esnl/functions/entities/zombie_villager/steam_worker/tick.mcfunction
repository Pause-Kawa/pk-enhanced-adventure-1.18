# Free the frozen zombie villager when the top part ice is broken
execute if entity @s[tag=pk_frozen] unless block ~ ~1 ~ ice unless block ~ ~2 ~ ice run function pk_esnl:entities/zombie_villager/steam_worker/free_from_ice

# Avoid the default cure system
execute if entity @s[nbt={ConversionTime:1}] run function pk_esnl:entities/zombie_villager/steam_worker/just_before_cure