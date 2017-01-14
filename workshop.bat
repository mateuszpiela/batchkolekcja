@echo off
rem Ustaw tutaj lokalizację plików
rem Workshop to lokalizacja z dodatkami gmod
rem Path to lokalizacja folderu bin potrzebny do gmad
set Path=C:\Program Files (x86)\Steam\steamapps\common\GarrysMod\bin\
set Workshop=C:\Program Files (x86)\Steam\steamapps\common\GarrysMod\garrysmod\addons
cd %workshop%
dir *.gma /B >> index.txt
for /F "tokens=*" %%A in (index.txt) do gmad %%A 
del index.txt
