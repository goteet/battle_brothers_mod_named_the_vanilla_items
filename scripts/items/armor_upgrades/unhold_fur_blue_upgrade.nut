this.unhold_fur_blue_upgrade <- this.inherit("scripts/items/armor_upgrades/unhold_fur_upgrade", {
	m = {},
	function create()
	{
		this.unhold_fur_upgrade.create();
		this.m.Name = "Blue Unhold Fur Cloak";
		this.m.ID = "armor_upgrade.unhold_fur_blue";

		this.m.Icon = "armor_upgrades/upgrade_color_fur_04.png";
		this.m.IconLarge = this.m.Icon;
		this.m.OverlayIcon = "armor_upgrades/icon_upgrade_color_fur_04.png";
		this.m.OverlayIconLarge = "armor_upgrades/inventory_upgrade_color_fur_04.png";

		this.m.SpriteFront = "upgrade_color_fur_04_front";
		this.m.SpriteBack = "upgrade_color_fur_04_back";
		this.m.SpriteDamagedFront = "upgrade_color_fur_04_front_damaged";
		this.m.SpriteDamagedBack = "upgrade_color_fur_04_back";
		this.m.SpriteCorpseFront = "upgrade_color_fur_04_front_dead";
		this.m.SpriteCorpseBack = "upgrade_color_fur_04_back_dead";
	}
});

