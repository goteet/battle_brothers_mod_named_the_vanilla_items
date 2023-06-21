this.unhold_fur_upgrade_black_remove_blueprint <- this.inherit("scripts/crafting/blueprint", {
	m = {},
	function create()
	{
		this.blueprint.create();
		this.m.ID = "blueprint.unhold_fur_upgrade_black_remove";
		this.m.PreviewCraftable = this.new("scripts/items/armor_upgrades/unhold_fur_upgrade");
		this.m.Cost = 50;
		local ingredients = [
			{
				Script = "scripts/items/armor_upgrades/unhold_fur_upgrade_black",
				Num = 1
			},
			{
				Script = "scripts/items/misc/paint_remover_item",
				Num = 1
			}
		];
		this.init(ingredients);
	}

	function onCraft( _stash )
	{
		_stash.add(this.new("scripts/items/armor_upgrades/unhold_fur_upgrade"));
	}

});

