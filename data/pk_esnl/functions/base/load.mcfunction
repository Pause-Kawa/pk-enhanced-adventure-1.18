# ----------------------------------------
# Scores
# ----------------------------------------
# Entities Behavior
# - Score used for entities that have a weapon switching behavior
scoreboard objectives add PKSwitchWeapTime dummy
# - Score used for entities that can teleport
scoreboard objectives add PKTpDelay dummy
# - Score used for entities that have several phases
scoreboard objectives add PKPhaseDelay dummy
scoreboard objectives add PHealthKPhase1 dummy
scoreboard objectives add PHealthKPhase2 dummy
scoreboard objectives add PHealthKPhase3 dummy
# Used for phenix pepper on a stick
scoreboard objectives add PKPPOASRayHit dummy
scoreboard objectives add PKPPOASRayDist dummy
# Used for magnet hook
scoreboard objectives add PKHookRayHit dummy
scoreboard objectives add PKHookRayDist dummy
scoreboard objectives add PKHookUsingDelay dummy
scoreboard objectives add PKHookUsingID dummy
scoreboard objectives add PKHookTpTick dummy
# Used for memorial excerpt 
scoreboard objectives add PKMemorizedDim dummy
scoreboard objectives add PKMemorizedX dummy
scoreboard objectives add PKMemorizedY dummy
scoreboard objectives add PKMemorizedZ dummy
# Bewitchements
# - Impetuousity
scoreboard objectives add PKImpetuousLevel dummy
scoreboard objectives add PKImpetuousTimer dummy
# - Safeguard Instinct
scoreboard objectives add PKSGINDelay dummy
# Default values
# - Used for phenix pepper on a stick
execute unless score %pk_ppoas_spread_fire PKValue matches 0..1 run scoreboard players set %pk_ppoas_fire_spread PKValue 1

# ----------------------------------------
# Gamerule
# ----------------------------------------
# Custom onDeath event for Faithfulness bewitchment : 
# - gamerule keepInventory is turned to on by default. Players drop their inventory and experience orbs through a custom actions.
gamerule keepInventory true