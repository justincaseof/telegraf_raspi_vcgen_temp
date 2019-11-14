# telegraf_raspi_vcgen_temp
Telegraf measurement for raspi cpu temperature

# HOWTO
Add the following to telegraf's config file (`/etc/telgraf/telegraf.conf`)

```
[[inputs.exec]]
  commands = [
    "/opt/telegraf_raspi_vcgen_temp/influx_raspi_readtemp.sh"
  ]
  name_suffix = "_raspi3temp"
  data_format = "influx"
```

