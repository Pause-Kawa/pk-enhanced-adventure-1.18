# Start fight engine that have same PKTrigger score (need to be placed at 20 horizontal blocks max from the trigger)
# Distance limitation avoid the use of a structure ID system since two structure of the same type are not supposed to be so close to each other
# So the trigger can not start the engine fight of another structure of the same type having the same score
tag @s add pk_current_fight_trigger
# Retrieve and prepare relative fight engine
execute positioned ~-20 -64 ~-20 as @e[type=marker,tag=pk_fight_engine,tag=!pk_prepared,dx=40,dy=512,dz=40] if score @s PKTrigger = @e[type=marker,tag=pk_current_fight_trigger,limit=1] PKTrigger at @s run function pk_strc:common/mechanics/fight_engine/prepare
# Retrieve and mark itself and other relative triggers has triggered
execute positioned ~-40 -64 ~-40 as @e[type=marker,tag=pk_fight_trigger,dx=80,dy=512,dz=80] if score @s PKTrigger = @e[type=marker,tag=pk_current_fight_trigger,limit=1] PKTrigger run tag @s add pk_triggered
tag @s remove pk_current_fight_trigger