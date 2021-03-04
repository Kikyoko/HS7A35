########################################################################################################################
## clock & reset interface
set_property PACKAGE_PIN D4     [get_ports hard_clk]
set_property PACKAGE_PIN C4     [get_ports hard_rst_n]

set_property IOSTANDARD LVCMOS33    [get_ports hard_*]

########################################################################################################################
## uart interface
set_property PACKAGE_PIN E6     [get_ports uart_txd]
set_property PACKAGE_PIN C7     [get_ports uart_rxd]

set_property IOSTANDARD LVCMOS33    [get_ports uart_*]

set_property PULLUP true [get_ports uart_*]

########################################################################################################################
## LED interface
set_property PACKAGE_PIN K12    [get_ports o_led_n[0]]
set_property PACKAGE_PIN L14    [get_ports o_led_n[1]]
set_property PACKAGE_PIN L13    [get_ports o_led_n[2]]
set_property PACKAGE_PIN M14    [get_ports o_led_n[3]]

set_property IOSTANDARD LVCMOS33    [get_ports o_led_n*]

set_property PULLUP true [get_ports o_led*]

########################################################################################################################
## Key interface
set_property PACKAGE_PIN D11    [get_ports i_key_n[0]]
set_property PACKAGE_PIN G11    [get_ports i_key_n[1]]
set_property PACKAGE_PIN H11    [get_ports i_key_n[2]]
set_property PACKAGE_PIN K13    [get_ports i_key_n[3]]

set_property IOSTANDARD LVCMOS33    [get_ports i_key_n*]

