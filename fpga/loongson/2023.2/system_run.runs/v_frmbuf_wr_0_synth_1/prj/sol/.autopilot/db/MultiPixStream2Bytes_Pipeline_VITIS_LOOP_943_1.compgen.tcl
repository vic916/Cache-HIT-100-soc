# This script segment is generated automatically by AutoPilot

# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 57 \
    name p_lcssa82100_i_i \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_lcssa82100_i_i \
    op interface \
    ports { p_lcssa82100_i_i { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 58 \
    name p_lcssa8197_i_i \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_lcssa8197_i_i \
    op interface \
    ports { p_lcssa8197_i_i { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 59 \
    name p_lcssa8094_i_i \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_lcssa8094_i_i \
    op interface \
    ports { p_lcssa8094_i_i { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 60 \
    name p_lcssa7991_i_i \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_lcssa7991_i_i \
    op interface \
    ports { p_lcssa7991_i_i { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 61 \
    name p_lcssa7888_i_i \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_lcssa7888_i_i \
    op interface \
    ports { p_lcssa7888_i_i { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 62 \
    name p_lcssa85_i_i \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_lcssa85_i_i \
    op interface \
    ports { p_lcssa85_i_i { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 63 \
    name trunc_ln1_i \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_trunc_ln1_i \
    op interface \
    ports { trunc_ln1_i { I 11 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 64 \
    name cmp133_2_i_i \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_cmp133_2_i_i \
    op interface \
    ports { cmp133_2_i_i { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 65 \
    name icmp6 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_icmp6 \
    op interface \
    ports { icmp6 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 66 \
    name bytePlanes \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_bytePlanes \
    op interface \
    ports { bytePlanes_din { O 128 vector } bytePlanes_num_data_valid { I 10 vector } bytePlanes_fifo_cap { I 10 vector } bytePlanes_full_n { I 1 bit } bytePlanes_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 67 \
    name cmp133_i_i \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_cmp133_i_i \
    op interface \
    ports { cmp133_i_i { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 68 \
    name icmp_ln930_i \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_icmp_ln930_i \
    op interface \
    ports { icmp_ln930_i { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 69 \
    name cmp94_6_i_i \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_cmp94_6_i_i \
    op interface \
    ports { cmp94_6_i_i { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 70 \
    name cmp94_5_i_i \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_cmp94_5_i_i \
    op interface \
    ports { cmp94_5_i_i { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 71 \
    name cmp94_4_i_i \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_cmp94_4_i_i \
    op interface \
    ports { cmp94_4_i_i { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 72 \
    name icmp3 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_icmp3 \
    op interface \
    ports { icmp3 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 73 \
    name cmp94_2_i_i \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_cmp94_2_i_i \
    op interface \
    ports { cmp94_2_i_i { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 74 \
    name icmp \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_icmp \
    op interface \
    ports { icmp { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 75 \
    name sub91_i_i \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_sub91_i_i \
    op interface \
    ports { sub91_i_i { I 11 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 76 \
    name cmp94_i_i \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_cmp94_i_i \
    op interface \
    ports { cmp94_i_i { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 77 \
    name img \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_img \
    op interface \
    ports { img_dout { I 48 vector } img_num_data_valid { I 3 vector } img_fifo_cap { I 3 vector } img_empty_n { I 1 bit } img_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 78 \
    name p_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_out \
    op interface \
    ports { p_out { O 8 vector } p_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 79 \
    name p_out1 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_out1 \
    op interface \
    ports { p_out1 { O 8 vector } p_out1_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 80 \
    name p_out2 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_out2 \
    op interface \
    ports { p_out2 { O 8 vector } p_out2_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 81 \
    name p_out3 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_out3 \
    op interface \
    ports { p_out3 { O 8 vector } p_out3_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 82 \
    name p_out4 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_out4 \
    op interface \
    ports { p_out4 { O 8 vector } p_out4_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 83 \
    name p_out5 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_out5 \
    op interface \
    ports { p_out5 { O 8 vector } p_out5_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id -1 \
    name ap_ctrl \
    type ap_ctrl \
    reset_level 1 \
    sync_rst true \
    corename ap_ctrl \
    op interface \
    ports { ap_start { I 1 bit } ap_ready { O 1 bit } ap_done { O 1 bit } ap_idle { O 1 bit } } \
} "
}


# Adapter definition:
set PortName ap_clk
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_clock] == "cg_default_interface_gen_clock"} {
eval "cg_default_interface_gen_clock { \
    id -2 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_clk \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-113\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}


# Adapter definition:
set PortName ap_rst
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_reset] == "cg_default_interface_gen_reset"} {
eval "cg_default_interface_gen_reset { \
    id -3 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_rst \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-114\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}



# merge
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_end
    cg_default_interface_gen_bundle_end
    AESL_LIB_XILADAPTER::native_axis_end
}


# flow_control definition:
set InstName v_frmbuf_wr_0_flow_control_loop_pipe_sequential_init_U
set CompName v_frmbuf_wr_0_flow_control_loop_pipe_sequential_init
set name flow_control_loop_pipe_sequential_init
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control] == "::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control"} {
eval "::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control { \
    name ${name} \
    prefix v_frmbuf_wr_0_ \
}"
} else {
puts "@W \[IMPL-107\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $CompName BINDTYPE interface TYPE internal_upc_flow_control INSTNAME $InstName
}


