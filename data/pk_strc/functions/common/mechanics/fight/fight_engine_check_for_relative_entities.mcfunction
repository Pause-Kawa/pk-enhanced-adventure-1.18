# Check if fight engine relative entities still exist (in a max radius of 50 blocks)
tag @s add pk_fight_engine_current
scoreboard players set @s PKCounter 0
execute as @e[type=#pk_esnl:mobs,distance=..50] if score @s PKTrigger = @e[type=marker,tag=pk_fight_engine_current,limit=1] PKTrigger run scoreboard players add @e[type=marker,tag=pk_fight_engine_current,limit=1] PKCounter 1 
tag @s[scores={PKCounter=0}] add pk_fight_engine_relative_entities_defeated
tag @s remove pk_fight_engine_current