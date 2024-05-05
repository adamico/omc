#priority 100
import crafttweaker.api.ingredient.type.IIngredientEmpty;
import stdlib.List;

// Adding to existing Tags

// Adds Dirt to <tag:items:minecraft:planks>, allowing it to be used in place of Planks in recipes.
//<tag:items:minecraft:planks>.add(<item:minecraft:dirt>);

// Creating new Tags
// Tags need to be created before they can be used in a recipe, if you are splitting your Tag creation into a separate script, make sure that the script is loaded before you use it by using the priority preprocessor system.
// A tag is created once an element is added to it, for example:

// <tag:items:crafttweaker:pickaxe>; // Does not create the Tag.
// <tag:items:crafttweaker:pickaxe>.add(<item:minecraft:diamond_pickaxe>); // Creates the Tag and adds a Diamond to it.
// <tag:items:crafttweaker:pickaxe>.add(<item:minecraft:iron_pickaxe>); // Adds Iron Pickaxe to the Tag that was created by the line above.

var tools as string[] = ["hand_pick", "tree_trimmer", "hand_tiller", "hand_scraper"];

for tool in tools {
    <tagManager:items>.tag(<resource:crafttweaker:${tool}s>).add(<item:resourceful_tools:${tool}_copper>);
    <tagManager:items>.tag(<resource:crafttweaker:${tool}s>).add(<item:resourceful_tools:${tool}>);
}

<recipetype:minecraft:crafting>.removeByName("resourceful_tools:tree_trimmer_copper");
craftingTable.addShaped("resourceful_tools/tree_trimmer_copper_0", <item:resourceful_tools:tree_trimmer_copper>, [
    [IIngredientEmpty.getInstance(), <item:minecraft:string>, <tag:items:forge:nuggets/copper>],
    [IIngredientEmpty.getInstance(), <item:minecraft:stick>, IIngredientEmpty.getInstance()],
    [<item:minecraft:stick>, IIngredientEmpty.getInstance(), IIngredientEmpty.getInstance()]
]);

<recipetype:minecraft:crafting>.removeByName("resourceful_tools:tree_trimmer");
craftingTable.addShaped("resourceful_tools/tree_trimmer_0", <item:resourceful_tools:tree_trimmer>, [
    [IIngredientEmpty.getInstance(), <item:minecraft:string>, <tag:items:forge:nuggets/iron>],
    [IIngredientEmpty.getInstance(), <item:minecraft:stick>, IIngredientEmpty.getInstance()],
    [<item:minecraft:stick>, IIngredientEmpty.getInstance(), IIngredientEmpty.getInstance()]
]);

<recipetype:minecraft:crafting>.removeByName("resourceful_tools:hook_knife_copper");
craftingTable.addShaped("resourceful_tools/hook_knife_copper_0", <item:resourceful_tools:hook_knife_copper>, [
    [<tag:items:forge:nuggets/copper>, IIngredientEmpty.getInstance()],
    [IIngredientEmpty.getInstance(), <item:minecraft:string>],
    [<item:minecraft:stick>, IIngredientEmpty.getInstance()]
]);

<recipetype:minecraft:crafting>.removeByName("resourceful_tools:hook_knife");
craftingTable.addShaped("resourceful_tools/hook_knife_0", <item:resourceful_tools:hook_knife>, [
    [<tag:items:forge:nuggets/iron>, IIngredientEmpty.getInstance()],
    [IIngredientEmpty.getInstance(), <item:minecraft:string>],
    [<item:minecraft:stick>, IIngredientEmpty.getInstance()]
]);

<recipetype:minecraft:crafting>.removeByName("resourceful_tools:hand_pick_copper");
craftingTable.addShaped("resourceful_tools/hand_pick_copper_0", <item:resourceful_tools:hand_pick_copper>, [
    [<tag:items:forge:nuggets/copper>, IIngredientEmpty.getInstance(), IIngredientEmpty.getInstance()],
    [IIngredientEmpty.getInstance(), <item:minecraft:string>, IIngredientEmpty.getInstance()],
    [<item:minecraft:stick>, IIngredientEmpty.getInstance(), <tag:items:forge:nuggets/copper>]
]);

<recipetype:minecraft:crafting>.removeByName("resourceful_tools:hand_pick");
craftingTable.addShaped("resourceful_tools/hand_pick_0", <item:resourceful_tools:hand_pick>, [
    [<tag:items:forge:nuggets/iron>, IIngredientEmpty.getInstance(), IIngredientEmpty.getInstance()],
    [IIngredientEmpty.getInstance(), <item:minecraft:string>, IIngredientEmpty.getInstance()],
    [<item:minecraft:stick>, IIngredientEmpty.getInstance(), <tag:items:forge:nuggets/iron>]
]);

<recipetype:minecraft:crafting>.removeByName("resourceful_tools:hand_scraper_copper");
craftingTable.addShaped("resourceful_tools/hand_scraper_copper_0", <item:resourceful_tools:hand_scraper_copper>, [
    [IIngredientEmpty.getInstance(), <tag:items:forge:nuggets/copper>, IIngredientEmpty.getInstance()],
    [IIngredientEmpty.getInstance(), <item:minecraft:string>, <tag:items:forge:nuggets/copper>],
    [<item:minecraft:stick>, IIngredientEmpty.getInstance(), IIngredientEmpty.getInstance()]
]);

<recipetype:minecraft:crafting>.removeByName("resourceful_tools:hand_scraper");
craftingTable.addShaped("resourceful_tools/hand_scraper_0", <item:resourceful_tools:hand_scraper>, [
    [IIngredientEmpty.getInstance(), <tag:items:forge:nuggets/iron>, IIngredientEmpty.getInstance()],
    [IIngredientEmpty.getInstance(), <item:minecraft:string>, <tag:items:forge:nuggets/iron>],
    [<item:minecraft:stick>, IIngredientEmpty.getInstance(), IIngredientEmpty.getInstance()]
]);

<recipetype:minecraft:crafting>.removeByName("resourceful_tools:clam_digger_copper");
craftingTable.addShaped("resourceful_tools/clam_digger_copper_0", <item:resourceful_tools:clam_digger_copper>, [
    [IIngredientEmpty.getInstance(), IIngredientEmpty.getInstance(), <item:minecraft:string>],
    [IIngredientEmpty.getInstance(), <tag:items:forge:nuggets/copper>, IIngredientEmpty.getInstance()],
    [<item:minecraft:stick>, IIngredientEmpty.getInstance(), IIngredientEmpty.getInstance()]
]);

<recipetype:minecraft:crafting>.removeByName("resourceful_tools:clam_digger");
craftingTable.addShaped("resourceful_tools/clam_digger_0", <item:resourceful_tools:clam_digger>, [
    [IIngredientEmpty.getInstance(), IIngredientEmpty.getInstance(), <item:minecraft:string>],
    [IIngredientEmpty.getInstance(), <tag:items:forge:nuggets/iron>, IIngredientEmpty.getInstance()],
    [<item:minecraft:stick>, IIngredientEmpty.getInstance(), IIngredientEmpty.getInstance()]
]);

<recipetype:minecraft:crafting>.removeByName("resourceful_tools:hand_tiller_copper");
craftingTable.addShaped("resourceful_tools/hand_tiller_copper", <item:resourceful_tools:hand_tiller_copper>, [
    [IIngredientEmpty.getInstance(), <tag:items:forge:nuggets/copper>, <tag:items:forge:nuggets/copper>],
    [IIngredientEmpty.getInstance(), <item:minecraft:string>, <tag:items:forge:nuggets/copper>],
    [<item:minecraft:stick>, IIngredientEmpty.getInstance(), IIngredientEmpty.getInstance()]
]);

<recipetype:minecraft:crafting>.removeByName("resourceful_tools:hand_tiller");
craftingTable.addShaped("resourceful_tools/hand_tiller", <item:resourceful_tools:hand_tiller>, [
    [IIngredientEmpty.getInstance(), <tag:items:forge:nuggets/iron>, <tag:items:forge:nuggets/iron>],
    [IIngredientEmpty.getInstance(), <item:minecraft:string>, <tag:items:forge:nuggets/iron>],
    [<item:minecraft:stick>, IIngredientEmpty.getInstance(), IIngredientEmpty.getInstance()]
]);

<recipetype:minecraft:crafting>.removeByName("resourceful_tools:copper_nugget_to_ingot");
<recipetype:minecraft:crafting>.removeByName("resourceful_tools:copper_nugget_from_ingot");
