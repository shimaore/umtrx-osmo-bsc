#!/bin/bash

# Pick one of:

# * NITB
#   Use this one if you want to get a working installation quickly.
#   The `-a` option allows anyone to register on your network.
#   Once you're done playing with it, have a look inside var/hlr.sqlite3 to see
#   how you can do more complicated things (e.g. pre-register your users).
#
# osmo-nitb -c etc/nitb.cfg -l var/hlr.sqlite3 -T -P -C --debug=DRLL:DCC:DMM:DRR:DRSL:DNM:DMNCC:DPAG:DMEAS:DSCCP:DMSC:DMGCP:DHO:DDB:DREF:DGPRS:DNS:DBSSGP:DLLC:DSNDCP:DNAT:DCTRL:DSMPP -a

# Actually, since the Debian packages are currently not built when using
# the `jolly/testing` branch, you have to start it this way:
./openbsc/openbsc/src/osmo-nitb/osmo-nitb -c etc/nitb.cfg -l var/hlr.sqlite3 -T -P -C -a \
  --debug=DRLL:DCC:DMM:DRR:DRSL:DNM:DMNCC:DPAG:DMEAS:DSCCP:DMSC:DMGCP:DHO:DDB:DREF:DGPRS:DNS:DBSSGP:DLLC:DSNDCP:DNAT:DCTRL:DSMPP

# * BSC
#   This is the one I use for development of a SIP MSC.
#   Probably not very useful unless you're a carrier and already have an MSC. :)
#
# osmo-bsc -c etc/bsc.cfg -T -d DRLL:DCC:DMM:DRR:DRSL:DNM:DLMI

# Complete list of debug options:
# DCC:DDB:DGPRS:DHO:DLINP:DLLC:DLMI:DLMUX:DLSMS:DMEAS:DMM:DMNCC:DNM:DREF:DRLL:DRR:DRSL:DSMPP

# Available debugs are (from openbsc/openbsc/src/libcommon/debug.c):
#   DRLL:DCC:DMM:DRR:DRSL:DNM:DMNCC:DPAG:DMEAS:DSCCP:DMSC:DMGCP:DHO:DDB:DREF:DGPRS:DNS:DBSSGP:DLLC:DSNDCP:DNAT:DCTRL:DSMPP
