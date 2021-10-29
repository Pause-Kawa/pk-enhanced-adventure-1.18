# Check if fight engine relative entities still exist (in a max radius of 50 blocks)
scoreboard players set @s PKCounter 0
execute as @e[type=#pk_esnl:mobs,tag=pk_fight_engine_relative_entity,distance=..50] if score @s PKTrigger = @e[type=marker,tag=pk_current_fight_engine,limit=1] PKTrigger run scoreboard players add @e[type=marker,tag=pk_current_fight_engine,limit=1] PKCounter 1 
# Mark the fight engine has defeated if no relative entity is detected
tag @s[scores={PKCounter=0}] add pk_defeated

# Trigger before resolve events
execute if entity @s[tag=pk_defeated] run function pk_strc:common/mechanics/fight_engine/defeat