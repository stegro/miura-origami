#/bin/bash

template_file=miura_ori_template.ps

template_name=${template_file%.ps}
echo "processing $template_name..."


for val in 10 15 20 45 50 60 70
do
    echo "for $val degree"
    sed "s/winkel.*def/winkel $val def/" "$template_file" > "${template_name}_$val.ps"

done
	   
