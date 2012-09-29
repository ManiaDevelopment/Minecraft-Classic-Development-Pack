@echo off

echo Minecraft Classic Development Pack v1.0 by Oliver Yasuna (oyasunadev)

if exist jars\client\minecraft.jar (
	goto client
) else (
	echo Client jar doesn't exist. Skipping...
	
	if exist jars\server\minecraft-server.jar (
		goto server
	) else (
		echo Server jar doesn't exist. Skipping...
	)
	
	goto end
)

:client
echo Decompiling the minecraft client...

mkdir temp

java -jar bin\jarjar-1.1.jar process config\clientjarjar.rules jars\client\minecraft.jar temp\minecraftjj.jar

if not exist logs (
	mkdir logs
)
java -jar bin\retroguard.jar temp\minecraftjj.jar temp\minecraftjjrg.jar config\clientretroguard.rgs logs\client-retro.log

echo Press "f"
rd /s /q output\client
mkdir output\client
xcopy /y temp\minecraftjjrg.jar output\client\minecraft.jar

java -jar bin\fernflower.jar -dgs=1 -das=0 -ren=0 temp\minecraftjjrg.jar temp\fernflower

mkdir output\client\src
bin\7za.exe x temp\fernflower\minecraftjjrg.jar -ooutput\client\src

if exist jars\server\minecraft-server.jar (
	goto server
) else (
	echo Server jar doesn't exist. Skipping...
	
	goto end
)

:server
echo Decompiling the minecraft server...

mkdir temp

java -jar bin\jarjar-1.1.jar process config\serverjarjar.rules jars\server\minecraft-server.jar temp\minecraft-serverjj.jar

if not exist logs (
	mkdir logs
)
java -jar bin\retroguard.jar temp\minecraft-serverjj.jar temp\minecraft-serverjjrg.jar config\serverretroguard.rgs logs\server-retro.log

echo Press "f"
rd /s /q output\server
mkdir output\server
xcopy /y temp\minecraft-serverjjrg.jar output\server\minecraft-server.jar

java -jar bin\fernflower.jar -dgs=1 -das=0 -ren=0 temp\minecraft-serverjjrg.jar temp\fernflower

mkdir output\server\src
bin\7za.exe x temp\fernflower\minecraft-serverjjrg.jar -ooutput\server\src

goto end

:end
::rd /s /q temp

if not exist build (
	mkdir build
	mkdir build\client
	mkdir build\server
)

echo DONE WITH EVERYTHING! ENJOY!

pause