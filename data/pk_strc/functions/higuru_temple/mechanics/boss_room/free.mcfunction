# Remove bossbar
bossbar remove higuru_temple_guardian

# Open all remaining doors
execute positioned ~-28 ~ ~-28 as @e[type=marker,tag=pk_higuru_temple_marker,tag=pk_inner_door,dx=55,dy=128,dz=55] at @s run function pk_strc:higuru_temple/mechanics/inner_door/open
execute positioned ~-28 ~ ~-28 as @e[type=marker,tag=pk_higuru_temple_marker,tag=pk_inner_horizontal_door,dx=55,dy=128,dz=55] at @s run function pk_strc:higuru_temple/mechanics/inner_door/open_horizontal
execute positioned ~-28 ~ ~-28 as @e[type=marker,tag=pk_higuru_temple_marker,tag=pk_small_after_boss_door,dx=55,dy=128,dz=55] at @s run function pk_strc:higuru_temple/mechanics/inner_door/open_small_after_boss

# Remove the remaining markers (except ancient altar and urns)
execute positioned ~-28 ~ ~-28 run function pk_strc:higuru_temple/mechanics/boss_room/clear_markers

kill @e[type=marker,tag=pk_higuru_temple_marker,tag=pk_strc_core,limit=1,sort=nearest]