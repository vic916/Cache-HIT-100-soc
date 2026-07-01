// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2023.2 (64-bit)
// Tool Version Limit: 2023.10
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
#ifndef XV_FRMBUF_WR_0_V_FRMBUF_WR_H
#define XV_FRMBUF_WR_0_V_FRMBUF_WR_H

#ifdef __cplusplus
extern "C" {
#endif

/***************************** Include Files *********************************/
#ifndef __linux__
#include "xil_types.h"
#include "xil_assert.h"
#include "xstatus.h"
#include "xil_io.h"
#else
#include <stdint.h>
#include <assert.h>
#include <dirent.h>
#include <fcntl.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/mman.h>
#include <unistd.h>
#include <stddef.h>
#endif
#include "xv_frmbuf_wr_0_v_frmbuf_wr_hw.h"

/**************************** Type Definitions ******************************/
#ifdef __linux__
typedef uint8_t u8;
typedef uint16_t u16;
typedef uint32_t u32;
typedef uint64_t u64;
#else
typedef struct {
#ifdef SDT
    char *Name;
#else
    u16 DeviceId;
#endif
    u32 V_frmbuf_wr_0_ctrl_BaseAddress;
} XV_frmbuf_wr_0_v_frmbuf_wr_Config;
#endif

typedef struct {
    u32 V_frmbuf_wr_0_ctrl_BaseAddress;
    u32 IsReady;
} XV_frmbuf_wr_0_v_frmbuf_wr;

typedef u32 word_type;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XV_frmbuf_wr_0_v_frmbuf_wr_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XV_frmbuf_wr_0_v_frmbuf_wr_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XV_frmbuf_wr_0_v_frmbuf_wr_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XV_frmbuf_wr_0_v_frmbuf_wr_ReadReg(BaseAddress, RegOffset) \
    *(volatile u32*)((BaseAddress) + (RegOffset))

#define Xil_AssertVoid(expr)    assert(expr)
#define Xil_AssertNonvoid(expr) assert(expr)

#define XST_SUCCESS             0
#define XST_DEVICE_NOT_FOUND    2
#define XST_OPEN_DEVICE_FAILED  3
#define XIL_COMPONENT_IS_READY  1
#endif

/************************** Function Prototypes *****************************/
#ifndef __linux__
#ifdef SDT
int XV_frmbuf_wr_0_v_frmbuf_wr_Initialize(XV_frmbuf_wr_0_v_frmbuf_wr *InstancePtr, UINTPTR BaseAddress);
XV_frmbuf_wr_0_v_frmbuf_wr_Config* XV_frmbuf_wr_0_v_frmbuf_wr_LookupConfig(UINTPTR BaseAddress);
#else
int XV_frmbuf_wr_0_v_frmbuf_wr_Initialize(XV_frmbuf_wr_0_v_frmbuf_wr *InstancePtr, u16 DeviceId);
XV_frmbuf_wr_0_v_frmbuf_wr_Config* XV_frmbuf_wr_0_v_frmbuf_wr_LookupConfig(u16 DeviceId);
#endif
int XV_frmbuf_wr_0_v_frmbuf_wr_CfgInitialize(XV_frmbuf_wr_0_v_frmbuf_wr *InstancePtr, XV_frmbuf_wr_0_v_frmbuf_wr_Config *ConfigPtr);
#else
int XV_frmbuf_wr_0_v_frmbuf_wr_Initialize(XV_frmbuf_wr_0_v_frmbuf_wr *InstancePtr, const char* InstanceName);
int XV_frmbuf_wr_0_v_frmbuf_wr_Release(XV_frmbuf_wr_0_v_frmbuf_wr *InstancePtr);
#endif

void XV_frmbuf_wr_0_v_frmbuf_wr_Start(XV_frmbuf_wr_0_v_frmbuf_wr *InstancePtr);
u32 XV_frmbuf_wr_0_v_frmbuf_wr_IsDone(XV_frmbuf_wr_0_v_frmbuf_wr *InstancePtr);
u32 XV_frmbuf_wr_0_v_frmbuf_wr_IsIdle(XV_frmbuf_wr_0_v_frmbuf_wr *InstancePtr);
u32 XV_frmbuf_wr_0_v_frmbuf_wr_IsReady(XV_frmbuf_wr_0_v_frmbuf_wr *InstancePtr);
void XV_frmbuf_wr_0_v_frmbuf_wr_EnableAutoRestart(XV_frmbuf_wr_0_v_frmbuf_wr *InstancePtr);
void XV_frmbuf_wr_0_v_frmbuf_wr_DisableAutoRestart(XV_frmbuf_wr_0_v_frmbuf_wr *InstancePtr);

void XV_frmbuf_wr_0_v_frmbuf_wr_Set_width(XV_frmbuf_wr_0_v_frmbuf_wr *InstancePtr, u32 Data);
u32 XV_frmbuf_wr_0_v_frmbuf_wr_Get_width(XV_frmbuf_wr_0_v_frmbuf_wr *InstancePtr);
void XV_frmbuf_wr_0_v_frmbuf_wr_Set_height(XV_frmbuf_wr_0_v_frmbuf_wr *InstancePtr, u32 Data);
u32 XV_frmbuf_wr_0_v_frmbuf_wr_Get_height(XV_frmbuf_wr_0_v_frmbuf_wr *InstancePtr);
void XV_frmbuf_wr_0_v_frmbuf_wr_Set_stride(XV_frmbuf_wr_0_v_frmbuf_wr *InstancePtr, u32 Data);
u32 XV_frmbuf_wr_0_v_frmbuf_wr_Get_stride(XV_frmbuf_wr_0_v_frmbuf_wr *InstancePtr);
void XV_frmbuf_wr_0_v_frmbuf_wr_Set_video_format(XV_frmbuf_wr_0_v_frmbuf_wr *InstancePtr, u32 Data);
u32 XV_frmbuf_wr_0_v_frmbuf_wr_Get_video_format(XV_frmbuf_wr_0_v_frmbuf_wr *InstancePtr);
void XV_frmbuf_wr_0_v_frmbuf_wr_Set_frm_buffer(XV_frmbuf_wr_0_v_frmbuf_wr *InstancePtr, u32 Data);
u32 XV_frmbuf_wr_0_v_frmbuf_wr_Get_frm_buffer(XV_frmbuf_wr_0_v_frmbuf_wr *InstancePtr);
void XV_frmbuf_wr_0_v_frmbuf_wr_Set_frm_buffer2(XV_frmbuf_wr_0_v_frmbuf_wr *InstancePtr, u32 Data);
u32 XV_frmbuf_wr_0_v_frmbuf_wr_Get_frm_buffer2(XV_frmbuf_wr_0_v_frmbuf_wr *InstancePtr);
void XV_frmbuf_wr_0_v_frmbuf_wr_Set_frm_buffer3(XV_frmbuf_wr_0_v_frmbuf_wr *InstancePtr, u32 Data);
u32 XV_frmbuf_wr_0_v_frmbuf_wr_Get_frm_buffer3(XV_frmbuf_wr_0_v_frmbuf_wr *InstancePtr);

void XV_frmbuf_wr_0_v_frmbuf_wr_InterruptGlobalEnable(XV_frmbuf_wr_0_v_frmbuf_wr *InstancePtr);
void XV_frmbuf_wr_0_v_frmbuf_wr_InterruptGlobalDisable(XV_frmbuf_wr_0_v_frmbuf_wr *InstancePtr);
void XV_frmbuf_wr_0_v_frmbuf_wr_InterruptEnable(XV_frmbuf_wr_0_v_frmbuf_wr *InstancePtr, u32 Mask);
void XV_frmbuf_wr_0_v_frmbuf_wr_InterruptDisable(XV_frmbuf_wr_0_v_frmbuf_wr *InstancePtr, u32 Mask);
void XV_frmbuf_wr_0_v_frmbuf_wr_InterruptClear(XV_frmbuf_wr_0_v_frmbuf_wr *InstancePtr, u32 Mask);
u32 XV_frmbuf_wr_0_v_frmbuf_wr_InterruptGetEnabled(XV_frmbuf_wr_0_v_frmbuf_wr *InstancePtr);
u32 XV_frmbuf_wr_0_v_frmbuf_wr_InterruptGetStatus(XV_frmbuf_wr_0_v_frmbuf_wr *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif
