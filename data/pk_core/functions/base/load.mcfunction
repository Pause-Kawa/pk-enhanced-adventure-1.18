# ----------------------------------------
# Scores
# ----------------------------------------
# Simple value score used for most operation
scoreboard objectives add PKValue dummy
# Const
scoreboard players set %pk_const_1000 PKValue 1000
scoreboard players set %pk_const_100 PKValue 100
scoreboard players set %pk_const_4 PKValue 4
scoreboard players set %pk_const_3 PKValue 3
scoreboard players set %pk_const_2 PKValue 2
# UUID
scoreboard objectives add PKUUID0 dummy
scoreboard objectives add PKUUID1 dummy
scoreboard objectives add PKUUID2 dummy
scoreboard objectives add PKUUID3 dummy
# Position
scoreboard objectives add PKPosX dummy
scoreboard objectives add PKPosY dummy
scoreboard objectives add PKPosZ dummy
# Motion
scoreboard objectives add PKMotionX dummy
scoreboard objectives add PKMotionY dummy
scoreboard objectives add PKMotionZ dummy
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
# Raycast
scoreboard objectives add PKRaycastHit dummy
scoreboard objectives add PKRaycastDist dummy
# Entities data
scoreboard objectives add PKPlayerHealth health
scoreboard objectives add PKHealth dummy
scoreboard objectives add PKMaxHealth dummy
scoreboard objectives add PKHurtTime dummy
# Player events
scoreboard objectives add PKOnDeath deathCount
scoreboard objectives add PKOnUseCOAS minecraft.used:carrot_on_a_stick
scoreboard objectives add PKOnUseWFOAS minecraft.used:warped_fungus_on_a_stick
scoreboard objectives add PKOnShotWithBow minecraft.used:bow
# Tools
scoreboard objectives add PKCharge dummy
scoreboard objectives add PKChargeMax dummy

# ----------------------------------------
# Teams
# ----------------------------------------
# Hide name for some entities
team add PKHiddenName
team modify PKHiddenName nametagVisibility never

# ----------------------------------------
# Randomizer
# ----------------------------------------
# Used in order to generate random numbers through %pk_RNG_<x>
function pk_core:randomizer/init

# ----------------------------------------
# Forceload
# ----------------------------------------

# Forceloaded chunk (following Phi datapack standards)
forceload add -30000000 1600

# ----------------------------------------
# Logs
# ----------------------------------------
# To see the log, please be sure that your player has the "pk_dev" tag
tellraw @a[tag=pk_dev] [{"text":"Loaded ","color":"yellow"},{"text":"PK Enhanced Adventure","color":"aqua","bold":true},{"text":" successfully","color":"yellow"}]