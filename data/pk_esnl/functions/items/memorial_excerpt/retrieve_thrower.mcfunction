# Store player's UUID if not stored yet
function pk_core:tools/check_uuid
# Tag the player if it is the thrower
execute if score @e[type=item,tag=pk_current_memorial_excerpt,limit=1] PKUUID0 = @s PKUUID0 if score @e[type=item,tag=pk_current_memorial_excerpt,limit=1] PKUUID1 = @s PKUUID1 run tag @s add pk_current_memorial_excerpt_thrower
execute if entity @s[tag=pk_current_memorial_excerpt_thrower] run function pk_esnl:items/memorial_excerpt/thrower_memorized_point_store