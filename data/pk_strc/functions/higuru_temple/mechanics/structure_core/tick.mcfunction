# Turns player in gamemode adventure by giving them Luck IV effect and maintain the effect since in the Higuru Temple
execute as @a[gamemode=survival,predicate=!pk_core:effects/luck_iv,dx=55,dy=500,dz=55] at @s run function pk_strc:higuru_temple/mechanics/structure_core/player_enter_in_temple_animation
effect give @a[dx=55,dy=500,dz=55] luck 10 3 true

# Prevent excluded entities to spawn in temple
execute at @s positioned ~-28 ~ ~-28 run tp @e[type=#pk_strc:higuru_temple_excluded,tag=!pk_higuru_skeleton,dx=55,dy=64,dz=55] ~ -1000 ~