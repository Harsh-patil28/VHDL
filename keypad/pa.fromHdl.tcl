
# PlanAhead Launch Script for Pre-Synthesis Floorplanning, created by Project Navigator

create_project -name keypad -dir "E:/035/keypad/planAhead_run_1" -part xc3s400pq208-5
set_param project.pinAheadLayout yes
set srcset [get_property srcset [current_run -impl]]
set_property target_constrs_file "keypad.ucf" [current_fileset -constrset]
set hdlfile [add_files [list {keypad.v}]]
set_property file_type Verilog $hdlfile
set_property library work $hdlfile
set_property top keypad $srcset
add_files [list {keypad.ucf}] -fileset [get_property constrset [current_run]]
open_rtl_design -part xc3s400pq208-5
