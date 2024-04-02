this.named_colored_faction_hat <- this.inherit("scripts/items/helmets/named/named_helmet", {
	m = 
	{
		FactionVariant = -1,
		ColorVariant = -1, 
	},
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
		this.m.FactionVariant = this.Math.rand(1, 10);
		this.m.ColorVariant = this.Math.rand(0, 8);
		this.m.VariantString = "faction_hat";
		this.updateVariant();
		
		this.m.Value = 2000;
		this.m.Condition = 134;
		this.m.ConditionMax = 134;
		this.m.StaminaModifier = -7;
		this.randomizeValues();
		
		this.m.Condition = this.Math.max(150, this.m.Condition);
		this.m.ConditionMax = this.m.Condition;
	}

	//in order to not save two extra variables.
	//we calculate from variant.
	function calculateVariant()
	{
		if(this.m.FactionVariant == -1 && this.m.ColorVariant == -1)
		{
			this.m.FactionVariant = this.m.Variant % 10;
			this.m.ColorVariant = this.m.Variant / 10;
			if(this.m.FactionVariant == 0)
			{
				this.m.FactionVariant = 10;
				this.m.ColorVariant -= 1;
			}
		}
	}

	function updateVariant()
	{
		this.calculateVariant();
		this.m.VariantString = "faction_hat";
		this.m.Variant = this.m.ColorVariant * 10 + this.m.FactionVariant;
		this.helmet.updateVariant();
	}

	function setVariant( _faction )
	{
		this.calculateVariant();
		this.m.FactionVariant = _faction;
		this.updateVariant();
	}

	//ColorVariant:
	//0 = red			| Red
	//1 = orange		| OrangeRed
	//2 = yellow		| WhiteGreenYellow
	//3 = green			| WhiteGreenYellow
	//4 = cyan          | WhiteBlue
	//5 = purple		| None
	//6 = magenta		| None
	//7 = pink			| Red
	//8 = dark gray		| Black
	function onPaint( _color )	
	{
		this.calculateVariant();
		switch(_color)
		{
		case this.Const.Items.Paint.None:
			this.m.ColorVariant = this.m.ColorVariant == 6 ? 5 : 6;
			break;

		case this.Const.Items.Paint.Black:
			this.m.ColorVariant = 8;
			break;

		case this.Const.Items.Paint.WhiteBlue:
			this.m.ColorVariant = 4;
			break;

		case this.Const.Items.Paint.WhiteGreenYellow:
			this.m.ColorVariant = this.m.ColorVariant == 3 ? 2 : 3;
			break;

		case this.Const.Items.Paint.OrangeRed:
			this.m.ColorVariant = 1;
			break;

		case this.Const.Items.Paint.Red:
			if(this.m.ColorVariant == 7)
			{
				this.m.ColorVariant = 0;
			}
			else
			{
				this.m.ColorVariant = 7;
			}
			break;
		}

		this.updateVariant();
		this.updateAppearance();
	}

	function onDeserialize( _in )
	{
		this.m.FactionVariant = -1;
		this.m.ColorVariant = -1;
		this.named_helmet.onDeserialize(_in);
	}
});

