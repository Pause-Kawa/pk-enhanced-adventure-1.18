# Save whole inventory
data modify storage pk_esnl:player_inventory_first Items set value []
data modify storage pk_esnl:player_inventory_first Items set from entity @s Inventory
# Save slot 27-35, armor and offhand
data modify storage pk_esnl:player_inventory_second Items set value []
data modify storage pk_esnl:player_inventory_second Items append from entity @s Inventory[{Slot:27b}]
data modify storage pk_esnl:player_inventory_second Items[{Slot:27b}].Slot set value 0b
data modify storage pk_esnl:player_inventory_second Items append from entity @s Inventory[{Slot:28b}]
data modify storage pk_esnl:player_inventory_second Items[{Slot:28b}].Slot set value 1b
data modify storage pk_esnl:player_inventory_second Items append from entity @s Inventory[{Slot:29b}]
data modify storage pk_esnl:player_inventory_second Items[{Slot:29b}].Slot set value 2b
data modify storage pk_esnl:player_inventory_second Items append from entity @s Inventory[{Slot:30b}]
data modify storage pk_esnl:player_inventory_second Items[{Slot:30b}].Slot set value 3b
data modify storage pk_esnl:player_inventory_second Items append from entity @s Inventory[{Slot:31b}]
data modify storage pk_esnl:player_inventory_second Items[{Slot:31b}].Slot set value 4b
data modify storage pk_esnl:player_inventory_second Items append from entity @s Inventory[{Slot:32b}]
data modify storage pk_esnl:player_inventory_second Items[{Slot:32b}].Slot set value 5b
data modify storage pk_esnl:player_inventory_second Items append from entity @s Inventory[{Slot:33b}]
data modify storage pk_esnl:player_inventory_second Items[{Slot:33b}].Slot set value 6b
data modify storage pk_esnl:player_inventory_second Items append from entity @s Inventory[{Slot:34b}]
data modify storage pk_esnl:player_inventory_second Items[{Slot:34b}].Slot set value 7b
data modify storage pk_esnl:player_inventory_second Items append from entity @s Inventory[{Slot:35b}]
data modify storage pk_esnl:player_inventory_second Items[{Slot:35b}].Slot set value 8b
data modify storage pk_esnl:player_inventory_second Items append from entity @s Inventory[{Slot:100b}]
data modify storage pk_esnl:player_inventory_second Items[{Slot:100b}].Slot set value 9b
data modify storage pk_esnl:player_inventory_second Items append from entity @s Inventory[{Slot:101b}]
data modify storage pk_esnl:player_inventory_second Items[{Slot:101b}].Slot set value 10b
data modify storage pk_esnl:player_inventory_second Items append from entity @s Inventory[{Slot:102b}]
data modify storage pk_esnl:player_inventory_second Items[{Slot:102b}].Slot set value 11b
data modify storage pk_esnl:player_inventory_second Items append from entity @s Inventory[{Slot:103b}]
data modify storage pk_esnl:player_inventory_second Items[{Slot:103b}].Slot set value 12b
data modify storage pk_esnl:player_inventory_second Items append from entity @s Inventory[{Slot:-106b}]
data modify storage pk_esnl:player_inventory_second Items[{Slot:-106b}].Slot set value 13b