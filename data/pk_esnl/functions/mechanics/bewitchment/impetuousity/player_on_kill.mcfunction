advancement revoke @s only pk_esnl:bewitchment/on_kill_with_impetuousity
tag @s add pk_under_impetuousity_bewitchment
# Init player score if no value yet
scoreboard players add @s PKImpetuousTimer 0
scoreboard players add @s PKImpetuousLevel 0
# Update : increase level up to 3, and add 10 seconds bonus time, with a maximum of 30 seconds
scoreboard players add @s[scores={PKImpetuousLevel=..2}] PKImpetuousLevel 1
scoreboard players add @s[scores={PKImpetuousTimer=..400}] PKImpetuousTimer 200
scoreboard players set @s[scores={PKImpetuousTimer=401..}] PKImpetuousTimer 600