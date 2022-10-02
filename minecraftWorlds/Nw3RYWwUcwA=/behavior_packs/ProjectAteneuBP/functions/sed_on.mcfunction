scoreboard objectives add sed dummy
execute @a[tag=!start] ~ ~ ~ scoreboard players set @p sed 0
execute @a[tag=!start] ~ ~ ~ tag @p add start
 
scoreboard players remove @p sed 1
 
title @a[scores={sed=0}] title water_4
title @a[scores={sed=10..200}] title water_3
title @a[scores={sed=151..200}] title water_3
title @a[scores={sed=201..400}] title water_2
title @a[scores={sed=401..600}] title water_2
title @a[scores={sed=601..800}] title water_1
title @a[scores={sed=801..100}] title water_0
 
execute @a[scores={sed=0}] ~ ~ ~ effect @p instant_damage 1 255 true
execute @a[scores={sed=0}] ~ ~ ~ scoreboard players set @p sed 1000