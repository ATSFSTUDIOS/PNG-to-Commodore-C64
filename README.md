# PNG-to-Commodore-C64

## Overview

A collection of drag-and-drop utilities to help prepare imagery for display on retro 8-bit Commodore C64 computers.

This script uses a pair of "drag and drop" .bat scripts to export a PNG image into a Commodore C64 Koala .koa image format, or a .prg program format.

- Export PNG Image to C64 Koala.bat
- Export PNG Image to C64 PRG.bat

You can check a Koala image using the following online browser based image viewer:  

https://viewer.online/koa

You can check a c64 .prg program using the following online browser based Commodore 64 Vice Emulator:  

https://c64.sannic.nl/

c64img Docs:  

https://pypi.org/project/c64img/  

Koala Painter Docs:  

http://justsolve.archiveteam.org/wiki/KoalaPainter  

# PyPy Installation

The c64img Python Module and the OpenImageIO oiiotool library are required to make this toolset work. Thee libraries can be installed using the Python "pip" based package manager from the Widows command prompt with:

```bash
python -m pip install --upgrade image2c64
python -m pip install --upgrade OpenImageIO
```

# image2c64 Help Info:

```bash
image2c64 --help
usage: image2c64 [-h] [-g {0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15}] [-b {0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15}]
                 [-e {show,save,grafx2,fix,none}] -f {art-studio-hires,hires,koala,multi} [-x | -r] [-o OUTPUT]
                 [-q | -v] [-V]
                 filename [filename ...]

image2c64 converts virtually any fullscreen image supported by Pillow to C64
hires or multicolor formats. Best results are achived with filetypes PNG or
GIF.

positional arguments:
  filename

options:
  -h, --help            show this help message and exit
  -g {0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15}, --border {0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15}
                        set color number for border, default: most frequent color
  -b {0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15}, --background {0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15}
                        set color number for background
  -e {show,save,grafx2,fix,none}, --errors {show,save,grafx2,fix,none}
                        perform the action in case of color clashes: save errormap under the same name with '_error'
                        suffix, show it, open in grafx2, fix it, or don't do anything (the message appear)
  -f {art-studio-hires,hires,koala,multi}, --format {art-studio-hires,hires,koala,multi}
                        format of output file, this option is mandatory
  -x, --executable      produce C64 executable as 'prg' file
  -r, --raw             produce raw files with only the data. Useful for include in assemblers
  -o OUTPUT, --output OUTPUT
                        output filename, default: same filename as original with appropriate extension. If multiple
                        files provided as the input, output will be treated as the directory
  -q, --quiet           please, be quiet. Adding more "q" will decrease verbosity
  -v, --verbose         be verbose. Adding more "v" will increase verbosity
  -V, --version         show program's version number and exit
```

# OpenImaegIO oiiotool CLI Help:

```bash
oiiotool
oiiotool -- simple image processing operations
OpenImageIO 3.2.1.3 http://www.openimageio.org

Usage: oiiotool [filename|command]...

Options (general flags):
    --help --version -v -q -n --no-error-exit -a --debug --runstats --buildinfo --info --list-formats --metamatch
    --no-metamatch --stats --dumpdata --hash -u --no-clobber --create-dir --threads --gpu --no-autopremult
    --autopremult --autoorient --autocc --noautocc --native --cache --autotile --metamerge --oiioattrib
    --experimental
Control flow and scripting:
    --set --if --else --endif --while --endwhile --for --endfor --frames --framepadding --views --skip-bad-frames
    --parallel-frames --wildcardoff --wildcardon --evaloff --evalon
Commands that read images:
    -i --iconfig --missingfile --testread
Commands that write images:
    -o -otex -oenv -obump
Options that affect subsequent image output:
    -d --scanline --tile --compression --dither --planarconfig --adjust-time --noautocrop --autotrim
Options that print data (usually about the current image):
    --echo --printinfo --printstats --colorcount --rangecheck
Options that change current image metadata (but not pixel values):
    --attrib --sattrib --eraseattrib --caption --keyword --clear-keywords --history --no-history --nosoftwareattrib
    --sansattrib --orientation --orientcw --orientccw --orient180 --origin --originoffset --fullsize --fullpixels
    --chnames
Options that affect subsequent actions:
    --fail --failpercent --hardfail --warn --warnpercent --hardwarn
Actions:
    --create --pattern --kernel --capture --diff --pdiff --flipdiff --add --addc --sub --subc --scale --mul --mulc
    --div --divc --mad --invert --abs --absdiff --absdiffc --powc --noise --chsum --colormap --cryptomatte-colors
    --crop --croptofull --trim --cut --paste --pastemeta --mosaic --over --zover --deepmerge --deepholdout --rotate90
    --rotate180 --rotate270 --flip --flop --reorient --transpose --cshift --resample --resize --fit --pixelaspect
    --rotate --warp --st_warp --convolve --blur --median --dilate --erode --unsharp --laplacian --normalize --fft
    --ifft --polar --unpolar --fixnan --fillholes --max --maxc --maxchan --min --minc --minchan --clamp --contrast
    --saturate --decorrstretch --rangecompress --rangeexpand --line --point --box --fill --text --demosaic
Manipulating channels or subimages:
    --ch --nchannels --chappend --unmip --selectmip --subimage --sisplit --siappend --siappendall --layersplit
    --deepen --flatten --thumbnail-get --thumbnail-set
Image stack manipulation:
    --label --dup --swap --pop --popbottom --stackreverse --stackextract --stackclear
Color management:
    --colorconfiginfo --colorconfig --iscolorspace --tocolorspace --colorconvert --ccmatrix --ociolook --ociodisplay
    --ociofiletransform --ocionamedtransform --unpremult --premult --repremult --iccwrite --iccread --cicp

For detailed help: oiiotool --help
```

