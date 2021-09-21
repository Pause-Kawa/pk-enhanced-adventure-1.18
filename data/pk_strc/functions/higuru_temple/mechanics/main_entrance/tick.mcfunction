execute unless entity @s[tag=prepare] if entity @p[distance=..7] run function pk_strc:higuru_temple/mechanics/main_entrance/prepare
execute if entity @s[tag=prepare,scores={PKValue=40..}] run function pk_strc:higuru_temple/mechanics/main_entrance/open
scoreboard players add @s[tag=prepare] PKValue 1