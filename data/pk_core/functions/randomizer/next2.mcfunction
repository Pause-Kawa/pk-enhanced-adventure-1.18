# Return a random value between 0 and %pk_randomizer_max value
scoreboard players operation %pk_randomizer_seed PKValue *= %pk_randomizer_mult PKValue
scoreboard players operation %pk_randomizer_seed PKValue += %pk_randomizer_incr PKValue
scoreboard players operation %pk_RNG_2 PKValue = %pk_randomizer_seed PKValue
scoreboard players operation %pk_RNG_2 PKValue /= %pk_const_100 PKValue
scoreboard players operation %pk_RNG_2 PKValue %= %pk_randomizer_max PKValue