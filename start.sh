#!/bin/bash

# Pick one of:

# * NITB
# osmo-nitb -c etc/nitb.cfg -l var/hlr.sqlite3 -T -P -C --debug=DRLL:DCC:DMM:DRR:DRSL:DNM -a

# * BSC
# osmo-bsc -c etc/bsc.cfg -T -d DRLL:DCC:DMM:DRR:DRSL:DNM
