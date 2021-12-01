# Security : removing previous block (replace with air) to avoid container block conflict
# Then make the player loot the content
setblock -30000000 14 1602 minecraft:air 
setblock -30000000 14 1602 minecraft:yellow_shulker_box
data modify block -30000000 14 1602 Items set from storage pk_esnl:player_faithfulness_items Items
execute at @s run loot give @s mine -30000000 14 1602 minecraft:air{drop_contents:1b}