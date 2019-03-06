define download
	wget -O $(1) $(2); touch $(1)
endef
