#!/bin/dash

# ^c$var^ = fg color
# ^b$var^ = bg color

interval=0

# load colors

cpu() {
  cpu_val=$(grep -o "^[^ ]*" /proc/loadavg)

  printf "$CPU"
  printf "$cpu_val"
}


battery() {
  get_capacity="$(cat /sys/class/power_supply/BAT1/capacity)"
  printf "  $get_capacity"
}


mem() {
  printf "$(free -h | awk '/^Mem/ { print $3 } ' | sed s/i//g)"
}

wlan() {
	case "$(cat /sys/class/net/wl*/operstate 2>/dev/null)" in
	up) printf "󰤨 " ;;
	down) printf "󰤭 ""Disconnected" ;;
	esac
}

clock() {
	printf "$(date '+%I:%M:%S %B | %A | %D')"
}

nitrogen --restore
picom
while true; do

  [ $interval = 0 ] || [ $(($interval % 3600)) = 0 ] && 
  interval=$((interval + 1))

  sleep 1 && xsetroot -name " CPU : $(cpu) || RAM : $(mem) || $(wlan)|| $(clock)"
done
