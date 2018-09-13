#
#  Copyright (c) 2018 - Present  European Spallation Source ERIC
#
#  The program is free software: you can redistribute
#  it and/or modify it under the terms of the GNU General Public License
#  as published by the Free Software Foundation, either version 2 of the
#  License, or any newer version.
#
#  This program is distributed in the hope that it will be useful, but WITHOUT
#  ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
#  FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License for
#  more details.
#
#  You should have received a copy of the GNU General Public License along with
#  this program. If not, see https://www.gnu.org/licenses/gpl-2.0.txt
#
#
# Author  : joaopaulomartins
#           Jeong Han Lee
# email   : joaopaulomartins@esss.se
#           jeonghan.lee@gmail.com
# Date    : Thursday, September 13 21:11:34 CEST 2018
# version : 0.0.1
#


#where_am_I := $(dir $(abspath $(lastword $(MAKEFILE_LIST))))

include $(E3_REQUIRE_TOOLS)/driver.makefile

ifneq ($(strip $(ASYN_DEP_VERSION)),)
asyn_VERSION=$(ASYN_DEP_VERSION)
endif


ifneq ($(strip $(LOKI_DEP_VERSION)),)
loki_VERSION=$(LOKI_DEP_VERSION)
endif


EXCLUDE_ARCHS += linux-ppc64e6500 


# *** ISSUES
# driver.makefile recursively read all include directories which were installed.
# The only way to exclude header files is....

iocStats_VERSION=
autosave_VERSION=
#asyn_VERSION=
busy_VERSION=
modbus_VERSION=
ipmiComm_VERSION=
sequencer_VERSION=
sscan_VERSION=

std_VERSION=
ip_VERSION=
calc_VERSION=
pcre_VERSION=
stream_VERSION=
s7plc_VERSION=
recsync_VERSION=

devlib2_VERSION=
mrfioc2_VERSION=

exprtk_VERSION=
motor_VERSION=
ecmc_VERSION=
EthercatMC_VERSION=
ecmctraining_VERSION=


keypress_VERSION=
sysfs_VERSION=
symbolname_VERSION=
memDisplay_VERSION=
regdev_VERSION=
i2cDev_VERSION=

tosca_VERSION=
tsclib_VERSION=
ifcdaqdrv2_VERSION=

## The main issue is nds3, it is mandatory to disable it
## 
nds3_VERSION=
nds3epics_VERSION=
ifc14edrv_VERSION=
ifcfastint_VERSION=


#nds_VERSION=
#loki_VERSION=
sis8300drv_VERSION=
sis8300_VERSION=
sis8300llrfdrv_VERSION=
sis8300llrf_VERSION=


ADSupport_VERSION=
ADCore_VERSION=
ADSimDetector_VERSION=
ADAndor_VERSION=
ADAndor3_VERSION=
ADPointGrey_VERSION=
ADProsilica_VERSION=

amcpico8_VERSION=
adpico8_VERSION=
adsis8300_VERSION=
adsis8300bcm_VERSION=
adsis8300bpm_VERSION=
adsis8300fc_VERSION=



APP:=epics-nds/ndsApp
# APPDB:=$(APP)/Db
APPSRC:=$(APP)/src

# Exclude linux-ppc64e6500
# Our current toolchain doesn't have boost
# 
EXCLUDE_ARCHS = linux-ppc64e6500

# USR_INCLUDES += -I$(where_am_I)$(APPSRC)


USR_INCLUDES += -I/usr/include/libxml2

## SYSTEM LIBS 
##
USR_LIBS += boost_filesystem
USR_LIBS += curl
USR_LIBS += xml2

#

HEADERS += $(APPSRC)/map_functors.h
HEADERS += $(APPSRC)/ndsAbstractStateMachine.h
SOURCES += $(APPSRC)/ndsADIOChannel.cpp
HEADERS += $(APPSRC)/ndsADIOChannel.h
SOURCES += $(APPSRC)/ndsAsynDriver.cpp
HEADERS += $(APPSRC)/ndsAsynDriver.h
HEADERS += $(APPSRC)/ndsAsynMacro.h
SOURCES += $(APPSRC)/ndsAutoChannelGroup.cpp
HEADERS += $(APPSRC)/ndsAutoChannelGroup.h
SOURCES += $(APPSRC)/ndsBaseChannel.cpp
HEADERS += $(APPSRC)/ndsBaseChannel.h
SOURCES += $(APPSRC)/ndsBase.cpp
HEADERS += $(APPSRC)/ndsBase.h
SOURCES += $(APPSRC)/ndsBaseTask.cpp
HEADERS += $(APPSRC)/ndsBaseTask.h
HEADERS += $(APPSRC)/ndsBuffer.h
SOURCES += $(APPSRC)/ndsChannel.cpp
SOURCES += $(APPSRC)/ndsChannelGroup.cpp
HEADERS += $(APPSRC)/ndsChannelGroup.h
HEADERS += $(APPSRC)/ndsChannel.h
SOURCES += $(APPSRC)/ndsChannelStateMachine.cpp
HEADERS += $(APPSRC)/ndsChannelStateMachine.h
HEADERS += $(APPSRC)/ndsChannelStates.h
HEADERS += $(APPSRC)/ndsChannelTemplate.h
SOURCES += $(APPSRC)/ndsClock.cpp
HEADERS += $(APPSRC)/ndsClock.h
SOURCES += $(APPSRC)/ndsDebug.cpp
HEADERS += $(APPSRC)/ndsDebug.h
SOURCES += $(APPSRC)/ndsDevice.cpp
HEADERS += $(APPSRC)/ndsDevice.h
SOURCES += $(APPSRC)/ndsDeviceStateMachine.cpp
HEADERS += $(APPSRC)/ndsDeviceStateMachine.h
HEADERS += $(APPSRC)/ndsDeviceStates.h
SOURCES += $(APPSRC)/ndsDeviceTemplate.cpp
HEADERS += $(APPSRC)/ndsDeviceTemplate.h
SOURCES += $(APPSRC)/ndsDriverCommand.cpp
HEADERS += $(APPSRC)/ndsDriverCommand.h
HEADERS += $(APPSRC)/ndsDriver.h
SOURCES += $(APPSRC)/ndsFileDescriptor.cpp
HEADERS += $(APPSRC)/ndsFileDescriptor.h
SOURCES += $(APPSRC)/ndsFirmware.cpp
HEADERS += $(APPSRC)/ndsFirmware.h
SOURCES += $(APPSRC)/ndsImageChannel.cpp
HEADERS += $(APPSRC)/ndsImageChannel.h
SOURCES += $(APPSRC)/ndsIOC.cpp
HEADERS += $(APPSRC)/ndsIOC.h
SOURCES += $(APPSRC)/ndsLockKeeper.cpp
HEADERS += $(APPSRC)/ndsLockKeeper.h
HEADERS += $(APPSRC)/ndsMacro.h
SOURCES += $(APPSRC)/ndsManager.cpp
HEADERS += $(APPSRC)/ndsManager.h
SOURCES += $(APPSRC)/ndsMessage.cpp
HEADERS += $(APPSRC)/ndsMessage.h
#SOURCES += $(APPSRC)/ndsNDArrayChannel.cpp
#HEADERS += $(APPSRC)/ndsNDArrayChannel.h
SOURCES += $(APPSRC)/ndsPeriodicTask.cpp
HEADERS += $(APPSRC)/ndsPeriodicTask.h
SOURCES += $(APPSRC)/ndsPollingTask.cpp
HEADERS += $(APPSRC)/ndsPollingTask.h
SOURCES += $(APPSRC)/ndsPulse.cpp
HEADERS += $(APPSRC)/ndsPulse.h
HEADERS += $(APPSRC)/ndsPVContainer.h
HEADERS += $(APPSRC)/ndsPV.h
HEADERS += $(APPSRC)/ndsRegisterHandlersCaller.hpp
SOURCES += $(APPSRC)/ndsTaskManager.cpp
HEADERS += $(APPSRC)/ndsTaskManager.h
SOURCES += $(APPSRC)/ndsTaskService.cpp
HEADERS += $(APPSRC)/ndsTaskService.h
SOURCES += $(APPSRC)/ndsTerminal.cpp
HEADERS += $(APPSRC)/ndsTerminal.h
SOURCES += $(APPSRC)/ndsThread.cpp
HEADERS += $(APPSRC)/ndsThread.h
SOURCES += $(APPSRC)/ndsThreadTask.cpp
HEADERS += $(APPSRC)/ndsThreadTask.h
SOURCES += $(APPSRC)/ndsTimeEvent.cpp
HEADERS += $(APPSRC)/ndsTimeEvent.h
SOURCES += $(APPSRC)/ndsTimer.cpp
HEADERS += $(APPSRC)/ndsTimer.h
SOURCES += $(APPSRC)/ndsTriggerCondition.cpp
HEADERS += $(APPSRC)/ndsTriggerCondition.h
SOURCES += $(APPSRC)/ndsTrigger.cpp
HEADERS += $(APPSRC)/ndsTrigger.h
HEADERS += $(APPSRC)/ndsTypeLists.h
HEADERS += $(APPSRC)/ndsTypes.h
HEADERS += $(APPSRC)/singleton.h
SOURCES += $(APPSRC)/utsBufferTools.cpp
HEADERS += $(APPSRC)/utsBufferTools.h

DBDS += $(APPSRC)/nds.dbd




## This RULE should be used in case of inflating DB files 
## db rule is the default in RULES_DB, so add the empty one
## Please look at e3-mrfioc2 for example.

db: 

.PHONY: db 

# EPICS_BASE_HOST_BIN = $(EPICS_BASE)/bin/$(EPICS_HOST_ARCH)
# MSI = $(EPICS_BASE_HOST_BIN)/msi
#
# USR_DBFLAGS += -I . -I ..
# USR_DBFLAGS += -I $(EPICS_BASE)/db
# USR_DBFLAGS += -I $(APPDB)
#
# SUBS=$(wildcard $(APPDB)/*.substitutions)
# TMPS=$(wildcard $(APPDB)/*.template)
#
# db: $(SUBS) $(TMPS)

# $(SUBS):
#	@printf "Inflating database ... %44s >>> %40s \n" "$@" "$(basename $(@)).db"
#	@rm -f  $(basename $(@)).db.d  $(basename $(@)).db
#	@$(MSI) -D $(USR_DBFLAGS) -o $(basename $(@)).db -S $@  > $(basename $(@)).db.d
#	@$(MSI)    $(USR_DBFLAGS) -o $(basename $(@)).db -S $@

# $(TMPS):
#	@printf "Inflating database ... %44s >>> %40s \n" "$@" "$(basename $(@)).db"
#	@rm -f  $(basename $(@)).db.d  $(basename $(@)).db
#	@$(MSI) -D $(USR_DBFLAGS) -o $(basename $(@)).db $@  > $(basename $(@)).db.d
#	@$(MSI)    $(USR_DBFLAGS) -o $(basename $(@)).db $@

#
# .PHONY: db $(SUBS) $(TMPS)


