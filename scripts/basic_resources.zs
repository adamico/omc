craftingTable.addShapeless("clay_from_coarsed_dirt", <item:minecraft:clay>, [<item:minecraft:water_bucket>.transformReplace(<item:minecraft:bucket>), <item:minecraft:coarse_dirt>]);
craftingTable.addShapeless("gravel_from_cobblestone", <item:minecraft:gravel>, [<item:minecraft:iron_pickaxe>.anyDamage().transformDamage(), <item:minecraft:cobblestone>]);
craftingTable.addShapeless("sand_from_gravel", <item:minecraft:sand>, [<item:minecraft:iron_pickaxe>.anyDamage().transformDamage(), <item:minecraft:gravel>]);
craftingTable.addShapeless("bamboo_from_stick", <item:minecraft:bamboo> * 2, [<item:minecraft:stick>]);

craftingTable.addShapeless("flint_from_gravel", <item:minecraft:flint>, [<item:minecraft:gravel> * 3]);

craftingTable.addShapeless("biomesoplenty/orange_sand_to_sand", <item:minecraft:sand>, [<item:biomesoplenty:orange_sand>]);
craftingTable.addShapeless("biomesoplenty/white_sand_to_sand", <item:minecraft:sand>, [<item:biomesoplenty:white_sand>]);
craftingTable.addShapeless("biomesoplenty/black_sand_to_sand", <item:minecraft:sand>, [<item:biomesoplenty:black_sand>]);
craftingTable.addShapeless("minecraft/red_sand_to_sand", <item:minecraft:sand>, [<item:minecraft:red_sand>]);