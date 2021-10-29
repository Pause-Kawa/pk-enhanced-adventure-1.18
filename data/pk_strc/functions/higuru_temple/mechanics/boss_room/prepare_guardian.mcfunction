# Store players amount in guardian PKCounter score
execute store result score @s PKCounter if entity @a[distance=..50,gamemode=!spectator,gamemode=!creative]

# Set the guardin attack damage (cap 8)
execute store result score %pk_boss_attack_damage PKValue run data get entity @s Attributes[{Name:"minecraft:generic.attack_damage"}].Base
scoreboard players operation %pk_boss_attack_damage PKValue += @s PKCounter
scoreboard players remove %pk_boss_attack_damage PKValue 1
execute if score %pk_boss_attack_damage PKValue matches 9.. run scoreboard players set %pk_boss_attack_damage PKValue 8
execute store result entity @s Attributes[{Name:"minecraft:generic.attack_damage"}].Base int 1 run scoreboard players get %pk_boss_attack_damage PKValue

# Set the guardin health (cap 700)
execute store result score %pk_boss_max_health PKValue run data get entity @s Attributes[{Name:"minecraft:generic.max_health"}].Base
scoreboard players set %pk_temp PKValue 100
scoreboard players operation %pk_temp PKValue *= @s PKCounter
scoreboard players remove %pk_temp PKValue 100
scoreboard players operation %pk_boss_max_health PKValue += %pk_temp PKValue
execute if score %pk_boss_max_health PKValue matches 701.. run scoreboard players set %pk_boss_max_health PKValue 700
execute store result entity @s Health float 1 run scoreboard players get %pk_boss_max_health PKValue
execute store result entity @s Attributes[{Name:"minecraft:generic.max_health"}].Base int 1 run scoreboard players get %pk_boss_max_health PKValue

# Set player necessary health values scores to trigger the different phases
# - Phase 1
scoreboard players operation @s PHealthKPhase1 = %pk_boss_max_health PKValue
scoreboard players operation @s PHealthKPhase1 /= %pk_const_4 PKValue
scoreboard players operation @s PHealthKPhase1 *= %pk_const_3 PKValue
# - Phase 2
scoreboard players operation @s PHealthKPhase2 = %pk_boss_max_health PKValue
scoreboard players operation @s PHealthKPhase2 /= %pk_const_2 PKValue
# - Phase 3
scoreboard players operation @s PHealthKPhase3 = %pk_boss_max_health PKValue
scoreboard players operation @s PHealthKPhase3 /= %pk_const_4 PKValue

say prepared