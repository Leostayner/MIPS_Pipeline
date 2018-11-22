transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -2008 -work work {C:/Users/leo_v/MIPS_Pipeline/Projeto2/alu.vhd}
vcom -2008 -work work {C:/Users/leo_v/MIPS_Pipeline/Projeto2/mux2way.vhd}
vcom -2008 -work work {C:/Users/leo_v/MIPS_Pipeline/Projeto2/mux4way.vhd}
vcom -2008 -work work {C:/Users/leo_v/MIPS_Pipeline/Projeto2/FullAdder.vhd}
vcom -2008 -work work {C:/Users/leo_v/MIPS_Pipeline/Projeto2/FullAdder32.vhd}
vcom -2008 -work work {C:/Users/leo_v/MIPS_Pipeline/Projeto2/or32.vhd}
vcom -2008 -work work {C:/Users/leo_v/MIPS_Pipeline/Projeto2/UCAlu.vhd}
vcom -2008 -work work {C:/Users/leo_v/MIPS_Pipeline/Projeto2/ram.vhd}
vcom -2008 -work work {C:/Users/leo_v/MIPS_Pipeline/Projeto2/romMif.vhd}
vcom -2008 -work work {C:/Users/leo_v/MIPS_Pipeline/Projeto2/bancoRegistradores.vhd}
vcom -2008 -work work {C:/Users/leo_v/MIPS_Pipeline/Projeto2/Registrador.vhd}
vcom -2008 -work work {C:/Users/leo_v/MIPS_Pipeline/Projeto2/extend16to32.vhd}
vcom -2008 -work work {C:/Users/leo_v/MIPS_Pipeline/Projeto2/UCfd.vhd}
vcom -2008 -work work {C:/Users/leo_v/MIPS_Pipeline/Projeto2/conversorHex7Seg.vhd}
vcom -2008 -work work {C:/Users/leo_v/MIPS_Pipeline/Projeto2/Decoder.vhd}
vcom -2008 -work work {C:/Users/leo_v/MIPS_Pipeline/Projeto2/FluxoDeDados.vhd}
vcom -2008 -work work {C:/Users/leo_v/MIPS_Pipeline/Projeto2/mips.vhd}

