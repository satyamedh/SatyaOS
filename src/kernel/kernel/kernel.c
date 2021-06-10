#include <stdio.h>
#include <kernel/vga.h>
#include <kernel/tty.h>

void kernel_main(void) {
    terminal_initialize(VGA_COLOR_WHITE, VGA_COLOR_RED);
    printf("Welcome to the world of SatyaOS!");
}
