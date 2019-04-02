#
#  Copyright (c) 2018 - 2019      European Spallation Source ERIC
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
# Date    : Tuesday, April  2 15:17:43 CEST 2019
# version : 0.0.2
#
where_am_I := $(dir $(abspath $(lastword $(MAKEFILE_LIST))))
include $(E3_REQUIRE_TOOLS)/driver.makefile
include $(E3_REQUIRE_CONFIG)/DECOUPLE_FLAGS


ifneq ($(strip $(ASYN_DEP_VERSION)),)
asyn_VERSION=$(ASYN_DEP_VERSION)
endif

ifneq ($(strip $(LOKI_DEP_VERSION)),)
loki_VERSION=$(LOKI_DEP_VERSION)
endif

# print cc1plus: warning: unrecognized command line option ‘-Wno-format-truncation’ with lower gcc 7
USR_CFLAGS   += -Wno-format-truncation
USR_CPPFLAGS += -Wno-format-truncation




APP:=epics-nds/ndsApp
# APPDB:=$(APP)/Db
APPSRC:=$(APP)/src


ifeq ($(T_A),linux-ppc64e6500)
USR_INCLUDES += -I$(SDKTARGETSYSROOT)/usr/include/libxml2
USR_INCLUDES += -I$(SDKTARGETSYSROOT)/usr/include/boost
else ifeq ($(T_A),linux-corei7-poky)
USR_INCLUDES += -I$(SDKTARGETSYSROOT)/usr/include/libxml2
USR_INCLUDES += -I$(SDKTARGETSYSROOT)/usr/include/boost
else
USR_INCLUDES += -I/usr/include/libxml2
USR_INCLUDES += -I/usr/include/boost
#USR_INCLUDES += -I/usr/include/x86_64-linux-gnu/curl
endif

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



db: 

.PHONY: db 

#
.PHONY: vlibs
vlibs:
#
