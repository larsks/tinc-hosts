HOSTS = $(shell grep -l '^Subnet' *)
all: hosts

hosts: $(HOSTS)
	sh make-hosts.sh > $@ || rm -f $@
