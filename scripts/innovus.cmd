#######################################################
#                                                     
#  Innovus Command Logging File                     
#  Created on Wed Sep 16 12:26:59 2026                
#                                                     
#######################################################

#@(#)CDS: Innovus v20.10-p004_1 (64bit) 05/07/2020 20:02 (Linux 2.6.32-431.11.2.el6.x86_64)
#@(#)CDS: NanoRoute 20.10-p004_1 NR200413-0234/20_10-UB (database version 18.20.505) {superthreading v1.69}
#@(#)CDS: AAE 20.10-p005 (64bit) 05/07/2020 (Linux 2.6.32-431.11.2.el6.x86_64)
#@(#)CDS: CTE 20.10-p005_1 () Apr 14 2020 09:14:28 ( )
#@(#)CDS: SYNTECH 20.10-b004_1 () Mar 12 2020 22:18:21 ( )
#@(#)CDS: CPE v20.10-p006
#@(#)CDS: IQuantus/TQuantus 19.1.3-s155 (64bit) Sun Nov 3 18:26:52 PST 2019 (Linux 2.6.32-431.11.2.el6.x86_64)

set_global _enable_mmmc_by_default_flow      $CTE::mmmc_default
suppressMessage ENCEXT-2799
getVersion
getVersion
getVersion
win
set init_gnd_net VSS
set init_pwr_net VDD
set init_io_file pin_location.io
set init_lef_file {/cadence/FOUNDRY/digital/45nm/dig/lef/gsclib045_tech.lef /cadence/FOUNDRY/digital/45nm/dig/lef/gsclib045_macro.lef}
set init_mmmc_file simple_mac.view
set init_top_cell simple_mac
set init_verilog ../syn_report/simple_mac_netlist.v
init_design
setDesignMode -process 45 -topRoutingLayer 6 -bottomRoutingLayer 2
checkDesign -physicalLibrary
checkDesign -netlist
check_timing
floorPlan -site CoreSite -r 1 0.65 4.0 4.0 4.0 4.0
zoomBox 3.75950 1.39000 56.89250 48.95550
zoomBox 7.77050 3.10150 52.93350 43.53200
zoomBox -20.72550 -9.05850 81.06200 82.06300
zoomBox -29.76500 -12.91600 89.98500 94.28600
zoomBox -20.72550 -9.05850 81.06200 82.06300
gui_select -rect {101.20900 42.29600 137.42050 52.17200}
gui_select -rect {-9.13800 77.05900 79.74500 -5.37150}
deselectAll
zoomBox 0.07300 -4.04200 186.20750 85.94750
zoomBox -20.74600 -8.76250 198.23650 97.10750
zoomBox -45.23850 -14.31650 212.38800 110.23650
zoomBox -74.05300 -20.85050 229.03700 125.68250
gui_select -rect {-21.56350 33.09700 -17.91850 38.38250}
gui_select -rect {117.13250 44.94350 267.85750 -2.44250}
gui_select -rect {-15.73150 77.20250 93.80400 -5.54100}
gui_select -rect {34.20650 28.17600 147.75150 33.09700}
deselectAll
gui_select -rect {-49.81300 89.41400 127.52100 -10.82650}
deselectAll
gui_select -rect {79.77000 47.49500 98.90700 47.13050}
deselectAll
gui_select -rect {89.79400 55.15000 138.63850 32.91450}
gui_select -rect {122.23550 48.22400 143.74150 34.55500}
gui_select -rect {135.90450 37.65350 152.85450 23.43750}
gui_select -rect {136.81600 39.11150 146.84000 31.45650}
zoomBox -74.05300 -79.46450 229.03700 67.06850
zoomBox -74.05300 -94.11800 229.03700 52.41500
gui_select -rect {63.54950 -31.42250 62.27350 -46.00250}
zoomBox -74.05300 -50.15750 229.03700 96.37550
zoomBox -74.05300 8.45650 229.03700 154.98950
zoomBox -74.05300 23.11000 229.03700 169.64300
zoomBox -74.05300 8.45650 229.03700 154.98950
zoomBox -74.05300 -6.19700 229.03700 140.33600
zoomBox -74.05300 -20.85050 229.03700 125.68250
zoomBox -182.38700 -78.79700 311.14600 159.80850
zoomBox -140.27550 -56.27200 279.22800 146.54250
zoomBox -104.48050 -37.12600 252.09750 135.26650
zoomBox -74.05450 -20.85150 229.03700 125.68200
zoomBox -48.19250 -7.01900 209.43550 117.53500
zoomBox -26.21000 4.73900 192.77400 110.61000
zoomBox -7.52500 14.73350 178.61200 104.72400
zoomBox -26.21050 4.73900 192.77400 110.61000
zoomBox -48.19350 -7.01900 209.43550 117.53500
fit
fit
zoomBox -50.66350 -11.27850 136.49650 79.20650
zoomBox -58.68700 -20.43450 161.50100 86.01850
zoomBox -68.12700 -31.20600 190.91850 94.03300
zoomBox -79.23250 -43.87850 225.52700 103.46150
zoomBox -50.66400 -11.27900 136.49700 79.20650
zoomBox -43.84400 -3.49700 115.24300 73.41600
setPlaceMode -fp false
getPlaceMode -place_hierarchical_flow -quiet
report_message -start_cmd
getRouteMode -maxRouteLayer -quiet
getRouteMode -user -maxRouteLayer
getPlaceMode -user -maxRouteLayer
getPlaceMode -quiet -adaptiveFlowMode
getPlaceMode -timingDriven -quiet
getPlaceMode -adaptive -quiet
getPlaceMode -relaxSoftBlockageMode -quiet
getPlaceMode -user -relaxSoftBlockageMode
getPlaceMode -ignoreScan -quiet
getPlaceMode -user -ignoreScan
getPlaceMode -repairPlace -quiet
getPlaceMode -user -repairPlace
getPlaceMode -inPlaceOptMode -quiet
getPlaceMode -quiet -bypassFlowEffortHighChecking
getDesignMode -quiet -siPrevention
getPlaceMode -exp_slack_driven -quiet
um::push_snapshot_stack
getDesignMode -quiet -flowEffort
getDesignMode -highSpeedCore -quiet
getPlaceMode -quiet -adaptive
set spgFlowInInitialPlace 1
getPlaceMode -sdpAlignment -quiet
getPlaceMode -softGuide -quiet
getPlaceMode -useSdpGroup -quiet
getPlaceMode -sdpAlignment -quiet
getPlaceMode -enableDbSaveAreaPadding -quiet
getPlaceMode -quiet -wireLenOptEffort
getPlaceMode -sdpPlace -quiet
getPlaceMode -exp_slack_driven -quiet
getPlaceMode -sdpPlace -quiet
getPlaceMode -groupHighLevelClkGate -quiet
setvar spgRptErrorForScanConnection 0
getPlaceMode -place_global_exp_allow_missing_scan_chain -quiet
getPlaceMode -place_check_library -quiet
getPlaceMode -trimView -quiet
getPlaceMode -expTrimOptBeforeTDGP -quiet
getPlaceMode -quiet -useNonTimingDeleteBufferTree
getPlaceMode -congEffort -quiet
getPlaceMode -relaxSoftBlockageMode -quiet
getPlaceMode -user -relaxSoftBlockageMode
getPlaceMode -ignoreScan -quiet
getPlaceMode -user -ignoreScan
getPlaceMode -repairPlace -quiet
getPlaceMode -user -repairPlace
getPlaceMode -congEffort -quiet
getPlaceMode -fp -quiet
getPlaceMode -timingDriven -quiet
getPlaceMode -user -timingDriven
getPlaceMode -fastFp -quiet
getPlaceMode -clusterMode -quiet
get_proto_model -type_match {flex_module flex_instgroup} -committed -name -tcl
getPlaceMode -inPlaceOptMode -quiet
getPlaceMode -quiet -bypassFlowEffortHighChecking
getPlaceMode -ultraCongEffortFlow -quiet
getPlaceMode -forceTiming -quiet
getPlaceMode -fp -quiet
getPlaceMode -fastfp -quiet
getPlaceMode -timingDriven -quiet
getPlaceMode -fp -quiet
getPlaceMode -fastfp -quiet
getPlaceMode -powerDriven -quiet
getExtractRCMode -quiet -engine
getAnalysisMode -quiet -clkSrcPath
getAnalysisMode -quiet -clockPropagation
getAnalysisMode -quiet -cppr
setExtractRCMode -engine preRoute
setAnalysisMode -clkSrcPath false -clockPropagation forcedIdeal
getPlaceMode -exp_slack_driven -quiet
isAnalysisModeSetup
getPlaceMode -quiet -place_global_exp_solve_unbalance_path
getPlaceMode -quiet -NMPsuppressInfo
getPlaceMode -quiet -place_global_exp_wns_focus_v2
getPlaceMode -enableDistPlace -quiet
getPlaceMode -quiet -clusterMode
getPlaceMode -wl_budget_mode -quiet
setPlaceMode -reset -place_global_exp_balance_buffer_chain
getPlaceMode -wl_budget_mode -quiet
setPlaceMode -reset -place_global_exp_balance_pipeline
getPlaceMode -place_global_exp_balance_buffer_chain -quiet
getPlaceMode -place_global_exp_balance_pipeline -quiet
getPlaceMode -tdgpMemFlow -quiet
getPlaceMode -user -resetCombineRFLevel
getPlaceMode -quiet -resetCombineRFLevel
setPlaceMode -resetCombineRFLevel 1000
setvar spgSpeedupBuildVSM 1
getPlaceMode -tdgpResetCteTG -quiet
getPlaceMode -macroPlaceMode -quiet
getPlaceMode -enableDistPlace -quiet
getPlaceMode -exp_slack_driven -quiet
getPlaceMode -place_global_ignore_spare -quiet
getPlaceMode -enableDistPlace -quiet
getPlaceMode -quiet -expNewFastMode
setPlaceMode -expHiddenFastMode 1
setPlaceMode -reset -ignoreScan
getPlaceMode -quiet -place_global_exp_auto_finish_floorplan
colorizeGeometry
getPlaceMode -quiet -IOSlackAdjust
getPlaceMode -tdgpCteZeroDelayModeDelBuf -quiet
set_global timing_enable_zero_delay_analysis_mode true
getPlaceMode -quiet -useNonTimingDeleteBufferTree
getPlaceMode -quiet -prePlaceOptSimplifyNetlist
getPlaceMode -quiet -enablePrePlaceOptimizations
getPlaceMode -quiet -prePlaceOptDecloneInv
deleteBufferTree -decloneInv
getPlaceMode -tdgpCteZeroDelayModeDelBuf -quiet
set_global timing_enable_zero_delay_analysis_mode false
getAnalysisMode -quiet -honorClockDomains
getPlaceMode -honorUserPathGroup -quiet
getAnalysisMode -quiet -honorClockDomains
set delaycal_use_default_delay_limit 101
set delaycal_default_net_delay 0
set delaycal_default_net_load 0
set delaycal_default_net_load_ignore_for_ilm 0
getAnalysisMode -clkSrcPath -quiet
getAnalysisMode -clockPropagation -quiet
getAnalysisMode -checkType -quiet
buildTimingGraph
getDelayCalMode -ignoreNetLoad -quiet
getDelayCalMode -ignoreNetLoad -quiet
setDelayCalMode -ignoreNetLoad true -quiet
get_global timing_enable_path_group_priority
get_global timing_constraint_enable_group_path_resetting
set_global timing_enable_path_group_priority false
set_global timing_constraint_enable_group_path_resetting false
getOptMode -allowPreCTSClkSrcPaths -quiet
set_global _is_ipo_interactive_path_groups 1
group_path -name in2reg_tmp.76914 -from {0x70 0x73} -to 0x74 -ignore_source_of_trigger_arc
getOptMode -allowPreCTSClkSrcPaths -quiet
set_global _is_ipo_interactive_path_groups 1
group_path -name in2out_tmp.76914 -from {0x77 0x7a} -to 0x7b -ignore_source_of_trigger_arc
set_global _is_ipo_interactive_path_groups 1
group_path -name reg2reg_tmp.76914 -from 0x7d -to 0x7e
set_global _is_ipo_interactive_path_groups 1
group_path -name reg2out_tmp.76914 -from 0x81 -to 0x82
setPathGroupOptions reg2reg_tmp.76914 -effortLevel high
isAnalysisModeSetup
getAnalysisMode -analysisType -quiet
isAnalysisModeSetup
all_setup_analysis_views
all_hold_analysis_views
get_analysis_view $view -delay_corner
get_delay_corner $dcCorner -power_domain_list
get_delay_corner $dcCorner -library_set
get_delay_corner $dcCorner -late_library_set
get_library_set $lateLibSetName -si
get_delay_corner $dcCorner -early_library_set
get_library_set $earlyLibSetName -si
reset_path_group -name reg2out_tmp.76914
set_global _is_ipo_interactive_path_groups 0
reset_path_group -name in2reg_tmp.76914
set_global _is_ipo_interactive_path_groups 0
reset_path_group -name in2out_tmp.76914
set_global _is_ipo_interactive_path_groups 0
reset_path_group -name reg2reg_tmp.76914
set_global _is_ipo_interactive_path_groups 0
setDelayCalMode -ignoreNetLoad false
set delaycal_use_default_delay_limit 1000
set delaycal_default_net_delay 1000ps
set delaycal_default_net_load 0.5pf
set delaycal_default_net_load_ignore_for_ilm 0
all_setup_analysis_views
getPlaceMode -place_global_exp_ignore_low_effort_path_groups -quiet
getPlaceMode -exp_slack_driven -quiet
getAnalysisMode -quiet -honorClockDomains
getPlaceMode -ignoreUnproperPowerInit -quiet
getPlaceMode -quiet -expSkipGP
setDelayCalMode -engine feDc
createBasicPathGroups -quiet
psp::embedded_egr_init_
psp::embedded_egr_term_
reset_path_group
set_global _is_ipo_interactive_path_groups 0
scanReorder
setDelayCalMode -engine aae
all_setup_analysis_views
getPlaceMode -exp_slack_driven -quiet
set_global timing_enable_path_group_priority $gpsPrivate::optSave_ctePGPriority
set_global timing_constraint_enable_group_path_resetting $gpsPrivate::optSave_ctePGResetting
getPlaceMode -quiet -tdgpAdjustNetWeightBySlack
get_ccopt_clock_trees *
getPlaceMode -exp_insert_guidance_clock_tree -quiet
getPlaceMode -exp_cluster_based_high_fanout_buffering -quiet
getPlaceMode -place_global_exp_incr_skp_preserve_mode_v2 -quiet
getPlaceMode -quiet -place_global_exp_netlist_balance_flow
getPlaceMode -quiet -timingEffort
getAnalysisMode -quiet -honorClockDomains
getPlaceMode -honorUserPathGroup -quiet
getAnalysisMode -quiet -honorClockDomains
set delaycal_use_default_delay_limit 101
set delaycal_default_net_delay 0
set delaycal_default_net_load 0
set delaycal_default_net_load_ignore_for_ilm 0
getAnalysisMode -clkSrcPath -quiet
getAnalysisMode -clockPropagation -quiet
getAnalysisMode -checkType -quiet
buildTimingGraph
getDelayCalMode -ignoreNetLoad -quiet
getDelayCalMode -ignoreNetLoad -quiet
setDelayCalMode -ignoreNetLoad true -quiet
get_global timing_enable_path_group_priority
get_global timing_constraint_enable_group_path_resetting
set_global timing_enable_path_group_priority false
set_global timing_constraint_enable_group_path_resetting false
getOptMode -allowPreCTSClkSrcPaths -quiet
set_global _is_ipo_interactive_path_groups 1
group_path -name in2reg_tmp.76914 -from {0x8c 0x8f} -to 0x90 -ignore_source_of_trigger_arc
getOptMode -allowPreCTSClkSrcPaths -quiet
set_global _is_ipo_interactive_path_groups 1
group_path -name in2out_tmp.76914 -from {0x93 0x96} -to 0x97 -ignore_source_of_trigger_arc
set_global _is_ipo_interactive_path_groups 1
group_path -name reg2reg_tmp.76914 -from 0x99 -to 0x9a
set_global _is_ipo_interactive_path_groups 1
group_path -name reg2out_tmp.76914 -from 0x9d -to 0x9e
setPathGroupOptions reg2reg_tmp.76914 -effortLevel high
reset_path_group -name reg2out_tmp.76914
set_global _is_ipo_interactive_path_groups 0
reset_path_group -name in2reg_tmp.76914
set_global _is_ipo_interactive_path_groups 0
reset_path_group -name in2out_tmp.76914
set_global _is_ipo_interactive_path_groups 0
reset_path_group -name reg2reg_tmp.76914
set_global _is_ipo_interactive_path_groups 0
setDelayCalMode -ignoreNetLoad false
set delaycal_use_default_delay_limit 1000
set delaycal_default_net_delay 1000ps
set delaycal_default_net_load 0.5pf
set delaycal_default_net_load_ignore_for_ilm 0
all_setup_analysis_views
getPlaceMode -place_global_exp_ignore_low_effort_path_groups -quiet
getPlaceMode -exp_slack_driven -quiet
getPlaceMode -quiet -cong_repair_commit_clock_net_route_attr
getPlaceMode -enableDbSaveAreaPadding -quiet
getPlaceMode -quiet -wireLenOptEffort
setPlaceMode -reset -improveWithPsp
getPlaceMode -quiet -debugGlobalPlace
getPlaceMode -congRepair -quiet
getPlaceMode -fp -quiet
getPlaceMode -user -rplaceIncrNPClkGateAwareMode
getPlaceMode -user -congRepairMaxIter
getPlaceMode -quiet -congRepairPDClkGateMode4
setPlaceMode -rplaceIncrNPClkGateAwareMode 4
getPlaceMode -quiet -expCongRepairPDOneLoop
setPlaceMode -congRepairMaxIter 1
getPlaceMode -quickCTS -quiet
get_proto_model -type_match {flex_module flex_instgroup} -committed -name -tcl
getPlaceMode -congRepairForceTrialRoute -quiet
getPlaceMode -user -congRepairForceTrialRoute
setPlaceMode -congRepairForceTrialRoute true
::goMC::is_advanced_metrics_collection_enabled
congRepair
::goMC::is_advanced_metrics_collection_enabled
::goMC::is_advanced_metrics_collection_enabled
::goMC::is_advanced_metrics_collection_enabled
setPlaceMode -reset -congRepairForceTrialRoute
getPlaceMode -quiet -congRepairPDClkGateMode4
setPlaceMode -reset -rplaceIncrNPClkGateAwareMode
setPlaceMode -reset -congRepairMaxIter
getPlaceMode -congRepairCleanupPadding -quiet
getPlaceMode -quiet -wireLenOptEffort
all_setup_analysis_views
getPlaceMode -exp_slack_driven -quiet
set_global timing_enable_path_group_priority $gpsPrivate::optSave_ctePGPriority
set_global timing_constraint_enable_group_path_resetting $gpsPrivate::optSave_ctePGResetting
getPlaceMode -place_global_exp_incr_skp_preserve_mode_v2 -quiet
getPlaceMode -quiet -place_global_exp_netlist_balance_flow
getPlaceMode -quiet -timingEffort
getPlaceMode -tdgpDumpStageTiming -quiet
getPlaceMode -quiet -tdgpAdjustNetWeightBySlack
getPlaceMode -trimView -quiet
getOptMode -quiet -viewOptPolishing
getOptMode -quiet -fastViewOpt
spInternalUse deleteViewOptManager
spInternalUse tdgp clearSkpData
setAnalysisMode -clkSrcPath true -clockPropagation sdcControl
getPlaceMode -exp_slack_driven -quiet
setExtractRCMode -engine preRoute
setPlaceMode -reset -relaxSoftBlockageMode
setPlaceMode -reset -ignoreScan
setPlaceMode -reset -repairPlace
getPlaceMode -quiet -NMPsuppressInfo
setvar spgSpeedupBuildVSM 0
getPlaceMode -macroPlaceMode -quiet
getPlaceMode -exp_slack_driven -quiet
getPlaceMode -enableDistPlace -quiet
getPlaceMode -place_global_ignore_spare -quiet
getPlaceMode -tdgpMemFlow -quiet
setPlaceMode -reset -resetCombineRFLevel
getPlaceMode -enableDistPlace -quiet
getPlaceMode -quiet -clusterMode
getPlaceMode -quiet -place_global_exp_solve_unbalance_path
getPlaceMode -enableDistPlace -quiet
setPlaceMode -reset -expHiddenFastMode
getPlaceMode -tcg2Pass -quiet
getPlaceMode -quiet -wireLenOptEffort
getPlaceMode -fp -quiet
getPlaceMode -fastfp -quiet
getPlaceMode -doRPlace -quiet
getPlaceMode -RTCPlaceDesignFlow -quiet
getPlaceMode -quickCTS -quiet
set spgFlowInInitialPlace 0
getPlaceMode -user -maxRouteLayer
spInternalUse TDGP resetIgnoreNetLoad
getPlaceMode -place_global_exp_balance_pipeline -quiet
getDesignMode -quiet -flowEffort
report_message -end_cmd
um::create_snapshot -name final -auto min
um::pop_snapshot_stack
um::create_snapshot -name place_design
getPlaceMode -exp_slack_driven -quiet
gui_select -rect {-11.51050 45.10000 40.72150 17.16600}
fit
fit
deselectAll
gui_select -rect {-6.72650 42.42150 20.82450 34.09900}
deselectAll
gui_select -rect {32.87750 39.64750 56.21900 31.22900}
fit
zoomBox -13.76950 10.67850 83.93000 57.91250
zoomBox 9.22900 21.46150 60.22950 46.11850
zoomBox 21.23450 27.09000 47.85750 39.96150
zoomBox 29.39850 30.91850 39.44050 35.77350
zoomBox 31.30650 31.81300 37.47350 34.79450
zoomBox 31.76150 32.02650 37.00400 34.56100
deselectAll
zoomBox 30.91550 31.05750 39.45200 35.18450
zoomBox 30.52850 30.61450 40.57150 35.47000
zoomBox 30.07350 30.09300 41.88900 35.80550
zoomBox 29.53750 29.48450 43.43900 36.20550
zoomBox 28.91150 28.78350 45.26700 36.69100
zoomBox 28.17500 27.95900 47.41750 37.26200
zoomBox 27.30900 26.98900 49.94750 37.93400
zoomBox 29.54700 29.47850 43.44950 36.20000
zoomBox 30.08050 30.07250 41.89850 35.78600
gui_select -rect {33.11500 33.44100 33.99600 33.34150}
gui_select -rect {32.78100 32.80150 33.65500 32.97200}
gui_select -rect {33.20000 34.72000 36.59700 34.42150}
panPage 0 1
panPage 0 1
panPage 0 1
panPage -1 0
panPage -1 0
panPage 0 -1
panPage 0 -1
fit
zoomBox -9.56250 18.13400 61.02600 52.26100
zoomBox -5.39900 20.73800 54.60150 49.74600
zoomBox 3.69200 26.43200 40.54050 44.24700
zoomBox 1.29900 24.84850 44.65000 45.80700
zoomBox -1.51650 22.98500 49.48500 47.64250
zoomBox 7.45350 28.92200 34.07800 41.79400
zoomBox 8.92250 29.89450 31.55400 40.83600
zoomBox 10.17150 30.72100 29.40850 40.02150
zoomBox 12.90200 32.52800 24.71800 38.24050
zoomBox 13.55400 32.95950 23.59800 37.81550
zoomBox 14.10850 33.32650 22.64600 37.45400
zoomBox 15.60950 34.32000 20.06700 36.47500
zoomBox 15.85550 34.48250 19.64450 36.31450
gui_select -rect {16.42250 35.31850 16.51100 35.39400}
panPage 0 -1
panPage 0 -1
panPage 0 1
selectInst mul_58_40/g4050
deselectAll
selectInst mul_58_40/g4050
zoomBox 16.49050 34.53200 18.17350 35.34550
zoomBox 16.80800 34.78000 17.55450 35.14100
panPage -1 0
panPage -1 0
zoomBox 16.64300 34.85400 16.92550 34.99050
zoomBox 16.73850 34.88000 16.86450 34.94100
zoomBox 16.70750 34.87150 16.88350 34.95650
zoomBox 16.64050 34.85300 16.92700 34.99150
zoomBox 16.57350 34.83450 16.97050 35.02650
zoomBox 16.42150 34.79300 17.06900 35.10600
zoomBox 16.06300 34.69600 17.30300 35.29550
zoomBox 14.46950 34.28550 18.34000 36.15650
zoomBox 8.21050 32.68150 22.41650 39.54950
zoomBox -5.99700 29.04100 31.67150 47.25250
zoomBox -34.59650 21.71300 50.30200 62.75850
zoomBox -66.89900 13.43700 71.34500 80.27300
deselectAll
selectObject Wire n_107(50520,74110,60280,74270)
deselectAll
selectInst mul_58_40/g4010
deselectAll
gui_select -rect {12.48950 43.94550 51.64350 25.07500}
gui_select -rect {11.82450 54.58600 50.23050 41.36850}
deselectAll
gui_select -rect {1.59950 32.47350 38.17650 15.51500}
deselectAll
gui_select -rect {33.10550 52.84050 60.95400 39.20700}
deselectAll
gui_select -rect {10.74400 36.29750 55.96600 12.43950}
deselectAll
gui_select -rect {2.09850 66.72300 22.96400 60.15550}
deselectAll
gui_select -rect {-6.79650 74.86950 38.84150 70.04800}
deselectAll
gui_select -rect {1.84900 74.37100 42.08350 69.38300}
deselectAll
fit
timeDesign -preCTS -pathReports -numPaths 20 -prefix
timeDesign -preCTS -pathReports -numPaths 20 -prefix simple_mac_placed -outDir ../pnr_report
report_timing -late -nworst 5
saveDesign ../pnr_report/simple_mac_placed.enc
getDrawView
setDrawView fplan
win
dumpToGIF ../pnr_report/ss_simple_mac_placement.png.fplan.gif
getDrawView
setDrawView amoeba
win
dumpToGIF ../pnr_report/ss_simple_mac_placement.png.amoeba.gif
getDrawView
setDrawView place
win
dumpToGIF ../pnr_report/ss_simple_mac_placement.png.place.gif
checkPlace checkplace.ss.rpt
create_ccopt_clock_tree_spec -file ../pnr_report/ccopt_spec.spec -views {view1 view1}
get_ccopt_clock_trees
ccopt_check_and_flatten_ilms_no_restore
set_ccopt_property cts_is_sdc_clock_root -pin clk true
create_ccopt_clock_tree -name clk -source clk -no_skew_group
set_ccopt_property target_max_trans_sdc -delay_corner delay1 -early -clock_tree clk 0.050
set_ccopt_property target_max_trans_sdc -delay_corner delay1 -late -clock_tree clk 0.150
set_ccopt_property clock_period -pin clk 5
create_ccopt_skew_group -name clk/sdc1 -sources clk -auto_sinks
set_ccopt_property include_source_latency -skew_group clk/sdc1 true
set_ccopt_property extracted_from_clock_name -skew_group clk/sdc1 clk
set_ccopt_property extracted_from_constraint_mode_name -skew_group clk/sdc1 sdc1
set_ccopt_property extracted_from_delay_corners -skew_group clk/sdc1 delay1
check_ccopt_clock_tree_convergence
get_ccopt_property auto_design_state_for_ilms
ccopt_design
zoomBox -20.69500 3.99000 94.24450 59.55900
zoomBox -11.63400 6.91350 86.06450 54.14700
zoomBox 2.62200 11.51100 73.20900 45.63700
zoomBox -3.93200 9.39850 79.11150 49.54700
zoomBox -11.61600 6.91350 86.08200 54.14700
zoomBox -20.65650 3.98950 94.28250 59.55850
zoomBox -31.29300 0.55000 103.93000 65.92550
zoomBox -43.83500 -3.49650 115.25150 73.41600
saveDesign ../pnr_report/simple_mac_postCTS.enc
zoomBox -31.61000 1.33900 103.61400 66.71500
zoomBox -12.38500 8.94350 85.31450 56.17750
zoomBox -4.87700 11.91300 78.16750 52.06200
zoomBox 1.50500 14.43750 72.09250 48.56400
panPage -1 0
panPage -1 0
panPage -1 0
panPage 1 0
panPage 0 -1
panPage 0 -1
panPage 0 -1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 1 0
panPage 1 0
panPage 1 0
panPage 0 -1
panPage 0 -1
panPage 0 -1
panPage 0 -1
panPage 0 -1
zoomBox 32.43400 -5.16700 83.43350 19.48950
zoomBox 44.57150 -4.08250 71.19350 8.78850
panPage 0 1
panPage 0 1
panPage 0 -1
zoomBox 49.94550 0.25450 69.18100 9.55400
zoomBox 47.55750 -1.25250 84.40700 16.56300
zoomBox 41.41750 -5.30850 124.46850 34.84350
fit
zoomBox -83.56200 -25.24750 136.62650 81.20550
zoomBox -108.82050 -39.08000 150.22500 86.15900
zoomBox -62.09350 -13.49050 125.06750 76.99500
zoomBox -43.84450 -3.49700 115.24250 73.41600
timeDesign -postCTS -pathReports -numPaths 10 -prefix
timeDesign -postCTS -pathReports -numPaths 10 -prefix simple_mac_postCTS -outDir ../pnr_report
setNanoRouteMode -quiet -timingEngine {}
setNanoRouteMode -quiet -routeWithSiPostRouteFix 0
setNanoRouteMode -quiet -routeWithTimingDriven false
setNanoRouteMode -quiet -routeWithSiDriven false
routeDesign -globalDetail
saveDesign ../pnr_report/simple_mac_postCTS.enc
saveNetlist ../pnr_report/simple_mac_postCTS.v
defOut -floorplan -netlist ../pnr_report/simple_mac_postCTS.def
reportGateCount -outfile ../pnr_report/simple_mac.gateCount
selectInst mul_58_40/g4060
gui_select -rect {19.77100 61.26700 46.84350 33.23750}
deselectAll
gui_select -rect {57.65350 53.32700 69.89800 38.78600}
deselectAll
gui_select -rect {17.28350 54.09200 30.86800 37.25550}
deselectAll
deselectAll
zoomBox 10.04050 21.06600 70.04100 50.07400
zoomBox 22.63400 26.78750 59.48250 44.60250
zoomBox -10.48500 11.74700 87.22050 58.98400
zoomBox -59.17300 -10.36500 128.00000 80.12650
zoomBox -98.29650 -28.13250 160.76850 97.11600
zoomBox -44.19600 -3.60700 114.90300 73.31150
zoomBox -31.28050 2.24800 103.95350 67.62850
zoomBox -20.30250 7.22450 94.64650 62.79800
zoomBox 18.44350 24.78900 61.79750 45.74900
zoomBox 21.96300 26.38450 58.81400 44.20050
zoomBox 24.95400 27.74050 56.27800 42.88450
zoomBox 27.49700 28.89300 54.12250 41.76550
zoomBox 29.65850 29.87300 52.29000 40.81450
zoomBox -2.86400 15.35200 80.19400 55.50750
zoomBox -10.74350 11.85250 86.97200 59.09450
zoomBox -43.00700 -1.81000 116.10850 75.11650
zoomBox -57.62950 -7.61850 129.56550 82.88350
