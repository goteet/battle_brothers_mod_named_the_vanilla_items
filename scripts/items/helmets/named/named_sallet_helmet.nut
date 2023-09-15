this.named_sallet_helmet <- this.inherit("scripts/items/helmets/named/named_helmet", {
	m = {},

	function create()
	{
		this.named_helmet.create();
		this.m.ID = "armor.head.named_sallet_helmet";
		this.m.NameList = [
			"Sallet's Helmet",
			"Sallet's Mask",
		];
		this.m.Description = "A metal sallet helmet with an extended neckguard, a design uncommon in these lands. It is well crafted to offer maximum protection with minimum weight, and without impairing vision.";
		this.m.ShowOnCharacter = true;
		this.m.IsDroppedAsLoot = true;
		this.m.HideHair = true;
		this.m.HideBeard = false;
		this.m.ImpactSound = this.Const.Sound.ArmorChainmailImpact;
		this.m.InventorySound = this.Const.Sound.ArmorChainmailImpact;
		this.m.Variant = this.Math.rand(1, 2);
		this.m.VariantString = "sallet_helmet";
		this.updateVariant();
		this.m.Value = 2000;
		this.m.Condition = this.m.ConditionMax = 145;
		this.m.StaminaModifier = -8;
		this.randomizeValues();
	}
	function updateVaraint()
	{
		this.m.VariantString = "sallet_helmet";
		this.helmet.updateVaraint();
	}
});

