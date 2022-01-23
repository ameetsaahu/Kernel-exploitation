#!/bin/sh

# timeout --foreground 300
qemu-system-x86_64 -s \
    -no-reboot \
    -m 32M \
    -kernel bzImage \
    -cpu qemu64,+smep \
    -nographic \
    -append "console=ttyS0 init='/init' kpti=1 acpi=noirq quiet" \
    -initrd initramfs.cpio.gz \
    -monitor /dev/null
    # -enable-kvm \
    # -cpu kvm64,+smep \

