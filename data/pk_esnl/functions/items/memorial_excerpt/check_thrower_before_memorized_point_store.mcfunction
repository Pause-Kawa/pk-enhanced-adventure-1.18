# Store two first thrower UUID terms (assuming it is safe enough)
execute store result score @s PKUUID0 run data get entity @s Thrower[0]
execute store result score @s PKUUID1 run data get entity @s Thrower[1]
# If the potential thrower is too far away (or disconnected), it won't run
tag @s add pk_current_memorial_excerpt
execute as @a[distance=..16] run function pk_esnl:items/memorial_excerpt/retrieve_thrower
tag @s remove pk_current_memorial_excerpt