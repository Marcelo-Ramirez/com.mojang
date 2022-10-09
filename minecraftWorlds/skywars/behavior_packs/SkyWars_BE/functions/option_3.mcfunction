scoreboard objectives add option_3 dummy
scoreboard players add @e[type=armor_stand,name=system] option_3 0
scoreboard players set @e[type=armor_stand,name=system,scores={option_3=3}] option_3 0
scoreboard players add @e[type=armor_stand,name=system,scores={option_3=0..2}] option_3 1

execute @e[type=armor_stand,name=system,scores={option_3=1}] ~ ~ ~ /playsound random.pop @a -13 32 2 3 1
execute @e[type=armor_stand,name=system,scores={option_3=1}] ~ ~ ~ /gamerule dodaylightcycle false
execute @e[type=armor_stand,name=system,scores={option_3=1}] ~ ~ ~ /time set noon
execute @e[type=armor_stand,name=system,scores={option_3=1}] ~ ~ ~ /structure load sign_3 -13 32 3
execute @e[type=armor_stand,name=system,scores={option_3=1}] ~ ~ ~ /particle minecraft:crop_growth_emitter -13.1 32.5 3

execute @e[type=armor_stand,name=system,scores={option_3=2}] ~ ~ ~ /playsound random.pop @a -13 32 2 3 1
execute @e[type=armor_stand,name=system,scores={option_3=2}] ~ ~ ~ /gamerule dodaylightcycle false
execute @e[type=armor_stand,name=system,scores={option_3=2}] ~ ~ ~ /time set midnight
execute @e[type=armor_stand,name=system,scores={option_3=2}] ~ ~ ~ /structure load sign_4 -13 32 3
execute @e[type=armor_stand,name=system,scores={option_3=2}] ~ ~ ~ /particle minecraft:crop_growth_emitter -13.1 32.5 3

execute @e[type=armor_stand,name=system,scores={option_3=3}] ~ ~ ~ /playsound random.pop @a -13 32 2 3 1
execute @e[type=armor_stand,name=system,scores={option_3=3}] ~ ~ ~ /gamerule dodaylightcycle true
execute @e[type=armor_stand,name=system,scores={option_3=3}] ~ ~ ~ /time set sunrise
execute @e[type=armor_stand,name=system,scores={option_3=3}] ~ ~ ~ /structure load sign_19 -13 32 3
execute @e[type=armor_stand,name=system,scores={option_3=3}] ~ ~ ~ /particle minecraft:crop_growth_emitter -13.1 32.5 3