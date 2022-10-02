// Coded By: Felipe G a m e r For: True Cowboy.

import { World, Commands, BlockLocation } from "mojang-minecraft";

export function getPlayerDimension(player) {
  let location = new BlockLocation(Math.floor(player.location.x), Math.floor(player.location.y), Math.floor(player.location.z));
  
  let dimensions = [
    World.getDimension("overworld"),
    World.getDimension("nether"),
    World.getDimension("the end")
    ];
    
    let entitiesAtPlayerLocation = [
      dimensions[0].getEntitiesAtBlockLocation(location),
      dimensions[1].getEntitiesAtBlockLocation(location),
      dimensions[2].getEntitiesAtBlockLocation(location)
      ];
      
      let dimension;
      
      entitiesAtPlayerLocation.forEach(entities => {
        entities.forEach(entity => {
          if (entity.name == player.name && entity.id == "minecraft:player") {
            
            dimension = dimensions[entitiesAtPlayerLocation.indexOf(entities)];
            
          }
        });
      });
      
      return dimension;
      
}

export function hasTag(player, tag) {
  let d = World.getDimension("overworld");
  
  try {
    let msg = Commands.run(`tag @a[name = "${player.name}"] list`, d).statusMessage;
    let msgSplited = msg.split(":");
    let playerTags = msgSplited.length > 1 ? msgSplited[1].match(/§a(.*?)§r/)[1].trim().split(",") : [];
    
    return playerTags.find(it => it == tag);
  } catch (e) {}
}

export function scoreboardExists(scoreboardName) {
  let scoreboards = "";
  
  try {
    scoreboards = Commands.run(`scoreboard objectives list`, World.getDimension("overworld")).statusMessage;
  } catch (e) {}
  
  return scoreboards.match(/ (.*?):/g) ? scoreboards.match(/ (.*?):/g).map(i => i.replace(":", "").trim()).indexOf(scoreboardName) > -1 : false;
}

export function getDimensionName(player) {
  let location = new BlockLocation(Math.floor(player.location.x), Math.floor(player.location.y), Math.floor(player.location.z));
  
  let dimensions = [
    World.getDimension("overworld"),
    World.getDimension("nether"),
    World.getDimension("the end")
    ];
    
    let entitiesAtPlayerLocation = [
      dimensions[0].getEntitiesAtBlockLocation(location),
      dimensions[1].getEntitiesAtBlockLocation(location),
      dimensions[2].getEntitiesAtBlockLocation(location)
      ];
      
      let dimension;
      let dimensions_ = [ "overworld", "nether", "end" ];
      
      entitiesAtPlayerLocation.forEach(entities => {
        entities.forEach(entity => {
          if (entity.name == player.name && entity.id == "minecraft:player") {
            
            dimension = dimensions_[entitiesAtPlayerLocation.indexOf(entities)];
            
          }
        });
      });
      
      return dimension;
}