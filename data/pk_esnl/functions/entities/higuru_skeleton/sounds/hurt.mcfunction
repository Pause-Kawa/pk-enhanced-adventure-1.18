playsound minecraft:entity.skeleton.hurt hostile @a ~ ~ ~ 1 0.7
function pk_core:randomizer/next1
execute if score %pk_RNG_1 PKValue matches ..500 run playsound minecraft:block.note_block.xylophone hostile @a ~ ~ ~ 1 0.7
execute if score %pk_RNG_1 PKValue matches 501.. run playsound minecraft:block.note_block.xylophone hostile @a ~ ~ ~ 1 0.8