import crafttweaker.api.item.IItemStack;
import crafttweaker.api.ingredient.IIngredient;

import stdlib.List;

furnace.remove(<tag:items:forge:ingots>);
blastFurnace.remove(<tag:items:forge:ingots>);

function rawOreToNuggets(rawOre as IItemStack, nuggets as IItemStack) as void {
  furnace.addRecipe("smelt_" + rawOre.registryName.getPath() + "_to_" + nuggets.registryName.getPath(), nuggets * 6, rawOre, 0.7, 200);
  blastFurnace.addRecipe("blast" + rawOre.registryName.getPath() + "_to_" + nuggets.registryName.getPath(), nuggets * 6, rawOre, 0.7, 100);
}

function oreDustToIngots(name as string, dust as IIngredient, ingot as IItemStack) as void {
  blastFurnace.addRecipe(name, ingot, dust, 0.7, 100);
}

var metals as string[] = ["minecraft:raw_copper", "minecraft:raw_gold", "minecraft:raw_iron", "mekanism:raw_osmium"];
var nuggets as string[] = ["create:copper_nugget", "minecraft:gold_nugget", "minecraft:iron_nugget", "mekanism:nugget_osmium"];

for index, metal in metals {
  rawOreToNuggets(<item:${metal}>, <item:${nuggets[index]}>);
}

var ores as string[] = [
  "copper",
  "gold",
  "iron",
  "lead",
  "osmium",
  "steel",
  "tin",
  "uranium"
];

var ingots as string[] = [
  "minecraft:copper_ingot",
  "minecraft:gold_ingot",
  "minecraft:iron_ingot",
  "mekanism:ingot_lead",
  "mekanism:ingot_osmium",
  "mekanism:ingot_steel",
  "mekanism:ingot_tin",
  "mekanism:ingot_uranium"
];

for index, ore in ores {
  if (ore != "steel") {
    craftingTable.addShapeless("raw_" + ore, <item:mekanism:dust_${ore}>, [<tagManager:items>.tag(<resource:forge:raw_materials/${ore}>), <item:justhammers:stone_hammer>.anyDamage().transformDamage()]);
  }
  oreDustToIngots(ore + "_dust_to_" + ore + "_ingot", <tagManager:items>.tag(<resource:forge:dusts/${ore}>), <item:${ingots[index]}>);
}

blastFurnace.addRecipe("ctgui/new/blasting/bricks", <item:minecraft:brick>, <item:minecraft:clay_ball>, 0.1, 100);
blastFurnace.addRecipe("ctgui/new/blasting/glass", <item:minecraft:glass>, <tag:items:minecraft:smelts_to_glass>, 0.1, 100);
blastFurnace.addRecipe("ctgui/new/blasting/nether_brick", <item:minecraft:nether_brick>, <tag:items:forge:netherrack>, 0.1, 100);

