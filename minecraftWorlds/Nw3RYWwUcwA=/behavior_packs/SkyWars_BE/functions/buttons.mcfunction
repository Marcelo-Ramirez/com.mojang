scoreboard objectives add buttons1 dummy
scoreboard objectives add buttons2 dummy
scoreboard objectives add buttons3 dummy
scoreboard objectives add buttons4 dummy
scoreboard objectives add buttons5 dummy

scoreboard players add @e[type=armor_stand,name=system] buttons1 0
scoreboard players add @e[type=armor_stand,name=system] buttons2 0
scoreboard players add @e[type=armor_stand,name=system] buttons3 0
scoreboard players add @e[type=armor_stand,name=system] buttons4 0
scoreboard players add @e[type=armor_stand,name=system] buttons5 0

execute @e[type=armor_stand,name=system,scores={buttons1=1}] ~ ~ ~ detect 0 26 0 wool 0 /function option_3
execute @e[type=armor_stand,name=system,scores={buttons1=1}] ~ ~ ~ detect 0 26 0 wool 0 /scoreboard players set @s buttons1 2
execute @e[type=armor_stand,name=system,scores={buttons2=1}] ~ ~ ~ detect 0 26 0 wool 0 /function option_2
execute @e[type=armor_stand,name=system,scores={buttons2=1}] ~ ~ ~ detect 0 26 0 wool 0 /scoreboard players set @s buttons2 2
execute @e[type=armor_stand,name=system,scores={buttons3=1}] ~ ~ ~ detect 0 26 0 wool 0 /function option_1
execute @e[type=armor_stand,name=system,scores={buttons3=1}] ~ ~ ~ detect 0 26 0 wool 0 /scoreboard players set @s buttons3 2
execute @e[type=armor_stand,name=system,scores={buttons4=1}] ~ ~ ~ detect 0 26 0 wool 0 /function option_4
execute @e[type=armor_stand,name=system,scores={buttons4=1}] ~ ~ ~ detect 0 26 0 wool 0 /scoreboard players set @s buttons4 2
execute @e[type=armor_stand,name=system,scores={buttons5=1}] ~ ~ ~ detect 0 24 0 dirt 0 /function bonus
execute @e[type=armor_stand,name=system,scores={buttons5=1}] ~ ~ ~ detect 0 24 0 dirt 0 /scoreboard players set @s buttons5 2

execute @e[type=armor_stand,name=system,scores={buttons1=1}] ~ ~ ~ detect 0 26 0 wool 14 /execute @a[x=-13,y=32,z=2,r=10] ~ ~ ~ /playsound mob.agent.spawn @s ~ ~ ~ 3 0.4
execute @e[type=armor_stand,name=system,scores={buttons1=1}] ~ ~ ~ detect 0 26 0 wool 14 /scoreboard players set @s buttons1 2
execute @e[type=armor_stand,name=system,scores={buttons2=1}] ~ ~ ~ detect 0 26 0 wool 14 /execute @a[x=-13,y=32,z=-3,r=10] ~ ~ ~ /playsound mob.agent.spawn @s ~ ~ ~ 3 0.4
execute @e[type=armor_stand,name=system,scores={buttons2=1}] ~ ~ ~ detect 0 26 0 wool 14 /scoreboard players set @s buttons2 2
execute @e[type=armor_stand,name=system,scores={buttons3=1}] ~ ~ ~ detect 0 26 0 wool 14 /execute @a[x=-12,y=32,z=-7,r=10] ~ ~ ~ /playsound mob.agent.spawn @s ~ ~ ~ 3 0.4
execute @e[type=armor_stand,name=system,scores={buttons3=1}] ~ ~ ~ detect 0 26 0 wool 14 /scoreboard players set @s buttons3 2
execute @e[type=armor_stand,name=system,scores={buttons4=1}] ~ ~ ~ detect 0 26 0 wool 14 /execute @a[x=-12,y=32,z=6,r=10] ~ ~ ~ /playsound mob.agent.spawn @s ~ ~ ~ 3 0.4
execute @e[type=armor_stand,name=system,scores={buttons4=1}] ~ ~ ~ detect 0 26 0 wool 14 /scoreboard players set @s buttons4 2

execute @e[type=armor_stand,name=system,scores={buttons1=0}] ~ ~ ~ detect 0 26 0 wool 0 /execute @s ~ ~ ~ detect -13 32 2 spruce_button 13 /scoreboard players set @s buttons1 1
execute @e[type=armor_stand,name=system,scores={buttons1=2}] ~ ~ ~ detect 0 26 0 wool 0 /execute @s ~ ~ ~ detect -13 32 2 spruce_button 5 /scoreboard players set @s buttons1 0
execute @e[type=armor_stand,name=system,scores={buttons2=0}] ~ ~ ~ detect 0 26 0 wool 0 /execute @s ~ ~ ~ detect -13 32 -3 spruce_button 13 /scoreboard players set @s buttons2 1
execute @e[type=armor_stand,name=system,scores={buttons2=2}] ~ ~ ~ detect 0 26 0 wool 0 /execute @s ~ ~ ~ detect -13 32 -3 spruce_button 5 /scoreboard players set @s buttons2 0
execute @e[type=armor_stand,name=system,scores={buttons3=0}] ~ ~ ~ detect 0 26 0 wool 0 /execute @s ~ ~ ~ detect -12 32 -7 spruce_button 13 /scoreboard players set @s buttons3 1
execute @e[type=armor_stand,name=system,scores={buttons3=2}] ~ ~ ~ detect 0 26 0 wool 0 /execute @s ~ ~ ~ detect -12 32 -7 spruce_button 5 /scoreboard players set @s buttons3 0
execute @e[type=armor_stand,name=system,scores={buttons4=0}] ~ ~ ~ detect 0 26 0 wool 0 /execute @s ~ ~ ~ detect -12 32 6 spruce_button 13 /scoreboard players set @s buttons4 1
execute @e[type=armor_stand,name=system,scores={buttons4=2}] ~ ~ ~ detect 0 26 0 wool 0 /execute @s ~ ~ ~ detect -12 32 6 spruce_button 5 /scoreboard players set @s buttons4 0
execute @e[type=armor_stand,name=system,scores={buttons5=0}] ~ ~ ~ detect 0 24 0 dirt 0 /execute @s ~ ~ ~ detect 41 41 17 stone_button 9 /scoreboard players set @s buttons5 1
execute @e[type=armor_stand,name=system,scores={buttons5=2}] ~ ~ ~ detect 0 24 0 dirt 0 /execute @s ~ ~ ~ detect 41 41 17 stone_button 1 /scoreboard players set @s buttons5 0

execute @e[type=armor_stand,name=system,scores={buttons1=0}] ~ ~ ~ detect 0 26 0 wool 14 /execute @s ~ ~ ~ detect -13 32 2 spruce_button 13 /scoreboard players set @s buttons1 1
execute @e[type=armor_stand,name=system,scores={buttons1=2}] ~ ~ ~ detect 0 26 0 wool 14 /execute @s ~ ~ ~ detect -13 32 2 spruce_button 5 /scoreboard players set @s buttons1 0
execute @e[type=armor_stand,name=system,scores={buttons2=0}] ~ ~ ~ detect 0 26 0 wool 14 /execute @s ~ ~ ~ detect -13 32 -3 spruce_button 13 /scoreboard players set @s buttons2 1
execute @e[type=armor_stand,name=system,scores={buttons2=2}] ~ ~ ~ detect 0 26 0 wool 14 /execute @s ~ ~ ~ detect -13 32 -3 spruce_button 5 /scoreboard players set @s buttons2 0
execute @e[type=armor_stand,name=system,scores={buttons3=0}] ~ ~ ~ detect 0 26 0 wool 14 /execute @s ~ ~ ~ detect -12 32 -7 spruce_button 13 /scoreboard players set @s buttons3 1
execute @e[type=armor_stand,name=system,scores={buttons3=2}] ~ ~ ~ detect 0 26 0 wool 14 /execute @s ~ ~ ~ detect -12 32 -7 spruce_button 5 /scoreboard players set @s buttons3 0
execute @e[type=armor_stand,name=system,scores={buttons4=0}] ~ ~ ~ detect 0 26 0 wool 14 /execute @s ~ ~ ~ detect -12 32 6 spruce_button 13 /scoreboard players set @s buttons4 1
execute @e[type=armor_stand,name=system,scores={buttons4=2}] ~ ~ ~ detect 0 26 0 wool 14 /execute @s ~ ~ ~ detect -12 32 6 spruce_button 5 /scoreboard players set @s buttons4 0