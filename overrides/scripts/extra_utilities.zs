# Machines
mods.jei.JEI.removeAndHide(<extrautils2:machine>.withTag({Type: "extrautils2:furnace"}));
mods.jei.JEI.removeAndHide(<extrautils2:machine>.withTag({Type: "extrautils2:crusher"}));
mods.jei.JEI.hideCategory("xu2_machine_extrautils2:furnace");
mods.jei.JEI.hideCategory("xu2_machine_extrautils2:crusher");


# Generators
mods.jei.JEI.removeAndHide(<extrautils2:machine>.withTag({Type: "extrautils2:generator_survival"}));
mods.jei.JEI.removeAndHide(<extrautils2:machine>.withTag({Type: "extrautils2:generator"}));
mods.jei.JEI.removeAndHide(<extrautils2:machine>.withTag({Type: "extrautils2:generator_culinary"}));
mods.jei.JEI.removeAndHide(<extrautils2:machine>.withTag({Type: "extrautils2:generator_lava"}));
mods.jei.JEI.removeAndHide(<extrautils2:machine>.withTag({Type: "extrautils2:generator_redstone"}));
mods.jei.JEI.removeAndHide(<extrautils2:machine>.withTag({Type: "extrautils2:generator_ender"}));
mods.jei.JEI.removeAndHide(<extrautils2:machine>.withTag({Type: "extrautils2:generator_potion"}));
mods.jei.JEI.removeAndHide(<extrautils2:machine>.withTag({Type: "extrautils2:generator_pink"}));
mods.jei.JEI.removeAndHide(<extrautils2:machine>.withTag({Type: "extrautils2:generator_overclock"}));
mods.jei.JEI.removeAndHide(<extrautils2:machine>.withTag({Type: "extrautils2:generator_tnt"}));
mods.jei.JEI.removeAndHide(<extrautils2:machine>.withTag({Type: "extrautils2:generator_netherstar"}));
mods.jei.JEI.removeAndHide(<extrautils2:machine>.withTag({Type: "extrautils2:generator_dragonsbreath"}));
mods.jei.JEI.removeAndHide(<extrautils2:machine>.withTag({Type: "extrautils2:generator_ice"}));
mods.jei.JEI.removeAndHide(<extrautils2:machine>.withTag({Type: "extrautils2:generator_death"}));
mods.jei.JEI.removeAndHide(<extrautils2:machine>.withTag({Type: "extrautils2:generator_enchant"}));
mods.jei.JEI.removeAndHide(<extrautils2:machine>.withTag({Type: "extrautils2:generator_slime"}));

# Angel Ring
recipes.remove(<extrautils2:angelring>);
recipes.remove(<extrautils2:angelring:1>);
recipes.remove(<extrautils2:angelring:2>);
recipes.remove(<extrautils2:angelring:3>);
recipes.remove(<extrautils2:angelring:4>);
recipes.remove(<extrautils2:angelring:5>);
recipes.addShaped(<extrautils2:angelring>, [[<ore:blockGlass>, <gravisuite:crafting:3>, <ore:blockGlass>], [<ore:ingotGold>, <extrautils2:ingredients>, <ore:ingotGold>], [<extrautils2:goldenlasso>.withTag({Animal: {id: "minecraft:bat"}}), <gravisuite:crafting:3>, <extrautils2:goldenlasso:1>.withTag({Animal: {id: "minecraft:ghast"}})]]);
recipes.addShaped(<extrautils2:angelring:1>, [[<minecraft:feather>, <gravisuite:crafting:3>, <minecraft:feather>], [<ore:ingotGold>, <extrautils2:ingredients>, <ore:ingotGold>], [<extrautils2:goldenlasso>.withTag({Animal: {id: "minecraft:bat"}}), <gravisuite:crafting:3>, <extrautils2:goldenlasso:1>.withTag({Animal: {id: "minecraft:ghast"}})]]);
recipes.addShaped(<extrautils2:angelring:2>, [[<ore:dyePurple>, <gravisuite:crafting:3>, <ore:dyePink>], [<ore:ingotGold>, <extrautils2:ingredients>, <ore:ingotGold>], [<extrautils2:goldenlasso>.withTag({Animal: {id: "minecraft:bat"}}), <gravisuite:crafting:3>, <extrautils2:goldenlasso:1>.withTag({Animal: {id: "minecraft:ghast"}})]]);
recipes.addShaped(<extrautils2:angelring:3>, [[<ore:leather>, <gravisuite:crafting:3>, <ore:leather>], [<ore:ingotGold>, <extrautils2:ingredients>, <ore:ingotGold>], [<extrautils2:goldenlasso>.withTag({Animal: {id: "minecraft:bat"}}), <gravisuite:crafting:3>, <extrautils2:goldenlasso:1>.withTag({Animal: {id: "minecraft:ghast"}})]]);
recipes.addShaped(<extrautils2:angelring:4>, [[<ore:nuggetGold>, <gravisuite:crafting:3>, <ore:nuggetGold>], [<ore:ingotGold>, <extrautils2:ingredients>, <ore:ingotGold>], [<extrautils2:goldenlasso>.withTag({Animal: {id: "minecraft:bat"}}), <gravisuite:crafting:3>, <extrautils2:goldenlasso:1>.withTag({Animal: {id: "minecraft:ghast"}})]]);
recipes.addShaped(<extrautils2:angelring:5>, [[<ore:coal>, <gravisuite:crafting:3>, <ore:charcoal>], [<ore:ingotGold>, <extrautils2:ingredients>, <ore:ingotGold>], [<extrautils2:goldenlasso>.withTag({Animal: {id: "minecraft:bat"}}), <gravisuite:crafting:3>, <extrautils2:goldenlasso:1>.withTag({Animal: {id: "minecraft:ghast"}})]]);
recipes.addShapeless(<extrautils2:angelring>, [<ore:blockGlass>, <extrautils2:angelring:*>, <ore:blockGlass>]);
recipes.addShapeless(<extrautils2:angelring:1>, [<ore:feather>, <extrautils2:angelring:*>, <ore:feather>]);
recipes.addShapeless(<extrautils2:angelring:2>, [<ore:dyePurple>, <extrautils2:angelring:*>, <ore:dyePink>]);
recipes.addShapeless(<extrautils2:angelring:3>, [<ore:leather>, <extrautils2:angelring:*>, <ore:leather>]);
recipes.addShapeless(<extrautils2:angelring:4>, [<ore:nuggetGold>, <extrautils2:angelring:*>, <ore:nuggetGold>]);
recipes.addShapeless(<extrautils2:angelring:5>, [<ore:coal>, <extrautils2:angelring:*>, <ore:charcoal>]);