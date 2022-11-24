local gt = this.getroottable();

if (!("DLC" in gt.Const))
{
	gt.Const.DLC <- {};
	gt.Const.DLC.Mask <- 0;
}

//1-1 expand make sure the chance is equal.
//newly add.
this.Const.Items.NamedHelmets.push("helmets/named/named_colored_jester_hat");
this.Const.Items.NamedHelmets.push("helmets/named/named_golden_assassin_mask");
this.Const.Items.NamedHelmets.push("helmets/named/named_colored_faction_hat");
this.Const.Items.NamedHelmets.push("helmets/named/named_faction_full_helmet");

//expanded vanilla.
this.Const.Items.NamedHelmets.push("helmets/named/named_colored_norse_helmet");
this.Const.Items.NamedHelmets.push("helmets/named/named_bearhead_helmet");
this.Const.Items.NamedHelmets.push("helmets/named/named_colored_steppe_helmet_with_mail");
this.Const.Items.NamedHelmets.push("helmets/named/named_metal_skull_helmet_clone");
this.Const.Items.NamedHelmets.push("helmets/named/named_metal_norse_horn_helmet_clone");
this.Const.Items.NamedHelmets.push("helmets/named/named_colored_golden_feathers_helmet");
this.Const.Items.NamedHelmets.push("helmets/named/named_red_and_gold_band_helmet_clone");
this.Const.Items.NamedHelmets.push("helmets/named/named_colored_nasal_feather_helmet");
this.Const.Items.NamedHelmets.push("helmets/named/lindwurm_helmet_clone");
this.Const.Items.NamedHelmets.push("helmets/named/named_nordic_helmet_with_closed_mail_clone");
this.Const.Items.NamedHelmets.push("helmets/named/named_colored_sallet_helmet");
this.Const.Items.NamedHelmets.push("helmets/named/named_colored_heraldic_mail_helmet");
this.Const.Items.NamedHelmets.push("helmets/named/named_colored_conic_helmet_with_faceguard");
this.Const.Items.NamedHelmets.push("helmets/named/named_colored_gold_turban");
this.Const.Items.NamedHelmets.push("helmets/named/named_metal_bull_helmet_clone");

this.Const.Items.NamedSouthernHelmets.push("helmets/named/named_colored_steppe_helmet_with_mail");
this.Const.Items.NamedSouthernHelmets.push("helmets/named/named_red_and_gold_band_helmet_clone");
this.Const.Items.NamedSouthernHelmets.push("helmets/named/named_colored_gold_turban");


//bind named item to enemies.
//gt.Const.World.Spawn.Troops.Knight.Script = "scripts/entity/tactical/enemies/knight_modified";
//gt.Const.World.Spawn.Troops.Greatsword.Script = "scripts/entity/tactical/enemies/knight_modified";
//gt.Const.World.Spawn.Troops.ZombieKnight.Script = "scripts/entity/tactical/enemies/zombie_knight_modified";
//gt.Const.World.Spawn.Troops.DesertStalker.Script = "scripts/entity/tactical/enemies/desert_stalker_modified";