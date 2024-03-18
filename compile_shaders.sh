#!/bin/bash

if ! [ -d shaders ];
then
    echo "shaders folder not found"
    exit 1
fi

if ! [ -d build ];
then
    mkdir build
fi

if ! [ -d build/shaders ];
then 
    mkdir build/shaders
fi


for SHADER in $(ls shaders);
do
    /usr/bin/glslc shaders/$SHADER -o "build/shaders/${SHADER}.spv"
done