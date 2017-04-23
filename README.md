
# Introduction

The pattern generated is intended to be perforated into paper using a
laser cutter. This is to simplify folding a Miura pattern ("Miura
Ori") precisely.

#Procedure

Laser dash_line_gauge.ps into your material and choose the best
perforation and folding properties.

Enter the chosen parameters into miura_ori_template.ps into the
variable dashparameters.

Then run

    ./make_templates.sh

to make a parameters scan.
