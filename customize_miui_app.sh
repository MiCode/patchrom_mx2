#!/bin/bash
#
# $1: dir for original miui app 
# $2: dir for target miui app
#

XMLMERGYTOOL=$PORT_ROOT/tools/ResValuesModify/jar/ResValuesModify
GIT_APPLY=$PORT_ROOT/tools/git.apply

curdir=`pwd`

function applyPatch () {
    for patch in `find $1 -name *.patch`
    do
		cd out
		$GIT_APPLY ../$patch
		cd ..
		for rej in `find $2 -name *.rej`
		do
			echo "Patch $patch fail"
			exit 1
		done
    done
}

function appendSmaliPart() {
    for file in `find $1/smali -name *.part`
    do
		filepath=`dirname $file`
		filename=`basename $file .part`
		dstfile="out/$filepath/$filename"
        cat $file >> $dstfile
    done
}

function mergyXmlPart() {
	for file in `find $1/res -name *.xml.part`
	do
		src=`dirname $file`
		dst=${src/$1/$2}
		$XMLMERGYTOOL $src $dst
	done
}

if [ $1 = "MiuiSystemUI" ];then
	appendSmaliPart $1
	mergyXmlPart $1 $2
fi

if [ $1 = "Phone" ];then
	appendSmaliPart $1
fi

if [ $1 = "Settings" ];then
	applyPatch $1 $2
	mergyXmlPart $1 $2
fi

if [ $1 = "MiuiGallery" ];then
	mergyXmlPart $1 $2
fi

if [ $1 = "Music" ];then
    mergyXmlPart $1 $2
fi
