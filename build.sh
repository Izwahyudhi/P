#!/bin/bash

export KERNELNAME=_-Zeus-_

export LOCALVERSION=4646

export KBUILD_BUILD_USER=

export KBUILD_BUILD_HOST=Izwahyudhi@#Funproject

export TOOLCHAIN=clang

export DEVICES=lavender

source helper

gen_toolchain

send_msg "⏳ Start building ${KERNELNAME} ${LOCALVERSION} for ${DEVICES}..."

START=$(date +"%s")

for i in ${DEVICES//,/ }
do 

	build ${i} -oldcam


done

END=$(date +"%s")
 
DIFF=$(( END - START ))
