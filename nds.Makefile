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
# email   : joaopaulomartins@esss.se
# Date    : generated by 2018May03-0959-51CEST
# version : 0.0.0 
#
# template file is generated by create_e3_modules.bash with 7827f977a0890cd984387544e850b50b610d6be3
# Please look at many other _module_.Makefile in e3-* repository
# 


#where_am_I := $(dir $(abspath $(lastword $(MAKEFILE_LIST))))

include $(E3_REQUIRE_TOOLS)/driver.makefile

APP:=epics-nds/ndsApp
# APPDB:=$(APP)/Db
APPSRC:=$(APP)/src


asyn_VERSION:=4270

# USR_INCLUDES += -I$(where_am_I)$(APPSRC)

# USR_CFLAGS   += -Wno-unused-variable
# USR_CFLAGS   += -Wno-unused-function
# USR_CFLAGS   += -Wno-unused-but-set-variable
# USR_CPPFLAGS += -Wno-unused-variable
# USR_CPPFLAGS += -Wno-unused-function
# USR_CPPFLAGS += -Wno-unused-but-set-variable

# TEMPLATES += $(wildcard $(APPDB)/*.db)

# DBDINC_SRCS += $(APPSRC)/swaitRecord.c
# DBDINC_SRCS += $(APPSRC)/sseqRecord.c
# DBDINC_SRCS += $(APPSRC)/aCalcoutRecord.c
# DBDINC_SRCS += $(APPSRC)/sCalcoutRecord.c
# DBDINC_SRCS += $(APPSRC)/transformRecord.c

# DBDINC_DBDS = $(subst .c,.dbd,   $(DBDINC_SRCS:$(APPSRC)/%=%))
# DBDINC_HDRS = $(subst .c,.h,     $(DBDINC_SRCS:$(APPSRC)/%=%))
# DBDINC_DEPS = $(subst .c,$(DEP), $(DBDINC_SRCS:$(APPSRC)/%=%))

HEADERS += ${APPSRC}/map_functors.h
HEADERS += ${APPSRC}/ndsAbstractStateMachine.h
SOURCES += ${APPSRC}/ndsADIOChannel.cpp
HEADERS += ${APPSRC}/ndsADIOChannel.h
SOURCES += ${APPSRC}/ndsAsynDriver.cpp
HEADERS += ${APPSRC}/ndsAsynDriver.h
HEADERS += ${APPSRC}/ndsAsynMacro.h
SOURCES += ${APPSRC}/ndsAutoChannelGroup.cpp
HEADERS += ${APPSRC}/ndsAutoChannelGroup.h
SOURCES += ${APPSRC}/ndsBaseChannel.cpp
HEADERS += ${APPSRC}/ndsBaseChannel.h
SOURCES += ${APPSRC}/ndsBase.cpp
HEADERS += ${APPSRC}/ndsBase.h
SOURCES += ${APPSRC}/ndsBaseTask.cpp
HEADERS += ${APPSRC}/ndsBaseTask.h
HEADERS += ${APPSRC}/ndsBuffer.h
SOURCES += ${APPSRC}/ndsChannel.cpp
SOURCES += ${APPSRC}/ndsChannelGroup.cpp
HEADERS += ${APPSRC}/ndsChannelGroup.h
HEADERS += ${APPSRC}/ndsChannel.h
SOURCES += ${APPSRC}/ndsChannelStateMachine.cpp
HEADERS += ${APPSRC}/ndsChannelStateMachine.h
HEADERS += ${APPSRC}/ndsChannelStates.h
HEADERS += ${APPSRC}/ndsChannelTemplate.h
SOURCES += ${APPSRC}/ndsClock.cpp
HEADERS += ${APPSRC}/ndsClock.h
SOURCES += ${APPSRC}/ndsDebug.cpp
HEADERS += ${APPSRC}/ndsDebug.h
SOURCES += ${APPSRC}/ndsDevice.cpp
HEADERS += ${APPSRC}/ndsDevice.h
SOURCES += ${APPSRC}/ndsDeviceStateMachine.cpp
HEADERS += ${APPSRC}/ndsDeviceStateMachine.h
HEADERS += ${APPSRC}/ndsDeviceStates.h
SOURCES += ${APPSRC}/ndsDeviceTemplate.cpp
HEADERS += ${APPSRC}/ndsDeviceTemplate.h
SOURCES += ${APPSRC}/ndsDriverCommand.cpp
HEADERS += ${APPSRC}/ndsDriverCommand.h
HEADERS += ${APPSRC}/ndsDriver.h
SOURCES += ${APPSRC}/ndsFileDescriptor.cpp
HEADERS += ${APPSRC}/ndsFileDescriptor.h
SOURCES += ${APPSRC}/ndsFirmware.cpp
HEADERS += ${APPSRC}/ndsFirmware.h
SOURCES += ${APPSRC}/ndsImageChannel.cpp
HEADERS += ${APPSRC}/ndsImageChannel.h
SOURCES += ${APPSRC}/ndsIOC.cpp
HEADERS += ${APPSRC}/ndsIOC.h
SOURCES += ${APPSRC}/ndsLockKeeper.cpp
HEADERS += ${APPSRC}/ndsLockKeeper.h
HEADERS += ${APPSRC}/ndsMacro.h
SOURCES += ${APPSRC}/ndsManager.cpp
HEADERS += ${APPSRC}/ndsManager.h
SOURCES += ${APPSRC}/ndsMessage.cpp
HEADERS += ${APPSRC}/ndsMessage.h
#SOURCES += ${APPSRC}/ndsNDArrayChannel.cpp
#HEADERS += ${APPSRC}/ndsNDArrayChannel.h
SOURCES += ${APPSRC}/ndsPeriodicTask.cpp
HEADERS += ${APPSRC}/ndsPeriodicTask.h
SOURCES += ${APPSRC}/ndsPollingTask.cpp
HEADERS += ${APPSRC}/ndsPollingTask.h
SOURCES += ${APPSRC}/ndsPulse.cpp
HEADERS += ${APPSRC}/ndsPulse.h
HEADERS += ${APPSRC}/ndsPVContainer.h
HEADERS += ${APPSRC}/ndsPV.h
#HEADERS += ${APPSRC}/ndsRegisterHandlersCaller.hpp
SOURCES += ${APPSRC}/ndsTaskManager.cpp
HEADERS += ${APPSRC}/ndsTaskManager.h
SOURCES += ${APPSRC}/ndsTaskService.cpp
HEADERS += ${APPSRC}/ndsTaskService.h
SOURCES += ${APPSRC}/ndsTerminal.cpp
HEADERS += ${APPSRC}/ndsTerminal.h
SOURCES += ${APPSRC}/ndsThread.cpp
HEADERS += ${APPSRC}/ndsThread.h
SOURCES += ${APPSRC}/ndsThreadTask.cpp
HEADERS += ${APPSRC}/ndsThreadTask.h
SOURCES += ${APPSRC}/ndsTimeEvent.cpp
HEADERS += ${APPSRC}/ndsTimeEvent.h
SOURCES += ${APPSRC}/ndsTimer.cpp
HEADERS += ${APPSRC}/ndsTimer.h
SOURCES += ${APPSRC}/ndsTriggerCondition.cpp
HEADERS += ${APPSRC}/ndsTriggerCondition.h
SOURCES += ${APPSRC}/ndsTrigger.cpp
HEADERS += ${APPSRC}/ndsTrigger.h
HEADERS += ${APPSRC}/ndsTypeLists.h
HEADERS += ${APPSRC}/ndsTypes.h
HEADERS += ${APPSRC}/singleton.h
SOURCES += ${APPSRC}/utsBufferTools.cpp
HEADERS += ${APPSRC}/utsBufferTools.h


# # DBDINC_SRCS should be last of the series of SOURCES
# SOURCES += $(DBDINC_SRCS)

# DBDS += $(APPSRC)/calcSupport_LOCAL.dbd
# DBDS += $(APPSRC)/calcSupport_withSNCSEQ.dbd
# DBDS += $(APPSRC)/calcSupport_withSSCAN.dbd

#
# $(DBDINC_DEPS): $(DBDINC_HDRS)
#
# .dbd.h:
# 	$(DBTORECORDTYPEH)  $(USR_DBDFLAGS) -o $@ $<
#
# .PHONY: $(DBDINC_DEPS) .dbd.h
#
#
# The following lines could be useful if one uses the external lib
#
# Examples...
# 
# USR_CFLAGS += -fPIC
# USR_CFLAGS   += -DDEBUG_PRINT
# USR_CPPFLAGS += -DDEBUG_PRINT
# USR_CPPFLAGS += -DUSE_TYPED_RSET
USR_INCLUDES += -I/usr/include/libxml2
# USR_LDFLAGS += -lusb-1.0
# USR_LDFLAGS += -L /opt/etherlab/lib
# USR_LDFLAGS += -lethercat
# USR_LDFLAGS += -Wl,-rpath=/opt/etherlab/lib

## SYSTEM LIBS 
##
USR_LIBS += boost_filesystem
USR_LIBS += curl
USR_LIBS += xml2

#

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


