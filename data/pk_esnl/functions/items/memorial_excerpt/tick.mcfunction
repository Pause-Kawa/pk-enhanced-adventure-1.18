scoreboard players add @s PKTimer 1
# Check if the memorial excerpt has a thrower or is dropped by a container
execute if entity @s[scores={PKTimer=1}] if data entity @s Thrower run tag @s add pk_item_has_thrower
# Animation
execute if entity @s[tag=pk_item_has_thrower,scores={PKTimer=65}] run function pk_esnl:items/memorial_excerpt/start_animation
# Save teleportation point
execute if entity @s[tag=pk_item_has_thrower,scores={PKTimer=100}] run function pk_esnl:items/memorial_excerpt/check_thrower_before_memorized_point_store