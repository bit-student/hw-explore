onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -format Logic -radix unsigned /tb/inst_multiplier/rst
add wave -noupdate -format Logic -radix unsigned /tb/inst_multiplier/clk
add wave -noupdate -format Literal -radix unsigned /tb/inst_multiplier/a
add wave -noupdate -format Literal -radix unsigned /tb/inst_multiplier/b
add wave -noupdate -format Literal -radix unsigned /tb/inst_multiplier/c
add wave -noupdate -format Literal -radix unsigned /tb/inst_multiplier/a_q
add wave -noupdate -format Literal -radix unsigned /tb/inst_multiplier/b_q
add wave -noupdate -format Literal -radix unsigned /tb/inst_multiplier/c_p
add wave -noupdate -format Literal -radix unsigned /tb/inst_multiplier/c_p_d
add wave -noupdate -format Literal -radix unsigned /tb/inst_multiplier/c_d
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {20001030 ps} 0}
configure wave -namecolwidth 181
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 0
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
update
WaveRestoreZoom {37656250 ps} {99929726 ps}
