TTYDEV ?= /dev/ttyUSB0

.PHONY: all 6502 6502_clean fpga fpga_clean esp8266 esp8266_flash esp8266_clean

6502:
	$(MAKE) -C 6502

6502_clean:
	$(MAKE) -C 6502 clean

fpga:
	$(MAKE) -C quartus

fpga_clean:
	$(MAKE) -C quartus clean

esp8266:
	$(MAKE) -C esp8266/cosmogol999/rboot
	$(MAKE) -C esp8266/cosmogol999

esp8266_flash:
	$(MAKE) -C esp8266/cosmogol999 flash ESPPORT=${TTYDEV}

esp8266_clean:
	$(MAKE) -C esp8266/cosmogol999/rboot clean
	$(MAKE) -C esp8266/cosmogol999 clean

all: 6502 fpga esp8266
clean: 6502_clean fpga_clean esp8266_clean
