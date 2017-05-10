if (isServer) then {
	diag_log "Loading custom rlnt server compiles...";
};

if (!isDedicated) then {
	diag_log "Loading custom rlnt client compiles...";

	//RLNT - Relentless
		/*		RLNT - WeaponHUD		*/
			fnc_hud_getImages 			= compile preprocessFileLineNumbers "rlnt\functions\hud_getImages.sqf";
			fnc_hud_updateImages 		= compile preprocessFileLineNumbers "rlnt\functions\hud_updateImages.sqf";
};
