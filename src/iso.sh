#!/bin/sh
set -e
. ./build.sh

mkdir -p isodir
mkdir -p isodir/boot
mkdir -p isodir/boot/grub

cp sysroot/boot/satyaos.kernel isodir/boot/satyaos.kernel
cat > isodir/boot/grub/grub.cfg << EOF
menuentry "satyaos" {
	multiboot /boot/satyaos.kernel
}
EOF
grub-mkrescue -o satyaos.iso isodir
