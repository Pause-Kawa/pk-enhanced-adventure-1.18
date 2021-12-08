function pk_core:randomizer/next1

execute if score %pk_RNG_1 PKValue matches ..331 run particle dripping_honey ~ ~ ~ 0 0 0 0.01 1
execute if score %pk_RNG_1 PKValue matches 332..664 run particle dripping_water ~ ~ ~ 0 0 0 0.01 1
execute if score %pk_RNG_1 PKValue matches 665.. run particle dripping_lava ~ ~ ~ 0 0 0 0.01 1