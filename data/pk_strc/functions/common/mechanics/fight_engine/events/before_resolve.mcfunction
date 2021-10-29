# Initialize delay before start
execute store result score @s PKDelay run data get entity @s data.EventsBeforeResolve.Delay
scoreboard players set @s[scores={PKDelay=..-1}] PKDelay 0

# Dispatchers
# - Higuru Temple
execute if data entity @s data.EventsBeforeResolve.Events[{Name:"higuru_temple_boss_room"}] run function pk_strc:higuru_temple/mechanics/boss_room/before_resolve