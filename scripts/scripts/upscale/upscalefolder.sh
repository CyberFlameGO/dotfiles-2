#!/bin/bash

cd ~/scripts/upscale

mkdir ./i
mkdir ./o

cd ./i

for i in *.png
    do waifu2x-converter-cpp --force-OpenCL -j 4 --scale-ratio 2 -m scale -i $i -o ../o/x2_$i
done
for i in *.jpg
    do waifu2x-converter-cpp --force-OpenCL -j 4 --scale-ratio 2 -m scale -i $i -o ../o/x2_$i
done
