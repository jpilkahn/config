target           = extract

in               = src/$(target).in
out              = build/$(target)

bin_SCRIPTS      = $(out)
CLEANFILES       = $(bin_SCRIPTS)
EXTRA_DIST       = $(in)

SCRIPT_VERSION   = 0.0.1-alpha.1

do_substitutions = sed -e 's,[@]SCRIPT_VERSION[@],$(SCRIPT_VERSION),g'

$(out): $(in)
	@mkdir build 2>/dev/null || rm -rf build/*
	@$(do_substitutions) < $(srcdir)/$(in) > $(out)
	@chmod +x $(out)
