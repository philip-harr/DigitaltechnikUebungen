GHDL=ghdl
FLAGS="--std=08"

alu:
	@$(GHDL) -a $(FLAGS) tb_alu.vhd adder8.vhd adder.vhd or8.vhd and8.vhd xor8.vhd invert8.vhd mux2.vhd gate8.vhd alu.vhd
	@$(GHDL) -e $(FLAGS) alu_tb
	@$(GHDL) -r $(FLAGS) alu_tb --wave=wave.ghw --stop-time=50ns

