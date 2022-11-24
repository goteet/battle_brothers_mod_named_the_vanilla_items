this.named_colored_jester_hat <- this.inherit("scripts/items/helmets/named/named_helmet", {
	m = {},

	function create()
	{
		this.named_helmet.create();
		this.m.ID = "armor.head.named_colored_jester_hat";
		this.m.NameList = [
			"Jester\'s Hat",
			"Coronet of Joker",
			"Mad Kings\'s Crown",
			"Hat of Prophecies"
		];
		this.m.Description = "The colorful and iconic headpiece of jesters, entertainers and other traveling folk.";
		this.m.Variant = this.Math.rand(1, 9);
		this.m.VariantString = "jester_hat";
		this.m.IsDroppedAsLoot = true;
		this.m.ShowOnCharacter = true;
		this.m.HideHair = true;
		this.m.HideBeard = false;
		this.m.ReplaceSprite = true;
		this.m.ImpactSound = this.Const.Sound.JesterImpact;
		this.m.InventorySound = this.Const.Sound.JesterImpact;
		this.updateVariant();
		this.m.Value = 2000;
		this.m.Condition = this.m.ConditionMax = 115;
		this.m.StaminaModifier = -6;
		this.randomizeValues();
		this.m.StaminaModifier += 1;
	}
});

