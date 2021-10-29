# Higuru Temple
# - Close statue mouth
execute if data entity @s data.EventsOnStart.Events[{Name:"higuru_temple_statue_mouth_close"}] as @e[type=marker,tag=pk_higuru_temple_marker,tag=pk_statue_mouth,distance=..50] if score @s PKTrigger = @e[type=marker,tag=pk_current_fight_engine,limit=1] PKTrigger at @s run function pk_strc:higuru_temple/mechanics/statue_mouth/close
# - Start fire in fire room
execute if data entity @s data.EventsOnStart.Events[{Name:"higuru_temple_start_fire"}] run function pk_strc:higuru_temple/mechanics/fire_room/start_fire
# - Start boss room fight
execute if data entity @s data.EventsOnStart.Events[{Name:"higuru_temple_boss_room"}] run function pk_strc:higuru_temple/mechanics/boss_room/start