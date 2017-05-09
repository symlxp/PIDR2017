# PIDR2017

## ETAPE 1 - Téléchargement des fichiers nécessaires
git clone https://github.com/tristanvdb/pin-android.git
cd PIDR2017

## ETAPE 2 - Installation d'un émulateur android
*Si vous possédez déjà un émulateur android, passez directement à l'étape 3.*

./scripts/install.sh
source ./scripts/android-pin.rc
android sdk
./scripts/create-devices.sh

## ETAPE 3 - Installation du pin dans l'émulateur Android
*Dans un premier temps, il faut lancer l'émulateur Android.
Si vous avez installé l'émulateur via l'étape 2 suivez les indications ci-dessous, sinon suivez les indications de l'étape 3 (bis)*

*ouvrir en parallèle un terminal et accéder au dossier PIDR2017*
emulator -list-avds
*récupérer le nom de l'émulateur que vous souhaitez utiliser*

source ./scripts/android-pin.rc
emulator -avd *nom de l'émulateur*

*Retournez sur le premier terminal*
./install-pin.sh

## ETAPE 3 (bis)

*Ouvrez votre émulateur android*

./install-pin.sh

## ETAPE 4 - Utilisation d'un inscount sur la commande ls de l'émulateur

./inscount-ls.sh

## ETAPE 5 - Utilisation d'un inscount/itrace sur l'exécution d'un apk
./inscount-apk SansChargement.apk
*Remplacez SansChargement.apk par le nom de l'apk que vous souhaitez utiliser*

#TODO
Compiler le itrace pour une utilisation sous android
