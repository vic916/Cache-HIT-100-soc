// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2023.2 (64-bit)
// Tool Version Limit: 2023.10
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
#ifndef __linux__

#include "xstatus.h"
#ifdef SDT
#include "xparameters.h"
#endif
#include "xv_frmbuf_wr_0_v_frmbuf_wr.h"

extern XV_frmbuf_wr_0_v_frmbuf_wr_Config XV_frmbuf_wr_0_v_frmbuf_wr_ConfigTable[];

#ifdef SDT
XV_frmbuf_wr_0_v_frmbuf_wr_Config *XV_frmbuf_wr_0_v_frmbuf_wr_LookupConfig(UINTPTR BaseAddress) {
	XV_frmbuf_wr_0_v_frmbuf_wr_Config *ConfigPtr = NULL;

	int Index;

	for (Index = (u32)0x0; XV_frmbuf_wr_0_v_frmbuf_wr_ConfigTable[Index].Name != NULL; Index++) {
		if (!BaseAddress || XV_frmbuf_wr_0_v_frmbuf_wr_ConfigTable[Index].V_frmbuf_wr_0_ctrl_BaseAddress == BaseAddress) {
			ConfigPtr = &XV_frmbuf_wr_0_v_frmbuf_wr_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XV_frmbuf_wr_0_v_frmbuf_wr_Initialize(XV_frmbuf_wr_0_v_frmbuf_wr *InstancePtr, UINTPTR BaseAddress) {
	XV_frmbuf_wr_0_v_frmbuf_wr_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XV_frmbuf_wr_0_v_frmbuf_wr_LookupConfig(BaseAddress);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XV_frmbuf_wr_0_v_frmbuf_wr_CfgInitialize(InstancePtr, ConfigPtr);
}
#else
XV_frmbuf_wr_0_v_frmbuf_wr_Config *XV_frmbuf_wr_0_v_frmbuf_wr_LookupConfig(u16 DeviceId) {
	XV_frmbuf_wr_0_v_frmbuf_wr_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XV_FRMBUF_WR_0_V_FRMBUF_WR_NUM_INSTANCES; Index++) {
		if (XV_frmbuf_wr_0_v_frmbuf_wr_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XV_frmbuf_wr_0_v_frmbuf_wr_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XV_frmbuf_wr_0_v_frmbuf_wr_Initialize(XV_frmbuf_wr_0_v_frmbuf_wr *InstancePtr, u16 DeviceId) {
	XV_frmbuf_wr_0_v_frmbuf_wr_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XV_frmbuf_wr_0_v_frmbuf_wr_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XV_frmbuf_wr_0_v_frmbuf_wr_CfgInitialize(InstancePtr, ConfigPtr);
}
#endif

#endif

