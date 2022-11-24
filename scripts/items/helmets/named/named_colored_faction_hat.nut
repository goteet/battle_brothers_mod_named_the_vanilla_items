this.named_colored_faction_hat <- this.inherit("scripts/items/helmets/named/named_helmet", {
	m = {},
	function create()
	{
		this.named_helmet.create();
		this.m.ID = "armor.head.named_colored_faction_hat";

		this.m.ShowOnCharacter = true;
		this.m.HideHair = true;
		this.m.HideBeard = false;
		this.m.ReplaceSprite = true;

		this.m.Description = "A sturdy metal helmet with added padding, covered with a large feathered hat.";
		this.m.NameList = [
			"Swordmen\'s Hat"
		];
		this.m.ImpactSound = this.Const.Sound.ArmorHalfplateImpact;
		this.m.InventorySound = this.Const.Sound.ArmorHalfplateImpact;
		this.m.Variant = this.Math.rand(1, 90);
		this.m.VariantString = "faction_hat";
		this.updateVariant();
		
		this.m.Value = 2000;
		this.m.Condition = 155;
		this.m.ConditionMax = 155;
		this.m.StaminaModifier = -10;
		this.randomizeValues();
	}
});

