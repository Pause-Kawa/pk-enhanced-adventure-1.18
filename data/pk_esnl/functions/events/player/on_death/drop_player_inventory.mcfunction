# Security : removing previous block (replace with air) to avoid container block conflict
# Then make the player loot the content
# Drop first player's inventory saved container
setblock -30000000 14 1602 minecraft:air
setblock -30000000 14 1602 minecraft:yellow_shulker_box
data modify block -30000000 14 1602 Items set from storage pk_esnl:player_inventory_first Items
loot spawn ~ ~ ~ mine -30000000 14 1602 minecraft:air{drop_contents:1b}
# Drop second player's inventory saved container
setblock -30000000 14 1602 minecraft:air
setblock -30000000 14 1602 minecraft:yellow_shulker_box
data modify block -30000000 14 1602 Items set from storage pk_esnl:player_inventory_second Items
loot spawn ~ ~ ~ mine -30000000 14 1602 minecraft:air{drop_contents:1b}