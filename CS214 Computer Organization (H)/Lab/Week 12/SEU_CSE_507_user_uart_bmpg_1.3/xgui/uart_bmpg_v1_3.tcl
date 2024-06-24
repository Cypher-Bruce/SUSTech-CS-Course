# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set page [ipgui::add_page $IPINST -name "page"]
  set_property tooltip {page} ${page}
  ipgui::add_param $IPINST -name "Reset" -parent ${page}
  ipgui::add_param $IPINST -name "Input_Clock_Freqency" -parent ${page}
  ipgui::add_param $IPINST -name "Baud_Rate" -parent ${page}
  ipgui::add_param $IPINST -name "Data_Bits" -parent ${page}
  ipgui::add_param $IPINST -name "Parity" -parent ${page}
  ipgui::add_param $IPINST -name "Stop_Bits" -parent ${page}


}

proc update_PARAM_VALUE.Baud_Rate { PARAM_VALUE.Baud_Rate } {
	# Procedure called to update Baud_Rate when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.Baud_Rate { PARAM_VALUE.Baud_Rate } {
	# Procedure called to validate Baud_Rate
	return true
}

proc update_PARAM_VALUE.Data_Bits { PARAM_VALUE.Data_Bits } {
	# Procedure called to update Data_Bits when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.Data_Bits { PARAM_VALUE.Data_Bits } {
	# Procedure called to validate Data_Bits
	return true
}

proc update_PARAM_VALUE.Input_Clock_Freqency { PARAM_VALUE.Input_Clock_Freqency } {
	# Procedure called to update Input_Clock_Freqency when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.Input_Clock_Freqency { PARAM_VALUE.Input_Clock_Freqency } {
	# Procedure called to validate Input_Clock_Freqency
	return true
}

proc update_PARAM_VALUE.Parity { PARAM_VALUE.Parity } {
	# Procedure called to update Parity when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.Parity { PARAM_VALUE.Parity } {
	# Procedure called to validate Parity
	return true
}

proc update_PARAM_VALUE.Reset { PARAM_VALUE.Reset } {
	# Procedure called to update Reset when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.Reset { PARAM_VALUE.Reset } {
	# Procedure called to validate Reset
	return true
}

proc update_PARAM_VALUE.Stop_Bits { PARAM_VALUE.Stop_Bits } {
	# Procedure called to update Stop_Bits when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.Stop_Bits { PARAM_VALUE.Stop_Bits } {
	# Procedure called to validate Stop_Bits
	return true
}


