execute @a[x=-35,y=0,z=965,dx=69,dy=45,dz=69,scores={players=0}] ~ ~ ~ /clear @s
execute @a[x=-35,y=0,z=965,dx=69,dy=45,dz=69,scores={players=0}] ~ ~ ~ /tp @s 0 33 0 0 0
execute @a[x=-35,y=-40,z=965,dx=69,dy=35,dz=69] ~ ~ ~ /kill @s
execute @a[scores={players=1..10},x=0,y=33,z=0,r=10] ~ ~ ~ /clear @s
execute @a[scores={players=1..10},x=0,y=33,z=0,r=10] ~ ~ ~ /effect @s clear
execute @a[scores={players=1..10},x=0,y=36,z=-18,r=5] ~ ~ ~ /clear @s
execute @a[scores={players=1..10},x=0,y=36,z=-18,r=5] ~ ~ ~ /effect @s clear
execute @e[type=add:picture_credits] ~ ~ ~ /tp 13.51 31 0 90
execute @a[scores={bonus=1..7200}] ~ ~ ~ /particle electric:blue ~ ~ ~

scoreboard players set @a counter 1
scoreboard players set @a[x=0,y=33,z=0,r=10] players 0
scoreboard players set @a[x=0,y=36,z=-18,r=5] players 0
scoreboard players set @a[x=0,y=33,z=0,r=60] counter_game 0
scoreboard players set @a[x=-31,y=0,z=969,dx=62,dy=39,dz=62,scores={players=1..8}] counter_game 1
scoreboard players set @a[x=-31,y=0,z=969,dx=62,dy=39,dz=62,scores={players=!1..8}] counter_game 0
scoreboard players set @e[type=armor_stand,name=system,scores={particle_timer=30}] particle_timer 0
scoreboard players operation "total" counter += @a counter
scoreboard players operation "total" counter_game += @a counter_game
scoreboard players operation @e[type=armor_stand,name=system] total = total counter
scoreboard players operation @e[type=armor_stand,name=system] total_game = total counter_game
scoreboard players set "total" counter 0
scoreboard players set "total" counter_game 0
scoreboard players add @a players 0
scoreboard players add @e[type=armor_stand,name=system] particle_timer 0
scoreboard players add @e[type=armor_stand,name=system,scores={particle_timer=0..29}] particle_timer 1
scoreboard objectives add bonus dummy
scoreboard players remove @a[scores={bonus=1..7200}] bonus 1
scoreboard objectives setdisplay sidebar skywars ascending

effect @a[scores={players=10}] invisibility 1 250 true
effect @a[scores={players=10}] levitation 1 1 true
effect @a[scores={players=10}] weakness 1 250 true
effect @a[scores={players=10}] slowness 1 4 true
effect @a[x=0,y=31,z=0,r=80] weakness 1 250 true
effect @a[x=0,y=31,z=0,r=80] saturation 1 250 true
effect @a[x=0,y=31,z=0,r=20] instant_health 1 1 true

tag @a[x=0,y=33,z=0,r=10] remove team_blue
tag @a[x=0,y=33,z=0,r=10] remove team_red
tag @a[x=0,y=36,z=-18,r=5] remove team_blue
tag @a[x=0,y=36,z=-18,r=5] remove team_red
tag @e[type=arrow] add on_damage

replaceitem entity @a[scores={players=10}] slot.armor.head 0 keep skull 1 3 {"item_lock":{"mode":"lock_in_slot"}}
replaceitem entity @a[scores={players=10}] slot.hotbar 8 keep add:exit 1 0 {"item_lock":{"mode":"lock_in_slot"}}

event entity @a[x=-31,y=0,z=969,dx=62,dy=39,dz=62,tag=team_blue] minecraft:blue
event entity @a[x=-31,y=0,z=969,dx=62,dy=39,dz=62,tag=team_red] minecraft:red
event entity @a[tag=!team_blue,tag=!team_red] minecraft:none

clear @a bed
xp -100l @a

execute @a[x=-31,y=0,z=969,dx=62,dy=39,dz=62,tag=team_blue] ~ ~ ~ /titleraw @s actionbar {"rawtext":[{"translate":"translate.text.twenty_seven"}]}
execute @a[x=-31,y=0,z=969,dx=62,dy=39,dz=62,tag=team_red] ~ ~ ~ /titleraw @s actionbar {"rawtext":[{"translate":"translate.text.twenty_six"}]}

execute @a[x=-31,y=0,z=969,dx=62,dy=39,dz=62,tag=team_blue] ~ ~ ~ /scoreboard players set #count team_blue 1
execute @a[x=-31,y=0,z=969,dx=62,dy=39,dz=62,tag=team_red] ~ ~ ~ /scoreboard players set #count team_red 1

scoreboard players operation @e[type=armor_stand,name=system] team_blue = #count team_blue
scoreboard players operation @e[type=armor_stand,name=system] team_red = #count team_red
scoreboard players set #count team_blue 0
scoreboard players set #count team_red 0

execute @e[type=armor_stand,name=system,scores={team_blue=0}] ~ ~ ~ detect 0 18 -1 wool 0 /setblock 1 18 0 stone 0
execute @e[type=armor_stand,name=system,scores={team_red=0}] ~ ~ ~ detect 0 18 -1 wool 0 /setblock -1 18 0 stone 0

execute @e[type=armor_stand,name=system,scores={team_blue=1}] ~ ~ ~ detect 0 18 -1 wool 0 /execute @s ~ ~ ~ detect -1 18 0 stone 0 /function winner_blue
execute @e[type=armor_stand,name=system,scores={team_blue=1}] ~ ~ ~ detect 0 18 -1 wool 0 /execute @s ~ ~ ~ detect -1 18 0 stone 0 /setblock 0 18 -1 stone

execute @e[type=armor_stand,name=system,scores={team_red=1}] ~ ~ ~ detect 0 18 -1 wool 0 /execute @s ~ ~ ~ detect 1 18 0 stone 0 /function winner_red
execute @e[type=armor_stand,name=system,scores={team_red=1}] ~ ~ ~ detect 0 18 -1 wool 0 /execute @s ~ ~ ~ detect 1 18 0 stone 0 /setblock 0 18 -1 stone

execute @e[type=lightning_bolt] ~ ~ ~ /fill ~-3 ~-3 ~-3 ~3 ~3 ~3 air 0 replace fire

execute @e[type=armor_stand,name=system,scores={particle_timer=0,level=3}] ~ ~ ~ /particle particle:nether 0 22 1000
execute @e[type=armor_stand,name=system,scores={particle_timer=5,level=3}] ~ ~ ~ /particle particle:nether 0 22 1000
execute @e[type=armor_stand,name=system,scores={particle_timer=10,level=3}] ~ ~ ~ /particle particle:nether 0 22 1000
execute @e[type=armor_stand,name=system,scores={particle_timer=15,level=3}] ~ ~ ~ /particle particle:nether 0 22 1000
execute @e[type=armor_stand,name=system,scores={particle_timer=20,level=3}] ~ ~ ~ /particle particle:nether 0 22 1000
execute @e[type=armor_stand,name=system,scores={particle_timer=25,level=3}] ~ ~ ~ /particle particle:nether 0 22 1000
execute @e[type=armor_stand,name=system,scores={particle_timer=0,level=6}] ~ ~ ~ /particle minecraft:spore_blossom_ambient_particle 0 22 1000
execute @e[type=armor_stand,name=system,scores={particle_timer=5,level=6}] ~ ~ ~ /particle minecraft:spore_blossom_ambient_particle 0 22 1000
execute @e[type=armor_stand,name=system,scores={particle_timer=10,level=6}] ~ ~ ~ /particle minecraft:spore_blossom_ambient_particle 0 22 1000
execute @e[type=armor_stand,name=system,scores={particle_timer=15,level=6}] ~ ~ ~ /particle minecraft:spore_blossom_ambient_particle 0 22 1000
execute @e[type=armor_stand,name=system,scores={particle_timer=20,level=6}] ~ ~ ~ /particle minecraft:spore_blossom_ambient_particle 0 22 1000
execute @e[type=armor_stand,name=system,scores={particle_timer=25,level=6}] ~ ~ ~ /particle minecraft:spore_blossom_ambient_particle 0 22 1000
execute @e[type=armor_stand,name=system,scores={particle_timer=30,level=4}] ~ ~ ~ /particle snowstorm:snow 0 22 1000

execute @e[type=armor_stand,name=system,scores={total_game=0..1}] ~ ~ ~ /setblock 0 16 0 stone 0
execute @e[type=armor_stand,name=system,scores={total_game=2..100}] ~ ~ ~ /setblock 0 16 0 redstone_block 0
execute @e[type=armor_stand,name=system,scores={total_game=0}] ~ ~ ~ detect 0 19 0 redstone_block 0 /setblock 0 19 0 wool 14
execute @e[type=armor_stand,name=system,scores={total_game=0}] ~ ~ ~ detect 0 19 0 wool 14 /execute @s ~ ~ ~ detect 0 18 0 redstone_lamp 0 /scoreboard players set @e[type=armor_stand] reset 1
execute @e[type=armor_stand,name=system,scores={total_game=0}] ~ ~ ~ detect 0 19 0 wool 14 /execute @s ~ ~ ~ detect 0 18 0 redstone_lamp 0 /setblock 0 18 0 stone
execute @e[type=armor_stand,name=system,scores={total_game=1,mode=1}] ~ ~ ~ detect 0 17 0 redstone_block 0 /function winner
execute @e[type=armor_stand,name=system,scores={total_game=1,mode=1}] ~ ~ ~ detect 0 17 0 redstone_block 0 /setblock 0 17 0 stone

execute @p[x=-2,y=31,z=15,dx=4,dy=6,scores={players=0},c=1] ~ ~ ~ detect 0 25 0 wool 0 /scoreboard players set @s players 1
execute @p[x=-2,y=31,z=15,dx=4,dy=6,scores={players=1},c=1] ~ ~ ~ detect 0 25 0 wool 0 /tellraw @a {"rawtext":[{"text":"§8[ §9"},{"selector":"@s"},{"text":" §8] "},{"translate":"translate.text.seven"}]}
execute @p[x=-2,y=31,z=15,dx=4,dy=6,scores={players=1},c=1] ~ ~ ~ detect 0 25 0 wool 0 /playsound block.end_portal_frame.fill @a
execute @p[x=-2,y=31,z=15,dx=4,dy=6,scores={players=1},c=1] ~ ~ ~ detect 0 25 0 wool 0 /scoreboard players set @e[type=armor_stand,name=system,scores={countdown=0..1000}] countdown 1
execute @p[x=-2,y=31,z=15,dx=4,dy=6,scores={players=1},c=1] ~ ~ ~ detect 0 25 0 wool 0 /setblock 0 25 0 wool 1
execute @p[x=-2,y=31,z=15,dx=4,dy=6,scores={players=1},c=1] ~ ~ ~ /tp @s 0 25 975 0 25

execute @p[x=-2,y=31,z=15,dx=4,dy=6,scores={players=0},c=1] ~ ~ ~ detect 0 25 0 wool 1 /scoreboard players set @s players 2
execute @p[x=-2,y=31,z=15,dx=4,dy=6,scores={players=2},c=1] ~ ~ ~ detect 0 25 0 wool 1 /tellraw @a {"rawtext":[{"text":"§8[ §9"},{"selector":"@s"},{"text":" §8] "},{"translate":"translate.text.seven"}]}
execute @p[x=-2,y=31,z=15,dx=4,dy=6,scores={players=2},c=1] ~ ~ ~ detect 0 25 0 wool 1 /playsound block.end_portal_frame.fill @a
execute @p[x=-2,y=31,z=15,dx=4,dy=6,scores={players=2},c=1] ~ ~ ~ detect 0 25 0 wool 1 /scoreboard players set @e[type=armor_stand,name=system,scores={countdown=0..1000}] countdown 1
execute @p[x=-2,y=31,z=15,dx=4,dy=6,scores={players=2},c=1] ~ ~ ~ detect 0 25 0 wool 1 /setblock 0 25 0 wool 2
execute @p[x=-2,y=31,z=15,dx=4,dy=6,scores={players=2},c=1] ~ ~ ~ /tp @s 0 25 1025 180 25

execute @p[x=-2,y=31,z=15,dx=4,dy=6,scores={players=0},c=1] ~ ~ ~ detect 0 25 0 wool 2 /scoreboard players set @s players 3
execute @p[x=-2,y=31,z=15,dx=4,dy=6,scores={players=3},c=1] ~ ~ ~ detect 0 25 0 wool 2 /tellraw @a {"rawtext":[{"text":"§8[ §9"},{"selector":"@s"},{"text":" §8] "},{"translate":"translate.text.seven"}]}
execute @p[x=-2,y=31,z=15,dx=4,dy=6,scores={players=3},c=1] ~ ~ ~ detect 0 25 0 wool 2 /playsound block.end_portal_frame.fill @a
execute @p[x=-2,y=31,z=15,dx=4,dy=6,scores={players=3},c=1] ~ ~ ~ detect 0 25 0 wool 2 /scoreboard players set @e[type=armor_stand,name=system,scores={countdown=0..1000}] countdown 1
execute @p[x=-2,y=31,z=15,dx=4,dy=6,scores={players=3},c=1] ~ ~ ~ detect 0 25 0 wool 2 /setblock 0 25 0 wool 3
execute @p[x=-2,y=31,z=15,dx=4,dy=6,scores={players=3},c=1] ~ ~ ~ /tp @s 25 25 1000 90 25

execute @p[x=-2,y=31,z=15,dx=4,dy=6,scores={players=0},c=1] ~ ~ ~ detect 0 25 0 wool 3 /scoreboard players set @s players 4
execute @p[x=-2,y=31,z=15,dx=4,dy=6,scores={players=4},c=1] ~ ~ ~ detect 0 25 0 wool 3 /tellraw @a {"rawtext":[{"text":"§8[ §9"},{"selector":"@s"},{"text":" §8] "},{"translate":"translate.text.seven"}]}
execute @p[x=-2,y=31,z=15,dx=4,dy=6,scores={players=4},c=1] ~ ~ ~ detect 0 25 0 wool 3 /playsound block.end_portal_frame.fill @a
execute @p[x=-2,y=31,z=15,dx=4,dy=6,scores={players=4},c=1] ~ ~ ~ detect 0 25 0 wool 3 /scoreboard players set @e[type=armor_stand,name=system,scores={countdown=0..1000}] countdown 1
execute @p[x=-2,y=31,z=15,dx=4,dy=6,scores={players=4},c=1] ~ ~ ~ detect 0 25 0 wool 3 /setblock 0 25 0 wool 4
execute @p[x=-2,y=31,z=15,dx=4,dy=6,scores={players=4},c=1] ~ ~ ~ /tp @s -25 25 1000 -90 25

execute @p[x=-2,y=31,z=15,dx=4,dy=6,scores={players=0},c=1] ~ ~ ~ detect 0 25 0 wool 4 /scoreboard players set @s players 5
execute @p[x=-2,y=31,z=15,dx=4,dy=6,scores={players=5},c=1] ~ ~ ~ detect 0 25 0 wool 4 /tellraw @a {"rawtext":[{"text":"§8[ §9"},{"selector":"@s"},{"text":" §8] "},{"translate":"translate.text.seven"}]}
execute @p[x=-2,y=31,z=15,dx=4,dy=6,scores={players=5},c=1] ~ ~ ~ detect 0 25 0 wool 4 /playsound block.end_portal_frame.fill @a
execute @p[x=-2,y=31,z=15,dx=4,dy=6,scores={players=5},c=1] ~ ~ ~ detect 0 25 0 wool 4 /scoreboard players set @e[type=armor_stand,name=system,scores={countdown=0..1000}] countdown 1
execute @p[x=-2,y=31,z=15,dx=4,dy=6,scores={players=5},c=1] ~ ~ ~ detect 0 25 0 wool 4 /setblock 0 25 0 wool 5
execute @p[x=-2,y=31,z=15,dx=4,dy=6,scores={players=5},c=1] ~ ~ ~ /tp @s 18 25 982 45 25

execute @p[x=-2,y=31,z=15,dx=4,dy=6,scores={players=0},c=1] ~ ~ ~ detect 0 25 0 wool 5 /scoreboard players set @s players 6
execute @p[x=-2,y=31,z=15,dx=4,dy=6,scores={players=6},c=1] ~ ~ ~ detect 0 25 0 wool 5 /tellraw @a {"rawtext":[{"text":"§8[ §9"},{"selector":"@s"},{"text":" §8] "},{"translate":"translate.text.seven"}]}
execute @p[x=-2,y=31,z=15,dx=4,dy=6,scores={players=6},c=1] ~ ~ ~ detect 0 25 0 wool 5 /playsound block.end_portal_frame.fill @a
execute @p[x=-2,y=31,z=15,dx=4,dy=6,scores={players=6},c=1] ~ ~ ~ detect 0 25 0 wool 5 /scoreboard players set @e[type=armor_stand,name=system,scores={countdown=0..1000}] countdown 1
execute @p[x=-2,y=31,z=15,dx=4,dy=6,scores={players=6},c=1] ~ ~ ~ detect 0 25 0 wool 5 /setblock 0 25 0 wool 6
execute @p[x=-2,y=31,z=15,dx=4,dy=6,scores={players=6},c=1] ~ ~ ~ /tp @s -18 25 1018 -135 25

execute @p[x=-2,y=31,z=15,dx=4,dy=6,scores={players=0},c=1] ~ ~ ~ detect 0 25 0 wool 6 /scoreboard players set @s players 7
execute @p[x=-2,y=31,z=15,dx=4,dy=6,scores={players=7},c=1] ~ ~ ~ detect 0 25 0 wool 6 /tellraw @a {"rawtext":[{"text":"§8[ §9"},{"selector":"@s"},{"text":" §8] "},{"translate":"translate.text.seven"}]}
execute @p[x=-2,y=31,z=15,dx=4,dy=6,scores={players=7},c=1] ~ ~ ~ detect 0 25 0 wool 6 /playsound block.end_portal_frame.fill @a
execute @p[x=-2,y=31,z=15,dx=4,dy=6,scores={players=7},c=1] ~ ~ ~ detect 0 25 0 wool 6 /scoreboard players set @e[type=armor_stand,name=system,scores={countdown=0..1000}] countdown 1
execute @p[x=-2,y=31,z=15,dx=4,dy=6,scores={players=7},c=1] ~ ~ ~ detect 0 25 0 wool 6 /setblock 0 25 0 wool 7
execute @p[x=-2,y=31,z=15,dx=4,dy=6,scores={players=7},c=1] ~ ~ ~ /tp @s -18 25 982 -45 25

execute @p[x=-2,y=31,z=15,dx=4,dy=6,scores={players=0},c=1] ~ ~ ~ detect 0 25 0 wool 7 /scoreboard players set @s players 8
execute @p[x=-2,y=31,z=15,dx=4,dy=6,scores={players=8},c=1] ~ ~ ~ detect 0 25 0 wool 7 /tellraw @a {"rawtext":[{"text":"§8[ §9"},{"selector":"@s"},{"text":" §8] "},{"translate":"translate.text.seven"}]}
execute @p[x=-2,y=31,z=15,dx=4,dy=6,scores={players=8},c=1] ~ ~ ~ detect 0 25 0 wool 7 /playsound block.end_portal_frame.fill @a
execute @p[x=-2,y=31,z=15,dx=4,dy=6,scores={players=8},c=1] ~ ~ ~ detect 0 25 0 wool 7 /scoreboard players set @e[type=armor_stand,name=system,scores={countdown=0..1000}] countdown 1
execute @p[x=-2,y=31,z=15,dx=4,dy=6,scores={players=8},c=1] ~ ~ ~ detect 0 25 0 wool 7 /setblock 0 25 0 wool 8
execute @p[x=-2,y=31,z=15,dx=4,dy=6,scores={players=8},c=1] ~ ~ ~ /tp @s 18 25 1018 135 25

execute @p[x=-2,y=31,z=15,dx=4,dy=6,scores={players=0},c=1] ~ ~ ~ detect 0 25 0 wool 8 /scoreboard players set @s players 10
execute @p[x=-2,y=31,z=15,dx=4,dy=6,scores={players=10},c=1] ~ ~ ~ detect 0 25 0 wool 8 /playsound block.end_portal_frame.fill @a
execute @p[x=-2,y=31,z=15,dx=4,dy=6,scores={players=10},c=1] ~ ~ ~ detect 0 25 0 wool 8 /tellraw @s {"rawtext":[{"text":"§8[ §7"},{"selector":"@s"},{"text":" §8] "},{"translate":"translate.text.ten"}]}
execute @p[x=-2,y=31,z=15,dx=4,dy=6,scores={players=10},c=1] ~ ~ ~ /tp @s 0 23.5 966.5 0 20

execute @e[type=armor_stand,name=system] ~ ~ ~ /gamerule showcoordinates false
execute @e[type=armor_stand,name=system] ~ ~ ~ /gamerule sendcommandfeedback false

execute @e[type=armor_stand,name=system,scores={total_game=!0}] ~ ~ ~ /scoreboard players reset " §aPlayers in play: §c0§7/8" skywars
execute @e[type=armor_stand,name=system,scores={total_game=!1}] ~ ~ ~ /scoreboard players reset " §aPlayers in play: §c1§7/8" skywars
execute @e[type=armor_stand,name=system,scores={total_game=!2}] ~ ~ ~ /scoreboard players reset " §aPlayers in play: §c2§7/8" skywars
execute @e[type=armor_stand,name=system,scores={total_game=!3}] ~ ~ ~ /scoreboard players reset " §aPlayers in play: §c3§7/8" skywars
execute @e[type=armor_stand,name=system,scores={total_game=!4}] ~ ~ ~ /scoreboard players reset " §aPlayers in play: §c4§7/8" skywars
execute @e[type=armor_stand,name=system,scores={total_game=!5}] ~ ~ ~ /scoreboard players reset " §aPlayers in play: §c5§7/8" skywars
execute @e[type=armor_stand,name=system,scores={total_game=!6}] ~ ~ ~ /scoreboard players reset " §aPlayers in play: §c6§7/8" skywars
execute @e[type=armor_stand,name=system,scores={total_game=!7}] ~ ~ ~ /scoreboard players reset " §aPlayers in play: §c7§7/8" skywars
execute @e[type=armor_stand,name=system,scores={total_game=!8}] ~ ~ ~ /scoreboard players reset " §aPlayers in play: §c8§7/8" skywars

execute @e[type=armor_stand,name=system,scores={total_game=0}] ~ ~ ~ /scoreboard players set " §aPlayers in play: §c0§7/8" skywars 3
execute @e[type=armor_stand,name=system,scores={total_game=1}] ~ ~ ~ /scoreboard players set " §aPlayers in play: §c1§7/8" skywars 3
execute @e[type=armor_stand,name=system,scores={total_game=2}] ~ ~ ~ /scoreboard players set " §aPlayers in play: §c2§7/8" skywars 3
execute @e[type=armor_stand,name=system,scores={total_game=3}] ~ ~ ~ /scoreboard players set " §aPlayers in play: §c3§7/8" skywars 3
execute @e[type=armor_stand,name=system,scores={total_game=4}] ~ ~ ~ /scoreboard players set " §aPlayers in play: §c4§7/8" skywars 3
execute @e[type=armor_stand,name=system,scores={total_game=5}] ~ ~ ~ /scoreboard players set " §aPlayers in play: §c5§7/8" skywars 3
execute @e[type=armor_stand,name=system,scores={total_game=6}] ~ ~ ~ /scoreboard players set " §aPlayers in play: §c6§7/8" skywars 3
execute @e[type=armor_stand,name=system,scores={total_game=7}] ~ ~ ~ /scoreboard players set " §aPlayers in play: §c7§7/8" skywars 3
execute @e[type=armor_stand,name=system,scores={total_game=8}] ~ ~ ~ /scoreboard players set " §aPlayers in play: §c8§7/8" skywars 3

execute @e[type=armor_stand,name=system,scores={total=!0}] ~ ~ ~ /scoreboard players reset " §gPlayers online:  §c0" skywars
execute @e[type=armor_stand,name=system,scores={total=!1}] ~ ~ ~ /scoreboard players reset " §gPlayers online:  §c1" skywars
execute @e[type=armor_stand,name=system,scores={total=!2}] ~ ~ ~ /scoreboard players reset " §gPlayers online:  §c2" skywars
execute @e[type=armor_stand,name=system,scores={total=!3}] ~ ~ ~ /scoreboard players reset " §gPlayers online:  §c3" skywars
execute @e[type=armor_stand,name=system,scores={total=!4}] ~ ~ ~ /scoreboard players reset " §gPlayers online:  §c4" skywars
execute @e[type=armor_stand,name=system,scores={total=!5}] ~ ~ ~ /scoreboard players reset " §gPlayers online:  §c5" skywars
execute @e[type=armor_stand,name=system,scores={total=!6}] ~ ~ ~ /scoreboard players reset " §gPlayers online:  §c6" skywars
execute @e[type=armor_stand,name=system,scores={total=!7}] ~ ~ ~ /scoreboard players reset " §gPlayers online:  §c7" skywars
execute @e[type=armor_stand,name=system,scores={total=!8}] ~ ~ ~ /scoreboard players reset " §gPlayers online:  §c8" skywars
execute @e[type=armor_stand,name=system,scores={total=!9}] ~ ~ ~ /scoreboard players reset " §gPlayers online:  §c9" skywars
execute @e[type=armor_stand,name=system,scores={total=!10}] ~ ~ ~ /scoreboard players reset " §gPlayers online:  §c10" skywars
execute @e[type=armor_stand,name=system,scores={total=!11}] ~ ~ ~ /scoreboard players reset " §gPlayers online:  §c11" skywars
execute @e[type=armor_stand,name=system,scores={total=!12}] ~ ~ ~ /scoreboard players reset " §gPlayers online:  §c12" skywars
execute @e[type=armor_stand,name=system,scores={total=!13}] ~ ~ ~ /scoreboard players reset " §gPlayers online:  §c13" skywars
execute @e[type=armor_stand,name=system,scores={total=!14}] ~ ~ ~ /scoreboard players reset " §gPlayers online:  §c14" skywars
execute @e[type=armor_stand,name=system,scores={total=!15}] ~ ~ ~ /scoreboard players reset " §gPlayers online:  §c15" skywars
execute @e[type=armor_stand,name=system,scores={total=!16}] ~ ~ ~ /scoreboard players reset " §gPlayers online:  §c16" skywars
execute @e[type=armor_stand,name=system,scores={total=!17}] ~ ~ ~ /scoreboard players reset " §gPlayers online:  §c17" skywars
execute @e[type=armor_stand,name=system,scores={total=!18}] ~ ~ ~ /scoreboard players reset " §gPlayers online:  §c18" skywars
execute @e[type=armor_stand,name=system,scores={total=!19}] ~ ~ ~ /scoreboard players reset " §gPlayers online:  §c19" skywars
execute @e[type=armor_stand,name=system,scores={total=!20}] ~ ~ ~ /scoreboard players reset " §gPlayers online:  §c20" skywars
execute @e[type=armor_stand,name=system,scores={total=!21}] ~ ~ ~ /scoreboard players reset " §gPlayers online:  §c21" skywars
execute @e[type=armor_stand,name=system,scores={total=!22}] ~ ~ ~ /scoreboard players reset " §gPlayers online:  §c22" skywars
execute @e[type=armor_stand,name=system,scores={total=!23}] ~ ~ ~ /scoreboard players reset " §gPlayers online:  §c23" skywars
execute @e[type=armor_stand,name=system,scores={total=!24}] ~ ~ ~ /scoreboard players reset " §gPlayers online:  §c24" skywars
execute @e[type=armor_stand,name=system,scores={total=!25}] ~ ~ ~ /scoreboard players reset " §gPlayers online:  §c25" skywars
execute @e[type=armor_stand,name=system,scores={total=!26}] ~ ~ ~ /scoreboard players reset " §gPlayers online:  §c26" skywars
execute @e[type=armor_stand,name=system,scores={total=!27}] ~ ~ ~ /scoreboard players reset " §gPlayers online:  §c27" skywars
execute @e[type=armor_stand,name=system,scores={total=!28}] ~ ~ ~ /scoreboard players reset " §gPlayers online:  §c28" skywars
execute @e[type=armor_stand,name=system,scores={total=!29}] ~ ~ ~ /scoreboard players reset " §gPlayers online:  §c29" skywars
execute @e[type=armor_stand,name=system,scores={total=!30}] ~ ~ ~ /scoreboard players reset " §gPlayers online:  §c30" skywars

execute @e[type=armor_stand,name=system,scores={total=0}] ~ ~ ~ /scoreboard players set " §gPlayers online:  §c0" skywars 2
execute @e[type=armor_stand,name=system,scores={total=1}] ~ ~ ~ /scoreboard players set " §gPlayers online:  §c1" skywars 2
execute @e[type=armor_stand,name=system,scores={total=2}] ~ ~ ~ /scoreboard players set " §gPlayers online:  §c2" skywars 2
execute @e[type=armor_stand,name=system,scores={total=3}] ~ ~ ~ /scoreboard players set " §gPlayers online:  §c3" skywars 2
execute @e[type=armor_stand,name=system,scores={total=4}] ~ ~ ~ /scoreboard players set " §gPlayers online:  §c4" skywars 2
execute @e[type=armor_stand,name=system,scores={total=5}] ~ ~ ~ /scoreboard players set " §gPlayers online:  §c5" skywars 2
execute @e[type=armor_stand,name=system,scores={total=6}] ~ ~ ~ /scoreboard players set " §gPlayers online:  §c6" skywars 2
execute @e[type=armor_stand,name=system,scores={total=7}] ~ ~ ~ /scoreboard players set " §gPlayers online:  §c7" skywars 2
execute @e[type=armor_stand,name=system,scores={total=8}] ~ ~ ~ /scoreboard players set " §gPlayers online:  §c8" skywars 2
execute @e[type=armor_stand,name=system,scores={total=9}] ~ ~ ~ /scoreboard players set " §gPlayers online:  §c9" skywars 2
execute @e[type=armor_stand,name=system,scores={total=10}] ~ ~ ~ /scoreboard players set " §gPlayers online:  §c10" skywars 2
execute @e[type=armor_stand,name=system,scores={total=11}] ~ ~ ~ /scoreboard players set " §gPlayers online:  §c11" skywars 2
execute @e[type=armor_stand,name=system,scores={total=12}] ~ ~ ~ /scoreboard players set " §gPlayers online:  §c12" skywars 2
execute @e[type=armor_stand,name=system,scores={total=13}] ~ ~ ~ /scoreboard players set " §gPlayers online:  §c13" skywars 2
execute @e[type=armor_stand,name=system,scores={total=14}] ~ ~ ~ /scoreboard players set " §gPlayers online:  §c14" skywars 2
execute @e[type=armor_stand,name=system,scores={total=15}] ~ ~ ~ /scoreboard players set " §gPlayers online:  §c15" skywars 2
execute @e[type=armor_stand,name=system,scores={total=16}] ~ ~ ~ /scoreboard players set " §gPlayers online:  §c16" skywars 2
execute @e[type=armor_stand,name=system,scores={total=17}] ~ ~ ~ /scoreboard players set " §gPlayers online:  §c17" skywars 2
execute @e[type=armor_stand,name=system,scores={total=18}] ~ ~ ~ /scoreboard players set " §gPlayers online:  §c18" skywars 2
execute @e[type=armor_stand,name=system,scores={total=19}] ~ ~ ~ /scoreboard players set " §gPlayers online:  §c19" skywars 2
execute @e[type=armor_stand,name=system,scores={total=20}] ~ ~ ~ /scoreboard players set " §gPlayers online:  §c20" skywars 2
execute @e[type=armor_stand,name=system,scores={total=21}] ~ ~ ~ /scoreboard players set " §gPlayers online:  §c21" skywars 2
execute @e[type=armor_stand,name=system,scores={total=22}] ~ ~ ~ /scoreboard players set " §gPlayers online:  §c22" skywars 2
execute @e[type=armor_stand,name=system,scores={total=23}] ~ ~ ~ /scoreboard players set " §gPlayers online:  §c23" skywars 2
execute @e[type=armor_stand,name=system,scores={total=24}] ~ ~ ~ /scoreboard players set " §gPlayers online:  §c24" skywars 2
execute @e[type=armor_stand,name=system,scores={total=25}] ~ ~ ~ /scoreboard players set " §gPlayers online:  §c25" skywars 2
execute @e[type=armor_stand,name=system,scores={total=26}] ~ ~ ~ /scoreboard players set " §gPlayers online:  §c26" skywars 2
execute @e[type=armor_stand,name=system,scores={total=27}] ~ ~ ~ /scoreboard players set " §gPlayers online:  §c27" skywars 2
execute @e[type=armor_stand,name=system,scores={total=28}] ~ ~ ~ /scoreboard players set " §gPlayers online:  §c28" skywars 2
execute @e[type=armor_stand,name=system,scores={total=29}] ~ ~ ~ /scoreboard players set " §gPlayers online:  §c29" skywars 2
execute @e[type=armor_stand,name=system,scores={total=30}] ~ ~ ~ /scoreboard players set " §gPlayers online:  §c30" skywars 2

execute @e[type=armor_stand,name=system,scores={level=!1}] ~ ~ ~ /scoreboard players reset "    §fMap: §2Ruins" skywars
execute @e[type=armor_stand,name=system,scores={level=!2}] ~ ~ ~ /scoreboard players reset "    §fMap: §cFlower§bpot" skywars
execute @e[type=armor_stand,name=system,scores={level=!3}] ~ ~ ~ /scoreboard players reset "    §fMap: §4Nether" skywars
execute @e[type=armor_stand,name=system,scores={level=!4}] ~ ~ ~ /scoreboard players reset "    §fMap: §fSnowy" skywars
execute @e[type=armor_stand,name=system,scores={level=!5}] ~ ~ ~ /scoreboard players reset "    §fMap: §3Tr§6on" skywars
execute @e[type=armor_stand,name=system,scores={level=!6}] ~ ~ ~ /scoreboard players reset "    §fMap: §aNatural" skywars
execute @e[type=armor_stand,name=system,scores={level=!7}] ~ ~ ~ /scoreboard players reset "    §fMap: §eOasis" skywars
execute @e[type=armor_stand,name=system,scores={level=!8}] ~ ~ ~ /scoreboard players reset "    §fMap: §bice §dcream" skywars
execute @e[type=armor_stand,name=system,scores={level=!9}] ~ ~ ~ /scoreboard players reset "    §fMap: §6mushroom" skywars
execute @e[type=armor_stand,name=system,scores={level=!10}] ~ ~ ~ /scoreboard players reset "    §fMap: §3París" skywars

execute @e[type=armor_stand,name=system,scores={level=1}] ~ ~ ~ /scoreboard players set "    §fMap: §2Ruins" skywars 5
execute @e[type=armor_stand,name=system,scores={level=2}] ~ ~ ~ /scoreboard players set "    §fMap: §cFlower§bpot" skywars 5
execute @e[type=armor_stand,name=system,scores={level=3}] ~ ~ ~ /scoreboard players set "    §fMap: §4Nether" skywars 5
execute @e[type=armor_stand,name=system,scores={level=4}] ~ ~ ~ /scoreboard players set "    §fMap: §fSnowy" skywars 5
execute @e[type=armor_stand,name=system,scores={level=5}] ~ ~ ~ /scoreboard players set "    §fMap: §3Tr§6on" skywars 5
execute @e[type=armor_stand,name=system,scores={level=6}] ~ ~ ~ /scoreboard players set "    §fMap: §aNatural" skywars 5
execute @e[type=armor_stand,name=system,scores={level=7}] ~ ~ ~ /scoreboard players set "    §fMap: §eOasis" skywars 5
execute @e[type=armor_stand,name=system,scores={level=8}] ~ ~ ~ /scoreboard players set "    §fMap: §bice §dcream" skywars 5
execute @e[type=armor_stand,name=system,scores={level=9}] ~ ~ ~ /scoreboard players set "    §fMap: §6mushroom" skywars 5
execute @e[type=armor_stand,name=system,scores={level=10}] ~ ~ ~ /scoreboard players set "    §fMap: §3París" skywars 5

execute @e[type=armor_stand,name=system,scores={chest_loot=!1}] ~ ~ ~ /scoreboard players reset " §7Chest loot: §fNormal" skywars
execute @e[type=armor_stand,name=system,scores={chest_loot=!2}] ~ ~ ~ /scoreboard players reset " §7Chest loot: §dExtreme" skywars

execute @e[type=armor_stand,name=system,scores={chest_loot=1}] ~ ~ ~ /scoreboard players set " §7Chest loot: §fNormal" skywars 6
execute @e[type=armor_stand,name=system,scores={chest_loot=2}] ~ ~ ~ /scoreboard players set " §7Chest loot: §dExtreme" skywars 6

execute @e[type=armor_stand,name=system,scores={mode=!1}] ~ ~ ~ /scoreboard players reset "     §7Mode: §aNormal" skywars
execute @e[type=armor_stand,name=system,scores={mode=!2}] ~ ~ ~ /scoreboard players reset " §7Mode: §cRed §fvs §bBlue" skywars

execute @e[type=armor_stand,name=system,scores={mode=1}] ~ ~ ~ /scoreboard players set "     §7Mode: §aNormal" skywars 7
execute @e[type=armor_stand,name=system,scores={mode=2}] ~ ~ ~ /scoreboard players set " §7Mode: §cRed §fvs §bBlue" skywars 7

gamemode a @a[x=0,y=33,z=0,r=60,m=s]