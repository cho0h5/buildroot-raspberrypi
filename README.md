# buildroot-raspberrypi

## Build

```bash
# standard
make -C buildroot BR2_EXTERNAL=.. O=../output rpi1_defconfig
make -C buildroot O=../output

# preempt-rt
make -C buildroot BR2_EXTERNAL=.. O=../output_rt rpi1_rt_defconfig
make -C buildroot O=../output_rt
```

## Config

```bash
make -C buildroot O=../output menuconfig
make -C buildroot O=../output linux-menuconfig
```
