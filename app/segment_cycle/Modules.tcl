# Modules.tcl: script to compile single module
# Author(s): Jakub Cabal <cabal@cesnet.cz>
#
# SPDX-License-Identifier: BSD-3-Clause

set CNT_GEN_BASE "$ENTITY_BASE/../cnt_gen"

lappend COMPONENTS [list "CNT_GEN" $CNT_GEN_BASE "FULL"]

lappend MOD "$ENTITY_BASE/segment_cycle.vhd"
