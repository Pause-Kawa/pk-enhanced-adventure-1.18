# Init %pk_randomizer_max, default : 1000
scoreboard players set %pk_randomizer_max PKValue 1000
# Init randomizer
execute unless score %pk_randomizer_seed PKValue matches -2147483648.. run scoreboard players set %pk_randomizer_seed PKValue 731031
scoreboard players set %pk_randomizer_mult PKValue 1664525
scoreboard players set %pk_randomizer_incr PKValue 1013904223