# Dispatchers
# - Higuru Temple
execute if data entity @s data.EventsOnReset.Events[{Name:"higuru_temple_boss_room"}] run function pk_strc:higuru_temple/mechanics/boss_room/reset
execute if data entity @s data.EventsOnReset.Events[{Name:"higuru_temple_extinguish_fire"}] run function pk_strc:higuru_temple/mechanics/fire_room/reset