tag @s remove pk_is_changing_phase
tag @s add pk_phase_3_done
data modify entity @s Invulnerable set value 0b
data modify entity @s NoAI set value 0b
attribute @s generic.movement_speed base set 0.31
attribute @s generic.attack_damage base set 7
particle soul_fire_flame ~ ~ ~ 5 5 5 0.1 100
effect give @a[distance=..15] blindness 4 0
playsound entity.wither.shoot ambient @a ~ ~ ~ 10 1