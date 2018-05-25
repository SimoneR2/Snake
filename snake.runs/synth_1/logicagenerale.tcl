# 
# Synthesis run script generated by Vivado
# 

proc create_report { reportName command } {
  set status "."
  append status $reportName ".fail"
  if { [file exists $status] } {
    eval file delete [glob $status]
  }
  send_msg_id runtcl-4 info "Executing : $command"
  set retval [eval catch { $command } msg]
  if { $retval != 0 } {
    set fp [open $status w]
    close $fp
    send_msg_id runtcl-5 warning "$msg"
  }
}
set_param xicom.use_bs_reader 1
create_project -in_memory -part xc7a100tcsg324-1

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_msg_config -source 4 -id {IP_Flow 19-2162} -severity warning -new_severity info
set_property webtalk.parent_dir {D:/DOCUMENTI LUIGINO/GitHub/Snake/snake.cache/wt} [current_project]
set_property parent.project_path {D:/DOCUMENTI LUIGINO/GitHub/Snake/snake.xpr} [current_project]
set_property XPM_LIBRARIES {XPM_CDC XPM_MEMORY} [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language VHDL [current_project]
set_property ip_output_repo {d:/DOCUMENTI LUIGINO/GitHub/Snake/snake.cache/ip} [current_project]
set_property ip_cache_permissions {read write} [current_project]
add_files {{D:/DOCUMENTI LUIGINO/GitHub/Snake/snake.srcs/sources_1/ip/romvideo.coe}}
add_files {{D:/DOCUMENTI LUIGINO/GitHub/Snake/snake.srcs/sources_1/ip/blk_mem_gen_0/raminit.coe}}
read_vhdl -library xil_defaultlib {
  {D:/DOCUMENTI LUIGINO/GitHub/Snake/snake.srcs/sources_1/new/7seg.vhd}
  {D:/DOCUMENTI LUIGINO/GitHub/Snake/snake.srcs/sources_1/new/animazioni.vhd}
  {D:/DOCUMENTI LUIGINO/GitHub/Snake/snake.srcs/sources_1/new/edgebutton.vhd}
  {D:/DOCUMENTI LUIGINO/GitHub/Snake/snake.srcs/sources_1/new/gestione.vhd}
  {D:/DOCUMENTI LUIGINO/GitHub/Snake/snake.srcs/sources_1/new/prescaler1hz.vhd}
  {D:/DOCUMENTI LUIGINO/GitHub/Snake/snake.srcs/sources_1/new/snakemov.vhd}
  {D:/DOCUMENTI LUIGINO/GitHub/Snake/snake.srcs/sources_1/new/vga.vhd}
  {D:/DOCUMENTI LUIGINO/GitHub/Snake/snake.srcs/sources_1/new/logicagenerale.vhd}
}
read_ip -quiet {{D:/DOCUMENTI LUIGINO/GitHub/Snake/snake.srcs/sources_1/ip/clk_wiz_0/clk_wiz_0.xci}}
set_property used_in_implementation false [get_files -all {{d:/DOCUMENTI LUIGINO/GitHub/Snake/snake.srcs/sources_1/ip/clk_wiz_0/clk_wiz_0_board.xdc}}]
set_property used_in_implementation false [get_files -all {{d:/DOCUMENTI LUIGINO/GitHub/Snake/snake.srcs/sources_1/ip/clk_wiz_0/clk_wiz_0.xdc}}]
set_property used_in_implementation false [get_files -all {{d:/DOCUMENTI LUIGINO/GitHub/Snake/snake.srcs/sources_1/ip/clk_wiz_0/clk_wiz_0_ooc.xdc}}]

read_ip -quiet {{D:/DOCUMENTI LUIGINO/GitHub/Snake/snake.srcs/sources_1/ip/blk_mem_gen_0/blk_mem_gen_0.xci}}
set_property used_in_implementation false [get_files -all {{d:/DOCUMENTI LUIGINO/GitHub/Snake/snake.srcs/sources_1/ip/blk_mem_gen_0/blk_mem_gen_0_ooc.xdc}}]

read_ip -quiet {{D:/DOCUMENTI LUIGINO/GitHub/Snake/snake.srcs/sources_1/ip/blk_mem_gen_1/blk_mem_gen_1.xci}}
set_property used_in_implementation false [get_files -all {{d:/DOCUMENTI LUIGINO/GitHub/Snake/snake.srcs/sources_1/ip/blk_mem_gen_1/blk_mem_gen_1_ooc.xdc}}]

# Mark all dcp files as not used in implementation to prevent them from being
# stitched into the results of this synthesis run. Any black boxes in the
# design are intentionally left as such for best results. Dcp files will be
# stitched into the design at a later time, either when this synthesis run is
# opened, or when it is stitched into a dependent implementation run.
foreach dcp [get_files -quiet -all -filter file_type=="Design\ Checkpoint"] {
  set_property used_in_implementation false $dcp
}
read_xdc {{D:/DOCUMENTI LUIGINO/GitHub/Snake/snake.srcs/constrs_1/imports/Laboratorio VHDL-FPGA/Nexys4DDR_Master.xdc}}
set_property used_in_implementation false [get_files {{D:/DOCUMENTI LUIGINO/GitHub/Snake/snake.srcs/constrs_1/imports/Laboratorio VHDL-FPGA/Nexys4DDR_Master.xdc}}]

set_param ips.enableIPCacheLiteLoad 0
close [open __synthesis_is_running__ w]

synth_design -top logicagenerale -part xc7a100tcsg324-1


# disable binary constraint mode for synth run checkpoints
set_param constraints.enableBinaryConstraints false
write_checkpoint -force -noxdef logicagenerale.dcp
create_report "synth_1_synth_report_utilization_0" "report_utilization -file logicagenerale_utilization_synth.rpt -pb logicagenerale_utilization_synth.pb"
file delete __synthesis_is_running__
close [open __synthesis_is_complete__ w]
