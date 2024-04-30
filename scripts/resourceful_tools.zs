import crafttweaker.api.ingredient.type.IIngredientEmpty;

<recipetype:minecraft:crafting>.removeByName("resourceful_tools:tree_trimmer_copper");
craftingTable.addShaped("resourceful_tools/tree_trimmer_copper_0", <item:resourceful_tools:tree_trimmer_copper>, [
    [IIngredientEmpty.getInstance(), <tag:items:forge:nuggets/copper>, <tag:items:forge:nuggets/copper>],
    [IIngredientEmpty.getInstance(), <item:minecraft:stick>, IIngredientEmpty.getInstance()],
    [<item:minecraft:stick>, IIngredientEmpty.getInstance(), IIngredientEmpty.getInstance()]]);

<recipetype:minecraft:crafting>.removeByName("resourceful_tools:hook_knife_copper");
craftingTable.addShaped("resourceful_tools/hook_knife_copper_0", <item:resourceful_tools:hook_knife_copper>, [
    [<item:create:copper_nugget>, IIngredientEmpty.getInstance()],
    [IIngredientEmpty.getInstance(), <item:minecraft:copper_ingot>],
    [<item:minecraft:stick>, IIngredientEmpty.getInstance()]]);

<recipetype:minecraft:crafting>.removeByName("resourceful_tools:hand_pick_copper");
craftingTable.addShaped("resourceful_tools/hand_pick_copper_0", <item:resourceful_tools:hand_pick_copper>, [
    [<item:create:copper_nugget>, IIngredientEmpty.getInstance(), IIngredientEmpty.getInstance()],
    [IIngredientEmpty.getInstance(), <item:minecraft:copper_ingot>, IIngredientEmpty.getInstance()],
    [<item:minecraft:stick>, IIngredientEmpty.getInstance(), <item:create:copper_nugget>]]);

<recipetype:minecraft:crafting>.removeByName("resourceful_tools:hand_scraper_copper");
craftingTable.addShaped("resourceful_tools/hand_scraper_copper_0", <item:resourceful_tools:hand_scraper_copper>, [
    [IIngredientEmpty.getInstance(), <item:create:copper_nugget>, IIngredientEmpty.getInstance()],
    [IIngredientEmpty.getInstance(), <item:create:copper_nugget>, <item:create:copper_nugget>],
    [<item:minecraft:stick>, IIngredientEmpty.getInstance(), IIngredientEmpty.getInstance()]]);

<recipetype:minecraft:crafting>.removeByName("resourceful_tools:clam_digger_copper");
craftingTable.addShaped("resourceful_tools/clam_digger_copper_0", <item:resourceful_tools:clam_digger_copper>, [
    [IIngredientEmpty.getInstance(), IIngredientEmpty.getInstance(), <item:minecraft:copper_ingot>],
    [IIngredientEmpty.getInstance(), <item:create:copper_nugget>, IIngredientEmpty.getInstance()],
    [<item:minecraft:stick>, IIngredientEmpty.getInstance(), IIngredientEmpty.getInstance()]]);

<recipetype:minecraft:crafting>.removeByName("resourceful_tools:copper_nugget_to_ingot");