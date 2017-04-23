#/bin/bash

template_file=miura_ori_template.ps

template_name=${template_file%.ps}
folder="scan"

mkdir -p $folder

echo "processing $template_name..."


for cellx in 2 3 4 5
do

    for celly in 2 3 4 5
    do

	for alpha in 10 15 20 45 50 60 70
	do
	    echo "for $alpha degree"
	    newfile="$folder/${template_name}_${alpha}_${cellx}_${celly}.ps"
	    sed "s|/winkel .*def|/winkel $alpha def|" "$template_file" > "$newfile"
	    sed -i "s|/xabstandcm .*def|/xabstandcm $cellx def|" "$newfile"
	    sed -i "s|/yabstandcm .*def|/yabstandcm $celly def|" "$newfile"

	    ps2pdf $newfile ${newfile%ps}pdf

	done

    done
done
	   
