tag @s remove pk_is_changing_phase
tag @s add pk_phase_2_done
data modify entity @s Invulnerable set value 0b
data modify entity @s NoAI set value 0b
execute positioned ~1.4 ~ ~1.4 run function pk_esnl:entities/higuru_skeleton/summon/archer
execute positioned ~1.4 ~ ~-1.4 run function pk_esnl:entities/higuru_skeleton/summon/axeman
execute positioned ~-1.4 ~ ~-1.4 run function pk_esnl:entities/higuru_skeleton/summon/archer
execute positioned ~-1.4 ~ ~1.4 run function pk_esnl:entities/higuru_skeleton/summon/axeman
playsound entity.evoker.cast_spell ambient @a ~ ~ ~ 10 1
playsound entity.wither.shoot ambient @a ~ ~ ~ 10 1