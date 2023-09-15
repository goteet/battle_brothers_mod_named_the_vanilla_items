::mods_registerMod("mod_colored_the_vanilla_named_items", 1, "Add some colored variants to vanilla named items.")

::mods_queue("mod_colored_the_vanilla_named_items", "", function() 
{
	local updateVaraint_ = function()
	{
		local variant = this.m.Variant > 9 ? this.m.Variant : "0" + this.m.Variant;
		this.m.Sprite = "bust_" + this.m.VariantString + "_" + variant;
		this.m.SpriteDamaged = "bust_" + this.m.VariantString + "_" + variant + "_damaged";
		this.m.SpriteCorpse = "bust_" + this.m.VariantString + "_" + variant + "_dead";
		this.m.IconLarge = "";
		this.m.Icon = "helmets/inventory_" + this.m.VariantString + "_" + variant + ".png";
	}
	
	::mods_hookExactClass("items/helmets/named/named_metal_bull_helmet", function(helmet)
	{
		local create = ::mods_getMember(helmet, "create")
		::mods_override(helmet, "create", function()
		{
			create();
			if(this.Math.rand(1,2) == 2)
			{
				this.m.Variant = 1;
				this.m.VariantString = "metal_bull_helmet";
				this.updateVariant();
			}
		});

		::mods_override(helmet, "updateVariant", function()
		{
			if(this.m.Variant == 1)
			{
				this.m.VariantString = "metal_bull_helmet";
			}
			else
			{
				this.m.VariantString = "helmet";
			}
			updateVaraint_();
		});
		
	});

	::mods_hookExactClass("items/helmets/named/named_conic_helmet_with_faceguard", function(helmet)
	{
		local create = ::mods_getMember(helmet, "create")
		::mods_override(helmet, "create", function()
		{
			create();
			local variant = this.Math.rand(0,8);
			this.setVariant(variant);
		});

		//ColorVariant:
		//0 = red			| Red,  helmet205
		//1 = orange		| OrangeRed
		//2 = yellow		| WhiteGreenYellow
		//3 = green			| WhiteGreenYellow
		//4 = cyan          | WhiteBlue
		//5 = purple		| None
		//6 = magenta		| None
		//7 = pink			| Red
		//8 = dark gray		| Black
		::mods_addMember(helmet, "named_conic_helmet_with_faceguard", "setVariant", function( _color )
		{
			if(_color == 0)
			{
				this.m.Variant = 205;
				this.m.VariantString = "helmet";
				this.updateVariant();
				this.updateAppearance();
				return true;
			}
			else
			{
				this.m.Variant = _color;
				this.m.VariantString = "conic_helmet_with_faceguard";
				this.updateVariant();
				this.updateAppearance();
				return true;
			}
			return false;
		});

		::mods_override(helmet, "updateVariant", function()
		{
			if(this.m.Variant != 205)
			{
				this.m.VariantString = "conic_helmet_with_faceguard";
			}
			else
			{
				this.m.VariantString = "helmet";
			}
			updateVaraint_();
		});

		::mods_addMember(helmet, "named_conic_helmet_with_faceguard", "onPaint", function( _color )
		{
			switch(_color)
			{
			case this.Const.Items.Paint.None:
				this.setVariant(this.m.Variant == 5 ? 6 : 5);
				break;

			case this.Const.Items.Paint.Black:
				this.setVariant(8);
				break;

			case this.Const.Items.Paint.WhiteBlue:
				this.setVariant(4);
				break;

			case this.Const.Items.Paint.WhiteGreenYellow:
				this.setVariant(this.m.Variant == 3 ? 2 : 3);
				break;

			case this.Const.Items.Paint.OrangeRed:
				this.setVariant(1);
				break;

			case this.Const.Items.Paint.Red:
				this.setVariant(this.m.Variant == 7 ? 0 : 7);
				break;
			}
		});
	});

	::mods_hookExactClass("items/helmets/named/gold_and_black_turban", function(helmet)
	{
		local create = ::mods_getMember(helmet, "create")
		::mods_override(helmet, "create", function()
		{
			create();
			local variant = this.Math.rand(0,4)
			this.setVariant(variant);
		});

		//ColorVariant:
		//0 = Black			| Black,  helmet_southern_named,2
		//1 = red			| Red,  
		//2 = green			| WhiteGreenYellow
		//3 = purple		| WhiteBlue
		//4 = magenta		| OrangeRed
		::mods_addMember(helmet, "gold_and_black_turban", "setVariant", function( _color )
		{
			if(_color == 0)
			{
				this.m.Variant = 2;
				this.m.VariantString = "helmet_southern_named";
				this.updateVariant();
				this.updateAppearance();
				return true;
			}
			else
			{
				this.m.Variant = (_color == 2) ? 0 : _color;
				this.m.VariantString = "golden_turban";
				this.updateVariant();
				this.updateAppearance();
				return true;
			}
			return false;
		});
		
		::mods_override(helmet, "updateVariant", function()
		{
			if(this.m.Variant != 2)
			{
				this.m.VariantString = "golden_turban";
			}
			else
			{
				this.m.VariantString = "helmet";
			}

			local colored_2 = this.m.Variant == 0;
			if(colored_2)
			{
				this.m.Variant = 2;
			}
			updateVaraint_();

			if(colored_2)
			{
				this.m.Variant = 0;
			}
		});
		
		::mods_addMember(helmet, "gold_and_black_turban", "onPaint", function( _color )
		{
			switch(_color)
			{
			case this.Const.Items.Paint.None:
			case this.Const.Items.Paint.Black:
				this.setVariant(0);
				break;

			case this.Const.Items.Paint.WhiteBlue:
				this.setVariant(3);
				break;

			case this.Const.Items.Paint.WhiteGreenYellow:
				this.setVariant(2);
				break;

			case this.Const.Items.Paint.OrangeRed:
				this.setVariant(4);
				break;

			case this.Const.Items.Paint.Red:
				this.setVariant(1);
				break;
			}
		});
	});

	::mods_hookExactClass("items/helmets/named/golden_feathers_helmet", function(helmet)
	{
		local create = ::mods_getMember(helmet, "create")
		::mods_override(helmet, "create", function()
		{
			create();
			local variant = this.Math.rand(0,5);
			this.setVariant(variant);
		});

		//ColorVariant:
		//0 = red			| Red,  helmet,50
		//1 = green			| WhiteGreenYellow
		//2 = cyan			| WhiteBlue
		//3 = purle			| Black
		//4 = magenta		| OrangeRed
		//5 = pink			| None
		::mods_addMember(helmet, "golden_feathers_helmet", "setVariant", function( _color )
		{
			if(_color == 0)
			{
				this.m.Variant = 50;
				this.m.VariantString = "helmet";
				this.updateVariant();
				this.updateAppearance();
				return true;
			}
			else
			{
				this.m.Variant = _color;
				this.m.VariantString = "golden_feathers_helmet";
				this.updateVariant();
				this.updateAppearance();
				return true;
			}
			return false;
		});

		::mods_override(helmet, "updateVariant", function()
		{
			if(this.m.Variant != 50)
			{
				this.m.VariantString = "golden_feathers_helmet";
			}
			else
			{
				this.m.VariantString = "helmet";
			}
			updateVaraint_();
		});

		::mods_addMember(helmet, "golden_feathers_helmet", "onPaint", function( _color )
		{
			switch(_color)
			{
			case this.Const.Items.Paint.None:
				this.setVariant(5);
				break;

			case this.Const.Items.Paint.Black:
				this.setVariant(3);
				break;

			case this.Const.Items.Paint.WhiteBlue:
				this.setVariant(2);
				break;

			case this.Const.Items.Paint.WhiteGreenYellow:
				this.setVariant(1);
				break;

			case this.Const.Items.Paint.OrangeRed:
				this.setVariant(4);
				break;

			case this.Const.Items.Paint.Red:
				this.setVariant(0);
				break;
			}
		});
	});

	::mods_hookExactClass("items/helmets/named/heraldic_mail_helmet", function(helmet)
	{
		local create = ::mods_getMember(helmet, "create")
		::mods_override(helmet, "create", function()
		{
			create();
			local variant = this.Math.rand(0,8);
			this.setVariant(variant);
		});

		//ColorVariant:
		//1 = red			| Red,  
		//2 = orange		| OrangeRed
		//3 = yellow		| WhiteGreenYellow
		//4 = green			| WhiteGreenYellow
		//0 = cyan          | WhiteBlue, helmet,53
		//5 = purple		| None
		//6 = magenta		| None
		//7 = pink			| Red
		//8 = dark gray		| Black
		::mods_addMember(helmet, "heraldic_mail_helmet", "setVariant", function( _color )
		{
			if(_color == 0)
			{
				this.m.Variant = 53;
				this.m.VariantString = "helmet";
				this.updateVariant();
				this.updateAppearance();
				return true;
			}
			else
			{
				this.m.Variant = _color;
				this.m.VariantString = "heraldic_mail_helmet";
				this.updateVariant();
				this.updateAppearance();
				return true;
			}
			return false;
		});

		::mods_override(helmet, "updateVariant", function()
		{
			if(this.m.Variant != 53)
			{
				this.m.VariantString = "heraldic_mail_helmet";
			}
			else
			{
				this.m.VariantString = "helmet";
			}
			updateVaraint_();
		});

		::mods_addMember(helmet, "heraldic_mail_helmet", "onPaint", function( _color )
		{
			this.m.VariantString = "heraldic_mail_helmet";
			switch(_color)
			{
			case this.Const.Items.Paint.None:
				this.setVariant(this.m.Variant == 5 ? 6 : 5);
				break;

			case this.Const.Items.Paint.Black:
				this.setVariant(8);
				break;

			case this.Const.Items.Paint.WhiteBlue:
				this.setVariant(0);
				break;

			case this.Const.Items.Paint.WhiteGreenYellow:
				this.setVariant(this.m.Variant == 3 ? 4 : 3);
				break;

			case this.Const.Items.Paint.OrangeRed:
				this.setVariant(2);
				break;

			case this.Const.Items.Paint.Red:
				this.setVariant(this.m.Variant == 7 ? 1 : 7);
				break;
			}
		});
	});

	::mods_hookExactClass("items/helmets/named/nasal_feather_helmet", function(helmet)
	{
		local create = ::mods_getMember(helmet, "create")
		::mods_override(helmet, "create", function()
		{
			create();
			local variant = this.Math.rand(0,5);
			this.setVariant(variant);
		});

		//ColorVariant:
		//1 = red			| Red,  
		//0 = brown			| OrangeRed, helmet51
		//2 = green			| WhiteGreenYellow
		//3 = cyan          | WhiteBlue
		//4 = dark gray		| Black
		//5 = White			| None
		::mods_addMember(helmet, "nasal_feather_helmet", "setVariant", function( _color )
		{
			if(_color == 0)
			{
				this.m.Variant = 51;
				this.m.VariantString = "helmet";
				this.updateVariant();
				this.updateAppearance();
				return true;
			}
			else
			{
				this.m.Variant = _color;
				this.m.VariantString = "nasal_feather_helmet";
				this.updateVariant();
				this.updateAppearance();
				return true;
			}
			return false;
		});

		::mods_override(helmet, "updateVariant", function()
		{
			if(this.m.Variant != 51)
			{
				this.m.VariantString = "nasal_feather_helmet";
			}
			else
			{
				this.m.VariantString = "helmet";
			}
			updateVaraint_();
		});

		::mods_addMember(helmet, "nasal_feather_helmet", "onPaint", function( _color )
		{
			switch(_color)
			{
			case this.Const.Items.Paint.None:
				this.setVariant(5);
				break;

			case this.Const.Items.Paint.Black:
				this.setVariant(4);
				break;

			case this.Const.Items.Paint.WhiteBlue:
				this.setVariant(3);
				break;

			case this.Const.Items.Paint.WhiteGreenYellow:
				this.setVariant(2);
				break;

			case this.Const.Items.Paint.OrangeRed:
				this.setVariant(0);
				break;

			case this.Const.Items.Paint.Red:
				this.setVariant(1);
				break;
			}
		});
	});

	::mods_hookExactClass("items/helmets/named/norse_helmet", function(helmet)
	{
		local create = ::mods_getMember(helmet, "create")
		::mods_override(helmet, "create", function()
		{
			create();
			local variant = this.Math.rand(0,4);
			this.setVariant(variant);
		});

		//ColorVariant:
		//1 = red			| Red, 
		//2 = green			| WhiteGreenYellow
		//3 = cyan          | WhiteBlue
		//4 = pink			| OrangeRed
		//0 = dark gray		| Black, 203
		::mods_addMember(helmet, "norse_helmet", "setVariant", function( _color )
		{
			if(_color == 0)
			{
				this.m.Variant = 203;
				this.m.VariantString = "helmet";
				this.updateVariant();
				this.updateAppearance();
				return true;
			}
			else
			{
				this.m.Variant = _color;
				this.m.VariantString = "norse_helmet";
				this.updateVariant();
				this.updateAppearance();
				return true;
			}
			return false;
		});

		
		::mods_override(helmet, "updateVariant", function()
		{
			if(this.m.Variant != 203)
			{
				this.m.VariantString = "norse_helmet";
			}
			else
			{
				this.m.VariantString = "helmet";
			}
			updateVaraint_();
		});
		
		::mods_addMember(helmet, "norse_helmet", "onPaint", function( _color )
		{
			switch(_color)
			{
			case this.Const.Items.Paint.None:
			case this.Const.Items.Paint.Black:
				this.setVariant(0);
				break;

			case this.Const.Items.Paint.WhiteBlue:
				this.setVariant(3);
				break;

			case this.Const.Items.Paint.WhiteGreenYellow:
				this.setVariant(2);
				break;

			case this.Const.Items.Paint.OrangeRed:
				this.setVariant(4);
				break;

			case this.Const.Items.Paint.Red:
				this.setVariant(1);
				break;
			}
		});
	});

	::mods_hookExactClass("items/helmets/named/sallet_green_helmet", function(helmet)
	{
		local create = ::mods_getMember(helmet, "create")
		::mods_override(helmet, "create", function()
		{
			create();
			local variant = this.Math.rand(0,14);
			this.setVariant(variant);
		});

		::mods_addMember(helmet, "sallet_green_helmet", "setVariant", function( _color )
		{
			if(_color == 0)
			{
				this.m.Variant = 49;
				this.m.VariantString = "helmet";
				this.updateVariant();
				this.updateAppearance();
				return true;
			}
			else
			{
				this.m.Variant = _color;
				this.m.VariantString = "colored_sallet_helmet";
				this.updateVariant();
				this.updateAppearance();
				return true;
			}
			return false;
		});

		::mods_override(helmet, "updateVariant", function()
		{
			if(this.m.Variant != 49)
			{
				this.m.VariantString = "colored_sallet_helmet";
			}
			else
			{
				this.m.VariantString = "helmet";
			}
			updateVaraint_();
		});
	});

	::mods_hookExactClass("items/helmets/named/named_steppe_helmet_with_mail", function(helmet)
	{
		local create = ::mods_getMember(helmet, "create")
		::mods_override(helmet, "create", function()
		{
			create();
			local variant = this.Math.rand(0,9);
			this.setVariant(variant);
		});

		//ColorVariant:
		//1 = red			| Red,  
		//2 = orange		| OrangeRed
		//3 = yellow		| WhiteGreenYellow
		//4 = green			| WhiteGreenYellow
		//5 = cyan          | WhiteBlue
		//6 = purple		| WhiteBlue
		//7 = magenta		| WhiteBlue
		//8 = pink			| Red
		//9 = dark gray		| Black
		//0 = White			| None, 204
		::mods_addMember(helmet, "named_steppe_helmet_with_mail", "setVariant", function( _color )
		{
			if(_color == 0)
			{
				this.m.Variant = 204;
				this.m.VariantString = "helmet";
				this.updateVariant();
				this.updateAppearance();
				return true;
			}
			else
			{
				this.m.Variant = _color;
				this.m.VariantString = "steppe_helmet_with_mail";
				this.updateVariant();
				this.updateAppearance();
				return true;
			}
			return false;
		});

		::mods_override(helmet, "updateVariant", function()
		{
			if(this.m.Variant != 204)
			{
				this.m.VariantString = "steppe_helmet_with_mail";
			}
			else
			{
				this.m.VariantString = "helmet";
			}
			updateVaraint_();
		});

		::mods_addMember(helmet, "named_steppe_helmet_with_mail", "onPaint", function( _color )
		{
			switch(_color)
			{
			case this.Const.Items.Paint.None:
				this.setVariant(0);
				break;

			case this.Const.Items.Paint.Black:
				this.setVariant(9);
				break;

			case this.Const.Items.Paint.WhiteBlue:
				this.setVariant(this.m.Variant != 5 ? 5 : (this.m.Variant != 6 ? 6 : 7));
				break;

			case this.Const.Items.Paint.WhiteGreenYellow:
				this.setVariant(this.m.Variant == 3 ? 4 : 3);
				break;

			case this.Const.Items.Paint.OrangeRed:
				this.setVariant(2);
				break;

			case this.Const.Items.Paint.Red:
				this.setVariant(this.m.Variant == 8 ? 1 : 8);
				break;
			}
		});
	});

	///
	//bind named item to enemies.
	///
	::mods_hookNewObject("entity/tactical/humans/knight", function(knight)
	{
		local assignRandomEquipment = ::mods_getMember(knight, "assignRandomEquipment");
		local assignRandomEquipment_ = function()
		{
			
			assignRandomEquipment();
			//3% to generate rare helmet

			local helmet = this.getItems().getItemAtSlot(this.Const.ItemSlot.Head);
			if(helmet != null && helmet.m.ID == "armor.head.faction_helm")
			{
				local rarity = this.Math.rand(1,100);
				if(rarity == 1 || rarity == 50 || rarity == 100) 
				{
					local banner = this.m.Surcoat;
					local namedVersionHelment = this.new("scripts/items/helmets/named/named_faction_full_helmet");
					namedVersionHelment.setVariant(banner);
					this.m.Items.unequip(helmet);
					this.m.Items.equip(namedVersionHelment);
				}
			}
		};
		::mods_override(knight, "assignRandomEquipment", assignRandomEquipment_);
		
	});

	::mods_hookNewObject("entity/tactical/humans/noble_greatsword", function(greatsword)
	{
		local assignRandomEquipment = ::mods_getMember(greatsword, "assignRandomEquipment");
		local assignRandomEquipment_ = function()
		{
			assignRandomEquipment();
			// 2% to generate rare helmet

			local helmet = this.getItems().getItemAtSlot(this.Const.ItemSlot.Head);
			if(helmet != null)
			{
				if(helmet.m.ID == "armor.head.greatsword_faction_helm")
				{
					local rarity = this.Math.rand(1,100);
					if(rarity == 1 || rarity == 100)
					{
						local banner = helmet.m.Variant;
						local namedVersionHelment = this.new("scripts/items/helmets/named/named_colored_faction_hat");
						namedVersionHelment.setVariant(banner);
						this.m.Items.unequip(helmet);
						this.m.Items.equip(namedVersionHelment);
					}
				}
				else if(helmet.m.ID == "armor.head.greatsword_hat")
				{
					local rarity = this.Math.rand(1,100);
					if(rarity == 49 || rarity == 50)
					{
						local banner = this.m.Surcoat;
						local namedVersionHelment = this.new("scripts/items/helmets/named/named_colored_faction_hat");
						namedVersionHelment.setVariant(banner);
						this.m.Items.unequip(helmet);
						this.m.Items.equip(namedVersionHelment);
					}
				}
			}
		};

		::mods_override(greatsword, "assignRandomEquipment", assignRandomEquipment_);
		
	});
	
});