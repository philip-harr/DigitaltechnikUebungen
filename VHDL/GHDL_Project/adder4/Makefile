GHDL=ghdl
FLAGS="--std=08"

adder4:
	@$(GHDL) -a $(FLAGS) ../example/adder.vhd adder4.vhd tb_adder4.vhd
	@$(GHDL) -e $(FLAGS) adder4_tb
	@$(GHDL) -r $(FLAGS) adder4_tb --wave=wave4.ghw --stop-time=50ns