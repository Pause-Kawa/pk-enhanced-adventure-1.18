# Reccursively store Reinforcing entities depending on the player
scoreboard players remove %pk_reinforcing_lenght PKValue 1
data modify storage pk_strc:current_fight_data Entities append from entity @s data.Reinforcing[]
execute if score %pk_reinforcing_lenght PKValue matches 1.. run function pk_strc:common/mechanics/fight/fight_engine_reccursive_reinforcing_in_storage