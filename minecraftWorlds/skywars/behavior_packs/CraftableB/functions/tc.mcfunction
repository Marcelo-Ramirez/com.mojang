execute @p[rx=-35,rxm=-90] ~ ~ ~ execute @e[r=2,type=tc:biplane] ~ ~ ~ effect @s levitation 1 9 true
execute @p[rx=5,rxm=-10] ~ ~ ~ execute @e[r=2,type=tc:biplane] ~ ~ ~ effect @s levitation 1 2 true
execute @p[rx=-10,rxm=-35] ~ ~ ~ execute @e[r=2,type=tc:biplane] ~ ~ ~ effect @s levitation 1 5 true
execute @p[rx=90,rxm=5] ~ ~ ~ execute @e[r=2,type=tc:biplane] ~ ~ ~ effect @s slow_falling 1 0 true
execute @e[type=tc:biplane] ~~~ detect ~ ~-1 ~ air 0 effect @s speed 1 10 true
execute @e[type=tc:biplane] ~~~ detect ~ ~-1 ~ water 0 effect @s slowness 1 2 true

