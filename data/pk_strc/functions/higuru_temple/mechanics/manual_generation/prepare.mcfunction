# (Why the heck does he use structure block instead of jigsaw ?!) 
# I finally used this in order to avoid worldgen sequels with jigsaw (waterlogged stairs, replaced rocks...)
# For replaced rocks, I firstly fixed that using a processor that convert rocks into blocks that can't be altered by the seed, and ran fill commands that convert them back. But sadly for waterlogged blocks, there's no solution. Stairs and slabs have too many possible set of blockstates so we can't use the same solution as I do for minerals blocks.

# Remove water and other sequels blocks
fill ~ ~-1 ~ ~45 ~-14 ~45 stone replace
fill ~ ~-15 ~ ~45 ~-29 ~45 stone replace

# Remove eventual entities
tp @e[type=!player,type=!marker,dx=45,dy=-28,dz=45] ~ -1000 ~

# Naturally generated structure post-processors blocks conversion
function pk_strc:higuru_temple/mechanics/manual_generation/post_processor_blocks_conversion

tag @s add pk_terrain_is_prepared