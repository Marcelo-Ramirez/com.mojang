scoreboard objectives add countdown dummy
scoreboard players add @e[type=armor_stand,name=system] countdown 0
scoreboard players add @e[type=armor_stand,name=system,scores={countdown=1..280}] countdown 1

execute @e[name=system,scores={countdown=2}] ~ ~ ~ /setblock 0 26 0 wool 14

execute @e[name=system,scores={countdown=10}] ~ ~ ~ /playsound note.hat @a
execute @e[name=system,scores={countdown=10}] ~ ~ ~ /title @a[x=-31,y=0,z=969,dx=62,dy=39,dz=62] title §710
execute @e[name=system,scores={countdown=10}] ~ ~ ~ /titleraw @a actionbar {"rawtext":[{"text":"§8 [ "},{"translate":"translate.text.four"},{"text":" §f10 §8]\n\n  §7█ █ █ █ █ █ █ █ █ █\n"}]}

execute @e[name=system,scores={countdown=35}] ~ ~ ~ /playsound note.hat @a
execute @e[name=system,scores={countdown=35}] ~ ~ ~ /title @a[x=-31,y=0,z=969,dx=62,dy=39,dz=62] title §79
execute @e[name=system,scores={countdown=35}] ~ ~ ~ /titleraw @a actionbar {"rawtext":[{"text":"§8 [ "},{"translate":"translate.text.four"},{"text":" §f9 §8]\n\n  §a█ §7█ █ █ █ █ █ █ █ █\n"}]}

execute @e[name=system,scores={countdown=60}] ~ ~ ~ /playsound note.hat @a
execute @e[name=system,scores={countdown=60}] ~ ~ ~ /title @a[x=-31,y=0,z=969,dx=62,dy=39,dz=62] title §78
execute @e[name=system,scores={countdown=60}] ~ ~ ~ /titleraw @a actionbar {"rawtext":[{"text":"§8 [ "},{"translate":"translate.text.four"},{"text":" §f8 §8]\n\n  §a█ █ §7█ █ █ █ █ █ █ █\n"}]}

execute @e[name=system,scores={countdown=85}] ~ ~ ~ /playsound note.hat @a
execute @e[name=system,scores={countdown=85}] ~ ~ ~ /title @a[x=-31,y=0,z=969,dx=62,dy=39,dz=62] title §77
execute @e[name=system,scores={countdown=85}] ~ ~ ~ /titleraw @a actionbar {"rawtext":[{"text":"§8 [ "},{"translate":"translate.text.four"},{"text":" §f7 §8]\n\n  §a█ █ █ §7█ █ █ █ █ █ █\n"}]}

execute @e[name=system,scores={countdown=110}] ~ ~ ~ /playsound note.hat @a
execute @e[name=system,scores={countdown=110}] ~ ~ ~ /title @a[x=-31,y=0,z=969,dx=62,dy=39,dz=62] title §76
execute @e[name=system,scores={countdown=110}] ~ ~ ~ /titleraw @a actionbar {"rawtext":[{"text":"§8 [ "},{"translate":"translate.text.four"},{"text":" §f6 §8]\n\n  §a█ █ █ █ §7█ █ █ █ █ █\n"}]}

execute @e[name=system,scores={countdown=135}] ~ ~ ~ /playsound note.hat @a
execute @e[name=system,scores={countdown=135}] ~ ~ ~ /title @a[x=-31,y=0,z=969,dx=62,dy=39,dz=62] title §75
execute @e[name=system,scores={countdown=135}] ~ ~ ~ /titleraw @a actionbar {"rawtext":[{"text":"§8 [ "},{"translate":"translate.text.four"},{"text":" §f5 §8]\n\n  §a█ █ █ █ █ §7█ █ █ █ █\n"}]}

execute @e[name=system,scores={countdown=160}] ~ ~ ~ /playsound note.hat @a
execute @e[name=system,scores={countdown=160}] ~ ~ ~ /title @a[x=-31,y=0,z=969,dx=62,dy=39,dz=62] title §74
execute @e[name=system,scores={countdown=160}] ~ ~ ~ /titleraw @a actionbar {"rawtext":[{"text":"§8 [ "},{"translate":"translate.text.four"},{"text":" §f4 §8]\n\n  §a█ █ █ █ █ █ §7█ █ █ █\n"}]}

execute @e[name=system,scores={countdown=185}] ~ ~ ~ /playsound note.hat @a
execute @e[name=system,scores={countdown=185}] ~ ~ ~ /title @a[x=-31,y=0,z=969,dx=62,dy=39,dz=62] title §73
execute @e[name=system,scores={countdown=185}] ~ ~ ~ /titleraw @a actionbar {"rawtext":[{"text":"§8 [ "},{"translate":"translate.text.four"},{"text":" §f3 §8]\n\n  §a█ █ █ █ █ █ █ §7█ █ █\n"}]}

execute @e[name=system,scores={countdown=210}] ~ ~ ~ /playsound note.hat @a
execute @e[name=system,scores={countdown=210}] ~ ~ ~ /title @a[x=-31,y=0,z=969,dx=62,dy=39,dz=62] title §72
execute @e[name=system,scores={countdown=210}] ~ ~ ~ /titleraw @a actionbar {"rawtext":[{"text":"§8 [ "},{"translate":"translate.text.four"},{"text":" §f2 §8]\n\n  §a█ █ █ █ █ █ █ █ §7█ █\n"}]}

execute @e[name=system,scores={countdown=235}] ~ ~ ~ /playsound note.hat @a
execute @e[name=system,scores={countdown=235}] ~ ~ ~ /title @a[x=-31,y=0,z=969,dx=62,dy=39,dz=62] title §71
execute @e[name=system,scores={countdown=235}] ~ ~ ~ /titleraw @a actionbar {"rawtext":[{"text":"§8 [ "},{"translate":"translate.text.four"},{"text":" §f1 §8]\n\n  §a█ █ █ █ █ █ █ █ █ §7█\n"}]}

execute @e[name=system,scores={countdown=260}] ~ ~ ~ detect 0 15 0 lit_redstone_lamp 0 /playsound random.orb @a
execute @e[name=system,scores={countdown=260}] ~ ~ ~ detect 0 15 0 lit_redstone_lamp 0 /titleraw @a[x=-31,y=0,z=969,dx=62,dy=39,dz=62] title {"rawtext":[{"translate":"translate.text.eight"}]}
execute @e[name=system,scores={countdown=260}] ~ ~ ~ detect 0 15 0 lit_redstone_lamp 0 /effect @a[x=-31,y=0,z=969,dx=62,dy=39,dz=62] resistance 7 250 true
execute @e[name=system,scores={countdown=260}] ~ ~ ~ detect 0 15 0 lit_redstone_lamp 0 /titleraw @a actionbar {"rawtext":[{"text":"§8 [ "},{"translate":"translate.text.five"},{"text":" §8]\n\n  §a█ █ █ █ █ █ █ █ █ █\n"}]}
execute @e[name=system,scores={countdown=260}] ~ ~ ~ detect 0 15 0 lit_redstone_lamp 0 /function destroy_glass
execute @e[name=system,scores={countdown=260}] ~ ~ ~ detect 0 15 0 lit_redstone_lamp 0 /setblock 0 25 0 concrete 0

execute @e[name=system,scores={countdown=260}] ~ ~ ~ detect 0 15 0 redstone_lamp 0 /playsound random.anvil_land @a
execute @e[name=system,scores={countdown=260}] ~ ~ ~ detect 0 15 0 redstone_lamp 0 /tellraw @a {"rawtext":[{"text":"§8<=======================>\n\n "},{"translate":"translate.text.one"},{"text":"\n "},{"translate":"translate.text.two"},{"text":"\n "},{"translate":"translate.text.three"},{"text":"\n\n§8<=======================>"}]}
execute @e[name=system,scores={countdown=260}] ~ ~ ~ detect 0 15 0 redstone_lamp 0 /titleraw @a actionbar {"rawtext":[{"text":"§8[ "},{"translate":"translate.text.six"},{"text":" §8]\n\n    §c█ █ █ █ █ █ █ █ █ █\n"}]}
execute @e[name=system,scores={countdown=260}] ~ ~ ~ detect 0 15 0 redstone_lamp 0 /tp @a[x=-31,y=0,z=969,dx=62,dy=39,dz=62] 0 33 0 0 0
execute @e[name=system,scores={countdown=260}] ~ ~ ~ detect 0 15 0 redstone_lamp 0 /setblock 0 26 0 wool 0
execute @e[name=system,scores={countdown=260}] ~ ~ ~ detect 0 15 0 redstone_lamp 0 /scoreboard objectives remove players
execute @e[name=system,scores={countdown=260}] ~ ~ ~ detect 0 15 0 redstone_lamp 0 /scoreboard objectives add players dummy
execute @e[name=system,scores={countdown=260}] ~ ~ ~ detect 0 15 0 redstone_lamp 0 /setblock 0 25 0 wool 0

execute @e[name=system,scores={countdown=270}] ~ ~ ~ detect 0 15 0 lit_redstone_lamp 0 /setblock 0 19 0 redstone_block
execute @e[name=system,scores={countdown=270}] ~ ~ ~ detect 0 15 0 lit_redstone_lamp 0 /setblock 0 18 0 lit_redstone_lamp
execute @e[name=system,scores={countdown=270,mode=1}] ~ ~ ~ detect 0 15 0 lit_redstone_lamp 0 /setblock 0 17 0 redstone_block

execute @e[name=system,scores={countdown=270,mode=2}] ~ ~ ~ detect 0 15 0 lit_redstone_lamp 0 /tag @a[x=-31,y=0,z=969,dx=62,dy=39,dz=62,scores={players=1}] add team_blue
execute @e[name=system,scores={countdown=270,mode=2}] ~ ~ ~ detect 0 15 0 lit_redstone_lamp 0 /tag @a[x=-31,y=0,z=969,dx=62,dy=39,dz=62,scores={players=3}] add team_blue
execute @e[name=system,scores={countdown=270,mode=2}] ~ ~ ~ detect 0 15 0 lit_redstone_lamp 0 /tag @a[x=-31,y=0,z=969,dx=62,dy=39,dz=62,scores={players=5}] add team_blue
execute @e[name=system,scores={countdown=270,mode=2}] ~ ~ ~ detect 0 15 0 lit_redstone_lamp 0 /tag @a[x=-31,y=0,z=969,dx=62,dy=39,dz=62,scores={players=7}] add team_blue

execute @e[name=system,scores={countdown=270,mode=2}] ~ ~ ~ detect 0 15 0 lit_redstone_lamp 0 /tag @a[x=-31,y=0,z=969,dx=62,dy=39,dz=62,scores={players=2}] add team_red
execute @e[name=system,scores={countdown=270,mode=2}] ~ ~ ~ detect 0 15 0 lit_redstone_lamp 0 /tag @a[x=-31,y=0,z=969,dx=62,dy=39,dz=62,scores={players=4}] add team_red
execute @e[name=system,scores={countdown=270,mode=2}] ~ ~ ~ detect 0 15 0 lit_redstone_lamp 0 /tag @a[x=-31,y=0,z=969,dx=62,dy=39,dz=62,scores={players=6}] add team_red
execute @e[name=system,scores={countdown=270,mode=2}] ~ ~ ~ detect 0 15 0 lit_redstone_lamp 0 /tag @a[x=-31,y=0,z=969,dx=62,dy=39,dz=62,scores={players=8}] add team_red

execute @e[name=system,scores={countdown=275,mode=2}] ~ ~ ~ detect 0 15 0 lit_redstone_lamp 0 /replaceitem entity @a[x=-31,y=0,z=969,dx=62,dy=39,dz=62,tag=team_blue] slot.armor.chest 0 keep add:blue_chestplate 1 0
execute @e[name=system,scores={countdown=275,mode=2}] ~ ~ ~ detect 0 15 0 lit_redstone_lamp 0 /replaceitem entity @a[x=-31,y=0,z=969,dx=62,dy=39,dz=62,tag=team_red] slot.armor.chest 0 keep add:red_chestplate 1 0

execute @e[name=system,scores={countdown=280,mode=2}] ~ ~ ~ detect 0 15 0 lit_redstone_lamp 0 /setblock -1 18 0 wool 14
execute @e[name=system,scores={countdown=280,mode=2}] ~ ~ ~ detect 0 15 0 lit_redstone_lamp 0 /setblock 1 18 0 wool 11
execute @e[name=system,scores={countdown=280,mode=2}] ~ ~ ~ detect 0 15 0 lit_redstone_lamp 0 /setblock 0 18 -1 wool 0

execute @e[name=system,scores={countdown=280}] ~ ~ ~ detect 0 15 0 lit_redstone_lamp 0 /setblock 0 25 0 wool 8
execute @e[name=system,scores={countdown=280}] ~ ~ ~ detect 0 15 0 lit_redstone_lamp 0 /scoreboard players set @e[type=armor_stand,name=system] countdown 0
execute @e[name=system,scores={countdown=280}] ~ ~ ~ detect 0 15 0 redstone_lamp 0 /scoreboard players set @e[type=armor_stand,name=system] countdown 0