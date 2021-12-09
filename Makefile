# SPDX-License-Identifier: AGPL-3.0-or-later

ANT_TARGET = all

all: build-ant-autover

include build.mk

install:
	$(call mk_install_dir, lib/jars)
	cp build/ztozprov-*.jar $(INSTALL_DIR)/lib/jars
	$(call install_conf, zmztozmig.conf)
	$(call install_libexec, src/libexec/zmztozmig)
	$(call install_libexec, src/libexec/zmcleaniplanetics)
	$(call mk_install_dir, docs)
	cp ReadMe.txt $(INSTALL_DIR)/zmztozmig.txt

clean: clean-ant
