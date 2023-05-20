import mods.ic2.Compressor;
import mods.ic2.Extractor;

# Readd Missing Compressor Recipes
Compressor.addRecipe(<minecraft:redstone_block>, <minecraft:redstone> * 9);
Compressor.addRecipe(<gregtechmod:ingot_iridium>, <ic2:misc_resource:1>);

for cell in itemUtils.getItemsByRegexRegistryName("gregtechmod:cell_.*") {
    Extractor.addRecipe(<ic2:cell>, cell);
}