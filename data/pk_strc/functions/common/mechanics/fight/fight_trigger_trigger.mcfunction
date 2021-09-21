# Start fight engine that have same PKTrigger score (need to be placed at 20 horizontal blocks max from the trigger)
# Distance limitation avoid the use of a structure ID system since two structure of the same type are not supposed to be so close to each other
# So the trigger can not start the engine fight of another structure of the same type having the same score
tag @s add pk_current_fight_trigger
# Storing amount of players being at or less than 50 blocks from the trigger to summon reinforcing
scoreboard players set %pk_reinforcing_count PKValue 0
execute store result score %pk_reinforcing_count PKValue if entity @a[distance=..50]
execute positioned ~-20 -64 ~-20 as @e[type=marker,tag=pk_fight_engine,dx=40,dy=512,dz=40,tag=!pk_fight_engine_start] if score @s PKTrigger = @e[type=marker,tag=pk_current_fight_trigger,limit=1] PKTrigger at @s run function pk_strc:common/mechanics/fight/fight_engine_start
kill @s