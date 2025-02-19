# app_conf.tcl: User parameters for DK-DEV-AGI027RES
# Copyright (C) 2022 CESNET z. s. p. o.
# Author(s): Jakub Cabal <cabal@cesnet.cz>
#           Vladislav Valek <valekv@cesnet.cz>
#
# SPDX-License-Identifier: BSD-3-Clause

# NOTE: The detailed description of the usage of this file can be viewed in the
# Parametrizing section of the NDK-CORE documentation.

# ------------------------------------------------------------------------------
# PCIe parameters (not all combinations work):
# ------------------------------------------------------------------------------
# Supported combinations for this card:
# 1x PCIe Gen5 x8x8 -- PCIE_GEN=5, PCIE_ENDPOINTS=2, PCIE_ENDPOINT_MODE=1 (Note: default configuration)
# 2x PCIe Gen4 x8x8 -- PCIE_GEN=4, PCIE_ENDPOINTS=4, PCIE_ENDPOINT_MODE=1 (Note: requires MCIO cable)
# 1x PCIe Gen4 x8x8 -- PCIE_GEN=4, PCIE_ENDPOINTS=2, PCIE_ENDPOINT_MODE=1 (Note: limited DMA performance)
# ------------------------------------------------------------------------------
# PCIe Generation (possible values: 3, 4, 5):
# 4 = PCIe Gen4 (Stratix 10 with P-Tile or Agilex)
# 5 = PCIe Gen5 (Agilex with R-Tile)
set PCIE_GEN           5
# PCIe endpoints (possible values: 1, 2, 4):
# 2 = 2x PCIe x16 in two slot OR 2x PCIe x8 in one slot (bifurcation x8+x8)
# 4 = 4x PCIe x8 in two slots (bifurcation x8+x8)
set PCIE_ENDPOINTS     2
# PCIe endpoint mode (possible values: 0, 1):
# 1 = 2x8 lanes (bifurcation x8+x8)
set PCIE_ENDPOINT_MODE 1

# ------------------------------------------------------------------------------
# DMA parameters:
# ------------------------------------------------------------------------------
# The minimum number of RX/TX DMA channels for this card is 32.
set DMA_RX_CHANNELS      32
set DMA_TX_CHANNELS      32
# In blocking mode, packets are dropped only when the RX DMA channel is off.
# In non-blocking mode, packets are dropped whenever they cannot be sent.
set DMA_RX_BLOCKING_MODE true

# ------------------------------------------------------------------------------
# Other parameters:
# ------------------------------------------------------------------------------
set PROJECT_NAME "NDK_MINIMAL"
set PROJECT_VARIANT "$ETH_PORT_SPEED(0)G$ETH_PORTS"
set PROJECT_VERSION [exec cat ../../VERSION]
