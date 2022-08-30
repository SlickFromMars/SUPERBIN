@echo off
title Haxeflixel Setup (Basic Libraries)
echo Installing Basic Haxe Libraries...
echo.

haxelib install lime
haxelib install openfl
haxelib install flixel
haxelib install flixel-tools
haxelib install flixel-ui
haxelib install hscript
haxelib install flixel-addons
haxelib install actuate
haxelib run lime setup
haxelib run lime setup flixel
haxelib run flixel-tools setup

title Haxeflixel Setup
echo.
:choice
set /P c=Basic install complete. Proceed to FNF libraries?[Y/N]?
if /I "%c%" EQU "Y" goto :fnf
if /I "%c%" EQU "N" goto :verify

goto :choice

title Haxeflixel Setup (FNF Libraries)

:fnf
haxelib git linc_luajit https://github.com/nebulazorua/linc_luajit.git
haxelib git hxvm-luajit https://github.com/nebulazorua/hxvm-luajit
haxelib git faxe https://github.com/uhrobots/faxe
haxelib git polymod https://github.com/MasterEric/polymod.git
haxelib git discord_rpc https://github.com/Aidan63/linc_discord-rpc
haxelib git extension-webm https://github.com/KadeDev/extension-webm
lime rebuild extension-webm windows
haxelib install tjson
haxelib install hxjsonast
haxelib install hxCodec
haxelib git hscript-ex https://github.com/ianharrigan/hscript-ex
haxelib install hxcpp-debug-server

:verify
title Haxeflixel Setup
echo.
haxelib list

echo.
echo Setup complete.
pause