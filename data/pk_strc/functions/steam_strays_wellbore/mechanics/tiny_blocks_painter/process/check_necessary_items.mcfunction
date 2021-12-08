# Mark user and marker
execute positioned ~ ~-2 ~ as @p[advancements={pk_strc:triggers/press_button=true}] run tag @s add pk_use_tiny_blocks_painter
tag @s add pk_triggered

# Store a single slot of necessary items in storage
data modify storage pk_strc:temp TBPItems set value {}
data modify storage pk_strc:temp TBPItems.WritableBook set from block ~ ~ ~ Items[{id:"minecraft:writable_book"}]
data modify storage pk_strc:temp TBPItems.RedDye set from block ~ ~ ~ Items[{id:"minecraft:red_dye"}]
data modify storage pk_strc:temp TBPItems.BlueDye set from block ~ ~ ~ Items[{id:"minecraft:blue_dye"}]
data modify storage pk_strc:temp TBPItems.YellowDye set from block ~ ~ ~ Items[{id:"minecraft:yellow_dye"}]
data modify storage pk_strc:temp TBPItems.QuartzBlock set from block ~ ~ ~ Items[{id:"minecraft:quartz_block"}]

# Check if all items are available
scoreboard players set %pk_check_passed PKValue 0
execute store success score %pk_current_check PKValue run data get storage pk_strc:temp TBPItems.WritableBook 
scoreboard players operation %pk_check_passed PKValue += %pk_current_check PKValue
execute store success score %pk_current_check PKValue run data get storage pk_strc:temp TBPItems.RedDye
scoreboard players operation %pk_check_passed PKValue += %pk_current_check PKValue
execute store success score %pk_current_check PKValue run data get storage pk_strc:temp TBPItems.BlueDye 
scoreboard players operation %pk_check_passed PKValue += %pk_current_check PKValue
execute store success score %pk_current_check PKValue run data get storage pk_strc:temp TBPItems.YellowDye 
scoreboard players operation %pk_check_passed PKValue += %pk_current_check PKValue
execute store success score %pk_current_check PKValue run data get storage pk_strc:temp TBPItems.QuartzBlock 
scoreboard players operation %pk_check_passed PKValue += %pk_current_check PKValue

# Continue if all items are available else warn the player
execute if score %pk_check_passed PKValue matches 5 run function pk_strc:steam_strays_wellbore/mechanics/tiny_blocks_painter/process/start
execute unless score %pk_check_passed PKValue matches 5 run function pk_strc:steam_strays_wellbore/mechanics/tiny_blocks_painter/fail/missing_item

tag @a[tag=pk_use_tiny_blocks_painter] remove pk_use_tiny_blocks_painter