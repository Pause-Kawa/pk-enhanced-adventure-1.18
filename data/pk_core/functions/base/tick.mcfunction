# See markers
execute at @e[type=marker] run particle soul_fire_flame ~ ~ ~ 0 0 0 0 1 force @a[tag=pk_dev]

#execute as @a[y_rotation=-135..-45] run title @s actionbar "East (0)"
#execute as @a[y_rotation=-45..45] run title @s actionbar "South (90)"
#execute as @a[y_rotation=45..135] run title @s actionbar "West (180)"
#execute as @a[y_rotation=135..225] run title @s actionbar "North (-90)"