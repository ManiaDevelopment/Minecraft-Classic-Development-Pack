Minecraft Classic Development Pack v1.0 for Minecraft Classic (v0.30)
=====================================================================

License and terms of use:
=========================
MCDP is (c) Copyright by Oliver Yasuna

You are allowed to:
- Use MCDP to decompile the Minecraft Classic client files.
- Use the decompiled source code to create mods for Minecraft Classic.
- Recompile modified versions of Minecraft Classic.
- Reobfuscate the classes of your mod for Minecraft Classic.

You are NOT allowed to:
- Use MCDP to do anything that violated Mojang's terms of use for Minecraft and Minecraft Classic.
- Release modified or unmodified versions of MCDP anywhere.
- Use any of MCDP's scripts, tools or data files without explicit written permission.
- Make money with anything based on MCCD (excluding Minecraft Classic mods created by using MCDP).
- Use MCDP to create clients that are used for griefing or exploiting server bugs.
- Release the decompiled source code of Minecraft Classic in any way.

Prerequisites:
==============
1) Install the latest version of Java SDK 1.6 Standard Edition (JDK 1.6):
- http://www.oracle.com/technetwork/java/javase/downloads/jdk6u35-downloads-1836443.html
	- NOTE: MCDP has not been tested on Java SDK 1.7 Standard Edition (JDK 1.7).
2) Add the paths to your JDK and JRE bin folders to the Environment Variable PATH:

	- http://www.java.com/en/download/help/path.xml
	- Example for Windows users:
		- C:\Program Files\Java\jdk1.6.0_35\bin;C:\Program Files\Java\jre6\bin
- We wont provide support for this, so please don't ask.

How to use:
===========
1) Prepare the files:
- Copy the minecraft.jar in the "Minecraft" folder from your TEMP folder.
	- Ex: C:\Users\Your Name\AppData\Local\Temp\www.minecraft.net\Minecraft\minecraft.jar
	- Do not copy the folder, copy minecraft.jar.
- Paste it in the "jars/client" folder in your MCDP folder.
- Copy the minecraft-server.jar from the zip you downloaded from Minecraft.net.
	- http://s3.amazonaws.com/MinecraftDownload/minecraft_classic_server.zip
- Paste it in the "jars/server" folder in your MCDP folder.

2) Decompilation:
- Start the "decompile.bat" script in your MCDP folder.

3) Modding:
- Modify the source code in "output\client\src" folder for client.
- Modify the source code in "output\server\src" folder for server.

4) Recompiling:
- Copy all the modified client classes into "build\client" in your MCDP folder.
- Copy all the modified server classes into "build\server" in your MCDP folder.
- Start the "recompile.bat" script in your MCDP folder.

5) Testing:
- For client start the "startclient.bat" script in your MCDP folder.
- For server start the "startserver.bat" script in your MCDP folder.

6) Reobfuscation:
- Start the "reobfuscate.bat" script in your MCDP folder.
- This will obfuscate any changed classes.

Credits:
========
Oliver Yasuna (oyasunadev)
Steveice10

Changelog:
1.0 - Initial release.