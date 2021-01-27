# Based on: https://github.com/mfischer/Altera-Makefile
# But I stipped all the .chg management and .qsf generation,
# making this quite dumb.

PROJECT = lesshadoks
REVISION = pompaient
TOP_LEVEL_ENTITY = lesshadoks_top
ASSIGNMENT_FILES = $(PROJECT).qpf $(REVISION).qsf

all: $(PROJECT).asm.rpt $(PROJECT).sta.rpt 

clean:
	rm -rf output_files/*.rpt output_files/*.htm output_files/*.eqn output_files/*.pin output_files/*.sof output_files/*.pof output_files/*.rbf db incremental_db

map: $(PROJECT).map.rpt
fit: $(PROJECT).fit.rpt
asm: $(PROJECT).asm.rpt
sta: $(PROJECT).sta.rpt

MAP_ARGS = --read_settings_files=on --write_settings_files=off
FIT_ARGS = --read_settings_files=off --write_settings_files=off
ASM_ARGS = --read_settings_files=off --write_settings_files=off 
STA_ARGS =

$(PROJECT).map.rpt:
	quartus_map $(MAP_ARGS) $(PROJECT) -c $(REVISION)

$(PROJECT).fit.rpt: $(PROJECT).map.rpt
	quartus_fit $(FIT_ARGS) $(PROJECT) -c $(REVISION)

$(PROJECT).asm.rpt: $(PROJECT).fit.rpt
	quartus_asm $(ASM_ARGS) $(PROJECT) -c $(REVISION)

$(PROJECT).sta.rpt: $(PROJECT).fit.rpt
	quartus_sta $(STA_ARGS) $(PROJECT) -c $(REVISION)

program: $(PROJECT).sof
	quartus_pgm --no_banner --mode=jtag -o "P;$(PROJECT).sof"

program-pof: $(PROJECT).pof
	quartus_pgm --no_banner --mode=jtag -o "BVP;$(PROJECT).pof"
