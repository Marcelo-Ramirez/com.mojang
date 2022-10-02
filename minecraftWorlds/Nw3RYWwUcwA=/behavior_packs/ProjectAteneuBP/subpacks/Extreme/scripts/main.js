// Coded by: Felipe G a m e r For: True Cowboy.

import { World, Commands, BlockLocation } from "mojang-minecraft";
import { getPlayerDimension, scoreboardExists } from "./lib/utils.js";
import { hasTag, getDimensionName } from "./lib/utils.js";

World.events.tick.subscribe(() => {
  let players = World.getPlayers();
  
  if (!scoreboardExists("arena")) {
    Commands.run(`scoreboard objectives add arena dummy`, World.getDimension("overworld"));
  } else if (!scoreboardExists("abrigo")) {
    Commands.run(`scoreboard objectives add abrigo dummy`, World.getDimension("overworld"));
  } else if (!scoreboardExists("freezing")) {
    Commands.run(`scoreboard objectives add freezing dummy`, World.getDimension("overworld"));
  } else if (!scoreboardExists("sed")) {
    Commands.run(`scoreboard objectives add sed dummy`, World.getDimension("overworld"));
  } else if (!scoreboardExists("sweep")) {
    Commands.run(`scoreboard objectives add sweep dummy`, World.getDimension("overworld"));
  }
  
  for (let i in players) {
    let p = players[i];
    let ref = new BlockLocation(Math.floor(p.location.x), Math.floor(p.location.y), Math.floor(p.location.z));
    
    if (!hasTag(p, "first_time_joined")) {
      
      Commands.run(`scoreboard players set @a[name = "${p.name}"] sed 16`, World.getDimension("overworld"));
      
      Commands.run(`tag @a[name = "${p.name}"] add first_time_joined`, World.getDimension("overworld"));
    }
    
    let bottomBlock = getPlayerDimension(p).getBlock(ref.offset(0, -2, 0));
    
    let BlockOnLegs = getPlayerDimension(p).getBlock(ref.offset(0, -1, 0));
    
    let bottomBlockData = bottomBlock.permutation;
    let blockOnLegsData = BlockOnLegs.permutation;
    
    let isSteapingSand = ((bottomBlockData.getProperty("sand_type") ? bottomBlockData.getProperty("sand_type").value == "normal" || bottomBlockData.getProperty("sand_type").value == "red" : false) || (bottomBlockData.type.id == "heavy:quicksand") || (blockOnLegsData.type.id == "heavy:quicksand_tramp"));
    
    let isInSand = ((blockOnLegsData.getProperty("sand_type") ? blockOnLegsData.getProperty("sand_type").value == "normal" || blockOnLegsData.getProperty("sand_type").value == "red" : false) || (blockOnLegsData.type.id == "heavy:quicksand") || (blockOnLegsData.type.id == "heavy:quicksand_tramp"));
    
    if (isInSand || isSteapingSand) {
      
      Commands.run(`scoreboard players set @a[name = "${p.name}"] arena 1`, World.getDimension("overworld"));
      
    } else if (getDimensionName(p) == "nether") {
      
      Commands.run(`scoreboard players set @a[name = "${p.name}"] arena 1`, World.getDimension("overworld"));
      
    } else {
      
      Commands.run(`scoreboard players set @a[name = "${p.name}"] arena 0`, World.getDimension("overworld"));
      
    }
  }
});