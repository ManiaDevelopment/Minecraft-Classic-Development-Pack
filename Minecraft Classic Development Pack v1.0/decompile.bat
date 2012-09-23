@echo off

echo Minecraft Classic Development Pack v1.0 by Oliver Yasuna (oyasunadev)

echo Running JarJar on minecraft.jar...
mkdir temp
java -jar bin\jarjar-1.1.jar process config\clientjarjar.rules jars\minecraft.jar temp\minecraftjj.jar

echo Running RetroGuard on minecraftjj.jar...
if not exist logs (
	mkdir logs
)
java -jar bin\retroguard.jar temp\minecraftjj.jar temp\minecraftjjrg.jar config\clientretroguard.rgs logs\retro.log

echo Copying minecraftjjrg.jar to minecraft.jar...
echo Press "f"
rd /s /q output\client
mkdir output\client
xcopy /y temp\minecraftjjrg.jar output\client\minecraft.jar

echo Decompiling minecraftjjrg.jar...
java -jar bin\fernflower.jar -dgs=1 -das=0 -ren=0 temp\minecraftjjrg.jar temp\fernflower

echo Extracting minecraftjjrg.jar...
mkdir output\client\src
bin\7za.exe x temp\fernflower\minecraftjjrg.jar -ooutput\client\src

echo Deleting temp...
rd /s /q temp

echo DONE WITH EVERYTHING! ENJOY!

pause