#loader gregtechmod

import mods.gregtechmod.Assembler;
import mods.gregtechmod.AlloySmelter;

# Solar Panel Covers
recipes.addShapeless(<gregtechmod:solar_panel_hv>, [<advanced_solar_panels:machines:4>]);
recipes.addShapeless(<gregtechmod:solar_panel_mv>, [<advanced_solar_panels:machines:3>]);
recipes.addShapeless(<gregtechmod:solar_panel_lv>, [<advanced_solar_panels:machines:2>]);
recipes.addShapeless(<advanced_solar_panels:machines:4>, [<gregtechmod:solar_panel_hv>]);
recipes.addShapeless(<advanced_solar_panels:machines:3>, [<gregtechmod:solar_panel_mv>]);
recipes.addShapeless(<advanced_solar_panels:machines:2>, [<gregtechmod:solar_panel_lv>]);

# Change Gold Gear
Assembler.removeByOutput(<thermalfoundation:material:25>);
Assembler.addRecipe([<gregtechmod:rod_gold> * 4, <gregtechmod:plate_gold> * 4], <thermalfoundation:material:25>, 160 * 20, 4);

# Unify Bronze Ingot
AlloySmelter.removeByOutput(<ic2:ingot:1>);
AlloySmelter.addRecipe([<ore:ingotTin>, <ore:ingotCopper> * 3], <thermalfoundation:material:163> * 4, 5);