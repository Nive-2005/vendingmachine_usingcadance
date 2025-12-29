read_libs /home/cadence/FOUNDRY/digital/90nm/dig/lib/slow.lib
read_hdl vendingmachine.v
elaborate
read_sdc vm_input_constraints.sdc

set_db syn_generic_effort medium
syn_generic
set_db syn_map_effort medium
syn_map
set_db syn_opt_effort medium
syn_opt

write_hdl > vm_netlist.v
write_sdc > vm_output_constraints.sdc
report_timing > vm_timing.rep
report_area > vm_area.rep
report_gates > vm_GateCount.rep
report_power > vm_power.rep
gui_show

