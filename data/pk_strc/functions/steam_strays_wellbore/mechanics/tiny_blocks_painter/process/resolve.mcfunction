# Prepare the output stack
data modify entity @e[type=item,tag=pk_tbp_output_stack,limit=1,sort=nearest] Item.tag.SkullOwner.Properties.textures[0].Value set from block ~ ~ ~ Items[{id:"minecraft:writable_book"}].tag.pages[0]
data modify entity @e[type=item,tag=pk_tbp_output_stack,limit=1,sort=nearest] PickupDelay set value 20
data modify entity @e[type=item,tag=pk_tbp_output_stack,limit=1,sort=nearest] NoGravity set value 0b
data modify entity @e[type=item,tag=pk_tbp_output_stack,limit=1,sort=nearest] Item.Count set from entity @s data.Item.Count
tag @e[type=item,tag=pk_tbp_output_stack,limit=1,sort=nearest] remove pk_tbp_output_stack
tp @e[type=slime,tag=pk_tbp_items_lock,limit=1,sort=nearest] ~ -1000 ~

# Release marker
tag @s remove pk_is_painting

# Animation
execute positioned ~ ~-2 ~ run function pk_strc:steam_strays_wellbore/mechanics/tiny_blocks_painter/animation/resolve