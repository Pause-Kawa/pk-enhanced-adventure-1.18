tag @s add pk_fall_trap_tripwire_current
execute as @e[type=marker,tag=pk_higuru_temple_marker,tag=pk_fall_trap,distance=..50] if score @s PKTrigger = @e[type=marker,tag=pk_fall_trap_tripwire_current,limit=1] PKTrigger at @s run function pk_strc:higuru_temple/mechanics/fall_trap/open
kill @s