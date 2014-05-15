#!/bin/bash
# $1: dir for miui
# $2: dir for original

APKTOOL="$PORT_ROOT/tools/apktool --quiet"
BUILD_OUT=out

SEP_FRAME="framework2.jar.out"

function removeMzActionBarContainer() {
	for file in `find $1 -name *.smali`
	do
		filename=`basename $file`
		if [ "$filename" == "MzActionBarContainer.smali" ];then
			continue
		fi
		sed -i 's/MzActionBarContainer/ActionBarContainer/g' $file
		if [ "$filename" == "ActionBarContainer.smali" ];then
			cat overlay/ActionBarContainer.part >> $file
		fi
	done
}

if [ $2 = "$BUILD_OUT/framework" ]
then
    # remove all files at out/framework those exist in framework2.jar.out
	for file2 in `find framework2.jar.out -name *.smali`; do
			file=${file2/framework2.jar.out/$BUILD_OUT\/framework}
			echo "rm file: $file"
			rm -rf "$file"
	done

	rm -f $2/smali/android/text/util/LinkSpec.smali
	for file in `find $2 -name Linkify*`; do
		sed -i "s/android\/text\/util\/LinkSpec;/android\/text\/util\/Linkify\$LinkSpec;/g" $file
	done


    # move some smali to create a separate $SEP_FRAME.jar
    # including: smali/miui smali/android/widget
	mkdir -p "$BUILD_OUT/$SEP_FRAME/smali/android"
	rm -rf $BUILD_OUT/$SEP_FRAME/smali/android/widget
	#overlay
	cp -f overlay/AbsListView/* $BUILD_OUT/framework/smali/android/widget
	cp -f overlay/ListView/* $BUILD_OUT/framework/smali/android/widget
	cp -f overlay/GridView/* $BUILD_OUT/framework/smali/android/widget
	cp -f overlay/ResolverActivity/* $BUILD_OUT/framework/smali/com/android/internal/app

	mv "$BUILD_OUT/framework/smali/android/widget" "$BUILD_OUT/$SEP_FRAME/smali/android"

    removeMzActionBarContainer $2

	#replace mms
	rm -rf "$BUILD_OUT/framework/smali/com/google/android/mms"
fi

if [ $2 = "$BUILD_OUT/framework2" ]
then
    # remove all files at out/framework1 those exist in framework.jar.out
	for file2 in `find framework.jar.out -name *.smali`; do
			file=${file2/framework.jar.out/$BUILD_OUT\/framework2}
			echo "rm file: $file"
			rm -rf "$file"
	done

	mv "$BUILD_OUT/$SEP_FRAME/smali/android/widget/"  "$BUILD_OUT/framework2/smali/android/widget"

	#replace mms
	cp -rf "$BUILD_OUT/framework_miui/smali/com/google/android/mms" "$BUILD_OUT/framework2/smali/com/google/android"
   
fi

if [ $2 = "out/android.policy" ];then
    curdir=`pwd`
    cd overlay/android.policy.jar.out
    for file in `find . -name *.part`
    do
		filepath=`dirname $file`
		filename=`basename $file .part`
        dstfile="$curdir/out/android.policy/$filepath/$filename"
        cat $file >> $dstfile
    done
    cd -
    cd out
    for patch in `find ../overlay/android.policy.jar.out -name "*.patch"`
    do
        git.apply $patch
    done
    cd -
	removeMzActionBarContainer $2
fi

if [ $2 = "out/services" ];then
	#overlay
	cp -f overlay/InputMethodManagerService\$ImeSubtypeListAdapter.smali $BUILD_OUT/services/smali/com/android/server
fi
