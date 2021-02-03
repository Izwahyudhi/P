#!/bin/bash

export KERNELNAME=Zeus_Kernel

export LOCALVERSION=EAS

export KBUILD_BUILD_USER=Izwahyudhi

export KBUILD_BUILD_HOST=#Funproject

export TOOLCHAIN=clang

export DEVICES=lavender

source helper

gen_toolchain

send_msg "⏳ Sabar jink ${KERNELNAME} ${LOCALVERSION} for ${DEVICES}..."

START=$(date +"%s")

for i in ${DEVICES//,/ }
do 

	build ${i} -oldcam


done

END=$(date +"%s")
 
DIFF=$(( END - START ))
