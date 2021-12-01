data modify storage pk_esnl:player_faithfulness_items Items set value []
data modify storage pk_esnl:player_faithfulness_items Items append from storage pk_esnl:player_inventory_first Items[{tag:{pkFaithfulness:1b}}]
data modify storage pk_esnl:player_faithfulness_items Items append from storage pk_esnl:player_inventory_second Items[{tag:{pkFaithfulness:1b}}]