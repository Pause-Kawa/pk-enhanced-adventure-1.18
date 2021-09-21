# triggered directly in pk_strc:higuru_temple/dispatchers/markers

# Open relative doors
tag @s add pk_statue_lever_current
execute positioned ~-50 -64 ~-50 as @e[type=marker,tag=pk_higuru_temple_marker,tag=pk_inner_door,dx=100,dy=512,dz=100] if score @s PKTrigger = @e[type=marker,tag=pk_statue_lever_current,limit=1] PKTrigger at @s run function pk_strc:higuru_temple/mechanics/inner_door/open
tag @s remove pk_statue_lever_current
# Light up the fire and close the mouth
setblock ~ ~ ~ soul_fire
execute if block ~-1 ~ ~ air run setblock ~-1 ~ ~ polished_andesite_slab[type=bottom]
execute if block ~ ~ ~-1 air run setblock ~ ~ ~-1 polished_andesite_slab[type=bottom]
execute if block ~1 ~ ~ air run setblock ~1 ~ ~ polished_andesite_slab[type=bottom]
execute if block ~ ~ ~1 air run setblock ~ ~ ~1 polished_andesite_slab[type=bottom]
# Animations
playsound minecraft:block.iron_door.open ambient @a ~ ~ ~ 1 0.8
playsound minecraft:entity.blaze.shoot ambient @a ~ ~ ~ 1 0.8
particle soul_fire_flame ~ ~ ~ 1 1 1 0.001 20
particle campfire_cosy_smoke ~ ~ ~ 0.5 0.5 0.5 0.001 4
# Remove the lever marker
kill @s