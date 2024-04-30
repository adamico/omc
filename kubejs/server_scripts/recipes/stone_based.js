ServerEvents.recipes(event => {
  let millAndCrushRecipes = (output, input) => {
		[{name: 'createMilling', time: 250}, {name: 'createCrushing', time: 125}].forEach(recipe => {
			event.recipes[recipe.name](output, input).processingTime(recipe.time);
		});
	}

  event.remove({id: 'create:milling/sandstone'});
	event.remove({id: 'create:milling/gravel'});
	event.remove({id: 'create:crushing/gravel'});
	event.remove({id: 'create:milling/cobblestone'});
	event.remove({id: 'create:crushing/cobblestone'});

	millAndCrushRecipes(['minecraft:gravel'], 'minecraft:cobblestone');
	millAndCrushRecipes([Item.of('minecraft:sand'), Item.of('minecraft:flint').withChance(0.1), Item.of('minecraft:clay_ball').withChance(0.05)], 'minecraft:gravel');
})