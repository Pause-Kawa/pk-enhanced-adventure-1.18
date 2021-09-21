# Remove the four doors
fill ~-3 ~ ~-1 ~-3 ~3 ~1 air destroy
fill ~3 ~ ~-1 ~3 ~3 ~1 air destroy
fill ~-1 ~ ~-3 ~1 ~3 ~-3 air destroy
fill ~-1 ~ ~3 ~1 ~3 ~3 air destroy
# Remove the dropped blocks, keeping the block particles animation / sound effect
execute positioned ~-3 ~ ~-3 run kill @e[type=item,nbt={Age:0s,Item:{id:"minecraft:polished_blackstone"}},dx=6,dz=6,dy=4]
execute positioned ~-3 ~ ~-3 run kill @e[type=item,nbt={Age:0s,Item:{id:"minecraft:chiseled_polished_blackstone"}},dx=6,dz=6,dy=4]
# Animation 
playsound entity.wither.ambient ambient @a ~ ~ ~ 10 0.9
playsound ambient.soul_sand_valley.mood ambient @a ~ ~ ~ 10 1
# Remove the marker
kill @s