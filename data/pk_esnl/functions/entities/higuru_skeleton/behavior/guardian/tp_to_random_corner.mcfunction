scoreboard players set @s PKTpDelay 280
particle enchant ~ ~ ~ 0.75 2 0.75 0.001 50
particle poof ~ ~ ~ 1 2 1 0.001 10
particle soul_fire_flame ~ ~ ~ 1 3 1 0.1 10
playsound minecraft:entity.zombie_villager.converted ambient @a ~ ~ ~ 1 1.8 
tp @s @e[type=marker,tag=pk_higuru_temple_marker,tag=pk_boss_room_corner,distance=..50,limit=1,sort=random]
execute at @s run particle enchant ~ ~ ~ 0.75 2 0.75 0.001 50
execute at @s run particle soul_fire_flame ~ ~ ~ 1 3 1 0.1 10