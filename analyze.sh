#!/bin/bash
# analyze.sh

# Options & variables

usage() {
	printf "\nSelect running mode:
	-q: quiet mode 
	-v: verbose mode
	
	Optional arguments for custom use:

	-s: path to start inspecting from (ie /c or ~/)
	-f: path to folder where analyzed data will be stored (3 files)
	-h: Show this message\n";
	exit;
}

# note - the first : turns on production mode; the : after a letter indicate that an option must provide an argument.
while getopts ":hqvs:f:" o; do case "${o}" in
	h) usage ;;
	q) mode="quiet" ;;
	v) mode="verbose" ;;
	s) startInspectionFromPath=${OPTARG} && [ -d "$startInspectionFromPath" ] || exit ;;
	f) folderToStoreFilesPath=${OPTARG} ;;
	*) printf "Invalid option: -%s\\n" "$OPTARG" && exit ;;
esac done

# Defaults
echo "$folderToStoreFilesPath <-"

[ -z "$startInspectionFromPath" ] && startInspectionFromPath="/c"
[ -z "$folderToStoreFilesPath" ] && folderToStoreFilesPath="$HOME/Desktop/disk-analysis"
#[ -z "$mode" ] && mode="false"
[ -z "$mode" ] && usage

# create folder if doesn't exist already

[ ! -d ${folderToStoreFilesPath} ] && mkdir -pv ${folderToStoreFilesPath}

# cd to the folder
cd ${folderToStoreFilesPath}

if [ "$mode" = "quiet" ]; then
	du -h ${startInspectionFromPath} | tee "${folderToStoreFilesPath}/disk-sizes.txt" | sort -hr | tee "${folderToStoreFilesPath}/sorted-disk-sizes.txt" | head > "${folderToStoreFilesPath}/grouped-sorted-sizes.txt"

elif [ "$mode" = "verbose" ]; then
	du -h ${startInspectionFromPath} | tee "${folderToStoreFilesPath}/disk-sizes.txt" 
	cat disk-sizes.txt | sort -hr | tee "${folderToStoreFilesPath}/sorted-disk-sizes.txt"
	cat sorted-disk-sizes.txt | head | tee "${folderToStoreFilesPath}/grouped-sorted-sizes.txt"
else
	echo "Error! No mode / bad mode selected" && exit 1;
fi

echo "\nDone."
