this.noble_strap_black_upgrade <- this.inherit("scripts/items/armor_upgrades/armor_upgrade", {
	m = {},
	function create()
	{
		this.armor_upgrade.create();
		this.m.Name = "Black Noble Strap";
		this.m.Description = "A large strap can be decorate the mail.";
		this.m.ArmorDescription = "A large strap has benn add to the mail decorating the mail.";
		this.m.Value = 200;
		this.m.ConditionModifier = 10;
		this.m.StaminaModifier = 0;
		
		this.m.ID = "armor_upgrade.noble_strap_black";

		this.m.Icon = "armor_upgrades/upgrade_noble_strap_05.png";
		this.m.IconLarge = this.m.Icon;
		this.m.OverlayIcon = "armor_upgrades/icon_upgrade_noble_strap_05.png";
		this.m.OverlayIconLarge = "armor_upgrades/inventory_upgrade_noble_strap_05.png";

		this.m.SpriteFront = null;
		this.m.SpriteBack = "upgrade_noble_strap_05_back";
		this.m.SpriteDamagedFront = null;
		this.m.SpriteDamagedBack = "upgrade_noble_strap_05_back";
		this.m.SpriteCorpseFront = null;
		this.m.SpriteCorpseBack = "upgrade_noble_strap_05_back_dead";
	}
});

