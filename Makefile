DEST_Q3A := $(realpath $(HOME)/.q3a/baseq3)
ifeq ($(DEST_DEV),)
    $(error "please set DEST_DEV=/home/joe/Document/q3maps/baseq3")
endif
HERE := $(shell pwd)

.PHONY: install
install: install-dev install-q3a
	@echo
	@echo "OK. Now make sure the AAS and BSP are reachable by quake3"
	@echo
	@echo "And, when building, don't create a PK3, but do:"
	@echo "# q3-make-bsp $(DEST_DEV)/maps/grufcasa.map"

.PHONY: install-dev
install-dev:
	test -d $(DEST_DEV)
	#
	mkdir -p $(DEST_DEV)/env
	ln -sf $(HERE)/env/grufcasa $(DEST_DEV)/env/
	#
	mkdir -p $(DEST_DEV)/maps
	ln -sf $(HERE)/maps/grufcasa.map $(DEST_DEV)/maps/grufcasa.map
	#
	mkdir -p $(DEST_DEV)/scripts
	ln -sf $(HERE)/scripts/grufcasa.shader $(DEST_DEV)/scripts/grufcasa.shader
	#
	grep ^grufcasa $(DEST_DEV)/scripts/shaderlist.txt || printf '\n%s\n' grufcasa >>$(DEST_DEV)/scripts/shaderlist.txt
	#
	mkdir -p $(DEST_DEV)/textures
	ln -sf $(HERE)/textures/grufcasa $(DEST_DEV)/textures/

.PHONY: install-q3a
install-q3a:
	test -d $(DEST_Q3A)
	#
	mkdir -p $(DEST_Q3A)/env
	ln -sf $(HERE)/env/grufcasa $(DEST_Q3A)/env/
	#
	mkdir -p $(DEST_Q3A)/scripts
	ln -sf $(HERE)/scripts/grufcasa.shader $(DEST_Q3A)/scripts/grufcasa.shader
	#
	mkdir -p $(DEST_Q3A)/textures
	ln -sf $(HERE)/textures/grufcasa $(DEST_Q3A)/textures/

