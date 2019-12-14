onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -group cache /Cache_TB/cache/reg_en
add wave -noupdate -group cache /Cache_TB/cache/replace_idx
add wave -noupdate -group cache /Cache_TB/cache/replace_valid
add wave -noupdate -group cache /Cache_TB/cache/genblk1/tag_store
add wave -noupdate -group cache /Cache_TB/cache/genblk1/data_store
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {0 ps} 0}
quietly wave cursor active 0
configure wave -namecolwidth 150
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 1
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ns
update
WaveRestoreZoom {26931 ps} {30162 ps}
