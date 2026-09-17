# setup_project.tcl -- run once, from the P3b root
# Creates the directory tree Cadence tools expect and the cds.lib mapping file.
# Usage: tclsh setup_project.tcl
file mkdir ../lib
file mkdir ../rtl
file mkdir ../constraints
file mkdir ../lib/worklib
file mkdir ../lib/45

set channelid [open ../lib/cds.lib w+]
puts $channelid {define worklib "./worklib"}
close $channelid
puts "cds.lib created. Now copy the PDK: cp -r /cadence/FOUNDRY/digital/45nm/dig/lib/* ../lib/45/"
