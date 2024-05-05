// Adding to existing Tags

// Adds Dirt to <tag:items:minecraft:planks>, allowing it to be used in place of Planks in recipes.
//<tag:items:minecraft:planks>.add(<item:minecraft:dirt>);

// Creating new Tags
// Tags need to be created before they can be used in a recipe, if you are splitting your Tag creation into a separate script, make sure that the script is loaded before you use it by using the priority preprocessor system.
// A tag is created once an element is added to it, for example:

// <tag:items:crafttweaker:pickaxe>; // Does not create the Tag.
// <tag:items:crafttweaker:pickaxe>.add(<item:minecraft:diamond_pickaxe>); // Creates the Tag and adds a Diamond to it.
// <tag:items:crafttweaker:pickaxe>.add(<item:minecraft:iron_pickaxe>); // Adds Iron Pickaxe to the Tag that was created by the line above.

<tag:items:forge:tools>.add(<item:justhammers:stone_hammer>);
<tag:items:minecraft:tools>.add(<item:justhammers:stone_hammer>);

