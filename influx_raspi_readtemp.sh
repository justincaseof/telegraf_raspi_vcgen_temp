#!/bin/bash

# --> /opt/vc/bin/vcgencmd measure_temp
# --> /sys/class/thermal/thermal_zone0/temp

# influx format: raspi_cpu_temp temperature=123 1465839830100400200
# The timestamp is optional in Line Protocol. If you do not specify a timestamp for your data point InfluxDB uses the server’s local nanosecond timestamp in UTC.
echo raspi_cpu_temp temperature=`cat /sys/class/thermal/thermal_zone0/temp | sed 's/\(^\|[^0-9.]\)\([0-9]\+\)\([0-9]\{3\}\)/\1\2.\3/g'` `date +%s%N`
