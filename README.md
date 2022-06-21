
# Scripted Vivado Project 
This repository demonstrates a scripted vivado build process. Vivado in used in project mode and the build flow is controlled with a .tcl script. 

## Requirements

 - Vivado 2020.2 
 - (optional) The output of this project may be optionally test on a Digilent ARTY-35T

## Build Flow
This project imports source files, automatically creates and builds the block diagram and generates the bitstream. 

## Expected Output
Xilinx support archive (`.xsa`) will be placed within the repository under directory called `hw`

## Build Instructions
To build the project first clone this repository and then launch vivado from within the repository. The build script is relative to the repostiory. 

1. Clone the git repository 
```console
git clone https://github.com/lukevassallo/vivado_scripted_build_example xilinx_scripted_build_example
```

2. With Change Directory (cd) command change to the repository cloned in step 1.
```console
cd <path-to-repository> 
cd C:\users\<user>\xilinx_scripted_build_example		(example) 
```

3. Start the build script.
```console
source ./scripts/build_hw.tcl
```

## Updating block diagram
If the block diagram altered, the corresponding script should be updated. This may done as follows:
File -> Export -> Export Block Design 

When prompted, specify `<path-to-repository>/scripts/build_bd.tcl` as the tcl file and **uncheck** automatically create top design. 

## Parallel build
By default the script uses maximum of 4 parallel jobs. The number of jobs may be increased by modifiying the '-jobs' option for the 'launch_runs' command.