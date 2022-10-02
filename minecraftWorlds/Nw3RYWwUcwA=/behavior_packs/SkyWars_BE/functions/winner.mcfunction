setblock -5 242 -998 air
execute @a ~ ~ ~ /playsound random.levelup @s ~ ~ ~ 3 1
execute @a ~ ~ ~ /playsound custom.challenge_complete @s ~ ~ ~
tellraw @a {"rawtext":[{"text":"§2= = = = = = = = = = = = = = = =§r\n\n      §e§k|||§r "},{"translate":"translate.text.fifteen"},{"selector":"@p[x=-31,y=0,z=969,dx=62,dy=39,dz=62,scores={players=1..8}]"},{"text":" §e§k|||§r\n\n§2= = = = = = = = = = = = = = = =§r"}]}
titleraw @p[x=-31,y=0,z=969,dx=62,dy=39,dz=62,scores={players=1..8}] title {"rawtext":[{"translate":"translate.text.sixteen"}]}
tp @a[x=-35,y=0,z=965,dx=69,dy=39,dz=69,scores={players=10}] 0 33 0 0 0
tp @a[x=-31,y=0,z=969,dx=62,dy=39,dz=62,scores={players=1..8}] 0 36 -18 0 0
scoreboard players set @e[type=armor_stand,name=system] celebration 1