tag @s add pk_current_spawner

# Reduce next wave delay
scoreboard players remove @s[scores={PKDelay=1..}] PKDelay 1

# Start Event
execute if entity @s[tag=!pk_start] if entity @e[type=player,distance=..50,gamemode=!spectator] run function pk_strc:common/mechanics/spawner/start 
# Check for next Wave Event
execute if entity @s[tag=pk_start,scores={PKDelay=0}] run function pk_strc:common/mechanics/spawner/check_for_next_wave
# Reset Event (if spawner not defeated and there's no alive player not in spectator mode anymore in a radius of 50 blocks)
execute if entity @s[tag=pk_start,tag=pk_resetable] unless entity @e[type=player,distance=..50,gamemode=!spectator] run function pk_strc:common/mechanics/spawner/reset

tag @s remove pk_current_spawner