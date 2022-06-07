GHDL=ghdl
FLAGS="--std=08"

adder1:
	@$(GHDL) -a $(FLAGS) adder.vhd tb_adder.vhd
	@$(GHDL) -e $(FLAGS) adder_tb
	@$(GHDL) -r $(FLAGS) adder_tb --wave=wave.ghw --stop-time=50ns

adder3:
	@$(GHDL) -a $(FLAGS) adder.vhd adder3.vhd tb_adder3.vhd
	@$(GHDL) -e $(FLAGS) adder3_tb
	@$(GHDL) -r $(FLAGS) adder3_tb --wave=wave.ghw --stop-time=50ns