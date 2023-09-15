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

	function updateVaraint()
	{
		this.m.VariantString = "jester_hat";
		this.helmet.updateVaraint();
	}

	//1 = white + yellow		| None + 9/5
	//2 = white + red			| None + 6
	//3 = white + green			| None + 8
	//4 = white + gray			| None + 7
	//5 = red + yellow          | OrangeRed
	//6 = red + dark blue		| Red
	//7 = red + dark gray		| Black
	//8 = green + dark blue		| WhiteBlue
	//9 = green + yellow		| WhiteGreenYellow

	function onPaint( _color )	
	{
		switch(_color)
		{
		case this.Const.Items.Paint.None:
			if(this.m.Variant == 5 || this.m.Variant == 9)
			{
				this.m.Variant = 1;
			}
			else if(this.m.Variant == 6)
			{
				this.m.Variant = 2;
			}
			else if(this.m.Variant == 7)
			{
				this.m.Variant = 4;
			}
			else if(this.m.Variant == 8)
			{
				this.m.Variant = 3;
			}
			else
			{
				this.m.Variant = 4;
			}
			break;

		case this.Const.Items.Paint.Black:
			this.m.Variant = 7;
			break;

		case this.Const.Items.Paint.WhiteBlue:
			this.m.Variant = 8;
			break;

		case this.Const.Items.Paint.WhiteGreenYellow:
			this.m.Variant = 9;
			break;

		case this.Const.Items.Paint.OrangeRed:
			this.m.Variant = 5;
			break;

		case this.Const.Items.Paint.Red:
			this.m.Variant = 6;
			break;
		}

		this.updateVariant();
		this.updateAppearance();
	}
});

