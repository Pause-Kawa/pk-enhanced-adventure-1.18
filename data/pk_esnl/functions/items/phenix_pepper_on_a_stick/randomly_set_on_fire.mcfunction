function pk_core:randomizer/next1
execute if score %pk_RNG_1 PKValue matches ..68 run data modify entity @s Fire set value 100s
execute if score %pk_RNG_1 PKValue matches ..68 if entity @s[type=minecraft:snow_golem] at @s run function pk_esnl:items/phenix_pepper_on_a_stick/melt_snow_golem