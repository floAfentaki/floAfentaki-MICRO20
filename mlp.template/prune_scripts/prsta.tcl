
#setup libs

set dcpath $::env(SNPS_SYN)
if {[string index $dcpath end] != "/"} {
        set DC_LIB_PATH ${dcpath}/libraries/syn/
} else {
        set DC_LIB_PATH ${dcpath}libraries/syn/
}

set LIB_DB_PATH $::env(ENV_LIBRARY_PATH)
if {[string index $LIB_DB_PATH end] != "/"} { set LIB_DB_PATH "${LIB_DB_PATH}/" }

set LIB_DB_NAME $::env(ENV_LIBRARY_DB)

set curDir [pwd]

set search_path [list ${LIB_DB_PATH} ${DC_LIB_PATH} ${curDir}/gate/]
set synthetic_library {dw_foundation.sldb}
set link_path [list ${LIB_DB_NAME} ${synthetic_library} *]



#read files
set top_design $::env(ENV_TOP_DESIGN)

read_verilog ./gate/${top_design}.sv
current_design $top_design
link_design
#read_sdf ../gate/${top_design}.sdf

#sdc
source ./scripts/sdc.tcl

set auto_wire_load_selection true
check_timing -include {supply_net_voltage signal_level unconnected_pg_pins}
update_timing

#reports
set clk_period $::env(ENV_CLK_PERIOD)

source $::env(NETSFILE)
set predName $::env(PREDWIRENAME)
set outFIle $::env(SIGFILE)

foreach wire $netList {
	set outlist "$wire"
	set l [get_timing_paths -through $wire -to $predName -max_paths 1]
	if {$l ne ""} {
	    foreach out $outputsList {
		    set l [get_timing_paths -through $wire -to $out -max_paths 1]
		    if {$l ne ""} {
			    #echo "$wire $out"
			    set outlist "$outlist,$out"
			    break
		    }
	    }
	} else {
	    set outlist "$outlist,${predName}[-999]"
	}
	echo $outlist >> $outFIle
}

quit
