tag @s add pk_rain_dissipater
# Marks the arrow has triggered rain dissipater if launched high enough and in overworld
execute store result score @s PKMotionY run data get entity @s Motion[1] 1000 
tag @s[predicate=pk_core:location/dimension/in_overworld,scores={PKMotionY=2100..}] add pk_armed_rain_dissipater
scoreboard players set @s[tag=pk_armed_rain_dissipater] PKDelay 40