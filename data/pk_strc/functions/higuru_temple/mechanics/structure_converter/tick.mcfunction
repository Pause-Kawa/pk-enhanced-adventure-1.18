execute if entity @s[scores={PKDelay=0},tag=pk_prepared] run function pk_strc:higuru_temple/mechanics/structure_converter/trigger
scoreboard players remove @s[tag=pk_prepared] PKDelay 1
scoreboard players set @s[tag=!pk_prepared] PKDelay 20
tag @s add pk_prepared