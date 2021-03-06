# Test compilation makefile
#
# Copyright (c) 2016 Ryan Kurte
# This file is covered under the MIT license available at: https://opensource.org/licenses/MIT

.PHONY: setup efm32g efm32gg efm32zg efm32wg efm32lg efm32tg efm32hg ezr32lg ezr32wg

test: setup efm32g efm32gg efm32zg efm32wg efm32lg efm32tg efm32hg ezr32lg ezr32wg

setup:
	mkdir -p builds

#EFM32G Family
efm32g:
	cd builds; rm -rf efm32g; mkdir efm32g; cd efm32g; cmake -DDEVICE=EFM32G210F128 ../..; make

#EFM32GG Family
efm32gg:
	cd builds; rm -rf efm32gg; mkdir efm32gg; cd efm32gg; cmake -DDEVICE=EFM32GG990F1024 ../..; make

#EFM32ZG Family
efm32zg:
	cd builds; rm -rf efm32zg; mkdir efm32zg; cd efm32zg; cmake -DDEVICE=EFM32ZG222F32 ../..; make

#EFM32WG Family
efm32wg:
	cd builds; rm -rf efm32wg; mkdir efm32wg; cd efm32wg; cmake -DDEVICE=EFM32WG990F256 ../..; make

#EFM32LG Family
efm32lg:
	cd builds; rm -rf efm32lg; mkdir efm32lg; cd efm32lg; cmake -DDEVICE=EFM32LG990F256 ../..; make;

#EFM32TG Family
efm32tg:
	cd builds; rm -rf efm32tg; mkdir efm32tg; cd efm32tg; cmake -DDEVICE=EFM32TG840F32 ../..; make;

#EFM32WG Family
efm32hg:
	cd builds; rm -rf efm32hg; mkdir efm32hg; cd efm32hg; cmake -DDEVICE=EFM32HG322F64 ../..; make

#EFM32LG Family
ezr32lg:
	cd builds; rm -rf ezr32lg; mkdir ezr32lg; cd ezr32lg; cmake -DDEVICE=EZR32LG230F256R67 ../..; make;

#EFM32TG Family
ezr32wg:
	cd builds; rm -rf ezr32wg; mkdir ezr32wg; cd ezr32wg; cmake -DDEVICE=EZR32WG230F256R67 ../..; make;


clean:
	rm -rf builds
