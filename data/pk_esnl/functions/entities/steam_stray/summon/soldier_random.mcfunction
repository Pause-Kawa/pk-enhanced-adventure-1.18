function pk_core:randomizer/next1

execute if score %pk_RNG_1 PKValue matches ..500 run function pk_esnl:entities/steam_stray/summon/soldier_archer
execute if score %pk_RNG_1 PKValue matches 501.. run function pk_esnl:entities/steam_stray/summon/soldier_axeman