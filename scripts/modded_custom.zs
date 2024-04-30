import crafttweaker.api.ingredient.type.IIngredientEmpty;

<recipetype:minecraft:crafting>.removeByName("enderio:alloy_smelter");
craftingTable.addShaped("alloy_smelter", <item:enderio:alloy_smelter>, [
  [<item:enderio:dark_steel_ingot>, <item:enderio:primitive_alloy_smelter>, <item:enderio:dark_steel_ingot>],
  [<item:enderio:primitive_alloy_smelter>, <item:enderio:void_chassis>, <item:enderio:primitive_alloy_smelter>],
  [<item:enderio:iron_gear>, <item:minecraft:cauldron>, <item:enderio:iron_gear>]
]);

<recipetype:minecraft:crafting>.removeByName("mekanism:metallurgic_infuser");
craftingTable.addShaped("metallurgic_infuser", <item:mekanism:metallurgic_infuser>, [
  [<item:enderio:dark_steel_ingot>, <item:minecraft:blast_furnace>, <item:enderio:dark_steel_ingot>],
  [<item:minecraft:redstone>, <tag:items:forge:ingots/osmium>, <item:minecraft:redstone>],
  [<item:enderio:dark_steel_ingot>, <item:minecraft:blast_furnace>, <item:enderio:dark_steel_ingot>]
]);