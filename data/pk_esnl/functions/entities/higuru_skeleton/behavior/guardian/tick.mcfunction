# Data score
execute store result score @s PKHealth run data get entity @s Health
execute store result score @s PKHurtTime run data get entity @s HurtTime

# Sounds
# - Randomizer
function pk_core:randomizer/next1
# - Hurting sound
execute if entity @s[scores={PKHurtTime=10}] run function pk_esnl:entities/higuru_skeleton/sounds/hurt_guardian
# - Ambient sound
execute unless entity @s[scores={AmSoundDelay=0}] run scoreboard players remove @s AmSoundDelay 1
execute if score %pk_RNG_1 PKValue matches ..10 unless entity @s[scores={AmSoundDelay=1..}] if entity @s[scores={PKHurtTime=0}] run function pk_esnl:entities/higuru_skeleton/sounds/ambient

# Teleportation 
scoreboard players remove @s[scores={PKTpDelay=1..}] PKTpDelay 1
execute if score %pk_RNG_1 PKValue matches 11..40 unless entity @s[scores={PKTpDelay=1..}] run function pk_esnl:entities/higuru_skeleton/behavior/guardian/tp_to_random_corner

# Switch weapon 
# - Using score to check for a switch weapon delay (prevent glitches in case of a multiplayer latencies)
scoreboard players remove @s[scores={PKSwitchWeapTime=1..}] PKSwitchWeapTime 1
execute if entity @s[tag=!pk_handle_bow,scores={PKSwitchWeapTime=0}] if entity @p[distance=5..] run function pk_esnl:entities/higuru_skeleton/behavior/guardian/switch_weapon_to_bow
execute if entity @s[tag=pk_handle_bow,scores={PKSwitchWeapTime=0}] if entity @p[distance=..5] run function pk_esnl:entities/higuru_skeleton/behavior/guardian/switch_weapon_to_axe

# Boss phases
scoreboard players remove @s[scores={PKPhaseDelay=1..}] PKPhaseDelay 1
execute if entity @s[tag=pk_is_changing_phase] run function pk_esnl:entities/higuru_skeleton/behavior/guardian/phase/changing
execute if entity @s[tag=!pk_phase_1_start] if score @s PKHealth <= @s PHealthKPhase1 if score @s PKHealth > @s PHealthKPhase2 run function pk_esnl:entities/higuru_skeleton/behavior/guardian/phase/start_1
execute if entity @s[tag=!pk_phase_1_done,tag=pk_phase_1_start,scores={PKPhaseDelay=0}] run function pk_esnl:entities/higuru_skeleton/behavior/guardian/phase/trigger_1
execute if entity @s[tag=!pk_phase_2_start] if score @s PKHealth <= @s PHealthKPhase2 if score @s PKHealth > @s PHealthKPhase3 run function pk_esnl:entities/higuru_skeleton/behavior/guardian/phase/start_2
execute if entity @s[tag=!pk_phase_2_done,tag=pk_phase_2_start,scores={PKPhaseDelay=0}] run function pk_esnl:entities/higuru_skeleton/behavior/guardian/phase/trigger_2
execute if entity @s[tag=!pk_phase_3_start] if score @s PKHealth <= @s PHealthKPhase3 run function pk_esnl:entities/higuru_skeleton/behavior/guardian/phase/start_3
execute if entity @s[tag=!pk_phase_3_done,tag=pk_phase_3_start,scores={PKPhaseDelay=0}] run function pk_esnl:entities/higuru_skeleton/behavior/guardian/phase/trigger_3