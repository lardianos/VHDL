# VHDL
Basic codes

Useful commands

#ghdl -s name.vhd //Syntax Analisys
#ghdl -s --ieee=synopsys .\reg4.vhd ////Syntax Analisys
#ghdl -a name.vhd //Alalise
#ghdl -a --ieee=synopsys name.vhd //Alalise
#ghdl -e test_entity_name //elaborate
#ghdl -r test_entity_name //run
#ghdl -r test_entity_name --vcd=name.vcd //create vcd for gtkwave
#gtkwave name.vcd
