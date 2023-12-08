#set library path in the system
# libsPath="$HOME/libs"
libsPath="/usr/local/eda/synLibs"

#set the library path
# export ENV_LIBRARY_PATH="${libsPath}/asap7/7nm/db"
export ENV_LIBRARY_PATH="${libsPath}/egfet/db"

#set the library name
# export ENV_LIBRARY_DB="asap7.db"
export ENV_LIBRARY_DB="EGFET_1.0V.db"

#set library verilog path
# export ENV_LIBRARY_VERILOG_PATH="${libsPath}/asap7/7nm/verilog"
export ENV_LIBRARY_VERILOG_PATH="${libsPath}/egfet/verilog"

#set the top design name
export ENV_TOP_DESIGN="top"
#set the desired delay
export ENV_CLK_PERIOD="200000000.00"

#clock name and reset (if applicable)
export ENV_CLK_PORT="clk"
export ENV_RST_PORT="rst_n"
#set ENV_VIRTUAL_CLOCK to false if the design contains a clock or to true if not
export ENV_VIRTUAL_CLOCK="true"

#set tb name
export ENV_TB_NAME="top_tb"
#vcd name
export ENV_DUMPFILE="$(pwd)/sim/${ENV_TOP_DESIGN}.fsdb"
export ENV_DUT_NAME="DUT"


if [ -z "$SNPS_SYN" ]; then
	echo "set SNPS_SYN"
	exit 1
fi
