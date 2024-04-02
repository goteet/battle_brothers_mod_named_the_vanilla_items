this.named_colored_golden_barbute <- this.inherit("scripts/items/helmets/named/named_helmet", {
	m = {},
	function create()
	{
		this.named_helmet.create();
		this.m.ID = "armor.head.named_colored_golden_barbute";
		this.m.VariantString = "golden_barbute";
		this.m.Variant = this.Math.rand(1, 6);
		this.updateVariant();

		this.m.NameList = 
		[ 
			"Barbute Helmet"
		];
		this.m.Description = "A sturdy yet light barbute helmet, a design uncommon in these lands, made from especially light and durable steel.";
		this.m.ShowOnCharacter = true;
		this.m.IsDroppedAsLoot = true;
		this.m.HideHair = true;
		this.m.HideBeard = false;
		this.m.ImpactSound = this.Const.Sound.ArmorChainmailImpact;
		this.m.InventorySound = this.Const.Sound.ArmorChainmailImpact;

		this.m.Value = 3500;
		this.m.Condition = this.m.ConditionMax = 165;
		this.m.StaminaModifier = -10;
		this.m.Vision = -2;
		this.randomizeValues();

		this.m.Condition = this.Math.max(190, this.m.Condition);
		this.m.ConditionMax = this.m.Condition;
	}

	function updateVaraint()
	{
		this.m.VariantString = "golden_barbute";
		this.helmet.updateVaraint();
	}

	function onPaint( _color )
	{
		switch(_color)
		{
		case this.Const.Items.Paint.None:
			this.m.Variant = 1;
			break;

		case this.Const.Items.Paint.Black:
			this.m.Variant = 5;
			break;

		case this.Const.Items.Paint.WhiteBlue:
			this.m.Variant = 6;
			break;

		case this.Const.Items.Paint.WhiteGreenYellow:
			this.m.Variant = 4;
			break;

		case this.Const.Items.Paint.OrangeRed:
			this.m.Variant = 3;
			break;

		case this.Const.Items.Paint.Red:
			this.m.Variant = 2;
			break;
		}

		this.updateVariant();
		this.updateAppearance();
	}
});

