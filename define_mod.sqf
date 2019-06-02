btc_custom_loc = [
/*
    DESCRIPTION: [POS(Array),TYPE(String),NAME(String),RADIUS X(Number),RADIUS X(Number),IS OCCUPIED(Bool)]
    Possible types: "NameVillage","NameCity","NameCityCapital","NameLocal","Hill","Airport","NameMarine"
    EXAMPLE: [[13132.8,3315.07,0.00128174],"NameVillage","Mountain 1",800,800,true]
*/
];

/*
    Here you can specify which equipment should be added or removed from the arsenal.
    Please take care that there are different categories (weapons, magazines, items, backpacks) for different pieces of equipment into which you have to classify the classnames.
    In all cases, you need the classname of an object.

    Attention: The function of these lists depends on the setting in the mission parameter (Restrict arsenal).
        - "Full": here you have only the registered items in the arsenal available.
        - "Remove only": here all registered items are removed from the arsenal. This only works for the ACE3 arsenal!

    Example(s):
        private _weapons = [
            "arifle_MX_F",          //Classname for the rifle MX
            "arifle_MX_SW_F",       //Classname for the rifle MX LSW
            "arifle_MXC_F"          //Classname for the rifle MXC
        ];

        private _items = [
            "G_Shades_Black",
            "G_Shades_Blue",
            "G_Shades_Green"
        ];
*/
private _weapons = [];
private _magazines = [];
private _items = ["NVGogglesB_gry_F","NVGogglesB_grn_F","NVGogglesB_blk_F","H_HelmetO_ViperSP_hex_F","H_HelmetO_ViperSP_ghex_F","rhsusf_acc_anpas13gv1","optic_Nightstalker","optic_tws","optic_tws_mg","TFAR_anprc148jem","TFAR_anprc154","TFAR_fadak","TFAR_pnr1000a","TFAR_rf7800str","ItemRadio"];
private _backpacks = ["B_Bergen_mcamo_F","B_Bergen_hex_F","B_Bergen_dgtl_F","B_Bergen_tna_F","B_Bergen_tna_F","B_UAV_06_backpack_F","O_UAV_06_backpack_F","B_UAV_06_backpack_F","I_UAV_06_medical_backpack_F","O_UAV_06_medical_backpack_F","C_IDAP_UAV_06_medical_backpack_F","B_UAV_06_medical_backpack_F","C_UAV_06_medical_backpack_F","I_UAV_01_backpack_F","O_UAV_01_backpack_F","B_UAV_01_backpack_F","C_IDAP_UAV_06_antimine_backpack_F"];

btc_custom_arsenal = [_weapons, _magazines, _items, _backpacks];

/*
    Here you can specify which equipment is loaded on player connection.
*/

private _radio = ["TFAR_fadak"] select (isClass(configFile >> "cfgPatches" >> "acre_main"));
//Array of colored item: 0 - Desert, 1 - Tropic, 2 - Black
private _uniforms = ["rhs_uniform_emr_patchless"];
private _vests = ["rhs_6b23_6sh92", "rhs_6b23_6sh92", "rhs_6b23_6sh92"];
private _helmets = ["rhs_6b27m_digi", "rhs_6b27m_digi", "rhs_6b27m_digi"];
private _hoods = [];
private _laserdesignators = ["Laserdesignator", "Laserdesignator_03", "Laserdesignator_01_khk_F"];
private _night_visions = ["NVGoggles", "NVGoggles_INDEP", "NVGoggles_OPFOR"];
private _weapons = ["rhs_weap_ak74m", "rhs_weap_ak74m", "rhs_weap_ak74m"];
private _weapons_machineGunner = ["rhs_weap_pkp", "rhs_weap_pkp", "rhs_weap_pkp"];
private _weapons_sniper = ["rhs_weap_svdp", "rhs_weap_svds", "rhs_weap_svds_npz"];
private _bipods = ["rhs_bipod", "rhs_bipod", "bipod_01_F_blk"];
private _pistols = ["rhs_weap_makarov_pmm", "rhs_weap_makarov_pmm", "rhs_weap_makarov_pmm"];
private _launcher_AT = ["rhs_weap_rpg7", "rhs_weap_rshg2", "rhs_weap_rpg26"];
private _launcher_AA = ["rhs_weap_igla", "rhs_weap_igla", "rhs_weap_igla"];
private _backpacks = ["rhs_assault_umbts", "rhs_assault_umbts", "rhs_assault_umbts"];
private _backpacks_big = ["rhs_assault_umbts", "rhs_assault_umbts", "rhs_assault_umbts"];

btc_arsenal_loadout = [_uniforms, _vests, _helmets, _hoods, _laserdesignators, _night_visions, _weapons, _weapons_sniper, _weapons_machineGunner, _bipods, _pistols, _launcher_AT, _launcher_AA, _backpacks, _backpacks_big, [_radio, _radio, _radio]];
