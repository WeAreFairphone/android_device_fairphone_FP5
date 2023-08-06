/*
 * Copyright (c) 2013, The Linux Foundation. All rights reserved.
 * Not a Contribution
 *
 * Copyright (C) 2012 The Android Open Source Project
 * Copyright (C) 2018 The LineageOS Project
 *
 * SPDX-License-Identifier: Apache-2.0
 *
 */

#ifndef _BDROID_BUILDCFG_H
#define _BDROID_BUILDCFG_H
// Disables read remote device feature
#define MAX_ACL_CONNECTIONS   16
#define MAX_L2CAP_CHANNELS    16
#define BLE_VND_INCLUDED   TRUE
// skips conn update at conn completion
#define BT_CLEAN_TURN_ON_DISABLED 1

/* Increasing SEPs to 12 from 6 to support SHO/MCast i.e. two streams per codec */
#define AVDT_NUM_SEPS 12
#endif
