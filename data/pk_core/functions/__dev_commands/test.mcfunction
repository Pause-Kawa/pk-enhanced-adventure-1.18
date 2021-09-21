scoreboard objectives add timer dummy

scoreboard players remove @e[type=area_effect_cloud,tag=ore,scores={timer=1..}] timer 1
execute as @e[type=area_effect_cloud,tag=coal_ore] at @s unless block ~ ~ ~ coal_ore run scoreboard players set @s timer 600
execute as @e[type=area_effect_cloud,tag=gold_ore] at @s unless block ~ ~ ~ gold_ore run scoreboard players set @s timer 600
execute at @e[type=area_effect_cloud,tag=coal_ore,scores={timer=1}] run setblock ~ ~ ~ coal_ore
execute at @e[type=area_effect_cloud,tag=gold_ore,scores={timer=1}] run setblock ~ ~ ~ gold_ore

execute align xyz run summon minecraft:area_effect_cloud ~0.5 ~ ~0.5 {Tags:["ore","coal_ore"],Age:-2147483648,Duration:-1,WaitTime:-2147483648}