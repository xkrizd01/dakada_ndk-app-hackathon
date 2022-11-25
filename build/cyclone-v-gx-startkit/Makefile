# Makefile: Makefile for DK-DEV-AGI027RES card
# Copyright (C) 2022 CESNET z. s. p. o.
# Author(s): Jakub Cabal cabal@cesnet.cz
# 			Vladislav Valek <valekv@cesnet.cz>
#
# SPDX-License-Identifier: BSD-3-Clause

# NOTE: Usage of the configuration parameters in this file is described
# in the Parametrization section of the NDK-CORE documentation.

COMBO_BASE = ../..
CARD_BASE = $(COMBO_BASE)/ndk/cards/cyclone-v-gx-startkit
APP_CONF = app_conf.tcl
OUTPUT_NAME = cyclone-v-gx-startkit-minimal

.PHONY: all

all: build

include $(CARD_BASE)/src/card.mk
