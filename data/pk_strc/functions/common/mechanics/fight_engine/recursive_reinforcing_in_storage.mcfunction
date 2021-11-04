# Recursively store Reinforcing entities depending on the player
scoreboard players remove %pk_reinforcing_count PKValue 1
data modify storage pk_strc:current_data Entities append from entity @s data.Reinforcing[]
execute if score %pk_reinforcing_count PKValue matches 1.. run function pk_strc:common/mechanics/fight_engine/recursive_reinforcing_in_storage