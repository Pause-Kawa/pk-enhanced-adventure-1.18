# When relative entities has been defeat : resolve within the dispatcher

tag @s add pk_fight_engine_current

# Higuru Temple
# - Open statue mouth
execute if data entity @s data.ResolveTriggers[{Type:"higuru_temple_statue_mouth_open"}] as @e[type=marker,tag=pk_higuru_temple_marker,tag=pk_statue_mouth,distance=..50] if score @s PKTrigger = @e[type=marker,tag=pk_fight_engine_current,limit=1] PKTrigger at @s run function pk_strc:higuru_temple/mechanics/statue_mouth/open
# - Extinguish fire in fire room
execute if data entity @s data.StartTriggers[{Type:"higuru_temple_start_fire"}] run function pk_strc:higuru_temple/mechanics/fire_room/extinguish_fire

# Remove the fight engine
kill @s