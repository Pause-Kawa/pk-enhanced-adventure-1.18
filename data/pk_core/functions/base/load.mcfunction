# ----------------------------------------
# Scores
# ----------------------------------------
# Simple value score used for most operation
scoreboard objectives add PKValue dummy
# Const
scoreboard players set %pk_const_100 PKValue 100
scoreboard players set %pk_const_4 PKValue 4
scoreboard players set %pk_const_3 PKValue 3
scoreboard players set %pk_const_2 PKValue 2
# Timer
# - Simple timer and delay score use for most timer
scoreboard objectives add PKTimer dummy
scoreboard objectives add PKDelay dummy
# - Delay used for sounds ambient (minimal delay between two sounds)
scoreboard objectives add PKSoundDelay dummy
# Level
scoreboard objectives add PKLevel dummy
# Counter
scoreboard objectives add PKCounter dummy
# Entities data
scoreboard objectives add PKHealth dummy
scoreboard objectives add PKMaxHealth dummy
scoreboard objectives add PKHurtTime dummy

# ----------------------------------------
# Teams
# ----------------------------------------
# Hide name for some entities
team add PKHiddenName
team modify PKHiddenName nametagVisibility never

# ----------------------------------------
# Randomizer
# ----------------------------------------
# Used in order to generate random numbers through %pkT_RNG_<x>
function pk_core:randomizer/init

# ----------------------------------------
# Logs
# ----------------------------------------
# To see the log, please be sure that your player has the "dev" tag
tellraw @a[tag=pk_dev] [{"text":"Loaded ","color":"yellow"},{"text":"PK Enhanced Adventure - Core","color":"aqua","bold":true},{"text":" successfully","color":"yellow"}]