scoreboard objectives add option_2 dummy
scoreboard players add @e[type=armor_stand,name=system] option_2 0
scoreboard players set @e[type=armor_stand,name=system,scores={option_2=2}] option_2 0
scoreboard players add @e[type=armor_stand,name=system,scores={option_2=0..1}] option_2 1

execute @e[type=armor_stand,name=system,scores={option_2=1}] ~ ~ ~ /playsound note.pling @a -13 32 -3 3 3
execute @e[type=armor_stand,name=system,scores={option_2=1}] ~ ~ ~ /structure load sign_5 -13 32 -2
execute @e[type=armor_stand,name=system,scores={option_2=1}] ~ ~ ~ /particle minecraft:crop_growth_emitter -13.1 32.5 -2
execute @e[type=armor_stand,name=system,scores={option_2=1}] ~ ~ ~ /scoreboard players set @e[type=armor_stand,name=system] chest_loot 1
execute @e[type=armor_stand,name=system,scores={option_2=1}] ~ ~ ~ /structure load normal -3 242 -1003
execute @e[type=armor_stand,name=system,scores={option_2=1}] ~ ~ ~ /function random

execute @e[type=armor_stand,name=system,scores={option_2=2}] ~ ~ ~ /playsound note.iron_xylophone @a -13 32 -3 3 1.5
execute @e[type=armor_stand,name=system,scores={option_2=2}] ~ ~ ~ /structure load sign_6 -13 32 -2
execute @e[type=armor_stand,name=system,scores={option_2=2}] ~ ~ ~ /particle minecraft:crop_growth_emitter -13.1 32.5 -2
execute @e[type=armor_stand,name=system,scores={option_2=2}] ~ ~ ~ /scoreboard players set @e[type=armor_stand,name=system] chest_loot 2
execute @e[type=armor_stand,name=system,scores={option_2=2}] ~ ~ ~ /structure load extreme -3 242 -1003
execute @e[type=armor_stand,name=system,scores={option_2=2}] ~ ~ ~ /function random