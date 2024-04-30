import crafttweaker.api.ingredient.type.IIngredientEmpty;

craftingTable.addShaped("chests_from_logs", <item:minecraft:chest> * 4, [
  [<tag:items:minecraft:logs>, <tag:items:minecraft:logs>, <tag:items:minecraft:logs>],
  [<tag:items:minecraft:logs>, IIngredientEmpty.getInstance(), <tag:items:minecraft:logs>],
  [<tag:items:minecraft:logs>, <tag:items:minecraft:logs>, <tag:items:minecraft:logs>]
]);