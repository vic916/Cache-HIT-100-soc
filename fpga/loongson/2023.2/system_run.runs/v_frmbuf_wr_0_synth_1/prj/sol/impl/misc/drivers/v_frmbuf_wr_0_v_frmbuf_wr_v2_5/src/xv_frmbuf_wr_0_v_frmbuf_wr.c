// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2023.2 (64-bit)
// Tool Version Limit: 2023.10
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
/***************************** Include Files *********************************/
#include "xv_frmbuf_wr_0_v_frmbuf_wr.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XV_frmbuf_wr_0_v_frmbuf_wr_CfgInitialize(XV_frmbuf_wr_0_v_frmbuf_wr *InstancePtr, XV_frmbuf_wr_0_v_frmbuf_wr_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->V_frmbuf_wr_0_ctrl_BaseAddress = ConfigPtr->V_frmbuf_wr_0_ctrl_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XV_frmbuf_wr_0_v_frmbuf_wr_Start(XV_frmbuf_wr_0_v_frmbuf_wr *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XV_frmbuf_wr_0_v_frmbuf_wr_ReadReg(InstancePtr->V_frmbuf_wr_0_ctrl_BaseAddress, XV_FRMBUF_WR_0_V_FRMBUF_WR_V_FRMBUF_WR_0_CTRL_ADDR_AP_CTRL) & 0x80;
    XV_frmbuf_wr_0_v_frmbuf_wr_WriteReg(InstancePtr->V_frmbuf_wr_0_ctrl_BaseAddress, XV_FRMBUF_WR_0_V_FRMBUF_WR_V_FRMBUF_WR_0_CTRL_ADDR_AP_CTRL, Data | 0x01);
}

u32 XV_frmbuf_wr_0_v_frmbuf_wr_IsDone(XV_frmbuf_wr_0_v_frmbuf_wr *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XV_frmbuf_wr_0_v_frmbuf_wr_ReadReg(InstancePtr->V_frmbuf_wr_0_ctrl_BaseAddress, XV_FRMBUF_WR_0_V_FRMBUF_WR_V_FRMBUF_WR_0_CTRL_ADDR_AP_CTRL);
    return (Data >> 1) & 0x1;
}

u32 XV_frmbuf_wr_0_v_frmbuf_wr_IsIdle(XV_frmbuf_wr_0_v_frmbuf_wr *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XV_frmbuf_wr_0_v_frmbuf_wr_ReadReg(InstancePtr->V_frmbuf_wr_0_ctrl_BaseAddress, XV_FRMBUF_WR_0_V_FRMBUF_WR_V_FRMBUF_WR_0_CTRL_ADDR_AP_CTRL);
    return (Data >> 2) & 0x1;
}

u32 XV_frmbuf_wr_0_v_frmbuf_wr_IsReady(XV_frmbuf_wr_0_v_frmbuf_wr *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XV_frmbuf_wr_0_v_frmbuf_wr_ReadReg(InstancePtr->V_frmbuf_wr_0_ctrl_BaseAddress, XV_FRMBUF_WR_0_V_FRMBUF_WR_V_FRMBUF_WR_0_CTRL_ADDR_AP_CTRL);
    // check ap_start to see if the pcore is ready for next input
    return !(Data & 0x1);
}

void XV_frmbuf_wr_0_v_frmbuf_wr_EnableAutoRestart(XV_frmbuf_wr_0_v_frmbuf_wr *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XV_frmbuf_wr_0_v_frmbuf_wr_WriteReg(InstancePtr->V_frmbuf_wr_0_ctrl_BaseAddress, XV_FRMBUF_WR_0_V_FRMBUF_WR_V_FRMBUF_WR_0_CTRL_ADDR_AP_CTRL, 0x80);
}

void XV_frmbuf_wr_0_v_frmbuf_wr_DisableAutoRestart(XV_frmbuf_wr_0_v_frmbuf_wr *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XV_frmbuf_wr_0_v_frmbuf_wr_WriteReg(InstancePtr->V_frmbuf_wr_0_ctrl_BaseAddress, XV_FRMBUF_WR_0_V_FRMBUF_WR_V_FRMBUF_WR_0_CTRL_ADDR_AP_CTRL, 0);
}

void XV_frmbuf_wr_0_v_frmbuf_wr_Set_width(XV_frmbuf_wr_0_v_frmbuf_wr *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XV_frmbuf_wr_0_v_frmbuf_wr_WriteReg(InstancePtr->V_frmbuf_wr_0_ctrl_BaseAddress, XV_FRMBUF_WR_0_V_FRMBUF_WR_V_FRMBUF_WR_0_CTRL_ADDR_WIDTH_DATA, Data);
}

u32 XV_frmbuf_wr_0_v_frmbuf_wr_Get_width(XV_frmbuf_wr_0_v_frmbuf_wr *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XV_frmbuf_wr_0_v_frmbuf_wr_ReadReg(InstancePtr->V_frmbuf_wr_0_ctrl_BaseAddress, XV_FRMBUF_WR_0_V_FRMBUF_WR_V_FRMBUF_WR_0_CTRL_ADDR_WIDTH_DATA);
    return Data;
}

void XV_frmbuf_wr_0_v_frmbuf_wr_Set_height(XV_frmbuf_wr_0_v_frmbuf_wr *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XV_frmbuf_wr_0_v_frmbuf_wr_WriteReg(InstancePtr->V_frmbuf_wr_0_ctrl_BaseAddress, XV_FRMBUF_WR_0_V_FRMBUF_WR_V_FRMBUF_WR_0_CTRL_ADDR_HEIGHT_DATA, Data);
}

u32 XV_frmbuf_wr_0_v_frmbuf_wr_Get_height(XV_frmbuf_wr_0_v_frmbuf_wr *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XV_frmbuf_wr_0_v_frmbuf_wr_ReadReg(InstancePtr->V_frmbuf_wr_0_ctrl_BaseAddress, XV_FRMBUF_WR_0_V_FRMBUF_WR_V_FRMBUF_WR_0_CTRL_ADDR_HEIGHT_DATA);
    return Data;
}

void XV_frmbuf_wr_0_v_frmbuf_wr_Set_stride(XV_frmbuf_wr_0_v_frmbuf_wr *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XV_frmbuf_wr_0_v_frmbuf_wr_WriteReg(InstancePtr->V_frmbuf_wr_0_ctrl_BaseAddress, XV_FRMBUF_WR_0_V_FRMBUF_WR_V_FRMBUF_WR_0_CTRL_ADDR_STRIDE_DATA, Data);
}

u32 XV_frmbuf_wr_0_v_frmbuf_wr_Get_stride(XV_frmbuf_wr_0_v_frmbuf_wr *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XV_frmbuf_wr_0_v_frmbuf_wr_ReadReg(InstancePtr->V_frmbuf_wr_0_ctrl_BaseAddress, XV_FRMBUF_WR_0_V_FRMBUF_WR_V_FRMBUF_WR_0_CTRL_ADDR_STRIDE_DATA);
    return Data;
}

void XV_frmbuf_wr_0_v_frmbuf_wr_Set_video_format(XV_frmbuf_wr_0_v_frmbuf_wr *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XV_frmbuf_wr_0_v_frmbuf_wr_WriteReg(InstancePtr->V_frmbuf_wr_0_ctrl_BaseAddress, XV_FRMBUF_WR_0_V_FRMBUF_WR_V_FRMBUF_WR_0_CTRL_ADDR_VIDEO_FORMAT_DATA, Data);
}

u32 XV_frmbuf_wr_0_v_frmbuf_wr_Get_video_format(XV_frmbuf_wr_0_v_frmbuf_wr *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XV_frmbuf_wr_0_v_frmbuf_wr_ReadReg(InstancePtr->V_frmbuf_wr_0_ctrl_BaseAddress, XV_FRMBUF_WR_0_V_FRMBUF_WR_V_FRMBUF_WR_0_CTRL_ADDR_VIDEO_FORMAT_DATA);
    return Data;
}

void XV_frmbuf_wr_0_v_frmbuf_wr_Set_frm_buffer(XV_frmbuf_wr_0_v_frmbuf_wr *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XV_frmbuf_wr_0_v_frmbuf_wr_WriteReg(InstancePtr->V_frmbuf_wr_0_ctrl_BaseAddress, XV_FRMBUF_WR_0_V_FRMBUF_WR_V_FRMBUF_WR_0_CTRL_ADDR_FRM_BUFFER_DATA, Data);
}

u32 XV_frmbuf_wr_0_v_frmbuf_wr_Get_frm_buffer(XV_frmbuf_wr_0_v_frmbuf_wr *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XV_frmbuf_wr_0_v_frmbuf_wr_ReadReg(InstancePtr->V_frmbuf_wr_0_ctrl_BaseAddress, XV_FRMBUF_WR_0_V_FRMBUF_WR_V_FRMBUF_WR_0_CTRL_ADDR_FRM_BUFFER_DATA);
    return Data;
}

void XV_frmbuf_wr_0_v_frmbuf_wr_Set_frm_buffer2(XV_frmbuf_wr_0_v_frmbuf_wr *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XV_frmbuf_wr_0_v_frmbuf_wr_WriteReg(InstancePtr->V_frmbuf_wr_0_ctrl_BaseAddress, XV_FRMBUF_WR_0_V_FRMBUF_WR_V_FRMBUF_WR_0_CTRL_ADDR_FRM_BUFFER2_DATA, Data);
}

u32 XV_frmbuf_wr_0_v_frmbuf_wr_Get_frm_buffer2(XV_frmbuf_wr_0_v_frmbuf_wr *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XV_frmbuf_wr_0_v_frmbuf_wr_ReadReg(InstancePtr->V_frmbuf_wr_0_ctrl_BaseAddress, XV_FRMBUF_WR_0_V_FRMBUF_WR_V_FRMBUF_WR_0_CTRL_ADDR_FRM_BUFFER2_DATA);
    return Data;
}

void XV_frmbuf_wr_0_v_frmbuf_wr_Set_frm_buffer3(XV_frmbuf_wr_0_v_frmbuf_wr *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XV_frmbuf_wr_0_v_frmbuf_wr_WriteReg(InstancePtr->V_frmbuf_wr_0_ctrl_BaseAddress, XV_FRMBUF_WR_0_V_FRMBUF_WR_V_FRMBUF_WR_0_CTRL_ADDR_FRM_BUFFER3_DATA, Data);
}

u32 XV_frmbuf_wr_0_v_frmbuf_wr_Get_frm_buffer3(XV_frmbuf_wr_0_v_frmbuf_wr *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XV_frmbuf_wr_0_v_frmbuf_wr_ReadReg(InstancePtr->V_frmbuf_wr_0_ctrl_BaseAddress, XV_FRMBUF_WR_0_V_FRMBUF_WR_V_FRMBUF_WR_0_CTRL_ADDR_FRM_BUFFER3_DATA);
    return Data;
}

void XV_frmbuf_wr_0_v_frmbuf_wr_InterruptGlobalEnable(XV_frmbuf_wr_0_v_frmbuf_wr *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XV_frmbuf_wr_0_v_frmbuf_wr_WriteReg(InstancePtr->V_frmbuf_wr_0_ctrl_BaseAddress, XV_FRMBUF_WR_0_V_FRMBUF_WR_V_FRMBUF_WR_0_CTRL_ADDR_GIE, 1);
}

void XV_frmbuf_wr_0_v_frmbuf_wr_InterruptGlobalDisable(XV_frmbuf_wr_0_v_frmbuf_wr *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XV_frmbuf_wr_0_v_frmbuf_wr_WriteReg(InstancePtr->V_frmbuf_wr_0_ctrl_BaseAddress, XV_FRMBUF_WR_0_V_FRMBUF_WR_V_FRMBUF_WR_0_CTRL_ADDR_GIE, 0);
}

void XV_frmbuf_wr_0_v_frmbuf_wr_InterruptEnable(XV_frmbuf_wr_0_v_frmbuf_wr *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XV_frmbuf_wr_0_v_frmbuf_wr_ReadReg(InstancePtr->V_frmbuf_wr_0_ctrl_BaseAddress, XV_FRMBUF_WR_0_V_FRMBUF_WR_V_FRMBUF_WR_0_CTRL_ADDR_IER);
    XV_frmbuf_wr_0_v_frmbuf_wr_WriteReg(InstancePtr->V_frmbuf_wr_0_ctrl_BaseAddress, XV_FRMBUF_WR_0_V_FRMBUF_WR_V_FRMBUF_WR_0_CTRL_ADDR_IER, Register | Mask);
}

void XV_frmbuf_wr_0_v_frmbuf_wr_InterruptDisable(XV_frmbuf_wr_0_v_frmbuf_wr *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XV_frmbuf_wr_0_v_frmbuf_wr_ReadReg(InstancePtr->V_frmbuf_wr_0_ctrl_BaseAddress, XV_FRMBUF_WR_0_V_FRMBUF_WR_V_FRMBUF_WR_0_CTRL_ADDR_IER);
    XV_frmbuf_wr_0_v_frmbuf_wr_WriteReg(InstancePtr->V_frmbuf_wr_0_ctrl_BaseAddress, XV_FRMBUF_WR_0_V_FRMBUF_WR_V_FRMBUF_WR_0_CTRL_ADDR_IER, Register & (~Mask));
}

void XV_frmbuf_wr_0_v_frmbuf_wr_InterruptClear(XV_frmbuf_wr_0_v_frmbuf_wr *InstancePtr, u32 Mask) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XV_frmbuf_wr_0_v_frmbuf_wr_WriteReg(InstancePtr->V_frmbuf_wr_0_ctrl_BaseAddress, XV_FRMBUF_WR_0_V_FRMBUF_WR_V_FRMBUF_WR_0_CTRL_ADDR_ISR, Mask);
}

u32 XV_frmbuf_wr_0_v_frmbuf_wr_InterruptGetEnabled(XV_frmbuf_wr_0_v_frmbuf_wr *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XV_frmbuf_wr_0_v_frmbuf_wr_ReadReg(InstancePtr->V_frmbuf_wr_0_ctrl_BaseAddress, XV_FRMBUF_WR_0_V_FRMBUF_WR_V_FRMBUF_WR_0_CTRL_ADDR_IER);
}

u32 XV_frmbuf_wr_0_v_frmbuf_wr_InterruptGetStatus(XV_frmbuf_wr_0_v_frmbuf_wr *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XV_frmbuf_wr_0_v_frmbuf_wr_ReadReg(InstancePtr->V_frmbuf_wr_0_ctrl_BaseAddress, XV_FRMBUF_WR_0_V_FRMBUF_WR_V_FRMBUF_WR_0_CTRL_ADDR_ISR);
}

