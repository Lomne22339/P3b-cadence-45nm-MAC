# Pre-flight checklist — Project 3b, Cadence + 45nm

Run these on the college server, from your VNC session, IN ORDER. Paste each command's output back and I'll interpret.

## Step 0 — Switch shell and source the environment

```
csh
source /cadence/cshrc
```

You should see a "Welcome to Cadence Tools" banner. If not, stop and paste the error.

## Step 1 — Confirm the PDK exists

```
ls /cadence/FOUNDRY/digital/45nm/dig/lib
```

I need to see the file names. Specifically I'm looking for:
- **`slow.lib`** (timing library, definitely there per PDF)
- **`fast.lib`** (fast corner for hold checks — may or may not be there)
- **`*.lef`** (physical library — critical, this is what was missing in cmos065)
- **`typical.v`** or **`slow.v`** (Verilog simulation models — needed for Conformal LEC)
- **`streamOut.map`** or similar (GDS layer mapping)

If any of these are missing, we adapt. If the `.lef` is there with a proper SITE definition, we're home free — that alone was our blocker on cmos065.

## Step 2 — Verify tools are on PATH

```
which genus innovus tempus lec nclaunch ncvlog
```

All six should return a path. If any says "Command not found", that tool isn't licensed on this account — tell me which ones, and I'll adapt the flow.

## Step 3 — Find the SITE name in the LEF

```
grep -i "^SITE " /cadence/FOUNDRY/digital/45nm/dig/lib/*.lef
```

This is the single most important line for us. It tells me the standard-cell row height and lets me fill in `SITE` in the Innovus script. Without a SITE the placer has nothing to snap cells to — that was exactly our cmos065 problem.

## Step 4 — Find the clock buffer/inverter cells

```
grep -Ei "^CELL.*(CLKBUF|CLKINV|BUFF.*CK|INV.*CK)" /cadence/FOUNDRY/digital/45nm/dig/lib/slow.lib | head -30
```

Or, easier, once we're in Genus:
```
report_lib slow.lib | grep -iE "BUF|INV" | head -30
```

I'll use these names to fill in `set_ccopt_mode -cts_buffer_cells` in the Innovus script.

---

**When these four steps are done, paste the outputs and I'll:**
1. Fill in the placeholders in `innovus_pnr.tcl` (LEF_FILE, SITE, buffer names, metal-layer names).
2. Copy the whole P3b tree onto the server for you.
3. We start Stage 1 (Compile & Elaborate) live together.
