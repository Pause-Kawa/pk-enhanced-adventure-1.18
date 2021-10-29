tag @s add pk_current_fight_engine

# Start Event (if the engine fight has BeforeStartEvents)
execute if entity @s[tag=!pk_start] unless score @s PKDelay matches 1.. run function pk_strc:common/mechanics/fight_engine/start 
# Resolve Event (if the engine fight has BeforeResolveEvents)
execute if entity @s[tag=pk_defeated] unless score @s PKDelay matches 1.. run function pk_strc:common/mechanics/fight_engine/resolve
# Defeated Event (checking if at least one relative entity spawned exist within a radius of 50 blocks)
execute if entity @s[tag=pk_start,tag=!pk_defeated] run function pk_strc:common/mechanics/fight_engine/check_for_relative_entities
# Reset Event (if fight not defeated and there's no alive player not in spectator mode anymore in a radius of 50 blocks)
execute if entity @s[tag=pk_resetable] unless entity @e[type=player,distance=..50,gamemode=!spectator] run function pk_strc:common/mechanics/fight_engine/reset

# No matter the case (before start or before resolve), reduce the delay score
scoreboard players remove @s[scores={PKDelay=1..}] PKDelay 1

tag @s remove pk_current_fight_engine