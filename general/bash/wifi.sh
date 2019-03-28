#Toggles a mac's wifi connection between off an on. Usefull when linked up to a keyboard shortcut. 

DEVICE=$(networksetup -listallhardwareports | grep -A 2 -E "AirPort|Wi-Fi" | grep -m 1 -o -e en[0-9]);

 if [ $(networksetup -getairportpower $DEVICE | grep -c On) == 0 ]
 then
  networksetup -setairportpower $DEVICE On
  echo "Wi-Fi enabled.";
 else
  networksetup -setairportpower $DEVICE Off
  echo "Wi-Fi disabled.";
 fi
