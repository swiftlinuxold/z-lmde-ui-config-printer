#!/bin/bash 
# This is the script for the Network Wizard
# Command for executing this script: config-network.sh (NOT "sh config-network.sh")

export PrinterWizard=$(cat <<End_of_Text

<window title="`gettext $"Software Wizard"`" window-position="1">

<vbox>
  <frame>
  <hbox>
	<vbox>
	  <frame>
	  <hbox>
		<button>
		<input file>"/usr/share/icons/gTangish-2.0a1/32x32/actions/stock_print-setup.png"</input>
		<action>system-config-printer &</action>
		</button>
		<text use-markup="true" width-chars="15"><label>"`gettext $"system-config-printer"`"</label></text>
      </hbox>
      </frame>
	</vbox>

	<vbox>
	  <frame>
	  <hbox>
		<button>
		<input file>"/usr/share/icons/gTangish-2.0a1/32x32/actions/stock_print-setup.png"</input>
		<action>iceweasel localhost:631 &</action>
		</button>
		<text use-markup="true" width-chars="15"><label>"`gettext $"CUPS web interface"`"</label></text>
      </hbox>
      </frame>
	</vbox>
  </hbox>
  </frame>
		
  <hbox>
	<button>
	  <label>"`gettext $"Close"`"</label>
	  <input file>"/usr/share/icons/gTangish-2.0a1/16x16/actions/dialog-cancel.png"</input>
	  <action>EXIT:close</action>
	</button>
  </hbox>
</vbox>
  
</window>
End_of_Text
)

gtkdialog -c --program=PrinterWizard
unset PrinterWizard
