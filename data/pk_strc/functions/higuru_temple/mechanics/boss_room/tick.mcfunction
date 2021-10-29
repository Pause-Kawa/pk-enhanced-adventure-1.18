# Update bossbar
execute store result bossbar higuru_temple_guardian value run scoreboard players get @e[type=wither_skeleton,tag=pk_higuru_skeleton_guardian,sort=nearest,limit=1] PKHealth
bossbar set higuru_temple_guardian players @a[distance=..50]

# Reset boss room if no player around anymore
execute positioned ~-12 ~-2 ~-12 unless entity @a[dx=24,dy=11,dz=24] run function pk_strc:higuru_temple/mechanics/boss_room/reset