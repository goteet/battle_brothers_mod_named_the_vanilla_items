this.additional_padding_black_upgrade <- this.inherit("scripts/items/armor_upgrades/additional_padding_upgrade", {
	m = {},
	function create()
	{
		this.additional_padding_upgrade.create();
		this.m.Name = "Black Unhold Fur Cloak";
		this.m.ID = "armor_upgrade.unhold_fur_black";

		this.m.Icon = "armor_upgrades/upgrade_color_fur_16.png";
		this.m.IconLarge = this.m.Icon;
		this.m.OverlayIcon = "armor_upgrades/icon_upgrade_color_fur_16.png";
		this.m.OverlayIconLarge = "armor_upgrades/inventory_upgrade_color_fur_16.png";

		this.m.SpriteFront = "upgrade_color_fur_16_front";
		this.m.SpriteBack = "upgrade_color_fur_16_back";
		this.m.SpriteDamagedFront = "upgrade_color_fur_16_front_damaged";
		this.m.SpriteDamagedBack = "upgrade_color_fur_16_back";
		this.m.SpriteCorpseFront = "upgrade_color_fur_16_front_dead";
		this.m.SpriteCorpseBack = "upgrade_color_fur_16_back_dead";
	}
});

