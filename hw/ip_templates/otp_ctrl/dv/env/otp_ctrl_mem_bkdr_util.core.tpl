CAPI=2:
# Copyright lowRISC contributors (OpenTitan project).
# Licensed under the Apache License, Version 2.0, see LICENSE for details.
# SPDX-License-Identifier: Apache-2.0
name: ${instance_vlnv("lowrisc:dv:otp_ctrl_mem_bkdr_util:0.1")}
description: "OTP_CTRL mem_bkdr_util support package"

filesets:
  files_dv:
    depend:
      - lowrisc:dv:mem_bkdr_util
      - lowrisc:dv:crypto_dpi_present
      - lowrisc:dv:lc_ctrl_dv_utils
      - ${instance_vlnv("lowrisc:ip:otp_ctrl_top_specific_pkg:1.0")}
    files:
      - otp_scrambler_pkg.sv
      - otp_ctrl_mem_bkdr_util_pkg.sv
    file_type: systemVerilogSource

targets:
  default:
    filesets:
      - files_dv
