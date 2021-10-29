function pk_esnl:entities/higuru_skeleton/behavior/guardian/tp_to_center
tag @s add pk_is_changing_phase
tag @s add pk_phase_1_start
scoreboard players add @s PKPhaseDelay 100
execute at @s run playsound minecraft:entity.wither.ambient ambient @a ~ ~ ~ 10 0.5
data modify entity @s Invulnerable set value 1b
data modify entity @s NoAI set value 1b