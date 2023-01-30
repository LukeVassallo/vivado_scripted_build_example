set outputdir work
set projectName work
set partNumber xc7a35tcsg324-1
set jobs 4

# TODO: Input validation
if { $argc != 0 } {
    puts "Changing the number of jobs from $jobs to [lindex $argv 0]"
    set jobs [lindex $argv 0]
    puts "Variable jobs now contains the value $jobs"
}

file mkdir $outputdir

create_project -part $partNumber $projectName $outputdir

add_files -fileset constrs_1 xdc/board.xdc

# Create an empty block diagram
create_bd_design -name design_1 -dir ./bd   

# Import .tcl procs ( these are user designs previously exported. )
source scripts/build_bd.tcl    

# Built it
create_root_design ""

# generate a wrapper (top - file) for the block design.
make_wrapper -top [get_files bd/design_1/design_1.bd]

# add the hdl wrapper to the project
add_files -fileset sources_1 bd/design_1/hdl/design_1_wrapper.v

# define top module for the current fileset.
set_property top design_1_wrapper.v [current_fileset]

# set the vivado implementation strategy to 'Performance_NetDelay_high'
#set_property strategy Performance_NetDelay_high [get_runs impl_1]

launch_runs -jobs $jobs synth_1	; # launched in the background
wait_on_run synth_1	; # therefore we must wait before proceeding

launch_runs impl_1 -jobs $jobs -to_step write_bitstream
wait_on_run impl_1

puts "Build complete."

puts "Running write bitstream"

# fixed - enables the platform to be used in software development flow but not acceleration
# force - overwrite if xsa already exists
# include_bit - by default MCS files are created and bistreams are discarded.
write_hw_platform -fixed -force -include_bit hw/design_1_wrapper.xsa

#close_project
