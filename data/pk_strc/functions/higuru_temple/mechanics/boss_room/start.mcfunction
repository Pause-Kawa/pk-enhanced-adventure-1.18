# Prepare guardian
execute as @e[type=wither_skeleton,tag=pk_higuru_skeleton_guardian,sort=nearest,limit=1] run function pk_strc:higuru_temple/mechanics/boss_room/prepare_guardian

# Create bossbar
bossbar add higuru_temple_guardian "Higuru Temple Guardian"
bossbar set higuru_temple_guardian visible true
bossbar set higuru_temple_guardian color purple
execute store result bossbar higuru_temple_guardian max run scoreboard players get %pk_boss_max_health PKValue