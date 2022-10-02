scoreboard objectives add option_1 dummy
scoreboard players add @e[type=armor_stand,name=system] option_1 0
scoreboard players set @e[type=armor_stand,name=system,scores={option_1=2}] option_1 0
scoreboard players add @e[type=armor_stand,name=system,scores={option_1=0..1}] option_1 1

execute @e[type=armor_stand,name=system,scores={option_1=1}] ~ ~ ~ /playsound note.pling @a -12 32 -7 3 2
execute @e[type=armor_stand,name=system,scores={option_1=1}] ~ ~ ~ /scoreboard players set @e[type=armor_stand,name=system] mode 1
execute @e[type=armor_stand,name=system,scores={option_1=1}] ~ ~ ~ /structure load sign_7 -12 32 -6
execute @e[type=armor_stand,name=system,scores={option_1=1}] ~ ~ ~ /structure load mode_normal -26 24 974
execute @e[type=armor_stand,name=system,scores={option_1=1}] ~ ~ ~ /particle minecraft:crop_growth_emitter -12.1 32.5 -6

execute @e[type=armor_stand,name=system,scores={option_1=2}] ~ ~ ~ /playsound random.orb @a -12 32 -7 1 1.3
execute @e[type=armor_stand,name=system,scores={option_1=2}] ~ ~ ~ /scoreboard players set @e[type=armor_stand,name=system] mode 2
execute @e[type=armor_stand,name=system,scores={option_1=2}] ~ ~ ~ /structure load sign_8 -12 32 -6
execute @e[type=armor_stand,name=system,scores={option_1=2}] ~ ~ ~ /structure load mode_red_vs_blue -26 24 974
execute @e[type=armor_stand,name=system,scores={option_1=2}] ~ ~ ~ /particle minecraft:crop_growth_emitter -12.1 32.5 -6