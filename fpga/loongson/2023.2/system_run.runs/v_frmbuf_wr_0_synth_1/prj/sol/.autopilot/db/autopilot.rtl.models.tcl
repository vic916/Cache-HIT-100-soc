set SynModuleInfo {
  {SRCNAME entry_proc MODELNAME entry_proc RTLNAME v_frmbuf_wr_0_entry_proc}
  {SRCNAME {reg<unsigned short>} MODELNAME reg_unsigned_short_s RTLNAME v_frmbuf_wr_0_reg_unsigned_short_s}
  {SRCNAME AXIvideo2MultiPixStream_Pipeline_loop_wait_for_start MODELNAME AXIvideo2MultiPixStream_Pipeline_loop_wait_for_start RTLNAME v_frmbuf_wr_0_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_start
    SUBMODULES {
      {MODELNAME v_frmbuf_wr_0_flow_control_loop_pipe_sequential_init RTLNAME v_frmbuf_wr_0_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME v_frmbuf_wr_0_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME AXIvideo2MultiPixStream_Pipeline_loop_width MODELNAME AXIvideo2MultiPixStream_Pipeline_loop_width RTLNAME v_frmbuf_wr_0_AXIvideo2MultiPixStream_Pipeline_loop_width
    SUBMODULES {
      {MODELNAME v_frmbuf_wr_0_sparsemux_5_8_8_1_1 RTLNAME v_frmbuf_wr_0_sparsemux_5_8_8_1_1 BINDTYPE op TYPE sparsemux IMPL auto}
    }
  }
  {SRCNAME AXIvideo2MultiPixStream_Pipeline_loop_wait_for_eol MODELNAME AXIvideo2MultiPixStream_Pipeline_loop_wait_for_eol RTLNAME v_frmbuf_wr_0_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_eol}
  {SRCNAME AXIvideo2MultiPixStream MODELNAME AXIvideo2MultiPixStream RTLNAME v_frmbuf_wr_0_AXIvideo2MultiPixStream}
  {SRCNAME MultiPixStream2Bytes_Pipeline_VITIS_LOOP_943_1 MODELNAME MultiPixStream2Bytes_Pipeline_VITIS_LOOP_943_1 RTLNAME v_frmbuf_wr_0_MultiPixStream2Bytes_Pipeline_VITIS_LOOP_943_1}
  {SRCNAME MultiPixStream2Bytes MODELNAME MultiPixStream2Bytes RTLNAME v_frmbuf_wr_0_MultiPixStream2Bytes
    SUBMODULES {
      {MODELNAME v_frmbuf_wr_0_mul_12ns_14ns_25_1_1 RTLNAME v_frmbuf_wr_0_mul_12ns_14ns_25_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME Bytes2AXIMMvideo_Pipeline_VITIS_LOOP_1285_1 MODELNAME Bytes2AXIMMvideo_Pipeline_VITIS_LOOP_1285_1 RTLNAME v_frmbuf_wr_0_Bytes2AXIMMvideo_Pipeline_VITIS_LOOP_1285_1}
  {SRCNAME Bytes2AXIMMvideo MODELNAME Bytes2AXIMMvideo RTLNAME v_frmbuf_wr_0_Bytes2AXIMMvideo}
  {SRCNAME FrmbufWrHlsDataFlow MODELNAME FrmbufWrHlsDataFlow RTLNAME v_frmbuf_wr_0_FrmbufWrHlsDataFlow
    SUBMODULES {
      {MODELNAME v_frmbuf_wr_0_fifo_w32_d4_S RTLNAME v_frmbuf_wr_0_fifo_w32_d4_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME HwReg_frm_buffer_c_U}
      {MODELNAME v_frmbuf_wr_0_fifo_w15_d3_S RTLNAME v_frmbuf_wr_0_fifo_w15_d3_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME WidthInBytes_val2_c11_U}
      {MODELNAME v_frmbuf_wr_0_fifo_w48_d2_S RTLNAME v_frmbuf_wr_0_fifo_w48_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME img_U}
      {MODELNAME v_frmbuf_wr_0_fifo_w128_d480_B RTLNAME v_frmbuf_wr_0_fifo_w128_d480_B BINDTYPE storage TYPE fifo IMPL bram ALLOW_PRAGMA 1 INSTNAME bytePlanes_U}
      {MODELNAME v_frmbuf_wr_0_fifo_w15_d2_S RTLNAME v_frmbuf_wr_0_fifo_w15_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME WidthInBytes_val2_c_U}
      {MODELNAME v_frmbuf_wr_0_start_for_MultiPixStream2Bytes_U0 RTLNAME v_frmbuf_wr_0_start_for_MultiPixStream2Bytes_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_MultiPixStream2Bytes_U0_U}
      {MODELNAME v_frmbuf_wr_0_start_for_Bytes2AXIMMvideo_U0 RTLNAME v_frmbuf_wr_0_start_for_Bytes2AXIMMvideo_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_Bytes2AXIMMvideo_U0_U}
    }
  }
  {SRCNAME v_frmbuf_wr MODELNAME v_frmbuf_wr RTLNAME v_frmbuf_wr_0_v_frmbuf_wr IS_TOP 1
    SUBMODULES {
      {MODELNAME v_frmbuf_wr_0_mul_15s_3ns_15_1_1 RTLNAME v_frmbuf_wr_0_mul_15s_3ns_15_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME v_frmbuf_wr_0_BYTES_PER_PIXEL_ROM_AUTO_1R RTLNAME v_frmbuf_wr_0_BYTES_PER_PIXEL_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME v_frmbuf_wr_0_MEMORY2LIVE_ROM_AUTO_1R RTLNAME v_frmbuf_wr_0_MEMORY2LIVE_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME v_frmbuf_wr_0_mm_video_m_axi RTLNAME v_frmbuf_wr_0_mm_video_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME v_frmbuf_wr_0_CTRL_s_axi RTLNAME v_frmbuf_wr_0_CTRL_s_axi BINDTYPE interface TYPE interface_s_axilite}
      {MODELNAME v_frmbuf_wr_0_regslice_both RTLNAME v_frmbuf_wr_0_regslice_both BINDTYPE interface TYPE interface_regslice INSTNAME v_frmbuf_wr_0_regslice_both_U}
    }
  }
}
