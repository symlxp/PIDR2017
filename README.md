# PIDR2017

### WARNINGS

 - If you clone the git as it is now, you don't have to install pin and the compiling tools.
 - Just go to the "Compil and Install Pintool on device" part then

### INFOS

This tutorial works for:

	Jelly Bean (API 18) -> Android 4.3
	(or previous versions)


### Install pin (only if you do not have download the x86-)
 - We suppose you have one (and only one) device or emulator running,
 - Download pintool for android :

		http://software.intel.com/sites/landingpage/pintool/downloads/pin-2.14-71313-gcc.4.6-android.tar.gz

		( version : pin-2.13-65163-gcc.4.6-android -> ok 		)
		(	    pin-2.13-65163-gcc.4.6-android -> ok 		)
		(	    pin-2.14-71313-gcc.4.6-android -> version used here )
		(	    pin-2.14-71313-gcc.4.9-android -> doesn't work	)


 - then just run:

		./scripts/install.sh

		( if you can't use the script :  sudo chmod 777 scripts/install.sh )


### Install Compiling tools
 - Download android ndk-9:

		http://dl.google.com/android/ndk/android-ndk-r9-linux-x86.tar.bz2

 - then run:

		./scripts/set-ndk.sh

		( if you can't use the script :  sudo chmod 777 scripts/set-ndk.sh )


### Compil and Install Pintool on device
 - run:
 
		./scripts/push-tool.sh <name-of-the-Tool-without-".so">
    
		( if you can't use the script :  sudo chmod 777 scripts/push-tool.sh )

### Use pin on an ".apk" from Scratch
 - run:

		./scripts/pin-on-apk.sh <name-of-the-apk>
    
		( if you can't use the script :  sudo chmod 777 scripts/push-tool.sh )
