# Copied and modified from Divine Journey 2
# Original Author: Atricos

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.data.IData;

print("STARTING iron_chests.zs");

function addIronChestRecipe(output as IItemStack, center_input as IIngredient, sourrounding_input as IIngredient) {
	recipes.remove(output);
	recipes.addShaped(output, [[sourrounding_input,sourrounding_input,sourrounding_input],[sourrounding_input,center_input,sourrounding_input],[sourrounding_input,sourrounding_input,sourrounding_input]]);
}

# Iron Chest
addIronChestRecipe(<ironchest:iron_chest>, <ore:chestWood>, <ore:plateIron>);
addIronChestRecipe(<ironchest:iron_chest>, <ironchest:iron_chest:3>, <ore:plateIron>);

# Gold Chest
addIronChestRecipe(<ironchest:iron_chest:1>, <ironchest:iron_chest>, <ore:plateGold>);
addIronChestRecipe(<ironchest:iron_chest:1>, <ironchest:iron_chest:4>, <ore:plateGold>);

# Copper Chest
addIronChestRecipe(<ironchest:iron_chest:3>, <minecraft:chest>, <ore:plateCopper>);

# Silver Chest
addIronChestRecipe(<ironchest:iron_chest:4>, <ironchest:iron_chest:3>, <ore:plateSilver>);
addIronChestRecipe(<ironchest:iron_chest:4>, <ironchest:iron_chest>, <ore:plateSilver>);

# Wood to Iron Chest Upgrade
addIronChestRecipe(<ironchest:wood_iron_chest_upgrade>, <ore:plankWood>, <ore:plateIron>);

# Wood to Copper Chest Upgrade
addIronChestRecipe(<ironchest:wood_copper_chest_upgrade>, <ore:plankWood>, <ore:plateCopper>);

# Copper to Silver Chest Upgrade
addIronChestRecipe(<ironchest:copper_silver_chest_upgrade>, <ore:plateCopper>, <ore:plateSilver>);

# Copper to Iron Chest Upgrade
addIronChestRecipe(<ironchest:copper_iron_chest_upgrade>, <ore:plateCopper>, <ore:plateIron>);

# Iron to Gold Chest Upgrade
addIronChestRecipe(<ironchest:iron_gold_chest_upgrade>, <ore:plateIron>, <ore:plateGold>);

# Silver to Gold Chest Upgrade
addIronChestRecipe(<ironchest:silver_gold_chest_upgrade>, <ore:plateSilver>, <ore:plateGold>);

# Gold to Diamond Chest Upgrade
recipes.remove(<ironchest:gold_diamond_chest_upgrade>);
recipes.addShaped(<ironchest:gold_diamond_chest_upgrade>, [[<ore:blockGlass>, <ore:blockGlass>, <ore:blockGlass>], [<ore:gemDiamond>, <ore:plateGold>, <ore:gemDiamond>], [<ore:blockGlass>, <ore:blockGlass>, <ore:blockGlass>]]);

# Shulker Box upgrade function
function ironchest_shulkerbox_recipe_tag(input_tag as IData, out as IItemStack, size as int) as IItemStack {
	if(input_tag has "BlockEntityTag") {
		if(input_tag.BlockEntityTag has "Items") {
			return out.withTag({BlockEntityTag: {Items: input_tag.BlockEntityTag.Items, ShulkerBoxSize: size}});
		} else {
			return out;
		}
	} else {
		return out;
	}
}

val shulker_box_names = [<minecraft:white_shulker_box>,<minecraft:orange_shulker_box>,<minecraft:magenta_shulker_box>,<minecraft:light_blue_shulker_box>,<minecraft:yellow_shulker_box>,<minecraft:lime_shulker_box>,<minecraft:pink_shulker_box>,<minecraft:gray_shulker_box>,<minecraft:silver_shulker_box>,<minecraft:cyan_shulker_box>,<minecraft:purple_shulker_box>,<minecraft:blue_shulker_box>,<minecraft:brown_shulker_box>,<minecraft:green_shulker_box>,<minecraft:red_shulker_box>,<minecraft:black_shulker_box>] as IItemStack[];
val iron_shulker_box_names = [<ironchest:iron_shulker_box_white>,<ironchest:iron_shulker_box_orange>,<ironchest:iron_shulker_box_magenta>,<ironchest:iron_shulker_box_light_blue>,<ironchest:iron_shulker_box_yellow>,<ironchest:iron_shulker_box_lime>,<ironchest:iron_shulker_box_pink>,<ironchest:iron_shulker_box_gray>,<ironchest:iron_shulker_box_silver>,<ironchest:iron_shulker_box_cyan>,<ironchest:iron_shulker_box_purple>,<ironchest:iron_shulker_box_blue>,<ironchest:iron_shulker_box_brown>,<ironchest:iron_shulker_box_green>,<ironchest:iron_shulker_box_red>,<ironchest:iron_shulker_box_black>] as IItemStack[];
val num_strings = ["0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15"] as string[];

for i in 0 to 16 {

	# Iron Shulker Box
	recipes.remove(iron_shulker_box_names[i]);
	recipes.addShaped("ironchest_iron_shulker_box_" + num_strings[i], iron_shulker_box_names[i], [[<ore:plateIron>,<ore:plateIron>,<ore:plateIron>],[<ore:plateIron>,shulker_box_names[i].marked("box"),<ore:plateIron>],[<ore:plateIron>,<ore:plateIron>,<ore:plateIron>]],
	function(out,ins,cInfo) {
		return ironchest_shulkerbox_recipe_tag(ins.box.tag, out, 54);
	}, null);
	recipes.addShaped("ironchest_iron_shulker_box_from_copper_" + num_strings[i], iron_shulker_box_names[i], [[<ore:plateIron>,<ore:plateIron>,<ore:plateIron>],[<ore:plateIron>,iron_shulker_box_names[i].withDamage(3).marked("box"),<ore:plateIron>],[<ore:plateIron>,<ore:plateIron>,<ore:plateIron>]],
	function(out,ins,cInfo) {
		return ironchest_shulkerbox_recipe_tag(ins.box.tag, out, 54);
	}, null);

	# Gold Shulker Box
	recipes.remove(iron_shulker_box_names[i].withDamage(1));
	recipes.addShaped("ironchest_gold_shulker_box_" + num_strings[i], iron_shulker_box_names[i].withDamage(1), [[<ore:plateGold>,<ore:plateGold>,<ore:plateGold>],[<ore:plateGold>,iron_shulker_box_names[i].marked("box"),<ore:plateGold>],[<ore:plateGold>,<ore:plateGold>,<ore:plateGold>]],
	function(out,ins,cInfo) {
		return ironchest_shulkerbox_recipe_tag(ins.box.tag, out, 81);
	}, null);
	recipes.addShaped("ironchest_gold_shulker_box_from_silver_" + num_strings[i], iron_shulker_box_names[i].withDamage(1), [[<ore:plateGold>,<ore:plateGold>,<ore:plateGold>],[<ore:plateGold>,iron_shulker_box_names[i].withDamage(4).marked("box"),<ore:plateGold>],[<ore:plateGold>,<ore:plateGold>,<ore:plateGold>]],
	function(out,ins,cInfo) {
		return ironchest_shulkerbox_recipe_tag(ins.box.tag, out, 81);
	}, null);

	# Copper Shulker Box
	recipes.remove(iron_shulker_box_names[i].withDamage(3));
	recipes.addShaped("ironchest_copper_shulker_box_" + num_strings[i], iron_shulker_box_names[i].withDamage(3), [[<ore:plateCopper>,<ore:plateCopper>,<ore:plateCopper>],[<ore:plateCopper>,shulker_box_names[i].marked("box"),<ore:plateCopper>],[<ore:plateCopper>,<ore:plateCopper>,<ore:plateCopper>]],
	function(out,ins,cInfo) {
		return ironchest_shulkerbox_recipe_tag(ins.box.tag, out, 45);
	}, null);

	# Silver Shulker Box
	recipes.remove(iron_shulker_box_names[i].withDamage(4));
	recipes.addShaped("ironchest_silver_shulker_box_" + num_strings[i], iron_shulker_box_names[i].withDamage(4), [[<ore:plateSilver>,<ore:plateSilver>,<ore:plateSilver>],[<ore:plateSilver>,iron_shulker_box_names[i].marked("box"),<ore:plateSilver>],[<ore:plateSilver>,<ore:plateSilver>,<ore:plateSilver>]],
	function(out,ins,cInfo) {
		return ironchest_shulkerbox_recipe_tag(ins.box.tag, out, 72);
	}, null);
	recipes.addShaped("ironchest_silver_shulker_box_from_copper_" + num_strings[i], iron_shulker_box_names[i].withDamage(4), [[<ore:plateSilver>,<ore:plateSilver>,<ore:plateSilver>],[<ore:plateSilver>,iron_shulker_box_names[i].withDamage(3).marked("box"),<ore:plateSilver>],[<ore:plateSilver>,<ore:plateSilver>,<ore:plateSilver>]],
	function(out,ins,cInfo) {
		return ironchest_shulkerbox_recipe_tag(ins.box.tag, out, 72);
	}, null);
}

# Vanilla to Iron Shulker Box Upgrade
recipes.remove(<ironchest:vanilla_iron_shulker_upgrade>);
recipes.addShaped(<ironchest:vanilla_iron_shulker_upgrade>, [[<ore:plateIron>,<ore:plateIron>,<ore:plateIron>],[<ore:plateIron>,<minecraft:shulker_shell>,<ore:plateIron>],[<ore:plateIron>,<ore:plateIron>,<ore:plateIron>]]);

# Vanilla to Copper Shulker Box Upgrade
recipes.remove(<ironchest:vanilla_copper_shulker_upgrade>);
recipes.addShaped(<ironchest:vanilla_copper_shulker_upgrade>, [[<ore:plateCopper>,<ore:plateCopper>,<ore:plateCopper>],[<ore:plateCopper>,<minecraft:shulker_shell>,<ore:plateCopper>],[<ore:plateCopper>,<ore:plateCopper>,<ore:plateCopper>]]);

# Copper to Silver Shulker Box Upgrade
recipes.remove(<ironchest:copper_silver_shulker_upgrade>);
recipes.addShaped(<ironchest:copper_silver_shulker_upgrade>, [[<ore:plateSilver>,<ore:plateCopper>,<ore:plateSilver>],[<ore:plateSilver>,<ore:plateSilver>,<ore:plateSilver>],[<ore:plateSilver>,<ore:plateSilver>,<ore:plateSilver>]]);

# Copper to Iron Shulker Box Upgrade
recipes.remove(<ironchest:copper_iron_shulker_upgrade>);
recipes.addShaped(<ironchest:copper_iron_shulker_upgrade>, [[<ore:plateIron>,<ore:plateCopper>,<ore:plateIron>],[<ore:plateIron>,<ore:plateIron>,<ore:plateIron>],[<ore:plateIron>,<ore:plateIron>,<ore:plateIron>]]);

# Iron to Gold Shulker Box Upgrade
recipes.remove(<ironchest:iron_gold_shulker_upgrade>);
recipes.addShaped(<ironchest:iron_gold_shulker_upgrade>, [[<ore:plateGold>,<ore:plateIron>,<ore:plateGold>],[<ore:plateGold>,<ore:plateGold>,<ore:plateGold>],[<ore:plateGold>,<ore:plateGold>,<ore:plateGold>]]);

# Silver to Gold Shulker Box Upgrade
recipes.remove(<ironchest:silver_gold_shulker_upgrade>);
recipes.addShaped(<ironchest:silver_gold_shulker_upgrade>, [[<ore:plateGold>,<ore:plateSilver>,<ore:plateGold>],[<ore:plateGold>,<ore:plateGold>,<ore:plateGold>],[<ore:plateGold>,<ore:plateGold>,<ore:plateGold>]]);

# Gold to Diamond Shulker Box Upgrade
recipes.remove(<ironchest:gold_diamond_shulker_upgrade>);
recipes.addShaped(<ironchest:gold_diamond_shulker_upgrade>, [[<ore:blockGlass>, <ore:gemDiamond>, <ore:blockGlass>], [<ore:blockGlass>, <ore:plateGold>, <ore:blockGlass>], [<ore:blockGlass>, <ore:gemDiamond>, <ore:blockGlass>]]);

print("ENDING IronChest.zs");
