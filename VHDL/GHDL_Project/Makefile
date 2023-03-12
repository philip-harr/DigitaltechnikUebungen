GHDL=ghdl
FLAGS="--std=08"

adder1:
	@$(GHDL) -a $(FLAGS) adder.vhd tb_adder.vhd
	@$(GHDL) -e $(FLAGS) adder_tb
	@$(GHDL) -r $(FLAGS) adder_tb --wave=wave.ghw --stop-time=50ns

adder4:
	@$(GHDL) -a $(FLAGS) adder.vhd adder4.vhd tb_adder4.vhd
	@$(GHDL) -e $(FLAGS) adder4_tb
	@$(GHDL) -r $(FLAGS) adder4_tb --wave=wave4.ghw --stop-time=50ns