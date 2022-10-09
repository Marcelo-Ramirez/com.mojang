scoreboard players add @e[type=armor_stand,name=system] reset 0
scoreboard players add @e[type=armor_stand,name=system,scores={reset=1..311}] reset 1
scoreboard players add @e[type=armor_stand,name=system,scores={reset=312}] reset 0

execute @e[type=armor_stand,name=system,scores={reset=2}] ~ ~ ~ /setblock 0 25 0 dirt
execute @e[type=armor_stand,name=system,scores={reset=2}] ~ ~ ~ /fill 0 19 0 0 17 0 stone
execute @e[type=armor_stand,name=system,scores={reset=2}] ~ ~ ~ /fill -1 18 0 1 18 -1 stone
execute @e[type=armor_stand,name=system,scores={reset=2}] ~ ~ ~ /tp @a[x=-35,y=0,z=965,dx=69,dy=45,dz=69,scores={players=1..10}] 0 33 0 0 0
execute @e[type=armor_stand,name=system,scores={reset=3}] ~ ~ ~ /fill -2 37 15 2 37 15 air
execute @e[type=armor_stand,name=system,scores={reset=4}] ~ ~ ~ /setblock 0 26 0 wool 14

execute @e[type=armor_stand,name=system,scores={reset=10}] ~ ~ ~ /playsound tile.piston.out @a
execute @e[type=armor_stand,name=system,scores={reset=10}] ~ ~ ~ /scoreboard players set " §4Resetting map §f[§c15§f]" skywars 8
execute @e[type=armor_stand,name=system,scores={reset=10}] ~ ~ ~ /playsound random.click @a
execute @e[type=armor_stand,name=system,scores={reset=10}] ~ ~ ~ /structure load reset -31 0 969
execute @e[type=armor_stand,name=system,scores={reset=10}] ~ ~ ~ /kill @e[type=!player,x=-31,y=0,z=969,dx=62,dy=39,dz=62]
execute @e[type=armor_stand,name=system,scores={reset=10}] ~ ~ ~ /kill @e[type=item,x=-31,y=0,z=969,dx=62,dy=39,dz=62]

execute @e[type=armor_stand,name=system,scores={reset=30}] ~ ~ ~ /scoreboard players reset " §4Resetting map §f[§c15§f]" skywars
execute @e[type=armor_stand,name=system,scores={reset=30}] ~ ~ ~ /scoreboard players set " §4Resetting map §f[§c14§f]" skywars 8
execute @e[type=armor_stand,name=system,scores={reset=30}] ~ ~ ~ /playsound random.click @a

execute @e[type=armor_stand,name=system,scores={reset=50}] ~ ~ ~ /scoreboard players reset " §4Resetting map §f[§c14§f]" skywars
execute @e[type=armor_stand,name=system,scores={reset=50}] ~ ~ ~ /scoreboard players set " §4Resetting map §f[§c13§f]" skywars 8
execute @e[type=armor_stand,name=system,scores={reset=50}] ~ ~ ~ /playsound random.click @a

execute @e[type=armor_stand,name=system,scores={reset=70}] ~ ~ ~ /scoreboard players reset " §4Resetting map §f[§c13§f]" skywars
execute @e[type=armor_stand,name=system,scores={reset=70}] ~ ~ ~ /scoreboard players set " §4Resetting map §f[§c12§f]" skywars 8
execute @e[type=armor_stand,name=system,scores={reset=70}] ~ ~ ~ /playsound random.click @a

execute @e[type=armor_stand,name=system,scores={reset=90}] ~ ~ ~ /scoreboard players reset " §4Resetting map §f[§c12§f]" skywars
execute @e[type=armor_stand,name=system,scores={reset=90}] ~ ~ ~ /scoreboard players set " §4Resetting map §f[§c11§f]" skywars 8
execute @e[type=armor_stand,name=system,scores={reset=90}] ~ ~ ~ /playsound random.click @a

execute @e[type=armor_stand,name=system,scores={reset=110}] ~ ~ ~ /scoreboard players reset " §4Resetting map §f[§c11§f]" skywars
execute @e[type=armor_stand,name=system,scores={reset=110}] ~ ~ ~ /scoreboard players set " §4Resetting map §f[§c10§f]" skywars 8
execute @e[type=armor_stand,name=system,scores={reset=110}] ~ ~ ~ /playsound random.click @a

execute @e[type=armor_stand,name=system,scores={reset=110}] ~ ~ ~ detect 0 20 0 wool 1 /scoreboard players random @e[type=armor_stand,name=system] level 1 10
execute @e[type=armor_stand,name=system,scores={reset=110}] ~ ~ ~ detect 0 20 0 wool 0 /scoreboard players set @e[type=armor_stand,name=system,scores={level=10}] level 0
execute @e[type=armor_stand,name=system,scores={reset=110}] ~ ~ ~ detect 0 20 0 wool 0 /scoreboard players add @e[type=armor_stand,name=system,scores={level=0..9}] level 1
execute @e[type=armor_stand,name=system,scores={reset=110}] ~ ~ ~ detect 0 20 0 wool 2 /scoreboard players set @e[type=armor_stand,name=system,scores={level=1..10}] level 1
execute @e[type=armor_stand,name=system,scores={reset=110}] ~ ~ ~ detect 0 20 0 wool 3 /scoreboard players set @e[type=armor_stand,name=system,scores={level=1..10}] level 2
execute @e[type=armor_stand,name=system,scores={reset=110}] ~ ~ ~ detect 0 20 0 wool 4 /scoreboard players set @e[type=armor_stand,name=system,scores={level=1..10}] level 3
execute @e[type=armor_stand,name=system,scores={reset=110}] ~ ~ ~ detect 0 20 0 wool 5 /scoreboard players set @e[type=armor_stand,name=system,scores={level=1..10}] level 4
execute @e[type=armor_stand,name=system,scores={reset=110}] ~ ~ ~ detect 0 20 0 wool 6 /scoreboard players set @e[type=armor_stand,name=system,scores={level=1..10}] level 5
execute @e[type=armor_stand,name=system,scores={reset=110}] ~ ~ ~ detect 0 20 0 wool 7 /scoreboard players set @e[type=armor_stand,name=system,scores={level=1..10}] level 6
execute @e[type=armor_stand,name=system,scores={reset=110}] ~ ~ ~ detect 0 20 0 wool 8 /scoreboard players set @e[type=armor_stand,name=system,scores={level=1..10}] level 7
execute @e[type=armor_stand,name=system,scores={reset=110}] ~ ~ ~ detect 0 20 0 wool 9 /scoreboard players set @e[type=armor_stand,name=system,scores={level=1..10}] level 8
execute @e[type=armor_stand,name=system,scores={reset=110}] ~ ~ ~ detect 0 20 0 wool 10 /scoreboard players set @e[type=armor_stand,name=system,scores={level=1..10}] level 9
execute @e[type=armor_stand,name=system,scores={reset=110}] ~ ~ ~ detect 0 20 0 wool 11 /scoreboard players set @e[type=armor_stand,name=system,scores={level=1..10}] level 10

execute @e[type=armor_stand,name=system,scores={reset=130}] ~ ~ ~ /scoreboard players reset " §4Resetting map §f[§c10§f]" skywars
execute @e[type=armor_stand,name=system,scores={reset=130}] ~ ~ ~ /scoreboard players set " §4Resetting map §f[§c9§f]" skywars 8
execute @e[type=armor_stand,name=system,scores={reset=130}] ~ ~ ~ /playsound random.click @a
execute @e[type=armor_stand,name=system,scores={reset=130}] ~ ~ ~ /scoreboard objectives remove players
execute @e[type=armor_stand,name=system,scores={reset=130}] ~ ~ ~ /scoreboard objectives add players dummy

execute @e[type=armor_stand,name=system,scores={reset=130,level=1}] ~ ~ ~ /structure load ruins -31 0 969
execute @e[type=armor_stand,name=system,scores={reset=130,level=2}] ~ ~ ~ /structure load flowerpot -31 0 969
execute @e[type=armor_stand,name=system,scores={reset=130,level=3}] ~ ~ ~ /structure load nether -31 0 969
execute @e[type=armor_stand,name=system,scores={reset=130,level=4}] ~ ~ ~ /structure load snowy -31 0 969
execute @e[type=armor_stand,name=system,scores={reset=130,level=5}] ~ ~ ~ /structure load tron -31 0 969
execute @e[type=armor_stand,name=system,scores={reset=130,level=6}] ~ ~ ~ /structure load natural -31 0 969
execute @e[type=armor_stand,name=system,scores={reset=130,level=7}] ~ ~ ~ /structure load oasis -31 0 969
execute @e[type=armor_stand,name=system,scores={reset=130,level=8}] ~ ~ ~ /structure load ice_cream -31 0 969
execute @e[type=armor_stand,name=system,scores={reset=130,level=9}] ~ ~ ~ /structure load mushroom -31 0 969
execute @e[type=armor_stand,name=system,scores={reset=130,level=10}] ~ ~ ~ /structure load paris -31 0 969

execute @e[type=armor_stand,name=system,scores={reset=150}] ~ ~ ~ /scoreboard players reset " §4Resetting map §f[§c9§f]" skywars
execute @e[type=armor_stand,name=system,scores={reset=150}] ~ ~ ~ /scoreboard players set " §4Resetting map §f[§c8§f]" skywars 8
execute @e[type=armor_stand,name=system,scores={reset=150}] ~ ~ ~ /playsound random.click @a

execute @e[type=armor_stand,name=system,scores={reset=170}] ~ ~ ~ /scoreboard players reset " §4Resetting map §f[§c8§f]" skywars
execute @e[type=armor_stand,name=system,scores={reset=170}] ~ ~ ~ /scoreboard players set " §4Resetting map §f[§c7§f]" skywars 8
execute @e[type=armor_stand,name=system,scores={reset=170}] ~ ~ ~ /playsound random.click @a
execute @e[type=armor_stand,name=system,scores={reset=170,option_2=1}] ~ ~ ~ /structure load normal -3 242 -1003
execute @e[type=armor_stand,name=system,scores={reset=170,option_2=2}] ~ ~ ~ /structure load extreme -3 242 -1003

execute @e[type=armor_stand,name=system,scores={reset=190}] ~ ~ ~ /scoreboard players reset " §4Resetting map §f[§c7§f]" skywars
execute @e[type=armor_stand,name=system,scores={reset=190}] ~ ~ ~ /scoreboard players set " §4Resetting map §f[§c6§f]" skywars 8
execute @e[type=armor_stand,name=system,scores={reset=190}] ~ ~ ~ /playsound random.click @a

execute @e[type=armor_stand,name=system,scores={reset=210}] ~ ~ ~ /scoreboard players reset " §4Resetting map §f[§c6§f]" skywars
execute @e[type=armor_stand,name=system,scores={reset=210}] ~ ~ ~ /scoreboard players set " §4Resetting map §f[§c5§f]" skywars 8
execute @e[type=armor_stand,name=system,scores={reset=210}] ~ ~ ~ /playsound random.click @a
execute @e[type=armor_stand,name=system,scores={reset=210}] ~ ~ ~ /function random

execute @e[type=armor_stand,name=system,scores={reset=230}] ~ ~ ~ /scoreboard players reset " §4Resetting map §f[§c5§f]" skywars
execute @e[type=armor_stand,name=system,scores={reset=230}] ~ ~ ~ /scoreboard players set " §4Resetting map §f[§c4§f]" skywars 8
execute @e[type=armor_stand,name=system,scores={reset=230}] ~ ~ ~ /playsound random.click @a

execute @e[type=armor_stand,name=system,scores={reset=250}] ~ ~ ~ /scoreboard players reset " §4Resetting map §f[§c4§f]" skywars
execute @e[type=armor_stand,name=system,scores={reset=250}] ~ ~ ~ /scoreboard players set " §4Resetting map §f[§c3§f]" skywars 8
execute @e[type=armor_stand,name=system,scores={reset=250}] ~ ~ ~ /playsound random.click @a
execute @e[type=armor_stand,name=system,scores={reset=250}] ~ ~ ~ /setblock 0 26 0 wool 0
execute @e[type=armor_stand,name=system,scores={reset=250}] ~ ~ ~ /kill @e[type=item,x=-31,y=0,z=969,dx=62,dy=39,dz=62]

execute @e[type=armor_stand,name=system,scores={reset=270}] ~ ~ ~ /scoreboard players reset " §4Resetting map §f[§c3§f]" skywars
execute @e[type=armor_stand,name=system,scores={reset=270}] ~ ~ ~ /scoreboard players set " §4Resetting map §f[§c2§f]" skywars 8
execute @e[type=armor_stand,name=system,scores={reset=270}] ~ ~ ~ /playsound random.click @a

execute @e[type=armor_stand,name=system,scores={reset=290}] ~ ~ ~ /scoreboard players reset " §4Resetting map §f[§c2§f]" skywars
execute @e[type=armor_stand,name=system,scores={reset=290}] ~ ~ ~ /scoreboard players set " §4Resetting map §f[§c1§f]" skywars 8
execute @e[type=armor_stand,name=system,scores={reset=290}] ~ ~ ~ /playsound random.click @a

execute @e[type=armor_stand,name=system,scores={reset=310}] ~ ~ ~ /scoreboard players reset " §4Resetting map §f[§c1§f]" skywars
execute @e[type=armor_stand,name=system,scores={reset=310}] ~ ~ ~ /scoreboard players set " §4Resetting map §f[§c0§f]" skywars 8
execute @e[type=armor_stand,name=system,scores={reset=310}] ~ ~ ~ /playsound random.click @a

execute @e[type=armor_stand,name=system,scores={reset=311,mode=1}] ~ ~ ~ /structure load mode_normal -26 24 974
execute @e[type=armor_stand,name=system,scores={reset=311,mode=2}] ~ ~ ~ /structure load mode_red_vs_blue -26 24 974
execute @e[type=armor_stand,name=system,scores={reset=311}] ~ ~ ~ /scoreboard players reset " §4Resetting map §f[§c0§f]" skywars
execute @e[type=armor_stand,name=system,scores={reset=311}] ~ ~ ~ /playsound random.click @a
execute @e[type=armor_stand,name=system,scores={reset=311}] ~ ~ ~ /fill -2 37 15 2 37 15 water
execute @e[type=armor_stand,name=system,scores={reset=311}] ~ ~ ~ /playsound tile.piston.in @a
execute @e[type=armor_stand,name=system,scores={reset=311}] ~ ~ ~ /setblock 0 25 0 wool 0