export class Inventory {
  static sort(inv) {
    let itemArray = [];
    let container = inv.container;
    
    for (let i = 0; i < container.size; i++) {
      itemArray.push(container.getItem(i));
    }
    let itemArrayCopy = itemArray.slice();
    itemArray.sort(sort__alpha);
    
    for (let i in itemArray) {
      if (itemArrayCopy.indexOf(itemArray[i]) > itemArray.indexOf(itemArray[i])) {
        
        container.transferItem(itemArrayCopy.indexOf(itemArray[i]), itemArray.indexOf(itemArray[i]), container);
        
      } else if (itemArrayCopy.indexOf(itemArray[i]) < itemArray.indexOf(itemArray[i])) {
        
        container.transferItem(itemArrayCopy.indexOf(itemArray[i]), itemArray.indexOf(itemArray[i]), container);
        
      }
    }
    
  }
  
}

function sort__alpha(a, b) {
  let a_ = a.id.toLowerCase(), b_ = b.id.toLowerCase();
  
  return a_ < b_ ? -1 : a_ > b_ ? 1 : 0;
  
}