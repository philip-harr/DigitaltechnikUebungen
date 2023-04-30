GHDL=ghdl
FLAGS="--std=08"

adder1:
	@$(GHDL) -a $(FLAGS) adder.vhd tb_adder.vhd
	@$(GHDL) -e $(FLAGS) adder_tb
	@$(GHDL) -r $(FLAGS) adder_tb --wave=wave.ghw --stop-time=50ns
